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