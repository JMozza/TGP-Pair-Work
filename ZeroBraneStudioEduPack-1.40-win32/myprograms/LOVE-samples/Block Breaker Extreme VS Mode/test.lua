--function testLoad()
  --love.physics.setMeter(64) --the height of a meter our worlds will be 64px
  --world = love.physics.newWorld(0, 0*64, true) --create a world for the bodies to exist in with horizontal gravity of 0 and vertical gravity of 9.81
  
  --objects = {} -- table to hold all ball objects
 
  --let's create the ground
  --objects.bottom= {}
  --objects.bottom.body = love.physics.newBody(world, 360/2, 635) --remember, the shape (the rectangle we create next) anchors to the body from its center, so we have to move it to (650/2, 650-50/2)
  --objects.bottom.shape = love.physics.newRectangleShape(650, 10) --make a rectangle with a width of 650 and a height of 50
  --objects.bottom.fixture = love.physics.newFixture(objects.bottom.body, objects.bottom.shape); --attach shape to body
 
  --objects.left= {}
  --objects.left.body = love.physics.newBody(world, 5, 640-50/2) --remember, the shape (the rectangle we create next) anchors to the body from its center, so we have to move it to (650/2, 650-50/2)
  --objects.left.shape = love.physics.newRectangleShape(10, 1250) --make a rectangle with a width of 650 and a height of 50
  --objects.left.fixture = love.physics.newFixture(objects.left.body, objects.left.shape); --attach shape to body
 
  --objects.right= {}
  --objects.right.body = love.physics.newBody(world, 355, 640-50/2) --remember, the shape (the rectangle we create next) anchors to the body from its center, so we have to move it to (650/2, 650-50/2)
  --objects.right.shape = love.physics.newRectangleShape(10, 1250) --make a rectangle with a width of 650 and a height of 50
  --objects.right.fixture = love.physics.newFixture(objects.right.body, objects.right.shape); --attach shape to body
 
  --objects.top= {}
  --objects.top.body = love.physics.newBody(world, 360/2, 10/2) --remember, the shape (the rectangle we create next) anchors to the body from its center, so we have to move it to (650/2, 650-50/2)
  --objects.top.shape = love.physics.newRectangleShape(650, 10) --make a rectangle with a width of 650 and a height of 50
  --objects.top.fixture = love.physics.newFixture(objects.top.body, objects.top.shape); --attach shape to body
  
  --objects.paddle1= {}
  --objects.paddle1.body = love.physics.newBody(world, 360/2, 610) --remember, the shape (the rectangle we create next) anchors to the body from its center, so we have to move it to (650/2,     650-50/2)
  --objects.paddle1.shape = love.physics.newRectangleShape(100, 15) --make a rectangle with a width of 650 and a height of 50
  --objects.paddle1.fixture = love.physics.newFixture(objects.paddle1.body, objects.paddle1.shape); --attach shape to body
  
  --objects.paddle2= {}
  --objects.paddle2.body = love.physics.newBody(world, 360/2, 30) --remember, the shape (the rectangle we create next) anchors to the body from its center, so we have to move it to (650/2, 650-50/2)
  --objects.paddle2.shape = love.physics.newRectangleShape(100, 15) --make a rectangle with a width of 650 and a height of 50
  --objects.paddle2.fixture = love.physics.newFixture(objects.paddle2.body, objects.paddle2.shape); --attach shape to body
  
  --create first ball
  --objects.ball1 = {}
  --objects.ball1.body = love.physics.newBody(world, 360/2, 60, "dynamic") --place the body in the center of the world and make it dynamic, so it can move around
  --objects.ball1.shape = love.physics.newCircleShape(20) --the ball's shape has a radius of 20
  --objects.ball1.fixture = love.physics.newFixture(objects.ball1.body, objects.ball1.shape, 1) -- Attach fixture to body and give it a density of 1.
  --objects.ball1.fixture:setRestitution(1.0) --let the ball bounce
  
  --create second ball
  --objects.ball2 = {}
  --objects.ball2.body = love.physics.newBody(world, 360/2, 580, "dynamic") --place the body in the center of the world and make it dynamic, so it can move around
  --objects.ball2.shape = love.physics.newCircleShape(20) --the ball's shape has a radius of 20
  --objects.ball2.fixture = love.physics.newFixture(objects.ball2.body, objects.ball2.shape, 1) -- Attach fixture to body and give it a density of 1.
  --objects.ball2.fixture:setRestitution(1.0) --let the ball bounce
 
  --initial graphics setup
  --love.graphics.setBackgroundColor(104, 136, 248) --set the background color to a nice blue
  --love.window.setMode(360, 640) --set the window dimensions to 650 by 650
