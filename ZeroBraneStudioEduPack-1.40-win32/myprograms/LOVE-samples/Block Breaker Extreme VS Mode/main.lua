require "menu"
require "omenu"

function love.load()

  menuBackground = love.graphics.newImage("sprites/bg.jpg")
  menubgQuad = love.graphics.newQuad(1,1,720/2,1280/2,720/2,1280/2)
  modeSelectBackground = love.graphics.newImage("sprites/bg.jpg")
  modeSelectQuad = love.graphics.newQuad(1,1,720/2,1280/2,720/2,1280/2)
  levelSelectBackground = love.graphics.newImage("sprites/bg.jpg")
  levelSelectQuad = love.graphics.newQuad(1,1,720/2,1280/2,720/2,1280/2)
  optionsBackground = love.graphics.newImage("sprites/bg.jpg")
  optionsQuad = love.graphics.newQuad(1,1,720/2,1280/2,720/2,1280/2)
  halloweenBackground = love.graphics.newImage("sprites/bg.jpg")
  halloweenQuad = love.graphics.newQuad(1,1,720/2,1280/2,720/2,1280/2)
  xmasBackground = love.graphics.newImage("sprites/bg.jpg")
  xmasQuad = love.graphics.newQuad(1,1,720/2,1280/2,720/2,1280/2)
  pauseBackground = love.graphics.newImage("sprites/bg.jpg")
  pauseQuad = love.graphics.newQuad(1,1,720/2,1280/2,720/2,1280/2)
  resultsBackground = love.graphics.newImage("sprites/bg.jpg")
  resultsQuad = love.graphics.newQuad(1,1,720/2,1280/2,720/2,1280/2)
  
  blockHalLayer1_7 = love.graphics.newImage("sprites/orange_layer1_hal.png")
  blockHalLayer2_6 = love.graphics.newImage("sprites/purple_layer2_hal.png")
  blockHalLayer3_5 = love.graphics.newImage("sprites/green_layer3_hal.png")
  
  blockHalLayer4 = love.graphics.newImage("sprites/blue _layer4_both_normal.png")
  blockHalLayer4S = love.graphics.newImage("sprites/blue _layer4_both_power.png")
  
  blockXmasLayer1_7 = love.graphics.newImage("sprites/green_layer1_xmas.png")
  blockXmasLayer2_6 = love.graphics.newImage("sprites/red_layer2_xmas.png")
  blockXmasLayer3_5 = love.graphics.newImage("sprites/gold_layer3_xmas.png")
  
  paddleP1 = love.graphics.newImage("sprites/paddle_top.png")
  paddleP2 = love.graphics.newImage("sprites/paddle_bottom.png")
  
  xmasBackground = love.graphics.newImage("sprites/xmas_background.png")
  xmasBackgroundQuad = love.graphics.newQuad(1,1,720/2,1280/2,720/2,1280/2)
  halBackground = love.graphics.newImage("sprites/Hal_Background.png")
  halBackgroundQuad = love.graphics.newQuad(1,1,720/2,1280/2,720/2,1280/2)
  
  --ballP1 = love.graphics.newImage("sprites/")
  --ballP2 = love.graphics.newImage("sprites/")
  
  medium = love.graphics.newFont("fonts/wallpoet/Wallpoet-Regular.ttf", 20)
  love.graphics.setFont(medium)
  love.graphics.setColor(1,1,1)
  
  blockLayerX = 0
  blockLayerX2 = 72
  blockLayerX3 = 144
  blockLayerX4 = 216
  blockLayerX5 = 288
  
  blockLayer1Y = 246.5
  blockLayer2Y = 267.5
  blockLayer3Y = 288.5
  blockLayer4Y = 309.5
  blockLayer5Y = 351.5
  blockLayer6Y = 372.5
  blockLayer7Y = 393.5
  
  paddleP1X = 135
  paddleP2X = 135
  paddleP1Y = 40
  paddleP2Y = 588
  
  gamestate = "menu"
  
  --Menu--
  button_spawn(140,250,"Start", "start")
  button_spawn(144,300, "Options", "options")
  button_spawn(144,350, "Quit", "quit")
  obutton_spawn(144,50, "Back", "back")
  
