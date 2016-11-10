singleButton = {}

function singleButton_spawn(x,y,text,id)
    table.insert(singleButton, {x = x, y = y, text = text, id = id, mouseovertext = false})
end

function singleButton_draw()
  for i,v in ipairs(singleButton) do
    love.graphics.print(v.text,v.x,v.y)
  end
    love.graphics.setColor(255,255,255)
  end

function singleButton_click(x,y)
    for i,v in ipairs(singleButton) do
        if x > v.x and
        x < v.x + medium:getWidth(v.text) and
        y > v.y and
        y < v.y + medium:getHeight() then
            if v.id == "halloweenSingle" then
              gamestate = "halloweenSingle"
            end
            if v.id == "xmasSingle" then
              gamestate = "xmasSingle"
            end
            if v.id == "singleBack" then
              gamestate = "modeSelect"
            end
        end            
    end
end