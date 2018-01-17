title = "Lua Math: Episode 3 - More Trigonometry"
window_width = 1200
window_height = 800

function love.load()
  love.window.setMode(window_width, window_height)
  love.window.setTitle(title)

  love.graphics.setBackgroundColor(255, 255, 255)
  love.graphics.setColor(0, 0, 0)
end

centerY = window_height * 0.5
centerX = window_width * 0.5

offset1 = window_height * 0.4

baseRadius = 100
offset2 = 50

baseAlpha = 128
offset3 = 128

speed = 0.1
angle = 0

function love.draw()
  -- circle going up and down (first example)
  y = centerY + math.sin(angle) * offset1
  love.graphics.setColor(0, 0, 0)
  love.graphics.circle("fill", centerX * 0.375, y, 50)

  -- circle growing and shrinking
  radius = baseRadius + math.sin(angle) * offset2
  love.graphics.setColor(0, 0, 0)
  love.graphics.circle("fill", centerX, centerY, radius)

  -- circle fading in and out
  alpha = baseAlpha + math.sin(angle) * offset3
  love.graphics.setColor(0, 0, 0, alpha)
  love.graphics.circle("fill", centerX + (centerX * 0.625), centerY, 75)

  angle = angle + speed
end