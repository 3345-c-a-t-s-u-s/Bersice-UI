local function StartScriptLoaded()
	local loaded = Instance.new("ScreenGui")
	local Frame = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local TextLabel = Instance.new("TextLabel")
	local ImageLabel = Instance.new("ImageLabel")
	local UICorner_2 = Instance.new("UICorner")
	local loadframe = Instance.new("Frame")
	local UICorner_3 = Instance.new("UICorner")
	local loadmove = Instance.new("Frame")
	local UICorner_4 = Instance.new("UICorner")
	local DropShadow = Instance.new("ImageLabel")

	loaded.Name = "loaded"
	loaded.Parent = game:FindFirstChild('CoreGui') or game.Players.LocalPlayer:WaitForChild("PlayerGui")
	loaded.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Frame.Parent = loaded
	Frame.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Frame.BackgroundTransparency = 0.150
	Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame.BorderSizePixel = 0
	Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
	Frame.Size = UDim2.new(0.400000006, 0, 0.400000006, 0)
	Frame.SizeConstraint = Enum.SizeConstraint.RelativeYY

	UICorner.CornerRadius = UDim.new(0, 4)
	UICorner.Parent = Frame

	TextLabel.Parent = Frame
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel.BorderSizePixel = 0
	TextLabel.Position = UDim2.new(0.0212296192, 0, 0.0297214668, 0)
	TextLabel.Size = UDim2.new(0.949999988, 0, 0.100000001, 0)
	TextLabel.Font = Enum.Font.GothamBold
	TextLabel.Text = "Bedol Hub | Loading"
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.TextScaled = true
	TextLabel.TextSize = 14.000
	TextLabel.TextWrapped = true

	ImageLabel.Parent = Frame
	ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ImageLabel.BackgroundTransparency = 1.000
	ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ImageLabel.BorderSizePixel = 0
	ImageLabel.Position = UDim2.new(0.242017657, 0, 0.1953125, 0)
	ImageLabel.Size = UDim2.new(0.5, 0, 0.5, 0)
	ImageLabel.SizeConstraint = Enum.SizeConstraint.RelativeYY
	ImageLabel.Image = "rbxassetid://6862780932"

	UICorner_2.CornerRadius = UDim.new(0, 4)
	UICorner_2.Parent = ImageLabel

	loadframe.Name = "loadframe"
	loadframe.Parent = Frame
	loadframe.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	loadframe.BackgroundTransparency = 0.550
	loadframe.BorderColor3 = Color3.fromRGB(0, 0, 0)
	loadframe.BorderSizePixel = 0
	loadframe.ClipsDescendants = true
	loadframe.Position = UDim2.new(0.0467051566, 0, 0.883152127, 0)
	loadframe.Size = UDim2.new(0.899999976, 0, 0.0500000007, 0)

	UICorner_3.CornerRadius = UDim.new(0, 4)
	UICorner_3.Parent = loadframe

	loadmove.Name = "loadmove"
	loadmove.Parent = loadframe
	loadmove.AnchorPoint = Vector2.new(0, 0.5)
	loadmove.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	loadmove.BorderColor3 = Color3.fromRGB(0, 0, 0)
	loadmove.BorderSizePixel = 0
	loadmove.Position = UDim2.new(0, 0, 0.5, 0)
	loadmove.Size = UDim2.new(0, 0, 2, 0)

	UICorner_4.CornerRadius = UDim.new(0.5, 0)
	UICorner_4.Parent = loadmove

	DropShadow.Name = "DropShadow"
	DropShadow.Parent = Frame
	DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
	DropShadow.BackgroundTransparency = 1.000
	DropShadow.BorderSizePixel = 0
	DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
	DropShadow.Size = UDim2.new(1, 47, 1, 47)
	DropShadow.ZIndex = 0
	DropShadow.Image = "rbxassetid://6015897843"
	DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
	DropShadow.ImageTransparency = 0.500
	DropShadow.ScaleType = Enum.ScaleType.Slice
	DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)
	
	task.wait(1)
	
	for i=0,10 do task.wait()
		local target = loadmove.Size.X.Scale + Random.new():NextNumber(0.3,0.4)
		local time_ = Random.new():NextNumber(0.5,1)
		wait(time_)
		game:GetService('TweenService'):Create(loadmove,TweenInfo.new(time_),{Size = UDim2.new(target,0,2,0)}):Play()
		
	end
	
	game:GetService('TweenService'):Create(loadmove,TweenInfo.new(0.1),{Size = UDim2.new(1,0,2,0)}):Play()
	
	loaded:Destroy()
	return
end

StartScriptLoaded()
