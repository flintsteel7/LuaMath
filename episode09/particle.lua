local vector = require "vector"

local particle = {
  position = nil,
  velocity = nil,
  gravity = nil
}

function particle:create(x, y, speed, direction, grav)
  obj = {
    position = vector:create(x, y),
    velocity = vector:create(0, 0),
    gravity = vector:create(0, grav or 0)
  }
  obj.velocity:setLength(speed)
  obj.velocity:setAngle(direction)
  self.__index = self
  setmetatable(obj, self)
  return obj
end

function particle:accelerate(accel)
  self.velocity:addTo(accel)
end

function particle:update()
  self.velocity:addTo(self.gravity)
  self.position:addTo(self.velocity)
end

return particle