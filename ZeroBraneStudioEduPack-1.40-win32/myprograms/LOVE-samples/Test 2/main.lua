require "conf"

function love.load()
height = love.graphics.getHeight()
width = love.graphics.getWidth()

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
  column = 0; row = 1
  while 7 >= row do
    block = {}
    block.width = width/10 - 5
    block.height = 20
    block.x = column * (block.width + 5)
    block.y = (row * (block.height + 5)) + 220
    table.insert(blocks.draw, block)
    column = column + 1
    if column == 10 then 
      column = 0; row = row + 1 
    end
  end

  -- BALL
  ball = {}
    ball.radius = 5
    ball.x = width/2
    ball.y = 540
    ball.speed = 100
    ball.direction = "d"
    
    -- BALL2
  ball2 = {}
    ball2.radius = 5
    ball2.x = width/2
    ball2.y = 80
    ball2.speed = 100
    ball2.direction = "d"


  -- CHECK FOR BOUNCE
  function bounce()
    if ball.direction == "ull" then ball.direction = "dll"
    elseif ball.direction == "ul" then ball.direction = "dl"
    elseif ball.direction == "uul" then ball.direction = "ddl"
    elseif ball.direction == "u" then ball.direction = "d"
    elseif ball.direction == "uur" then ball.direction = "ddr"
    elseif ball.direction == "ur" then ball.direction = "dr"
    elseif ball.direction == "urr" then ball.direction = "drr"
    end
  end
  
  function bounce2()
    if ball2.direction == "ull" then ball2.direction = "dll"
    elseif ball2.direction == "ul" then ball2.direction = "dl"
    elseif ball2.direction == "uul" then ball2.direction = "ddl"
    elseif ball2.direction == "u" then ball2.direction = "d"
    elseif ball2.direction == "uur" then ball2.direction = "ddr"
    elseif ball2.direction == "ur" then ball2.direction = "dr"
    elseif ball2.direction == "urr" then ball2.direction = "drr"
    end
  end
  
  gamestate = "pregame"
  
end

function love.update(dt) 
  
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
  end
  
  -- Player 2 movement
  if love.keyboard.isDown("d") and player2.x <= (width - player2.width) then
    player2.x = player2.x + (dt * player2.speed)
  elseif love.keyboard.isDown("a") and player2.x >= 0 then
    player2.x = player2.x - (dt * player2.speed) 
  end
    
  if love.keyboard.isDown("space") then
    gamestate = "game"
  end
  
  -- Hitbox for player 1 ball 1
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
  
  -- Hitbox for player 2 ball 1
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
  if ball2.y >= player2.y and ball2.y <= height and ball2.x >= player2.x and
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
  if gamestate == "game" then
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
  
  -- Move ball2
  if gamestate == "game" then
    if ball2.direction == "u" then
      ball2.y = ball.y + 2 * (dt * ball2.speed)
    elseif ball2.direction == "uur" then
      ball2.y = ball2.y + 2 * (dt * ball2.speed)
      ball2.x = ball2.x - 1 * (dt * ball2.speed)
    elseif ball2.direction == "ur" then
      ball2.y = ball2.y + 2 * (dt * ball2.speed)
      ball2.x = ball2.x - 2 * (dt * ball2.speed)
    elseif ball2.direction == "urr" then
      ball2.y = ball2.y + 1 * (dt * ball2.speed)
      ball2.x = ball2.x - 2 * (dt * ball2.speed)
    elseif ball2.direction == "drr" then
      ball2.y = ball2.y - 1 * (dt * ball2.speed)
      ball2.x = ball2.x - 2 * (dt * ball2.speed)
    elseif ball2.direction == "dr" then
      ball2.y = ball2.y - 2 * (dt * ball2.speed)
      ball2.x = ball2.x - 2 * (dt * ball2.speed)
    elseif ball2.direction == "ddr" then
      ball2.y = ball2.y - 2 * (dt * ball2.speed)
      ball2.x = ball2.x - 1 * (dt * ball2.speed)
    elseif ball2.direction == "d" then
      ball2.y = ball2.y - 2 * (dt * ball2.speed)
    elseif ball2.direction == "ddl" then
      ball2.y = ball2.y - 2 * (dt * ball2.speed)
      ball2.x = ball2.x + 1 * (dt * ball2.speed)
    elseif ball2.direction == "dl" then
      ball2.y = ball2.y - 2 * (dt * ball2.speed)
      ball2.x = ball2.x + 2 * (dt * ball2.speed)
    elseif ball2.direction == "dll" then
      ball2.y = ball2.y - 1 * (dt * ball2.speed)
      ball2.x = ball2.x + 2 * (dt * ball2.speed)
    elseif ball2.direction == "ull" then
      ball2.y = ball2.y + 1 * (dt * ball2.speed)
      ball2.x = ball2.x + 2 * (dt * ball2.speed)
    elseif ball2.direction == "ul" then
      ball2.y = ball2.y + 2 * (dt * ball2.speed)
      ball2.x = ball2.x + 2 * (dt * ball2.speed)
    elseif ball2.direction == "uul" then
      ball2.y = ball2.y + 2 * (dt * ball2.speed)
      ball2.x = ball2.x + 1 * (dt * ball2.speed)
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
  end
  
  if ball2.y >= height then
    --love.audio.play(loss)
    player2.lives = player2.lives - 1; 
    ball2.radius = 5
    ball2.x = width/2
    ball2.y = player2.y + 50
    ball2.speed = 100
    ball2.direction = "d"
  end

  if player.lives < 0 then
    love.graphics.print("GAME OVER", width/2, height/2)
    love.load()
  end
  
  if player2.lives < 0 then
    love.graphics.print("GAME OVER", width/2, height/3)
    love.load()
  end
end

function love.draw()
-- Cooldown
  if gamestate == "pregame" then
    love.graphics.print("Get ready!", width/2, height/3)
  end
  -- Points/Lives
  love.graphics.print("Lives: " .. player.lives, 10, height - 50)
  love.graphics.print("Points: " .. player.points, 10, height - 30)
  love.graphics.print("Lives: " .. player2.lives, 10, height - 500)
  love.graphics.print("Points: " .. player2.points, 10, height - 450)
  
  -- Draw player 1
  love.graphics.setColor(255, 255, 255)
  love.graphics.rectangle("fill", player.x, player.y, player.width, player.height - 10)
  -- Draw player 2
  love.graphics.setColor(255, 255, 255)
  love.graphics.rectangle("fill", player2.x, player2.y, player2.width, player2.height - 10)

  -- Draw blocks
  love.graphics.setColor(255, 0, 0)
  iter = 0
  for i,v in pairs(blocks.draw) do
    love.graphics.rectangle("fill", v.x, v.y, v.width, v.height)
  end

  -- Draw ball 1
  love.graphics.setColor(255, 255, 255)
  love.graphics.circle("fill", ball.x, ball.y, ball.radius)
  
  -- Draw ball 2
  love.graphics.setColor(255, 255, 255)
  love.graphics.circle("fill", ball2.x, ball2.y, ball2.radius)
end