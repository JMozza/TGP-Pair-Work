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
require "test2"
require "restartButton"

function love.load()
  
  height = love.graphics.getHeight()
  width = love.graphics.getWidth()
  
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
  winnerP1Background = love.graphics.newImage("sprites/WINNER_P1.png")
  winnerP1Quad = love.graphics.newQuad(1,1,720/2,1280/2,720/2,1280/2)
  winnerP2Background = love.graphics.newImage("sprites/WINNER_P2.png")
  winnerP2Quad = love.graphics.newQuad(1,1,720/2,1280/2,720/2,1280/2)
  
  blockHalLayer1_7 = love.graphics.newImage("sprites/orange_layer1_hal.png")
  blockHalLayer2_6 = love.graphics.newImage("sprites/purple_layer2_hal.png")
  blockHalLayer3_5 = love.graphics.newImage("sprites/green_layer3_hal.png")
  blocklayer5fliped = love.graphics.newImage("sprites/green_layer3_hal_fliped.png")
  blocklayer6fliped = love.graphics.newImage("sprites/purple_layer2_hal_fliped.png")
  blocklayer7fliped = love.graphics.newImage("sprites/orange_layer1_hal_fliped.png")
  
  blockHalLayer4 = love.graphics.newImage("sprites/blue _layer4_both_normal.png")
  blockHalLayer4S = love.graphics.newImage("sprites/blue _layer4_both_power.png")
  
  blockXmasLayer1_7 = love.graphics.newImage("sprites/green_layer1_xmas.png")
  blockXmasLayer2_6 = love.graphics.newImage("sprites/red_layer2_xmas.png")
  blockXmasLayer3_5 = love.graphics.newImage("sprites/gold_layer3_xmas.png")
  
  paddleP1 = love.graphics.newImage("sprites/paddle_top.png")
  paddleP2 = love.graphics.newImage("sprites/paddle_bottom.png")
  
  ball1texture = love.graphics.newImage("sprites/ball_xmas.png")
  ball2texture = love.graphics.newImage("sprites/ball_hal.png")
  
  medium = love.graphics.newFont("fonts/wallpoet/Wallpoet-Regular.ttf", 20)
  big = love.graphics.newFont("fonts/wallpoet/Wallpoet-Regular.ttf", 25)
  love.graphics.setColor(1,1,1)
  
  ----------Audio---------
  menuClick = love.audio.newSource("sounds/Menu_Click.wav", "static")
  levelStart = love.audio.newSource("sounds/Level_Start.wav", "static")
  blockBounce = love.audio.newSource("sounds/Brick_Bounce.wav", "static")
  paddleBounce = love.audio.newSource("sounds/Paddle_Bounce.mp3", "static")
  winnerSound = love.audio.newSource("sounds/Winner.mp3", "static")
  backgroundSound = love.audio.newSource("sounds/Background.mp3")
  ------------------------
  
  -- Player 1 Setup (Bottom)
  player = {}
    player.width = 90
    player.height = 12
    player.x = width/2 - player.width/2
    player.y = 620
    player.speed = 400
    player.points = 0

  -- Player 2 Setup (Top)
  player2 = {}
    player2.width = 90
    player2.height = 12
    player2.x = width/2 - player2.width/2
    player2.y = 20
    player2.speed = 400
    player2.points = 0

  -- Blocks
  blocks = {}
  blocks.draw = {}
  blocks2 = {}
  blocks2.draw = {}
  blocks3 = {}
  blocks3.draw = {}
  blocks4 = {}
  blocks4.draw = {}
  blocks5 = {}
  blocks5.draw = {}
  blocks6 = {}
  blocks6.draw = {}
  blocks7 = {}
  blocks7.draw = {}

  column = 0; row = 1
    while 1 >= row do
      block = {}
      block.width = 72
      block.height = 21
      block.x = column * (block.width )
      block.y = (row * (block.height )) + 225
      table.insert(blocks.draw, block)
      column = column + 1
      if column == 10 then column = 0; row = row + 1 end
    end
  
  column = 0; row = 2
    while 2 >= row do
      block2 = {}
      block2.width = 72
      block2.height = 21
      block2.x = column * (block2.width )
      block2.y = (row * (block2.height )) + 225
      table.insert(blocks2.draw, block2)
      column = column + 1
      if column == 10 then column = 0; row = row + 1 end
    end
    
  column = 0; row = 3
    while 3 >= row do
      block3 = {}
      block3.width = 72
      block3.height = 21
      block3.x = column * (block3.width )
      block3.y = (row * (block3.height )) + 225
      table.insert(blocks3.draw, block3)
      column = column + 1
      if column == 10 then column = 0; row = row + 1 end
    end
    
  column = 0; row = 4
    while 4 >= row do
      block4 = {}
      block4.width = 72
      block4.height = 21
      block4.x = column * (block4.width )
      block4.y = (row * (block4.height )) + 225
      table.insert(blocks4.draw, block4)
      column = column + 1
      if column == 10 then column = 0; row = row + 1 end
    end
    
  column = 0; row = 5
    while 5 >= row do
      block5 = {}
      block5.width = 72
      block5.height = 21
      block5.x = column * (block5.width )
      block5.y = (row * (block5.height )) +225
      table.insert(blocks5.draw, block5)
      column = column + 1
      if column == 10 then column = 0; row = row + 1 end
    end   
    
  column = 0; row = 6
    while 6 >= row do
      block6 = {}
      block6.width = 72
      block6.height = 21
      block6.x = column * (block6.width )
      block6.y = (row * (block6.height )) + 225
      table.insert(blocks6.draw, block6)
      column = column + 1
      if column == 10 then column = 0; row = row + 1 end
    end

  column = 0; row = 7
    while 7 >= row do
      block7 = {}
      block7.width = 72
      block7.height = 21
      block7.x = column * (block7.width )
      block7.y = (row * (block7.height )) + 225
      table.insert(blocks7.draw, block7)
      column = column + 1
      if column == 10 then 
        column = 0; row = row + 1 
      end
    end

  -- Ball 1 (Bottom)
  ball = {}
    ball.radius = 10
    ball.x = width/2
    ball.y = 540
    ball.speed = 50
    ball.direction = "d"
    
    -- Ball 2 (Top)
  ball2 = {}
    ball2.radius = 10
    ball2.x = width/2
    ball2.y = 80
    ball2.speed = 50
    ball2.direction = "d2"
  
  paused = false
  gamestate = "menu"
  pregame = true
  
  --Menus--
  button_spawn(140,350,"Start", "start")
  button_spawn(140,400,"Options", "options")
  button_spawn(140,450,"Quit", "quit")
  button_spawn(0,0, "Mute", "mute")
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
  button_spawn(140,550, "Test2", "test2")
  restartbutton_spawn(120, 440, "Restart", "restart")
  restartbutton_spawn(80, 470, "Return to Menu", "mainMenu")
