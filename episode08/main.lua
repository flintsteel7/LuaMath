local vector = require "vector"
local particle = require "particle"

title = "Lua Math: Episode 8 - Velocity"
window_width = 1200
window_height = 800

function love.load()
  love.window.setMode(window_width, window_height)
  love.window.setTitle(title)

  love.graphics.setBackgroundColor(255, 255, 255)
  love.graphics.setColor(0, 0, 0)
end

p = particle:create(100, 100, 3, math.pi / 6)

function love.draw()
  love.graphics.circle("fill", p.position:getX(), p.position:getY(), 10)
  p:update()
end