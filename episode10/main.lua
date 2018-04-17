
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

ship = particle:create(window_width / 2, window_height / 2, 0, 0)
thrust = vector:create()

function love.update(dt)
  if love.keyboard.isDown("up") then
    thrust:setY(-0.1)
  elseif love.keyboard.isDown("down") then
    thrust:setY(0.1)
  elseif love.keyboard.isDown("left") then
    thrust:setX(-0.1)
  elseif love.keyboard.isDown("right") then
    thrust:setX(0.1)
  else
    thrust:setY(0)
    thrust:setX(0)
  end

  -- cause ship to wrap if it goes off screen
  if ship.position:getX() > window_width then
    ship.position:setX(0)
  end
  if ship.position:getX() < 0 then
    ship.position:setX(window_width)
  end
  if ship.position:getY() > window_height then
    ship.position:setY(0)
  end
  if ship.position:getY() < 0 then
    ship.position:setY(window_height)
  end
end

function love.draw()
  ship:accelerate(thrust)
  ship:update()

  love.graphics.circle("fill", ship.position:getX(), ship.position:getY(), 10)
end