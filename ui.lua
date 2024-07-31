--[[

		Gui2Lua™
		10zOfficial
		Version 1.0.0

]]


-- Instances

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Frame_2 = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TextBox = Instance.new("TextBox")
local UICorner_2 = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local Frame_3 = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local TextButton = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")

-- Properties

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.new(0.172549, 0.172549, 0.172549)
Frame.BorderColor3 = Color3.new(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.338262171, 0, 0.310826272, 0)
Frame.Size = UDim2.new(0, 461, 0, 42)

Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = Color3.new(0.172549, 0.172549, 0.172549)
Frame_2.BorderColor3 = Color3.new(0, 0, 0)
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(-0.00158916484, 0, 1.31431222, 0)
Frame_2.Size = UDim2.new(0, 461, 0, 220)

UICorner.Parent = Frame_2

TextBox.Parent = Frame_2
TextBox.BackgroundColor3 = Color3.new(0.172549, 0.172549, 0.172549)
TextBox.BorderColor3 = Color3.new(0, 0, 0)
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0.0195227768, 0, 0.0318181813, 0)
TextBox.Size = UDim2.new(0, 442, 0, 203)
TextBox.Font = Enum.Font.Code
TextBox.MultiLine = true
TextBox.Text = ""
TextBox.TextColor3 = Color3.new(0.470588, 0.470588, 0.470588)
TextBox.TextSize = 20
TextBox.TextWrapped = true
TextBox.TextXAlignment = Enum.TextXAlignment.Left
TextBox.TextYAlignment = Enum.TextYAlignment.Top

UICorner_2.Parent = Frame

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.new(0.172549, 0.172549, 0.172549)
TextLabel.BackgroundTransparency = 1
TextLabel.BorderColor3 = Color3.new(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.0195227768, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 99, 0, 42)
TextLabel.Font = Enum.Font.Unknown
TextLabel.Text = "Sutor Internal"
TextLabel.TextColor3 = Color3.new(0.470588, 0.470588, 0.470588)
TextLabel.TextSize = 14

Frame_3.Parent = Frame
Frame_3.BackgroundColor3 = Color3.new(0.172549, 0.172549, 0.172549)
Frame_3.BorderColor3 = Color3.new(0, 0, 0)
Frame_3.BorderSizePixel = 0
Frame_3.Position = UDim2.new(-0.00450653955, 0, 6.81431198, 0)
Frame_3.Size = UDim2.new(0, 461, 0, 42)

UICorner_3.Parent = Frame_3

TextButton.Parent = Frame_3
TextButton.BackgroundColor3 = Color3.new(0.172549, 0.172549, 0.172549)
TextButton.BorderColor3 = Color3.new(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.284164846, 0, 0.0714285746, 0)
TextButton.Size = UDim2.new(0, 200, 0, 35)
TextButton.Font = Enum.Font.Code
TextButton.Text = "Execute"
TextButton.TextColor3 = Color3.new(0.470588, 0.470588, 0.470588)
TextButton.TextSize = 14

UICorner_4.Parent = TextButton

-- Scripts

local function TOOASL_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	
	local textbox = script.Parent.Parent.TextBox
	script.Parent.MouseButton1Click:Connect(function()
		loadstring(textbox.Text)()
	end)
end
coroutine.wrap(TOOASL_fake_script)()
local function XTPROA_fake_script() -- Frame.LocalScript 
	local script = Instance.new('LocalScript', Frame)

	-- Made by Real_IceyDev (@lceyDex) --
	-- Simple UI dragger (PC Only/Any device that has a mouse) --
	
	local UIS = game:GetService('UserInputService')
	local frame = script.Parent
	local dragToggle = nil
	local dragSpeed = 0.25
	local dragStart = nil
	local startPos = nil
	
	local function updateInput(input)
		local delta = input.Position - dragStart
		local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
	end
	
	frame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
			dragToggle = true
			dragStart = input.Position
			startPos = frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)
	
	UIS.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			if dragToggle then
				updateInput(input)
			end
		end
	end)
end
coroutine.wrap(XTPROA_fake_script)()
