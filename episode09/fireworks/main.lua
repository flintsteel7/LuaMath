package.path = package.path .. ";../?.lua"
local vector = require "vector"
local particle = require "particle"

title = "Lua Math: Episode 9 - Acceleration"
window_width = 1200
window_height = 800

function love.load()
  love.window.setMode(window_width, window_height)
  love.window.setTitle(title)

  love.graphics.setBackgroundColor(255, 255, 255)
  love.graphics.setColor(0, 0, 0)
end

num_particles = 100

particles = {}
for i = 1, num_particles do
  particles[i] = particle:create(window_width / 2, window_height / 3, math.random() * 5 + 2, math.random() * math.pi * 2, 0.1)
end

function love.draw()
  for i = 1, #particles do
    p = particles[i]
    p:update()
    love.graphics.circle("fill", p.position:getX(), p.position:getY(), 4)
  end
end