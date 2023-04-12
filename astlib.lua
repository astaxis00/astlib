
-- Instances:

local AstLib = Instance.new("ScreenGui")
local Background = Instance.new("Frame")
local BarLeft = Instance.new("Frame")
local Tab = Instance.new("TextButton")
local Tab2 = Instance.new("TextButton")
local Title = Instance.new("TextLabel")
local SubTitle = Instance.new("TextLabel")
local Line = Instance.new("Frame")

--Properties:

Background.Name = "Background"
Background.Parent = AstLib
Background.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
Background.BorderSizePixel = 0
Background.Position = UDim2.new(0.281524926, 0, 0.273067355, 0)
Background.Size = UDim2.new(0, 595, 0, 437)

BarLeft.Name = "BarLeft"
BarLeft.Parent = Background
BarLeft.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
BarLeft.BorderSizePixel = 0
BarLeft.Position = UDim2.new(-0.000828026503, 0, 0.00262842234, 0)
BarLeft.Size = UDim2.new(0, 180, 0, 436)

Tab.Name = "Tab"
Tab.Parent = BarLeft
Tab.BackgroundColor3 = Color3.fromRGB(0, 98, 255)
Tab.BorderSizePixel = 0
Tab.Position = UDim2.new(0, 0, 0.17889908, 0)
Tab.Size = UDim2.new(0, 180, 0, 50)
Tab.Font = Enum.Font.GothamBold
Tab.Text = "NewTab"
Tab.TextColor3 = Color3.fromRGB(255, 255, 255)
Tab.TextSize = 14.000

Tab2.Name = "Tab2"
Tab2.Parent = BarLeft
Tab2.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
Tab2.BorderSizePixel = 0
Tab2.Position = UDim2.new(0, 0, 0.293577969, 0)
Tab2.Size = UDim2.new(0, 180, 0, 50)
Tab2.Font = Enum.Font.GothamBold
Tab2.Text = "Tab"
Tab2.TextColor3 = Color3.fromRGB(255, 255, 255)
Tab2.TextSize = 14.000

Title.Name = "Title"
Title.Parent = Background
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.Position = UDim2.new(0.0252100844, 0, 0.0247933883, 0)
Title.Size = UDim2.new(0, 146, 0, 29)
Title.Font = Enum.Font.GothamBold
Title.Text = "Title"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextWrapped = true
Title.TextXAlignment = Enum.TextXAlignment.Left

SubTitle.Name = "SubTitle"
SubTitle.Parent = Background
SubTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SubTitle.BackgroundTransparency = 1.000
SubTitle.Position = UDim2.new(0.0252100844, 0, 0.104683198, 0)
SubTitle.Size = UDim2.new(0, 100, 0, 20)
SubTitle.Font = Enum.Font.GothamBold
SubTitle.Text = "[SubTitle]"
SubTitle.TextColor3 = Color3.fromRGB(159, 159, 159)
SubTitle.TextScaled = true
SubTitle.TextSize = 14.000
SubTitle.TextWrapped = true
SubTitle.TextXAlignment = Enum.TextXAlignment.Left

Line.Name = "Line"
Line.Parent = Background
Line.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
Line.BorderSizePixel = 0
Line.Position = UDim2.new(0.324369758, 0, 0.0480549186, 0)
Line.Size = UDim2.new(0, 386, 0, 7)

local lib = {}

function lib.window(title, subtitle)
    local window = {}

    local background = AstLib.Background
    local barLeft = AstLib.BarLeft
    local tab = AstLib.Tab
    local tab2 = AstLib.Tab2
    local titleText = AstLib.Title
    local subtitleText = AstLib.SubTitle
    local line = AstLib.Line

    titleText.Text = title
    subtitleText.Text = subtitle

    function window.selectTab(tabObject)
        tab.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
        tab2.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
        tabObject.BackgroundColor3 = Color3.fromRGB(0, 98, 255)
    end

    return window
end

return lib
