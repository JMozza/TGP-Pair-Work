function love.load()
  love.physics.setMeter(64) --the height of a meter our worlds will be 64px
  world = love.physics.newWorld(0, 0*64, true) --create a world for the bodies to exist in with horizontal gravity of 0 and vertical gravity of 9.81
  gamestate = "play"
  objects = {} -- table to hold all our physical objects
 
  --let's create the ground
  objects.bottom= {}
  objects.bottom.body = love.physics.newBody(world, 360/2, 635) --remember, the shape (the rectangle we create next) anchors to the body from its center, so we have to move it to (650/2, 650-50/2)
  objects.bottom.shape = love.physics.newRectangleShape(650, 10) --make a rectangle with a width of 650 and a height of 50
  objects.bottom.fixture = love.physics.newFixture(objects.bottom.body, objects.bottom.shape); --attach shape to body
 
  objects.left= {}
  objects.left.body = love.physics.newBody(world, 5, 640-50/2) --remember, the shape (the rectangle we create next) anchors to the body from its center, so we have to move it to (650/2, 650-50/2)
  objects.left.shape = love.physics.newRectangleShape(10, 1250) --make a rectangle with a width of 650 and a height of 50
  objects.left.fixture = love.physics.newFixture(objects.left.body, objects.left.shape); --attach shape to body
 
  objects.right= {}
  objects.right.body = love.physics.newBody(world, 355, 640-50/2) --remember, the shape (the rectangle we create next) anchors to the body from its center, so we have to move it to (650/2, 650-50/2)
  objects.right.shape = love.physics.newRectangleShape(10, 1250) --make a rectangle with a width of 650 and a height of 50
  objects.right.fixture = love.physics.newFixture(objects.right.body, objects.right.shape); --attach shape to body
 
  objects.top= {}
  objects.top.body = love.physics.newBody(world, 360/2, 10/2) --remember, the shape (the rectangle we create next) anchors to the body from its center, so we have to move it to (650/2, 650-50/2)
  objects.top.shape = love.physics.newRectangleShape(650, 10) --make a rectangle with a width of 650 and a height of 50
  objects.top.fixture = love.physics.newFixture(objects.top.body, objects.top.shape); --attach shape to body
  
  objects.paddle1= {}
  objects.paddle1.body = love.physics.newBody(world, 360/2, 610) --remember, the shape (the rectangle we create next) anchors to the body from its center, so we have to move it to (650/2, 650-50/2)
  objects.paddle1.shape = love.physics.newRectangleShape(100, 15) --make a rectangle with a width of 650 and a height of 50
  objects.paddle1.fixture = love.physics.newFixture(objects.paddle1.body, objects.paddle1.shape); --attach shape to body
  
  objects.paddle2= {}
  objects.paddle2.body = love.physics.newBody(world, 360/2, 30) --remember, the shape (the rectangle we create next) anchors to the body from its center, so we have to move it to (650/2, 650-50/2)
  objects.paddle2.shape = love.physics.newRectangleShape(100, 15) --make a rectangle with a width of 650 and a height of 50
  objects.paddle2.fixture = love.physics.newFixture(objects.paddle2.body, objects.paddle2.shape); --attach shape to body
  
  --create first ball
  objects.ball1 = {}
  objects.ball1.body = love.physics.newBody(world, 360/2, 60, "dynamic") --place the body in the center of the world and make it dynamic, so it can move around
  objects.ball1.shape = love.physics.newCircleShape(20) --the ball's shape has a radius of 20
  objects.ball1.fixture = love.physics.newFixture(objects.ball1.body, objects.ball1.shape, 1) -- Attach fixture to body and give it a density of 1.
  objects.ball1.fixture:setRestitution(1.0) --let the ball bounce
  
  --create second ball
  objects.ball2 = {}
  objects.ball2.body = love.physics.newBody(world, 360/2, 580, "dynamic") --place the body in the center of the world and make it dynamic, so it can move around
  objects.ball2.shape = love.physics.newCircleShape(20) --the ball's shape has a radius of 20
  objects.ball2.fixture = love.physics.newFixture(objects.ball2.body, objects.ball2.shape, 1) -- Attach fixture to body and give it a density of 1.
  objects.ball2.fixture:setRestitution(1.0) --let the ball bounce
 
  --initial graphics setup
  love.graphics.setBackgroundColor(104, 136, 248) --set the background color to a nice blue
  love.window.setMode(360, 640) --set the window dimensions to 650 by 650
end
 
function love.update(dt)
  if gamestate == "menu" then
    --menuDraw()
  end
  if gamestate == "play" then
  world:update(dt) --this puts the world into motion
 
  --here we are going to create some keyboard events
  if love.keyboard.isDown("space") then --press the right arrow key to push the ball to the right
    objects.ball1.body:applyForce(400, 800)
    objects.ball2.body:applyForce(400, -800)
  end
  
  if love.keyboard.isDown("d") then
    objects.paddle1.body:setX(objects.paddle1.body:getX() + 10)
    end
  if love.keyboard.isDown("a") then
    objects.paddle1.body:setX(objects.paddle1.body:getX() - 10)
  end
  if love.keyboard.isDown("right") then
    objects.paddle2.body:setX(objects.paddle2.body:getX() + 10)
    end
  if love.keyboard.isDown("left") then
    objects.paddle2.body:setX(objects.paddle2.body:getX() - 10)
  end
  
  if objects.paddle1.body:getX() == 50 then
    objects.paddle1.body:setX(objects.paddle1.body:getX() + 10)
  end
  if objects.paddle1.body:getX() == 330 then
    objects.paddle1.body:setX(objects.paddle1.body:getX() - 10)
  end
  if objects.paddle2.body:getX() == 50 then
    objects.paddle2.body:setX(objects.paddle2.body:getX() + 10)
  end
  if objects.paddle2.body:getX() == 330 then
    objects.paddle2.body:setX(objects.paddle2.body:getX() - 10)
  end
  end
end
 
function love.draw()
  love.graphics.setColor(72, 160, 14) -- set the drawing color to green for the ground
  love.graphics.polygon("fill", objects.bottom.body:getWorldPoints(objects.bottom.shape:getPoints())) -- draw a "filled in" polygon using the ground's coordinates
  love.graphics.polygon("fill", objects.top.body:getWorldPoints(objects.top.shape:getPoints())) -- draw a "filled in" polygon using the ground's coordinates
  love.graphics.polygon("fill", objects.left.body:getWorldPoints(objects.left.shape:getPoints())) -- draw a "filled in" polygon using the ground's coordinates
  love.graphics.polygon("fill", objects.right.body:getWorldPoints(objects.right.shape:getPoints())) -- draw a "filled in" polygon using the ground's coordinates
  love.graphics.polygon("fill", objects.paddle1.body:getWorldPoints(objects.paddle1.shape:getPoints())) -- draw a "filled in" polygon using the ground's coordinates
  love.graphics.polygon("fill", objects.paddle2.body:getWorldPoints(objects.paddle2.shape:getPoints())) -- draw a "filled in" polygon using the ground's coordinates
 
  love.graphics.setColor(193, 47, 14) --set the drawing color to red for the ball
  love.graphics.circle("fill", objects.ball1.body:getX(), objects.ball1.body:getY(), objects.ball1.shape:getRadius())
  love.graphics.circle("fill", objects.ball2.body:getX(), objects.ball2.body:getY(), objects.ball2.shape:getRadius())
end