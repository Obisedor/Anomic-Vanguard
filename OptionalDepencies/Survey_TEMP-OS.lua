-- Gui to Lua
-- Version: 3.2

-- Instances:

--[[
local Example = {
    ["GeneralSettings"] = {},
    ["1. Example question"] = {
        ["Type"] = "Bool, InputboxAnswer or SelectAnswer",
        ["MaxAnswers"] = number, only add if Type == "SelectAnswer
        
}
--]]

local ddd = {}

function ddd:CreateSurvey(Information)

    local ActiveAnswers = {}


    local AnomicVanguardSurvey = Instance.new("ScreenGui")
    local Main = Instance.new("Frame")
    local UICorner = Instance.new("UICorner")
    local Title = Instance.new("TextLabel")
    local UICorner_2 = Instance.new("UICorner")
    local InformationDescription = Instance.new("TextLabel")
    local UICorner_3 = Instance.new("UICorner")
    local QuestionsHolder = Instance.new("Frame")
    local UICorner_4 = Instance.new("UICorner")
    local QuestionsHolder_2 = Instance.new("ScrollingFrame")
    local UIListLayout = Instance.new("UIListLayout")



    local SubmitAnswersButton = Instance.new("TextButton")
    local UICorner_15 = Instance.new("UICorner")
    local TextButton = Instance.new("TextButton")
    local UICorner_16 = Instance.new("UICorner")

    --Properties:

    AnomicVanguardSurvey.Name = "AnomicVanguardSurvey"
    AnomicVanguardSurvey.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    AnomicVanguardSurvey.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    Main.Name = "Main"
    Main.Parent = AnomicVanguardSurvey
    Main.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    Main.BackgroundTransparency = 0.500
    Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Main.BorderSizePixel = 0
    Main.Position = UDim2.new(0.2474612, 0, 0.0753768831, 0)
    Main.Size = UDim2.new(0.503631949, 0, 0.847989976, 0)

    UICorner.CornerRadius = UDim.new(0.0500000007, 0)
    UICorner.Parent = Main

    Title.Name = "Title"
    Title.Parent = Main
    Title.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    Title.BackgroundTransparency = 0.500
    Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Title.BorderSizePixel = 0
    Title.Position = UDim2.new(0.15865384, 0, 0.0088888891, 0)
    Title.Size = UDim2.new(0.682692289, 0, 0.0844444409, 0)
    Title.Font = Enum.Font.Unknown
    Title.Text = "Anomic Vanguard | v1 improement survey"
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.TextScaled = true
    Title.TextSize = 14.000
    Title.TextWrapped = true

    UICorner_2.CornerRadius = UDim.new(0.200000003, 0)
    UICorner_2.Parent = Title

    InformationDescription.Name = "InformationDescription"
    InformationDescription.Parent = Main
    InformationDescription.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    InformationDescription.BackgroundTransparency = 0.750
    InformationDescription.BorderColor3 = Color3.fromRGB(0, 0, 0)
    InformationDescription.BorderSizePixel = 0
    InformationDescription.Position = UDim2.new(0.0352564119, 0, 0.102222219, 0)
    InformationDescription.Size = UDim2.new(0.929487169, 0, 0.0977777764, 0)
    InformationDescription.Font = Enum.Font.Roboto
    InformationDescription.Text = "You have been randomly selected for a short survey. Filling in this survey will help us to improve the quality of our scripts. Your feedback will help us to adress issues you are facing with our scipts, and improve them. Thank you for your time!"
    InformationDescription.TextColor3 = Color3.fromRGB(255, 0, 4)
    InformationDescription.TextScaled = true
    InformationDescription.TextSize = 14.000
    InformationDescription.TextWrapped = true

    UICorner_3.CornerRadius = UDim.new(0.200000003, 0)
    UICorner_3.Parent = InformationDescription

    QuestionsHolder.Name = "QuestionsHolder"
    QuestionsHolder.Parent = Main
    QuestionsHolder.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    QuestionsHolder.BackgroundTransparency = 0.750
    QuestionsHolder.BorderColor3 = Color3.fromRGB(0, 0, 0)
    QuestionsHolder.BorderSizePixel = 0
    QuestionsHolder.Position = UDim2.new(0.0352564119, 0, 0.213333353, 0)
    QuestionsHolder.Size = UDim2.new(0.929487169, 0, 0.700740755, 0)

    UICorner_4.CornerRadius = UDim.new(0.0250000004, 0)
    UICorner_4.Parent = QuestionsHolder

    QuestionsHolder_2.Name = "QuestionsHolder"
    QuestionsHolder_2.Parent = QuestionsHolder
    QuestionsHolder_2.Active = true
    QuestionsHolder_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    QuestionsHolder_2.BackgroundTransparency = 1.000
    QuestionsHolder_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    QuestionsHolder_2.BorderSizePixel = 0
    QuestionsHolder_2.Position = UDim2.new(0, 0, 0.0196078438, 0)
    QuestionsHolder_2.Size = UDim2.new(1, 0, 1.03382659, 0)
    QuestionsHolder_2.ScrollBarThickness = 6

    UIListLayout.Parent = QuestionsHolder_2
    UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.Padding = UDim.new(0.00499999989, 0)

    local function CreateBoolAnswer(Question)

        local BoolAnswer = Instance.new("Frame")
        local QuestionTitle = Instance.new("TextLabel")
        local AnswerDevider = Instance.new("TextLabel")
        local UICorner_5 = Instance.new("UICorner")
        local YesAnswer = Instance.new("TextButton")
        local UICorner_6 = Instance.new("UICorner")
        local NoAnswer = Instance.new("TextButton")
        local UICorner_7 = Instance.new("UICorner")
        local UICorner_8 = Instance.new("UICorner")

        BoolAnswer.Name = "BoolAnswer"
        BoolAnswer.Parent = QuestionsHolder_2
        BoolAnswer.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        BoolAnswer.BackgroundTransparency = 0.750
        BoolAnswer.BorderColor3 = Color3.fromRGB(0, 0, 0)
        BoolAnswer.BorderSizePixel = 0
        BoolAnswer.Position = UDim2.new(0.0232758615, 0, -3.12040704e-08, 0)
        BoolAnswer.Size = UDim2.new(0.953448296, 0, 0.122699402, 0)

        QuestionTitle.Name = "QuestionTitle"
        QuestionTitle.Parent = BoolAnswer
        QuestionTitle.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        QuestionTitle.BackgroundTransparency = 1.000
        QuestionTitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
        QuestionTitle.BorderSizePixel = 0
        QuestionTitle.Position = UDim2.new(0.0198915005, 0, 0.0534351133, 0)
        QuestionTitle.Size = UDim2.new(0.96383363, 0, 0.282608688, 0)
        QuestionTitle.Font = Enum.Font.Cartoon
        QuestionTitle.Text = Question
        QuestionTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
        QuestionTitle.TextScaled = true
        QuestionTitle.TextSize = 14.000
        QuestionTitle.TextWrapped = true
        QuestionTitle.TextXAlignment = Enum.TextXAlignment.Left

        AnswerDevider.Name = "AnswerDevider"
        AnswerDevider.Parent = BoolAnswer
        AnswerDevider.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        AnswerDevider.BackgroundTransparency = 0.500
        AnswerDevider.BorderColor3 = Color3.fromRGB(0, 0, 0)
        AnswerDevider.BorderSizePixel = 0
        AnswerDevider.Position = UDim2.new(0.462929487, 0, 0.406903476, 0)
        AnswerDevider.Size = UDim2.new(0.0813743249, 0, 0.489130437, 0)
        AnswerDevider.Font = Enum.Font.SourceSans
        AnswerDevider.Text = "/"
        AnswerDevider.TextColor3 = Color3.fromRGB(255, 255, 255)
        AnswerDevider.TextScaled = true
        AnswerDevider.TextSize = 14.000
        AnswerDevider.TextWrapped = true

        UICorner_5.CornerRadius = UDim.new(0.25, 0)
        UICorner_5.Parent = AnswerDevider

        YesAnswer.Name = "YesAnswer"
        YesAnswer.Parent = BoolAnswer
        YesAnswer.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        YesAnswer.BackgroundTransparency = 0.500
        YesAnswer.BorderColor3 = Color3.fromRGB(0, 0, 0)
        YesAnswer.BorderSizePixel = 0
        YesAnswer.Position = UDim2.new(0.334538877, 0, 0.406903476, 0)
        YesAnswer.Size = UDim2.new(0.0976491868, 0, 0.489130437, 0)
        YesAnswer.Font = Enum.Font.SourceSans
        YesAnswer.Text = "Yes"
        YesAnswer.TextColor3 = Color3.fromRGB(255, 255, 255)
        YesAnswer.TextScaled = true
        YesAnswer.TextSize = 14.000
        YesAnswer.TextWrapped = true

        UICorner_6.CornerRadius = UDim.new(0.25, 0)
        UICorner_6.Parent = YesAnswer

        NoAnswer.Name = "NoAnswer"
        NoAnswer.Parent = BoolAnswer
        NoAnswer.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        NoAnswer.BackgroundTransparency = 0.500
        NoAnswer.BorderColor3 = Color3.fromRGB(0, 0, 0)
        NoAnswer.BorderSizePixel = 0
        NoAnswer.Position = UDim2.new(0.575045228, 0, 0.406903476, 0)
        NoAnswer.Size = UDim2.new(0.0976491868, 0, 0.489130437, 0)
        NoAnswer.Font = Enum.Font.SourceSans
        NoAnswer.Text = "No"
        NoAnswer.TextColor3 = Color3.fromRGB(255, 255, 255)
        NoAnswer.TextScaled = true
        NoAnswer.TextSize = 14.000
        NoAnswer.TextWrapped = true

        UICorner_7.CornerRadius = UDim.new(0.25, 0)
        UICorner_7.Parent = NoAnswer

        UICorner_8.CornerRadius = UDim.new(0.100000001, 0)
        UICorner_8.Parent = BoolAnswer


        local function HandleClick(AnswerButton)
            if AnswerButton.Name == "YesAnswer" then
                ActiveAnswers[Question].Answer = "Yes"
            else
                ActiveAnswers[Question].Answer = "No"
            end
            YesAnswer.TextColor3 = Color3.fromRGB(255, 255, 255)
            NoAnswer.TextColor3 = Color3.fromRGB(255, 255, 255)
            wait()
            AnswerButton.TextColor3 = Color3.fromRGB(0, 255, 0)
        end

        YesAnswer.MouseButton1Click:Connect(function()
            HandleClick(YesAnswer)
        end)
        NoAnswer.MouseButton1Click:Connect(function()
            HandleClick(NoAnswer)
        end)

        local Table = {
            ["Answer"] = nil
        }

        ActiveAnswers[Question] = Table

    end

    CreateBoolAnswer("1. Is the Anomic movie one of the best movies ever?")

    local function CreateInputAnswer(Question)

        local InputboxAnswer = Instance.new("Frame")
        local UICorner_9 = Instance.new("UICorner")
        local Inputbox = Instance.new("TextBox")
        local UICorner_10 = Instance.new("UICorner")
        local QuestionTitle_2 = Instance.new("TextLabel")

        InputboxAnswer.Name = "InputboxAnswer"
        InputboxAnswer.Parent = QuestionsHolder_2
        InputboxAnswer.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        InputboxAnswer.BackgroundTransparency = 0.750
        InputboxAnswer.BorderColor3 = Color3.fromRGB(0, 0, 0)
        InputboxAnswer.BorderSizePixel = 0
        InputboxAnswer.Position = UDim2.new(0.0232758615, 0, 0.247042209, 0)
        InputboxAnswer.Size = UDim2.new(0.953448296, 0, 0.229038864, 0)

        UICorner_9.CornerRadius = UDim.new(0.100000001, 0)
        UICorner_9.Parent = InputboxAnswer

        Inputbox.Name = "Inputbox"
        Inputbox.Parent = InputboxAnswer
        Inputbox.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        Inputbox.BackgroundTransparency = 0.500
        Inputbox.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Inputbox.BorderSizePixel = 0
        Inputbox.Position = UDim2.new(0.0198915005, 0, 0.305343509, 0)
        Inputbox.Size = UDim2.new(0.96383363, 0, 0.618320584, 0)
        Inputbox.ClearTextOnFocus = false
        Inputbox.Font = Enum.Font.SourceSans
        Inputbox.MultiLine = true
        Inputbox.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
        Inputbox.PlaceholderText = "Enter answer here."
        Inputbox.Text = ""
        Inputbox.TextColor3 = Color3.fromRGB(255, 255, 255)
        Inputbox.TextSize = 14.000
        Inputbox.TextWrapped = true

        UICorner_10.CornerRadius = UDim.new(0.150000006, 0)
        UICorner_10.Parent = Inputbox

        QuestionTitle_2.Name = "QuestionTitle"
        QuestionTitle_2.Parent = InputboxAnswer
        QuestionTitle_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        QuestionTitle_2.BackgroundTransparency = 1.000
        QuestionTitle_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
        QuestionTitle_2.BorderSizePixel = 0
        QuestionTitle_2.Position = UDim2.new(0.0198915005, 0, 0.0534351133, 0)
        QuestionTitle_2.Size = UDim2.new(0.96383363, 0, 0.19847329, 0)
        QuestionTitle_2.Font = Enum.Font.Cartoon
        QuestionTitle_2.Text = Question
        QuestionTitle_2.TextColor3 = Color3.fromRGB(255, 255, 255)
        QuestionTitle_2.TextScaled = true
        QuestionTitle_2.TextSize = 14.000
        QuestionTitle_2.TextWrapped = true
        QuestionTitle_2.TextXAlignment = Enum.TextXAlignment.Left

        local function HandleChange(NewText)
            ActiveAnswers[Question].Answer = NewText
        end

        Inputbox.Changed:Connect(function()
            local NewText = Inputbox.Text
            HandleChange(NewText)
            warn(NewText)
        end)

        local Table = {
            ["Answer"] = nil
        }

        ActiveAnswers[Question] = Table

    end

    CreateInputAnswer("2. What's so good about the movie?")

    local function CreateSelectionAnswer(Question, Answers, MaxAnswers)

        local SelectAnswer = Instance.new("Frame")
        local UICorner_11 = Instance.new("UICorner")
        local QuestionTitle_3 = Instance.new("TextLabel")
        local AnswersHolder = Instance.new("Frame")
        local UIListLayout_2 = Instance.new("UIListLayout")

        SelectAnswer.Name = "SelectAnswer"
        SelectAnswer.Parent = QuestionsHolder_2
        SelectAnswer.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        SelectAnswer.BackgroundTransparency = 0.750
        SelectAnswer.BorderColor3 = Color3.fromRGB(0, 0, 0)
        SelectAnswer.BorderSizePixel = 0
        SelectAnswer.Position = UDim2.new(0.0232758615, 0, 0.393056035, 0)
        SelectAnswer.Size = UDim2.new(0.953448296, 0, 0.104294486, 0)
        
        UICorner_11.CornerRadius = UDim.new(0.100000001, 0)
        UICorner_11.Parent = SelectAnswer
        
        QuestionTitle_3.Name = "QuestionTitle"
        QuestionTitle_3.Parent = SelectAnswer
        QuestionTitle_3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        QuestionTitle_3.BackgroundTransparency = 1.000
        QuestionTitle_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
        QuestionTitle_3.BorderSizePixel = 0
        QuestionTitle_3.Position = UDim2.new(0.0198915005, 0, 0.0534351133, 0)
        QuestionTitle_3.Size = UDim2.new(0.96383363, 0, 0.282608688, 0)
        QuestionTitle_3.Font = Enum.Font.Cartoon
        local MaxAnswersText
        if MaxAnswers == 1 then
            MaxAnswersText = " Select one option."
        end
        if MaxAnswers == 0 then
            warn("AV survey | Error! Max selectable errors can not be 0.")
            MaxAnswersText = "Error! Check console."
        end
        if MaxAnswers > 1 then
            MaxAnswersText = " Select max. " .. MaxAnswers .. "answers."
        end
        QuestionTitle_3.Text = Question .. MaxAnswersText
        QuestionTitle_3.TextColor3 = Color3.fromRGB(255, 255, 255)
        QuestionTitle_3.TextScaled = true
        QuestionTitle_3.TextSize = 14.000
        QuestionTitle_3.TextWrapped = true
        QuestionTitle_3.TextXAlignment = Enum.TextXAlignment.Left
        
        AnswersHolder.Name = "AnswersHolder"
        AnswersHolder.Parent = SelectAnswer
        AnswersHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        AnswersHolder.BackgroundTransparency = 1.000
        AnswersHolder.BorderColor3 = Color3.fromRGB(0, 0, 0)
        AnswersHolder.BorderSizePixel = 0
        AnswersHolder.Position = UDim2.new(0.0198915005, 0, 0.434782267, 0)
        AnswersHolder.Size = UDim2.new(0.96383363, 0, 0.489130437, 0)

        UIListLayout_2.Parent = AnswersHolder
        UIListLayout_2.FillDirection = Enum.FillDirection.Horizontal
        UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
        UIListLayout_2.HorizontalFlex = Enum.UIFlexAlignment.Fill
        UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayout_2.Padding = UDim.new(0.00999999978, 0)
        
        local Table = {
            ["Answer"] = {}
        }

        ActiveAnswers[Question] = Table

        local PressedButtons = {}

        local function CreateAnswerButton(Text)
            local AnswerPreview = Instance.new("TextButton")
            local UICorner_12 = Instance.new("UICorner")
        
            AnswerPreview.Name = "AnswerPreview"
            AnswerPreview.Parent = AnswersHolder
            AnswerPreview.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            AnswerPreview.BackgroundTransparency = 0.5
            AnswerPreview.BorderColor3 = Color3.fromRGB(0, 0, 0)
            AnswerPreview.BorderSizePixel = 0
            AnswerPreview.Position = UDim2.new(0.575, 0, 0.407, 0)
            AnswerPreview.Size = UDim2.new(0, 54, 0, 45)
            AnswerPreview.Font = Enum.Font.SourceSans
            AnswerPreview.Text = Text
            AnswerPreview.TextColor3 = Color3.fromRGB(255, 255, 255)
            AnswerPreview.TextScaled = true
            AnswerPreview.TextSize = 14
            AnswerPreview.TextWrapped = true
            
            UICorner_12.CornerRadius = UDim.new(0.25, 0)
            UICorner_12.Parent = AnswerPreview

            AnswerPreview.MouseButton1Click:Connect(function()
                local buttonAlreadyPressed = false
                
                for i, v in ipairs(PressedButtons) do
                    if v == Text then
                        buttonAlreadyPressed = true
                        break
                    end
                end
                
                if not buttonAlreadyPressed then
                    if #PressedButtons < MaxAnswers then
                        table.insert(PressedButtons, Text)
                        AnswerPreview.TextColor3 = Color3.fromRGB(0, 255, 0)
                    else
                        warn("AV survey | Max. options selected! Question:" .. Question)
                    end
                else
                    for i, v in ipairs(PressedButtons) do
                        if v == Text then
                            table.remove(PressedButtons, i)
                            AnswerPreview.TextColor3 = Color3.fromRGB(255, 255, 255)
                            break
                        end
                    end
                end
            end)
            
            

        end
        
        for i, v in pairs(Answers) do
            warn(i, v)
            CreateAnswerButton(v)
        end

    end


    SubmitAnswersButton.Name = "SubmitAnswersButton"
    SubmitAnswersButton.Parent = Main
    SubmitAnswersButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    SubmitAnswersButton.BackgroundTransparency = 0.500
    SubmitAnswersButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
    SubmitAnswersButton.BorderSizePixel = 0
    SubmitAnswersButton.Position = UDim2.new(0.341346145, 0, 0.92592591, 0)
    SubmitAnswersButton.Size = UDim2.new(0.320512831, 0, 0.0651851818, 0)
    SubmitAnswersButton.Font = Enum.Font.SourceSans
    SubmitAnswersButton.Text = "Submit answers"
    SubmitAnswersButton.TextColor3 = Color3.fromRGB(26, 255, 0)
    SubmitAnswersButton.TextScaled = true
    SubmitAnswersButton.TextSize = 14.000
    SubmitAnswersButton.TextWrapped = true

    UICorner_15.CornerRadius = UDim.new(0.200000003, 0)
    UICorner_15.Parent = SubmitAnswersButton

    -- TEMP
    -- TEMP
    -- TEMP
    -- TEMP
    TextButton.Parent = Main
    TextButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    TextButton.BackgroundTransparency = 0.500
    TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TextButton.BorderSizePixel = 0
    TextButton.Position = UDim2.new(1.23557699, 0, -0.088888891, 0)
    TextButton.Size = UDim2.new(0.258012831, 0, 0.10814815, 0)
    TextButton.Font = Enum.Font.SourceSans
    TextButton.Text = "CLose"
    TextButton.TextColor3 = Color3.fromRGB(26, 255, 0)
    TextButton.TextScaled = true
    TextButton.TextSize = 14.000
    TextButton.TextWrapped = true

    UICorner_16.CornerRadius = UDim.new(0.200000003, 0)
    UICorner_16.Parent = TextButton

    -- Scripts:

    -- TEMP

    local function ZPLPH_fake_script() -- TextButton.LocalScript 
        local script = Instance.new('LocalScript', TextButton)

        script.Parent.MouseButton1Click:Connect(function()
            script.Parent.Parent.Parent:Destroy()
        end)
    end
    coroutine.wrap(ZPLPH_fake_script)()

    -- Convert the information table to functions
    for i, v in pairs(Information) do
        print(i, v)
        if i == "GeneralSettings" then
            for ii, vv in pairs(v) do
                warn(vv)
            end
        else
            if v.Type == "BoolAnswer" then
                CreateBoolAnswer(i)
            end
            if v.Type == "InputboxAnswer" then
                CreateInputAnswer(i)
            end
            if v.Type == "SelectAnswer" then
                CreateSelectionAnswer(i, v.Answers, v.MaxAnswers)
            end
        end
    end

end



return ddd
