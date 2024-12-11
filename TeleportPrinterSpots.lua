local LP = game.Players.LocalPlayer
local HRP = LP.Character.HumanoidRootPart



local AllLocations = {
	["Eastdike"] = {
		["East appartment backrooms"] = {
			CF = "2576, 8, -3730"
		},
		["East appartment backrooms 2"] = {
			CF = "2915, 8, -3927"
		}
	},
	["Underground spots"] = {
		["Terrain 1"] = {
			CF = "4592, 92, -2751"
		},
		["Terrain 2"] = {
			CF = "2915, 8, -3927"
		}
	},
	["Border spots"] = {
		["Terrain 1"] = {
			CF = "1755, 78, 1032"
		},
		["Terrain 2"] = {
			CF = "7, 27, 700"
		}
	},
	["Goverment facilities"] = {
		["Piew piew backrooms"] = {
			CF = "1627, -57, -1195"
		},
		["Hospital backrooms 1"] = {
			CF = "1587, -65, -1430"
		},
		["Hospital backrooms 2"] = {
			CF = "1544, -65, -1419"
		}
	},
	["Miscellaneous"] = {
		["A ghost's perch"] = {
			CF = "50, -63, 57"
		},
		["Bonfire's sex club"] = {
			CF = "1006, -39, -123"
		},
		["Hospital backrooms 2"] = {
			CF = "1587, -65, -1430"
		},
		["Arway backrooms"] = {
			CF = "1921, -66, -1404"
		},
		["Bank escape tunnel (very real)"] = {
			CF = "1967, -83, -1424"
		},
		["Spawn"] = {
			CF = "446, -8, -1334"
		},
		["Phester dam"] = {
			CF = "4365, -19, -2454"
		},
		["Under tunnel"] = {
			CF = "350, -31, -1280"
		}
	}
}

-- Instances:

local AnomicVanguardAutoPrintTP = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Title = Instance.new("TextLabel")
local UICorner_2 = Instance.new("UICorner")
local Holder = Instance.new("Frame")
local ScrollingFrame = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local SpotTeleportClone = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local CategoryClone = Instance.new("TextLabel")
local UICorner_4 = Instance.new("UICorner")
local UICorner_5 = Instance.new("UICorner")

--Properties:

AnomicVanguardAutoPrintTP.Name = "AnomicVanguardAutoPrintTP"
AnomicVanguardAutoPrintTP.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
AnomicVanguardAutoPrintTP.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
AnomicVanguardAutoPrintTP.ResetOnSpawn = false

Main.Name = "Main"
Main.Parent = AnomicVanguardAutoPrintTP
Main.Active = true
Main.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Main.BackgroundTransparency = 0.500
Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0, 0, 0.672110558, 0)
Main.Size = UDim2.new(0.144963145, 0, 0.326633155, 0)
Main.Draggable = true

UICorner.CornerRadius = UDim.new(0.100000001, 0)
UICorner.Parent = Main

Title.Name = "Title"
Title.Parent = Main
Title.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Title.BackgroundTransparency = 0.500
Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.0395480208, 0, 0.0346153863, 0)
Title.Size = UDim2.new(0.915254235, 0, 0.138461545, 0)
Title.Font = Enum.Font.Unknown
Title.Text = "Anomic Vanguard printing locations"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextWrapped = true

UICorner_2.CornerRadius = UDim.new(0.300000012, 0)
UICorner_2.Parent = Title

Holder.Name = "Holder"
Holder.Parent = Main
Holder.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Holder.BackgroundTransparency = 0.500
Holder.BorderColor3 = Color3.fromRGB(0, 0, 0)
Holder.BorderSizePixel = 0
Holder.Position = UDim2.new(0.0395480208, 0, 0.196153849, 0)
Holder.Size = UDim2.new(0.915254235, 0, 0.769230783, 0)

ScrollingFrame.Parent = Holder
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.BackgroundTransparency = 1.000
ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(-0.0022229848, 0, 0.024230957, 0)
ScrollingFrame.Size = UDim2.new(0.981481493, 0, 0.949999988, 0)
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
ScrollingFrame.ScrollBarThickness = 6
ScrollingFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y

