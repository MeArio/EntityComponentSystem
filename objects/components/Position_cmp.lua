local class = require 'libs.middleclass'

local Position = class('Position')

function Position:initialize(x, y)
    self.name = 'position'
    self.x = x or 0
    self.y = y or 0
end

return Position