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
  resultsBackground = love.graphics.newImage("sprites/results.png")
  resultsQuad = love.graphics.newQuad(1,1,720/2,1280/2,720/2,1280/2)
  
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
  
  ball1 = love.graphics.newImage("sprites/ball_xmas.png")
  ball2 = love.graphics.newImage("sprites/ball_hal.png")
  
  medium = love.graphics.newFont("fonts/wallpoet/Wallpoet-Regular.ttf", 20)
  big = love.graphics.newFont("fonts/wallpoet/Wallpoet-Regular.ttf", 25)
  love.graphics.setColor(1,1,1)
  
  ------------------------
  menuClick = love.audio.newSource("sounds/Menu_Click.wav", "static")
  levelStart = love.audio.newSource("sounds/Level_Start.wav", "static")
  blockBounce = love.audio.newSource("sounds/Brick_Bounce.wav", "static")
  paddleBounce = love.audio.newSource("sounds/Paddle_Bounce.mp3", "static")
  winnerSound = love.audio.newSource("sounds/Winner.mp3", "static")
  backgroundSound = love.audio.newSource("sounds/Background.mp3")
  ------------------------
  
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
  
  --paddles
  paddleP1X = 135
  paddleP2X = 135
  paddleP1Y = 40
  paddleP2Y = 588
  
  ballL1P1X = paddleP1X + 35
  ballL1P2X = paddleP2X + 35
  ballL1P1Y = 60
  ballL1P2Y = 560
  ballL2Speed = 100
  ballL1P1Dir = "N"
  ballL1P2Dir = "N"
  
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
  ballL2P1Dir = "N"
  ballL2P2Dir = "N"
  
  currentPostionBall1 = 0
  lastPostionBall1 = 0
  
  time = 0
  
  newX = 36
  newX2 = 108
  newX3 = 180
  newX4 = 252
  newX5 = 324
  
  newY = 256
  newY2 = 277
  newY3 = 298
  newY4 = 319
  newY5 = 340
  newY6 = 361
  newY7 = 382
  
  paddlespeed = 50
  ballspeed = 80
  angle = 0
  
  text       = ""   -- we'll use this to put info text on the screen later
  persisting = 0    -- we'll use this to store the state of repeated callback calls
  
  --initial graphics setup
  love.graphics.setBackgroundColor(104, 136, 248) --set the background color to a nice blue
  love.window.setMode(360, 640) --set the window dimensions to 650 by 650
  -----------------Test--------------------
  
  -----------------Test2-------------------
  -- PLAYER 1 SETUP
  player = {}
    player.width = 70
    player.height = 20
    player.x = width/2 - player.width/2
    player.y = 620
    player.speed = 400
    player.lives = 5
    player.points = 0

  
  -- PLAYER 2 SETUP
  player2 = {}

    player2.width = 70
    player2.height = 20
    player2.x = width/2 - player2.width/2
    player2.y = 10
    player2.speed = 400
    player2.lives = 5
    player2.points = 0


  -- BLOCKS
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

  -- LOAD BLOCKS
  column = 0; row = 1
    while 1 >= row do
      block = {}
      block.width = 72
      block.height = 21
      block.x = column * (block.width )
      block.y = (row * (block.height )) + 300
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
      block2.y = (row * (block2.height )) + 300
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
      block3.y = (row * (block3.height )) + 300
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
      block4.y = (row * (block4.height )) + 300
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
      block5.y = (row * (block5.height )) + 300
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
      block6.y = (row * (block6.height )) + 300
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
      block7.y = (row * (block7.height )) + 300
      table.insert(blocks7.draw, block7)
      column = column + 1
      if column == 10 then column = 0; row = row + 1 end
    end

  -- BALL
  ball = {}

    ball.radius = 5
    ball.x = width/2
    ball.y = 540
    ball.speed = 100
    ball.direction = "d"
    ball.cooldown = 200
    
    -- BALL2
  ball2 = {}

    ball2.radius = 5
    ball2.x = width/2
    ball2.y = 80
    ball2.speed = 100
    ball2.direction = "d"
    ball2.cooldown = 200
  -----------------Test2-------------------
  
  paused = false
  gamestate = "menu"
  
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
  
  --if (gamestate == "xmasSingle" or gamestate == "xmasMulti") then
    --xmasLoad()
  --elseif (gamestate == "halloweenSingle" or gamestate == "halloweenMulti") then    
    --halLoad()
  --elseif (gamestate == "test") then    
    --testLoad()
  --end