end

function love.draw() 
  if gamestate == "halloweenMulti" then
    halDraw()
  elseif gamestate == "modeSelect" then
    xmasDraw()
  elseif gamestate == "levelSelect" then
    xmasDraw()
  elseif gamestate == "xmasMulti" then
    xmasDraw()
  elseif gamestate == "halloweenSingle" then
    halDraw()
  elseif gamestate == "xmasSingle" then
    xmasDraw()
  elseif gamestate == "menu" then
    menuDraw()
  elseif gamestate == "options" then
    optionsDraw()
  elseif gamestate == "pause" then
    pauseDraw()
  elseif gamestate == "results" then
    resultsDraw()
  end  
end

function love.update(dt) 
  mousex = love.mouse.getX()
  mousey = love.mouse.getY()
  controls()
    
  if love.keyboard.isDown("up") then
    gamestate = "halloweenMulti"
    paddleP1X = 135
    paddleP2X = 135
    paddleP1Y = 40
    paddleP2Y = 588
  elseif love.keyboard.isDown("down")then
    gamestate = "xmasMulti"
    paddleP1X = 135
    paddleP2X = 135
    paddleP1Y = 40
    paddleP2Y = 588
  elseif love.keyboard.isDown("s")then
    gamestate = "halloweenSingle"
    paddleP1X = 135
    paddleP2X = 135
    paddleP1Y = 40
    paddleP2Y = 588    
  elseif love.keyboard.isDown("w")then
    gamestate = "xmasSingle"
    paddleP1X = 135
    paddleP2X = 135
    paddleP1Y = 40
    paddleP2Y = 588
  end  

end

function CheckCollision(x1,y1,w1,h1, x2,y2,w2,h2)
  return x1 < x2+w2 and
         x2 < x1+w1 and
         y1 < y2+h2 and
         y2 < y1+h1
end

function menuDraw()
  love.graphics.draw(menuBackground, menubgQuad, 0, 0)
  button_draw()
end

function modeSelectDraw()
  love.graphics.draw(modeSelectBackground, modeSelectQuad, 0, 0)
end

function levelSelectDraw()
  love.graphics.draw(levelSelectBackground, levelSelectQuad, 0, 0)
end

function optionsDraw()
  love.graphics.draw(optionsBackground, optionsQuad, 0, 0)
  obutton_draw()
end

function pauseDraw()
  love.graphics.draw(pauseBackground, pauseQuad, 0, 0)
end

function resultsDraw()
  love.graphics.draw(resultsBackground, resultsQuad, 0, 0)
end

