function test2DrawSingle()
  love.graphics.draw(halBackground, halBackgroundQuad, 0, 0)

  -- Points/Lives
  love.graphics.print("Points: " .. player.points + player2.points, 10, height - 50)
  
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
  love.graphics.draw(ball2texture, ball.x - 10, ball.y - 10)
  love.graphics.draw(ball2texture, ball2.x - 10, ball2.y - 10)
  
end

function test2DrawMuilt()
  love.graphics.draw(xmasBackground, xmasBackgroundQuad, 0, 0)
  -- Points/Lives
  love.graphics.print("Points: " .. player.points + player2.points, 10, height - 50)
  
  -- Draw Paddles
  love.graphics.draw(paddleP1, player.x, player.y)
  love.graphics.draw(paddleP2, player2.x, player2.y-12)

  -- Draw blocks
  for _,v in pairs(blocks.draw) do
    love.graphics.draw(blockXmasLayer1_7, v.x, v.y)
  end
  
  for _,v in pairs(blocks2.draw) do
    love.graphics.draw(blockXmasLayer2_6, v.x, v.y)
  end
  
  for _,v in pairs(blocks3.draw) do
    love.graphics.draw(blockXmasLayer3_5, v.x, v.y)
  end
  
  for _,v in pairs(blocks4.draw) do
    love.graphics.draw(blockHalLayer4, v.x, v.y)
  end
  
  for _,v in pairs(blocks5.draw) do
    love.graphics.draw(blockXmasLayer3_5, v.x, v.y)
  end
  
  for _,v in pairs(blocks6.draw) do
    love.graphics.draw(blockXmasLayer2_6, v.x, v.y)
  end
  
  for _,v in pairs(blocks7.draw) do
    love.graphics.draw(blockXmasLayer1_7, v.x, v.y)
  end
  
  -- Draw Balls
  love.graphics.draw(ball1texture, ball.x - 10, ball.y - 10)
  love.graphics.draw(ball1texture, ball2.x - 10, ball2.y - 10)
end

