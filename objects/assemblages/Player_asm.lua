local class = require 'libs.middleclass'
local Position = require 'objects.components.Position_cmp'
local Sprite = require 'objects.components.Sprite_cmp'
local GameObject = require 'objects.GameObject'

local Player = class('Player', GameObject)
local _count = 0;
function Player:initialize()
        _count = _count + 1
        GameObject.initialize(self)
        self:addComponent(Position:new(_count*20))
        self:addComponent(Sprite:new('/assets/sprites/p_right.png'))
end

return Player