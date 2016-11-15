require "menu"
require "omenu"
require "mmenu"
require "single"
require "multi"
require "controls"
require "level_1"
require "level_2"
require "pause"
require "resume"

function love.load()

  pauseBackground = love.graphics.newImage("sprites/Paused.png")
  pauseQuad = love.graphics.newQuad(1,1,720/2,1280/2,720/2,1280/2)  
  menuBackground = love.graphics.newImage("sprites/Main_Menu.png")
  menubgQuad = love.graphics.newQuad(1,1,720/2,1280/2,720/2,1280/2)  
  modeSelectBackground = love.graphics.newImage("sprites/Mode_Select.png")
  modeSelectQuad = love.graphics.newQuad(1,1,720/2,1280/2,720/2,1280/2)  
  levelSelectBackground = love.graphics.newImage("sprites/Level_Select.png")
  levelSelectQuad = love.graphics.newQuad(1,1,720/2,1280/2,720/2,1280/2)  
  optionsBackground = love.graphics.newImage("sprites/Options.png")
  optionsQuad = love.graphics.newQuad(1,1,720/2,1280/2,720/2,1280/2)  
  xmasBackground = love.graphics.newImage("sprites/xmas_background.png")
  xmasBackgroundQuad = love.graphics.newQuad(1,1,720/2,1280/2,720/2,1280/2)  
  halBackground = love.graphics.newImage("sprites/Hal_Background.png")
  halBackgroundQuad = love.graphics.newQuad(1,1,720/2,1280/2,720/2,1280/2)
  resultsBackground = love.graphics.newImage("sprites/results.png")
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
  
  ball1 = love.graphics.newImage("sprites/ball_xmas.png")
  ball2 = love.graphics.newImage("sprites/ball_hal.png")
  
  medium = love.graphics.newFont("fonts/wallpoet/Wallpoet-Regular.ttf", 20)
  big = love.graphics.newFont("fonts/wallpoet/Wallpoet-Regular.ttf", 25)
  love.graphics.setColor(1,1,1)
  
  ------------------------
  level1BlockLayerX = 0
  level1BlockLayerX2 = 72
  level1BlockLayerX3 = 144
  level1BlockLayerX4 = 216
  level1BlockLayerX5 = 288
  
  level1BlockLayer1Y = 246.5
  level1BlockLayer2Y = 267.5
  level1BlockLayer3Y = 288.5
  level1BlockLayer4Y = 309.5
  level1BlockLayer5Y = 351.5
  level1BlockLayer6Y = 372.5
  level1BlockLayer7Y = 393.5
  
  paddleP1X = 135
  paddleP2X = 135
  paddleP1Y = 40
  paddleP2Y = 588
  
  ballL1P1X = paddleP1X + 35
  ballL1P2X = paddleP2X + 35
  ballL1P1Y = 60
  ballL1P2Y = 560
  ballL2Speed = 100
  
  level2BlockX1 = 0
  level2BlockX2 = 72
  level2BlockX3 = 144
  level2BlockX4 = 216
  level2BlockX5 = 288
  
  level2BlockX6 = 36
  level2BlockX7 = 108
  level2BlockX8 = 180
  level2BlockX9 = 252
  
  level2BlockLayer1Y = 246.5
  level2BlockLayer2Y = 267.5
  level2BlockLayer3Y = 288.5
  level2BlockLayer4Y = 309.5
  level2BlockLayer5Y = 351.5
  level2BlockLayer6Y = 372.5
  level2BlockLayer7Y = 393.5
  
  ballL2P1X = 135
  ballL2P2X = 135
  ballL2P1Y = 60
  ballL2P2Y = 560
  ballL2Speed = 100
  -----------------
  
  paused = false
  gamestate = "menu"
  
  --Menus--
  button_spawn(140,350,"Start", "start")
  button_spawn(140,400,"Options", "options")
  button_spawn(140,450,"Quit", "quit")
  obutton_spawn(50,300,"Back", "back")
  mbutton_spawn(110,350,"Single Player", "single")
  mbutton_spawn(110,400,"Multi Player", "multi")
  mbutton_spawn(110,450,"Back", "mback")
  singleButton_spawn(110,350,"Halloween", "halloweenSingle")
  singleButton_spawn(110,400,"Xmas", "xmasSingle")
  singleButton_spawn(110,450,"Back", "singleBack")
  multiButton_spawn(110,350,"Halloween", "halloweenMulti")
  multiButton_spawn(110,400,"Xmas", "xmasMulti")
  multiButton_spawn(110,450,"Back", "multiBack")
  pausebutton_spawn(0, 0, "Paused", "paused")
  resumebutton_spawn(140, 0, "Resume", "resume")
  
  if (gamestate == "xmasSingle" or gamestate == "xmasMulti") then
    xmasLoad()
  elseif (gamestate == "halloweenSingle" or gamestate == "halloweenMulti") then    
    halLoad()
  end
end