function blockBounceingSingle()
  for i,v in ipairs(blocks.draw) do
    if ball.y <= (v.y + v.height) and ball.y >= v.y then
      if ball.x <= (v.x + v.width) and ball.x >= v.x then
        bounce()
        blockBounce:play()
        table.remove(blocks.draw, i)
        player.points = player.points + 1
      end
    end
  end
  
  for i,v in ipairs(blocks.draw) do
    if ball2.y <= (v.y + v.height) and ball2.y >= v.y then
      if ball2.x <= (v.x + v.width) and ball2.x >= v.x then
        bounce2()
        blockBounce:play()
        table.remove(blocks.draw, i)
        player.points = player.points + 1
      end
    end
  end
  
  for i,v in ipairs(blocks2.draw) do
    if ball.y <= (v.y + v.height) and ball.y >= v.y then
      if ball.x <= (v.x + v.width) and ball.x >= v.x then
        bounce()
        blockBounce:play()
        table.remove(blocks2.draw, i)
        player.points = player.points + 3
      end
    end
  end
  
  for i,v in ipairs(blocks2.draw) do
    if ball2.y <= (v.y + v.height) and ball2.y >= v.y then
      if ball2.x <= (v.x + v.width) and ball2.x >= v.x then
        bounce2()
        blockBounce:play()
        table.remove(blocks2.draw, i)
        player2.points = player2.points + 3
      end
    end
  end
  
  for i,v in ipairs(blocks3.draw) do
    if ball.y <= (v.y + v.height) and ball.y >= v.y then
      if ball.x <= (v.x + v.width) and ball.x >= v.x then
        bounce()
        blockBounce:play()
        table.remove(blocks3.draw, i)
        player.points = player.points + 5
      end
    end
  end
  
  for i,v in ipairs(blocks3.draw) do
    if ball2.y <= (v.y + v.height) and ball2.y >= v.y then
      if ball2.x <= (v.x + v.width) and ball2.x >= v.x then
        bounce2()
        blockBounce:play()
        table.remove(blocks3.draw, i)
        player2.points = player2.points + 5
      end
    end
  end
  
  for i,v in ipairs(blocks4.draw) do
    if ball.y <= (v.y + v.height) and ball.y >= v.y then
      if ball.x <= (v.x + v.width) and ball.x >= v.x then
        bounce()
        blockBounce:play()
        table.remove(blocks4.draw, i)
        player.points = player.points * 3
      end
    end
  end
  
  for i,v in ipairs(blocks4.draw) do
    if ball2.y <= (v.y + v.height) and ball2.y >= v.y then
      if ball2.x <= (v.x + v.width) and ball2.x >= v.x then
        bounce2()
        blockBounce:play()
        table.remove(blocks4.draw, i)
        player2.points = player2.points * 3
      end
    end
  end
  
  for i,v in ipairs(blocks5.draw) do
    if ball.y <= (v.y + v.height) and ball.y >= v.y then
      if ball.x <= (v.x + v.width) and ball.x >= v.x then
        bounce()
        blockBounce:play()
        table.remove(blocks5.draw, i)
        player.points = player.points + 5
      end
    end
  end
  
  for i,v in ipairs(blocks5.draw) do
    if ball2.y <= (v.y + v.height) and ball2.y >= v.y then
      if ball2.x <= (v.x + v.width) and ball2.x >= v.x then
        bounce2()
        blockBounce:play()
        table.remove(blocks5.draw, i)
        player2.points = player2.points + 5
      end
    end
  end
  
  for i,v in ipairs(blocks6.draw) do
    if ball.y <= (v.y + v.height) and ball.y >= v.y then
      if ball.x <= (v.x + v.width) and ball.x >= v.x then
        bounce()
        blockBounce:play()
        table.remove(blocks6.draw, i)
        player.points = player.points + 3
      end
    end
  end
  
  for i,v in ipairs(blocks6.draw) do
    if ball2.y <= (v.y + v.height) and ball2.y >= v.y then
      if ball2.x <= (v.x + v.width) and ball2.x >= v.x then
        bounce2()
        blockBounce:play()
        table.remove(blocks6.draw, i)
        player2.points = player2.points + 3
      end
    end
  end
  
  for i,v in ipairs(blocks7.draw) do
    if ball.y <= (v.y + v.height) and ball.y >= v.y then
      if ball.x <= (v.x + v.width) and ball.x >= v.x then
        bounce()
        blockBounce:play()
        table.remove(blocks7.draw, i)
        player.points = player.points + 1
      end
    end
  end
  
  for i,v in ipairs(blocks7.draw) do
    if ball2.y <= (v.y + v.height) and ball2.y >= v.y then
      if ball2.x <= (v.x + v.width) and ball2.x >= v.x then
        bounce2()
        blockBounce:play()
        table.remove(blocks7.draw, i)
        player2.points = player2.points + 1
      end
    end
  end
end

