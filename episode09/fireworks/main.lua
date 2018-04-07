package.path = package.path .. ";../?.lua"
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

num_particles = 100
gravity = vector:create(0, 0.1)

particles = {}
for i = 1, num_particles do
  particles[i] = particle:create(window_width / 2, window_height / 3, math.random() * 5 + 2, math.random() * math.pi * 2)
end

function love.draw()
  for i = 1, #particles do
    p = particles[i]
    p:accelerate(gravity)
    p:update()
    love.graphics.circle("fill", p.position:getX(), p.position:getY(), 4)
  end
end