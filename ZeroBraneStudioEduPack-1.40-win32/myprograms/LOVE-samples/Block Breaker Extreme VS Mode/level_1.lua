function xmasDraw()
  love.graphics.draw(xmasBackground, xmasBackgroundQuad, 0, 0)
  
  love.graphics.draw(blockXmasLayer1_7, level1BlockLayerX, level1BlockLayer1Y)
  love.graphics.draw(blockXmasLayer1_7, level1BlockLayerX2, level1BlockLayer1Y)
  love.graphics.draw(blockXmasLayer1_7, level1BlockLayerX3, level1BlockLayer1Y)
  love.graphics.draw(blockXmasLayer1_7, level1BlockLayerX4, level1BlockLayer1Y)
  love.graphics.draw(blockXmasLayer1_7, level1BlockLayerX5, level1BlockLayer1Y)
  
  love.graphics.draw(blockXmasLayer2_6, level1BlockLayerX, level1BlockLayer2Y)
  love.graphics.draw(blockXmasLayer2_6, level1BlockLayerX2, level1BlockLayer2Y)
  love.graphics.draw(blockXmasLayer2_6, level1BlockLayerX3, level1BlockLayer2Y)
  love.graphics.draw(blockXmasLayer2_6, level1BlockLayerX4, level1BlockLayer2Y)
  love.graphics.draw(blockXmasLayer2_6, level1BlockLayerX5, level1BlockLayer2Y)
  
  love.graphics.draw(blockXmasLayer3_5, level1BlockLayerX, level1BlockLayer3Y)
  love.graphics.draw(blockXmasLayer3_5, level1BlockLayerX2, level1BlockLayer3Y)
  love.graphics.draw(blockXmasLayer3_5, level1BlockLayerX3, level1BlockLayer3Y)
  love.graphics.draw(blockXmasLayer3_5, level1BlockLayerX4, level1BlockLayer3Y)
  love.graphics.draw(blockXmasLayer3_5, level1BlockLayerX5, level1BlockLayer3Y)
  
  love.graphics.draw(blockHalLayer4,  level1BlockLayerX, level1BlockLayer4Y)
  love.graphics.draw(blockHalLayer4S, level1BlockLayerX2, level1BlockLayer4Y)
  love.graphics.draw(blockHalLayer4,  level1BlockLayerX3, level1BlockLayer4Y)
  love.graphics.draw(blockHalLayer4S, level1BlockLayerX4, level1BlockLayer4Y)
  love.graphics.draw(blockHalLayer4,  level1BlockLayerX5, level1BlockLayer4Y)
  
  love.graphics.draw(blockXmasLayer3_5, level1BlockLayerX + 72, level1BlockLayer5Y, math.rad(180))
  love.graphics.draw(blockXmasLayer3_5, level1BlockLayerX2 + 72, level1BlockLayer5Y, math.rad(180))
  love.graphics.draw(blockXmasLayer3_5, level1BlockLayerX3 + 72, level1BlockLayer5Y, math.rad(180))
  love.graphics.draw(blockXmasLayer3_5, level1BlockLayerX4 + 72, level1BlockLayer5Y, math.rad(180))
  love.graphics.draw(blockXmasLayer3_5, level1BlockLayerX5 + 72, level1BlockLayer5Y, math.rad(180))
  
  love.graphics.draw(blockXmasLayer2_6, level1BlockLayerX + 72, level1BlockLayer6Y, math.rad(180))
  love.graphics.draw(blockXmasLayer2_6, level1BlockLayerX2 + 72, level1BlockLayer6Y, math.rad(180))
  love.graphics.draw(blockXmasLayer2_6, level1BlockLayerX3 + 72, level1BlockLayer6Y, math.rad(180))
  love.graphics.draw(blockXmasLayer2_6, level1BlockLayerX4 + 72, level1BlockLayer6Y, math.rad(180))
  love.graphics.draw(blockXmasLayer2_6, level1BlockLayerX5 + 72, level1BlockLayer6Y, math.rad(180))
  
  love.graphics.draw(blockXmasLayer1_7, level1BlockLayerX + 72, level1BlockLayer7Y, math.rad(180))
  love.graphics.draw(blockXmasLayer1_7, level1BlockLayerX2 + 72, level1BlockLayer7Y, math.rad(180))
  love.graphics.draw(blockXmasLayer1_7, level1BlockLayerX3 + 72, level1BlockLayer7Y, math.rad(180))
  love.graphics.draw(blockXmasLayer1_7, level1BlockLayerX4 + 72, level1BlockLayer7Y, math.rad(180))
  love.graphics.draw(blockXmasLayer1_7, level1BlockLayerX5 + 72, level1BlockLayer7Y, math.rad(180))
  
  love.graphics.draw(paddleP1, paddleP1X, paddleP1Y)
  love.graphics.draw(paddleP2, paddleP2X, paddleP2Y)
  
  love.graphics.draw(ball1, ballL1P1X, ballL1P1Y)
  love.graphics.draw(ball1, ballL1P2X, ballL1P2Y)
end