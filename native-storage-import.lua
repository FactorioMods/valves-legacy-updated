-- Native Factorio 2.1 ownership migration, deliberately performed only in
-- on_init/on_configuration_changed. Whole-root adoption retains cycles and
-- LuaObject identities; shallow copying the imported root would break them.
local M={}
function M.pending(old)
 return storage and storage._migrated and storage._migrated[old]
end
function M.adopt(old)
 local inherited=M.pending(old)
 if inherited==nil then return false end
 local destination=storage
 -- Preserve disjoint destination state, but never silently overwrite either
 -- namespace when both contain the same key. Failure occurs before mutation.
 for key in pairs(destination) do
  if key~="_migrated" then assert(inherited[key]==nil,"Legacy namespace import conflict for "..old.." at "..tostring(key)) end
 end
 destination._migrated[old]=nil
 for key,value in pairs(destination) do if key~="_migrated" then inherited[key]=value end end
 storage=inherited
 log("Imported "..old.." state into "..script.mod_name)
 return true
end
return M
