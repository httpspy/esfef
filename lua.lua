local instance = {instances = {}}
function instance.new(class, properties)
	local inst = Instance.new(class)
	for property, value in next, properties do
		inst[property] = value
	end
	
	table.insert(instance.instances, inst)
	return inst
end


local ScreenGui = instance.new("ScreenGui", {
	Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui");
	ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
})

local Frame = instance.new("Frame", {
	Parent = ScreenGui;
	BackgroundColor3 = Color3.fromRGB(44, 44, 44);
	BorderColor3 = Color3.fromRGB(0, 0, 0);
	BorderSizePixel = 0;
	Position = UDim2.new(0.338262171, 0, 0.310826272, 0);
	Size = UDim2.new(0, 461, 0, 42);
})

local Frame = instance.new("Frame", {
	Parent = Frame;
	BackgroundColor3 = Color3.fromRGB(44, 44, 44);
	BorderColor3 = Color3.fromRGB(0, 0, 0);
	BorderSizePixel = 0;
	Position = UDim2.new(-0.00158916484, 0, 1.31431222, 0);
	Size = UDim2.new(0, 461, 0, 220);
})

local UICorner = instance.new("UICorner", {
	Parent = Frame;
})

local TextBox = instance.new("TextBox", {
	Parent = Frame;
	BackgroundColor3 = Color3.fromRGB(44, 44, 44);
	BorderColor3 = Color3.fromRGB(0, 0, 0);
	BorderSizePixel = 0;
	Position = UDim2.new(0.0195227768, 0, 0.0318181813, 0);
	Size = UDim2.new(0, 442, 0, 203);
	Font = Enum.Font.Code;
	MultiLine = true;
	Text = "";
	TextColor3 = Color3.fromRGB(120, 120, 120);
	TextSize = 20.000;
	TextWrapped = true;
	TextXAlignment = Enum.TextXAlignment.Left;
	TextYAlignment = Enum.TextYAlignment.Top;
})

local UICorner = instance.new("UICorner", {
	Parent = Frame;
})

local TextLabel = instance.new("TextLabel", {
	Parent = Frame;
	BackgroundColor3 = Color3.fromRGB(44, 44, 44);
	BackgroundTransparency = 1.000;
	BorderColor3 = Color3.fromRGB(0, 0, 0);
	BorderSizePixel = 0;
	Position = UDim2.new(0.0195227768, 0, 0, 0);
	Size = UDim2.new(0, 99, 0, 42);
	Font = Enum.Font.Unknown;
	Text = "Sutor Internal";
	TextColor3 = Color3.fromRGB(120, 120, 120);
	TextSize = 14.000;
})

local Frame = instance.new("Frame", {
	Parent = Frame;
	BackgroundColor3 = Color3.fromRGB(44, 44, 44);
	BorderColor3 = Color3.fromRGB(0, 0, 0);
	BorderSizePixel = 0;
	Position = UDim2.new(-0.00450653955, 0, 6.81431198, 0);
	Size = UDim2.new(0, 461, 0, 42);
})

local UICorner = instance.new("UICorner", {
	Parent = Frame;
})

local TextButton = instance.new("TextButton", {
	Parent = Frame;
	BackgroundColor3 = Color3.fromRGB(44, 44, 44);
	BorderColor3 = Color3.fromRGB(0, 0, 0);
	BorderSizePixel = 0;
	Position = UDim2.new(0.284164846, 0, 0.0714285746, 0);
	Size = UDim2.new(0, 200, 0, 35);
	Font = Enum.Font.Code;
	Text = "Execute";
	TextColor3 = Color3.fromRGB(120, 120, 120);
	TextSize = 14.000;
})

local UICorner = instance.new("UICorner", {
	Parent = TextButton;
})

-- Scripts:

local function BQSTB_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	
	local textbox = script.Parent.Parent.TextBox
	script.Parent.MouseButton1Click:Connect(function()
		loadstring(textbox.Text)()
	end)
end
coroutine.wrap(BQSTB_fake_script)()
local function GRMO_fake_script() -- Frame.LocalScript 
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
coroutine.wrap(GRMO_fake_script)()
