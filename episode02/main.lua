
title = "Lua Math: Episode 2 - Intro to Trigonometry"
window_width = 1260
window_height = 800

function love.load()
  love.window.setMode(window_width, window_height)
  love.window.setTitle(title)

  love.graphics.setBackgroundColor(255, 255, 255)
end

angles = {}
coords = {}
angle = 0.0

while angle < math.pi * 2 do
  table.insert(coords, angle * 200)
  -- multiplying the angle by -1 reverses the polarity of the wave so it goes up first
  -- adding window_height / 2 shifts the wave down to the center of the window
  table.insert(coords, (math.sin(angle * -1) * 200) + (window_height / 2))

  table.insert(angles, math.sin(angle)) -- this is just in case we want to print the angles

  angle = angle + 0.01
end

function love.draw()
  love.graphics.setColor(0, 0, 0)

  -- draw the sine wave
  for i = 1, #coords, 2 do
    love.graphics.rectangle("fill", coords[i], coords[i + 1], 5, 5)
  end

  -- the following section would print a list of all angles to the 6th decimal
  --[[
  angle_string = ""

  for i = 1, #angles, 1 do
    angle_string = angle_string .. math.floor(angles[i] * 1000000) / 1000000 .. " "
  end

  love.graphics.printf(angle_string, 10, 10, window_width - 10)
  ]]

end