function multiControls()
  
  
  if love.keyboard.isDown("escape") then
    gamestate = "paused"
  end
end

function singleControls()
 
  if love.keyboard.isDown("escape") then
    gamestate = "paused"
  end
end