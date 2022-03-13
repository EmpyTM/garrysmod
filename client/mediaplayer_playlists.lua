-- TODO: add a gui instead of relying solely on function callbacks
-- TODO: add a table that shows all current mediaplayers and what they're currently playing

if MediaPlayer == nil or type(MediaPlayer) ~= "table" then return end

if not file.Exists("mp_playlists", "DATA") then
    file.CreateDir("mp_playlists")
end

local Playlist = {}
Playlist.Websites = {
    "https://www.youtube.com",
    "https://dl.dropboxusercontent.com",
    "https://dl.dropbox.com",
    "https://www.dropbox.com"
}

local lists = {}
local files = file.Find("mp_playlists/*", "DATA")

for _, v in ipairs(files) do
    local cur_file = file.Read("mp_playlists/" .. v, "DATA")
    local tab = cur_file:split("\n")
    tab[#tab] = nil -- empty string

    local trimmed = v:TrimRight(".txt")
    lists[trimmed] = {}
    
    for _, text in ipairs(tab) do
        table.insert(lists[trimmed], text)
    end
end

function Playlist.Add(name)
    if lists[name] then
        Playlist.Error("This playlist already exists")
    end

    name = name:Replace(" ", "_")
    lists[name] = {}
    file.Write("mp_playlists/" .. name .. ".txt", nil) -- wont accept empty text file lol
end

function Playlist.Remove(name)
    if lists[name] then
        lists[name] = nil
        file.Delete("mp_playlists/" .. name .. ".txt")
    else
        Playlist.Error("Tried to remove a playlist that does not exist")
    end
end

function Playlist.Get(list)
    local list = list:lower()
    return lists[list]
end

function Playlist.GetAll()
    return lists
end

function Playlist.IsValidURL(url)
    local ret = false

    for _, v in ipairs(Playlist.Websites) do
        if url:match(v) == v then
            ret = true
            break
        end
    end

    return ret
end

function Playlist.Error(...)
    error("[Playlist]: " + ... + "\n")
end

function Playlist.AddURL(list, url)
    if Playlist.IsValidURL(url) == false then
        Playlist.Error("Invalid or malformed URL")
    end
        
    if table.HasValue(lists[list], url) then
        Playlist.Error("The desired URL already exists in playlist " .. "\"" .. list .. "\"")
    end

    table.insert(lists[list], url)

    file.Write("mp_playlists/" .. list .. ".txt", "")
    for _, v in ipairs(lists[list]) do
        local str = v .. "\n"
        file.Append("mp_playlists/" .. list .. ".txt", str)
    end
end

function Playlist.RemoveURL(list, url)
    if not table.HasValue(lists[playlist], url) then
        Playlist.Error("The desired URL does not exist in playlist " .. "\"" .. list .. "\"")
    end
	
    table.RemoveByValue(lists[list], url)
    
    file.Write("mp_playlists/" .. list .. ".txt", "")
    for _, v in ipairs(lists[list]) do
        local str = v .. "\n"
        file.Append("mp_playlists/" .. list .. ".txt", str)
    end
end

function Playlist.Rename(list, name)
    if not lists[list] then
        Playlist.Error("Attempted to rename a playlist that doesn't exist")
    end

    name = name:Replace(" ", "_")
    if list == name then
        Playlist.Error("Attempted to rename with old name")
    end

    lists[name] = {}
    local new_list = lists[name]
    table.Add(list, new_list)
    lists[list] = nil

    file.Rename("mp_playlists/" .. list .. ".txt", "mp_playlists/" .. name .. ".txt")
end

function Playlist.Play(list, m_player)
    local mediaplayer_id = MPlayer._mp.id
    local video_list = Playlist.Get(list)
	
    if #video_list == 0 then
        playlist.error("Attempted to play an empty list")
    end

    local i = 1
    timer.Create("PlaylistQueue", 0.5, #video_list, function()
        net.Start("MEDIAPLAYER.RequestMedia")
            net.WriteString(mediaplayer_id)
            net.WriteString(video_list[i])
            --media:NetWriteRequest()
        net.SendToServer()
        i = i + 1
    end)
end

MediaPlayer.Playlist = Playlist
