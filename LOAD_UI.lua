local TweenService = game:GetService('TweenService')
local Core = game:FindFirstChild('CoreGui') or game:GetService('Players').LocalPlayer.PlayerGui
local TextList = {"Loading","Loading Commands","Loading UI","Loading Functions","Request API"}

local TweenEffect = function(UIGradient : UIGradient)
	TweenService:Create(UIGradient,TweenInfo.new(0.45),{Offset = Vector2.new(2,0)}):Play()
end

local TweenText = function(TextLabel : TextLabel | TextButton,TextTransparency : number)
	TweenService:Create(TextLabel,TweenInfo.new(0.25),{TextTransparency = TextTransparency}):Play()
end

local TweenEffectEnd = function(UIGradient : UIGradient)
	TweenService:Create(UIGradient,TweenInfo.new(0.45),{Offset = Vector2.new(-2,0)}):Play()
end

local UI = function()
	local ScreenGui = Instance.new("ScreenGui")
	local Frame = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local effect = Instance.new("UIGradient")
	local title = Instance.new("TextLabel")
	local Loadedtitle = Instance.new("TextLabel")
	local ImageLabel = Instance.new("ImageLabel")
	local UICorner_2 = Instance.new("UICorner")
	local effect_2 = Instance.new("UIGradient")
	local tark = Instance.new("Frame")
	local UICorner_3 = Instance.new("UICorner")
	local move = Instance.new("Frame")
	local UICorner_4 = Instance.new("UICorner")

	ScreenGui.Parent = Core
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Frame.Parent = ScreenGui
	Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Frame.BackgroundTransparency = 0.200
	Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame.BorderSizePixel = 0
	Frame.AnchorPoint = Vector2.new(0.5,0.5)
	Frame.Position = UDim2.new(0.5,0,0.5,0)
	Frame.Size = UDim2.new(0.3, 0, 0.3, 0)
	Frame.SizeConstraint = Enum.SizeConstraint.RelativeYY
	Frame.ClipsDescendants = true

	UICorner.CornerRadius = UDim.new(0, 4)
	UICorner.Parent = Frame

	effect.Offset = Vector2.new(-2, 0)
	effect.Rotation = 45
	effect.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.00), NumberSequenceKeypoint.new(1.00, 1.00)}
	effect.Name = "effect"
	effect.Parent = Frame

	title.Name = "title"
	title.Parent = Frame
	title.AnchorPoint = Vector2.new(0.5, 0)
	title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	title.BackgroundTransparency = 1.000
	title.BorderColor3 = Color3.fromRGB(0, 0, 0)
	title.BorderSizePixel = 0
	title.Position = UDim2.new(0.5, 0, 0.0297214668, 0)
	title.Size = UDim2.new(0.980000019, 0, 0.100000001, 0)
	title.Font = Enum.Font.GothamBold
	title.Text = "Bedol Hub"
	title.TextColor3 = Color3.fromRGB(255, 255, 255)
	title.TextScaled = true
	title.TextSize = 14.000
	title.TextWrapped = true
	title.TextTransparency = 1

	Loadedtitle.Name = "Loadedtitle"
	Loadedtitle.Parent = Frame
	Loadedtitle.AnchorPoint = Vector2.new(0.5, 0)
	Loadedtitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Loadedtitle.BackgroundTransparency = 1.000
	Loadedtitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Loadedtitle.BorderSizePixel = 0
	Loadedtitle.Position = UDim2.new(0.50000006, 0, 0.161345109, 0)
	Loadedtitle.Size = UDim2.new(0.980000138, 0, 0.0660326183, 0)
	Loadedtitle.Font = Enum.Font.GothamBold
	Loadedtitle.Text = "Loading"
	Loadedtitle.TextColor3 = Color3.fromRGB(255, 255, 255)
	Loadedtitle.TextScaled = true
	Loadedtitle.TextSize = 14.000
	Loadedtitle.TextTransparency = 0.400
	Loadedtitle.TextWrapped = true
	Loadedtitle.TextTransparency = 1

	local imgtarget = (_G.LOADDED_IMG) or ("rbxassetid://6862780932")

	ImageLabel.Parent = Frame
	ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ImageLabel.BackgroundTransparency = 1.000
	ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ImageLabel.BorderSizePixel = 0
	ImageLabel.Position = UDim2.new(0.246263579, 0, 0.297214687, 0)
	ImageLabel.Size = UDim2.new(0.5, 0, 0.5, 0)
	ImageLabel.SizeConstraint = Enum.SizeConstraint.RelativeYY
	ImageLabel.Image = imgtarget
	ImageLabel.ImageTransparency = 1
	ImageLabel.ScaleType = Enum.ScaleType.Crop
	
	UICorner_2.CornerRadius = UDim.new(0, 4)
	UICorner_2.Parent = ImageLabel

	effect_2.Offset = Vector2.new(-2, 0)
	effect_2.Rotation = 45
	effect_2.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.00), NumberSequenceKeypoint.new(1.00, 1.00)}
	effect_2.Name = "effect"
	effect_2.Parent = ImageLabel

	tark.Name = "tark"
	tark.Parent = Frame
	tark.BackgroundColor3 = Color3.fromRGB(111, 111, 111)
	tark.BackgroundTransparency = 0.400
	tark.BorderColor3 = Color3.fromRGB(0, 0, 0)
	tark.BorderSizePixel = 0
	tark.ClipsDescendants = true
	tark.Position = UDim2.new(0.0212296192, 0, 1.5, 0)
	tark.Size = UDim2.new(0.949999988, 0, 0.0500000007, 0)

	UICorner_3.CornerRadius = UDim.new(0, 4)
	UICorner_3.Parent = tark

	move.Name = "move"
	move.Parent = tark
	move.AnchorPoint = Vector2.new(0, 0.5)
	move.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	move.BackgroundTransparency = 0.400
	move.BorderColor3 = Color3.fromRGB(0, 0, 0)
	move.BorderSizePixel = 0
	move.ClipsDescendants = true
	move.Position = UDim2.new(0, 0, 0.5, 0)
	move.Size = UDim2.new(0, 0, 2, 0)

	UICorner_4.CornerRadius = UDim.new(0, 4)
	UICorner_4.Parent = move

	return ScreenGui
