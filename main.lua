local Bersice = {}

local Tween = game:GetService('TweenService')
local LocalPlayer = game:WaitForChild('Players').LocalPlayer
local InputService = game:GetService('UserInputService')
local Mouse = LocalPlayer:GetMouse()
local CoreGui = game:FindFirstChild('CoreGui') or LocalPlayer.PlayerGui

local function CalculateDistance<ods...>(pointA, pointB)
	return math.sqrt(((pointB.X - pointA.X) ^ 2) + ((pointB.Y - pointA.Y) ^ 2))
end

function Create_Ripple<T...>(Parent : Frame)
	local ripple = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	Parent.ClipsDescendants = true
	ripple.Active = false
	ripple.Name = "ripple"
	ripple.Parent = Parent
	ripple.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ripple.ZIndex = Parent.ZIndex or 7
	ripple.AnchorPoint = Vector2.new(0.5, 0.5)
	ripple.Size = UDim2.new(0,0,0,0)
	ripple.SizeConstraint = Enum.SizeConstraint.RelativeYY

	UICorner.CornerRadius = UDim.new(0.25, 0)
	UICorner.Parent = ripple

	local buttonAbsoluteSize = Parent.AbsoluteSize
	local buttonAbsolutePosition = Parent.AbsolutePosition

	local mouseAbsolutePosition = Vector2.new(Mouse.X, Mouse.Y)
	local mouseRelativePosition = (mouseAbsolutePosition - buttonAbsolutePosition)

	ripple.BackgroundTransparency = 0.84
	ripple.Position = UDim2.new(0, mouseRelativePosition.X, 0, mouseRelativePosition.Y)
	ripple.Parent = Parent

	local topLeft = CalculateDistance(mouseRelativePosition, Vector2.new(0, 0))
	local topRight = CalculateDistance(mouseRelativePosition, Vector2.new(buttonAbsoluteSize.X, 0))
	local bottomRight = CalculateDistance(mouseRelativePosition, buttonAbsoluteSize)
	local bottomLeft = CalculateDistance(mouseRelativePosition, Vector2.new(0, buttonAbsoluteSize.Y))

	local Size_UP = UDim2.new(50,0,50,0)
	Tween:Create(ripple,TweenInfo.new(2),{Size = Size_UP,BackgroundTransparency = 1}):Play()
	game:GetService('Debris'):AddItem(ripple,2.2)
end

