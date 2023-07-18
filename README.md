# Bersice-UI
Bersice-UI-Lib

```lua
local UI = loadstring(game:HttpGet("https://raw.githubusercontent.com/3345-c-a-t-s-u-s/Bersice-UI/main/main.lua"))()

local Window = UI:NewWindow("Window")
local Tab = Window:NewTab("Tab")

Tab:NewButton('Button',function()
	print('fire')
end)

local slider = Tab:NewSlider('Slider',1,100,function(numer)
	print(numer)
end)

slider(25)

Tab:NewToggle('Toggle',false,function(toggle)
	print(toggle)
end)

Tab:NewKeybind("Kb",Enum.KeyCode.X,function(ll)
	print(ll)
end)

local db = Tab:NewDropdown('db',{"1","2","3"},function(val)
	print(val)
end)

db({"js","py",'lua'})

Tab:NewTitle("title")

Tab:NewTextBox("box",'input',"",function(val)
	print(val)
end)
```
