local vector = require "vector"

local particle = {position = nil, velocity = nil}

function particle:create(x, y, speed, direction)
  obj = {
    position = vector:create(x, y),
    velocity = vector:create(0, 0)
  }
  obj.velocity:setLength(speed)
  obj.velocity:setAngle(direction)
  self.__index = self
  setmetatable(obj, self)
  return obj
end

function particle:update()
  self.position:addTo(self.velocity)
end

return particle