function Bersice:NewWindow<ScreenGui...>(TitleWindow:string)
	local MAC_WINDOW = {}
	local dragToggle = nil
	local dragSpeed = 0.1
	local dragStart = nil
	local startPos = nil
	
	local DecTabs = {}
	local Movement = Instance.new("Frame")

	Movement.Name = "Movement"
	Movement.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Movement.BackgroundTransparency = 1.000
	Movement.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Movement.BorderSizePixel = 0
	Movement.Size = UDim2.new(1, 0, 0.100000001, 0)
	
	local BersiceLib = Instance.new("ScreenGui")
	local Frame = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local DropShadow = Instance.new("ImageLabel")
	local Controller = Instance.new("Frame")
	local UICorner_2 = Instance.new("UICorner")
	local tabs = Instance.new("Frame")
	local DropShadow_2 = Instance.new("ImageLabel")
	local UICorner_3 = Instance.new("UICorner")
	local UICorner_4 = Instance.new("UICorner")
	local ScrollingFrame = Instance.new("ScrollingFrame")
	local UIListLayout = Instance.new("UIListLayout")
	local Hiden = Instance.new("Frame")
	local UIGradient = Instance.new("UIGradient")
	local TITLE = Instance.new("TextLabel")
	local Icons = Instance.new("Frame")
	local UICorner_5 = Instance.new("UICorner")
	local UIStroke = Instance.new("UIStroke")
	local cancel = Instance.new("TextButton")
	
	UIListLayout:GetPropertyChangedSignal('AbsoluteContentSize'):Connect(function()
		Tween:Create(ScrollingFrame,TweenInfo.new(0.1),{CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 15)}):Play()
	end)
	
	Movement.Parent = Frame
	
	BersiceLib.Name = TitleWindow or "Bersice Lib"
	BersiceLib.Parent = CoreGui
	BersiceLib.IgnoreGuiInset = true
	BersiceLib.ZIndexBehavior = Enum.ZIndexBehavior.Global
	BersiceLib.ResetOnSpawn = false

	Frame.Parent = BersiceLib
	Frame.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
	Frame.BackgroundTransparency = 0.450
	Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame.BorderSizePixel = 0
	Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
	Frame.Size = UDim2.new(0.8, 0, 0.45, 0)
	Frame.SizeConstraint = Enum.SizeConstraint.RelativeYY

	UICorner.CornerRadius = UDim.new(0, 3)
	UICorner.Parent = Frame

	DropShadow.Name = "DropShadow"
	DropShadow.Parent = Frame
	DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
	DropShadow.BackgroundTransparency = 1.000
	DropShadow.BorderSizePixel = 0
	DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
	DropShadow.Size = UDim2.new(1, 47, 1, 47)
	DropShadow.ZIndex = -5
	DropShadow.Rotation = 0.001
	DropShadow.Image = "rbxassetid://6014261993"
	DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
	DropShadow.ImageTransparency = 0.500
	DropShadow.ScaleType = Enum.ScaleType.Slice
	DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)

	Controller.Name = "Controller"
	Controller.Parent = Frame
	Controller.AnchorPoint = Vector2.new(0.5, 0.5)
	Controller.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
	Controller.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Controller.BorderSizePixel = 0
	Controller.ClipsDescendants = true
	Controller.Position = UDim2.new(0.5, 0, 0.546705186, 0)
	Controller.Size = UDim2.new(1, 0, 0.899999976, 0)
	Controller.ZIndex = 2

	UICorner_2.CornerRadius = UDim.new(0, 3)
	UICorner_2.Parent = Controller

	tabs.Name = "tabs"
	tabs.Parent = Controller
	tabs.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
	tabs.BorderColor3 = Color3.fromRGB(0, 0, 0)
	tabs.BorderSizePixel = 0
	tabs.ClipsDescendants = true
	tabs.Position = UDim2.new(0.0169836953, 0, 0.0330238529, 0)
	tabs.Size = UDim2.new(0.200000003, 0, 0.949999988, 0)
	tabs.ZIndex = 5

	DropShadow_2.Name = "DropShadow"
	DropShadow_2.Parent = tabs
	DropShadow_2.AnchorPoint = Vector2.new(0.5, 0.5)
	DropShadow_2.BackgroundTransparency = 1.000
	DropShadow_2.BorderSizePixel = 0
	DropShadow_2.Position = UDim2.new(0.5, 0, 0.5, 0)
	DropShadow_2.Rotation = 0.001
	DropShadow_2.Size = UDim2.new(1, 47, 1, 47)
	DropShadow_2.ZIndex = 4
	DropShadow_2.Image = "rbxassetid://6015897843"
	DropShadow_2.ImageColor3 = Color3.fromRGB(0, 0, 0)
	DropShadow_2.ImageTransparency = 0.500
	DropShadow_2.ScaleType = Enum.ScaleType.Slice
	DropShadow_2.SliceCenter = Rect.new(49, 49, 450, 450)

	UICorner_3.CornerRadius = UDim.new(0, 3)
	UICorner_3.Parent = DropShadow_2

	UICorner_4.CornerRadius = UDim.new(0, 3)
	UICorner_4.Parent = tabs

	ScrollingFrame.Parent = tabs
	ScrollingFrame.Active = true
	ScrollingFrame.AnchorPoint = Vector2.new(0.5, 0.5)
	ScrollingFrame.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
	ScrollingFrame.BackgroundTransparency = 1.000
	ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ScrollingFrame.BorderSizePixel = 0
	ScrollingFrame.ClipsDescendants = false
	ScrollingFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
	ScrollingFrame.Size = UDim2.new(0.949999988, 0, 0.949999988, 0)
	ScrollingFrame.ZIndex = 5
	ScrollingFrame.ScrollBarThickness = 1

	UIListLayout.Parent = ScrollingFrame
	UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0, 3)

	Hiden.Name = "Hiden"
	Hiden.Parent = tabs
	Hiden.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
	Hiden.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Hiden.BorderSizePixel = 0
	Hiden.Size = UDim2.new(1, 0, 1, 0)
	Hiden.ZIndex = 10

	UIGradient.Rotation = 90
	UIGradient.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.00), NumberSequenceKeypoint.new(0.05, 0.89), NumberSequenceKeypoint.new(0.50, 1.00), NumberSequenceKeypoint.new(0.97, 0.90), NumberSequenceKeypoint.new(1.00, 0.00)}
	UIGradient.Parent = Hiden

	TITLE.Name = "TITLE"
	TITLE.Parent = Frame
	TITLE.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TITLE.BackgroundTransparency = 1.000
	TITLE.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TITLE.BorderSizePixel = 0
	TITLE.Position = UDim2.new(0.0169836953, 0, 0, 0)
	TITLE.Size = UDim2.new(0.783016264, 0, 0.100000001, 0)
	TITLE.Font = Enum.Font.GothamBold
	TITLE.Text = TitleWindow or "Bersice UI"
	TITLE.TextColor3 = Color3.fromRGB(255, 255, 255)
	TITLE.TextScaled = true
	TITLE.TextSize = 14.000
	TITLE.TextTransparency = 0.100
	TITLE.TextWrapped = true
	TITLE.TextXAlignment = Enum.TextXAlignment.Left

	Icons.Name = "Icons"
	Icons.Parent = Frame
	Icons.AnchorPoint = Vector2.new(1, 0.5)
	Icons.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Icons.BackgroundTransparency = 0.600
	Icons.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Icons.BorderSizePixel = 0
	Icons.Position = UDim2.new(0.99000001, 0, 0.0500000007, 0)
	Icons.Size = UDim2.new(0.100000001, 0, 0.0700000003, 0)
	Icons.SizeConstraint = Enum.SizeConstraint.RelativeYY

	UICorner_5.CornerRadius = UDim.new(0.300000012, 0)
	UICorner_5.Parent = Icons

	UIStroke.Transparency = 0.700
	UIStroke.Color = Color3.fromRGB(255, 255, 255)
	UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke.Parent = Icons

	cancel.Name = "cancel"
	cancel.Parent = Icons
	cancel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	cancel.BackgroundTransparency = 1.000
	cancel.BorderColor3 = Color3.fromRGB(0, 0, 0)
	cancel.BorderSizePixel = 0
	cancel.Size = UDim2.new(1, 0, 1, 0)
	cancel.Font = Enum.Font.GothamBold
	cancel.Text = "X"
	cancel.TextColor3 = Color3.fromRGB(255, 255, 255)
	cancel.TextScaled = true
	cancel.TextSize = 14.000
	cancel.TextWrapped = true
	
	function MAC_WINDOW:NewTab<tab_unknow...>(tab_txt:string)
		--[[button]]
		local MAC_TAB = {}
		tab_txt = tostring(tab_txt)
		
		local Button = Instance.new("TextButton")
		local UICorner = Instance.new("UICorner")
		local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
		local UIStroke = Instance.new("UIStroke")

		Button.Name = "Button"
		Button.Parent = ScrollingFrame or tabs:WaitForChild('ScrollingFrame',10)
		Button.BackgroundColor3 = Color3.fromRGB(89, 89, 89)
		Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Button.BorderSizePixel = 0
		Button.ClipsDescendants = true
		Button.Size = UDim2.new(0.899999976, 0, 5, 0)
		Button.ZIndex = 7
		Button.Font = Enum.Font.GothamBold
		Button.Text = tab_txt or "Tab"
		Button.TextColor3 = Color3.fromRGB(255, 255, 255)
		Button.TextScaled = true
		Button.TextSize = 14.000
		Button.TextWrapped = true
		Button.TextXAlignment = Enum.TextXAlignment.Left

		UICorner.CornerRadius = UDim.new(0, 3)
		UICorner.Parent = Button

		UIAspectRatioConstraint.Parent = Button
		UIAspectRatioConstraint.AspectRatio = 4
		UIAspectRatioConstraint.AspectType = Enum.AspectType.ScaleWithParentSize
		
		UIStroke.Transparency = 0.800
		UIStroke.Color = Color3.fromRGB(255, 255, 255)
		UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
		UIStroke.Parent = Button
		--[[tab]]
		local tab = Instance.new("Frame")
		local UICorner = Instance.new("UICorner")
		local DropShadow = Instance.new("ImageLabel")
		local Hiden = Instance.new("Frame")
		local UIGradient = Instance.new("UIGradient")
		local ScrollingFrame = Instance.new("ScrollingFrame")
		local UIListLayout = Instance.new("UIListLayout")
		local TITLE = Instance.new("TextLabel")
		
		UIListLayout:GetPropertyChangedSignal('AbsoluteContentSize'):Connect(function()
			Tween:Create(ScrollingFrame,TweenInfo.new(0.1),{CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 15)}):Play()
		end)
		
		tab.Name = "tab"
		tab.Parent = Controller
		tab.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
		tab.BorderColor3 = Color3.fromRGB(0, 0, 0)
		tab.BorderSizePixel = 0
		tab.ClipsDescendants = true
		tab.Position = UDim2.new(0.257586062, 0, 0.0567739271, 0)
		tab.Size = UDim2.new(0.725000024, 0, 0.925999999, 0)
		tab.ZIndex = 5

		UICorner.CornerRadius = UDim.new(0, 3)
		UICorner.Parent = tab

		DropShadow.Name = "DropShadow"
		DropShadow.Parent = tab
		DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
		DropShadow.BackgroundTransparency = 1.000
		DropShadow.BorderSizePixel = 0
		DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
		DropShadow.Size = UDim2.new(1, 27, 1, 27)
		DropShadow.ZIndex = 4
		DropShadow.Image = "rbxassetid://6015897843"
		DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
		DropShadow.ImageTransparency = 0.500
		DropShadow.ScaleType = Enum.ScaleType.Slice
		DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)

		Hiden.Name = "Hiden"
		Hiden.Parent = tab
		Hiden.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
		Hiden.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Hiden.BorderSizePixel = 0
		Hiden.Position = UDim2.new(0, 0, -1.55477949e-07, 0)
		Hiden.Size = UDim2.new(1, 0, 0.99999994, 0)
		Hiden.ZIndex = 20

		UIGradient.Rotation = 90
		UIGradient.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.00), NumberSequenceKeypoint.new(0.06, 0.78), NumberSequenceKeypoint.new(0.50, 1.00), NumberSequenceKeypoint.new(0.94, 0.76), NumberSequenceKeypoint.new(1.00, 0.00)}
		UIGradient.Parent = Hiden

		ScrollingFrame.Parent = tab
		ScrollingFrame.Active = true
		ScrollingFrame.AnchorPoint = Vector2.new(0.5, 0.5)
		ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ScrollingFrame.BackgroundTransparency = 1.000
		ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
		ScrollingFrame.BorderSizePixel = 0
		ScrollingFrame.ClipsDescendants = false
		ScrollingFrame.Position = UDim2.new(0.5, 0, 0.524999917, 0)
		ScrollingFrame.Size = UDim2.new(0.980000019, 0, 0.930999815, 0)
		ScrollingFrame.ZIndex = 5
		ScrollingFrame.CanvasSize = UDim2.new(0, 0, 10, 0)
		ScrollingFrame.ScrollBarThickness = 1

		UIListLayout.Parent = ScrollingFrame
		UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout.Padding = UDim.new(0, 6)

		TITLE.Name = "TITLE"
		TITLE.Parent = tab
		TITLE.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TITLE.BackgroundTransparency = 1.000
		TITLE.BorderColor3 = Color3.fromRGB(0, 0, 0)
		TITLE.BorderSizePixel = 0
		TITLE.Position = UDim2.new(0.0170000009, 0, -0.0250000004, 0)
		TITLE.Rotation = 0.010
		TITLE.Size = UDim2.new(0.782999992, 0, 0.0500000007, 0)
		TITLE.ZIndex = 15
		TITLE.Font = Enum.Font.GothamBold
		TITLE.Text = tab_txt or "Tab"
		TITLE.TextColor3 = Color3.fromRGB(255, 255, 255)
		TITLE.TextScaled = true
		TITLE.TextSize = 14.000
		TITLE.TextTransparency = 0.100
		TITLE.TextWrapped = true
		TITLE.TextXAlignment = Enum.TextXAlignment.Left
		TITLE.ZIndex = 30
		
		if #DecTabs == 0 then
			tab.Visible = true
		else
			tab.Visible = false
		end
		
		table.insert(DecTabs,tab)
		
		local function EventText()
			for i = 1, #tab_txt do
				TITLE.Text = string.sub(tab_txt, 1, i)
				wait(0.01)

			end
		end
		
		Button.MouseButton1Click:Connect(function()
			Create_Ripple(Button) 
			for i,v in ipairs(DecTabs) do
				if v == tab then
					v.Visible = true
				else
					v.Visible = false
				end
			end
			EventText()
		end)
		
		Button.MouseEnter:Connect(function()
			Tween:Create(UIAspectRatioConstraint,TweenInfo.new(0.3,Enum.EasingStyle.Back),{AspectRatio = 3.5}):Play()
		end)
		
		Button.MouseLeave:Connect(function()
			Tween:Create(UIAspectRatioConstraint,TweenInfo.new(0.3,Enum.EasingStyle.Back),{AspectRatio = 4}):Play()
		end)
		
		function MAC_TAB:NewButton(n9:string,callback:FunctionalTest):() callback = callback or function() end
			local Button = Instance.new("Frame")
			local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
			local UIStroke = Instance.new("UIStroke")
			local Title = Instance.new("TextLabel")
			local img = Instance.new("ImageLabel")
			local UICorner = Instance.new("UICorner")
			local ButtonClicked = Instance.new("TextButton")

			Button.Name = "Button"
			Button.Parent = ScrollingFrame
			Button.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
			Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Button.BorderSizePixel = 0
			Button.Size = UDim2.new(0.970000029, 0, 0.5, 0)
			Button.ZIndex = 5

			UIAspectRatioConstraint.Parent = Button
			UIAspectRatioConstraint.AspectRatio = 7
			UIAspectRatioConstraint.AspectType = Enum.AspectType.ScaleWithParentSize
			
			UIStroke.Thickness = 2.000
			UIStroke.Transparency = 0.500
			UIStroke.Color = Color3.fromRGB(255, 255, 255)
			UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			UIStroke.Parent = Button

			Title.Name = "Title"
			Title.Parent = Button
			Title.AnchorPoint = Vector2.new(0.5, 0.5)
			Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Title.BackgroundTransparency = 1.000
			Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Title.BorderSizePixel = 0
			Title.Position = UDim2.new(0.44249931, 0, 0.5, 0)
			Title.Size = UDim2.new(0.800000012, 0, 0.699999988, 0)
			Title.ZIndex = 5
			Title.Font = Enum.Font.ArialBold
			Title.Text = n9 or "Button"
			Title.TextColor3 = Color3.fromRGB(255, 255, 255)
			Title.TextScaled = true
			Title.TextSize = 14.000
			Title.TextWrapped = true
			Title.TextXAlignment = Enum.TextXAlignment.Left

			img.Name = "img"
			img.Parent = Button
			img.AnchorPoint = Vector2.new(0, 0.5)
			img.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			img.BackgroundTransparency = 1.000
			img.BorderColor3 = Color3.fromRGB(0, 0, 0)
			img.BorderSizePixel = 0
			img.Position = UDim2.new(0.842000008, 0, 0.5, 0)
			img.Size = UDim2.new(0.800000012, 0, 0.800000012, 0)
			img.SizeConstraint = Enum.SizeConstraint.RelativeYY
			img.ZIndex = 5
			img.Image = "rbxassetid://3944703587"

			UICorner.CornerRadius = UDim.new(0.100000001, 0)
			UICorner.Parent = Button

			ButtonClicked.Name = "ButtonClicked"
			ButtonClicked.Parent = Button
			ButtonClicked.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ButtonClicked.BackgroundTransparency = 1.000
			ButtonClicked.BorderColor3 = Color3.fromRGB(0, 0, 0)
			ButtonClicked.BorderSizePixel = 0
			ButtonClicked.Size = UDim2.new(1, 0, 1, 0)
			ButtonClicked.ZIndex = 5
			ButtonClicked.Font = Enum.Font.SourceSans
			ButtonClicked.TextColor3 = Color3.fromRGB(0, 0, 0)
			ButtonClicked.TextSize = 14.000
			ButtonClicked.TextTransparency = 1.000
			
			ButtonClicked.MouseLeave:Connect(function()
				Tween:Create(UIStroke,TweenInfo.new(0.45),{Transparency = 0.5}):Play()
			end)
			
			ButtonClicked.MouseEnter:Connect(function()
				Tween:Create(UIStroke,TweenInfo.new(0.45),{Transparency = 0.1}):Play()
			end)
			
			ButtonClicked.MouseButton1Click:Connect(function()
				Create_Ripple(Button)
				callback()
			end)
		end
		
		function MAC_TAB:NewTitle(ntr:string | string)
			local Title = Instance.new("Frame")
			local UICorner = Instance.new("UICorner")
			local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
			local UIStroke = Instance.new("UIStroke")
			local TitleMain = Instance.new("TextLabel")
			local UIGradient = Instance.new("UIGradient")

			Title.Name = "Title"
			Title.Parent = ScrollingFrame
			Title.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
			Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Title.BorderSizePixel = 0
			Title.Size = UDim2.new(0.970000029, 0, 0.5, 0)
			Title.ZIndex = 5

			UICorner.CornerRadius = UDim.new(0.100000001, 0)
			UICorner.Parent = Title

			UIAspectRatioConstraint.Parent = Title
			UIAspectRatioConstraint.AspectRatio = 13.000
			UIAspectRatioConstraint.AspectType = Enum.AspectType.ScaleWithParentSize

			UIStroke.Thickness = 2.000
			UIStroke.Transparency = 0.750
			UIStroke.Color = Color3.fromRGB(255, 255, 255)
			UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			UIStroke.Parent = Title

			TitleMain.Name = "TitleMain"
			TitleMain.Parent = Title
			TitleMain.AnchorPoint = Vector2.new(0.5, 0.5)
			TitleMain.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TitleMain.BackgroundTransparency = 1.000
			TitleMain.BorderColor3 = Color3.fromRGB(0, 0, 0)
			TitleMain.BorderSizePixel = 0
			TitleMain.Position = UDim2.new(0.492124796, 0, 0.500000417, 0)
			TitleMain.Size = UDim2.new(0.941750288, 0, 0.800000012, 0)
			TitleMain.ZIndex = 5
			TitleMain.Font = Enum.Font.ArialBold
			TitleMain.Text = ntr or "Title"
			TitleMain.TextColor3 = Color3.fromRGB(255, 255, 255)
			TitleMain.TextScaled = true
			TitleMain.TextSize = 14.000
			TitleMain.TextTransparency = 0.100
			TitleMain.TextWrapped = true
			TitleMain.TextXAlignment = Enum.TextXAlignment.Left

			UIGradient.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.00), NumberSequenceKeypoint.new(0.87, 0.43), NumberSequenceKeypoint.new(1.00, 1.00)}
			UIGradient.Parent = TitleMain
		end
		
		function MAC_TAB:NewToggle(Title9:string,info:boolean,callback:FunctionalTest)
			callback = callback or function() end
			
			local Toggle = Instance.new("Frame")
			local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
			local UIStroke = Instance.new("UIStroke")
			local Title = Instance.new("TextLabel")
			local UICorner = Instance.new("UICorner")
			local ButtonClicked = Instance.new("TextButton")
			local ToggleFrame = Instance.new("Frame")
			local UIStroke_2 = Instance.new("UIStroke")
			local UICorner_2 = Instance.new("UICorner")
			local Move = Instance.new("Frame")
			local UICorner_3 = Instance.new("UICorner")
			local Left = Instance.new("Frame")
			local UICorner_4 = Instance.new("UICorner")
			local Right = Instance.new("Frame")
			local UICorner_5 = Instance.new("UICorner")

			Toggle.Name = "Toggle"
			Toggle.Parent = ScrollingFrame
			Toggle.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
			Toggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Toggle.BorderSizePixel = 0
			Toggle.Size = UDim2.new(0.970000029, 0, 0.5, 0)
			Toggle.ZIndex = 5

			UIAspectRatioConstraint.Parent = Toggle
			UIAspectRatioConstraint.AspectRatio = 7.000
			UIAspectRatioConstraint.AspectType = Enum.AspectType.ScaleWithParentSize

			UIStroke.Thickness = 2.000
			UIStroke.Transparency = 0.500
			UIStroke.Color = Color3.fromRGB(255, 255, 255)
			UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			UIStroke.Parent = Toggle

			Title.Name = "Title"
			Title.Parent = Toggle
			Title.AnchorPoint = Vector2.new(0.5, 0.5)
			Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Title.BackgroundTransparency = 1.000
			Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Title.BorderSizePixel = 0
			Title.Position = UDim2.new(0.419909745, 0, 0.500000119, 0)
			Title.Size = UDim2.new(0.754821002, 0, 0.700000048, 0)
			Title.ZIndex = 5
			Title.Font = Enum.Font.ArialBold
			Title.Text = Title9 or "Toggle"
			Title.TextColor3 = Color3.fromRGB(255, 255, 255)
			Title.TextScaled = true
			Title.TextSize = 14.000
			Title.TextWrapped = true
			Title.TextXAlignment = Enum.TextXAlignment.Left

			UICorner.CornerRadius = UDim.new(0.100000001, 0)
			UICorner.Parent = Toggle

			ButtonClicked.Name = "ButtonClicked"
			ButtonClicked.Parent = Toggle
			ButtonClicked.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ButtonClicked.BackgroundTransparency = 1.000
			ButtonClicked.BorderColor3 = Color3.fromRGB(0, 0, 0)
			ButtonClicked.BorderSizePixel = 0
			ButtonClicked.Size = UDim2.new(1, 0, 1, 0)
			ButtonClicked.ZIndex = 5
			ButtonClicked.Font = Enum.Font.SourceSans
			ButtonClicked.TextColor3 = Color3.fromRGB(0, 0, 0)
			ButtonClicked.TextSize = 14.000
			ButtonClicked.TextTransparency = 1.000

			ToggleFrame.Name = "ToggleFrame"
			ToggleFrame.Parent = Toggle
			ToggleFrame.AnchorPoint = Vector2.new(0, 0.5)
			ToggleFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			ToggleFrame.BackgroundTransparency = 0.900
			ToggleFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
			ToggleFrame.BorderSizePixel = 0
			ToggleFrame.Position = UDim2.new(0.813000023, 0, 0.5, 0)
			ToggleFrame.Size = UDim2.new(0.150000006, 0, 0.550000012, 0)
			ToggleFrame.ZIndex = 10

			UIStroke_2.Thickness = 0.900
			UIStroke_2.Transparency = 0.500
			UIStroke_2.Color = Color3.fromRGB(255, 255, 255)
			UIStroke_2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			UIStroke_2.Parent = ToggleFrame

			UICorner_2.CornerRadius = UDim.new(0.349999994, 0)
			UICorner_2.Parent = ToggleFrame

			Move.Name = "Move"
			Move.Parent = ToggleFrame
			Move.AnchorPoint = Vector2.new(0, 0.5)
			Move.BackgroundColor3 = Color3.fromRGB(221, 221, 221)
			Move.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Move.BorderSizePixel = 0
			Move.Position = UDim2.new(0.0500000007, 0, 0.524999976, 0)
			Move.Size = UDim2.new(0.899999976, 0, 0.899999976, 0)
			Move.SizeConstraint = Enum.SizeConstraint.RelativeYY
			Move.ZIndex = 12

			UICorner_3.CornerRadius = UDim.new(0.5, 0)
			UICorner_3.Parent = Move

			Left.Name = "Left"
			Left.Parent = ToggleFrame
			Left.AnchorPoint = Vector2.new(0, 0.5)
			Left.BackgroundColor3 = Color3.fromRGB(109, 109, 109)
			Left.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Left.BorderSizePixel = 0
			Left.Position = UDim2.new(0.0500000007, 0, 0.524999976, 0)
			Left.Size = UDim2.new(0.899999976, 0, 0.899999976, 0)
			Left.SizeConstraint = Enum.SizeConstraint.RelativeYY
			Left.Visible = false
			Left.ZIndex = 10

			UICorner_4.CornerRadius = UDim.new(0.349999994, 0)
			UICorner_4.Parent = Left

			Right.Name = "Right"
			Right.Parent = ToggleFrame
			Right.AnchorPoint = Vector2.new(0, 0.5)
			Right.BackgroundColor3 = Color3.fromRGB(109, 109, 109)
			Right.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Right.BorderSizePixel = 0
			Right.Position = UDim2.new(0.449999988, 0, 0.524999976, 0)
			Right.Size = UDim2.new(0.899999976, 0, 0.899999976, 0)
			Right.SizeConstraint = Enum.SizeConstraint.RelativeYY
			Right.Visible = false
			Right.ZIndex = 10

			UICorner_5.CornerRadius = UDim.new(0.349999994, 0)
			UICorner_5.Parent = Right
			local function ToggleTo(value)
				if value then
					Tween:Create(ToggleFrame,TweenInfo.new(0.3),{
						BackgroundColor3 = Color3.fromRGB(0, 34, 255),
						BackgroundTransparency = 0.6,
					}):Play()
					Tween:Create(Move,TweenInfo.new(0.3),{Position = Right.Position}):Play()
				else
					Tween:Create(ToggleFrame,TweenInfo.new(0.3),{
						BackgroundColor3 = Color3.fromRGB(0, 0, 0),
						BackgroundTransparency = 0.9,
					}):Play()
					Tween:Create(Move,TweenInfo.new(0.3),{Position = Left.Position}):Play()
				end
			end
			ToggleTo(info)
			
			ButtonClicked.MouseButton1Click:Connect(function()
				info = not info
				Create_Ripple(Toggle)
				ToggleTo(info)
				callback(info)
			end)
			return function(value)
				if value then
					info = value
					Create_Ripple(Toggle)
					ToggleTo(info)
					callback(info)
				end
			end
		end
		
		function MAC_TAB:NewTextBox(Title9:string,InputText:string,Info:string,callback:FunctionalTest)
			callback = callback or function() end
			local TextBox = Instance.new("Frame")
			local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
			local UIStroke = Instance.new("UIStroke")
			local Title = Instance.new("TextLabel")
			local UICorner = Instance.new("UICorner")
			local Main = Instance.new("Frame")
			local UIStroke_2 = Instance.new("UIStroke")
			local UICorner_2 = Instance.new("UICorner")
			local Ads = Instance.new("TextBox")
			local UICorner_3 = Instance.new("UICorner")

			TextBox.Name = "TextBox"
			TextBox.Parent = ScrollingFrame
			TextBox.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
			TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
			TextBox.BorderSizePixel = 0
			TextBox.Size = UDim2.new(0.970000029, 0, 0.5, 0)
			TextBox.ZIndex = 5

			UIAspectRatioConstraint.Parent = TextBox
			UIAspectRatioConstraint.AspectRatio = 7.000
			UIAspectRatioConstraint.AspectType = Enum.AspectType.ScaleWithParentSize

			UIStroke.Thickness = 2.000
			UIStroke.Transparency = 0.500
			UIStroke.Color = Color3.fromRGB(255, 255, 255)
			UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			UIStroke.Parent = TextBox

			Title.Name = "Title"
			Title.Parent = TextBox
			Title.AnchorPoint = Vector2.new(0.5, 0.5)
			Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Title.BackgroundTransparency = 1.000
			Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Title.BorderSizePixel = 0
			Title.Position = UDim2.new(0.360355437, 0, 0.500000119, 0)
			Title.Size = UDim2.new(0.635712385, 0, 0.700000048, 0)
			Title.ZIndex = 5
			Title.Font = Enum.Font.ArialBold
			Title.Text = Title9 or "TextBox"
			Title.TextColor3 = Color3.fromRGB(255, 255, 255)
			Title.TextScaled = true
			Title.TextSize = 14.000
			Title.TextWrapped = true
			Title.TextXAlignment = Enum.TextXAlignment.Left

			UICorner.CornerRadius = UDim.new(0.100000001, 0)
			UICorner.Parent = TextBox

			Main.Name = "Main"
			Main.Parent = TextBox
			Main.AnchorPoint = Vector2.new(0, 0.5)
			Main.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			Main.BackgroundTransparency = 0.900
			Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Main.BorderSizePixel = 0
			Main.Position = UDim2.new(0.712373793, 0, 0.51437515, 0)
			Main.Size = UDim2.new(0.25, 0, 0.649999976, 0)
			Main.ZIndex = 10

			UIStroke_2.Thickness = 0.900
			UIStroke_2.Transparency = 0.500
			UIStroke_2.Color = Color3.fromRGB(255, 255, 255)
			UIStroke_2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			UIStroke_2.Parent = Main

			UICorner_2.CornerRadius = UDim.new(0.349999994, 0)
			UICorner_2.Parent = Main

			Ads.Name = "Ads"
			Ads.Parent = Main
			Ads.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Ads.BackgroundTransparency = 1.000
			Ads.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Ads.BorderSizePixel = 0
			Ads.Size = UDim2.new(1, 0, 1, 0)
			Ads.ZIndex = 5
			Ads.ClearTextOnFocus = false
			Ads.Font = Enum.Font.GothamBold
			Ads.PlaceholderColor3 = Color3.fromRGB(121, 121, 121)
			Ads.PlaceholderText = InputText or "Input"
			Ads.Text = Info or ""
			Ads.TextColor3 = Color3.fromRGB(255, 255, 255)
			Ads.TextScaled = true
			Ads.TextSize = 14.000
			Ads.TextWrapped = true

			UICorner_3.CornerRadius = UDim.new(0.349999994, 0)
			UICorner_3.Parent = Ads
			
			Ads.FocusLost:Connect(function()
				Create_Ripple(TextBox)
				callback(Ads.Text)
			end)
			local onisa = {}
			
			function onisa:Set(value)
				Ads.Text = value
				callback(value)
			end
			
			function onisa:Get()
				return tostring(Ads.Text)
			end
			
			return onisa
		end
		
		function MAC_TAB:NewKeybind(Title9:string,Info:Enum.KeyCode,callback:FunctionalTest)
			callback = callback or function() end
			local function GetKeyString(Key : Enum.KeyCode)
				local stringADS = InputService:GetStringForKeyCode(Key)
				if #stringADS <= 0 then
					stringADS = Key.Name
				end
				return tostring(stringADS)
			end
			local Keybinds = Instance.new("Frame")
			local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
			local UIStroke = Instance.new("UIStroke")
			local Title = Instance.new("TextLabel")
			local UICorner = Instance.new("UICorner")
			local ButtonClicked = Instance.new("TextButton")
			local Keybind = Instance.new("Frame")
			local UIStroke_2 = Instance.new("UIStroke")
			local UICorner_2 = Instance.new("UICorner")
			local Key = Instance.new("TextLabel")

			Keybinds.Name = "Keybinds"
			Keybinds.Parent = ScrollingFrame
			Keybinds.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
			Keybinds.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Keybinds.BorderSizePixel = 0
			Keybinds.Size = UDim2.new(0.970000029, 0, 0.5, 0)
			Keybinds.ZIndex = 5

			UIAspectRatioConstraint.Parent = Keybinds
			UIAspectRatioConstraint.AspectRatio = 7.000
			UIAspectRatioConstraint.AspectType = Enum.AspectType.ScaleWithParentSize

			UIStroke.Thickness = 2.000
			UIStroke.Transparency = 0.500
			UIStroke.Color = Color3.fromRGB(255, 255, 255)
			UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			UIStroke.Parent = Keybinds

			Title.Name = "Title"
			Title.Parent = Keybinds
			Title.AnchorPoint = Vector2.new(0.5, 0.5)
			Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Title.BackgroundTransparency = 1.000
			Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Title.BorderSizePixel = 0
			Title.Position = UDim2.new(0.419909745, 0, 0.500000119, 0)
			Title.Size = UDim2.new(0.754821002, 0, 0.700000048, 0)
			Title.ZIndex = 5
			Title.Font = Enum.Font.ArialBold
			Title.Text = Title9 or "Keybinds"
			Title.TextColor3 = Color3.fromRGB(255, 255, 255)
			Title.TextScaled = true
			Title.TextSize = 14.000
			Title.TextWrapped = true
			Title.TextXAlignment = Enum.TextXAlignment.Left

			UICorner.CornerRadius = UDim.new(0.100000001, 0)
			UICorner.Parent = Keybinds

			ButtonClicked.Name = "ButtonClicked"
			ButtonClicked.Parent = Keybinds
			ButtonClicked.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ButtonClicked.BackgroundTransparency = 1.000
			ButtonClicked.BorderColor3 = Color3.fromRGB(0, 0, 0)
			ButtonClicked.BorderSizePixel = 0
			ButtonClicked.Size = UDim2.new(1, 0, 1, 0)
			ButtonClicked.ZIndex = 5
			ButtonClicked.Font = Enum.Font.SourceSans
			ButtonClicked.TextColor3 = Color3.fromRGB(0, 0, 0)
			ButtonClicked.TextSize = 14.000
			ButtonClicked.TextTransparency = 1.000

			Keybind.Name = "Keybind"
			Keybind.Parent = Keybinds
			Keybind.AnchorPoint = Vector2.new(0, 0.5)
			Keybind.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			Keybind.BackgroundTransparency = 0.900
			Keybind.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Keybind.BorderSizePixel = 0
			Keybind.Position = UDim2.new(0.813000023, 0, 0.5, 0)
			Keybind.Size = UDim2.new(0.150000006, 0, 0.550000012, 0)
			Keybind.ZIndex = 10

			UIStroke_2.Thickness = 0.900
			UIStroke_2.Transparency = 0.500
			UIStroke_2.Color = Color3.fromRGB(255, 255, 255)
			UIStroke_2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			UIStroke_2.Parent = Keybind

			UICorner_2.CornerRadius = UDim.new(0.349999994, 0)
			UICorner_2.Parent = Keybind

			Key.Name = "Key"
			Key.Parent = Keybind
			Key.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Key.BackgroundTransparency = 1.000
			Key.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Key.BorderSizePixel = 0
			Key.Size = UDim2.new(1, 0, 1, 0)
			Key.ZIndex = 5
			Key.Font = Enum.Font.GothamBold
			Key.Text = (Info and GetKeyString(Info)) or "None"
			Key.TextColor3 = Color3.fromRGB(255, 255, 255)
			Key.TextScaled = true
			Key.TextSize = 14.000
			Key.TextWrapped = true
			
			local is_d = false
			ButtonClicked.MouseButton1Click:Connect(function()
				if is_d then
					return
				end
				Create_Ripple(Keybinds)
				is_d = true
				local targetloaded = nil
				local Data = InputService.InputBegan:Connect(function(Key)
					if Key.KeyCode ~= Enum.KeyCode.Unknown then
						targetloaded = Key.KeyCode
					end
				end)
				Key.Text = "..."
				repeat task.wait() until targetloaded
				is_d = false
				
				if targetloaded then
					Key.Text = GetKeyString(targetloaded) or "None"
					callback(targetloaded)
				else
					Key.Text = "None"
				end
			end)
			return function(Valuee)
				if not Valuee then
					return
				end
				Key.Text = GetKeyString(Valuee) or "None"
				callback(Valuee)
			end
		end
		
		function MAC_TAB:NewSlider(SliderTitle:string,Min:number,Max:number,callback:FunctionalTest)
			callback = callback or function() end
			Min = Min or 1
			Max = Max or 100
			local Slider = Instance.new("Frame")
			local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
			local UIStroke = Instance.new("UIStroke")
			local Title = Instance.new("TextLabel")
			local UICorner = Instance.new("UICorner")
			local Untarl = Instance.new("Frame")
			local UICorner_2 = Instance.new("UICorner")
			local Number = Instance.new("TextLabel")
			local Frame = Instance.new("Frame")
			local UICorner_3 = Instance.new("UICorner")

			Slider.Name = "Slider"
			Slider.Parent = ScrollingFrame
			Slider.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
			Slider.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Slider.BorderSizePixel = 0
			Slider.Size = UDim2.new(0.970000029, 0, 0.5, 0)
			Slider.ZIndex = 5

			UIAspectRatioConstraint.Parent = Slider
			UIAspectRatioConstraint.AspectRatio = 7.000
			UIAspectRatioConstraint.AspectType = Enum.AspectType.ScaleWithParentSize

			UIStroke.Thickness = 2.000
			UIStroke.Transparency = 0.500
			UIStroke.Color = Color3.fromRGB(255, 255, 255)
			UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			UIStroke.Parent = Slider

			Title.Name = "Title"
			Title.Parent = Slider
			Title.AnchorPoint = Vector2.new(0.5, 0.5)
			Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Title.BackgroundTransparency = 1.000
			Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Title.BorderSizePixel = 0
			Title.Position = UDim2.new(0.272722125, 0, 0.500000119, 0)
			Title.Size = UDim2.new(0.461444288, 0, 0.700000048, 0)
			Title.ZIndex = 5
			Title.Font = Enum.Font.ArialBold
			Title.Text = SliderTitle or "Slider"
			Title.TextColor3 = Color3.fromRGB(255, 255, 255)
			Title.TextScaled = true
			Title.TextSize = 14.000
			Title.TextWrapped = true
			Title.TextXAlignment = Enum.TextXAlignment.Left

			UICorner.CornerRadius = UDim.new(0.100000001, 0)
			UICorner.Parent = Slider

			Untarl.Name = "Untarl"
			Untarl.Parent = Slider
			Untarl.AnchorPoint = Vector2.new(0.5, 0.5)
			Untarl.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
			Untarl.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Untarl.BorderSizePixel = 0
			Untarl.ClipsDescendants = true
			Untarl.Position = UDim2.new(0.741777062, 0, 0.500000298, 0)
			Untarl.Size = UDim2.new(0.439999998, 0, 0.25, 0)
			Untarl.ZIndex = 5

			UICorner_2.CornerRadius = UDim.new(0.300000012, 0)
			UICorner_2.Parent = Untarl

			Number.Name = "Number"
			Number.Parent = Untarl
			Number.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Number.BackgroundTransparency = 1.000
			Number.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Number.BorderSizePixel = 0
			Number.Size = UDim2.new(1, 0, 1, 0)
			Number.ZIndex = 7
			Number.Font = Enum.Font.GothamBold
			Number.Text = tostring(Min) or "100"
			Number.TextColor3 = Color3.fromRGB(255, 255, 255)
			Number.TextScaled = true
			Number.TextSize = 14.000
			Number.TextWrapped = true

			Frame.Parent = Untarl
			Frame.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
			Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Frame.BorderSizePixel = 0
			Frame.Size = UDim2.new(0, 0, 1, 0)
			Frame.ZIndex = 5

			UICorner_3.CornerRadius = UDim.new(0.300000012, 0)
			UICorner_3.Parent = Frame
			
			local IsDunp = false
			
			Untarl.InputBegan:Connect(function(Input)
				if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
					IsDunp = true
					Tween:Create(Frame,TweenInfo.new(0.3),{BackgroundColor3 = Color3.fromRGB(141, 141, 141)}):Play()
				end
			end)
			
			Untarl.InputEnded:Connect(function(Input)
				if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
					IsDunp = false
					Tween:Create(Frame,TweenInfo.new(0.3),{BackgroundColor3 = Color3.fromRGB(102, 102, 102)}):Play()
				end
			end)
			
			InputService.InputChanged:Connect(function(Input)
				if IsDunp and Input.UserInputType == Enum.UserInputType.MouseMovement then
					local SizeScale = math.clamp(((Input.Position.X - Untarl.AbsolutePosition.X) / Untarl.AbsoluteSize.X), 0, 1)
					local Value = math.floor(((Max - Min) * SizeScale) + Min)
					local Size = UDim2.fromScale(SizeScale, 1)
					Number.Text = Value
					Tween:Create(Frame,TweenInfo.new(0.1),{Size = Size}):Play()
					callback(Value)
				end
			end)
			return function(Value)
				if not Value then
					return
				end
				local UDSIze = math.clamp((Value / Max),0,1)
				local Size = UDim2.fromScale(UDSIze, 1)
				Tween:Create(Frame,TweenInfo.new(0.1),{Size = Size}):Play()
				Number.Text = tostring(Value)
				callback(tonumber(Value))
			end
		end
		
		function MAC_TAB:NewDropdown(DB_S:string,info:{string},callback:FunctionalTest)
			callback = callback or function() end
			info = info or {}
			
			local Dropdown = Instance.new("Frame")
			local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
			local UIStroke = Instance.new("UIStroke")
			local Title = Instance.new("TextLabel")
			local UICorner = Instance.new("UICorner")
			local Main = Instance.new("Frame")
			local UIStroke_2 = Instance.new("UIStroke")
			local UICorner_2 = Instance.new("UICorner")
			local Search = Instance.new("TextLabel")
			local UICorner_3 = Instance.new("UICorner")
			local img = Instance.new("ImageLabel")
			local Side = Instance.new("Frame")
			local Drop = Instance.new("Frame")
			local UICorner_4 = Instance.new("UICorner")
			local UIStroke_3 = Instance.new("UIStroke")
			local ScrollingFramea = Instance.new("ScrollingFrame")
			local UIListLayout = Instance.new("UIListLayout")
			local DropShadow = Instance.new("ImageLabel")
			
			UIListLayout:GetPropertyChangedSignal('AbsoluteContentSize'):Connect(function()
				Tween:Create(ScrollingFramea,TweenInfo.new(0.1),{CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 15)}):Play()
			end)
			
			Dropdown.Name = "Dropdown"
			Dropdown.Parent = ScrollingFrame
			Dropdown.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
			Dropdown.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Dropdown.BorderSizePixel = 0
			Dropdown.Size = UDim2.new(0.970000029, 0, 0.5, 0)
			Dropdown.ZIndex = 5

			UIAspectRatioConstraint.Parent = Dropdown
			UIAspectRatioConstraint.AspectRatio = 7.000
			UIAspectRatioConstraint.AspectType = Enum.AspectType.ScaleWithParentSize

			UIStroke.Thickness = 2.000
			UIStroke.Transparency = 0.500
			UIStroke.Color = Color3.fromRGB(255, 255, 255)
			UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			UIStroke.Parent = Dropdown

			Title.Name = "Title"
			Title.Parent = Dropdown
			Title.AnchorPoint = Vector2.new(0.5, 0.5)
			Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Title.BackgroundTransparency = 1.000
			Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Title.BorderSizePixel = 0
			Title.Position = UDim2.new(0.304138184, 0, 0.500000119, 0)
			Title.Size = UDim2.new(0.523277819, 0, 0.700000048, 0)
			Title.ZIndex = 5
			Title.Font = Enum.Font.ArialBold
			Title.Text = DB_S or "Dropdown"
			Title.TextColor3 = Color3.fromRGB(255, 255, 255)
			Title.TextScaled = true
			Title.TextSize = 14.000
			Title.TextWrapped = true
			Title.TextXAlignment = Enum.TextXAlignment.Left

			UICorner.CornerRadius = UDim.new(0.100000001, 0)
			UICorner.Parent = Dropdown

			Main.Name = "Main"
			Main.Parent = Dropdown
			Main.AnchorPoint = Vector2.new(0, 0.5)
			Main.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			Main.BackgroundTransparency = 0.900
			Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Main.BorderSizePixel = 0
			Main.Position = UDim2.new(0.579999983, 0, 0.5, 0)
			Main.Size = UDim2.new(0.376285672, 0, 0.649999976, 0)
			Main.ZIndex = 10

			UIStroke_2.Thickness = 0.900
			UIStroke_2.Transparency = 0.500
			UIStroke_2.Color = Color3.fromRGB(255, 255, 255)
			UIStroke_2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			UIStroke_2.Parent = Main

			UICorner_2.CornerRadius = UDim.new(0.349999994, 0)
			UICorner_2.Parent = Main

			Search.Name = "Search"
			Search.Parent = Main
			Search.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Search.BackgroundTransparency = 1.000
			Search.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Search.BorderSizePixel = 0
			Search.Size = UDim2.new(0.696279466, 0, 1, 0)
			Search.ZIndex = 5
			Search.Font = Enum.Font.GothamBold
			Search.Text = "Search..."
			Search.TextColor3 = Color3.fromRGB(255, 255, 255)
			Search.TextScaled = true
			Search.TextSize = 14.000
			Search.TextTransparency = 0.300
			Search.TextWrapped = true

			UICorner_3.CornerRadius = UDim.new(0.349999994, 0)
			UICorner_3.Parent = Search

			img.Name = "img"
			img.Parent = Main
			img.AnchorPoint = Vector2.new(0, 0.5)
			img.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			img.BackgroundTransparency = 1.000
			img.BorderColor3 = Color3.fromRGB(0, 0, 0)
			img.BorderSizePixel = 0
			img.Position = UDim2.new(0.75, 0, 0.5, 0)
			img.Size = UDim2.new(0.800000012, 0, 0.800000012, 0)
			img.SizeConstraint = Enum.SizeConstraint.RelativeYY
			img.ZIndex = 5
			img.Image = "rbxassetid://11269835227"

			Side.Name = "Side"
			Side.Parent = Main
			Side.AnchorPoint = Vector2.new(0.5, 0)
			Side.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Side.BackgroundTransparency = 0.500
			Side.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Side.BorderSizePixel = 0
			Side.Position = UDim2.new(0.725000024, 0, 0, 0)
			Side.Size = UDim2.new(0.00999999978, 0, 1, 0)
			Side.ZIndex = 5

			Drop.Name = "Drop"
			Drop.Parent = Dropdown
			Drop.AnchorPoint = Vector2.new(0.5, 0.5)
			Drop.BackgroundColor3 = Color3.fromRGB(85, 85, 85)
			Drop.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Drop.BorderSizePixel = 0
			Drop.ClipsDescendants = true
			Drop.Position = UDim2.new(0.5, 0, 1, 0)
			Drop.Size = UDim2.new(0.980000019, 0, 0, 0)
			Drop.Visible = false
			Drop.ZIndex = 15

			UICorner_4.CornerRadius = UDim.new(0, 5)
			UICorner_4.Parent = Drop

			UIStroke_3.Thickness = 2.000
			UIStroke_3.Transparency = 0.800
			UIStroke_3.Color = Color3.fromRGB(255, 255, 255)
			UIStroke_3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			UIStroke_3.Parent = Drop

			ScrollingFramea.Parent = Drop
			ScrollingFramea.Active = true
			ScrollingFramea.AnchorPoint = Vector2.new(0.5, 0.5)
			ScrollingFramea.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ScrollingFramea.BackgroundTransparency = 1.000
			ScrollingFramea.BorderColor3 = Color3.fromRGB(0, 0, 0)
			ScrollingFramea.BorderSizePixel = 0
			ScrollingFramea.ClipsDescendants = false
			ScrollingFramea.Position = UDim2.new(0.5, 0, 0.5, 0)
			ScrollingFramea.Size = UDim2.new(0.949999988, 0, 0.949999988, 0)
			ScrollingFramea.ZIndex = 16
			ScrollingFramea.ScrollBarThickness = 2

			UIListLayout.Parent = ScrollingFramea
			UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
			UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout.Padding = UDim.new(0, 8)

			DropShadow.Name = "DropShadow"
			DropShadow.Parent = Drop
			DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
			DropShadow.BackgroundTransparency = 1.000
			DropShadow.BorderSizePixel = 0
			DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
			DropShadow.Size = UDim2.new(1, 27, 1, 27)
			DropShadow.ZIndex = 15
			DropShadow.Image = "rbxassetid://6015897843"
			DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
			DropShadow.ImageTransparency = 0.500
			DropShadow.ScaleType = Enum.ScaleType.Slice
			DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)
			
			
			local function Db_Toggle(value)
				local CurrentTime = 0.15
				if value then
					Drop.Visible = true
					local tweenoon = Tween:Create(Drop, TweenInfo.new(CurrentTime), {Position = UDim2.new(0.5, 0, 2.58, 0), Size = UDim2.new(0.98, 0, 3, 0)})
					tweenoon:Play()
				else
					local tweenoff = Tween:Create(Drop, TweenInfo.new(CurrentTime), {Position = UDim2.new(0.5, 0, 0.58, 0), Size = UDim2.new(0.98, 0, 0, 0)})
					tweenoff:Play()
					tweenoff.Completed:Wait()
					if Drop.Position.Y.Scale <= 0.6 then
						Drop.Visible = false
					end
				end
			end
			Db_Toggle(false)
			
			local sideogg = false
			
			img.InputBegan:Connect(function(us)
				if us.UserInputType == Enum.UserInputType.Touch or us.UserInputType == Enum.UserInputType.MouseButton1 then
					sideogg = not sideogg
					Create_Ripple(Main)
					Db_Toggle(sideogg)
					
				end
			end)
			
			local function CreateUI()
				local DBButton = Instance.new("TextButton")
				local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
				local UICorner = Instance.new("UICorner")
				local UIStroke = Instance.new("UIStroke")

				DBButton.Name = "DBButton"
				DBButton.Parent = ScrollingFramea
				DBButton.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
				DBButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
				DBButton.BorderSizePixel = 0
				DBButton.Size = UDim2.new(0.899999976, 0, 0.5, 0)
				DBButton.ZIndex = 19
				DBButton.Font = Enum.Font.GothamBold
				DBButton.TextColor3 = Color3.fromRGB(255, 255, 255)
				DBButton.TextScaled = true
				DBButton.TextSize = 14.000
				DBButton.TextWrapped = true
				DBButton.TextXAlignment = Enum.TextXAlignment.Left

				UIAspectRatioConstraint.Parent = DBButton
				UIAspectRatioConstraint.AspectRatio = 9.000
				UIAspectRatioConstraint.AspectType = Enum.AspectType.ScaleWithParentSize

				UICorner.CornerRadius = UDim.new(0.100000001, 0)
				UICorner.Parent = DBButton

				UIStroke.Thickness = 2.000
				UIStroke.Transparency = 0.900
				UIStroke.Color = Color3.fromRGB(255, 255, 255)
				UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				UIStroke.Parent = DBButton
				return DBButton
			end
			
			local function Add()
				for i,v in ipairs(info) do
					local ui = CreateUI()
						ui.Text = tostring(v)
						ui.MouseButton1Click:Connect(function()
							Create_Ripple(ui)
							Search.Text = tostring(v)
							callback(v)
						end)
				end
			end
			
			local function RefreshDB()
				for i,v in ipairs(ScrollingFramea:GetChildren()) do
					if v:isA('TextButton') then
						
						v:Destroy()
					end
				end
				Add()
			end
			
			RefreshDB()
			
			return function(newlist)
				info = newlist
				RefreshDB()
			end
		end
		
		
		return MAC_TAB;
	end
	
	local function TOGGLE()
		BersiceLib.Enabled = (not BersiceLib.Enabled) or (false)
	end
	
	cancel.MouseButton1Click:Connect(function()
		TOGGLE()
	end)
	
	local function updateInput<Input...>(input)
		local delta = input.Position - dragStart
		local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		game:GetService('TweenService'):Create(Frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
	end

	Movement.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
			Create_Ripple(Movement)
			dragToggle = true
			dragStart = input.Position
			startPos = Frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)

	InputService.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			if dragToggle then
				updateInput(input)
			end
		end
	end)
	return MAC_WINDOW
end

return Bersice;
