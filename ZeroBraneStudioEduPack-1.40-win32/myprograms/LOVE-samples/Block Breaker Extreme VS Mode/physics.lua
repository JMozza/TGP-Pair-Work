function physicsLoad()
  love.physics.setMeter(64)
  world = love.physics.newWorld(0, 9.81 * 64, true)
  
  objects = {}
  
  objects.ball = {}
  objects.ball.body = love.physics.newBody(world, 800/2, 600/2, "dynamic")
  objects.ball.shape = love.physics.newCircleShape(20)
  objects.ball.fixture = love.physics.newFixture(objects.ball.body, objects.ball.shape, 1)
  objects.ball.fixture:setRestitution(0.9)
end

function physicsUpdate(dt)
  world:update(dt)
end

function physicsDraw()
  
end
