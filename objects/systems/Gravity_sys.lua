local class = require 'libs.middleclass'
local System = require 'objects.System'

local GravitySystem = class('GravitySystem', System)

function GravitySystem:initialize()
    System.initialize(self)
    self.type = 'update'
    self.name = 'GravitySystem'
end

function GravitySystem:update(dt)
    for i=1, #self.targets do
        local curEntity = self.targets[i]
        if(curEntity.components['position'] and curEntity.components['physics']) then
            curEntity.components['position'].y = 
            curEntity.components['position'].y + 20 * curEntity.components['physics'].gravity * dt
        end
    end
end

return GravitySystem