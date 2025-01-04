local Module = {}

function Module:CreateOutdatedLoadstringNotification(Information)
    warn(Information)
    for i, v in pairs(Information) do
        print(i, v)
    end
    warn("---------")

    local AnomicVanguard_OutdatedLoadstring = Instance.new("ScreenGui")
    local InfoText = Instance.new("TextLabel")
    local UICorner = Instance.new("UICorner")
    local LoadNew = Instance.new("TextButton")
    local UICorner_2 = Instance.new("UICorner")
    local Ignore = Instance.new("TextButton")
    local UICorner_3 = Instance.new("UICorner")
    local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
    local Blur = Instance.new("BlurEffect")
    local UIStroke = Instance.new("UIStroke")
    local UIStroke_2 = Instance.new("UIStroke")
    local UIStroke_3 = Instance.new("UIStroke")

    --Properties:

    AnomicVanguard_OutdatedLoadstring.Name = "AnomicVanguard_OutdatedLoadstring"
    AnomicVanguard_OutdatedLoadstring.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    AnomicVanguard_OutdatedLoadstring.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    InfoText.Name = "InfoText"
    InfoText.Parent = AnomicVanguard_OutdatedLoadstring
    InfoText.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    InfoText.BackgroundTransparency = 0.500
    InfoText.BorderColor3 = Color3.fromRGB(0, 0, 0)
    InfoText.BorderSizePixel = 0
    InfoText.Position = UDim2.new(0.235872239, 0, 0.270100504, 0)
    InfoText.Size = UDim2.new(0.528255522, 0, 0.282663316, 0)
    InfoText.Font = Enum.Font.SourceSans
    InfoText.Text = string.format(
        "Anomic Vanguard | You are using the wrong loadstring for %s! Please, use the new loadstring to continue.\nAttempted script: %s\nNew loadstring: %s",
        Information["ScriptName"] or "Unknown script",
        Information["ScriptName"] or "Unknown script",
        Information["NewLoadstring"] or "Unknown loadstring"
    )
    InfoText.TextColor3 = Color3.fromRGB(253, 253, 253)
    InfoText.TextScaled = true
    InfoText.TextSize = 14.000
    InfoText.TextWrapped = true
    UIStroke.Parent = InfoText
    UIStroke.Thickness = 2
    UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

    UICorner.CornerRadius = UDim.new(0.200000003, 0)
    UICorner.Parent = InfoText

    LoadNew.Name = "LoadNew"
    LoadNew.Parent = AnomicVanguard_OutdatedLoadstring
    LoadNew.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    LoadNew.BackgroundTransparency = 0.500
    LoadNew.BorderColor3 = Color3.fromRGB(0, 0, 0)
    LoadNew.BorderSizePixel = 0
    LoadNew.Position = UDim2.new(0.388206393, 0, 0.57914567, 0)
    LoadNew.Size = UDim2.new(0.22194922, 0, 0.0628140718, 0)
    LoadNew.Font = Enum.Font.SourceSans
    local Text
    if Information["NewLoadstringLink"] then
        Text = "Load new loadstring"
    else
        Text = "Failed to get loadstring!"
    end
    LoadNew.Text = Text
    LoadNew.TextColor3 = Color3.fromRGB(255, 255, 255)
    LoadNew.TextScaled = true
    LoadNew.TextSize = 14.000
    LoadNew.TextWrapped = true
    UIStroke_2.Parent = LoadNew
    UIStroke_2.Thickness = 2
    UIStroke_2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

    UICorner_2.CornerRadius = UDim.new(0.200000003, 0)
    UICorner_2.Parent = LoadNew

    Ignore.Name = "Ignore"
    Ignore.Parent = AnomicVanguard_OutdatedLoadstring
    Ignore.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    Ignore.BackgroundTransparency = 0.500
    Ignore.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Ignore.BorderSizePixel = 0
    Ignore.Position = UDim2.new(0.417690426, 0, 0.665829122, 0)
    Ignore.Size = UDim2.new(0.163800165, 0, 0.0628140718, 0)
    Ignore.Font = Enum.Font.SourceSans
    Ignore.Text = "Ignore"
    Ignore.TextColor3 = Color3.fromRGB(255, 255, 255)
    Ignore.TextScaled = true
    Ignore.TextSize = 14.000
    Ignore.TextWrapped = true
    UIStroke_3.Parent = Ignore
    UIStroke_3.Thickness = 2
    UIStroke_3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

    UICorner_3.CornerRadius = UDim.new(0.200000003, 0)
    UICorner_3.Parent = Ignore

    UIAspectRatioConstraint.Parent = AnomicVanguard_OutdatedLoadstring
    UIAspectRatioConstraint.AspectRatio = 1.534

    Blur.Parent = game.Lighting
    Blur.Size = 20

    local function CloseUI()
        Blur:Destroy()
        AnomicVanguard_OutdatedLoadstring:Destroy()
    end

    Ignore.MouseButton1Click:Connect(function()
        CloseUI()
    end)
    LoadNew.MouseButton1Click:Connect(function()
        CloseUI()
        loadstring(game:HttpGet(Information["NewLoadstringLink"]))()
    end)

end

return Module