end

  -- Bounce
function bounce()
  if ball.direction == "ull"      then ball.direction = "dll"
  elseif ball.direction == "ul"   then ball.direction = "dl"
  elseif ball.direction == "uul"  then ball.direction = "ddl"
  elseif ball.direction == "u"    then ball.direction = "d"
  elseif ball.direction == "uur"  then ball.direction = "ddr"
  elseif ball.direction == "ur"   then ball.direction = "dr"
  elseif ball.direction == "urr"  then ball.direction = "drr"
  elseif ball.direction == "dll"  then ball.direction = "ull"
  elseif ball.direction == "dl"   then ball.direction = "ul"
  elseif ball.direction == "ddl"  then ball.direction = "uul"
  elseif ball.direction == "d"    then ball.direction = "u"
  elseif ball.direction == "ddr"  then ball.direction = "uur"
  elseif ball.direction == "dr"   then ball.direction = "ur"
  elseif ball.direction == "drr"  then ball.direction = "urr"
  end
end

function bounce2()
  if ball2.direction == "dll2"      then ball2.direction = "ull2"
  elseif ball2.direction == "dl2"   then ball2.direction = "ul2"
  elseif ball2.direction == "ddl2"  then ball2.direction = "uul2"
  elseif ball2.direction == "d2"    then ball2.direction = "u2"
  elseif ball2.direction == "ddr2"  then ball2.direction = "uur2"
  elseif ball2.direction == "dr2"   then ball2.direction = "ur2"
  elseif ball2.direction == "drr2"  then ball2.direction = "urr2"
  elseif ball2.direction == "ull2"  then ball2.direction = "dll2"
  elseif ball2.direction == "ul2"   then ball2.direction = "dl2"
  elseif ball2.direction == "uul2"  then ball2.direction = "ddl2"
  elseif ball2.direction == "u2"    then ball2.direction = "d2"
  elseif ball2.direction == "uur2"  then ball2.direction = "ddr2"
  elseif ball2.direction == "ur2"   then ball2.direction = "dr2"
  elseif ball2.direction == "urr2"  then ball2.direction = "drr2"
  end
