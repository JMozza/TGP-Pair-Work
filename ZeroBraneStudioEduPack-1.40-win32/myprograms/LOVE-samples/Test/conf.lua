function love.conf(c)
  c.title = "Test"
  local window = c.screen or c.window -- love 0.9 renamed "screen" to "window"
  window.width = 360
  window.height = 640
end