function xmasDraw()
  love.graphics.draw(xmasBackground, xmasBackgroundQuad, 0, 0)
  
  love.graphics.draw(blockXmasLayer1_7, blockLayerX, blockLayer1Y)
  love.graphics.draw(blockXmasLayer1_7, blockLayerX2, blockLayer1Y)
  love.graphics.draw(blockXmasLayer1_7, blockLayerX3, blockLayer1Y)
  love.graphics.draw(blockXmasLayer1_7, blockLayerX4, blockLayer1Y)
  love.graphics.draw(blockXmasLayer1_7, blockLayerX5, blockLayer1Y)
  
  love.graphics.draw(blockXmasLayer2_6, blockLayerX, blockLayer2Y)
  love.graphics.draw(blockXmasLayer2_6, blockLayerX2, blockLayer2Y)
  love.graphics.draw(blockXmasLayer2_6, blockLayerX3, blockLayer2Y)
  love.graphics.draw(blockXmasLayer2_6, blockLayerX4, blockLayer2Y)
  love.graphics.draw(blockXmasLayer2_6, blockLayerX5, blockLayer2Y)
  
  love.graphics.draw(blockXmasLayer3_5, blockLayerX, blockLayer3Y)
  love.graphics.draw(blockXmasLayer3_5, blockLayerX2, blockLayer3Y)
  love.graphics.draw(blockXmasLayer3_5, blockLayerX3, blockLayer3Y)
  love.graphics.draw(blockXmasLayer3_5, blockLayerX4, blockLayer3Y)
  love.graphics.draw(blockXmasLayer3_5, blockLayerX5, blockLayer3Y)
  
  love.graphics.draw(blockHalLayer4, blockLayerX, blockLayer4Y)
  love.graphics.draw(blockHalLayer4S, blockLayerX2, blockLayer4Y)
  love.graphics.draw(blockHalLayer4, blockLayerX3, blockLayer4Y)
  love.graphics.draw(blockHalLayer4S, blockLayerX4, blockLayer4Y)
  love.graphics.draw(blockHalLayer4, blockLayerX5, blockLayer4Y)
  
  love.graphics.draw(blockXmasLayer3_5, blockLayerX + 72, blockLayer5Y, math.rad(180))
  love.graphics.draw(blockXmasLayer3_5, blockLayerX2 + 72, blockLayer5Y, math.rad(180))
  love.graphics.draw(blockXmasLayer3_5, blockLayerX3 + 72, blockLayer5Y, math.rad(180))
  love.graphics.draw(blockXmasLayer3_5, blockLayerX4 + 72, blockLayer5Y, math.rad(180))
  love.graphics.draw(blockXmasLayer3_5, blockLayerX5 + 72, blockLayer5Y, math.rad(180))
  
  love.graphics.draw(blockXmasLayer2_6, blockLayerX + 72, blockLayer6Y, math.rad(180))
  love.graphics.draw(blockXmasLayer2_6, blockLayerX2 + 72, blockLayer6Y, math.rad(180))
  love.graphics.draw(blockXmasLayer2_6, blockLayerX3 + 72, blockLayer6Y, math.rad(180))
  love.graphics.draw(blockXmasLayer2_6, blockLayerX4 + 72, blockLayer6Y, math.rad(180))
  love.graphics.draw(blockXmasLayer2_6, blockLayerX5 + 72, blockLayer6Y, math.rad(180))
  
  love.graphics.draw(blockXmasLayer1_7, blockLayerX + 72, blockLayer7Y, math.rad(180))
  love.graphics.draw(blockXmasLayer1_7, blockLayerX2 + 72, blockLayer7Y, math.rad(180))
  love.graphics.draw(blockXmasLayer1_7, blockLayerX3 + 72, blockLayer7Y, math.rad(180))
  love.graphics.draw(blockXmasLayer1_7, blockLayerX4 + 72, blockLayer7Y, math.rad(180))
  love.graphics.draw(blockXmasLayer1_7, blockLayerX5 + 72, blockLayer7Y, math.rad(180))
  
  love.graphics.draw(paddleP1, paddleP1X, paddleP1Y)
  love.graphics.draw(paddleP2, paddleP2X, paddleP2Y)
end

