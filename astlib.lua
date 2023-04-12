local lib = {}

function lib.newWindow(title, subtitle)
    local window = {}

    -- Criação dos objetos de interface gráfica (GUI)
    local screenGui = Instance.new("ScreenGui")
    local mainFrame = Instance.new("Frame")
    local titleText = Instance.new("TextLabel")
    local subtitleText = Instance.new("TextLabel")
    local tabsFrame = Instance.new("Frame")
    local buttonsFrame = Instance.new("Frame")

    -- Configurações dos objetos GUI
    screenGui.Name = "WindowGui"
    screenGui.Parent = game:GetService("CoreGui")

    mainFrame.Name = "MainFrame"
    mainFrame.Parent = screenGui
    mainFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    mainFrame.Position = UDim2.new(0.5, -150, 0.5, -100)
    mainFrame.Size = UDim2.new(0, 300, 0, 200)

    titleText.Name = "TitleText"
    titleText.Parent = mainFrame
    titleText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    titleText.Position = UDim2.new(0, 0, 0, 0)
    titleText.Size = UDim2.new(1, 0, 0, 30)
    titleText.Font = Enum.Font.SourceSansBold
    titleText.Text = title
    titleText.TextColor3 = Color3.fromRGB(255, 255, 255)
    titleText.TextSize = 20

    subtitleText.Name = "SubtitleText"
    subtitleText.Parent = mainFrame
    subtitleText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    subtitleText.Position = UDim2.new(0, 0, 0, 30)
    subtitleText.Size = UDim2.new(1, 0, 0, 20)
    subtitleText.Font = Enum.Font.SourceSans
    subtitleText.Text = subtitle
    subtitleText.TextColor3 = Color3.fromRGB(255, 255, 255)
    subtitleText.TextSize = 14

    tabsFrame.Name = "TabsFrame"
    tabsFrame.Parent = mainFrame
    tabsFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    tabsFrame.Position = UDim2.new(0, 0, 0, 50)
    tabsFrame.Size = UDim2.new(1, 0, 0, 20)

    buttonsFrame.Name = "ButtonsFrame"
    buttonsFrame.Parent = mainFrame
    buttonsFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    buttonsFrame.Position = UDim2.new(0, 0, 0, 70)
    buttonsFrame.Size = UDim2.new(1, 0, 1, -70)

    -- Função para criar novas abas
function window.addTab(tabName)
    local tabButton = Instance.new("TextButton")
    local tabContent = Instance.new("Frame")
    -- Configurações dos objetos GUI da aba
    tabButton.Name = "TabButton"
    tabButton.Parent = tabsFrame
    tabButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    tabButton.Position = UDim2.new(0, 10 + (#tabsFrame:GetChildren() - 1) * 70, 0, 0)
    tabButton.Size = UDim2.new(0, 60, 1, 0)
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

    -- Função para adicionar botões dentro da aba
    function tabContent.addButton(buttonName, callback)
        local button = Instance.new("TextButton")

        -- Configurações do botão
        button.Name = "Button"
        button.Parent = tabContent
        button.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
        button.Position = UDim2.new(0, 10, 0, 10 + (#tabContent:GetChildren() - 1) * 30)
        button.Size = UDim2.new(1, -20, 0, 20)
        button.Font = Enum.Font.SourceSans
        button.Text = buttonName
        button.TextColor3 = Color3.fromRGB(255, 255, 255)
        button.TextSize = 14
        button.AutoButtonColor = false

        -- Evento de clique do botão
        button.MouseButton1Click:Connect(function()
            callback()
        end)
    end

    return tabContent
end

return window
end

return lib
