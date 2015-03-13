--[[
Renames anything by exploiting it's nameID to allow a bypass of .string files and anything that doesn't have these files
/\/\/\/\/\/\/\/\
Post-require to
  - ['lib/managers/localizationmanager', <SCRIPT>]
--]]

-- Renames M16 Front Post
-- Custom

local text_m16frontpost = LocalizationManager.text
-- Hooks into localization manager to allow bypassing of .string files
function LocalizationManager:text(string_id, ...)
	-- Whenever it sees this ID, it will replace the text with what we have decided
	return string_id == "wpnmd_m16frontpost" and "Front Sight"  or text_m16frontpost(self, string_id, ...)
end

-- Renames special sight menu
-- Vanilla
local text_frontpostmenu = LocalizationManager.text
function LocalizationManager:text(string_id, ...)
	return string_id == "bm_menu_sight_special" and "Front Sights"  or text_frontpostmenu(self, string_id, ...)
end