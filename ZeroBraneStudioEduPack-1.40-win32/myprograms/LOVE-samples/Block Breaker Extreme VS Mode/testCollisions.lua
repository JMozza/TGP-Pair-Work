function TestCollisionBall1()
  --layer 1 for ball 1
  if(CheckCollision(ballobjects.ball1.body:getX() + ballradius, ballobjects.ball1.body:getY() + ballradius, ballBoundingSqurare, ballBoundingSqurare, staticobjects.block.body:getX()-36, staticobjects.block.body:getY()-10.5, 72, 21)) then
    staticobjects.block.body:setX(500)
  end
  if(CheckCollision(ballobjects.ball1.body:getX() + ballradius, ballobjects.ball1.body:getY() + ballradius, ballBoundingSqurare, ballBoundingSqurare, staticobjects.block2.body:getX()-36, staticobjects.block2.body:getY()-10.5, 72, 21)) then
    staticobjects.block2.body:setX(500)
  end
  if(CheckCollision(ballobjects.ball1.body:getX() + ballradius, ballobjects.ball1.body:getY() + ballradius, ballBoundingSqurare, ballBoundingSqurare, staticobjects.block3.body:getX()-36, staticobjects.block3.body:getY()-10.5, 72, 21)) then
    staticobjects.block3.body:setX(500)
  end
  if(CheckCollision(ballobjects.ball1.body:getX() + ballradius, ballobjects.ball1.body:getY() + ballradius, ballBoundingSqurare, ballBoundingSqurare, staticobjects.block4.body:getX()-36, staticobjects.block4.body:getY()-10.5, 72, 21)) then
    staticobjects.block4.body:setX(500)
  end
  if(CheckCollision(ballobjects.ball1.body:getX() + ballradius, ballobjects.ball1.body:getY() + ballradius, ballBoundingSqurare, ballBoundingSqurare, staticobjects.block5.body:getX()-36, staticobjects.block5.body:getY()-10.5, 72, 21)) then
    staticobjects.block5.body:setX(500)
  end
end

