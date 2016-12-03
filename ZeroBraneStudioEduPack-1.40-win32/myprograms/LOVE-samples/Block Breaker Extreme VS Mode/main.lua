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
require "test2"
require "testCollisions"

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
  
  --layer 1
  block1X = 0
  block1Y = 246.5  
  block2X = 72
  block2Y = 246.5  
  block3X = 144
  block3Y = 246.5  
  block4X = 216
  block4Y = 246.5  
  block5X = 288
  block5Y = 246.5

  --layer 2
  block6X = 0
  block6Y = 267.5  
  block7X = 72
  block7Y = 267.5  
  block8X = 144
  block8Y = 267.5  
  block9X = 216
  block9Y = 267.5  
  block10X = 288
  block10Y = 267.5
  
    --layer 3
  block11X = 0
  block11Y = 288.5 
  block12X = 72
  block12Y = 288.5 
  block13X = 144
  block13Y = 288.5 
  block14X = 216
  block14Y = 288.5  
  block15X = 288
  block15Y = 288.5

  --layer 4
  block16X = 0
  block16Y = 309.5
  block17X = 72
  block17Y = 309.5 
  block18X = 144
  block18Y = 309.5 
  block19X = 216
  block19Y = 309.5  
  block20X = 288
  block20Y = 309.5
  
  --layer 5
  block21X = 0
  block21Y = 330.5 
  block22X = 72
  block22Y = 330.5 
  block23X = 144
  block23Y = 330.5   
  block24X = 216
  block24Y = 330.5 
  block25X = 288
  block25Y = 330.5 
  
  --layer 6
  block26X = 0
  block26Y = 351.5 
  block27X = 72
  block27Y = 351.5 
  block28X = 144
  block28Y = 351.5
  block29X = 216
  block29Y = 351.5   
  block30X = 288
  block30Y = 351.5
  
  --layer 7
  block31X = 0
  block31Y = 372.5 
  block32X = 72
  block32Y = 372.5 
  block33X = 144
  block33Y = 372.5 
  block34X = 216
  block34Y = 372.5  
  block35X = 288
  block35Y = 372.5

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
  
  -----------------
  ballradius = 5
  ballBoundingSqurare = ballradius * 2
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
  
  --layer 1
  staticobjects.block = {}
  staticobjects.block.body = love.physics.newBody(world, newX, newY )
  staticobjects.block.shape = love.physics.newRectangleShape( 72, 21)
  staticobjects.block.fixture = love.physics.newFixture(staticobjects.block.body, staticobjects.block.shape);
  staticobjects.block.fixture:setUserData("block")
  
  staticobjects.block2 = {}
  staticobjects.block2.body = love.physics.newBody(world, newX2, newY)
  staticobjects.block2.shape = love.physics.newRectangleShape( 72, 21)
  staticobjects.block2.fixture = love.physics.newFixture(staticobjects.block2.body, staticobjects.block2.shape);
  staticobjects.block2.fixture:setUserData("block")
  
  staticobjects.block3 = {}
  staticobjects.block3.body = love.physics.newBody(world, newX3, newY)
  staticobjects.block3.shape = love.physics.newRectangleShape( 72, 21)
  staticobjects.block3.fixture = love.physics.newFixture(staticobjects.block3.body, staticobjects.block3.shape);
  staticobjects.block3.fixture:setUserData("block")
  
  staticobjects.block4 = {}
  staticobjects.block4.body = love.physics.newBody(world, newX4, newY)
  staticobjects.block4.shape = love.physics.newRectangleShape( 72, 21)
  staticobjects.block4.fixture = love.physics.newFixture(staticobjects.block4.body, staticobjects.block4.shape);
  staticobjects.block4.fixture:setUserData("block")
  
  staticobjects.block5 = {}
  staticobjects.block5.body = love.physics.newBody(world, newX5, newY)
  staticobjects.block5.shape = love.physics.newRectangleShape( 72, 21)
  staticobjects.block5.fixture = love.physics.newFixture(staticobjects.block5.body, staticobjects.block5.shape);
  staticobjects.block5.fixture:setUserData("block")
  
  --layer2
  staticobjects.block6 = {}
  staticobjects.block6.body = love.physics.newBody(world, newX, newY2 )
  staticobjects.block6.shape = love.physics.newRectangleShape( 72, 21)
  staticobjects.block6.fixture = love.physics.newFixture(staticobjects.block6.body, staticobjects.block6.shape);
  staticobjects.block6.fixture:setUserData("block")
  
  staticobjects.block7 = {}
  staticobjects.block7.body = love.physics.newBody(world, newX2, newY2)
  staticobjects.block7.shape = love.physics.newRectangleShape( 72, 21)
  staticobjects.block7.fixture = love.physics.newFixture(staticobjects.block7.body, staticobjects.block7.shape);
  staticobjects.block7.fixture:setUserData("block")
  
  staticobjects.block8 = {}
  staticobjects.block8.body = love.physics.newBody(world, newX3, newY2)
  staticobjects.block8.shape = love.physics.newRectangleShape( 72, 21)
  staticobjects.block8.fixture = love.physics.newFixture(staticobjects.block8.body, staticobjects.block8.shape);
  staticobjects.block8.fixture:setUserData("block")
  
  staticobjects.block9 = {}
  staticobjects.block9.body = love.physics.newBody(world, newX4, newY2)
  staticobjects.block9.shape = love.physics.newRectangleShape( 72, 21)
  staticobjects.block9.fixture = love.physics.newFixture(staticobjects.block9.body, staticobjects.block9.shape);
  staticobjects.block9.fixture:setUserData("block")
  
  staticobjects.block10 = {}
  staticobjects.block10.body = love.physics.newBody(world, newX5, newY2)
  staticobjects.block10.shape = love.physics.newRectangleShape( 72, 21)
  staticobjects.block10.fixture = love.physics.newFixture(staticobjects.block10.body, staticobjects.block10.shape);
  staticobjects.block10.fixture:setUserData("block")
  
  --layer 3
  staticobjects.block11 = {}
  staticobjects.block11.body = love.physics.newBody(world, newX, newY3 )
  staticobjects.block11.shape = love.physics.newRectangleShape( 72, 21)
  staticobjects.block11.fixture = love.physics.newFixture(staticobjects.block11.body, staticobjects.block11.shape);
  staticobjects.block11.fixture:setUserData("block")
  
  staticobjects.block12 = {}
  staticobjects.block12.body = love.physics.newBody(world, newX2, newY3)
  staticobjects.block12.shape = love.physics.newRectangleShape( 72, 21)
  staticobjects.block12.fixture = love.physics.newFixture(staticobjects.block12.body, staticobjects.block12.shape);
  staticobjects.block12.fixture:setUserData("block")
  
  staticobjects.block13 = {}
  staticobjects.block13.body = love.physics.newBody(world, newX3, newY3)
  staticobjects.block13.shape = love.physics.newRectangleShape( 72, 21)
  staticobjects.block13.fixture = love.physics.newFixture(staticobjects.block13.body, staticobjects.block13.shape);
  staticobjects.block13.fixture:setUserData("block")
  
  staticobjects.block14 = {}
  staticobjects.block14.body = love.physics.newBody(world, newX4, newY3)
  staticobjects.block14.shape = love.physics.newRectangleShape( 72, 21)
  staticobjects.block14.fixture = love.physics.newFixture(staticobjects.block14.body, staticobjects.block14.shape);
  staticobjects.block14.fixture:setUserData("block")
  
  staticobjects.block15 = {}
  staticobjects.block15.body = love.physics.newBody(world, newX5, newY3)
  staticobjects.block15.shape = love.physics.newRectangleShape( 72, 21)
  staticobjects.block15.fixture = love.physics.newFixture(staticobjects.block15.body, staticobjects.block15.shape);
  staticobjects.block15.fixture:setUserData("block")
  
  --layer4
  staticobjects.block16 = {}
  staticobjects.block16.body = love.physics.newBody(world, newX, newY4)
  staticobjects.block16.shape = love.physics.newRectangleShape( 72, 21)
  staticobjects.block16.fixture = love.physics.newFixture(staticobjects.block16.body, staticobjects.block16.shape);
  staticobjects.block16.fixture:setUserData("block")
  
  staticobjects.block17 = {}
  staticobjects.block17.body = love.physics.newBody(world, newX2, newY4)
  staticobjects.block17.shape = love.physics.newRectangleShape( 72, 21)
  staticobjects.block17.fixture = love.physics.newFixture(staticobjects.block17.body, staticobjects.block17.shape);
  staticobjects.block17.fixture:setUserData("block")
  
  staticobjects.block18 = {}
  staticobjects.block18.body = love.physics.newBody(world, newX3, newY4)
  staticobjects.block18.shape = love.physics.newRectangleShape( 72, 21)
  staticobjects.block18.fixture = love.physics.newFixture(staticobjects.block18.body, staticobjects.block18.shape);
  staticobjects.block18.fixture:setUserData("block")
  
  staticobjects.block19 = {}
  staticobjects.block19.body = love.physics.newBody(world, newX4, newY4)
  staticobjects.block19.shape = love.physics.newRectangleShape( 72, 21)
  staticobjects.block19.fixture = love.physics.newFixture(staticobjects.block19.body, staticobjects.block19.shape);
  staticobjects.block19.fixture:setUserData("block")
  
  staticobjects.block20 = {}
  staticobjects.block20.body = love.physics.newBody(world, newX5, newY4)
  staticobjects.block20.shape = love.physics.newRectangleShape( 72, 21)
  staticobjects.block20.fixture = love.physics.newFixture(staticobjects.block20.body, staticobjects.block20.shape);
  staticobjects.block20.fixture:setUserData("block")
  
  --layer 5
  staticobjects.block21 = {}
  staticobjects.block21.body = love.physics.newBody(world, newX, newY5 )
  staticobjects.block21.shape = love.physics.newRectangleShape( 72, 21)
  staticobjects.block21.fixture = love.physics.newFixture(staticobjects.block21.body, staticobjects.block21.shape);
  staticobjects.block21.fixture:setUserData("block")
  
  staticobjects.block22 = {}
  staticobjects.block22.body = love.physics.newBody(world, newX2, newY5)
  staticobjects.block22.shape = love.physics.newRectangleShape( 72, 21)
  staticobjects.block22.fixture = love.physics.newFixture(staticobjects.block22.body, staticobjects.block22.shape);
  staticobjects.block22.fixture:setUserData("block")
  
  staticobjects.block23 = {}
  staticobjects.block23.body = love.physics.newBody(world, newX3, newY5)
  staticobjects.block23.shape = love.physics.newRectangleShape( 72, 21)
  staticobjects.block23.fixture = love.physics.newFixture(staticobjects.block23.body, staticobjects.block23.shape);
  staticobjects.block23.fixture:setUserData("block")
  
  staticobjects.block24 = {}
  staticobjects.block24.body = love.physics.newBody(world, newX4, newY5)
  staticobjects.block24.shape = love.physics.newRectangleShape( 72, 21)
  staticobjects.block24.fixture = love.physics.newFixture(staticobjects.block24.body, staticobjects.block24.shape);
  staticobjects.block24.fixture:setUserData("block")
  
  staticobjects.block25 = {}
  staticobjects.block25.body = love.physics.newBody(world, newX5, newY5)
  staticobjects.block25.shape = love.physics.newRectangleShape( 72, 21)
  staticobjects.block25.fixture = love.physics.newFixture(staticobjects.block25.body, staticobjects.block25.shape);
  staticobjects.block25.fixture:setUserData("block")
  
  --layer4
  staticobjects.block26 = {}
  staticobjects.block26.body = love.physics.newBody(world, newX, newY6)
  staticobjects.block26.shape = love.physics.newRectangleShape( 72, 21)
  staticobjects.block26.fixture = love.physics.newFixture(staticobjects.block26.body, staticobjects.block26.shape);
  staticobjects.block26.fixture:setUserData("block")
  
  staticobjects.block27 = {}
  staticobjects.block27.body = love.physics.newBody(world, newX2, newY6)
  staticobjects.block27.shape = love.physics.newRectangleShape( 72, 21)
  staticobjects.block27.fixture = love.physics.newFixture(staticobjects.block27.body, staticobjects.block27.shape);
  staticobjects.block27.fixture:setUserData("block")
  
  staticobjects.block28 = {}
  staticobjects.block28.body = love.physics.newBody(world, newX3, newY6)
  staticobjects.block28.shape = love.physics.newRectangleShape( 72, 21)
  staticobjects.block28.fixture = love.physics.newFixture(staticobjects.block28.body, staticobjects.block28.shape);
  staticobjects.block28.fixture:setUserData("block")
  
  staticobjects.block29 = {}
  staticobjects.block29.body = love.physics.newBody(world, newX4, newY6)
  staticobjects.block29.shape = love.physics.newRectangleShape( 72, 21)
  staticobjects.block29.fixture = love.physics.newFixture(staticobjects.block29.body, staticobjects.block29.shape);
  staticobjects.block29.fixture:setUserData("block")
  
  staticobjects.block30 = {}
  staticobjects.block30.body = love.physics.newBody(world, newX5, newY6)
  staticobjects.block30.shape = love.physics.newRectangleShape( 72, 21)
  staticobjects.block30.fixture = love.physics.newFixture(staticobjects.block30.body, staticobjects.block30.shape);
  staticobjects.block30.fixture:setUserData("block")
  
  --layer 5
  staticobjects.block31 = {}
  staticobjects.block31.body = love.physics.newBody(world, newX, newY7 )
  staticobjects.block31.shape = love.physics.newRectangleShape( 72, 21)
  staticobjects.block31.fixture = love.physics.newFixture(staticobjects.block31.body, staticobjects.block31.shape);
  staticobjects.block31.fixture:setUserData("block")
  
  staticobjects.block32 = {}
  staticobjects.block32.body = love.physics.newBody(world, newX2, newY7)
  staticobjects.block32.shape = love.physics.newRectangleShape( 72, 21)
  staticobjects.block32.fixture = love.physics.newFixture(staticobjects.block32.body, staticobjects.block32.shape);
  staticobjects.block32.fixture:setUserData("block")
  
  staticobjects.block33 = {}
  staticobjects.block33.body = love.physics.newBody(world, newX3, newY7)
  staticobjects.block33.shape = love.physics.newRectangleShape( 72, 21)
  staticobjects.block33.fixture = love.physics.newFixture(staticobjects.block33.body, staticobjects.block33.shape);
  staticobjects.block33.fixture:setUserData("block")
  
  staticobjects.block34 = {}
  staticobjects.block34.body = love.physics.newBody(world, newX4, newY7)
  staticobjects.block34.shape = love.physics.newRectangleShape( 72, 21)
  staticobjects.block34.fixture = love.physics.newFixture(staticobjects.block34.body, staticobjects.block34.shape);
  staticobjects.block34.fixture:setUserData("block")
  
  staticobjects.block35 = {}
  staticobjects.block35.body = love.physics.newBody(world, newX5, newY7)
  staticobjects.block35.shape = love.physics.newRectangleShape( 72, 21)
  staticobjects.block35.fixture = love.physics.newFixture(staticobjects.block35.body, staticobjects.block35.shape);
  staticobjects.block35.fixture:setUserData("block")
  
  staticobjects.corner = {}
  staticobjects.corner.body = love.physics.newBody(world, 0, -20)
  staticobjects.corner.shape = love.physics.newRectangleShape( 150, 150)
  staticobjects.corner.fixture = love.physics.newFixture(staticobjects.corner.body, staticobjects.corner.shape);
  staticobjects.corner.fixture:setUserData("corner")
  
  staticobjects.corner2 = {}
  staticobjects.corner2.body = love.physics.newBody(world, 360, -20)
  staticobjects.corner2.shape = love.physics.newRectangleShape( 150, 150)
  staticobjects.corner2.fixture = love.physics.newFixture(staticobjects.corner2.body, staticobjects.corner2.shape);
  staticobjects.corner2.fixture:setUserData("corner")
  
  staticobjects.corner3 = {}
  staticobjects.corner3.body = love.physics.newBody(world, 0, 660)
  staticobjects.corner3.shape = love.physics.newRectangleShape( 150, 150)
  staticobjects.corner3.fixture = love.physics.newFixture(staticobjects.corner3.body, staticobjects.corner3.shape);
  staticobjects.corner3.fixture:setUserData("corner")
  
  staticobjects.corner4 = {}
  staticobjects.corner4.body = love.physics.newBody(world, 360, 660)
  staticobjects.corner4.shape = love.physics.newRectangleShape( 150, 150)
  staticobjects.corner4.fixture = love.physics.newFixture(staticobjects.corner4.body, staticobjects.corner4.shape);
  staticobjects.corner4.fixture:setUserData("corner")
  
  --paddles
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
  ballobjects.ball1.shape = love.physics.newCircleShape(ballradius) --the ball's shape has a radius of 20
  ballobjects.ball1.fixture = love.physics.newFixture(ballobjects.ball1.body, ballobjects.ball1.shape, 1) -- Attach fixture to body and give it a density of 1.
  ballobjects.ball1.fixture:setRestitution(1.0) --ball bounce
  ballobjects.ball1.fixture:setUserData("Ball1")
  ballobjects.ball1.body:setLinearDamping(0)
  
  --create second ball
  ballobjects.ball2 = {}
  ballobjects.ball2.body = love.physics.newBody(world, 360/2, 580, "dynamic") --place the body in the center of the world and make it dynamic, so it can move around
  ballobjects.ball2.body:setMass(0)
  ballobjects.ball2.shape = love.physics.newCircleShape(ballradius) --the ball's shape has a radius of 20
  ballobjects.ball2.fixture = love.physics.newFixture(ballobjects.ball2.body, ballobjects.ball2.shape, 1) -- Attach fixture to body and give it a density of 1.
  ballobjects.ball2.fixture:setRestitution(1.0) --lets the ball bounce
  ballobjects.ball2.fixture:setUserData("Ball2")
  ballobjects.ball2.body:setLinearDamping(0)

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
    player.y = height - player.height
    player.speed = 400
    player.lives = 5
    player.points = 0

  
  -- PLAYER 1 SETUP
  player2 = {}

    player2.width = 70
    player2.height = 20
    player2.x = width/2 - player2.width/2
    player2.y = (height - player2.height) - 590
    player2.speed = 400
    player2.lives = 5
    player2.points = 0


  -- BLOCKS
  blocks = {}
  blocks.draw = {}

  -- LOAD BLOCKS
  column = 0; row = 1
    while 5 >= row do
      block = {}
      block.width = width/10 - 5
      block.height = 20
      block.x = column * (block.width + 5)
      block.y = (row * (block.height + 5)) + 220
      table.insert(blocks.draw, block)
      column = column + 1
      if column == 10 then column = 0; row = row + 1 end
    end


  -- BALL
  ball = {}

    ball.radius = 5
    ball.x = width/2
    ball.y = player.y - 200
    ball.speed = 200
    ball.direction = "d"
    ball.cooldown = 200


  -- CHECK TOP FOR BOUNCE
  function topbounce()
    if ball.direction == "ull" then ball.direction = "dll"
    elseif ball.direction == "ul" then ball.direction = "dl"
    elseif ball.direction == "uul" then ball.direction = "ddl"
    elseif ball.direction == "u" then ball.direction = "d"
    elseif ball.direction == "uur" then ball.direction = "ddr"
    elseif ball.direction == "ur" then ball.direction = "dr"
    elseif ball.direction == "urr" then ball.direction = "drr"
    end
  end
  -----------------Test2-------------------
  
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
  button_spawn(140,550, "Test2", "test2")
  
  --if (gamestate == "xmasSingle" or gamestate == "xmasMulti") then
    --xmasLoad()
  --elseif (gamestate == "halloweenSingle" or gamestate == "halloweenMulti") then    
    --halLoad()
  --elseif (gamestate == "test") then    
    --testLoad()
  --end
