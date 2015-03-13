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

-- Renames drag handle 1
-- Custom
local text_dhandle1 = LocalizationManager.text
function LocalizationManager:text(string_id, ...)
	return string_id == "wpnmd_draghandle1" and "Basic Drag Handle"  or text_dhandle1(self, string_id, ...)
end

-- Renames drag handle 2
-- Custom
local text_dhandle2 = LocalizationManager.text
function LocalizationManager:text(string_id, ...)
	return string_id == "wpnmd_draghandle2" and "Core Drag Handle"  or text_dhandle2(self, string_id, ...)
end

-- Renames drag handle 3
-- Custom
local text_dhandle3 = LocalizationManager.text
function LocalizationManager:text(string_id, ...)
	return string_id == "wpnmd_draghandle3" and "Ballos Drag Handle"  or text_dhandle3(self, string_id, ...)
end

-- Renames special sight menu
-- Vanilla
local text_frontpostmenu = LocalizationManager.text
function LocalizationManager:text(string_id, ...)
	return string_id == "bm_menu_sight_special" and "Front Sights"  or text_frontpostmenu(self, string_id, ...)
end

-- Renames drag handle menu
-- Vanilla
local text_dhandlemenu = LocalizationManager.text
function LocalizationManager:text(string_id, ...)
	return string_id == "bm_menu_drag_handle" and "Drag Handles"  or text_dhandlemenu(self, string_id, ...)
end