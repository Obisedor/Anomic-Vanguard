-- Gui to Lua
-- Version: 3.2

-- Instances:

local AdminJoin = Instance.new("ScreenGui")
local MainHolder = Instance.new("ImageLabel")
local MainLabel = Instance.new("TextLabel")
local IgnoreHolder = Instance.new("ImageLabel")
local Hitbox = Instance.new("TextButton")
local IgnoreLabel = Instance.new("TextLabel")
--Properties:

AdminJoin.Name = "AdminJoin"
AdminJoin.Parent = game:GetService("CoreGui")
AdminJoin.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
AdminJoin.ResetOnSpawn = false
AdminJoin.Enabled = false

MainHolder.Name = "MainHolder"
MainHolder.Parent = AdminJoin
MainHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MainHolder.BackgroundTransparency = 1.000
MainHolder.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainHolder.BorderSizePixel = 0
MainHolder.Position = UDim2.new(0.275999993, 0, 0.0250000004, 0)
MainHolder.Size = UDim2.new(0.447843134, 0, 0.125313282, 0)
MainHolder.Image = "http://www.roblox.com/asset/?id=18543488706"
MainHolder.ImageTransparency = 0.300

MainLabel.Name = "MainLabel"
MainLabel.Parent = MainHolder
MainLabel.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
MainLabel.BackgroundTransparency = 1.000
MainLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainLabel.BorderSizePixel = 0
MainLabel.Position = UDim2.new(0.0830775052, 0, 0.11893753, 0)
MainLabel.Size = UDim2.new(0.831873894, 0, 0.75999999, 0)
MainLabel.Font = Enum.Font.SourceSans
MainLabel.Text = "A staff member is currently in the server! Pretty please watch out to avoid getting banned."
MainLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
MainLabel.TextScaled = true
MainLabel.TextSize = 14.000
MainLabel.TextWrapped = true

IgnoreHolder.Name = "IgnoreHolder"
IgnoreHolder.Parent = AdminJoin
IgnoreHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
IgnoreHolder.BackgroundTransparency = 1.000
IgnoreHolder.BorderColor3 = Color3.fromRGB(0, 0, 0)
IgnoreHolder.BorderSizePixel = 0
IgnoreHolder.Position = UDim2.new(0.430999994, 0, 0.150000006, 0)
IgnoreHolder.Size = UDim2.new(0, 175, 0, 32)
IgnoreHolder.Image = "http://www.roblox.com/asset/?id=18543488706"
IgnoreHolder.ImageTransparency = 0.300

Hitbox.Name = "Hitbox"
Hitbox.Parent = IgnoreHolder
Hitbox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Hitbox.BackgroundTransparency = 1.000
Hitbox.BorderColor3 = Color3.fromRGB(0, 0, 0)
Hitbox.BorderSizePixel = 0
Hitbox.Size = UDim2.new(0, 175, 0, 32)
Hitbox.Font = Enum.Font.SourceSans
Hitbox.Text = ""
Hitbox.TextColor3 = Color3.fromRGB(0, 0, 0)
Hitbox.TextSize = 14.000

IgnoreLabel.Name = "IgnoreLabel"
IgnoreLabel.Parent = Hitbox
IgnoreLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
IgnoreLabel.BackgroundTransparency = 1.000
IgnoreLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
IgnoreLabel.BorderSizePixel = 0
IgnoreLabel.Position = UDim2.new(0.0514285713, 0, 0.0928821564, 0)
IgnoreLabel.Size = UDim2.new(0, 155, 0, 25)
IgnoreLabel.Font = Enum.Font.SourceSans
IgnoreLabel.Text = "Ignore"
IgnoreLabel.TextColor3 = Color3.fromRGB(234, 255, 0)
IgnoreLabel.TextScaled = true
IgnoreLabel.TextSize = 14.000
IgnoreLabel.TextWrapped = true


local AdditionalAdmins = {
	["AdmlnALT"] = "Admin"
}

local AdminInServer = false

local function CheckIfAdmin(Player)
	if Player:IsInGroup(5473411) or AdditionalAdmins[Player.Name] then
		return true
	else
		return false
	end
end

local function MainHandler(Player, Action)
	if Action == "CheckAdmin" then
		local CheckPlayer = CheckIfAdmin(Player)
		if CheckPlayer == true and game.Players:FindFirstChild(Player.Name) then
			AdminInServer = true
			AdminJoin.Enabled = true
            print("Staff found", Player.Name)
		else
            print("Player is not staff", Player.Name)
		end
	end
	if Action == "IgnoreMessage" then
		AdminJoin.Enabled = false
	end
end

for i, v in pairs(game.Players:GetChildren()) do
	if v:IsA("Player") then
		MainHandler(v, "CheckAdmin")
	end
end

game.Players.PlayerAdded:Connect(function(Player)
	MainHandler(Player, "CheckAdmin")
end)
game.Players.PlayerRemoving:Connect(function(Player)
	MainHandler(Player, "CheckAdmin")
end)

Hitbox.MouseButton1Click:Connect(function()
	MainHandler(nil, "IgnoreMessage")
end)