--end
 
function testControls()
  if love.keyboard.isDown("space") then --press the right arrow key to push the ball to the right
    ballobjects.ball1.body:applyForce(50, 100)
    ballobjects.ball2.body:applyForce(-50, -100)
  end
  
  if love.keyboard.isDown("d") then
    movableobjects.paddle1.body:setX(movableobjects.paddle1.body:getX() + 10)
  elseif love.keyboard.isDown("a") then
    movableobjects.paddle1.body:setX(movableobjects.paddle1.body:getX() - 10)
  end
  if love.keyboard.isDown("right") then
    movableobjects.paddle2.body:setX(movableobjects.paddle2.body:getX() + 10)
  elseif love.keyboard.isDown("left") then
    movableobjects.paddle2.body:setX(movableobjects.paddle2.body:getX() - 10)
  end
  
  if movableobjects.paddle1.body:getX() == 50 then
    movableobjects.paddle1.body:setX(movableobjects.paddle1.body:getX() + 10)
  elseif movableobjects.paddle1.body:getX() == 310 then
    movableobjects.paddle1.body:setX(movableobjects.paddle1.body:getX() - 10)
  end
  if movableobjects.paddle2.body:getX() == 50 then
    movableobjects.paddle2.body:setX(movableobjects.paddle2.body:getX() + 10)
  elseif movableobjects.paddle2.body:getX() == 310 then
    movableobjects.paddle2.body:setX(movableobjects.paddle2.body:getX() - 10)
  end
  
  if string.len(text) > 768 then    -- cleanup when 'text' gets too long
    text = ""
  end
end
 
