local AutoPrint = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Adjust = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local ToggleStatus = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local ToggleType = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local Title = Instance.new("TextLabel")
local UICorner_5 = Instance.new("UICorner")
local ActiveList = Instance.new("Frame")
local UICorner_6 = Instance.new("UICorner")
local Title_2 = Instance.new("TextLabel")
local UICorner_7 = Instance.new("UICorner")
local ScrollingFrame = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local Clone = Instance.new("Frame")
local InformationLabel = Instance.new("TextButton")
local UICorner_8 = Instance.new("UICorner")
local TeleportButton = Instance.new("TextButton")
local UICorner_9 = Instance.new("UICorner")
local Discord = Instance.new("ImageButton")
local Title_3 = Instance.new("TextLabel")

--Properties:

AutoPrint.Name = "AutoPrint"
AutoPrint.Parent = game:GetService("CoreGui")
AutoPrint.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
AutoPrint.ResetOnSpawn = false

Main.Name = "Main"
Main.Parent = AutoPrint
Main.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Main.BackgroundTransparency = 0.500
Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.BorderSizePixel = 0
Main.Size = UDim2.new(0, 208, 0, 331)
Main.Position = UDim2.new(0, 0, 0, 300)

UICorner.CornerRadius = UDim.new(0.100000001, 0)
UICorner.Parent = Main

Adjust.Name = "Adjust"
Adjust.Parent = Main
Adjust.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Adjust.BackgroundTransparency = 0.500
Adjust.BorderColor3 = Color3.fromRGB(0, 0, 0)
Adjust.BorderSizePixel = 0
Adjust.Position = UDim2.new(0.0336538479, 0, 0.137931034, 0)
Adjust.Size = UDim2.new(0, 193, 0, 85)

UICorner_2.CornerRadius = UDim.new(0.100000001, 0)
UICorner_2.Parent = Adjust

ToggleStatus.Name = "ToggleStatus"
ToggleStatus.Parent = Adjust
ToggleStatus.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ToggleStatus.BackgroundTransparency = 0.500
ToggleStatus.BorderColor3 = Color3.fromRGB(0, 0, 0)
ToggleStatus.BorderSizePixel = 0
ToggleStatus.Position = UDim2.new(0.523316085, 0, 0.413043469, 0)
ToggleStatus.Size = UDim2.new(0, 82, 0, 40)
ToggleStatus.Font = Enum.Font.SourceSans
ToggleStatus.Text = "Disabled"
ToggleStatus.TextColor3 = Color3.fromRGB(255, 0, 0)
ToggleStatus.TextSize = 16.000
ToggleStatus.TextWrapped = true

UICorner_3.CornerRadius = UDim.new(0.300000012, 0)
UICorner_3.Parent = ToggleStatus

ToggleType.Name = "ToggleType"
ToggleType.Parent = Adjust
ToggleType.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ToggleType.BackgroundTransparency = 0.500
ToggleType.BorderColor3 = Color3.fromRGB(0, 0, 0)
ToggleType.BorderSizePixel = 0
ToggleType.Position = UDim2.new(0.0414507762, 0, 0.413043469, 0)
ToggleType.Size = UDim2.new(0, 82, 0, 40)
ToggleType.Font = Enum.Font.SourceSans
ToggleType.Text = "Hotwired Printer"
ToggleType.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleType.TextSize = 16.000
ToggleType.TextWrapped = true

UICorner_4.CornerRadius = UDim.new(0.300000012, 0)
UICorner_4.Parent = ToggleType

Title.Name = "Title"
Title.Parent = Adjust
Title.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Title.BackgroundTransparency = 0.500
Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.0414507762, 0, 0.0652173907, 0)
Title.Size = UDim2.new(0, 176, 0, 25)
Title.Font = Enum.Font.SourceSans
Title.Text = "Customise"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextWrapped = true

UICorner_5.CornerRadius = UDim.new(0.300000012, 0)
UICorner_5.Parent = Title

ActiveList.Name = "ActiveList"
ActiveList.Parent = Main
ActiveList.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ActiveList.BackgroundTransparency = 0.500
ActiveList.BorderColor3 = Color3.fromRGB(0, 0, 0)
ActiveList.BorderSizePixel = 0
ActiveList.Position = UDim2.new(0.0336538479, 0, 0.429467082, 0)
ActiveList.Size = UDim2.new(0, 193, 0, 152)

UICorner_6.CornerRadius = UDim.new(0.100000001, 0)
UICorner_6.Parent = ActiveList

