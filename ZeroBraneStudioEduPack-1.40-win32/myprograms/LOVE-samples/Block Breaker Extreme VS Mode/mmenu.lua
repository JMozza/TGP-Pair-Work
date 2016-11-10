mbutton = {}

function mbutton_spawn(x,y,text,id)
    table.insert(mbutton, {x = x, y = y, text = text, id = id, mouseovertext = false})
end

function mbutton_draw()
  for i,v in ipairs(mbutton) do
    love.graphics.print(v.text,v.x,v.y)
  end
    love.graphics.setColor(255,255,255)
  end

function mbutton_click(x,y)
    for i,v in ipairs(mbutton) do
        if x > v.x and
        x < v.x + medium:getWidth(v.text) and
        y > v.y and
        y < v.y + medium:getHeight() then
            if v.id == "single" then
              gamestate = "levelSelectSingle"
            end
            if v.id == "multi" then
              gamestate = "levelSelectMulti"
            end
            if v.id == "mback" then
              gamestate = "menu"
            end
        end            
    end
end