title = "Lua Math: Episode 5 - Arctangent"
window_width = 1200
window_height = 800

function love.load()
  love.window.setMode(window_width, window_height)
  love.window.setTitle(title)

  love.graphics.setBackgroundColor(255, 255, 255)
  love.graphics.setColor(0, 0, 0)
end

arrowX = window_width / 2
arrowY = window_height / 2
angle = 0
a = 0

function love.mousemoved(x, y, _, _, _)
  -- calculate the angle for the arrow
  dx = mx - arrowX
  dy = my - arrowY
  angle = math.atan2(dy, dx)
end

function love.draw()
  -- translate and rotate the coordinate system
  love.graphics.translate(arrowX, arrowY)
  love.graphics.rotate(angle)
  -- draw the arrow
  love.graphics.line(-20,0, 20,0, 10,-10)
  love.graphics.line(20,0, 10,10)
  -- restore the original coordinate system
  love.graphics.origin()

  --[[
    CHALLENGE: Animate an arrow along a circular path,
    but have it always point toward the mouse cursor
  --]]

  -- move arrow 2 around in a circle
  orbiterX = arrowX + math.cos(a) * window_height * 0.4
  orbiterY = arrowY + math.sin(a) * window_height * 0.4
  a = a + 0.01
  --[[
    get the current mouse position
       (have to do this here instead of mousemove
       because of the arrow's constantly changing position
       relative to the mouse position
  --]]
  mx, my = love.mouse.getPosition()
  orb_dx = mx - orbiterX
  orb_dy = my - orbiterY
  orb_angle = math.atan2(orb_dy, orb_dx)
  -- again, translate and rotate the coordinate system
  love.graphics.translate(orbiterX, orbiterY)
  love.graphics.rotate(orb_angle)
  -- draw the arrow
  love.graphics.line(-20,0, 20,0, 10,-10)
  love.graphics.line(20,0, 10,10)
end