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

position = vector:create(100, 100)

function love.draw()
  love.graphics.circle("fill", position:getX(), position:getY(), 10)
end