button = {}

function button_spawn(x,y,text,id)
    table.insert(button, {x = x, y = y, text = text, id = id, mouseovertext = false})
end

function button_draw()
  for i,v in ipairs(button) do
    if v.mouseovertext == true then
      love.graphics.setFont(big)
    end
    if v.mouseovertext == false then
      love.graphics.setFont(medium)
    end
    love.graphics.print(v.text,v.x,v.y)
  end
    love.graphics.setColor(255,255,255)
  end

function button_click(x,y)
    for i,v in ipairs(button) do
        if x > v.x and
        x < v.x + medium:getWidth(v.text) and
        y > v.y and
        y < v.y + medium:getHeight() then            
            if v.id == "start" then
              gamestate = "modeSelect"
              menuClick:play()
            end
            if v.id == "options" then
              gamestate = "options"
              menuClick:play()
            end
            if v.id == "quit" then
                love.event.push("quit")
                menuClick:play()
            end
            if v.id == "test2" then
                gamestate = "test2"
            end
            if v.id == "mute" then
              menuClick:setVolume(0.0)
              levelStart:setVolume(0.0)
              blockBounce:setVolume(0.0)
              paddleBounce:setVolume(0.0)
              winnerSound:setVolume(0.0)
              backgroundSound:setVolume(0.0)                
            end
        end            
    end
end

function button_check()
  for i,v in ipairs(button) do
    if mousex > v.x and
    mousex < v.x + medium:getWidth(v.text) and
    mousey > v.y and
    mousey < v.y + medium:getHeight() then
      v.mouseovertext = true
    else
      v.mouseovertext = false
    end
  end
end
