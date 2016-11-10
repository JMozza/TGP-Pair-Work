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
end

function singleControls()
  if love.keyboard.isDown("left") then
    paddleP2X = paddleP2X - 1.5
  elseif love.keyboard.isDown("right") then
    paddleP2X = paddleP2X + 1.5
  end
  
  if paddleP2X == 0 then
    paddleP2X = paddleP2X + 1.5
  elseif paddleP2X == 270 then
    paddleP2X = paddleP2X - 1.5
  end
end