function halDraw()  
  love.graphics.draw(halBackground, halBackgroundQuad, 0, 0)
  
  love.graphics.draw(blockHalLayer1_7, blockLayerX, blockLayer1Y)
  love.graphics.draw(blockHalLayer1_7, blockLayerX2, blockLayer1Y)
  love.graphics.draw(blockHalLayer1_7, blockLayerX3, blockLayer1Y)
  love.graphics.draw(blockHalLayer1_7, blockLayerX4, blockLayer1Y)
  love.graphics.draw(blockHalLayer1_7, blockLayerX5, blockLayer1Y)
  
  love.graphics.draw(blockHalLayer2_6, blockLayerX, blockLayer2Y)
  love.graphics.draw(blockHalLayer2_6, blockLayerX2, blockLayer2Y)
  love.graphics.draw(blockHalLayer2_6, blockLayerX3, blockLayer2Y)
  love.graphics.draw(blockHalLayer2_6, blockLayerX4, blockLayer2Y)
  love.graphics.draw(blockHalLayer2_6, blockLayerX5, blockLayer2Y)
  
  love.graphics.draw(blockHalLayer3_5, blockLayerX, blockLayer3Y)
  love.graphics.draw(blockHalLayer3_5, blockLayerX2, blockLayer3Y)
  love.graphics.draw(blockHalLayer3_5, blockLayerX3, blockLayer3Y)
  love.graphics.draw(blockHalLayer3_5, blockLayerX4, blockLayer3Y)
  love.graphics.draw(blockHalLayer3_5, blockLayerX5, blockLayer3Y)
  
  love.graphics.draw(blockHalLayer4, blockLayerX, blockLayer4Y)
  love.graphics.draw(blockHalLayer4S, blockLayerX2, blockLayer4Y)
  love.graphics.draw(blockHalLayer4, blockLayerX3, blockLayer4Y)
  love.graphics.draw(blockHalLayer4S, blockLayerX4, blockLayer4Y)
  love.graphics.draw(blockHalLayer4, blockLayerX5, blockLayer4Y)
  
  love.graphics.draw(blockHalLayer3_5, blockLayerX + 72, blockLayer5Y, math.rad(180))
  love.graphics.draw(blockHalLayer3_5, blockLayerX2 + 72, blockLayer5Y, math.rad(180))
  love.graphics.draw(blockHalLayer3_5, blockLayerX3 + 72, blockLayer5Y, math.rad(180))
  love.graphics.draw(blockHalLayer3_5, blockLayerX4 + 72, blockLayer5Y, math.rad(180))
  love.graphics.draw(blockHalLayer3_5, blockLayerX5 + 72, blockLayer5Y, math.rad(180))
  
  love.graphics.draw(blockHalLayer2_6, blockLayerX + 72, blockLayer6Y, math.rad(180))
  love.graphics.draw(blockHalLayer2_6, blockLayerX2 + 72, blockLayer6Y, math.rad(180))
  love.graphics.draw(blockHalLayer2_6, blockLayerX3 + 72, blockLayer6Y, math.rad(180))
  love.graphics.draw(blockHalLayer2_6, blockLayerX4 + 72, blockLayer6Y, math.rad(180))
  love.graphics.draw(blockHalLayer2_6, blockLayerX5 + 72, blockLayer6Y, math.rad(180))
  
  love.graphics.draw(blockHalLayer1_7, blockLayerX + 72, blockLayer7Y, math.rad(180))
  love.graphics.draw(blockHalLayer1_7, blockLayerX2 + 72, blockLayer7Y, math.rad(180))
  love.graphics.draw(blockHalLayer1_7, blockLayerX3 + 72, blockLayer7Y, math.rad(180))
  love.graphics.draw(blockHalLayer1_7, blockLayerX4 + 72, blockLayer7Y, math.rad(180))
  love.graphics.draw(blockHalLayer1_7, blockLayerX5 + 72, blockLayer7Y, math.rad(180))  

  love.graphics.draw(paddleP1, paddleP1X, paddleP1Y)
  love.graphics.draw(paddleP2, paddleP2X, paddleP2Y)
end

function love.mousepressed(x,y)
    if gamestate == "menu" then
      button_click(x,y)
    elseif gamestate == "options" then
      button_click(x,y)
    end
end

function controls()

    if love.keyboard.isDown("left") then
      paddleP1X = paddleP1X - 1.5
    elseif love.keyboard.isDown("right") then
      paddleP1X = paddleP1X + 1.5
    end
  
    if love.keyboard.isDown("a") then
      paddleP2X = paddleP2X - 1.5
    elseif love.keyboard.isDown("d") then
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