end

  -- CHECK TOP FOR BOUNCE
function bounce()
  if ball.direction == "ull" then ball.direction = "dll"
  elseif ball.direction == "ul"   then ball.direction = "dl"
  elseif ball.direction == "uul"  then ball.direction = "ddl"
  elseif ball.direction == "u"    then ball.direction = "d"
  elseif ball.direction == "uur"  then ball.direction = "ddr"
  elseif ball.direction == "ur"   then ball.direction = "dr"
  elseif ball.direction == "urr"  then ball.direction = "drr"
  end
end
  
function bounce2()
  if ball2.direction == "dll"       then ball2.direction = "ull"
  elseif ball2.direction == "dl"    then ball2.direction = "ul"
  elseif ball2.direction == "ddl"   then ball2.direction = "uul"
  elseif ball2.direction == "d"     then ball2.direction = "u"
  elseif ball2.direction == "ddr"   then ball2.direction = "uur"
  elseif ball2.direction == "dr"    then ball2.direction = "ur"
  elseif ball2.direction == "drr"   then ball2.direction = "urr"
  end
end

function love.update(dt) 
  
  ------------------Test2Update--------------------
  if ball.cooldown > 0 then 
    ball.cooldown = ball.cooldown - 1 
  end
  
  if ball2.cooldown > 0 then 
    ball2.cooldown = ball2.cooldown - 1 
  end

  -- Player 1 movement
  if love.keyboard.isDown("right") and player.x <= (width - player.width) then
    player.x = player.x + (dt * player.speed)
  elseif love.keyboard.isDown("left") and player.x >= 0 then
    player.x = player.x - (dt * player.speed)
  elseif love.keyboard.isDown("r") then
    ball.radius = 5
    ball.x = width/2
    ball.y = player.y - 200
    ball.speed = 100
    ball.direction = "d"
    ball.cooldown = 200
  end
  
  -- Player 2 movement
  if love.keyboard.isDown("d") and player2.x <= (width - player2.width) then
    player2.x = player2.x + (dt * player2.speed)
  elseif love.keyboard.isDown("a") and player2.x >= 0 then
    player2.x = player2.x - (dt * player2.speed) 
  end
    
    
  -- Hitbox for player 1
  if ball.y >= player.y and ball.y <= height and ball.x >= player.x and
    ball.x <= (player.x + player.width) then
    if ball.x >= player.x and ball.x < (player.x + 10) then
      ball.direction = "ull"
    elseif ball.x >= (player.x + 10) and ball.x < (player.x + 20) then
      ball.direction = "ul"
    elseif ball.x >= (player.x + 20) and ball.x < (player.x + 30) then
      ball.direction = "uul"
    elseif ball.x >= (player.x + 30) and ball.x < (player.x + 40) then
      ball.direction = "u"
    elseif ball.x >= (player.x + 40) and ball.x < (player.x + 50) then
      ball.direction = "uur"
    elseif ball.x >= (player.x + 50) and ball.x < (player.x + 60) then
      ball.direction = "ur"
    elseif ball.x >= (player.x + 60) and ball.x < (player.x + 70) then
      ball.direction = "urr"
    end
    --love.audio.play(bounce)
  end
  
  -- Hitbox for player 2
  if ball.y <= player2.y and ball.y <= height and ball.x >= player2.x and
    ball.x <= (player2.x + player2.width) then
    if ball.x >= player2.x and ball.x < (player2.x + 10) then
      ball.direction = "ddl"
    elseif ball.x >= (player2.x + 10) and ball.x < (player2.x + 20) then
      ball.direction = "dl"
    elseif ball.x >= (player2.x + 20) and ball.x < (player2.x + 30) then
      ball.direction = "dll"
    elseif ball.x >= (player2.x + 30) and ball.x < (player2.x + 40) then
      ball.direction = "d"
    elseif ball.x >= (player2.x + 40) and ball.x < (player2.x + 50) then
      ball.direction = "ddr"
    elseif ball.x >= (player2.x + 50) and ball.x < (player2.x + 60) then
      ball.direction = "dr"
    elseif ball.x >= (player2.x + 60) and ball.x < (player2.x + 70) then
      ball.direction = "drr"
    end
    --love.audio.play(bounce)
  end
  
  -- Hitbox for player 1 ball 2
  if ball2.y >= player.y and ball2.y <= height and ball2.x >= player.x and
    ball2.x <= (player.x + player.width) then
    if ball2.x >= player.x and ball2.x < (player.x + 10) then
      ball2.direction = "ull"
    elseif ball2.x >= (player.x + 10) and ball2.x < (player.x + 20) then
      ball2.direction = "ul"
    elseif ball2.x >= (player.x + 20) and ball2.x < (player.x + 30) then
      ball2.direction = "uul"
    elseif ball2.x >= (player.x + 30) and ball2.x < (player.x + 40) then
      ball2.direction = "u"
    elseif ball2.x >= (player.x + 40) and ball2.x < (player.x + 50) then
      ball2.direction = "uur"
    elseif ball2.x >= (player.x + 50) and ball2.x < (player.x + 60) then
      ball2.direction = "ur"
    elseif ball2.x >= (player.x + 60) and ball2.x < (player.x + 70) then
      ball2.direction = "urr"
    end
    --love.audio.play(bounce)
  end
  
  -- Hitbox for player 2 ball 2
  if ball2.y <= player2.y and ball2.y <= height and ball2.x >= player2.x and
    ball2.x <= (player2.x + player2.width) then
    if ball2.x >= player2.x and ball2.x < (player2.x + 10) then
      ball2.direction = "ddl"
    elseif ball2.x >= (player2.x + 10) and ball2.x < (player2.x + 20) then
      ball2.direction = "dl"
    elseif ball2.x >= (player2.x + 20) and ball2.x < (player2.x + 30) then
      ball2.direction = "dll"
    elseif ball2.x >= (player2.x + 30) and ball2.x < (player2.x + 40) then
      ball2.direction = "d"
    elseif ball2.x >= (player2.x + 40) and ball2.x < (player2.x + 50) then
      ball2.direction = "ddr"
    elseif ball2.x >= (player2.x + 50) and ball2.x < (player2.x + 60) then
      ball2.direction = "dr"
    elseif ball2.x >= (player2.x + 60) and ball2.x < (player2.x + 70) then
      ball2.direction = "drr"
    end
    --love.audio.play(bounce)
  end

  -- Hitbox for blocks
  for i,v in ipairs(blocks.draw) do
    if ball.y <= (v.y + v.height) and ball.y >= v.y then
      if ball.x <= (v.x + v.width) and ball.x >= v.x then
        bounce()
        --love.audio.play(hit)
        table.remove(blocks.draw, i)
        player.points = player.points + 1
      end
    end
  end
  
  for i,v in ipairs(blocks.draw) do
    if ball2.y <= (v.y + v.height) and ball2.y >= v.y then
      if ball2.x <= (v.x + v.width) and ball2.x >= v.x then
        bounce2()
        --love.audio.play(hit)
        table.remove(blocks.draw, i)
        player2.points = player2.points + 1
      end
    end
  end
  
  for i,v in ipairs(blocks2.draw) do
    if ball.y <= (v.y + v.height) and ball.y >= v.y then
      if ball.x <= (v.x + v.width) and ball.x >= v.x then
        bounce()
        --love.audio.play(hit)
        table.remove(blocks2.draw, i)
        player.points = player.points + 1
      end
    end
  end
  
  for i,v in ipairs(blocks2.draw) do
    if ball2.y <= (v.y + v.height) and ball2.y >= v.y then
      if ball2.x <= (v.x + v.width) and ball2.x >= v.x then
        bounce2()
        --love.audio.play(hit)
        table.remove(blocks2.draw, i)
        player2.points = player2.points + 1
      end
    end
  end
  
  for i,v in ipairs(blocks3.draw) do
    if ball.y <= (v.y + v.height) and ball.y >= v.y then
      if ball.x <= (v.x + v.width) and ball.x >= v.x then
        bounce()
        --love.audio.play(hit)
        table.remove(blocks3.draw, i)
        player.points = player.points + 1
      end
    end
  end
  
  for i,v in ipairs(blocks3.draw) do
    if ball2.y <= (v.y + v.height) and ball2.y >= v.y then
      if ball2.x <= (v.x + v.width) and ball2.x >= v.x then
        bounce2()
        --love.audio.play(hit)
        table.remove(blocks3.draw, i)
        player2.points = player2.points + 1
      end
    end
  end
  
  for i,v in ipairs(blocks4.draw) do
    if ball.y <= (v.y + v.height) and ball.y >= v.y then
      if ball.x <= (v.x + v.width) and ball.x >= v.x then
        bounce()
        --love.audio.play(hit)
        table.remove(blocks4.draw, i)
        player.points = player.points + 1
      end
    end
  end
  
  for i,v in ipairs(blocks4.draw) do
    if ball2.y <= (v.y + v.height) and ball2.y >= v.y then
      if ball2.x <= (v.x + v.width) and ball2.x >= v.x then
        bounce2()
        --love.audio.play(hit)
        table.remove(blocks4.draw, i)
        player2.points = player2.points + 1
      end
    end
  end
  
  for i,v in ipairs(blocks5.draw) do
    if ball.y <= (v.y + v.height) and ball.y >= v.y then
      if ball.x <= (v.x + v.width) and ball.x >= v.x then
        bounce()
        --love.audio.play(hit)
        table.remove(blocks5.draw, i)
        player.points = player.points + 1
      end
    end
  end
  
  for i,v in ipairs(blocks5.draw) do
    if ball2.y <= (v.y + v.height) and ball2.y >= v.y then
      if ball2.x <= (v.x + v.width) and ball2.x >= v.x then
        bounce2()
        --love.audio.play(hit)
        table.remove(blocks5.draw, i)
        player2.points = player2.points + 1
      end
    end
  end
  
  for i,v in ipairs(blocks6.draw) do
    if ball.y <= (v.y + v.height) and ball.y >= v.y then
      if ball.x <= (v.x + v.width) and ball.x >= v.x then
        bounce()
        --love.audio.play(hit)
        table.remove(blocks6.draw, i)
        player.points = player.points + 1
      end
    end
  end
  
  for i,v in ipairs(blocks6.draw) do
    if ball2.y <= (v.y + v.height) and ball2.y >= v.y then
      if ball2.x <= (v.x + v.width) and ball2.x >= v.x then
        bounce2()
        --love.audio.play(hit)
        table.remove(blocks6.draw, i)
        player2.points = player2.points + 1
      end
    end
  end
  
  for i,v in ipairs(blocks7.draw) do
    if ball.y <= (v.y + v.height) and ball.y >= v.y then
      if ball.x <= (v.x + v.width) and ball.x >= v.x then
        bounce()
        --love.audio.play(hit)
        table.remove(blocks7.draw, i)
        player.points = player.points + 1
      end
    end
  end
  
  for i,v in ipairs(blocks7.draw) do
    if ball2.y <= (v.y + v.height) and ball2.y >= v.y then
      if ball2.x <= (v.x + v.width) and ball2.x >= v.x then
        bounce2()
        --love.audio.play(hit)
        table.remove(blocks7.draw, i)
        player2.points = player2.points + 1
      end
    end
  end
  
  for i,v in ipairs(blocks2.draw) do
    if ball.y <= (v.y + v.height) and ball.y >= v.y then
      if ball.x <= (v.x + v.width) and ball.x >= v.x then
        bounce()
        --love.audio.play(hit)
        table.remove(blocks2.draw, i)
        player.points = player.points + 1
      end
    end
  end
  
  for i,v in ipairs(blocks2.draw) do
    if ball2.y <= (v.y + v.height) and ball2.y >= v.y then
      if ball2.x <= (v.x + v.width) and ball2.x >= v.x then
        bounce2()
        --love.audio.play(hit)
        table.remove(blocks2.draw, i)
        player2.points = player2.points + 1
      end
    end
  end

  -- Bounces ball off walls
  if (ball.x <= 0) or (ball.x >= width) then
    if ball.direction == "uur" then ball.direction = "uul"
    elseif ball.direction == "ur" then ball.direction = "ul"
    elseif ball.direction == "urr" then ball.direction = "ull"
    elseif ball.direction == "drr" then ball.direction = "dll"
    elseif ball.direction == "dr" then ball.direction = "dl"
    elseif ball.direction == "ddr" then ball.direction = "ddl"
    elseif ball.direction == "ddl" then ball.direction = "ddr"
    elseif ball.direction == "dl" then ball.direction = "dr"
    elseif ball.direction == "dll" then ball.direction = "drr"
    elseif ball.direction == "ull" then ball.direction = "urr"
    elseif ball.direction == "ul" then ball.direction = "ur"
    elseif ball.direction == "uul" then ball.direction = "uur"
    end
    --love.audio.play(bounce)
  end
  
  if (ball2.x <= 0) or (ball2.x >= width) then
    if ball2.direction == "uur" then ball2.direction = "uul"
    elseif ball2.direction == "ur" then ball2.direction = "ul"
    elseif ball2.direction == "urr" then ball2.direction = "ull"
    elseif ball2.direction == "drr" then ball2.direction = "dll"
    elseif ball2.direction == "dr" then ball2.direction = "dl"
    elseif ball2.direction == "ddr" then ball2.direction = "ddl"
    elseif ball2.direction == "ddl" then ball2.direction = "ddr"
    elseif ball2.direction == "dl" then ball2.direction = "dr"
    elseif ball2.direction == "dll" then ball2.direction = "drr"
    elseif ball2.direction == "ull" then ball2.direction = "urr"
    elseif ball2.direction == "ul" then ball2.direction = "ur"
    elseif ball2.direction == "uul" then ball2.direction = "uur"
    end
    --love.audio.play(bounce)
  end

  -- Bounce ball off ceiling
  if ball.y <= 0 or ball.y >= height then 
    --gamestate = "menu"
    bounce() 
  end
  if ball2.y <= 0 or ball2.y >= height then 
    --gamestate = "menu"
    bounce2() 
  end

  -- Move ball
  if ball.cooldown == 0 then
    if ball.direction == "u" then
      ball.y = ball.y - 2 * (dt * ball.speed)
    elseif ball.direction == "uur" then
      ball.y = ball.y - 2 * (dt * ball.speed)
      ball.x = ball.x + 1 * (dt * ball.speed)
    elseif ball.direction == "ur" then
      ball.y = ball.y - 2 * (dt * ball.speed)
      ball.x = ball.x + 2 * (dt * ball.speed)
    elseif ball.direction == "urr" then
      ball.y = ball.y - 1 * (dt * ball.speed)
      ball.x = ball.x + 2 * (dt * ball.speed)
    elseif ball.direction == "drr" then
      ball.y = ball.y + 1 * (dt * ball.speed)
      ball.x = ball.x + 2 * (dt * ball.speed)
    elseif ball.direction == "dr" then
      ball.y = ball.y + 2 * (dt * ball.speed)
      ball.x = ball.x + 2 * (dt * ball.speed)
    elseif ball.direction == "ddr" then
      ball.y = ball.y + 2 * (dt * ball.speed)
      ball.x = ball.x + 1 * (dt * ball.speed)
    elseif ball.direction == "d" then
      ball.y = ball.y + 2 * (dt * ball.speed)
    elseif ball.direction == "ddl" then
      ball.y = ball.y + 2 * (dt * ball.speed)
      ball.x = ball.x - 1 * (dt * ball.speed)
    elseif ball.direction == "dl" then
      ball.y = ball.y + 2 * (dt * ball.speed)
      ball.x = ball.x - 2 * (dt * ball.speed)
    elseif ball.direction == "dll" then
      ball.y = ball.y + 1 * (dt * ball.speed)
      ball.x = ball.x - 2 * (dt * ball.speed)
    elseif ball.direction == "ull" then
      ball.y = ball.y - 1 * (dt * ball.speed)
      ball.x = ball.x - 2 * (dt * ball.speed)
    elseif ball.direction == "ul" then
      ball.y = ball.y - 2 * (dt * ball.speed)
      ball.x = ball.x - 2 * (dt * ball.speed)
    elseif ball.direction == "uul" then
      ball.y = ball.y - 2 * (dt * ball.speed)
      ball.x = ball.x - 1 * (dt * ball.speed)
    end
  end
  
  -- Move ball
  if ball2.cooldown == 0 then
    if ball2.direction == "u" then
      ball2.y = ball.y - 2 * (dt * ball2.speed)
    elseif ball2.direction == "uur" then
      ball2.y = ball2.y - 2 * (dt * ball2.speed)
      ball2.x = ball2.x + 1 * (dt * ball2.speed)
    elseif ball2.direction == "ur" then
      ball2.y = ball2.y - 2 * (dt * ball2.speed)
      ball2.x = ball2.x + 2 * (dt * ball2.speed)
    elseif ball2.direction == "urr" then
      ball2.y = ball2.y - 1 * (dt * ball2.speed)
      ball2.x = ball2.x + 2 * (dt * ball2.speed)
    elseif ball2.direction == "drr" then
      ball2.y = ball2.y + 1 * (dt * ball2.speed)
      ball2.x = ball2.x + 2 * (dt * ball2.speed)
    elseif ball2.direction == "dr" then
      ball2.y = ball2.y + 2 * (dt * ball2.speed)
      ball2.x = ball2.x + 2 * (dt * ball2.speed)
    elseif ball2.direction == "ddr" then
      ball2.y = ball2.y + 2 * (dt * ball2.speed)
      ball2.x = ball2.x + 1 * (dt * ball2.speed)
    elseif ball2.direction == "d" then
      ball2.y = ball2.y + 2 * (dt * ball2.speed)
    elseif ball2.direction == "ddl" then
      ball2.y = ball2.y + 2 * (dt * ball2.speed)
      ball2.x = ball2.x - 1 * (dt * ball2.speed)
    elseif ball2.direction == "dl" then
      ball2.y = ball2.y + 2 * (dt * ball2.speed)
      ball2.x = ball2.x - 2 * (dt * ball2.speed)
    elseif ball2.direction == "dll" then
      ball2.y = ball2.y + 1 * (dt * ball2.speed)
      ball2.x = ball2.x - 2 * (dt * ball2.speed)
    elseif ball2.direction == "ull" then
      ball2.y = ball2.y - 1 * (dt * ball2.speed)
      ball2.x = ball2.x - 2 * (dt * ball2.speed)
    elseif ball2.direction == "ul" then
      ball2.y = ball2.y - 2 * (dt * ball2.speed)
      ball2.x = ball2.x - 2 * (dt * ball2.speed)
    elseif ball2.direction == "uul" then
      ball2.y = ball2.y - 2 * (dt * ball2.speed)
      ball2.x = ball2.x - 1 * (dt * ball2.speed)
    end
  end

  if ball.y >= height then
    --love.audio.play(loss)
    player.lives = player.lives - 1; 
    ball.radius = 5
    ball.x = width/2
    ball.y = player.y - 200
    ball.speed = 100
    ball.direction = "d"
    ball.cooldown = 200
  end
  
  if ball2.y >= height then
    --love.audio.play(loss)
    player2.lives = player2.lives - 1; 
    ball2.radius = 5
    ball2.x = width/2
    ball2.y = player2.y + 50
    ball2.speed = 100
    ball2.direction = "d"
    ball2.cooldown = 200
  end

  if player.lives < 0 then
    love.graphics.print("GAME OVER", width/2, height/2)
    love.load()
  end
  
  if player2.lives < 0 then
    love.graphics.print("GAME OVER", width/2, height/3)
    love.load()
  end
  ------------------Test2Update--------------------
  
  mousex = love.mouse.getX()
  mousey = love.mouse.getY()
  
  --look at tomorrow
  if gamestate == "playingHal" then
    myAngle = math.angle(paddleP1X, paddleP1Y, ballL1P1X, ballL1P1Y)
    --dx = math.cos(myAngle) * (dt * speed)
    dx = math.cos(myAngle) * (dt * paddlespeed)
    --paddleP1X = paddleP1X + dx
    --paddleP1Y = paddleP1Y + (dx * 0)
    if paddleP1X == 0 then
      paddleP1X = paddleP1X + 1.5
    elseif paddleP1X == 270 then
      paddleP1X = paddleP1X - 1.5
    elseif paddleP1X > 0 and paddleP1X < 270 then
      paddleP1X = paddleP1X + dx
    end
  end

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
  
  lastPostionBall1 = currentPostionBall1

  if (gamestate == "halloweenSingle" or gamestate == "xmasSingle") then
    backgroundSound:play()
    if (paused == false) then
      singleControls()
      map_collide()  
      pausebutton_check()
    elseif (paused == true) then
      resumebutton_check()
    end
  elseif (gamestate == "halloweenMulti" or gamestate == "xmasMulti") then
    backgroundSound:play()
    if (paused == false) then
      multiControls()
      map_collide()
      pausebutton_check()
    elseif (paused == true) then
      resumebutton_check()
    end
  end
  
  if gamestate == "playingHal" then
    if (paused == false) then
    ballL1P1X = ballL1P1X - (dt * ballspeed)
    ballL1P1Y = ballL1P1Y + (dt * ballspeed)
    ballL1P2X = ballL1P2X + (dt * ballspeed)
    ballL1P2Y = ballL1P2Y - (dt * ballspeed)
    pausebutton_check()
    singleControls()
    map_collide()
    elseif (paused == true) then
      resumebutton_check()
    end
  end
  
  if gamestate == "playingXmas" then
    if (paused == false) then
    ballL1P1X = ballL1P1X + (dt * ballspeed)
    ballL1P1Y = ballL1P1Y + (dt * ballspeed)
    ballL1P2X = ballL1P2X - (dt * ballspeed)
    ballL1P2Y = ballL1P2Y - (dt * ballspeed)
    pausebutton_check()
    singleControls()
    map_collide() 
    elseif (paused == true) then
      resumebutton_check()
    end
  end
