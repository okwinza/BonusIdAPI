-- WoW Lua Environment
_G.floor = math.floor
_G.min = math.min
_G.max = math.max
_G.gmatch = string.gmatch
_G.strmatch = string.match
_G.sort = table.sort
_G.tinsert = table.insert
_G.wipe = function(t) for i in pairs(t) do t[i] = nil end end
function GetBuildInfo()
    return "12.0.1", "65893"
end

require("LibStub.LibStub")
require("LibBonusId")
require("Data")
local LibBonusId = LibStub("LibBonusId")

local data_path = arg[1]
local f = loadfile(data_path)
if not f then
    io.stderr:write("Failed to load " .. data_path .. "\n")
    os.exit(1)
end
_G.BonusId = f()

for line in io.lines() do
    local link, baseItemLevel, hasMidnightScaling = line:match("^(.-)\t(.-)\t(.-)$")
    baseItemLevel = tonumber(baseItemLevel)
    hasMidnightScaling = hasMidnightScaling == "1"

    local bonusIds = {}
    local dropLevel, contentTuningId = LibBonusId.ParseLink(link, bonusIds)
    local result = LibBonusId.CalculateItemLevel(baseItemLevel, hasMidnightScaling, bonusIds, dropLevel, contentTuningId)
    io.write(result .. "\n")
    io.flush()
end
