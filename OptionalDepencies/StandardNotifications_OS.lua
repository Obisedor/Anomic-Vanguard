-- Script not done, but half workds dddddd

local player = game.Players.LocalPlayer

local Module = {}



    local NotificationSound

    if game:GetService("CoreGui"):FindFirstChild("AnomicVanguard_NotificationSound") then
        NotificationSound = game:GetService("CoreGui").AnomicVanguard_NotificationSound
    else
        NotificationSound = Instance.new("Sound")
        NotificationSound.SoundId = "rbxassetid://17208361335"
        NotificationSound.Parent = game:GetService("CoreGui")
        NotificationSound.Name = "AnomicVanguard_NotificationSound"
    end	

    function Module:Notify(Type, Text, Addition, ShowAV)
        local Clone
        local StandardClone = game:GetService("ReplicatedStorage"):WaitForChild("UserInterface").Card:Clone()
        warn(StandardClone)
        local MayorClone = game:GetService("ReplicatedStorage") -- ADJUST PATH

        local AV
        if ShowAV then
            AV = "AV | " 
        else
            AV = ""
        end

        if Type == "Standard" then
            Clone = StandardClone
            warn(Clone.Name .. " standardclone name")
            warn("set clone to standardclone")
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
                Clone.Parent = player.PlayerGui:WaitForChild("MainMenu").Messages
                warn("standard")
            else
                warn("not standard!")
            end
            if Type == "Up" or Type == "Mayor" or Type == "Top" then
                Clone.Parent = player.PlayerGui:WaitForChild("MainUIHolder").Messages
            end

            if Addition == "Error" then
                Clone.TextLabel.Text = AV .. " error | " .. Text .. " Please report this error."
            end
            if Addition == nil or Addition == "Standard" then
                Clone.TextLabel.Text = AV .. Text
                warn("addition is nil")
            end

            Clone.LocalScript.Disabled = false
            warn("disabled script")
            print(Clone.Parent)
            NotificationSound:Play()
            end
        end



return Module
