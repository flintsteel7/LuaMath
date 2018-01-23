title = "Lua Math: Chapter 4 - Circles, Ellipses and Lissajous Curves"
window_width = 1200
window_height = 800

function love.load()
  love.window.setMode(window_width, window_height)
  love.window.setTitle(title)

  love.graphics.setBackgroundColor(255, 255, 255)
  love.graphics.setColor(0, 0, 0)
end

centerX = window_width / 2
centerY = window_height / 2
angle = 0
xAngle = 0
yAngle = 0
speed = 0.01
xSpeed = 0.1
ySpeed = 0.131

function love.draw()
  -- move an object in a circle
  radius = 175
  x1 = 215 + math.cos(angle) * radius
  y1 = 200 + math.sin(angle) * radius
  love.graphics.circle("fill", x1, y1, 10)

  -- move an object in an ellipse
  xRadius = 125
  yRadius = 190
  -- negative angle (-angle) reverses the direction of rotation
  x2 = centerX + math.cos(-angle) * xRadius
  y2 = 200 + math.sin(-angle) * yRadius
  love.graphics.circle("fill", x2, y2, 10)

  angle = angle + speed

  -- move an object along a lissajous curve
  x3 = (window_width - 215) + math.cos(xAngle) * xRadius + 50
  y3 = 200 + math.sin(yAngle) * yRadius
  love.graphics.circle("fill", x3, y3, 10)

  xAngle = xAngle + xSpeed
  yAngle = yAngle + ySpeed

  -- draw n objects evenly spaced around a circle
  circleTheWagons(10, 350, 600)
  circleTheWagons(20, 850, 600)
end

function circleTheWagons(numWagons, x, y)
  angle2 = 0
  slice = math.pi * 2 / numWagons
  for i = 1, numWagons do
    angle2 = i * slice
    x4 = x + math.cos(angle2) * 175
    y4 = y + math.sin(angle2) * 175
    love.graphics.circle("fill", x4, y4, 10)
  end
end