function blockBounceingMulti()
  for i,v in ipairs(blocks.draw) do
    if ball.y <= (v.y + v.height) and ball.y >= v.y then
      if ball.x <= (v.x + v.width) and ball.x >= v.x then
        bounce()
        blockBounce:play()
        table.remove(blocks.draw, i)
        player.points = player.points + 1
      end
    end
  end
  
  for i,v in ipairs(blocks.draw) do
    if ball2.y <= (v.y + v.height) and ball2.y >= v.y then
      if ball2.x <= (v.x + v.width) and ball2.x >= v.x then
        bounce2()
        blockBounce:play()
        table.remove(blocks.draw, i)
        player.points = player.points + 1
      end
    end
  end
  
  for i,v in ipairs(blocks2.draw) do
    if ball.y <= (v.y + v.height) and ball.y >= v.y then
      if ball.x <= (v.x + v.width) and ball.x >= v.x then
        bounce()
        blockBounce:play()
        table.remove(blocks2.draw, i)
        player.points = player.points + 3
      end
    end
  end
  
  for i,v in ipairs(blocks2.draw) do
    if ball2.y <= (v.y + v.height) and ball2.y >= v.y then
      if ball2.x <= (v.x + v.width) and ball2.x >= v.x then
        bounce2()
        blockBounce:play()
        table.remove(blocks2.draw, i)
        player2.points = player2.points + 3
      end
    end
  end
  
  for i,v in ipairs(blocks3.draw) do
    if ball.y <= (v.y + v.height) and ball.y >= v.y then
      if ball.x <= (v.x + v.width) and ball.x >= v.x then
        bounce()
        blockBounce:play()
        table.remove(blocks3.draw, i)
        player.points = player.points + 5
      end
    end
  end
  
  for i,v in ipairs(blocks3.draw) do
    if ball2.y <= (v.y + v.height) and ball2.y >= v.y then
      if ball2.x <= (v.x + v.width) and ball2.x >= v.x then
        bounce2()
        blockBounce:play()
        table.remove(blocks3.draw, i)
        player2.points = player2.points + 5
      end
    end
  end
  
  for i,v in ipairs(blocks4.draw) do
    if ball.y <= (v.y + v.height) and ball.y >= v.y then
      if ball.x <= (v.x + v.width) and ball.x >= v.x then
        bounce()
        blockBounce:play()
        table.remove(blocks4.draw, i)
        player.points = player.points * 3
      end
    end
  end
  
  for i,v in ipairs(blocks4.draw) do
    if ball2.y <= (v.y + v.height) and ball2.y >= v.y then
      if ball2.x <= (v.x + v.width) and ball2.x >= v.x then
        bounce2()
        blockBounce:play()
        table.remove(blocks4.draw, i)
        player2.points = player2.points * 3
      end
    end
  end
  
  for i,v in ipairs(blocks5.draw) do
    if ball.y <= (v.y + v.height) and ball.y >= v.y then
      if ball.x <= (v.x + v.width) and ball.x >= v.x then
        bounce()
        blockBounce:play()
        table.remove(blocks5.draw, i)
        player.points = player.points + 5
      end
    end
  end
  
  for i,v in ipairs(blocks5.draw) do
    if ball2.y <= (v.y + v.height) and ball2.y >= v.y then
      if ball2.x <= (v.x + v.width) and ball2.x >= v.x then
        bounce2()
        blockBounce:play()
        table.remove(blocks5.draw, i)
        player2.points = player2.points + 5
      end
    end
  end
  
  for i,v in ipairs(blocks6.draw) do
    if ball.y <= (v.y + v.height) and ball.y >= v.y then
      if ball.x <= (v.x + v.width) and ball.x >= v.x then
        bounce()
        blockBounce:play()
        table.remove(blocks6.draw, i)
        player.points = player.points + 3
      end
    end
  end
  
  for i,v in ipairs(blocks6.draw) do
    if ball2.y <= (v.y + v.height) and ball2.y >= v.y then
      if ball2.x <= (v.x + v.width) and ball2.x >= v.x then
        bounce2()
        blockBounce:play()
        table.remove(blocks6.draw, i)
        player2.points = player2.points + 3
      end
    end
  end
  
  for i,v in ipairs(blocks7.draw) do
    if ball.y <= (v.y + v.height) and ball.y >= v.y then
      if ball.x <= (v.x + v.width) and ball.x >= v.x then
        bounce()
        blockBounce:play()
        table.remove(blocks7.draw, i)
        player.points = player.points + 1
      end
    end
  end
  
  for i,v in ipairs(blocks7.draw) do
    if ball2.y <= (v.y + v.height) and ball2.y >= v.y then
      if ball2.x <= (v.x + v.width) and ball2.x >= v.x then
        bounce2()
        blockBounce:play()
        table.remove(blocks7.draw, i)
        player2.points = player2.points + 1
      end
    end
  end
end

