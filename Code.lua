local APIService = require(game.ReplicatedStorage.APIService)
local privateServers = {}
function privateServers:Create()
    local PrivateServersFolder = Instance.new("Folder", game:GetService("TeleportService"))
    PrivateServerService.Name = "PrivateServers"
end
local module = {}

module.__index = module

function module.new()
    local Functions = {
        AddPlayer = function(name)
             table.insert(self.PrivateServersJoined, name)
        end
RemovePlayer = function(name)
   table.remove(self.PrivateServersJoined, name)
end
    }
local self = setmetatable(Functions, module)
self.PrivateServersJoined = {}
