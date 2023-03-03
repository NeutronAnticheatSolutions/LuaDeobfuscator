--[[
Neutron Lua Deobfuscator v1.0.0
https://github.com/NeutronAnticheatSolutions/LuaDeobfuscator
]]

-- Note: This will have to be ran out of Roblox for it to properly deobfuscate scripts.

local oldcat = table.concat
local deobftable = {}
local deobfstring = ""
local requireenabled = false
local requirenumber = 0
table.concat = function(a)
  local lol = oldcat(a)
  table.insert(deobftable, lol)
end

for i,v in pairs(deobftable) do
  if requireenabled then
    requirenumber = requirenumber + 1
    end
  if requirenumber == 2 then
    deobfstring = deobfstring..");\n"
    end
  if v == "require" then
    deobfstring = deobfstring.."require("
    end
  end
