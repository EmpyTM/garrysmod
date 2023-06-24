function to_rgb(hex)
	-- valid formats: #RRGGBBAA, #RRGGBB, #RGB
	hex = hex:TrimLeft("#")
	local hex_len = #hex
	
	return Color(
		tonumber("0x" .. (hex_len <= 3 and hex:sub(1):rep(2) or hex:sub(1, 2))),
		tonumber("0x" .. (hex_len <= 3 and hex:sub(2):rep(2) or hex:sub(3, 4))),
		tonumber("0x" .. (hex_len <= 3 and hex:sub(3):rep(2) or hex:sub(5, 6))),
		tonumber(hex_len >= 7 and "0x" .. (hex:sub(7, 8)) or 255)
	)
end