function testDraw()    
    love.graphics.polygon("line", staticobjects.bottom.body:getWorldPoints(staticobjects.bottom.shape:getPoints())) -- draw a "filled in" polygon using the ground's coordinates
  love.graphics.polygon("line", staticobjects.top.body:getWorldPoints(staticobjects.top.shape:getPoints())) -- draw a "filled in" polygon using the ground's coordinates
  love.graphics.polygon("line", staticobjects.left.body:getWorldPoints(staticobjects.left.shape:getPoints())) -- draw a "filled in" polygon using the ground's coordinates
  love.graphics.polygon("line", staticobjects.right.body:getWorldPoints(staticobjects.right.shape:getPoints())) -- draw a "filled in" polygon using the ground's coordinates
  love.graphics.polygon("line", movableobjects.paddle1.body:getWorldPoints(movableobjects.paddle1.shape:getPoints())) -- draw a "filled in" polygon using the ground's coordinates
  love.graphics.polygon("line", movableobjects.paddle2.body:getWorldPoints(movableobjects.paddle2.shape:getPoints())) -- draw a "filled in" polygon using the ground's coordinates

  --layer1
  love.graphics.polygon("line", staticobjects.block.body:getWorldPoints(staticobjects.block.shape:getPoints()))
  love.graphics.polygon("line", staticobjects.block2.body:getWorldPoints(staticobjects.block2.shape:getPoints()))
  love.graphics.polygon("line", staticobjects.block3.body:getWorldPoints(staticobjects.block3.shape:getPoints()))
  love.graphics.polygon("line", staticobjects.block4.body:getWorldPoints(staticobjects.block4.shape:getPoints()))
  love.graphics.polygon("line", staticobjects.block5.body:getWorldPoints(staticobjects.block5.shape:getPoints()))
  
  --layer2
  love.graphics.polygon("line", staticobjects.block6.body:getWorldPoints(staticobjects.block6.shape:getPoints()))
  love.graphics.polygon("line", staticobjects.block7.body:getWorldPoints(staticobjects.block7.shape:getPoints()))
  love.graphics.polygon("line", staticobjects.block8.body:getWorldPoints(staticobjects.block8.shape:getPoints()))
  love.graphics.polygon("line", staticobjects.block9.body:getWorldPoints(staticobjects.block9.shape:getPoints()))
  love.graphics.polygon("line", staticobjects.block10.body:getWorldPoints(staticobjects.block10.shape:getPoints()))
  
  --layer3
  love.graphics.polygon("line", staticobjects.block11.body:getWorldPoints(staticobjects.block11.shape:getPoints()))
  love.graphics.polygon("line", staticobjects.block12.body:getWorldPoints(staticobjects.block12.shape:getPoints()))
  love.graphics.polygon("line", staticobjects.block13.body:getWorldPoints(staticobjects.block13.shape:getPoints()))
  love.graphics.polygon("line", staticobjects.block14.body:getWorldPoints(staticobjects.block14.shape:getPoints()))
  love.graphics.polygon("line", staticobjects.block15.body:getWorldPoints(staticobjects.block15.shape:getPoints()))
  
  --layer4
  love.graphics.polygon("line", staticobjects.block16.body:getWorldPoints(staticobjects.block16.shape:getPoints()))
  love.graphics.polygon("line", staticobjects.block17.body:getWorldPoints(staticobjects.block17.shape:getPoints()))
  love.graphics.polygon("line", staticobjects.block18.body:getWorldPoints(staticobjects.block18.shape:getPoints()))
  love.graphics.polygon("line", staticobjects.block19.body:getWorldPoints(staticobjects.block19.shape:getPoints()))
  love.graphics.polygon("line", staticobjects.block20.body:getWorldPoints(staticobjects.block20.shape:getPoints()))
  
  --layer5
  love.graphics.polygon("line", staticobjects.block21.body:getWorldPoints(staticobjects.block21.shape:getPoints()))
  love.graphics.polygon("line", staticobjects.block22.body:getWorldPoints(staticobjects.block22.shape:getPoints()))
  love.graphics.polygon("line", staticobjects.block23.body:getWorldPoints(staticobjects.block23.shape:getPoints()))
  love.graphics.polygon("line", staticobjects.block24.body:getWorldPoints(staticobjects.block24.shape:getPoints()))
  love.graphics.polygon("line", staticobjects.block25.body:getWorldPoints(staticobjects.block25.shape:getPoints()))
  
  --layer6
  love.graphics.polygon("line", staticobjects.block26.body:getWorldPoints(staticobjects.block26.shape:getPoints()))
  love.graphics.polygon("line", staticobjects.block27.body:getWorldPoints(staticobjects.block27.shape:getPoints()))
  love.graphics.polygon("line", staticobjects.block28.body:getWorldPoints(staticobjects.block28.shape:getPoints()))
  love.graphics.polygon("line", staticobjects.block29.body:getWorldPoints(staticobjects.block29.shape:getPoints()))
  love.graphics.polygon("line", staticobjects.block30.body:getWorldPoints(staticobjects.block30.shape:getPoints()))
  
  --layer7
  love.graphics.polygon("line", staticobjects.block31.body:getWorldPoints(staticobjects.block31.shape:getPoints()))
  love.graphics.polygon("line", staticobjects.block32.body:getWorldPoints(staticobjects.block32.shape:getPoints()))
  love.graphics.polygon("line", staticobjects.block33.body:getWorldPoints(staticobjects.block33.shape:getPoints()))
  love.graphics.polygon("line", staticobjects.block34.body:getWorldPoints(staticobjects.block34.shape:getPoints()))
  love.graphics.polygon("line", staticobjects.block35.body:getWorldPoints(staticobjects.block35.shape:getPoints()))
  
    love.graphics.draw(halBackground, halBackgroundQuad, 0, 0)
  
  love.graphics.draw(blockHalLayer1_7, block1X, block1Y)
  love.graphics.draw(blockHalLayer1_7, block2X, block2Y)
  love.graphics.draw(blockHalLayer1_7, block3X, block3Y)
  love.graphics.draw(blockHalLayer1_7, block4X, block4Y)
  love.graphics.draw(blockHalLayer1_7, block5X, block5Y)
  
  love.graphics.draw(blockHalLayer2_6, block6X, block6Y)
  love.graphics.draw(blockHalLayer2_6, block7X, block7Y)
  love.graphics.draw(blockHalLayer2_6, block8X, block8Y)
  love.graphics.draw(blockHalLayer2_6, block9X, block9Y)
  love.graphics.draw(blockHalLayer2_6, block10X, block10Y)
  
  love.graphics.draw(blockHalLayer3_5, block11X, block11Y)
  love.graphics.draw(blockHalLayer3_5, block12X, block12Y)
  love.graphics.draw(blockHalLayer3_5, block13X, block13Y)
  love.graphics.draw(blockHalLayer3_5, block14X, block14Y)
  love.graphics.draw(blockHalLayer3_5, block15X, block15Y)
  
  love.graphics.draw(blockHalLayer4, block16X, block16Y)
  love.graphics.draw(blockHalLayer4, block17X, block17Y)
  love.graphics.draw(blockHalLayer4, block18X, block18Y)
  love.graphics.draw(blockHalLayer4, block19X, block19Y)
  love.graphics.draw(blockHalLayer4, block20X, block20Y)
  
  love.graphics.draw(blocklayer5fliped, block21X, block21Y)
  love.graphics.draw(blocklayer5fliped, block22X, block22Y)
  love.graphics.draw(blocklayer5fliped, block23X, block23Y)
  love.graphics.draw(blocklayer5fliped, block24X, block24Y)
  love.graphics.draw(blocklayer5fliped, block25X, block25Y)
  
  love.graphics.draw(blocklayer6fliped, block26X, block26Y)
  love.graphics.draw(blocklayer6fliped, block27X, block27Y)
  love.graphics.draw(blocklayer6fliped, block28X, block28Y)
  love.graphics.draw(blocklayer6fliped, block29X, block29Y)
  love.graphics.draw(blocklayer6fliped, block30X, block30Y)
  
  love.graphics.draw(blocklayer7fliped, block31X, block31Y)
  love.graphics.draw(blocklayer7fliped, block32X, block32Y)
  love.graphics.draw(blocklayer7fliped, block33X, block33Y)
  love.graphics.draw(blocklayer7fliped, block34X, block34Y)
  love.graphics.draw(blocklayer7fliped, block35X, block35Y)
  
  --love.graphics.setColor(193, 47, 14) --set the drawing color to red for the ball
  love.graphics.draw(ball1, ballobjects.ball1.body:getX(), ballobjects.ball1.body:getY(),0 ,1 ,1 , ballBoundingSqurare/2, ballBoundingSqurare/2)
  love.graphics.draw(ball1, ballobjects.ball2.body:getX(), ballobjects.ball2.body:getY(),0 ,1 ,1 , ballBoundingSqurare/2, ballBoundingSqurare/2)
  
  love.graphics.circle("line", ballobjects.ball1.body:getX(), ballobjects.ball1.body:getY(), ballobjects.ball1.shape:getRadius(), 20)
  love.graphics.polygon("line", movableobjects.paddle1.body:getWorldPoints(movableobjects.paddle1.shape:getPoints()))
  love.graphics.circle("line", ballobjects.ball2.body:getX(), ballobjects.ball2.body:getY(), ballobjects.ball2.shape:getRadius(), 20)
  love.graphics.polygon("line", movableobjects.paddle2.body:getWorldPoints(movableobjects.paddle2.shape:getPoints()))
  
  staticobjects.corner.body:setAngle(math.rad(55))
  staticobjects.corner2.body:setAngle(math.rad(125))
  staticobjects.corner3.body:setAngle(math.rad(125))
  staticobjects.corner4.body:setAngle(math.rad(55))
  love.graphics.polygon("line", staticobjects.corner.body:getWorldPoints(staticobjects.corner.shape:getPoints()))
  love.graphics.polygon("line", staticobjects.corner2.body:getWorldPoints(staticobjects.corner2.shape:getPoints()))
  love.graphics.polygon("line", staticobjects.corner3.body:getWorldPoints(staticobjects.corner3.shape:getPoints()))
  love.graphics.polygon("line", staticobjects.corner4.body:getWorldPoints(staticobjects.corner4.shape:getPoints()))
  
  love.graphics.print(text, 10, 10)
end