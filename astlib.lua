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

        local Tabs = {}

        function Tabs.new()
            local tabs = {}
            local selectedTab = nil
            
            function tabs:addTab(tabName)
                local tab = {
                    name = tabName,
                    content = Instance.new("Frame"),
                }
                
                tab.content.Name = "TabContent"
                tab.content.Size = UDim2.new(1, 0, 1, 0)
                tab.content.BackgroundTransparency = 1
                
                local label = Instance.new("TextLabel")
                label.Name = "TabLabel"
                label.Parent = tabsFrame
                label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                label.BackgroundTransparency = 1
                label.Position = UDim2.new(0, 10 + #tabs * 60, 0, 10)
                label.Size = UDim2.new(0, 60, 0, 30)
                label.Font = Enum.Font.SourceSans
                label.Text = tabName
                label.TextColor3 = Color3.fromRGB(255, 255, 255)
                label.TextSize = 14
                
                label.MouseButton1Click:Connect(function()
                    if selectedTab then
                        selectedTab.content.Visible = false
                    end
                    
                    tab.content.Visible = true
                    selectedTab = tab
                end)
                
                tabsFrame.Size = UDim2.new(0, 80 + #tabs * 60, 0, 40)
                
                table.insert(tabs, tab)
                
                if #tabs == 1 then
                    label:FireEvent("MouseButton1Click")
                end
                
                return tab.content
            end
            
            return tabs
        end
        
        return Tabs
        
end

return window
end

return lib
