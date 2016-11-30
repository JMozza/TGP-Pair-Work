function multiControls()
  if love.keyboard.isDown("a") then
    paddleP1X = paddleP1X - 1.5
  elseif love.keyboard.isDown("d") then
    paddleP1X = paddleP1X + 1.5
  end
  
  if love.keyboard.isDown("left") then
    paddleP2X = paddleP2X - 1.5
  elseif love.keyboard.isDown("right") then
    paddleP2X = paddleP2X + 1.5
  end
  
  if paddleP1X == 0 then
    paddleP1X = paddleP1X + 1.5
  elseif paddleP1X == 270 then
    paddleP1X = paddleP1X - 1.5
  end
  
  if paddleP2X == 0 then
    paddleP2X = paddleP2X + 1.5
  elseif paddleP2X == 270 then
    paddleP2X = paddleP2X - 1.5
  end
  
  if love.keyboard.isDown("k") then
    ballL1P1Y = ballL1P1Y + 1.5
  elseif love.keyboard.isDown("i") then
    ballL1P1Y = ballL1P1Y - 1.5
  elseif love.keyboard.isDown("j") then
    ballL1P1X = ballL1P1X - 1.5
  elseif love.keyboard.isDown("l") then
    ballL1P1X = ballL1P1X + 1.5
  end
  
  if love.keyboard.isDown("g") then
    ballL1P2Y = ballL1P2Y + 1.5
  elseif love.keyboard.isDown("t") then
    ballL1P2Y = ballL1P2Y - 1.5
  elseif love.keyboard.isDown("f") then
    ballL1P2X = ballL1P2X - 1.5
  elseif love.keyboard.isDown("h") then
    ballL1P2X = ballL1P2X + 1.5
  end
  
  if love.keyboard.isDown("escape") then
    gamestate = "paused"
  end
end

function singleControls()
  if love.keyboard.isDown("left") then
    paddleP2X = paddleP2X - 1.5
  elseif love.keyboard.isDown("right") then
    paddleP2X = paddleP2X + 1.5
  end
  
  --replace ai with angle tracker
  --if ballL1P1Y < ballL1P2Y then
      --paddleP1X = ballL1P1X - 35
  --elseif ballL1P2Y < ballL1P1Y then
      --paddleP1X = ballL1P2X - 35
  --end
  
  if love.keyboard.isDown("k") then
    ballL1P1Y = ballL1P1Y + 1.5
  elseif love.keyboard.isDown("i") then
    ballL1P1Y = ballL1P1Y - 1.5
  elseif love.keyboard.isDown("j") then
    ballL1P1X = ballL1P1X - 1.5
  elseif love.keyboard.isDown("l") then
    ballL1P1X = ballL1P1X + 1.5
  end
  
  if love.keyboard.isDown("g") then
    ballL1P2Y = ballL1P2Y + 1.5
  elseif love.keyboard.isDown("t") then
    ballL1P2Y = ballL1P2Y - 1.5
  elseif love.keyboard.isDown("f") then
    ballL1P2X = ballL1P2X - 1.5
  elseif love.keyboard.isDown("h") then
    ballL1P2X = ballL1P2X + 1.5
  end
  
  --if paddleP2X == 0 then
    --paddleP2X = paddleP2X + 1.5
  --elseif paddleP2X == 270 then
    --paddleP2X = paddleP2X - 1.5
  --end
  
  if love.keyboard.isDown("escape") then
    gamestate = "paused"
  end
end