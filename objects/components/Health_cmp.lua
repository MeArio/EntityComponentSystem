local class = require('libs/middleclass')

local Health = class('Health')

function Health:initialize(value)
    self.value = value or 100
    self.name = 'health'
end

return Health