function TestCollisionBall2()
  --layer 1 for ball 2
  if(CheckCollision(ballobjects.ball2.body:getX() - ballradius, ballobjects.ball2.body:getY() - ballradius, ballBoundingSqurare, ballBoundingSqurare, staticobjects.block31.body:getX()-36, staticobjects.block31.body:getY()-10.5, 72, 21)) then
    staticobjects.block31.body:setX(500)
  end
  if(CheckCollision(ballobjects.ball2.body:getX() - ballradius, ballobjects.ball2.body:getY() - ballradius, ballBoundingSqurare, ballBoundingSqurare, staticobjects.block32.body:getX()-36, staticobjects.block32.body:getY()-10.5, 72, 21)) then
    staticobjects.block32.body:setX(500)
  end
  if(CheckCollision(ballobjects.ball2.body:getX() - ballradius, ballobjects.ball2.body:getY() - ballradius, ballBoundingSqurare, ballBoundingSqurare, staticobjects.block33.body:getX()-36, staticobjects.block33.body:getY()-10.5, 72, 21)) then
    staticobjects.block33.body:setX(500)
  end
  if(CheckCollision(ballobjects.ball2.body:getX() - ballradius, ballobjects.ball2.body:getY() - ballradius, ballBoundingSqurare, ballBoundingSqurare, staticobjects.block34.body:getX()-36, staticobjects.block34.body:getY()-10.5, 72, 21)) then
    staticobjects.block34.body:setX(500)
  end
  if(CheckCollision(ballobjects.ball2.body:getX() - ballradius, ballobjects.ball2.body:getY() - ballradius, ballBoundingSqurare, ballBoundingSqurare, staticobjects.block35.body:getX()-36, staticobjects.block35.body:getY()-10.5, 72, 21)) then
    staticobjects.block35.body:setX(500)
  end
  
  
  if(CheckCollision(ballobjects.ball2.body:getX() + ballradius, ballobjects.ball2.body:getY() + ballradius, ballBoundingSqurare, ballBoundingSqurare, block1X, block1Y, 72, 21)) then
    block1X = 500
  end
  if(CheckCollision(ballobjects.ball2.body:getX() + ballradius, ballobjects.ball2.body:getY() + ballradius, ballBoundingSqurare, ballBoundingSqurare, block2X, block2Y, 72, 21)) then
    block2X = 500
  end
  if(CheckCollision(ballobjects.ball2.body:getX() + ballradius, ballobjects.ball2.body:getY() + ballradius, ballBoundingSqurare, ballBoundingSqurare, block3X, block3Y, 72, 21)) then
    block3X = 500
  end
  if(CheckCollision(ballobjects.ball2.body:getX() + ballradius, ballobjects.ball2.body:getY() + ballradius, ballBoundingSqurare, ballBoundingSqurare, block4X, block4Y, 72, 21)) then
    block4X = 500
  end
  if(CheckCollision(ballobjects.ball2.body:getX() + ballradius, ballobjects.ball2.body:getY() + ballradius, ballBoundingSqurare, ballBoundingSqurare, block5X, block5Y, 72, 21)) then
    block5X = 500
  end
  
  --layer 2 for ball 2
  if(CheckCollision(ballobjects.ball2.body:getX() + ballradius, ballobjects.ball2.body:getY() + ballradius, ballBoundingSqurare, ballBoundingSqurare, block6X, block6Y, 72, 21)) then
    block6X = 500
  end
  if(CheckCollision(ballobjects.ball2.body:getX() + ballradius, ballobjects.ball2.body:getY() + ballradius, ballBoundingSqurare, ballBoundingSqurare, block7X, block7Y, 72, 21)) then
    block7X = 500
  end
  if(CheckCollision(ballobjects.ball2.body:getX() + ballradius, ballobjects.ball2.body:getY() + ballradius, ballBoundingSqurare, ballBoundingSqurare, block8X, block8Y, 72, 21)) then
    block8X = 500
  end
  if(CheckCollision(ballobjects.ball2.body:getX() + ballradius, ballobjects.ball2.body:getY() + ballradius, ballBoundingSqurare, ballBoundingSqurare, block9X, block9Y, 72, 21)) then
    block9X = 500
  end
  if(CheckCollision(ballobjects.ball2.body:getX() + ballradius, ballobjects.ball2.body:getY() + ballradius, ballBoundingSqurare, ballBoundingSqurare, block10X, block10Y, 72, 21)) then
    block10X = 500
  end
  
  --layer 3 for ball 2
  if(CheckCollision(ballobjects.ball2.body:getX() + ballradius, ballobjects.ball2.body:getY() + ballradius, ballBoundingSqurare, ballBoundingSqurare, block11X, block11Y, 72, 21)) then
    block11X = 500
  end
  if(CheckCollision(ballobjects.ball2.body:getX() + ballradius, ballobjects.ball2.body:getY() + ballradius, ballBoundingSqurare, ballBoundingSqurare, block12X, block12Y, 72, 21)) then
    block12X = 500
  end
  if(CheckCollision(ballobjects.ball2.body:getX() + ballradius, ballobjects.ball2.body:getY() + ballradius, ballBoundingSqurare, ballBoundingSqurare, block13X, block13Y, 72, 21)) then
    block13X = 500
  end
  if(CheckCollision(ballobjects.ball2.body:getX() + ballradius, ballobjects.ball2.body:getY() + ballradius, ballBoundingSqurare, ballBoundingSqurare, block14X, block14Y, 72, 21)) then
    block14X = 500
  end
  if(CheckCollision(ballobjects.ball2.body:getX() + ballradius, ballobjects.ball2.body:getY() + ballradius, ballBoundingSqurare, ballBoundingSqurare, block15X, block15Y, 72, 21)) then
    block15X = 500
  end
  
  --layer 4 for ball 2
  if(CheckCollision(ballobjects.ball2.body:getX() + ballradius, ballobjects.ball2.body:getY() + ballradius, ballBoundingSqurare, ballBoundingSqurare, block16X, block16Y, 72, 21)) then
    block16X = 500
  end
  if(CheckCollision(ballobjects.ball2.body:getX() + ballradius, ballobjects.ball2.body:getY() + ballradius, ballBoundingSqurare, ballBoundingSqurare, block17X, block17Y, 72, 21)) then
    block17X = 500
  end
  if(CheckCollision(ballobjects.ball2.body:getX() + ballradius, ballobjects.ball2.body:getY() + ballradius, ballBoundingSqurare, ballBoundingSqurare, block18X, block18Y, 72, 21)) then
    block18X = 500
  end
  if(CheckCollision(ballobjects.ball2.body:getX() + ballradius, ballobjects.ball2.body:getY() + ballradius, ballBoundingSqurare, ballBoundingSqurare, block19X, block19Y, 72, 21)) then
    block19X = 500
  end
  if(CheckCollision(ballobjects.ball2.body:getX() + ballradius, ballobjects.ball2.body:getY() + ballradius, ballBoundingSqurare, ballBoundingSqurare, block20X, block20Y, 72, 21)) then
    block20X = 500
  end
  
  --layer 5 for ball 2
  if(CheckCollision(ballobjects.ball2.body:getX() + ballradius, ballobjects.ball2.body:getY() + ballradius, ballBoundingSqurare, ballBoundingSqurare, block21X, block21Y, 72, 21)) then
    block21X = 500
  end
  if(CheckCollision(ballobjects.ball2.body:getX() + ballradius, ballobjects.ball2.body:getY() + ballradius, ballBoundingSqurare, ballBoundingSqurare, block22X, block22Y, 72, 21)) then
    block22X = 500
  end
  if(CheckCollision(ballobjects.ball2.body:getX() + ballradius, ballobjects.ball2.body:getY() + ballradius, ballBoundingSqurare, ballBoundingSqurare, block23X, block23Y, 72, 21)) then
    block23X = 500
  end
  if(CheckCollision(ballobjects.ball2.body:getX() + ballradius, ballobjects.ball2.body:getY() + ballradius, ballBoundingSqurare, ballBoundingSqurare, block24X, block24Y, 72, 21)) then
    block24X = 500
  end
  if(CheckCollision(ballobjects.ball2.body:getX() + ballradius, ballobjects.ball2.body:getY() + ballradius, ballBoundingSqurare, ballBoundingSqurare, block25X, block25Y, 72, 21)) then
    block25X = 500
  end
  
  --layer 6 for ball 2
  if(CheckCollision(ballobjects.ball2.body:getX() + ballradius, ballobjects.ball2.body:getY() + ballradius, ballBoundingSqurare, ballBoundingSqurare, block26X, block26Y, 72, 21)) then
    block26X = 500
  end
  if(CheckCollision(ballobjects.ball2.body:getX() + ballradius, ballobjects.ball2.body:getY() + ballradius, ballBoundingSqurare, ballBoundingSqurare, block27X, block27Y, 72, 21)) then
    block27X = 500
  end
  if(CheckCollision(ballobjects.ball2.body:getX() + ballradius, ballobjects.ball2.body:getY() + ballradius, ballBoundingSqurare, ballBoundingSqurare, block28X, block28Y, 72, 21)) then
    block28X = 500
  end
  if(CheckCollision(ballobjects.ball2.body:getX() + ballradius, ballobjects.ball2.body:getY() +ballradius, ballBoundingSqurare, ballBoundingSqurare, block29X, block29Y, 72, 21)) then
    block29X = 500
  end
  if(CheckCollision(ballobjects.ball2.body:getX() + ballradius, ballobjects.ball2.body:getY() + ballradius, ballBoundingSqurare, ballBoundingSqurare, block30X, block30Y, 72, 21)) then
    block30X = 500
  end
  
  --layer 7 for ball 2
  if(CheckCollision(ballobjects.ball2.body:getX() + ballradius, ballobjects.ball2.body:getY() + ballradius, ballBoundingSqurare, ballBoundingSqurare, block31X, block31Y, 72, 21)) then
    block31X = 500
  end
  if(CheckCollision(ballobjects.ball2.body:getX() + ballradius, ballobjects.ball2.body:getY() + ballradius, ballBoundingSqurare, ballBoundingSqurare, block32X, block32Y, 72, 21)) then
    block32X = 500
  end
  if(CheckCollision(ballobjects.ball2.body:getX() + ballradius, ballobjects.ball2.body:getY() + ballradius, ballBoundingSqurare, ballBoundingSqurare, block33X, block33Y, 72, 21)) then
    block33X = 500
  end
  if(CheckCollision(ballobjects.ball2.body:getX() + ballradius, ballobjects.ball2.body:getY() + ballradius, ballBoundingSqurare, ballBoundingSqurare, block34X, block34Y, 72, 21)) then
    block34X = 500
  end
  if(CheckCollision(ballobjects.ball2.body:getX() + ballradius, ballobjects.ball2.body:getY() + ballradius, ballBoundingSqurare, ballBoundingSqurare, block35X, block35Y, 72, 21)) then
    block35X = 500
  end
end