end

function love.keypressed(space)
    --start balls moving
  if gamestate == "xmasSingle" then
    gamestate = "playingXmas"
  elseif gamestate == "halloweenSingle" then
    gamestate = "playingHal"
  end
end

function love.draw() 
  
  if(paused == true) then
    love.graphics.draw(pauseBackground, pauseQuad, 0, 0)
    resumebutton_draw()
  elseif(paused == false) then    
    if gamestate == "halloweenMulti" then
      xmasDraw()
      pausebutton_draw()
    elseif gamestate == "levelSelectSingle" then
      levelSelectSingleDraw()
    elseif gamestate == "levelSelectMulti" then
      levelSelectMultiDraw()
    elseif gamestate == "xmasMulti" then
      halDraw()
      pausebutton_draw()
    elseif gamestate == "playingHal" then
      xmasDraw()
      pausebutton_draw()
    elseif gamestate == "playingXmas" then
      halDraw()
      pausebutton_draw()
    elseif gamestate == "halloweenSingle" then
      xmasDraw()      
      pausebutton_draw()
    elseif gamestate == "xmasSingle" then
      halDraw()
      pausebutton_draw()
    elseif gamestate == "modeSelect" then
      modeSelectDraw()
    elseif gamestate == "menu" then
      menuDraw()
    elseif gamestate == "options" then
      optionsDraw()
    elseif gamestate == "results" then
      resultsDraw()
      --winnerSound:setVolume(0.0)
    elseif gamestate == "test2" then
      test2Draw()
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
  if ballL1P1X < 0 then      
    ballL1P1X = ballL1P1X + 1.5        
  elseif ballL1P1X > 340 then
    ballL1P1X = ballL1P1X - 1.5
  elseif ballL1P1Y < 0 then 
    gamestate = "results"
    winnerSound:play()
  elseif ballL1P1Y > 620 then
    gamestate = "results"
    winnerSound:play()

  elseif ballL2P1X < 0 then
    ballL1P1X = ballL1P1X + 1.5
  elseif ballL2P1X > 340 then
    ballL1P1X = ballL1P1X - 1.5
  elseif ballL2P1Y < 0 then
    gamestate = "results"
    winnerSound:play()
  elseif ballL2P1Y > 620 then
    gamestate = "results"
    winnerSound:play()
  end
  
  if ballL1P2X < 0 then
    ballL1P2X = ballL1P2X + 1.5
  elseif ballL1P2X > 340 then
    ballL1P2X = ballL1P2X - 1.5
  elseif ballL1P2Y < 0 then
    gamestate = "results"
    winnerSound:play()
  elseif ballL1P2Y > 620 then 
    gamestate = "results"
    winnerSound:play()
    
  elseif ballL2P2X < 0 then
    ballL1P2X = ballL1P2X + 1.5
  elseif ballL2P2X > 340 then
    ballL1P2X = ballL1P2X - 1.5
  elseif ballL2P2Y < 0 then
    gamestate = "results"
    winnerSound:play()
  elseif ballL2P2Y > 620 then
    gamestate = "results"
    winnerSound:play()
  end

end

function math.angle(x1,y1, x2,y2) return math.atan2(y2-y1, x2-x1) end