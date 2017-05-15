local class = require 'libs.middleclass'

local Sprite = class('Sprite')

function Sprite:initialize(imagePath)
    self.name = 'sprite'
    self.imagePath = imagePath
    self.image = love.graphics.newImage(imagePath)
end

return Sprite