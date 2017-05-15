local sti = require 'libs.sti'
local GameObject = require 'objects.GameObject'
local Health = require 'objects.components.Health_cmp'
local Player = require 'objects.assemblages.Player_asm'
local Physics = require 'objects.components.Physics_cmp'
local RenderSystem = require 'objects.systems.Render_sys'
local GravitySystem = require 'objects.systems.Gravity_sys'
local Engine = require 'objects.Engine'



function love.load()
    local entity1 = Player:new()
    local entity2 = Player:new()
    entity2:addComponent(Physics:new(5))
    local entity3 = Player:new()
    entities = {entity1, entity2, entity3}
    Run = Engine:new(entities)
    local Render = RenderSystem:new()
    Run:addSystem(Render, 'draw')
    local Gravity = GravitySystem:new()
    Run:addSystem(Gravity, 'update')
end

function love.update(dt)
    Run:update(dt)
end

function love.draw()
    Run:draw()
end