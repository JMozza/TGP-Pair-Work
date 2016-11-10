require "menu"
require "omenu"
require "controls"
require "level_1"
require "level_2"

function love.load()

  menuBackground = love.graphics.newImage("sprites/bg.jpg")
  menubgQuad = love.graphics.newQuad(1,1,720/2,1280/2,720/2,1280/2)
  modeSelectBackground = love.graphics.newImage("sprites/bg.jpg")
  modeSelectQuad = love.graphics.newQuad(1,1,720/2,1280/2,720/2,1280/2)
  levelSelectBackground = love.graphics.newImage("sprites/bg.jpg")
  levelSelectQuad = love.graphics.newQuad(1,1,720/2,1280/2,720/2,1280/2)
  optionsBackground = love.graphics.newImage("sprites/bg.jpg")
  optionsQuad = love.graphics.newQuad(1,1,720/2,1280/2,720/2,1280/2)
  
  xmasBackground = love.graphics.newImage("sprites/xmas_background.png")
  xmasBackgroundQuad = love.graphics.newQuad(1,1,720/2,1280/2,720/2,1280/2)
  halBackground = love.graphics.newImage("sprites/Hal_Background.png")
  halBackgroundQuad = love.graphics.newQuad(1,1,720/2,1280/2,720/2,1280/2)

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
  
  --ballP1 = love.graphics.newImage("sprites/")
  --ballP2 = love.graphics.newImage("sprites/")
  
  medium = love.graphics.newFont("fonts/wallpoet/Wallpoet-Regular.ttf", 20)
  love.graphics.setFont(medium)
  love.graphics.setColor(1,1,1)
  
 -- if (gamestate == "xmasSingle" or gamestate == "xmasMulti") then
    xmasLoad()
  --elseif (gamestate == "halloweenSingle" or gamestate == "halloweenMulti") then
    halLoad()
  --end
  
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
  
  if (gamestate == "halloweenMulti" or gamestate == "xmasMulti") then
    multiControls()
  elseif (gamestate == "halloweenSingle" or gamestate == "xmasSingle") then
    singleControls()
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

function love.mousepressed(x,y)
    if gamestate == "menu" then
      button_click(x,y)
    elseif gamestate == "options" then
      button_click(x,y)
    end
end

