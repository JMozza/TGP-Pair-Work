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
function testDestoryed()
  
  if (staticobjects.block.body:getUserData() == "null") then
    staticobjects.block.body:setX(500)
  end
  if (staticobjects.block2.body:getUserData() == "null") then
    staticobjects.block2.body:setX(500)
  end
  if (staticobjects.block3.body:getUserData() == "null") then
    staticobjects.block3.body:setX(500)
  end
  if (staticobjects.block4.body:getUserData() == "null") then
    staticobjects.block4.body:setX(500)
  end
  if (staticobjects.block5.body:getUserData() == "null") then
    staticobjects.block5.body:setX(500)
  end
  
end


 
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

  love.graphics.draw(halBackground, halBackgroundQuad, 0, 0)
  
  love.graphics.draw(blockHalLayer1_7, staticobjects.block.body:getX()-36, staticobjects.block.body:getY()-10.5)
  love.graphics.draw(blockHalLayer1_7, staticobjects.block2.body:getX()-36, staticobjects.block2.body:getY()-10.5)
  love.graphics.draw(blockHalLayer1_7, staticobjects.block3.body:getX()-36, staticobjects.block3.body:getY()-10.5)
  love.graphics.draw(blockHalLayer1_7, staticobjects.block4.body:getX()-36, staticobjects.block4.body:getY()-10.5)
  love.graphics.draw(blockHalLayer1_7, staticobjects.block5.body:getX()-36, staticobjects.block5.body:getY()-10.5)
  
  love.graphics.draw(blockHalLayer2_6, staticobjects.block6.body:getX()-36, staticobjects.block6.body:getY()-10.5)
  love.graphics.draw(blockHalLayer2_6, staticobjects.block7.body:getX()-36, staticobjects.block7.body:getY()-10.5)
  love.graphics.draw(blockHalLayer2_6, staticobjects.block8.body:getX()-36, staticobjects.block8.body:getY()-10.5)
  love.graphics.draw(blockHalLayer2_6, staticobjects.block9.body:getX()-36, staticobjects.block9.body:getY()-10.5)
  love.graphics.draw(blockHalLayer2_6, staticobjects.block10.body:getX()-36, staticobjects.block10.body:getY()-10.5)

  love.graphics.draw(blockHalLayer3_5, staticobjects.block11.body:getX()-36, staticobjects.block11.body:getY()-10.5)
  love.graphics.draw(blockHalLayer3_5, staticobjects.block12.body:getX()-36, staticobjects.block12.body:getY()-10.5)
  love.graphics.draw(blockHalLayer3_5, staticobjects.block13.body:getX()-36, staticobjects.block13.body:getY()-10.5)
  love.graphics.draw(blockHalLayer3_5, staticobjects.block14.body:getX()-36, staticobjects.block14.body:getY()-10.5)
  love.graphics.draw(blockHalLayer3_5, staticobjects.block15.body:getX()-36, staticobjects.block15.body:getY()-10.5)
  
  love.graphics.draw(blockHalLayer4, staticobjects.block16.body:getX()-36, staticobjects.block16.body:getY()-10.5)
  love.graphics.draw(blockHalLayer4, staticobjects.block17.body:getX()-36, staticobjects.block17.body:getY()-10.5)
  love.graphics.draw(blockHalLayer4, staticobjects.block18.body:getX()-36, staticobjects.block18.body:getY()-10.5)
  love.graphics.draw(blockHalLayer4, staticobjects.block19.body:getX()-36, staticobjects.block19.body:getY()-10.5)
  love.graphics.draw(blockHalLayer4, staticobjects.block20.body:getX()-36, staticobjects.block20.body:getY()-10.5)

  love.graphics.draw(blocklayer5fliped, staticobjects.block21.body:getX()-36, staticobjects.block21.body:getY()-10.5)
  love.graphics.draw(blocklayer5fliped, staticobjects.block22.body:getX()-36, staticobjects.block22.body:getY()-10.5)
  love.graphics.draw(blocklayer5fliped, staticobjects.block23.body:getX()-36, staticobjects.block23.body:getY()-10.5)
  love.graphics.draw(blocklayer5fliped, staticobjects.block24.body:getX()-36, staticobjects.block24.body:getY()-10.5)
  love.graphics.draw(blocklayer5fliped, staticobjects.block25.body:getX()-36, staticobjects.block25.body:getY()-10.5)
  
  love.graphics.draw(blocklayer6fliped, staticobjects.block26.body:getX()-36, staticobjects.block26.body:getY()-10.5)
  love.graphics.draw(blocklayer6fliped, staticobjects.block27.body:getX()-36, staticobjects.block27.body:getY()-10.5)
  love.graphics.draw(blocklayer6fliped, staticobjects.block28.body:getX()-36, staticobjects.block28.body:getY()-10.5)
  love.graphics.draw(blocklayer6fliped, staticobjects.block29.body:getX()-36, staticobjects.block29.body:getY()-10.5)
  love.graphics.draw(blocklayer6fliped, staticobjects.block30.body:getX()-36, staticobjects.block30.body:getY()-10.5)
  
  love.graphics.draw(blocklayer7fliped, staticobjects.block31.body:getX()-36, staticobjects.block31.body:getY()-10.5)
  love.graphics.draw(blocklayer7fliped, staticobjects.block32.body:getX()-36, staticobjects.block32.body:getY()-10.5)
  love.graphics.draw(blocklayer7fliped, staticobjects.block33.body:getX()-36, staticobjects.block33.body:getY()-10.5)
  love.graphics.draw(blocklayer7fliped, staticobjects.block34.body:getX()-36, staticobjects.block34.body:getY()-10.5)
  love.graphics.draw(blocklayer7fliped, staticobjects.block35.body:getX()-36, staticobjects.block35.body:getY()-10.5)
  
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