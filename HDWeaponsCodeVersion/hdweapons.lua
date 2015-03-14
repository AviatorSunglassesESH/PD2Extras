--[[
VERY WIP
HD Weapons in a script
Current issues :
No HD weapons in safehouse
HD weapons show through player models
Currently works by forcing an error
/\/\/\/\/\/\
Post Require to
  - ['lib/units/weapons/newraycastweaponbase', <SCRIPT>]
--]]

function NewRaycastWeaponBase:assemble(factory_id)
--	local third_person = self:is_npc()
	local skip_queue = self:skip_queue()
	self._parts, self._blueprint = managers.weapon_factory:assemble_default(factory_id, self._unit, callback(self, self, "clbk_assembly_complete", function()
	end
), skip_queue)
	self:_update_stats_values()
	do return end
--	local third_person = self:is_npc()
	self._parts, self._blueprint = managers.weapon_factory:assemble_default(factory_id, self._unit)
	self:_update_fire_object()
	self:_update_stats_values()
end

function NewRaycastWeaponBase:assemble_from_blueprint(factory_id, blueprint, clbk)
--	local third_person = self:is_npc()
	local skip_queue = self:skip_queue()
	self._parts, self._blueprint = managers.weapon_factory:assemble_from_blueprint(factory_id, self._unit, blueprint, callback(self, self, "clbk_assembly_complete", clbk or function()
	end
), skip_queue)
	self:_update_stats_values()
	do return end
--	local third_person = self:is_npc()
	self._parts, self._blueprint = managers.weapon_factory:assemble_from_blueprint(factory_id, self._unit, blueprint)
	self:_update_fire_object()
	self:_update_stats_values()
end