function test2Update(dt)  
  winnerSound:setVolume(0.5)
 
    -- Hitbox for player 1 ball 1
  if ball.y >= player.y and ball.y <= height and ball.x >= player.x and
    ball.x <= (player.x + player.width) then
      blockBounce:play()
    if ball.x >= player.x and ball.x < (player.x + 10) then
      ball.direction = "ull"
    elseif ball.x >= (player.x + 15) and ball.x < (player.x + 25) then
      ball.direction = "ul"
    elseif ball.x >= (player.x + 30) and ball.x < (player.x + 40) then
      ball.direction = "uul"
    elseif ball.x >= (player.x + 45) and ball.x < (player.x + 55) then
      ball.direction = "ul"
    elseif ball.x >= (player.x + 60) and ball.x < (player.x + 70) then
      ball.direction = "uur"
    elseif ball.x >= (player.x + 75) and ball.x < (player.x + 85) then
      ball.direction = "ur"
    elseif ball.x >= (player.x + 90) and ball.x < (player.x + 100) then
      ball.direction = "urr"
    end
  end
  
  -- Hitbox for player 2 ball 1
  if ball.y <= player2.y and ball.y <= height and ball.x >= player2.x and
    ball.x <= (player2.x + player2.width) then
      blockBounce:play()
    if ball.x >= player2.x and ball.x < (player2.x + 10) then
      ball.direction = "ddl"
    elseif ball.x >= (player2.x + 15) and ball.x < (player2.x + 25) then
      ball.direction = "dl"
    elseif ball.x >= (player2.x + 30) and ball.x < (player2.x + 40) then
      ball.direction = "dll"
    elseif ball.x >= (player2.x + 45) and ball.x < (player2.x + 55) then
      ball.direction = "dr"
    elseif ball.x >= (player2.x + 60) and ball.x < (player2.x + 70) then
      ball.direction = "ddr"
    elseif ball.x >= (player2.x + 75) and ball.x < (player2.x + 85) then
      ball.direction = "dr"
    elseif ball.x >= (player2.x + 90) and ball.x < (player2.x + 100) then
      ball.direction = "drr"
    end
  end
  
  -- Hitbox for player 1 ball 2
  if ball2.y >= player.y and ball2.y <= height and ball2.x >= player.x and
    ball2.x <= (player.x + player.width) then
      blockBounce:play()
    if ball2.x >= player.x and ball2.x < (player.x + 10) then
      ball2.direction = "dll2"
    elseif ball2.x >= (player.x + 15) and ball2.x < (player.x + 25) then
      ball2.direction = "dl2"
    elseif ball2.x >= (player.x + 30) and ball2.x < (player.x + 40) then
      ball2.direction = "ddl2"
    elseif ball2.x >= (player.x + 45) and ball2.x < (player.x + 55) then
      ball2.direction = "dl2"
    elseif ball2.x >= (player.x + 60) and ball2.x < (player.x + 70) then
      ball2.direction = "ddr2"
    elseif ball2.x >= (player.x + 75) and ball2.x < (player.x + 85) then
      ball2.direction = "dr2"
    elseif ball2.x >= (player.x + 90) and ball2.x < (player.x + 100) then
      ball2.direction = "drr2"
    end
  end
  
  -- Hitbox for player 2 ball 2
  if ball2.y <= player2.y and ball2.y <= height and ball2.x >= player2.x and
    ball2.x <= (player2.x + player2.width) then
      blockBounce:play()
    if ball2.x >= player2.x and ball2.x < (player2.x + 10) then
      ball2.direction = "uur2" -- change r to l
    elseif ball2.x >= (player2.x + 15) and ball2.x < (player2.x + 25) then
      ball2.direction = "ur2"
    elseif ball2.x >= (player2.x + 30) and ball2.x < (player2.x + 40) then
      ball2.direction = "urr2"
    elseif ball2.x >= (player2.x + 45) and ball2.x < (player2.x + 55) then
      ball2.direction = "ur2"
    elseif ball2.x >= (player2.x + 60) and ball2.x < (player2.x + 70) then
      ball2.direction = "uul2"
    elseif ball2.x >= (player2.x + 75) and ball2.x < (player2.x + 85) then
      ball2.direction = "ul2"
    elseif ball2.x >= (player2.x + 90) and ball2.x < (player2.x + 100) then
      ball2.direction = "ull2"
    end
  end

  -- Bounce ball off walls
  if (ball.x <= 5) or (ball.x >= width - 5) then
    blockBounce:play()
    if ball.direction == "uur" then ball.direction = "uul"
    elseif ball.direction == "ur" then ball.direction = "ul"
    elseif ball.direction == "urr" then ball.direction = "ull"
    elseif ball.direction == "drr" then ball.direction = "dll"
    elseif ball.direction == "dr" then ball.direction = "dl"
    elseif ball.direction == "ddr" then ball.direction = "ddl"
    elseif ball.direction == "ddl" then ball.direction = "ddr"
    elseif ball.direction == "dl" then ball.direction = "dr"
    elseif ball.direction == "dll" then ball.direction = "drr"
    elseif ball.direction == "ull" then ball.direction = "urr"
    elseif ball.direction == "ul" then ball.direction = "ur"
    elseif ball.direction == "uul" then ball.direction = "uur"
    end
  end
  
  if (ball2.x <= 5) or (ball2.x >= width - 5) then
    blockBounce:play()
    if ball2.direction == "uur2" then ball2.direction = "uul2"
    elseif ball2.direction == "ur2" then ball2.direction = "ul2"
    elseif ball2.direction == "urr2" then ball2.direction = "ull2"
    elseif ball2.direction == "drr2" then ball2.direction = "dll2"
    elseif ball2.direction == "dr2" then ball2.direction = "dl2"
    elseif ball2.direction == "ddr2" then ball2.direction = "ddl2"
    elseif ball2.direction == "ddl2" then ball2.direction = "ddr2"
    elseif ball2.direction == "dl2" then ball2.direction = "dr2"
    elseif ball2.direction == "dll2" then ball2.direction = "drr2"
    elseif ball2.direction == "ull2" then ball2.direction = "urr2"
    elseif ball2.direction == "ul2" then ball2.direction = "ur2"
    elseif ball2.direction == "uul2" then ball2.direction = "uur2"
    end
  end
  
  -- Ball off top or bottom
  if (gamestate == "Single") then
    if ball.y <= 0 then 
      gamestate = "p1WinnerSingle"
      backgroundSound:stop()
      winnerSound:play()
    end
    if ball2.y <= 0 then 
      gamestate = "p1WinnerSingle"
      backgroundSound:stop()
      winnerSound:play()
    end    
    if ball.y >= height then 
      gamestate = "p2WinnerSingle"
      backgroundSound:stop()
      winnerSound:play()
    end
    if ball2.y >= height then 
      gamestate = "p2WinnerSingle"
      backgroundSound:stop()
      winnerSound:play()
    end
  elseif (gamestate == "Multi") then
    if ball.y <= 0 then 
      gamestate = "p1WinnerMulti"
      backgroundSound:stop()
      winnerSound:play()
    end
    if ball2.y <= 0 then 
      gamestate = "p1WinnerMulti"
      backgroundSound:stop()
      winnerSound:play()
    end    
    if ball.y >= height then 
      gamestate = "p2WinnerMulti"
      backgroundSound:stop()
      winnerSound:play()
    end
    if ball2.y >= height then 
      gamestate = "p2WinnerMulti"
      backgroundSound:stop()
      winnerSound:play()
    end
  end

  -- Move ball
  if ball.direction == "u" then
    ball.y = ball.y - 2 * (dt * ball.speed)
  elseif ball.direction == "uur" then
    ball.y = ball.y - 2 * (dt * ball.speed)
    ball.x = ball.x + 1 * (dt * ball.speed)
  elseif ball.direction == "ur" then
    ball.y = ball.y - 2 * (dt * ball.speed)
    ball.x = ball.x + 2 * (dt * ball.speed)
  elseif ball.direction == "urr" then
    ball.y = ball.y - 1 * (dt * ball.speed)
    ball.x = ball.x + 2 * (dt * ball.speed)
  elseif ball.direction == "drr" then
    ball.y = ball.y + 1 * (dt * ball.speed)
    ball.x = ball.x + 2 * (dt * ball.speed)
  elseif ball.direction == "dr" then
    ball.y = ball.y + 2 * (dt * ball.speed)
    ball.x = ball.x + 2 * (dt * ball.speed)
  elseif ball.direction == "ddr" then
    ball.y = ball.y + 2 * (dt * ball.speed)
    ball.x = ball.x + 1 * (dt * ball.speed)
  elseif ball.direction == "d" then
    ball.y = ball.y + 2 * (dt * ball.speed)
  elseif ball.direction == "ddl" then
    ball.y = ball.y + 2 * (dt * ball.speed)
    ball.x = ball.x - 1 * (dt * ball.speed)
  elseif ball.direction == "dl" then
    ball.y = ball.y + 2 * (dt * ball.speed)
    ball.x = ball.x - 2 * (dt * ball.speed)
  elseif ball.direction == "dll" then
    ball.y = ball.y + 1 * (dt * ball.speed)
    ball.x = ball.x - 2 * (dt * ball.speed)
  elseif ball.direction == "ull" then
    ball.y = ball.y - 1 * (dt * ball.speed)
    ball.x = ball.x - 2 * (dt * ball.speed)
  elseif ball.direction == "ul" then
    ball.y = ball.y - 2 * (dt * ball.speed)
    ball.x = ball.x - 2 * (dt * ball.speed)
  elseif ball.direction == "uul" then
    ball.y = ball.y - 2 * (dt * ball.speed)
    ball.x = ball.x - 1 * (dt * ball.speed)
  end
  
  -- Move ball 2
  if ball2.direction == "u2" then
    ball2.y = ball.y + 2 * (dt * ball2.speed)
  elseif ball2.direction == "uur2" then
    ball2.y = ball2.y + 2 * (dt * ball2.speed)
    ball2.x = ball2.x - 1 * (dt * ball2.speed)
  elseif ball2.direction == "ur2" then
    ball2.y = ball2.y + 2 * (dt * ball2.speed)
    ball2.x = ball2.x - 2 * (dt * ball2.speed)
  elseif ball2.direction == "urr2" then
    ball2.y = ball2.y + 1 * (dt * ball2.speed)
    ball2.x = ball2.x - 2 * (dt * ball2.speed)
  elseif ball2.direction == "drr2" then
    ball2.y = ball2.y - 1 * (dt * ball2.speed)
    ball2.x = ball2.x - 2 * (dt * ball2.speed)
  elseif ball2.direction == "dr2" then
    ball2.y = ball2.y - 2 * (dt * ball2.speed)
    ball2.x = ball2.x - 2 * (dt * ball2.speed)
  elseif ball2.direction == "ddr2" then
    ball2.y = ball2.y - 2 * (dt * ball2.speed)
    ball2.x = ball2.x - 1 * (dt * ball2.speed)
  elseif ball2.direction == "d2" then
    ball2.y = ball2.y - 2 * (dt * ball2.speed)
  elseif ball2.direction == "ddl2" then
    ball2.y = ball2.y - 2 * (dt * ball2.speed)
    ball2.x = ball2.x + 1 * (dt * ball2.speed)
  elseif ball2.direction == "dl2" then
    ball2.y = ball2.y - 2 * (dt * ball2.speed)
    ball2.x = ball2.x + 2 * (dt * ball2.speed)
  elseif ball2.direction == "dll2" then
    ball2.y = ball2.y - 1 * (dt * ball2.speed)
    ball2.x = ball2.x + 2 * (dt * ball2.speed)
  elseif ball2.direction == "ull2" then
    ball2.y = ball2.y + 1 * (dt * ball2.speed)
    ball2.x = ball2.x + 2 * (dt * ball2.speed)
  elseif ball2.direction == "ul2" then
    ball2.y = ball2.y + 2 * (dt * ball2.speed)
    ball2.x = ball2.x + 2 * (dt * ball2.speed)
  elseif ball2.direction == "uul2" then
    ball2.y = ball2.y + 2 * (dt * ball2.speed)
    ball2.x = ball2.x + 1 * (dt * ball2.speed)
  end
