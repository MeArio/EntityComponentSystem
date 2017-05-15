local class = require 'libs.middleclass'
local System = require 'objects.System'

local Engine = class('Engine')

function Engine:initialize(targets)
    self.drawSystems = {}
    self.updateSystems = {}
    self.targets = targets
end

function Engine:addSystem(system, type)
    if (not system:isInstanceOf(System)) then
        print('the object must be a system instance')
        return
    end

    if(type == 'draw') then
        self.drawSystems[system.name] = system
    elseif(type == 'update') then
        self.updateSystems[system.name] = system
    else
        print("invalid type")
    end

    system.targets = self.targets
    system:start()
end

function Engine:removeSystem(system)
    system:stop();
    if (system.type == 'draw') then
        self.drawSystems[system.name] = nil
    elseif (system.type == 'update') then
        self.updateSystems[system.name] = nil
    end
end

function Engine:update(dt)
    if(self.updateSystems == nil) then return end
    for _, system in pairs(self.updateSystems) do
        if(system.active == true) then
            system:update(dt)
        end
    end
end

function Engine:draw()
    if(self.drawSystems == nil) then return end
    for _, system in pairs(self.drawSystems) do
        if (system.active == true) then
            system:draw()
        end
    end
end

return Engine