
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
angle = 0
turning_left = false
turning_right = false
thrusting = false

function love.update(dt)
  -- get user input
  thrusting = love.keyboard.isDown("up")
  turning_left = love.keyboard.isDown("left")
  turning_right = love.keyboard.isDown("right")

  -- handle rotation
  if turning_left then
    angle = angle - 0.05
  end
  if turning_right then
    angle = angle + 0.05
  end

  -- handle thrust
  thrust:setAngle(angle)

  if thrusting then
    thrust:setLength(0.1)
  else
    thrust:setLength(0)
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

  -- translate and rotate the coordinate system
  love.graphics.translate(ship.position:getX(), ship.position:getY())
  love.graphics.rotate(angle)

  -- draw the ship
  love.graphics.line(-10,-7, -10,7, 10,0, -10,-7)
  if thrusting then
    love.graphics.setColor(139, 0, 0)
    love.graphics.line(-10,0, -18,0)
    love.graphics.setColor(0, 0, 0)
  end
  
  -- restore the original coordinate system
  love.graphics.origin()
end