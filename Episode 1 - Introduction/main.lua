
window_width = 1200
window_height = 800

function love.load()
  title = "Lua Math: Episode 1 - Introduction"

  love.window.setMode(window_width, window_height)
  love.window.setTitle(title)

  love.graphics.setBackgroundColor(255, 255, 255)
end

-- ensure we get different random lines every time
math.randomseed(os.time())

-- create a table with 100 sets of begin and end coordinates
points = {}

for i = 0, 400, 2 do
  points[i] = math.random(0, window_width)
  points[i + 1] = math.random(0, window_height)
end

function love.draw()
  -- loop through the table, drawing a line between each set of coordinates
  love.graphics.setColor(0, 0, 0)
  for i = 0, 400, 4 do
    love.graphics.line(points[i], points[i + 1], points[i + 2], points[i + 3])
  end
end