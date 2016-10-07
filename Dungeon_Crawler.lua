local args = {...}
local direction = args[1]

local i = 0
local slot = 1

while true do
turtle.forward()


if turtle.detect() = false then--nothing in front

  if direction ="Left" then
    if turtle.detectLeft() then 
        turtle.turnLeft()
        break
    end
  else
     if turtle.detectRight() then 
        turtle.turnRight()
        break
    end
  end

break
else 
if direction ="Left" then
turtle.turnRight() -- something is in front turn right 
else
turtle.turnLeft() -- something is in front turn left 
end
break
end

i = i +1

local mod = i % 10

if mod=0 then
turtle.select(slot)
if turtle.getItemCount(slot) = 0 then
slot = slot +1
end
turtle.place()

end
end