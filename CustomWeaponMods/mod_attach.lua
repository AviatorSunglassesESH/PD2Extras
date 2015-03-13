--[[
Required to actually use the weapon mod on any compatible weapon
Adds it to the table of usable parts
/\/\/\/\/\/\/\/\
Post-require to
  - ['lib/managers/weaponfactorymanager', <SCRIPT>]
--]]

-- M16 Front post
-- Added to AMR-16
table.insert(tweak_data.weapon.factory.wpn_fps_ass_m16.uses_parts, "wpn_fps_ass_m16_os_frontsight_mod")
table.insert(tweak_data.weapon.factory.wpn_fps_ass_m16.uses_parts, "wpn_fps_ass_m16_draghandle1_mod")
table.insert(tweak_data.weapon.factory.wpn_fps_ass_m16.uses_parts, "wpn_fps_ass_m16_draghandle2_mod")
table.insert(tweak_data.weapon.factory.wpn_fps_ass_m16.uses_parts, "wpn_fps_ass_m16_draghandle3_mod")