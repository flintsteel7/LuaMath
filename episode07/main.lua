vector = require "vector"

title = "Lua Math: Episode 7 - Vectors Part 2"
window_width = 1200
window_height = 800

function love.load()
  love.window.setMode(window_width, window_height)
  love.window.setTitle(title)

  love.graphics.setBackgroundColor(255, 255, 255)
  love.graphics.setColor(0, 0, 0)
end

v1 = vector:create(10, 5)

v2 = vector:create(10, 5)
v2:setAngle(math.pi / 6)
v2:setLength(100)

v3 = vector:create(10, 5)
v4 = vector:create(3, 4)
v5 = v3:add(v4)

v6 = vector:create(10, 5)
v7 = v6:multiply(2)

v8 = vector:create(10, 5)
v9 = vector:create(3, 4)
v8:addTo(v9)

function love.draw()
  love.graphics.print(v1:getX(), 200, 100)
  love.graphics.print(v1:getY(), 200, 120)
  love.graphics.print(v1:getAngle(), 200, 140)
  love.graphics.print(v1:getLength(), 200, 160)

  love.graphics.print(v2:getX(), 200, 200)
  love.graphics.print(v2:getY(), 200, 220)

  love.graphics.print(v5:getX(), 200, 260)
  love.graphics.print(v5:getY(), 240, 260)

  love.graphics.print(v6:getLength(), 200, 300)
  love.graphics.print(v7:getLength(), 200, 320)

  love.graphics.print(v8:getX(), 200, 360)
  love.graphics.print(v8:getY(), 240, 360)
end