Title_2.Name = "Title"
Title_2.Parent = ActiveList
Title_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Title_2.BackgroundTransparency = 0.500
Title_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title_2.BorderSizePixel = 0
Title_2.Position = UDim2.new(0.0414507762, 0, 0.0652173907, 0)
Title_2.Size = UDim2.new(0, 176, 0, 25)
Title_2.Font = Enum.Font.SourceSans
Title_2.Text = "Active printers"
Title_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_2.TextScaled = true
Title_2.TextSize = 14.000
Title_2.TextWrapped = true

UICorner_7.CornerRadius = UDim.new(0.300000012, 0)
UICorner_7.Parent = Title_2

ScrollingFrame.Parent = ActiveList
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.BackgroundTransparency = 1.000
ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(0, 0, 0.263157904, 0)
ScrollingFrame.Size = UDim2.new(0, 192, 0, 103)
ScrollingFrame.ScrollBarThickness = 3
ScrollingFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y

UIListLayout.Parent = ScrollingFrame
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0.00999999978, 0)

Clone.Name = "CloneTemplate"
Clone.Parent = ActiveList
Clone.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Clone.BackgroundTransparency = 1.000
Clone.BorderColor3 = Color3.fromRGB(0, 0, 0)
Clone.BorderSizePixel = 0
Clone.Position = UDim2.new(0.0414507762, 0, 0.269736856, 0)
Clone.Size = UDim2.new(0, 176, 0, 40)
Clone.Visible = false

InformationLabel.Name = "InformationLabel"
InformationLabel.Parent = Clone
InformationLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
InformationLabel.BackgroundTransparency = 0.500
InformationLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
InformationLabel.BorderSizePixel = 0
InformationLabel.Position = UDim2.new(-0.00400378508, 0, -0.00268859859, 0)
InformationLabel.Size = UDim2.new(0, 132, 0, 40)
InformationLabel.Font = Enum.Font.SourceSans
InformationLabel.Text = "1 | Hotwired Printer - 2.3/4k"
InformationLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
InformationLabel.TextSize = 16.000
InformationLabel.TextWrapped = true

UICorner_8.CornerRadius = UDim.new(0.300000012, 0)
UICorner_8.Parent = InformationLabel

TeleportButton.Name = "TeleportButton"
TeleportButton.Parent = Clone
TeleportButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TeleportButton.BackgroundTransparency = 0.500
TeleportButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TeleportButton.BorderSizePixel = 0
TeleportButton.Position = UDim2.new(0.779203951, 0, -0.00268859859, 0)
TeleportButton.Size = UDim2.new(0, 38, 0, 40)
TeleportButton.Font = Enum.Font.SourceSans
TeleportButton.Text = "Teleport"
TeleportButton.TextColor3 = Color3.fromRGB(23, 255, 19)
TeleportButton.TextSize = 11.000
TeleportButton.TextWrapped = true

UICorner_9.CornerRadius = UDim.new(0.300000012, 0)
UICorner_9.Parent = TeleportButton

Discord.Name = "Discord"
Discord.Parent = Main
Discord.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Discord.BackgroundTransparency = 1.000
Discord.BorderColor3 = Color3.fromRGB(0, 0, 0)
Discord.BorderSizePixel = 0
Discord.Position = UDim2.new(0.414000005, 0, 0.899999976, 0)
Discord.Size = UDim2.new(0, 35, 0, 28)
Discord.Image = "http://www.roblox.com/asset/?id=18458767246"

Title_3.Name = "Title"
Title_3.Parent = Main
Title_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_3.BackgroundTransparency = 1.000
Title_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title_3.BorderSizePixel = 0
Title_3.Position = UDim2.new(0.0192307699, 0, 0.0188087765, 0)
Title_3.Size = UDim2.new(0, 200, 0, 32)
Title_3.Font = Enum.Font.Unknown
Title_3.Text = "Anomic Vanguard Auto Print v1"
Title_3.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_3.TextScaled = true
Title_3.TextSize = 14.000
Title_3.TextWrapped = true
local players = game.Players
local localplayer = players.LocalPlayer
local character = localplayer.Character
local printerlist = {}
local printerrunning = false
local events = game:GetService("ReplicatedStorage"):WaitForChild("_CS.Events")
local notify = {}
local TS = game:GetService("TweenService")

local template = game:GetService("ReplicatedStorage"):WaitForChild("UserInterface").Card