UIListLayout.Parent = ScrollingFrame
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0.0250000004, 0)

SpotTeleportClone.Name = "SpotTeleportClone"
SpotTeleportClone.Parent = ScrollingFrame
SpotTeleportClone.Active = false
SpotTeleportClone.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
SpotTeleportClone.BackgroundTransparency = 0.500
SpotTeleportClone.BorderColor3 = Color3.fromRGB(0, 0, 0)
SpotTeleportClone.BorderSizePixel = 0
SpotTeleportClone.Position = UDim2.new(0.0822856575, 0, 0, 0)
SpotTeleportClone.Size = UDim2.new(0.848007321, 0, 0.0991717502, 0)
SpotTeleportClone.Font = Enum.Font.SourceSans
SpotTeleportClone.Text = "East appartment 1"
SpotTeleportClone.TextColor3 = Color3.fromRGB(255, 255, 255)
SpotTeleportClone.TextSize = 14.000
SpotTeleportClone.TextScaled = true
SpotTeleportClone.Visible = false

UICorner_3.CornerRadius = UDim.new(0.300000012, 0)
UICorner_3.Parent = SpotTeleportClone

CategoryClone.Name = "CategoryClone"
CategoryClone.Parent = ScrollingFrame
CategoryClone.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CategoryClone.BackgroundTransparency = 0.500
CategoryClone.BorderColor3 = Color3.fromRGB(0, 0, 0)
CategoryClone.BorderSizePixel = 0
CategoryClone.Position = UDim2.new(0.040841829, 0, 0.124171846, 0)
CategoryClone.Size = UDim2.new(0.930894971, 0, 0.112107247, 0)
CategoryClone.Font = Enum.Font.Unknown
CategoryClone.Text = "-=- Category -=-"
CategoryClone.TextColor3 = Color3.fromRGB(165, 143, 143)
CategoryClone.TextScaled = true
CategoryClone.TextSize = 14.000
CategoryClone.TextWrapped = true
CategoryClone.Visible = false

UICorner_4.CornerRadius = UDim.new(0.300000012, 0)
UICorner_4.Parent = CategoryClone

UICorner_5.CornerRadius = UDim.new(0.075000003, 0)
UICorner_5.Parent = Holder


local CurrentOrder = 0

for i, v in pairs(AllLocations) do
	CurrentOrder = CurrentOrder + 1
	local CloneCategory = CategoryClone:Clone()
	CloneCategory.Parent = ScrollingFrame
	CloneCategory.Text = "-=- " .. i .. " -=-"
	CloneCategory.LayoutOrder = CurrentOrder
	CloneCategory.Visible = true
	for ii, vv in pairs(v) do
		CurrentOrder = CurrentOrder + 1
		local CloneLocationButton = SpotTeleportClone:Clone()
		CloneLocationButton.Parent = ScrollingFrame
		CloneLocationButton.Text = ii .. " - TP"
		CloneLocationButton.LayoutOrder = CurrentOrder
		CloneLocationButton.Visible = true
		CloneLocationButton.FontFace.Weight = Enum.FontWeight.Bold
		CloneLocationButton.MouseButton1Click:Connect(function()
			local x, y, z = string.match(vv.CF, "([^,]+),%s*([^,]+),%s*([^,]+)")
			x, y, z = tonumber(x), tonumber(y), tonumber(z)

			if x and y and z then
				HRP.CFrame = CFrame.new(Vector3.new(x, y, z))
			end
		end)
	end
	CurrentOrder = CurrentOrder + 1
end

local CloneLocationButton = SpotTeleportClone:Clone()
CloneLocationButton.Parent = ScrollingFrame
CloneLocationButton.Text = "Close UI"
CloneLocationButton.TextColor3 = Color3.fromRGB(255, 0, 4)
CloneLocationButton.LayoutOrder = CurrentOrder
CloneLocationButton.Visible = true
CloneLocationButton.MouseButton1Click:Connect(function()
	AnomicVanguardAutoPrintTP:Destroy()
end)
