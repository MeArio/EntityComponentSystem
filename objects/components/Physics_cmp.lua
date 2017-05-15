local class = require 'libs.middleclass'

local Physics = class('Physics')

function Physics:initialize(gravity)
    self.gravity = gravity or 0.5
    self.name = 'physics'
end

return Physics