--function halLoad()
  --level2BlockX1 = 0
  --level2BlockX2 = 72
  --level2BlockX3 = 144
  --level2BlockX4 = 216
  --level2BlockX5 = 288
  
  --level2BlockX6 = 36
  --level2BlockX7 = 108
  --level2BlockX8 = 180
  --level2BlockX9 = 252
  
  --level2BlockLayer1Y = 246.5
  --level2BlockLayer2Y = 267.5
  --level2BlockLayer3Y = 288.5
  --level2BlockLayer4Y = 309.5
  --level2BlockLayer5Y = 351.5
  --level2BlockLayer6Y = 372.5
  --level2BlockLayer7Y = 393.5
  
  --paddleP1X = 135
  --paddleP2X = 135
  --paddleP1Y = 40
  --paddleP2Y = 588
--end

function halDraw()  
  love.graphics.draw(halBackground, halBackgroundQuad, 0, 0)
  
  love.graphics.draw(blockHalLayer1_7, level2BlockX1, level2BlockLayer1Y)
  love.graphics.draw(blockHalLayer1_7, level2BlockX2, level2BlockLayer1Y)
  love.graphics.draw(blockHalLayer1_7, level2BlockX3, level2BlockLayer1Y)
  love.graphics.draw(blockHalLayer1_7, level2BlockX4, level2BlockLayer1Y)
  love.graphics.draw(blockHalLayer1_7, level2BlockX5, level2BlockLayer1Y)
  
  love.graphics.draw(blockHalLayer2_6, level2BlockX6, level2BlockLayer2Y)
  love.graphics.draw(blockHalLayer2_6, level2BlockX7, level2BlockLayer2Y)
  love.graphics.draw(blockHalLayer2_6, level2BlockX8, level2BlockLayer2Y)
  love.graphics.draw(blockHalLayer2_6, level2BlockX9, level2BlockLayer2Y)
  
  love.graphics.draw(blockHalLayer3_5, level2BlockX2, level2BlockLayer3Y)
  love.graphics.draw(blockHalLayer3_5, level2BlockX3, level2BlockLayer3Y)
  love.graphics.draw(blockHalLayer3_5, level2BlockX4, level2BlockLayer3Y)  

  love.graphics.draw(blockHalLayer4S, level2BlockX7, level2BlockLayer4Y)
  love.graphics.draw(blockHalLayer4S, level2BlockX8, level2BlockLayer4Y)
  
  love.graphics.draw(blockHalLayer3_5, level2BlockX2 + 72, level2BlockLayer5Y, math.rad(180))
  love.graphics.draw(blockHalLayer3_5, level2BlockX3 + 72, level2BlockLayer5Y, math.rad(180))
  love.graphics.draw(blockHalLayer3_5, level2BlockX4 + 72, level2BlockLayer5Y, math.rad(180))
  
  love.graphics.draw(blockHalLayer2_6, level2BlockX6 + 72, level2BlockLayer6Y, math.rad(180))
  love.graphics.draw(blockHalLayer2_6, level2BlockX7 + 72, level2BlockLayer6Y, math.rad(180))
  love.graphics.draw(blockHalLayer2_6, level2BlockX8 + 72, level2BlockLayer6Y, math.rad(180))
  love.graphics.draw(blockHalLayer2_6, level2BlockX9 + 72, level2BlockLayer6Y, math.rad(180))
  
  love.graphics.draw(blockHalLayer1_7, level2BlockX1 + 72, level2BlockLayer7Y, math.rad(180))
  love.graphics.draw(blockHalLayer1_7, level2BlockX2 + 72, level2BlockLayer7Y, math.rad(180))
  love.graphics.draw(blockHalLayer1_7, level2BlockX3 + 72, level2BlockLayer7Y, math.rad(180))
  love.graphics.draw(blockHalLayer1_7, level2BlockX4 + 72, level2BlockLayer7Y, math.rad(180))
  love.graphics.draw(blockHalLayer1_7, level2BlockX5 + 72, level2BlockLayer7Y, math.rad(180))  

  love.graphics.draw(paddleP1, paddleP1X, paddleP1Y)
  love.graphics.draw(paddleP2, paddleP2X, paddleP2Y)
end