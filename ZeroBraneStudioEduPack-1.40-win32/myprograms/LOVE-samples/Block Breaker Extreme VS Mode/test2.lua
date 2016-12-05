function test2Draw()
-- Cooldown
  if ball.cooldown > 0 then
    love.graphics.print("Get ready!", width/2, height/2)
  end

  -- Points/Lives
  love.graphics.print("Lives: " .. player.lives, 10, height/3)
  love.graphics.print("Points: " .. player.points, 10, height/3 + 20)
  -- Draw player 1
  love.graphics.setColor(255, 255, 255)
  love.graphics.rectangle("fill", player.x, player.y, player.width, player.height - 10)
  -- Draw player 2
  --love.graphics.setColor(255, 255, 255)
  --love.graphics.rectangle("fill", player2.x, player2.y, player2.width, player2.height - 10)

  -- Draw blocks
  love.graphics.setColor(255, 0, 0)
  iter = 0
  for _,v in pairs(blocks.draw) do
    love.graphics.rectangle("fill", v.x, v.y, v.width, v.height)
  end

  -- Draw ball
  love.graphics.setColor(255, 255, 255)
  love.graphics.circle("fill", ball.x, ball.y, ball.radius)
end