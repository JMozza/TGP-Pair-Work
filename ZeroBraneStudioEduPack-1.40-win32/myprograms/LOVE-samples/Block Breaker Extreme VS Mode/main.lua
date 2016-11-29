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
require "test"

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
  menuClick = love.audio.newSource("sounds/Menu_Click.wav", "static")
  levelStart = love.audio.newSource("sounds/Level_Start.wav", "static")
  blockBounce = love.audio.newSource("sounds/Brick_Bounce.wav", "static")
  paddleBounce = love.audio.newSource("sounds/Paddle_Bounce.mp3", "static")
  winnerSound = love.audio.newSource("sounds/Winner.mp3", "static")
  backgroundSound = love.audio.newSource("sounds/Background.mp3")
  ------------------------
  
  angle = 0
  
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
  
  currentPostionBall1 = 0
  lastPostionBall1 = 0
  
  time = 0
  -----------------
  
  ----------------Test----------------------
  love.physics.setMeter(64) --the height of a meter our worlds will be 64px
  world = love.physics.newWorld(0, 0*64, true) --create a world for the bodies to exist in with horizontal gravity of 0 and vertical gravity of 9.81
  world:setCallbacks(beginContact, endContact, preSolve, postSolve)
  
  ballobjects = {} -- table to hold all ball objects
  staticobjects = {} -- table to hold all static objects
  movableobjects = {} -- table to hold all movable objects
 
  --let's create the ground
  staticobjects.bottom= {}
  staticobjects.bottom.body = love.physics.newBody(world, 360/2, 635) --the shape anchors to the body from its center
  staticobjects.bottom.shape = love.physics.newRectangleShape(650, 10) --rectangle with a width of 650 and a height of 50
  staticobjects.bottom.fixture = love.physics.newFixture(staticobjects.bottom.body, staticobjects.bottom.shape); --attach shape to body
  staticobjects.bottom.fixture:setUserData("Bottom")
 
  staticobjects.left= {}
  staticobjects.left.body = love.physics.newBody(world, 5, 640-50/2) --the shape anchors to the body from its center
  staticobjects.left.shape = love.physics.newRectangleShape(10, 1250) --rectangle with a width of 650 and a height of 50
  staticobjects.left.fixture = love.physics.newFixture(staticobjects.left.body, staticobjects.left.shape); --attach shape to body
  staticobjects.left.fixture:setUserData("Left")
 
  staticobjects.right= {}
  staticobjects.right.body = love.physics.newBody(world, 355, 640-50/2) --the shape anchors to the body from its center
  staticobjects.right.shape = love.physics.newRectangleShape(10, 1250) --rectangle with a width of 650 and a height of 50
  staticobjects.right.fixture = love.physics.newFixture(staticobjects.right.body, staticobjects.right.shape); --attach shape to body
  staticobjects.right.fixture:setUserData("Right")
 
  staticobjects.top= {}
  staticobjects.top.body = love.physics.newBody(world, 360/2, 10/2) --the shape anchors to the body from its center
  staticobjects.top.shape = love.physics.newRectangleShape(650, 10) --rectangle with a width of 650 and a height of 50
  staticobjects.top.fixture = love.physics.newFixture(staticobjects.top.body, staticobjects.top.shape); --attach shape to body
  staticobjects.top.fixture:setUserData("Top")
  
  movableobjects.paddle1= {}
  movableobjects.paddle1.body = love.physics.newBody(world, 360/2, 610) --the shape anchors to the body from its center
  movableobjects.paddle1.shape = love.physics.newRectangleShape(100, 15) --rectangle with a width of 650 and a height of 50
  movableobjects.paddle1.fixture = love.physics.newFixture(movableobjects.paddle1.body, movableobjects.paddle1.shape); --attach shape to body
  movableobjects.paddle1.fixture:setUserData("Paddle1")
  
  movableobjects.paddle2= {}
  movableobjects.paddle2.body = love.physics.newBody(world, 360/2, 30) --the shape anchors to the body from its center
  movableobjects.paddle2.shape = love.physics.newRectangleShape(100, 15) --rectangle with a width of 650 and a height of 50
  movableobjects.paddle2.fixture = love.physics.newFixture(movableobjects.paddle2.body, movableobjects.paddle2.shape); --attach shape to body
  movableobjects.paddle2.fixture:setUserData("Paddle2")
  
  --create first ball
  ballobjects.ball1 = {}
  ballobjects.ball1.body = love.physics.newBody(world, 360/2, 60, "dynamic") --place the body in the center of the world and make it dynamic, so it can move around
  ballobjects.ball1.body:setMass(0)
  ballobjects.ball1.shape = love.physics.newCircleShape(20) --the ball's shape has a radius of 20
  ballobjects.ball1.fixture = love.physics.newFixture(ballobjects.ball1.body, ballobjects.ball1.shape, 1) -- Attach fixture to body and give it a density of 1.
  ballobjects.ball1.fixture:setRestitution(1.0) --ball bounce
  ballobjects.ball1.fixture:setUserData("Ball1")
  ballobjects.ball1.body:setLinearDamping(0)
  
  --create second ball
  ballobjects.ball2 = {}
  ballobjects.ball2.body = love.physics.newBody(world, 360/2, 580, "dynamic") --place the body in the center of the world and make it dynamic, so it can move around
  ballobjects.ball2.body:setMass(0)
  ballobjects.ball2.shape = love.physics.newCircleShape(20) --the ball's shape has a radius of 20
  ballobjects.ball2.fixture = love.physics.newFixture(ballobjects.ball2.body, ballobjects.ball2.shape, 1) -- Attach fixture to body and give it a density of 1.
  ballobjects.ball2.fixture:setRestitution(1.0) --lets the ball bounce
  ballobjects.ball2.fixture:setUserData("Ball2")
  ballobjects.ball2.body:setLinearDamping(0)

  speed = 50
  angle = 0
  
  text       = ""   -- we'll use this to put info text on the screen later
  persisting = 0    -- we'll use this to store the state of repeated callback calls
  
  --initial graphics setup
  love.graphics.setBackgroundColor(104, 136, 248) --set the background color to a nice blue
  love.window.setMode(360, 640) --set the window dimensions to 650 by 650
  -----------------Test--------------------
  
  paused = false
  gamestate = "menu"
  
  --Menus--
  button_spawn(140,350,"Start", "start")
  button_spawn(140,500,"Test", "test")
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
  
  --if (gamestate == "xmasSingle" or gamestate == "xmasMulti") then
    --xmasLoad()
  --elseif (gamestate == "halloweenSingle" or gamestate == "halloweenMulti") then    
    --halLoad()
  --elseif (gamestate == "test") then    
    --testLoad()
  --end
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
  
  --look at tomorrow
  --angle = math.angle(paddleP1X, paddleP1Y, ballL1P1X, ballL1P1Y)
  --dx = math.cos(angle) * (dt * speed)
  --dy = math.sin(angle) * (dt * speed)
  --paddleP1X = paddleP1X + dx
  --paddleP1Y = paddleP1Y + dy

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
  elseif gamestate == "test" then
    world:update(dt) --Adds physics to world
    testControls()
  end
  
  time = time + 1
  
  currentPostionBall1 = ballobjects.ball1.body.getY
  
  if time > 600 and time < 630 then
    --if currentPostionBall1 >= lastPostionBall1 then
      --ballobjects.ball1.body:applyForce(400, -800)
    --elseif currentPostionBall1 <= lastPostionBall1 then
  ballobjects.ball1.body:applyForce(400, 800)
  ballobjects.ball2.body:applyForce(400, -800)
    --end
  end
  
  if time > 630 then
    time = 0
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
    ballL1P1X = ballL1P1X + (dt * speed)
    ballL1P1Y = ballL1P1Y + (dt * speed)
    ballL1P2X = ballL1P2X - (dt * speed)
    ballL1P2Y = ballL1P2Y - (dt * speed)
    pausebutton_check()
    singleControls()
    map_collide()
    elseif (paused == true) then
      resumebutton_check()
    end
  end
  
  if gamestate == "playingXmas" then
    if (paused == false) then
    ballL1P1X = ballL1P1X + (dt * speed)
    ballL1P1Y = ballL1P1Y + (dt * speed)
    ballL1P2X = ballL1P2X - (dt * speed)
    ballL1P2Y = ballL1P2Y - (dt * speed)
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
    elseif gamestate == "test" then
      testDraw()
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

function beginContact(a, b, coll)
    x,y = coll:getNormal()
    text = text.."\n"..a:getUserData().." colliding with "..b:getUserData().." with a vector normal of: "..x..", "..y
end

function preSolve(a, b, coll)
    if persisting == 0 then    -- only say when they first start touching
        text = text.."\n"..a:getUserData().." touching "..b:getUserData()
    elseif persisting < 20 then    -- then just start counting
        text = text.." "..persisting
    end
    persisting = persisting + 1    -- keep track of how many updates they've been touching for
end

function postSolve(a, b, coll, normalimpulse, tangentimpulse)
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

--https://github.com/AndyWarrior/Pong/blob/master/main.lua