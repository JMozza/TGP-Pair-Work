multiButton = {}

function multiButton_spawn(x,y,text,id)
    table.insert(multiButton, {x = x, y = y, text = text, id = id, mouseovertext = false})
end

function multiButton_draw()
  for i,v in ipairs(multiButton) do
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

function multiButton_click(x,y)
    for i,v in ipairs(multiButton) do
        if x > v.x and
        x < v.x + medium:getWidth(v.text) and
        y > v.y and
        y < v.y + medium:getHeight() then
            if v.id == "halloweenMulti" then
              gamestate = "halloweenMulti"
              menuClick:play()
            end
            if v.id == "xmasMulti" then
              gamestate = "xmasMulti"
              menuClick:play()
            end
            if v.id == "multiBack" then
              gamestate = "modeSelect"
              menuClick:play()
            end
        end            
    end
end

function multiButton_check()
  for i,v in ipairs(multiButton) do
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