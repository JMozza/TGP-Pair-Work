resumebutton = {}

function resumebutton_spawn(x,y,text,id)
    table.insert(resumebutton, {x = x, y = y, text = text, id = id, mouseovertext = false})
end

function resumebutton_draw()
  for i,v in ipairs(resumebutton) do
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

function resumebutton_click(x,y)
    for i,v in ipairs(resumebutton) do
        if x > v.x and
        x < v.x + medium:getWidth(v.text) and
        y > v.y and
        y < v.y + medium:getHeight() then
            if v.id == "resume" then
              paused = false
              menuClick:play()
            end
            if v.id == "return" then
              paused = false
              gamestate = "menu"
              menuClick:play()
            end
        end            
    end
end

function resumebutton_check()
  for i,v in ipairs(resumebutton) do
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