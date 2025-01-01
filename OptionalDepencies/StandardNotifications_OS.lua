-- Script not done, but half works


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
    
        local StandardClone = game:GetService("ReplicatedStorage"):WaitForChild("UserInterface").Card:Clone()
        local MayorClone = game:GetService("ReplicatedStorage") -- ADJUST PATH


        if Text == "Standard" then
            local Text1 = Text
            local Text2 = Type
            Type = Text1
            Text = Text2
        end

        local AV
        if Incognito then    
            AV = ""
        else
            AV = "AV | "
        end

        local Clone
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
                Clone.Parent = player.PlayerGui:WaitForChild("MainUIHolder").Messages -- ADJUST PATH
            end
        
            if Addition == "Error" then
                Clone.TextLabel.Text = AV .. " Error | " .. Text .. " Please report this error."
            end
            if Addition == nil or Addition == "Standard" then
                Clone.TextLabel.Text = AV .. Text
            end
        
            Clone.LocalScript.Disabled = false -- DOUBLE CHECK
            
            if Incognito == nil then
                NotificationSound:Play()
            end
        else
            warn("AV Notification module | No clone found!")
        end
        
    end



return Module
