restartbuttonSingle = {}

function restartbuttonSingle_spawn(x,y,text,id)
    table.insert(restartbuttonSingle, {x = x, y = y, text = text, id = id, mouseovertext = false})
end

function restartbuttonSingle_draw()
  for i,v in ipairs(restartbuttonSingle) do
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

function restartbuttonSingle_click(x,y)
    for i,v in ipairs(restartbuttonSingle) do
        if x > v.x and
        x < v.x + medium:getWidth(v.text) and
        y > v.y and
        y < v.y + medium:getHeight() then
            if v.id == "restart" then
              gamestate = "halloweenSingle"
              reLoad()
              menuClick:play()
              winnerSound:stop()
            end
            if v.id == "mainMenu" then
              gamestate = "menu"
              reLoad()
              menuClick:play()
              winnerSound:stop()
            end
        end            
    end
end

function restartbuttonSingle_check()
  for i,v in ipairs(restartbuttonSingle) do
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