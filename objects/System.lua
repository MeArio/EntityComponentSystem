local class = require 'libs.middleclass'

local System = class('System')

function System:initialize(targets)
    self.targets = {}
    self.active = true
    self.type = nil
    self.name = 'System'
end

function System:start()
    --start up code
    self.active = true
end

function System:stop()
    --clean-up code
    self.active = false
end

function System:update(dt)

end

function System:draw()

end

return System