end

function love.update(dt) 
  
  ------------------Test2Update--------------------
  if ball.cooldown > 0 then 
    ball.cooldown = ball.cooldown - 1 
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
    ball.speed = 200
    ball.direction = "d"
    ball.cooldown = 200
  end
  
  -- Player 2 movement
  if love.keyboard.isDown("d") and player2.x <= (width - player2.width) then
    player2.x = player2.x + (dt * player2.speed)
  elseif love.keyboard.isDown("a") and player2.x >= 0 then
    player2.x = player2.x - (dt * player2.speed) end

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
  if ball.y >= player2.y and ball.y <= height and ball.x >= player2.x and
    ball.x <= (player2.x + player2.width) then
    if ball.x >= player2.x and ball.x < (player2.x + 10) then
      ball.direction = "ull"
    elseif ball.x >= (player2.x + 10) and ball.x < (player2.x + 20) then
      ball.direction = "ul"
    elseif ball.x >= (player2.x + 20) and ball.x < (player2.x + 30) then
      ball.direction = "uul"
    elseif ball.x >= (player2.x + 30) and ball.x < (player2.x + 40) then
      ball.direction = "u"
    elseif ball.x >= (player2.x + 40) and ball.x < (player2.x + 50) then
      ball.direction = "uur"
    elseif ball.x >= (player2.x + 50) and ball.x < (player2.x + 60) then
      ball.direction = "ur"
    elseif ball.x >= (player2.x + 60) and ball.x < (player2.x + 70) then
      ball.direction = "urr"
    end
    --love.audio.play(bounce)
  end

  -- Hitbox for blocks
  for i,v in ipairs(blocks.draw) do
    if ball.y <= (v.y + v.height) and ball.y >= v.y then
      if ball.x <= (v.x + v.width) and ball.x >= v.x then
        topbounce()
        --love.audio.play(hit)
        table.remove(blocks.draw, i)
        player.points = player.points + 1
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

  -- Bounce ball off ceiling
  if ball.y <= 0 then topbounce() end

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

  if ball.y >= height then
    --love.audio.play(loss)
    player.lives = player.lives - 1; 
    ball.radius = 5
    ball.x = width/2
    ball.y = player.y - 200
    ball.speed = 200
    ball.direction = "d"
    ball.cooldown = 200
  end

  if player.lives < 0 then
    love.graphics.print("GAME OVER", width/2, height/2)
    love.load()
  end
  ------------------Test2Update--------------------
  
  
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
  elseif gamestate == "test" then
    world:update(dt) --Adds physics to world
    testControls()
    TestCollisionBall1()
    TestCollisionBall2()
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
    elseif gamestate == "test" then
      testDraw()
    elseif gamestate == "test2" then
      test2Draw()
    end 
  end
end

function CheckCollision(x1,y1,w1,h1, x2,y2,w2,h2)
  --return x1 < x2+w2 and
  --       x2 < x1+w1 and
  --       y1 < y2+h2 and
  --       y2 < y1+h1
  
  left1 = x1
  left2 = x2
  right1 = x1 + w1
  right2 = x2 + w2
  top1 = y1
  top2 = y2
  bottom1 = y1 + h1
  bottom2 = y2 + h2
  
  if(bottom1<top2) then
    return false
  end
  
  if(top1>bottom2) then
    return false
  end
  
  if(right1<left2) then
    return false
  end
  
  if(left1>right2) then
    return false
  end
  
    if(top1<bottom2) then
    return true
  end
  
  return true
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
    name = a:getUserData()
    
  if(name == "block") then
    a:destroy()
  end
end

function endContact(a,b,coll)

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

function math.angle(x1,y1, x2,y2) return math.atan2(y2-y1, x2-x1) end