end

function controlsingle(dt)
  if love.keyboard.isDown("right") then
    player.x = player.x + (dt * player.speed)
  elseif love.keyboard.isDown("left") then
    player.x = player.x - (dt * player.speed)
  end
  
  if player.x <= 0 then
    player.x = player.x + (dt * player.speed)
  elseif player.x + player.width >= width then
    player.x = player.x - (dt * player.speed)
  end
  
  if player2.x <= 0 then
    player2.x = player2.x + dx * (dt * player2.speed)
  elseif player2.x - player2.width >= width then
    player2.x = player2.x - dx * (dt * player2.speed)
  end
  
  myAngle = math.angle(player2.x + 45, player2.y, ball2.x, ball2.y)
  myAngle2 = math.angle(player2.x + 45, player2.y, ball.x, ball.y)
  dx = math.cos(myAngle) * (dt * aispeed)
  dx2 = math.cos(myAngle2) * (dt * aispeed)
  if ball2.y <= ball.y then 
    if player2.x >= -10 and player2.x <= width + 10 then
      if ball2.x <= player2.x - player2.width/2 then
        player2.x = player2.x - dx * (dt * player2.speed)
      elseif ball2.x >= player2.x - player2.width/2 then
        player2.x = player2.x + dx * (dt * player2.speed)
      end
    end
  elseif ball.y <= ball2.y then 
    if player2.x >= -10 and player2.x <= width + 10 then
      if ball2.x <= player2.x - player2.width/2 then
        player2.x = player2.x - dx2 * (dt * player2.speed)
      elseif ball2.x >= player2.x - player2.width/2 then
        player2.x = player2.x + dx2 * (dt * player2.speed)
      end
    end
  end
