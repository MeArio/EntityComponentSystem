class = require 'libs.middleclass'
System = require 'objects.System'

local RenderSystem = class('RenderSystem', System)

function RenderSystem:initialize()
    System.initialize(self)
    self.type = 'draw'
    self.name = 'RenderSystem'
end

function RenderSystem:draw()
    for i=1, #self.targets do
        local curEntity = self.targets[i]
        if(curEntity.components['position'] and curEntity.components['sprite']) then
            local position = curEntity.components['position']
            local sprite = curEntity.components['sprite']
            love.graphics.draw(sprite.image, position.x, position.y)
        end
    end
end

return RenderSystem