local class = require 'libs.middleclass'

local GameObject = class('GameObject')

local _count = 0;

function GameObject:initialize()
    --increments global counter
    _count = _count + 1
    self.id = _count

    --holds components
    self.components = {}
end

function GameObject:getCount()
    return(_count)
end

function GameObject:addComponent(component)
    self.components[component.name] = component
end

function GameObject:removeComponent(componentName)
    --assumes a string was passed
    name = componentName;

    --checks to see if an object was passed
    if(type(componentName) == 'table') then
        name = componentName.name
    end

    self.components[name] = nil
end

function GameObject:getComponent(componentName)
    name = componentName;

    if(type(componentName) == 'table') then
        name = componentName.name
    end

    return self.components[name]
end

function GameObject:print()
    print(string.format("id: %d \n", self.id))
    print("components: \n")
    for key, value in pairs(self.components) do
        print(key)
    end
end

return GameObject