end

function controlmulti(dt)
  if love.keyboard.isDown("right") then
    player.x = player.x + (dt * player.speed)
  elseif love.keyboard.isDown("left") then
    player.x = player.x - (dt * player.speed)
  end
  
  if love.keyboard.isDown("d") then
    player2.x = player2.x + (dt * player2.speed)
  elseif love.keyboard.isDown("a") then
    player2.x = player2.x - (dt * player2.speed) 
  end
    
  if player.x <= 0 then
    player.x = player.x + (dt * player.speed)
  elseif player.x + player.width >= width then
    player.x = player.x - (dt * player.speed)
  end
  
  if player2.x <= 0 then
    player2.x = player2.x + (dt * player.speed)
  elseif player2.x + player.width >= width then
    player2.x = player2.x - (dt * player.speed)
  end
end


function bounce()
    if ball.direction == "ull"      then ball.direction = "dll"
    elseif ball.direction == "ul"   then ball.direction = "dl"
    elseif ball.direction == "uul"  then ball.direction = "ddl"
    elseif ball.direction == "u"    then ball.direction = "d"
    elseif ball.direction == "uur"  then ball.direction = "ddr"
    elseif ball.direction == "ur"   then ball.direction = "dr"
    elseif ball.direction == "urr"  then ball.direction = "drr"
    elseif ball.direction == "dll"  then ball.direction = "ull"
    elseif ball.direction == "dl"   then ball.direction = "ul"
    elseif ball.direction == "ddl"  then ball.direction = "uul"
    elseif ball.direction == "d"    then ball.direction = "u"
    elseif ball.direction == "ddr"  then ball.direction = "uur"
    elseif ball.direction == "dr"   then ball.direction = "ur"
    elseif ball.direction == "drr"  then ball.direction = "urr"
    end
