function test2Draw()
  love.graphics.draw(halBackground, halBackgroundQuad, 0, 0)
  
  love.graphics.print("Get ready!", width/2, height/3)

  -- Points/Lives
<<<<<<< HEAD
  love.graphics.print("Points: " .. player.points + player2.points, 10, height - 30)
=======
  love.graphics.print("Points: " .. player.points, 10, height - 30)
  love.graphics.print("Points: " .. player2.points, 10, height - 450)
>>>>>>> 1e79de1a374199e91f51be73e09dc3cbf0d7b5d6
  
  -- Draw Paddles
  love.graphics.draw(paddleP1, player.x, player.y)
  love.graphics.draw(paddleP2, player2.x, player2.y-12)

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

  -- Draw Balls
  love.graphics.draw(ball1texture, ball.x - 10, ball.y - 10)
  love.graphics.draw(ball2texture, ball2.x - 10, ball2.y - 10)
  
end

function test2Draw2()
  love.graphics.draw(halBackground, halBackgroundQuad, 0, 0)
  -- Points/Lives
<<<<<<< HEAD
  love.graphics.print("Points: " .. player.points + player2.points, 10, height - 30)
=======
  love.graphics.print("Points: " .. player.points, 10, height - 30)
  love.graphics.print("Points: " .. player2.points, 10, height - 450)
>>>>>>> 1e79de1a374199e91f51be73e09dc3cbf0d7b5d6
  
  -- Draw Paddles
  love.graphics.draw(paddleP1, player.x, player.y)
  love.graphics.draw(paddleP2, player2.x, player2.y-12)

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
  
  -- Draw Balls
  love.graphics.draw(ball1texture, ball.x - 10, ball.y - 10)
  love.graphics.draw(ball2texture, ball2.x - 10, ball2.y - 10)
end