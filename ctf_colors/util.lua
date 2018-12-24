function ctf_colors.get_player_color(pname)
	local player = ctf.player(pname)
	return ctf_colors.get_team_color(player.team)
end

function ctf_colors.get_team_color(tname)
	local team = ctf.team(tname)
	local tcolor_text = nil
	if team then
		tcolor_text = team.data.color
	end
	local tcolor_hex = ctf.flag_colors[tcolor_text]
	if not tcolor_hex then
		tcolor_hex = "0x000000"
	end

	return tcolor_text, tcolor_hex
end

function ctf_colors.get_irc_color(player)
	local tcolor_text = ctf_colors.get_player_color(player)
	return ctf_colors.irc_colors[tcolor_text]
end
