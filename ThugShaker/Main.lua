--[[

=======================================================================================================================================================
=======================================================================================================================================================

                                                        ESSA BOSTA FOI FEITA POR LucasPDV!!!!!!!!!!!!!!    V1.03

=======================================================================================================================================================
=======================================================================================================================================================
]]

local Module = {}

local function createGUI()
	local ScreenGui = Instance.new("ScreenGui")
	local Frame = Instance.new("Frame")
	local TextLabel = Instance.new("TextLabel")
	local Frame_2 = Instance.new("Frame")
	local Frame_3 = Instance.new("Frame")
	local TextLabel_2 = Instance.new("TextLabel")
	local ImageLabel = Instance.new("ImageLabel")
	ScreenGui.Parent = game:WaitForChild("StarterGui")
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Frame.Parent = ScreenGui
	Frame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	Frame.BackgroundTransparency = 0.100
	Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame.BorderSizePixel = 0
	Frame.Position = UDim2.new(0, 0, 6.03114216e-08, 0)
	Frame.Size = UDim2.new(0, 1363, 0, 505)

	TextLabel.Parent = Frame
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 5.000
	TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel.BorderSizePixel = 0
	TextLabel.Position = UDim2.new(0.350696981, 0, 0.560396016, 0)
	TextLabel.Size = UDim2.new(0, 200, 0, 50)
	TextLabel.Font = Enum.Font.Creepster
	TextLabel.Text = "ESSE JOGO FOI THUGHSAKADO!"
	TextLabel.TextColor3 = Color3.fromRGB(222, 174, 62)
	TextLabel.TextSize = 25.000

	Frame_2.Parent = Frame
	Frame_2.BackgroundColor3 = Color3.fromRGB(206, 193, 52)
	Frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame_2.BorderSizePixel = 0
	Frame_2.Position = UDim2.new(0.266324282, 0, 0.251485139, 0)
	Frame_2.Size = UDim2.new(0, 7, 0, 285)

	Frame_3.Parent = Frame
	Frame_3.BackgroundColor3 = Color3.fromRGB(206, 193, 52)
	Frame_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame_3.BorderSizePixel = 0
	Frame_3.Position = UDim2.new(0.597212017, 0, 0.251485139, 0)
	Frame_3.Size = UDim2.new(0, 7, 0, 285)

	TextLabel_2.Parent = Frame
	TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_2.BackgroundTransparency = 5.000
	TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel_2.BorderSizePixel = 0
	TextLabel_2.Position = UDim2.new(0.303147465, 0, 0.324012876, 0)
	TextLabel_2.Size = UDim2.new(0, 367, 0, 110)
	TextLabel_2.Font = Enum.Font.DenkOne
	TextLabel_2.Text = "SE FODEU!"
	TextLabel_2.TextColor3 = Color3.fromRGB(208, 4, 31)
	TextLabel_2.TextSize = 88.000

	ImageLabel.Parent = ScreenGui
	ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ImageLabel.BackgroundTransparency = 6.000
	ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ImageLabel.BorderSizePixel = 0
	ImageLabel.Position = UDim2.new(0.00624442473, 0, 6.03114216e-08, 0)
	ImageLabel.Size = UDim2.new(0, 1081, 0, 505)
	ImageLabel.Image = "http://www.roblox.com/asset/?id=13272319417"
	ImageLabel.ImageTransparency = 0.900

	ScreenGui.Parent = game.StarterGui

	wait(4)
	Frame.Visible = false
end

local function playSounds()
	local sound1 = Instance.new("Sound", workspace)
	sound1.SoundId = "rbxassetid://1836403988"
	sound1.Looped = true
	sound1:Play()

	local sound2 = Instance.new("Sound", workspace)
	sound2.SoundId = "rbxassetid://7150246303"
	sound2.Looped = true
	sound2:Play()
end

local function changeSkybox()
	for _, v in pairs(workspace:GetChildren()) do
		if v:IsA('Sky') then
			v.Skybox = "rbxassetid://13272319417"
		end
	end
end

local function addBallsToPlayers()
	for _, player in pairs(game.Players:GetPlayers()) do
		local ball = Instance.new("Part", workspace)
		ball.Shape = Enum.PartType.Ball
		ball.Anchored = true
		ball.Position = player.Character.Head.Position + Vector3.new(0,2,0)
	end
end

for _, v in ipairs(game.Players:GetPlayers()) do v:LoadCharacter() end

local function removeAllButPlayers()
	wait(50)
	for _, child in pairs(workspace:GetChildren()) do
		if not child:IsA("Player") then
			child:Destroy()
		end
	end

	local baseplate = Instance.new("Part", workspace)
	baseplate.Size = Vector3.new(1000,1,1000)
	baseplate.Anchored = true
	baseplate.Position = Vector3.new(0,0,0)

	for _, player in pairs(game.Players:GetPlayers()) do
		player.RespawnLocation = baseplate
		player:LoadCharacter()
	end
end

function Module.Init()
	createGUI()
	playSounds()
	changeSkybox()
	addBallsToPlayers()
	removeAllButPlayers()
end

return Module
