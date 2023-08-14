if ( SERVER ) then return end

assert(steamworks.ShouldMountAddon("546392647"), "MediaPlayer is not mounted. Script failed to load.")

local tag = "mediaplayer_playlists"

mediaplayer_playlists = {}
mediaplayer_playlists.CurrentLists = {}

if ( not file.Exists("mediaplayer_playlists", "DATA") ) then
    file.CreateDir("mediaplayer_playlists")
end

local files = file.Find("mediaplayer_playlists/*", "DATA")

if ( not table.IsEmpty(files) ) then
    for _, filename in ipairs(files) do
        local f_contents = file.Read("mediaplayer_playlists/" .. filename, "DATA")
        local tableified = util.JSONToTable(f_contents)
        local f_name = filename:TrimRight(".json")
        mediaplayer_playlists.CurrentLists[f_name] = tableified
    end
end

--[[ Helper Functions ]]--------------------------------------------------------

local function is_filename_valid( filename )
    
    if ( string.match(filename, "[\\/:*?\"<>|]+") ) then
        mediaplayer_playlists.Error("Filename contains a bad character: \\ / : * ? \" < > | ")
        return false
    end

    return true

end

local function push_to_json( name )

    local jsonified = util.TableToJSON(mediaplayer_playlists.CurrentLists[name], true)

    if ( not is_filename_valid(name) ) then return end
    file.Write("mediaplayer_playlists/" .. name .. ".json", jsonified)

end

local function pull_from_json( filename )
    
    local filename = "mediaplayer_playlists/" .. filename .. ".json"

    if ( not file.Exists(filename, "DATA") ) then
        mediaplayer_playlists.Error("The requested file does not exist.")
    end

    local tableified = util.JSONToTable(file.Read("mediaplayer_playlists/" .. filename .. ".json"))

    local name = tableified.name
    local contents = tableified.contents

    mediaplayer_playlists.CurrentLists[filename] = tableified

end

local function assert_playlist_exists( name )

    if ( not mediaplayer_playlists.CurrentLists[name] ) then
        mediaplayer_playlists.Error("The playlist does not exist.")
        return false
    end

    return true

end

local function assert_valid_url( url )

    local ok = url:StartsWith("https://youtube.com/watch?v=") or url:StartsWith("https://www.youtube.com/watch?v=")

    if ( not ok ) then
        mediaplayer_playlists.Error("Malformed URL. Please add a valid YouTube link.")
        return false
    end

    return true

end

--------------------------------------------------------------------------------

function mediaplayer_playlists.Error( err )

    notification.AddLegacy("[MediaPlayer Playlists]: " .. err, NOTIFY_ERROR, 6)
    surface.PlaySound("buttons/button10.wav")
    
end

function mediaplayer_playlists.Add( name )

    if ( mediaplayer_playlists.CurrentLists[name] ) then
        mediaplayer_playlists.Error("The playlist already exists")
        return
    end

    mediaplayer_playlists.CurrentLists[name] = {}
    push_to_json(name)

end

function mediaplayer_playlists.PushURL( name, url )

    if ( not assert_playlist_exists(name) ) then return end
    if (not assert_valid_url(url) ) then return end

    table.insert(mediaplayer_playlists.CurrentLists[name], url)

    push_to_json(name)

end

function mediaplayer_playlists.PopURL( name, url )

    if ( not assert_playlist_exists(name) ) then return end
    
    for _, link in ipairs(mediaplayer_playlists.CurrentLists[name]) do
        if ( link == url ) then
            table.remove(mediaplayer_playlists.CurrentLists[name], url)
            break
        end
    end

    push_to_json(name)

end

function mediaplayer_playlists.Remove( name )

    if ( not assert_playlist_exists(name) ) then return end

    mediaplayer_playlists.CurrentLists[name] = nil
    file.Delete("mediaplayer_playlists/" .. name .. ".json", "DATA")

end

function mediaplayer_playlists.Rename( name_old, name_new )

    if ( not assert_playlist_exists(name_old) ) then return end
    if ( not is_filename_valid(name) ) then return end

    mediaplayer_playlists.CurrentLists[name_new] = mediaplayer_playlists.CurrentLists[name_old]
    mediaplayer_playlists.CurrentLists[name_old] = nil

    file.Delete("mediaplayer_playlists/" .. name_old .. ".json", "DATA")
    push_to_json(name_new)

end

function mediaplayer_playlists.Queue( name, ent, queue_randomize )

    local media_list = assert_playlist_exists(name) and mediaplayer_playlists.CurrentLists[name]
    if ( not media_list ) then return end
    if ( ent:GetClass() ~= "mediaplayer_tv" ) then return end

    media_list = ( queue_randomize ) and table.Shuffle(media_list) or media_list

    local mp_id = ent._mp.id
    local tag = "playlists_queuemedia_" .. mp_id
    local already_in_queue = ( ( ent._mp._Media ) and 1 or 0 ) + table.Count(ent._mp._Queue)
    local diff = math.abs(#media_list - already_in_queue)
    
    local current_url_index = 1
    
    timer.Create(tag, 0.25, diff, function()

        if ( not ent:IsValid() ) then
            mediaplayer_playlists.Error("Mediaplayer was abruptly removed. Aborting queue.")
            timer.Remove(tag)
        end

        net.Start("MEDIAPLAYER.RequestMedia")
            net.WriteString(mp_id)
            net.WriteString(media_list[current_url_index])
        net.SendToServer()

        current_url_index = current_url_index + 1

        if ( current_url_index >= 50 - diff ) then
            mediaplayer_playlists.Error("Exceeded 50 videos! Aborting queue.")
            timer.Remove(tag)
        end

    end)

end