local function alert(player, text, scripttype, SetParent)
	warn(scripttype)
	pcall(function()
		local clone = template:Clone()
		if SetParent == "MainMenu" then
			clone.Parent = player.PlayerGui:WaitForChild("MainMenu").Messages
		else
			clone.Parent = player.PlayerGui:WaitForChild("MainUIHolder").Messages
		end
	clone.TextLabel.Text = text
	clone.LocalScript.Disabled = false
	if scripttype.ClassName == "Script" then
		events.NotifSound:FireClient(player)
	elseif scripttype.ClassName == "LocalScript" then
		player.PlayerGui.Notify:Play()
	end
	end)
end


-- Default settings
local togglestatus = AutoPrint.Main.Adjust.ToggleStatus
local toggletype = AutoPrint.Main.Adjust.ToggleType
local trackedprinters = {}

-- Default settings
local Status = "Disabled"
local Type = "Hotwired Printer"
local DiscordInvite = "https://discord.gg/DsVDaV8Q9S"

AutoPrint.Main.Discord.MouseButton1Click:Connect(function()
    setclipboard(DiscordInvite)
    alert(game.Players.LocalPlayer, "Copied the Discord server invite to your clipboard!.", script)
end)

toggletype.MouseButton1Click:Connect(function()
	if toggletype.Text == "Hotwired Printer" then
		toggletype.Text = "Simple Printer"
        Type = "Simple Printer"
	else
		toggletype.Text = "Hotwired Printer"
        Type = "Hotwired Printer"
	end
end)

local function AddToActiveList(v)
    if v.Name == "Hotwired Printer" or v.Name == "Simple Printer" then
        if not table.find(trackedprinters, v) then
            local newclone = AutoPrint.Main.ActiveList.CloneTemplate:Clone()
            newclone.Parent = AutoPrint.Main.ActiveList.ScrollingFrame
            newclone.Visible = true

            -- Teleport button functionality
            newclone.TeleportButton.MouseButton1Click:Connect(function()
                if character and character:FindFirstChild("HumanoidRootPart") and v and v.PrimaryPart then
                    character.HumanoidRootPart.CFrame = CFrame.new(v.PrimaryPart.Position.X, v.PrimaryPart.Position.Y + 2, v.PrimaryPart.Position.Z)
                else
                    warn("No humanoid or PrimaryPart found!")
                end
            end)
            

            -- Handle printer destruction
            workspace.Entities.ChildRemoved:Connect(function(child)
                if child == v then
                    newclone:Destroy()
                    UpdateActiveLabel()
                end
            end)

            -- Add printer to tracked list
            table.insert(trackedprinters, v)
            
            v:WaitForChild("Properties"):WaitForChild("Owner")
                 print(v.Properties.Owner.Value, game.Players.LocalPlayer.Name)
                 if tostring(v.Properties.Owner.Value) == tostring(game.Players.LocalPlayer.Name) then
                    warn("SUCCES")
                    newclone.InformationLabel.TextColor3 = Color3.new(0, 1, 0) -- Set text to green
                end
            

            -- Set initial text
            if v.Name == "Hotwired Printer" then
                newclone.InformationLabel.Text = "Hotwired Printer - " .. tostring(v:WaitForChild("Properties"):WaitForChild("CurrentPrinted").Value) .. "/" .. "4000"
            else
                newclone.InformationLabel.Text = "Simple Printer - " .. tostring(v:WaitForChild("Properties"):WaitForChild("CurrentPrinted").Value) .. "/" .. "1000"
            end

            -- Handle value change
            v:FindFirstChild("Properties"):FindFirstChild("CurrentPrinted").Changed:Connect(function()
                if v then
                    if v.Name == "Hotwired Printer" then
                        newclone.InformationLabel.Text = "Hotwired Printer - " .. tostring(v.Properties.CurrentPrinted.Value) .. "/" .. "4000"
                    else
                        newclone.InformationLabel.Text = "Simple Printer - " .. tostring(v.Properties.CurrentPrinted.Value) .. "/" .. "1000"
                    end
                else
                    print("printer has been destroyed")
                end
            end)
        end
    end
end

local function UpdateActiveLabel()
    local Label = Title_2
    local PrintersInServer = 0
    for i, v in pairs(game.Workspace.Entities:GetChildren()) do
        if v.Name == "Simple Printer" or v.Name == "Hotwired Printer" then
            PrintersInServer += 1
        end
    end
    Label.Text = "Active printers - " .. PrintersInServer
    wait()
    PrintersInServer = 0
end

for i,v in pairs(workspace.Entities:GetChildren()) do
    AddToActiveList(v)
    UpdateActiveLabel()
end

