--function xmasLoad()
  --level1BlockLayerX = 0
  --level1BlockLayerX2 = 72
  --level1BlockLayerX3 = 144
  --level1BlockLayerX4 = 216
  --level1BlockLayerX5 = 288
  
  --level1BlockLayer1Y = 246.5
  --level1BlockLayer2Y = 267.5
  --level1BlockLayer3Y = 288.5
  --level1BlockLayer4Y = 309.5
  --level1BlockLayer5Y = 351.5
  --level1BlockLayer6Y = 372.5
  --level1BlockLayer7Y = 393.5
  
  --paddleP1X = 135
  --paddleP2X = 135
  --paddleP1Y = 40
  --paddleP2Y = 588
--end

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
end