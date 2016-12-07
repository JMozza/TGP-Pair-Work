function test2Draw()
-- Cooldown
  if ball.cooldown > 0 then
    love.graphics.print("Get ready!", width/2, height/3)
  end

  -- Points/Lives
  love.graphics.print("Lives: " .. player.lives, 10, height - 50)
  love.graphics.print("Points: " .. player.points, 10, height - 30)
  love.graphics.print("Lives: " .. player2.lives, 10, height - 500)
  love.graphics.print("Points: " .. player2.points, 10, height - 450)
  
  -- Draw player 1
  love.graphics.setColor(255, 255, 255)
  love.graphics.rectangle("fill", player.x, player.y, player.width, player.height - 10)
  -- Draw player 2
  love.graphics.setColor(255, 255, 255)
  love.graphics.rectangle("fill", player2.x, player2.y, player2.width, player2.height - 10)

  -- Draw blocks
  for _,v in pairs(blocks.draw) do
    love.graphics.draw(blockHalLayer1_7, v.x, v.y)
  end
  
  for _,v in pairs(blocks2.draw) do
    love.graphics.draw(blockHalLayer2_6, v.x, v.y)
  end
  
  for _,v in pairs(blocks3.draw) do
    love.graphics.draw(blockHalLayer3_5, v.x, v.y)
  end
  
  for _,v in pairs(blocks4.draw) do
    love.graphics.draw(blockHalLayer4, v.x, v.y)
  end
  
  for _,v in pairs(blocks5.draw) do
    love.graphics.draw(blocklayer5fliped, v.x, v.y)
  end
  
  for _,v in pairs(blocks6.draw) do
    love.graphics.draw(blocklayer6fliped, v.x, v.y)
  end
  
  for _,v in pairs(blocks7.draw) do
    love.graphics.draw(blocklayer7fliped, v.x, v.y)
  end

  -- Draw ball 1
  love.graphics.setColor(255, 255, 255)
  love.graphics.circle("fill", ball.x, ball.y, ball.radius)
  
  -- Draw ball 2
  love.graphics.setColor(255, 255, 255)
  love.graphics.circle("fill", ball2.x, ball2.y, ball2.radius)
end