end

local scriptLoadded = function()
	local ScreenGui = UI()
	local Frame = ScreenGui:FindFirstChildWhichIsA('Frame')
	local tark:Frame,ImageLabel:ImageLabel,title:TextLabel,Loadedtitle:TextLabel = Frame:FindFirstChild('tark'),Frame:FindFirstChild('ImageLabel'),Frame:FindFirstChild('title'),Frame:FindFirstChild('Loadedtitle')

	TweenService:Create(Frame,TweenInfo.new(1.5,Enum.EasingStyle.Back),{Size = UDim2.new(0.4,0,0.4,0)}):Play()

	for i,v : UIGradient in ipairs(Frame:GetDescendants()) do
		if v:isA('UIGradient') then
			TweenEffect(v)
		end
	end

	TweenService:Create(ImageLabel,TweenInfo.new(0.85,Enum.EasingStyle.Sine),{ImageTransparency = 0}):Play()
	task.wait(0.85)

	TweenService:Create(tark,TweenInfo.new(0.5,Enum.EasingStyle.Sine),{Position = UDim2.new(0.021, 0,0.896, 0)}):Play()

	TweenText(title,0)
	TweenText(Loadedtitle,0.4)
	wait(0.3)
	for i=1,#TextList do
		local AddSize = Random.new():NextNumber(0.1,0.2)
		local OldSize = tark:FindFirstChild('move').Size.X.Scale
		local NewSize = UDim2.new(OldSize + AddSize,0,2,0)
		local tween = TweenService:Create(tark:FindFirstChild('move'),TweenInfo.new(AddSize * 1.5,Enum.EasingStyle.Quad),{Size = NewSize})
		tween:Play()
		Loadedtitle.Text = TextList[i]
		tween.Completed:Wait()
		wait(0.1)
	end
	wait(0.1)
	coroutine.wrap(function()
		Loadedtitle.Text = "wait for UI"
		TweenService:Create(tark:FindFirstChild('move'),TweenInfo.new(0.4,Enum.EasingStyle.Quad),{Size = UDim2.new(2,0,2,0)}):Play()

		wait(0.9)

		TweenText(title,1)
		TweenText(Loadedtitle,1)
		TweenService:Create(tark,TweenInfo.new(0.5,Enum.EasingStyle.Sine),{Position = UDim2.new(0.021, 0,1.5, 0)}):Play()

		for i,v : UIGradient in ipairs(Frame:GetDescendants()) do
			if v:isA('UIGradient') then
				TweenEffectEnd(v)
			end
		end

		TweenService:Create(Frame,TweenInfo.new(1.5,Enum.EasingStyle.Back),{Size = UDim2.new(0.3,0,0.3,0)}):Play()

		wait(1)
		ScreenGui:Destroy()
	end)()

	if not game:IsLoaded() then
		print('Loading Game')
		game.Loaded:Wait()
	end

	if not game:FindFirstChild('Workspace') then
		print('wait for object')
		game:WaitForChild('Workspace',9999)
	end

end

return scriptLoadded()
