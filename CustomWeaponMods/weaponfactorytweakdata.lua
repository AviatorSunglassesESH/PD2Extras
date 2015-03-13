--Don't be a dickhead with these--

--[[
Edit of SC's unused weapon mod script
This script currently hooks into the AK/CAR pack to allow for custom weapon mods.
It can hook into any init in weaponfactorytweak data 
(previously had it in m16, changed to m4_ak to add compatibility for the new fore-grip)
It uses in-game assets currently as no exterior models have been made compatible (to my knowledge)
But it could be adapted to use these assets whenever they are implemented by modders
/\/\/\/\/\/\/\/\
This script currently implements the front post for the M16 as a weapon mod
You may have to use scripts to acquire this weapon mod (or gage coins from GoonMOD)
It is an entirely separate weapon mod from the original front sights which are a hidden mod
Compatible with all sights as far as I know
Uses a new weapon mod category (on users end... for coders, it is a category that was previously hidden)
/\/\/\/\/\/\/\/\
tl;dr
Beginning of fully custom weapon mods.
/\/\/\/\/\/\/\/\
Post-require to
  - ['lib/tweak_data/weaponfactorytweakdata', <SCRIPT>]
--]]

if not WeaponFactoryTweakData then return end

local m16_extra_init = WeaponFactoryTweakData._init_modpack_m4_ak
function WeaponFactoryTweakData:_init_modpack_m4_ak()
	m16_extra_init(self)
	self.parts.wpn_fps_upg_ass_m16_fg_stag.override = {
			wpn_fps_ass_m16_os_frontsight = {a_obj = "a_os_stag"},
			wpn_fps_ass_m16_os_frontsight_mod = {a_obj = "a_os_stag"}
		}
	-- Previous lines add compatibility with long foregrip
	--
	-- Opens up a new weapon mod
	self.parts.wpn_fps_ass_m16_os_frontsight_mod = {
	-- Blank stats, can be changed but left blank for balance purposes
	stats = {},
	-- Sets a nameID so that it can be changed through a postrequire to the localization manager
	name_id = "wpnmd_m16frontpost",
	-- Uses a category which previously was hidden as it contained no items for the user to interact with (same category as vanilla front post)
	type = "sight_special",
	-- Not sure yet, needs investigation (Current guess, texture in menu?)
	pcs = {
            20,
            30,
            40
        },
	-- Object attach point
	a_obj = "a_os",
	-- Models and textures for the front sight
	unit = "units/payday2/weapons/wpn_fps_ass_m16_pts/wpn_fps_ass_m16_os_frontsight",
	-- States what it is incompatible with
--	forbids = {}
	}
end