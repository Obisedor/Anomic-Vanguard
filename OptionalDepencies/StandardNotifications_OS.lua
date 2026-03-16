local Module = {}

local player = game.Players.LocalPlayer

local NotificationSound
if game:GetService("CoreGui"):FindFirstChild("AnomicVanguard_NotificationSound") then
    NotificationSound = game:GetService("CoreGui").AnomicVanguard_NotificationSound
else
    NotificationSound = Instance.new("Sound")
    NotificationSound.SoundId = "rbxassetid://17208361335"
    NotificationSound.Parent = game:GetService("CoreGui")
    NotificationSound.Name = "AnomicVanguard_NotificationSound"
end

function Module:Notify(Type, Text, Addition, Incognito)
    if Type ~= "Standard" then
        Text = Type
        Type = "Standard"
    end

    local StandardClone = game:GetService("ReplicatedStorage"):FindFirstChild("UserInterface").Card
    local MayorClone = game:GetService("ReplicatedStorage"):FindFirstChild("UserInterface")

    local AV = Incognito and "" or "AV | "
    local Clone

    if Type == "Standard" then
        Clone = StandardClone:Clone()
    elseif Type == "Up" or Type == "Mayor" or Type == "Top" then
        Clone = MayorClone:Clone()
    else
        warn("AV Notification module | Invalid Type: " .. tostring(Type))
        return
    end

    if Addition == "Error" and Type == "Standard" then
        Clone.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        Clone.TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    end

    local targetParent = player.PlayerGui.MainUIHolder:FindFirstChild("Messages")


    Clone.Parent = targetParent
    if Addition == "Error" then
        Clone.TextLabel.Text = AV .. " Error | " .. Text .. " Please report this error."
    else
        Clone.TextLabel.Text = AV .. Text
    end

    Clone.LocalScript.Disabled = false

    if not Incognito then
        NotificationSound:Play()
    end
end

return Module
