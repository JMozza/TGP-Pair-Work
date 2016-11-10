multiButton = {}

function multiButton_spawn(x,y,text,id)
    table.insert(multiButton, {x = x, y = y, text = text, id = id, mouseovertext = false})
end

function multiButton_draw()
  for i,v in ipairs(multiButton) do
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
            end
            if v.id == "xmasMulti" then
              gamestate = "xmasMulti"
            end
            if v.id == "multiBack" then
              gamestate = "modeSelect"
            end
        end            
    end
end