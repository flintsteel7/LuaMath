local vector = {x = 0, y = 0}

function vector:create(x, y)
  local obj = {x = x, y = y} or {}
  self.__index = self
  setmetatable(obj, self)
  return obj
end

function vector:setX(value)
  self.x = value
end

function vector:getX()
  return self.x
end

function vector:setY(value)
  self.y = value
end

function vector:getY()
  return self.y
end

function vector:setAngle(angle)
  local length = self:getLength()
  self.x = math.cos(angle) * length
  self.y = math.sin(angle) * length
end

function vector:getAngle()
  return math.atan2(self.y, self.x)
end

function vector:setLength(length)
  local angle = self:getAngle()
  self.x = math.cos(angle) * length
  self.y = math.sin(angle) * length
end

function vector:getLength()
  return math.sqrt(self.x^2 + self.y^2)
end

function vector:add(v2)
  return vector:create(self.x + v2:getX(), self.y + v2:getY())
end

function vector:subtract(v2)
  return vector:create(self.x - v2:getX(), self.y - v2:getY())
end

function vector:multiply(val)
  return vector:create(self.x * val, self.y * val)
end

function vector:divide(val)
  return vector:create(self.x / val, self.y / val)
end

function vector:addTo(v2)
  self.x = self.x + v2:getX()
  self.y = self.y + v2:getY()
end

function vector:subtractFrom(v2)
  self.x = self.x - v2:getX()
  self.y = self.y - v2:getY()
end

function vector:multiplyBy(val)
  self.x = self.x * val
  self.y = self.y * val
end

function vector:divideBy(val)
  self.x = self.x / val
  self.y = self.y / val
end

return vector