end

function love.update(dt) 
  
  if love.keyboard.isDown("r") then
    love.load()
  end
  
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
    backgroundSound:play()
    if (paused == false) and (pregame == false) then
      test2Update(dt)
      pausebutton_check()
    elseif (paused == true) then
      resumebutton_check()
    elseif (pregame == true) then
      test2Update(dt)
      pausebutton_check()
    end
  elseif (gamestate == "halloweenMulti" or gamestate == "xmasMulti") then
    backgroundSound:play()
    if (paused == false) then
      test2Update(dt)
      pausebutton_check()
    elseif (paused == true) then
      resumebutton_check()
    end
  end
  
  if gamestate == "game" then
    if (paused == false) then
      test2Update(dt)
      pausebutton_check()
    elseif (paused == true) then
      resumebutton_check()
    end
  end
  
  if (gamestate == "p2Winner" or gamestate == "p1Winner") then
    restartbutton_check()
  end
end

function love.draw() 
  
  if(paused == true) then
    love.graphics.draw(pauseBackground, pauseQuad, 0, 0)
    resumebutton_draw()
  elseif(paused == false) then    
    if gamestate == "halloweenMulti" then
      test2Draw()
      pausebutton_draw()
    elseif gamestate == "levelSelectSingle" then
      levelSelectSingleDraw()
    elseif gamestate == "levelSelectMulti" then
      levelSelectMultiDraw()
    elseif gamestate == "xmasMulti" then
      test2Draw()
      pausebutton_draw()
    elseif gamestate == "halloweenSingle" then
      test2Draw()      
      pausebutton_draw()
    elseif gamestate == "xmasSingle" then
      test2Draw()
      pausebutton_draw()
    elseif gamestate == "modeSelect" then
      modeSelectDraw()
    elseif gamestate == "menu" then
      menuDraw()
    elseif gamestate == "options" then
      optionsDraw()
    elseif gamestate == "results" then
      resultsDraw()
    elseif gamestate == "pregame" then
      test2Draw()
    elseif gamestate == "game" then
      test2Draw2()      
      pausebutton_draw()
    elseif gamestate == "p2Winner" then
      p2WinnerDraw()
      restartbutton_draw()
    elseif gamestate == "p1Winner" then
      p1WinnerDraw()
      restartbutton_draw()
    end 
  end
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

function p1WinnerDraw()
  love.graphics.draw(winnerP1Background, winnerP1Quad, 0, 0)
  love.graphics.print("Your Scored " .. player.points + player2.points, 20, 20)
end

function p2WinnerDraw()
  love.graphics.draw(winnerP2Background, winnerP2Quad, 0, 0)
  love.graphics.print("Your Scored " .. player.points + player2.points, 20, 20)
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
    elseif (gamestate == "halloweenSingle" or gamestate == "xmasSingle" or gamestate == "halloweenMulti" or gamestate == "xmasMulti" or gamestate == "game") then
      pausebutton_click(x,y)
      resumebutton_click(x,y)
    elseif (gamestate == "p2Winner" or gamestate == "p1Winner") then
      restartbutton_click(x,y)
    end
end

function math.angle(x1,y1, x2,y2) return math.atan2(y2-y1, x2-x1) end