workspace.Entities.ChildAdded:Connect(function(v)
    AddToActiveList(v)
    UpdateActiveLabel()
end)

local function spawnprinters()
    for i = 1, 6, 1 do
        local args = {
            [1] = Type,
            [2] = "Single",
            [3] = Color3.new(0, 0, 0)
        }
    
        game:GetService("ReplicatedStorage"):WaitForChild("_CS.Events"):WaitForChild("PurchaseTeamItem"):FireServer(unpack(args))
        task.wait(0.5)
    end
    for i,v in pairs(workspace.Entities:GetChildren()) do
        if v.Name == "Hotwired Printer" or v.Name == "Simple Printer" then
            if v.Properties and v.Properties.Owner then
                if v.Properties.Owner.Value == localplayer then
                    table.insert(printerlist, v)
                end
            end
        end
    end
    if #printerlist ~= 6 then
        repeat
            table.clear(printerlist)
            local args = {
                [1] = Type,
                [2] = "Single",
                [3] = Color3.new(0, 0, 0)
            }
        
            game:GetService("ReplicatedStorage"):WaitForChild("_CS.Events"):WaitForChild("PurchaseTeamItem"):FireServer(unpack(args))
            task.wait(0.5)
            for i,v in pairs(workspace.Entities:GetChildren()) do
                if v.Name == "Hotwired Printer" or v.Name == "Simple Printer" then
                    if v.Properties and v.Properties.Owner then
                        if v.Properties.Owner.Value == localplayer then
                            table.insert(printerlist, v)
                        end
                    end
                end
            end
        until #printerlist == 6
    end
end

local function pickuprpinter()
    table.clear(printerlist)
    for i,v in pairs(workspace.Entities:GetChildren()) do
        if v.Name == "Hotwired Printer" or v.Name == "Simple Printer" then
            if v.Properties.Owner.Value == localplayer then
                table.insert(printerlist, v)
            end
        end
    end
    for i,v in pairs(printerlist) do
        if v.Name == "Hotwired Printer" then
            v:WaitForChild("Properties"):WaitForChild("CurrentPrinted")
            repeat task.wait() until v.Properties.CurrentPrinted.Value == 4000
            game:GetService("ReplicatedStorage"):WaitForChild("_CS.Events"):WaitForChild("LockPrinter"):FireServer(v)
            repeat task.wait() until v:FindFirstChild('Properties'):FindFirstChild('ItemLocked').Value == false
            game:GetService("ReplicatedStorage"):WaitForChild("_CS.Events"):WaitForChild("UsePrinter"):FireServer(v)
        else
            v:WaitForChild("Properties"):WaitForChild("CurrentPrinted")
            repeat task.wait() until v.Properties.CurrentPrinted.Value == 1000
            game:GetService("ReplicatedStorage"):WaitForChild("_CS.Events"):WaitForChild("LockPrinter"):FireServer(v)
            repeat task.wait() until v:FindFirstChild('Properties'):FindFirstChild('ItemLocked').Value == false
            game:GetService("ReplicatedStorage"):WaitForChild("_CS.Events"):WaitForChild("UsePrinter"):FireServer(v)
        end
    end
end

-- ANTI AFK

local GC = getconnections or get_signal_cons
if GC then
	for i,v in pairs(GC(game.Players.LocalPlayer.Idled)) do
		if v["Disable"] then
			v["Disable"](v)
		elseif v["Disconnect"] then
			v["Disconnect"](v)
		end
	end
else
	game.Players.LocalPlayer.Idled:Connect(function()
		local VirtualUser = game:GetService("VirtualUser")
		VirtualUser:CaptureController()
		VirtualUser:ClickButton2(Vector2.new())
	end)
end

--
    togglestatus.MouseButton1Click:Connect(function()
        if togglestatus.Text == "Enabled" then
            togglestatus.Text = "Disabled"
            togglestatus.TextColor = BrickColor.new("Really red")
            Status = "Disabled"
            alert(game.Players.LocalPlayer, "Autofarm will stop on after claiming printers, press the button again to continue the farm.", script)
        else
            togglestatus.Text = "Enabled"
            togglestatus.TextColor = BrickColor.new("Lime green")
            Status = "Enabled"
            if printerrunning == false then
                while Status == "Enabled" do
                    printerrunning = true
                    spawnprinters()
                    pickuprpinter()
                    task.wait(3)
                    printerrunning = false
                end
            else
                alert(game.Players.LocalPlayer, "The autofarm will continue to run.", script)
            end
        end
    end)
