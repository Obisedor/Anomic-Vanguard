-- Script not done, but half works d


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
        local Clone
        local StandardClone = game:GetService("ReplicatedStorage"):WaitForChild("UserInterface").Card:Clone()
        local MayorClone = game:GetService("ReplicatedStorage") -- ADJUST PATH

        local AV
        if Incognito then
            AV = "" 
        else
            AV = "AV | "
        end

        if Type == "Standard" then
            Clone = StandardClone
        end
        if Type == "Up" or Type == "Mayor" or Type == "Top" then
            Clone = MayorClone
        end

        if Addition == "Error" and Type == "Standard" then
            Clone.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
            Clone.TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        end

        if Clone then

            if Type == "Standard" then
                Clone.Parent = player.PlayerGui:WaitForChild("MainUIHolder").Messages
            end
            if Type == "Up" or Type == "Mayor" or Type == "Top" then
                Clone.Parent = player.PlayerGui:WaitForChild("MainUIHolder").Messages -- ADJUST
            end

            if Addition == "Error" then
                Clone.TextLabel.Text = AV .. " Error | " .. Text .. " Please report this error."
            end
            if Addition == nil or Addition == "Standard" then
                Clone.TextLabel.Text = AV .. Text
            end

            Clone.LocalScript.Disabled = false
                if Incognito == nil then
                    NotificationSound:Play()
                end
            end
        end



return Module
