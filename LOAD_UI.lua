local core = game:FindFirstChild('CoreGui') or game.Players.LocalPlayer.PlayerGui
local IMG = "rbxassetid://6862780932"
local TextList = {"Loading","Loading Commands","Loading UI","Loading Functions","Request API","Loading API","Checking User","Checking Script Stats"}

if _G.LOADDED_IMG ~= nil then
	IMG = _G.LOADDED_IMG
end

local function start()
	local ScreenGui = Instance.new("ScreenGui")
	local Frame = Instance.new("Frame")
	local DropShadow = Instance.new("ImageLabel")
	local Title = Instance.new("TextLabel")
	local UnderTitle = Instance.new("TextLabel")
	local LoadImg = Instance.new("ImageLabel")
	local DropShadow_2 = Instance.new("ImageLabel")
	local UICorner = Instance.new("UICorner")
	local LoadedFrame = Instance.new("Frame")
	local UICorner_2 = Instance.new("UICorner")
	local DropShadow_3 = Instance.new("ImageLabel")

	ScreenGui.Parent = core
	ScreenGui.ResetOnSpawn = false
	ScreenGui.IgnoreGuiInset = true
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global
	
	Frame.Parent = ScreenGui
	Frame.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
	Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame.BorderSizePixel = 0
	Frame.ClipsDescendants = true
	Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
	Frame.Size = UDim2.new(0.5, 0, 0.349999994, 0)
	Frame.SizeConstraint = Enum.SizeConstraint.RelativeYY

	DropShadow.Name = "DropShadow"
	DropShadow.Parent = Frame
	DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
	DropShadow.BackgroundTransparency = 1.000
	DropShadow.BorderSizePixel = 0
	DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
	DropShadow.Rotation = 0.001
	DropShadow.Size = UDim2.new(1, 47, 1, 47)
	DropShadow.ZIndex = -5
	DropShadow.Image = "rbxassetid://6014261993"
	DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
	DropShadow.ImageTransparency = 0.500
	DropShadow.ScaleType = Enum.ScaleType.Slice
	DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)

	Title.Name = "Title"
	Title.Parent = Frame
	Title.AnchorPoint = Vector2.new(0.5, 0.100000001)
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Title.BorderSizePixel = 0
	Title.Position = UDim2.new(0.5, 0, 0.0500000007, 0)
	Title.Size = UDim2.new(0.949999988, 0, 0.109999999, 0)
	Title.Font = Enum.Font.GothamBold
	Title.Text = "Bedol Hub"
	Title.TextColor3 = Color3.fromRGB(255, 255, 255)
	Title.TextScaled = true
	Title.TextSize = 14.000
	Title.TextWrapped = true

	UnderTitle.Name = "UnderTitle"
	UnderTitle.Parent = Frame
	UnderTitle.AnchorPoint = Vector2.new(0.5, 0.100000001)
	UnderTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	UnderTitle.BackgroundTransparency = 1.000
	UnderTitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
	UnderTitle.BorderSizePixel = 0
	UnderTitle.Position = UDim2.new(0.50000006, 0, 0.155298948, 0)
	UnderTitle.Size = UDim2.new(0.949999988, 0, 0.0954425335, 0)
	UnderTitle.Font = Enum.Font.ArialBold
	UnderTitle.Text = "Loading"
	UnderTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
	UnderTitle.TextScaled = true
	UnderTitle.TextSize = 14.000
	UnderTitle.TextTransparency = 0.500
	UnderTitle.TextWrapped = true

	LoadImg.Name = "LoadImg"
	LoadImg.Parent = Frame
	LoadImg.AnchorPoint = Vector2.new(0.5, 0.5)
	LoadImg.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	LoadImg.BackgroundTransparency = 1.000
	LoadImg.BorderColor3 = Color3.fromRGB(0, 0, 0)
	LoadImg.BorderSizePixel = 0
	LoadImg.Position = UDim2.new(0.49660331, 0, 0.572787225, 0)
	LoadImg.Size = UDim2.new(0.600000024, 0, 0.600000024, 0)
	LoadImg.SizeConstraint = Enum.SizeConstraint.RelativeYY
	LoadImg.ZIndex = 5
	LoadImg.Image = IMG or "rbxassetid://6862780932"
	LoadImg.ScaleType = Enum.ScaleType.Crop

	DropShadow_2.Name = "DropShadow"
	DropShadow_2.Parent = LoadImg
	DropShadow_2.AnchorPoint = Vector2.new(0.5, 0.5)
	DropShadow_2.BackgroundTransparency = 1.000
	DropShadow_2.BorderSizePixel = 0
	DropShadow_2.Position = UDim2.new(0.5, 0, 0.5, 0)
	DropShadow_2.Size = UDim2.new(1, 47, 1, 47)
	DropShadow_2.ZIndex = 4
	DropShadow_2.Image = "rbxassetid://6014261993"
	DropShadow_2.ImageColor3 = Color3.fromRGB(0, 0, 0)
	DropShadow_2.ImageTransparency = 0.500
	DropShadow_2.ScaleType = Enum.ScaleType.Slice
	DropShadow_2.SliceCenter = Rect.new(49, 49, 450, 450)

	UICorner.Parent = LoadImg

	LoadedFrame.Name = "LoadedFrame"
	LoadedFrame.Parent = Frame
	LoadedFrame.BackgroundColor3 = Color3.fromRGB(152, 152, 152)
	LoadedFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	LoadedFrame.BorderSizePixel = 0
	LoadedFrame.Position = UDim2.new(-0.0798233747, 0, 0.951086938, 0)
	LoadedFrame.Size = UDim2.new(0.0500000007, 0, 0.200000003, 0)
	LoadedFrame.ZIndex = 7

	UICorner_2.Parent = LoadedFrame

	DropShadow_3.Name = "DropShadow"
	DropShadow_3.Parent = LoadedFrame
	DropShadow_3.AnchorPoint = Vector2.new(0.5, 0.5)
	DropShadow_3.BackgroundTransparency = 1.000
	DropShadow_3.BorderSizePixel = 0
	DropShadow_3.Position = UDim2.new(0.5, 0, 0.5, 0)
	DropShadow_3.Size = UDim2.new(1, 47, 1, 47)
	DropShadow_3.ZIndex = 5
	DropShadow_3.Image = "rbxassetid://6014261993"
	DropShadow_3.ImageColor3 = Color3.fromRGB(0, 0, 0)
	DropShadow_3.ImageTransparency = 0.500
	DropShadow_3.ScaleType = Enum.ScaleType.Slice
	DropShadow_3.SliceCenter = Rect.new(49, 49, 450, 450)
	
	Title.TextTransparency = 1
	UnderTitle.TextTransparency = 1
	LoadImg.ImageTransparency = 1
	DropShadow.ImageTransparency = 1
	DropShadow_2.ImageTransparency = 1
	DropShadow_3.ImageTransparency = 1
	
	Frame.Size = UDim2.new(0.1,0,0,0)
	Frame.BackgroundTransparency = 1
	
	local back = Enum.EasingStyle.Back
	local currntTime = 0.35
	local ImageTransparencyTarget = 0.5
	wait(0.1)
	
	game:GetService('TweenService'):Create(Frame,TweenInfo.new(currntTime),{
		BackgroundTransparency = 0

	}):Play()
	
	game:GetService('TweenService'):Create(Frame,TweenInfo.new(0.5),{
		Size = UDim2.new(0.1,0,0.35,0)
	}):Play()
	
	wait(0.55)
	
	game:GetService('TweenService'):Create(Frame,TweenInfo.new(0.5,back),{
		Size = UDim2.new(0.5,0,0.35,0)
	}):Play()
	
	wait(0.5)
	
	game:GetService('TweenService'):Create(Title,TweenInfo.new(currntTime),{
		TextTransparency = 0

	}):Play()
	
	game:GetService('TweenService'):Create(UnderTitle,TweenInfo.new(currntTime),{
		TextTransparency = ImageTransparencyTarget

	}):Play()
	
	game:GetService('TweenService'):Create(LoadImg,TweenInfo.new(currntTime),{
		ImageTransparency = 0

	}):Play()
	
	game:GetService('TweenService'):Create(DropShadow,TweenInfo.new(currntTime),{
		ImageTransparency = ImageTransparencyTarget

	}):Play()
	
	game:GetService('TweenService'):Create(DropShadow_2,TweenInfo.new(currntTime),{
		ImageTransparency = ImageTransparencyTarget

	}):Play()
	
	game:GetService('TweenService'):Create(DropShadow_3,TweenInfo.new(currntTime),{
		ImageTransparency = ImageTransparencyTarget

	}):Play()
	
	wait(0.35)
	
	for i=1,#TextList do
		local AddSize = Random.new():NextNumber(0.1,0.2)
		local OldSize = LoadedFrame.Size.X.Scale
		local NewSize = UDim2.new(OldSize + AddSize,0,0.2,0)
		local tween = game:GetService('TweenService'):Create(LoadedFrame,TweenInfo.new(AddSize * 1.5,Enum.EasingStyle.Quad),{Size = NewSize})
		tween:Play()
		UnderTitle.TextTransparency = 0.1
		UnderTitle.Text = TextList[i]
		
		game:GetService('TweenService'):Create(UnderTitle,TweenInfo.new(0.3),{TextTransparency = 0.5}):Play()
		tween.Completed:Wait()
		wait(0.1)
	end
	
	game:GetService('TweenService'):Create(LoadedFrame,TweenInfo.new(1.5,Enum.EasingStyle.Quad),{Size = UDim2.new(1.2,0,0.2,0)}):Play()
	
	wait(0.55)
	
	game:GetService('TweenService'):Create(LoadedFrame,TweenInfo.new(1.5,Enum.EasingStyle.Quad),{BackgroundTransparency = 1}):Play()
	
	
	local currntTime = 0.35
	local ImageTransparencyTarget = 1
	
	game:GetService('TweenService'):Create(Title,TweenInfo.new(currntTime),{
		TextTransparency = 1

	}):Play()

	game:GetService('TweenService'):Create(UnderTitle,TweenInfo.new(currntTime),{
		TextTransparency = ImageTransparencyTarget

	}):Play()

	game:GetService('TweenService'):Create(LoadImg,TweenInfo.new(currntTime),{
		ImageTransparency = 1

	}):Play()

	game:GetService('TweenService'):Create(DropShadow,TweenInfo.new(currntTime),{
		ImageTransparency = ImageTransparencyTarget

	}):Play()

	game:GetService('TweenService'):Create(DropShadow_2,TweenInfo.new(currntTime),{
		ImageTransparency = ImageTransparencyTarget

	}):Play()

	game:GetService('TweenService'):Create(DropShadow_3,TweenInfo.new(currntTime),{
		ImageTransparency = ImageTransparencyTarget

	}):Play()

	wait(0.55)

	game:GetService('TweenService'):Create(Frame,TweenInfo.new(0.5,back,Enum.EasingDirection.InOut),{
		Size =  UDim2.new(0.1,0,0.35,0)
	}):Play()

	wait(0.75)
	
	game:GetService('TweenService'):Create(Frame,TweenInfo.new(0.5),{
		Size = UDim2.new(0.1,0,0,0)
	}):Play()
	
	wait(0.45)
	
	game:GetService('TweenService'):Create(Frame,TweenInfo.new(currntTime),{
		BackgroundTransparency = 1

	}):Play()
	
	
	wait(1)
	
	ScreenGui:Destroy()
end

coroutine.wrap(function()
	start()
end)()

wait(1.55)

return
