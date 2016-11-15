pausebutton = {}

function pausebutton_spawn(x,y,text,id)
    table.insert(pausebutton, {x = x, y = y, text = text, id = id, mouseovertext = false})
end

function pausebutton_draw()
  for i,v in ipairs(pausebutton) do
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

function pausebutton_click(x,y)
    for i,v in ipairs(pausebutton) do
        if x > v.x and
        x < v.x + medium:getWidth(v.text) and
        y > v.y and
        y < v.y + medium:getHeight() then
            if v.id == "paused" then
              paused = true
            end
        end            
    end
end

function pausebutton_check()
  for i,v in ipairs(pausebutton) do
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