end

function bounce2()
    if ball2.direction == "dll2"      then ball2.direction = "ull2"
    elseif ball2.direction == "dl2"   then ball2.direction = "ul2"
    elseif ball2.direction == "ddl2"  then ball2.direction = "uul2"
    elseif ball2.direction == "d2"    then ball2.direction = "u2"
    elseif ball2.direction == "ddr2"  then ball2.direction = "uur2"
    elseif ball2.direction == "dr2"   then ball2.direction = "ur2"
    elseif ball2.direction == "drr2"  then ball2.direction = "urr2"
    elseif ball2.direction == "ull2"  then ball2.direction = "dll2"
    elseif ball2.direction == "ul2"   then ball2.direction = "dl2"
    elseif ball2.direction == "uul2"  then ball2.direction = "ddl2"
    elseif ball2.direction == "u2"    then ball2.direction = "d2"
    elseif ball2.direction == "uur2"  then ball2.direction = "ddr2"
    elseif ball2.direction == "ur2"   then ball2.direction = "dr2"
    elseif ball2.direction == "urr2"  then ball2.direction = "drr2"
    end
end

function reLoad()
  player.width = 90
  player.height = 12
  player.x = width/2 - player.width/2
  player.y = 620
  player.speed = 400
  player.points = 0

  player2.width = 90
  player2.height = 12
  player2.x = width/2 - player2.width/2
  player2.y = 20
  player2.speed = 400
  player2.points = 0
  
  table.remove(blocks.draw, 1)
  table.remove(blocks.draw, 2)
  table.remove(blocks.draw, 3)
  table.remove(blocks.draw, 4)
  table.remove(blocks.draw, 5)
  
  table.remove(blocks2.draw, 1)
  table.remove(blocks2.draw, 2)
  table.remove(blocks2.draw, 3)
  table.remove(blocks2.draw, 4)
  table.remove(blocks2.draw, 5)
  
  table.remove(blocks3.draw, 1)
  table.remove(blocks3.draw, 2)
  table.remove(blocks3.draw, 3)
  table.remove(blocks3.draw, 4)
  table.remove(blocks3.draw, 5)
  
  table.remove(blocks4.draw, 1)
  table.remove(blocks4.draw, 2)
  table.remove(blocks4.draw, 3)
  table.remove(blocks4.draw, 4)
  table.remove(blocks4.draw, 5)
  
  table.remove(blocks5.draw, 1)
  table.remove(blocks5.draw, 2)
  table.remove(blocks5.draw, 3)
  table.remove(blocks5.draw, 4)
  table.remove(blocks5.draw, 5)
  
  table.remove(blocks6.draw, 1)
  table.remove(blocks6.draw, 2)
  table.remove(blocks6.draw, 3)
  table.remove(blocks6.draw, 4)
  table.remove(blocks6.draw, 5)
  
  table.remove(blocks7.draw, 1)
  table.remove(blocks7.draw, 2)
  table.remove(blocks7.draw, 3)
  table.remove(blocks7.draw, 4)
  table.remove(blocks7.draw, 5)
  
  column = 0; row = 1
  while 1 >= row do
    block = {}
    block.width = 72
    block.height = 21
    block.x = column * (block.width)
    block.y = (row * (block.height)) + 225
    table.insert(blocks.draw, block)
    column = column + 1
    if column == 10 then 
      column = 0; row = row + 1 
    end
  end
  
  column = 0; row = 2
  while 2 >= row do
    block2 = {}
    block2.width = 72
    block2.height = 21
    block2.x = column * (block2.width)
    block2.y = (row * (block2.height)) + 225
    table.insert(blocks2.draw, block2)
    column = column + 1
    if column == 10 then 
      column = 0; row = row + 1 
    end
  end
    
  column = 0; row = 3
  while 3 >= row do
    block3 = {}
    block3.width = 72
    block3.height = 21
    block3.x = column * (block3.width)
    block3.y = (row * (block3.height)) + 225
    table.insert(blocks3.draw, block3)
    column = column + 1
    if column == 10 then 
      column = 0; row = row + 1 
    end
  end
    
  column = 0; row = 4
  while 4 >= row do
    block4 = {}
    block4.width = 72
    block4.height = 21
    block4.x = column * (block4.width)
    block4.y = (row * (block4.height)) + 225
    table.insert(blocks4.draw, block4)
    column = column + 1
    if column == 10 then 
      column = 0; row = row + 1 
    end
  end
    
  column = 0; row = 5
  while 5 >= row do
    block5 = {}
    block5.width = 72
    block5.height = 21
    block5.x = column * (block5.width)
    block5.y = (row * (block5.height)) +225
    table.insert(blocks5.draw, block5)
    column = column + 1
    if column == 10 then 
      column = 0; row = row + 1 
    end
  end   
    
  column = 0; row = 6
  while 6 >= row do
    block6 = {}
    block6.width = 72
    block6.height = 21
    block6.x = column * (block6.width)
    block6.y = (row * (block6.height)) + 225
      table.insert(blocks6.draw, block6)
      column = column + 1
      if column == 10 then 
        column = 0; row = row + 1 
      end
    end

  column = 0; row = 7
  while 7 >= row do
      block7 = {}
      block7.width = 72
      block7.height = 21
      block7.x = column * (block7.width )
      block7.y = (row * (block7.height )) + 225
      table.insert(blocks7.draw, block7)
      column = column + 1
      if column == 10 then 
        column = 0; row = row + 1 
      end
    end
    
    ball.radius = 10
    ball.x = width/2
    ball.y = 540
    ball.speed = 100
    ball.direction = "d"
    
    ball2.radius = 10
    ball2.x = width/2
    ball2.y = 80
    ball2.speed = 100
    ball2.direction = "d2"
end