function love.update(dt) 
  --get rid of after bug fixing, useful for swithcing modes atm
  --if love.keyboard.isDown("up") then
    --gamestate = "halloweenMulti"
    --paddleP1X = 135
    --paddleP2X = 135
    --paddleP1Y = 40
    --paddleP2Y = 588
  --elseif love.keyboard.isDown("down")then
    --gamestate = "xmasMulti"
    --paddleP1X = 135
    --paddleP2X = 135
    --paddleP1Y = 40
    --paddleP2Y = 588
  --elseif love.keyboard.isDown("s")then
    --gamestate = "halloweenSingle"
    --paddleP1X = 135
    --paddleP2X = 135
    --paddleP1Y = 40
    --paddleP2Y = 588    
  --elseif love.keyboard.isDown("w")then
    --gamestate = "xmasSingle"
    --paddleP1X = 135
    --paddleP2X = 135
    --paddleP1Y = 40
    --paddleP2Y = 588
  --end
  
  mousex = love.mouse.getX()
  mousey = love.mouse.getY()
  
  if gamestate == "menu" then
    button_check()
  elseif gamestate == "modeSelect" then
    mbutton_check()
  elseif gamestate == "options" then
    obutton_check()
  elseif gamestate == "levelSelectSingle" then
    singleButton_check()
  elseif gamestate == "levelSelectMulti" then
    multiButton_check()
  end
  
  if (gamestate == "halloweenSingle" or gamestate == "xmasSingle") then
    if (paused == false) then
      singleControls()
      map_collide()  
      pausebutton_check()
    elseif (paused == true) then
      resumebutton_check()
    end
  elseif (gamestate == "halloweenMulti" or gamestate == "xmasMulti") then
    if (paused == true) then
      multiControls()
      map_collide()
      pausebutton_check()
    elseif (paused == true) then
      resumebutton_check()
    end
  end
end

function love.draw() 
  
  if(paused == true) then
    love.graphics.draw(pauseBackground, pauseQuad, 0, 0)
    resumebutton_draw()
  elseif(paused == false) then    
    if gamestate == "halloweenMulti" then
      halDraw()
      pausebutton_draw()
    elseif gamestate == "levelSelectSingle" then
      levelSelectSingleDraw()
    elseif gamestate == "levelSelectMulti" then
      levelSelectMultiDraw()
    elseif gamestate == "xmasMulti" then
      xmasDraw()
      pausebutton_draw()
    elseif gamestate == "halloweenSingle" then
      halDraw()
      pausebutton_draw()
    elseif gamestate == "xmasSingle" then
      xmasDraw()
      pausebutton_draw()
    elseif gamestate == "modeSelect" then
      modeSelectDraw()
    elseif gamestate == "menu" then
      menuDraw()
    elseif gamestate == "options" then
      optionsDraw()
    elseif gamestate == "results" then
      resultsDraw()
    end 
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
  mbutton_draw()
end

function levelSelectSingleDraw()
  love.graphics.draw(levelSelectBackground, levelSelectQuad, 0, 0)
  singleButton_draw()
end

function levelSelectMultiDraw()
  love.graphics.draw(levelSelectBackground, levelSelectQuad, 0, 0)
  multiButton_draw()
end

function optionsDraw()
  love.graphics.draw(optionsBackground, optionsQuad, 0, 0)
  obutton_draw()
end

function resultsDraw()
  love.graphics.draw(resultsBackground, resultsQuad, 0, 0)
end

function love.mousepressed(x,y)
    if gamestate == "menu" then
      button_click(x,y)
    elseif gamestate == "options" then
      obutton_click(x,y)
    elseif gamestate == "modeSelect" then
      mbutton_click(x,y)
    elseif gamestate == "levelSelectSingle" then
      singleButton_click(x,y)
    elseif gamestate == "levelSelectMulti" then
      multiButton_click(x,y)
    elseif (gamestate == "halloweenSingle" or gamestate == "xmasSingle" or gamestate == "halloweenMulti" or gamestate == "xmasMulti") then
    pausebutton_click(x,y)
    resumebutton_click(x,y)
    end
end

function map_collide()
  if ballL1P1X < 0 or ballL1P1X > 700 then
    
  end
  if ballL1P1Y < -50 or ballL1P1Y > 700 then
    gamestate = "results"
  end
  if ballL1P2X < 0 or ballL1P2X > 700 then
    
  end
  if ballL1P2Y < -50 or ballL1P2Y > 700 then
    gamestate = "results"
  end
  if ballL2P1Y < 0 or ballL2P1X > 700 then
    
  end
  if ballL2P1Y < -50 or ballL2P1Y > 700 then
    gamestate = "results"
  end
  if ballL2P2X < 0 or ballL2P2X > 700 then
    
  end
  if ballL2P2Y < -50 or ballL2P2Y > 700 then
    gamestate = "results"
  end
end

--function love.focus(f)
	--if not f then
		--paused = true;
	--end
--end

--function love.keyPressed(key)
	--if key == "escape" then
		--paused = not paused; 
	--end
--end