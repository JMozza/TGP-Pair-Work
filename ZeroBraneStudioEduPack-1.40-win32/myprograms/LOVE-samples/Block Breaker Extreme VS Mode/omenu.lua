obutton = {}

function obutton_spawn(x,y,text,id)
    table.insert(obutton, {x = x, y = y, text = text, id = id, mouseovertext = false})
end

function obutton_draw()
  for i,v in ipairs(obutton) do
    love.graphics.print(v.text,v.x,v.y)
  end
    love.graphics.setColor(255,255,255)
  end

function obutton_click(x,y)
    for i,v in ipairs(obutton) do
        if x > v.x and
        x < v.x + medium:getWidth(v.text) and
        y > v.y and
        y < v.y + medium:getHeight() then
            if v.id == "back" then
              gamestate = "menu"
            end
        end            
    end
end
