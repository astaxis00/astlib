local lib = {}

function lib.newWindow(title, subtitle)
    local window = {}

        -- Criação dos objetos de interface gráfica (GUI)

        local AstLib = Instance.new("ScreenGui")
        local Window = Instance.new("Frame")
        local BarLeft = Instance.new("Frame")
        local TabFrame = Instance.new("Frame")
        local Title = Instance.new("TextLabel")
        local SubTitle = Instance.new("TextLabel")

        AstLib.Name = "AstLib"
        AstLib.Parent = game:GetService("CoreGui")

        Window.Name = "Window"
        Window.Parent = AstLib
        Window.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
        Window.BorderSizePixel = 0
        Window.Position = UDim2.new(0.281524926, 0, 0.273067355, 0)
        Window.Size = UDim2.new(0, 595, 0, 437)

        BarLeft.Name = "BarLeft"
        BarLeft.Parent = Window
        BarLeft.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
        BarLeft.BorderSizePixel = 0
        BarLeft.Position = UDim2.new(-0.000828026503, 0, 0.00262842234, 0)
        BarLeft.Size = UDim2.new(0, 180, 0, 436)

        TabFrame.Name = "TabFrame"
        TabFrame.Parent = BarLeft
        TabFrame.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
        TabFrame.BorderSizePixel = 0
        TabFrame.Position = UDim2.new(0, 0, 0.17889908, 0)
        TabFrame.Size = UDim2.new(0, 179, 0, 358)

        Title.Name = "Title"
        Title.Parent = Window
        Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Title.BackgroundTransparency = 1.000
        Title.Position = UDim2.new(0.0252100844, 0, 0.0247933883, 0)
        Title.Size = UDim2.new(0, 146, 0, 29)
        Title.Font = Enum.Font.GothamBold
        Title.Text = title
        Title.TextColor3 = Color3.fromRGB(255, 255, 255)
        Title.TextScaled = true
        Title.TextSize = 14.000
        Title.TextWrapped = true
        Title.TextXAlignment = Enum.TextXAlignment.Left

        SubTitle.Name = "SubTitle"
        SubTitle.Parent = Window
        SubTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        SubTitle.BackgroundTransparency = 1.000
        SubTitle.Position = UDim2.new(0.0252100844, 0, 0.104683198, 0)
        SubTitle.Size = UDim2.new(0, 100, 0, 20)
        SubTitle.Font = Enum.Font.GothamBold
        SubTitle.Text = "[" .. subtitle .. "]"
        SubTitle.TextColor3 = Color3.fromRGB(159, 159, 159)
        SubTitle.TextScaled = true
        SubTitle.TextSize = 14.000
        SubTitle.TextWrapped = true
        SubTitle.TextXAlignment = Enum.TextXAlignment.Left

        local tabNum = 0 -- contador de abas criadas
        local yOffset = 0 -- deslocamento vertical inicial

function window.addTab(tabName)
    tabNum = tabNum + 1
    
    local tabContent = Instance.new("Frame")
    local tabButton = Instance.new("TextButton")
    
    -- Configurações dos objetos GUI da aba
    tabButton.Name = "TabButton"
    tabButton.Parent = tabsFrame
    tabButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    tabButton.Position = UDim2.new(0, 10, 0, yOffset + (tabNum - 1) * 55)
    tabButton.Size = UDim2.new(0, 60, 0, 50)
    tabButton.Font = Enum.Font.SourceSans
    tabButton.Text = tabName
    tabButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    tabButton.TextSize = 14
    tabButton.AutoButtonColor = false
    
    tabContent.Name = "TabContent"
    tabContent.Parent = buttonsFrame
    tabContent.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    tabContent.Position = UDim2.new(0, 10, 0, 10)
    tabContent.Size = UDim2.new(1, -20, 1, -20)
    tabContent.Visible = false
    
    -- Função para selecionar a aba
    local function selectTab()
        for _, child in ipairs(tabsFrame:GetChildren()) do
            if child:IsA("TextButton") then
                child.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
            end
        end
        tabButton.BackgroundColor3 = Color3.fromRGB(0, 98, 255)
        for _, child in ipairs(buttonsFrame:GetChildren()) do
            if child:IsA("Frame") then
                child.Visible = false
            end
        end
        tabContent.Visible = true
    end
    
    -- Evento de clique do botão da aba
    tabButton.MouseButton1Click:Connect(selectTab)
    
    -- Seleciona automaticamente a primeira aba criada
    if #tabsFrame:GetChildren() == 1 then
        selectTab()
    end
    

    return tabContent
end

return window
end

return lib
