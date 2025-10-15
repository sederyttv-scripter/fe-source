local G2L = {}
local core

if game:FindFirstChildOfClass("CoreGui") then
	if gethui then
		core = gethui()
	else
		core = game:GetService("CoreGui")
	end
else
	core = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
end

-- Services
local TweenService = game:GetService("TweenService")
local Lighting = game:GetService("Lighting")

-- Main ScreenGui
G2L["1"] = Instance.new("ScreenGui", core)
G2L["1"]["IgnoreGuiInset"] = true
G2L["1"]["DisplayOrder"] = 5
G2L["1"]["ScreenInsets"] = Enum.ScreenInsets.None
G2L["1"]["ClipToDeviceSafeArea"] = false
G2L["1"]["ResetOnSpawn"] = false

-- Main Container
G2L["2"] = Instance.new("Frame", G2L["1"])
G2L["2"]["Name"] = "MainContainer"
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(20, 20, 25)
G2L["2"]["BorderSizePixel"] = 0
G2L["2"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
G2L["2"]["Size"] = UDim2.new(0, 720, 0, 480)
G2L["2"]["Position"] = UDim2.new(0.5, 0, 0.5, 0)

G2L["3"] = Instance.new("UICorner", G2L["2"])
G2L["3"]["CornerRadius"] = UDim.new(0, 16)

-- Gradient Overlay
G2L["4"] = Instance.new("UIGradient", G2L["2"])
G2L["4"]["Color"] = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(25, 25, 32)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(15, 15, 20))
}
G2L["4"]["Rotation"] = 45

-- Glow Effect
G2L["5"] = Instance.new("ImageLabel", G2L["2"])
G2L["5"]["Name"] = "Glow"
G2L["5"]["BackgroundTransparency"] = 1
G2L["5"]["Size"] = UDim2.new(1, 60, 1, 60)
G2L["5"]["Position"] = UDim2.new(0, -30, 0, -30)
G2L["5"]["Image"] = "rbxassetid://4654143143"
G2L["5"]["ImageColor3"] = Color3.fromRGB(100, 150, 255)
G2L["5"]["ImageTransparency"] = 0.5
G2L["5"]["ZIndex"] = -1

-- Top Bar
G2L["6"] = Instance.new("Frame", G2L["2"])
G2L["6"]["Name"] = "TopBar"
G2L["6"]["BackgroundColor3"] = Color3.fromRGB(30, 30, 38)
G2L["6"]["BorderSizePixel"] = 0
G2L["6"]["Size"] = UDim2.new(1, 0, 0, 50)

G2L["7"] = Instance.new("UICorner", G2L["6"])
G2L["7"]["CornerRadius"] = UDim.new(0, 16)

-- Top Bar Bottom Fix
G2L["8"] = Instance.new("Frame", G2L["6"])
G2L["8"]["Name"] = "BottomFix"
G2L["8"]["BackgroundColor3"] = Color3.fromRGB(30, 30, 38)
G2L["8"]["BorderSizePixel"] = 0
G2L["8"]["Size"] = UDim2.new(1, 0, 0, 16)
G2L["8"]["Position"] = UDim2.new(0, 0, 1, -16)

-- Icon
G2L["9"] = Instance.new("ImageLabel", G2L["6"])
G2L["9"]["Name"] = "Icon"
G2L["9"]["BackgroundTransparency"] = 1
G2L["9"]["Size"] = UDim2.new(0, 32, 0, 32)
G2L["9"]["Position"] = UDim2.new(0, 12, 0.5, -16)
G2L["9"]["Image"] = "rbxassetid://96581271712752"
G2L["9"]["ScaleType"] = Enum.ScaleType.Fit

-- Title
G2L["10"] = Instance.new("TextLabel", G2L["6"])
G2L["10"]["Name"] = "Title"
G2L["10"]["BackgroundTransparency"] = 1
G2L["10"]["Position"] = UDim2.new(0, 52, 0, 0)
G2L["10"]["Size"] = UDim2.new(0, 200, 1, 0)
G2L["10"]["Font"] = Enum.Font.GothamBold
G2L["10"]["Text"] = "NPC Panel"
G2L["10"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
G2L["10"]["TextSize"] = 18
G2L["10"]["TextXAlignment"] = Enum.TextXAlignment.Left

-- Subtitle
G2L["11"] = Instance.new("TextLabel", G2L["6"])
G2L["11"]["Name"] = "Subtitle"
G2L["11"]["BackgroundTransparency"] = 1
G2L["11"]["Position"] = UDim2.new(0, 52, 0, 22)
G2L["11"]["Size"] = UDim2.new(0, 200, 0, 20)
G2L["11"]["Font"] = Enum.Font.Gotham
G2L["11"]["Text"] = "@Im_Patrick"
G2L["11"]["TextColor3"] = Color3.fromRGB(150, 150, 160)
G2L["11"]["TextSize"] = 12
G2L["11"]["TextXAlignment"] = Enum.TextXAlignment.Left

-- Minimize Button
G2L["12"] = Instance.new("ImageButton", G2L["6"])
G2L["12"]["Name"] = "MinimizeBtn"
G2L["12"]["BackgroundColor3"] = Color3.fromRGB(40, 40, 50)
G2L["12"]["Size"] = UDim2.new(0, 36, 0, 36)
G2L["12"]["Position"] = UDim2.new(1, -44, 0.5, -18)
G2L["12"]["Image"] = "http://www.roblox.com/asset/?id=6026568240"
G2L["12"]["ImageColor3"] = Color3.fromRGB(220, 220, 230)

G2L["13"] = Instance.new("UICorner", G2L["12"])
G2L["13"]["CornerRadius"] = UDim.new(0, 8)

-- Content Area
G2L["14"] = Instance.new("Frame", G2L["2"])
G2L["14"]["Name"] = "ContentArea"
G2L["14"]["BackgroundTransparency"] = 1
G2L["14"]["Position"] = UDim2.new(0, 16, 0, 66)
G2L["14"]["Size"] = UDim2.new(1, -32, 1, -82)

-- Left Panel (Settings)
G2L["15"] = Instance.new("Frame", G2L["14"])
G2L["15"]["Name"] = "LeftPanel"
G2L["15"]["BackgroundColor3"] = Color3.fromRGB(25, 25, 32)
G2L["15"]["BorderSizePixel"] = 0
G2L["15"]["Size"] = UDim2.new(0.35, -8, 1, 0)

G2L["16"] = Instance.new("UICorner", G2L["15"])
G2L["16"]["CornerRadius"] = UDim.new(0, 12)

G2L["17"] = Instance.new("UIStroke", G2L["15"])
G2L["17"]["Color"] = Color3.fromRGB(50, 50, 60)
G2L["17"]["Thickness"] = 1
G2L["17"]["Transparency"] = 0.5

-- Left Panel Content
G2L["18"] = Instance.new("ScrollingFrame", G2L["15"])
G2L["18"]["Name"] = "SettingsScroll"
G2L["18"]["BackgroundTransparency"] = 1
G2L["18"]["Size"] = UDim2.new(1, -16, 1, -16)
G2L["18"]["Position"] = UDim2.new(0, 8, 0, 8)
G2L["18"]["ScrollBarThickness"] = 4
G2L["18"]["ScrollBarImageColor3"] = Color3.fromRGB(100, 150, 255)
G2L["18"]["BorderSizePixel"] = 0
G2L["18"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y

G2L["19"] = Instance.new("UIListLayout", G2L["18"])
G2L["19"]["Padding"] = UDim.new(0, 8)
G2L["19"]["SortOrder"] = Enum.SortOrder.LayoutOrder

-- Right Panel (Actions)
G2L["20"] = Instance.new("Frame", G2L["14"])
G2L["20"]["Name"] = "RightPanel"
G2L["20"]["BackgroundColor3"] = Color3.fromRGB(25, 25, 32)
G2L["20"]["BorderSizePixel"] = 0
G2L["20"]["Size"] = UDim2.new(0.65, -8, 1, 0)
G2L["20"]["Position"] = UDim2.new(0.35, 8, 0, 0)

G2L["21"] = Instance.new("UICorner", G2L["20"])
G2L["21"]["CornerRadius"] = UDim.new(0, 12)

G2L["22"] = Instance.new("UIStroke", G2L["20"])
G2L["22"]["Color"] = Color3.fromRGB(50, 50, 60)
G2L["22"]["Thickness"] = 1
G2L["22"]["Transparency"] = 0.5

-- Tab System
G2L["23"] = Instance.new("Frame", G2L["20"])
G2L["23"]["Name"] = "TabBar"
G2L["23"]["BackgroundColor3"] = Color3.fromRGB(30, 30, 38)
G2L["23"]["BorderSizePixel"] = 0
G2L["23"]["Size"] = UDim2.new(1, 0, 0, 42)

G2L["24"] = Instance.new("UICorner", G2L["23"])
G2L["24"]["CornerRadius"] = UDim.new(0, 12)

G2L["25"] = Instance.new("Frame", G2L["23"])
G2L["25"]["Name"] = "BottomFix"
G2L["25"]["BackgroundColor3"] = Color3.fromRGB(30, 30, 38)
G2L["25"]["BorderSizePixel"] = 0
G2L["25"]["Size"] = UDim2.new(1, 0, 0, 12)
G2L["25"]["Position"] = UDim2.new(0, 0, 1, -12)

-- Main Tab Button
G2L["26"] = Instance.new("TextButton", G2L["23"])
G2L["26"]["Name"] = "MainTab"
G2L["26"]["BackgroundColor3"] = Color3.fromRGB(100, 150, 255)
G2L["26"]["BorderSizePixel"] = 0
G2L["26"]["Size"] = UDim2.new(0.5, -4, 0, 34)
G2L["26"]["Position"] = UDim2.new(0, 4, 0, 4)
G2L["26"]["Font"] = Enum.Font.GothamBold
G2L["26"]["Text"] = "MAIN"
G2L["26"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
G2L["26"]["TextSize"] = 14

G2L["27"] = Instance.new("UICorner", G2L["26"])
G2L["27"]["CornerRadius"] = UDim.new(0, 8)

-- Extra Tab Button
G2L["28"] = Instance.new("TextButton", G2L["23"])
G2L["28"]["Name"] = "ExtraTab"
G2L["28"]["BackgroundColor3"] = Color3.fromRGB(40, 40, 50)
G2L["28"]["BorderSizePixel"] = 0
G2L["28"]["Size"] = UDim2.new(0.5, -4, 0, 34)
G2L["28"]["Position"] = UDim2.new(0.5, 0, 0, 4)
G2L["28"]["Font"] = Enum.Font.GothamBold
G2L["28"]["Text"] = "EXTRA"
G2L["28"]["TextColor3"] = Color3.fromRGB(180, 180, 190)
G2L["28"]["TextSize"] = 14

G2L["29"] = Instance.new("UICorner", G2L["28"])
G2L["29"]["CornerRadius"] = UDim.new(0, 8)

-- Main Content
G2L["30"] = Instance.new("ScrollingFrame", G2L["20"])
G2L["30"]["Name"] = "MainContent"
G2L["30"]["BackgroundTransparency"] = 1
G2L["30"]["Size"] = UDim2.new(1, -16, 1, -58)
G2L["30"]["Position"] = UDim2.new(0, 8, 0, 50)
G2L["30"]["ScrollBarThickness"] = 4
G2L["30"]["ScrollBarImageColor3"] = Color3.fromRGB(100, 150, 255)
G2L["30"]["BorderSizePixel"] = 0
G2L["30"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y

G2L["31"] = Instance.new("UIListLayout", G2L["30"])
G2L["31"]["Padding"] = UDim.new(0, 10)
G2L["31"]["SortOrder"] = Enum.SortOrder.LayoutOrder

-- Extra Content
G2L["32"] = Instance.new("ScrollingFrame", G2L["20"])
G2L["32"]["Name"] = "ExtraContent"
G2L["32"]["BackgroundTransparency"] = 1
G2L["32"]["Size"] = UDim2.new(1, -16, 1, -58)
G2L["32"]["Position"] = UDim2.new(0, 8, 0, 50)
G2L["32"]["ScrollBarThickness"] = 4
G2L["32"]["ScrollBarImageColor3"] = Color3.fromRGB(100, 150, 255)
G2L["32"]["BorderSizePixel"] = 0
G2L["32"]["Visible"] = false
G2L["32"]["ScrollingDirection"] = Enum.ScrollingDirection.X
G2L["32"]["AutomaticCanvasSize"] = Enum.AutomaticSize.X

G2L["33"] = Instance.new("UIListLayout", G2L["32"])
G2L["33"]["FillDirection"] = Enum.FillDirection.Horizontal
G2L["33"]["Padding"] = UDim.new(0, 12)
G2L["33"]["SortOrder"] = Enum.SortOrder.LayoutOrder

-- Minimize Icon
G2L["34"] = Instance.new("Frame", G2L["1"])
G2L["34"]["Name"] = "MinimizedIcon"
G2L["34"]["BackgroundColor3"] = Color3.fromRGB(100, 150, 255)
G2L["34"]["Size"] = UDim2.new(0, 56, 0, 56)
G2L["34"]["Position"] = UDim2.new(0, 20, 0, 100)
G2L["34"]["Visible"] = false

G2L["35"] = Instance.new("UICorner", G2L["34"])
G2L["35"]["CornerRadius"] = UDim.new(0, 16)

G2L["36"] = Instance.new("ImageButton", G2L["34"])
G2L["36"]["Name"] = "IconBtn"
G2L["36"]["BackgroundTransparency"] = 1
G2L["36"]["Size"] = UDim2.new(0, 40, 0, 40)
G2L["36"]["Position"] = UDim2.new(0.5, -20, 0.5, -20)
G2L["36"]["Image"] = "rbxassetid://96581271712752"

G2L["37"] = Instance.new("UIStroke", G2L["34"])
G2L["37"]["Color"] = Color3.fromRGB(255, 255, 255)
G2L["37"]["Thickness"] = 2
G2L["37"]["Transparency"] = 0.7

G2L["38"] = Instance.new("UIDragDetector", G2L["34"])

-- Intro Screen
G2L["39"] = Instance.new("Frame", G2L["1"])
G2L["39"]["Name"] = "IntroScreen"
G2L["39"]["BackgroundColor3"] = Color3.fromRGB(15, 15, 20)
G2L["39"]["Size"] = UDim2.new(1, 0, 1, 0)
G2L["39"]["BackgroundTransparency"] = 1
G2L["39"]["Visible"] = false

G2L["40"] = Instance.new("Frame", G2L["39"])
G2L["40"]["Name"] = "IntroContent"
G2L["40"]["BackgroundColor3"] = Color3.fromRGB(20, 20, 28)
G2L["40"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
G2L["40"]["Size"] = UDim2.new(0, 350, 0, 300)
G2L["40"]["Position"] = UDim2.new(0.5, 0, 0.5, 0)
G2L["40"]["BackgroundTransparency"] = 1

G2L["41"] = Instance.new("UICorner", G2L["40"])
G2L["41"]["CornerRadius"] = UDim.new(0, 20)

G2L["42"] = Instance.new("ImageLabel", G2L["40"])
G2L["42"]["Name"] = "IntroIcon"
G2L["42"]["BackgroundTransparency"] = 1
G2L["42"]["Size"] = UDim2.new(0, 120, 0, 120)
G2L["42"]["Position"] = UDim2.new(0.5, -60, 0, 50)
G2L["42"]["Image"] = "rbxassetid://96581271712752"
G2L["42"]["ImageTransparency"] = 1

G2L["43"] = Instance.new("TextLabel", G2L["40"])
G2L["43"]["Name"] = "IntroTitle"
G2L["43"]["BackgroundTransparency"] = 1
G2L["43"]["Size"] = UDim2.new(1, 0, 0, 40)
G2L["43"]["Position"] = UDim2.new(0, 0, 0, 190)
G2L["43"]["Font"] = Enum.Font.GothamBold
G2L["43"]["Text"] = "NPC PANEL"
G2L["43"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
G2L["43"]["TextSize"] = 28
G2L["43"]["TextTransparency"] = 1

G2L["44"] = Instance.new("TextLabel", G2L["40"])
G2L["44"]["Name"] = "IntroSubtitle"
G2L["44"]["BackgroundTransparency"] = 1
G2L["44"]["Size"] = UDim2.new(1, 0, 0, 30)
G2L["44"]["Position"] = UDim2.new(0, 0, 0, 235)
G2L["44"]["Font"] = Enum.Font.Gotham
G2L["44"]["Text"] = "by @Im_Patrick"
G2L["44"]["TextColor3"] = Color3.fromRGB(150, 150, 170)
G2L["44"]["TextSize"] = 16
G2L["44"]["TextTransparency"] = 1

-- Templates
local ButtonTemplate = Instance.new("Frame")
ButtonTemplate.Name = "ActionButton"
ButtonTemplate.BackgroundColor3 = Color3.fromRGB(35, 35, 45)
ButtonTemplate.BorderSizePixel = 0
ButtonTemplate.Size = UDim2.new(1, 0, 0, 70)

local BtnCorner = Instance.new("UICorner", ButtonTemplate)
BtnCorner.CornerRadius = UDim.new(0, 10)

local BtnStroke = Instance.new("UIStroke", ButtonTemplate)
BtnStroke.Color = Color3.fromRGB(60, 60, 70)
BtnStroke.Thickness = 1
BtnStroke.Transparency = 0.5

local BtnTitle = Instance.new("TextLabel", ButtonTemplate)
BtnTitle.Name = "Title"
BtnTitle.BackgroundTransparency = 1
BtnTitle.Position = UDim2.new(0, 14, 0, 8)
BtnTitle.Size = UDim2.new(1, -80, 0, 20)
BtnTitle.Font = Enum.Font.GothamBold
BtnTitle.Text = "Action Title"
BtnTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
BtnTitle.TextSize = 14
BtnTitle.TextXAlignment = Enum.TextXAlignment.Left

local BtnDesc = Instance.new("TextLabel", ButtonTemplate)
BtnDesc.Name = "Description"
BtnDesc.BackgroundTransparency = 1
BtnDesc.Position = UDim2.new(0, 14, 0, 30)
BtnDesc.Size = UDim2.new(1, -80, 0, 32)
BtnDesc.Font = Enum.Font.Gotham
BtnDesc.Text = "Description text"
BtnDesc.TextColor3 = Color3.fromRGB(150, 150, 160)
BtnDesc.TextSize = 11
BtnDesc.TextXAlignment = Enum.TextXAlignment.Left
BtnDesc.TextYAlignment = Enum.TextYAlignment.Top
BtnDesc.TextWrapped = true

local ClickBtn = Instance.new("TextButton", ButtonTemplate)
ClickBtn.Name = "ClickButton"
ClickBtn.BackgroundColor3 = Color3.fromRGB(100, 150, 255)
ClickBtn.Size = UDim2.new(0, 60, 0, 32)
ClickBtn.Position = UDim2.new(1, -70, 0.5, -16)
ClickBtn.Font = Enum.Font.GothamBold
ClickBtn.Text = "RUN"
ClickBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
ClickBtn.TextSize = 12
ClickBtn.BorderSizePixel = 0

local ClickCorner = Instance.new("UICorner", ClickBtn)
ClickCorner.CornerRadius = UDim.new(0, 8)

-- Toggle Template
local ToggleTemplate = Instance.new("Frame")
ToggleTemplate.Name = "ToggleButton"
ToggleTemplate.BackgroundColor3 = Color3.fromRGB(35, 35, 45)
ToggleTemplate.BorderSizePixel = 0
ToggleTemplate.Size = UDim2.new(1, 0, 0, 70)

local TogCorner = Instance.new("UICorner", ToggleTemplate)
TogCorner.CornerRadius = UDim.new(0, 10)

local TogStroke = Instance.new("UIStroke", ToggleTemplate)
TogStroke.Color = Color3.fromRGB(60, 60, 70)
TogStroke.Thickness = 1
TogStroke.Transparency = 0.5

local TogTitle = Instance.new("TextLabel", ToggleTemplate)
TogTitle.Name = "Title"
TogTitle.BackgroundTransparency = 1
TogTitle.Position = UDim2.new(0, 14, 0, 8)
TogTitle.Size = UDim2.new(1, -80, 0, 20)
TogTitle.Font = Enum.Font.GothamBold
TogTitle.Text = "Toggle Title"
TogTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
TogTitle.TextSize = 14
TogTitle.TextXAlignment = Enum.TextXAlignment.Left

local TogDesc = Instance.new("TextLabel", ToggleTemplate)
TogDesc.Name = "Description"
TogDesc.BackgroundTransparency = 1
TogDesc.Position = UDim2.new(0, 14, 0, 30)
TogDesc.Size = UDim2.new(1, -80, 0, 32)
TogDesc.Font = Enum.Font.Gotham
TogDesc.Text = "Description text"
TogDesc.TextColor3 = Color3.fromRGB(150, 150, 160)
TogDesc.TextSize = 11
TogDesc.TextXAlignment = Enum.TextXAlignment.Left
TogDesc.TextYAlignment = Enum.TextYAlignment.Top
TogDesc.TextWrapped = true

local ToggleSwitch = Instance.new("Frame", ToggleTemplate)
ToggleSwitch.Name = "Switch"
ToggleSwitch.BackgroundColor3 = Color3.fromRGB(45, 45, 55)
ToggleSwitch.Size = UDim2.new(0, 50, 0, 28)
ToggleSwitch.Position = UDim2.new(1, -60, 0.5, -14)
ToggleSwitch.BorderSizePixel = 0

local SwitchCorner = Instance.new("UICorner", ToggleSwitch)
SwitchCorner.CornerRadius = UDim.new(1, 0)

local SwitchKnob = Instance.new("Frame", ToggleSwitch)
SwitchKnob.Name = "Knob"
SwitchKnob.BackgroundColor3 = Color3.fromRGB(180, 180, 190)
SwitchKnob.Size = UDim2.new(0, 22, 0, 22)
SwitchKnob.Position = UDim2.new(0, 3, 0.5, -11)
SwitchKnob.BorderSizePixel = 0

local KnobCorner = Instance.new("UICorner", SwitchKnob)
KnobCorner.CornerRadius = UDim.new(1, 0)

local TogBtn = Instance.new("TextButton", ToggleTemplate)
TogBtn.Name = "ToggleBtn"
TogBtn.BackgroundTransparency = 1
TogBtn.Size = UDim2.new(1, 0, 1, 0)
TogBtn.Text = ""

-- Extra Button Template
local ExtraButtonTemplate = Instance.new("Frame")
ExtraButtonTemplate.Name = "ExtraAction"
ExtraButtonTemplate.BackgroundColor3 = Color3.fromRGB(35, 35, 45)
ExtraButtonTemplate.BorderSizePixel = 0
ExtraButtonTemplate.Size = UDim2.new(0, 140, 1, 0)

local ExCorner = Instance.new("UICorner", ExtraButtonTemplate)
ExCorner.CornerRadius = UDim.new(0, 12)

local ExStroke = Instance.new("UIStroke", ExtraButtonTemplate)
ExStroke.Color = Color3.fromRGB(100, 150, 255)
ExStroke.Thickness = 2
ExStroke.Transparency = 0.7

local ExTitle = Instance.new("TextLabel", ExtraButtonTemplate)
ExTitle.Name = "Title"
ExTitle.BackgroundTransparency = 1
ExTitle.Size = UDim2.new(1, -16, 0, 28)
ExTitle.Position = UDim2.new(0, 8, 0, 8)
ExTitle.Font = Enum.Font.GothamBold
ExTitle.Text = "Extra"
ExTitle.TextColor3 = Color3.fromRGB(100, 150, 255)
ExTitle.TextSize = 14

local ExIcon = Instance.new("ImageButton", ExtraButtonTemplate)
ExIcon.Name = "IconButton"
ExIcon.BackgroundColor3 = Color3.fromRGB(45, 45, 55)
ExIcon.Size = UDim2.new(0, 80, 0, 80)
ExIcon.Position = UDim2.new(0.5, -40, 0.5, -20)
ExIcon.Image = "http://www.roblox.com/asset/?id=6022668955"
ExIcon.ScaleType = Enum.ScaleType.Fit
ExIcon.BorderSizePixel = 0

local ExIconCorner = Instance.new("UICorner", ExIcon)
ExIconCorner.CornerRadius = UDim.new(0, 10)

-- Setting Item Template
local SettingTemplate = Instance.new("Frame")
SettingTemplate.Name = "SettingItem"
SettingTemplate.BackgroundColor3 = Color3.fromRGB(30, 30, 38)
SettingTemplate.BorderSizePixel = 0
SettingTemplate.Size = UDim2.new(1, 0, 0, 90)

local SetCorner = Instance.new("UICorner", SettingTemplate)
SetCorner.CornerRadius = UDim.new(0, 10)

local SetTitle = Instance.new("TextLabel", SettingTemplate)
SetTitle.Name = "Title"
SetTitle.BackgroundTransparency = 1
SetTitle.Position = UDim2.new(0, 12, 0, 8)
SetTitle.Size = UDim2.new(1, -24, 0, 18)
SetTitle.Font = Enum.Font.GothamBold
SetTitle.Text = "Setting"
SetTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
SetTitle.TextSize = 13
SetTitle.TextXAlignment = Enum.TextXAlignment.Left

local SetDesc = Instance.new("TextLabel", SettingTemplate)
SetDesc.Name = "Description"
SetDesc.BackgroundTransparency = 1
SetDesc.Position = UDim2.new(0, 12, 0, 28)
SetDesc.Size = UDim2.new(1, -24, 0, 28)
SetDesc.Font = Enum.Font.Gotham
SetDesc.Text = "Description"
SetDesc.TextColor3 = Color3.fromRGB(140, 140, 150)
SetDesc.TextSize = 11
SetDesc.TextXAlignment = Enum.TextXAlignment.Left
SetDesc.TextYAlignment = Enum.TextYAlignment.Top
SetDesc.TextWrapped = true

local SetSwitch = Instance.new("Frame", SettingTemplate)
SetSwitch.Name = "Switch"
SetSwitch.BackgroundColor3 = Color3.fromRGB(45, 45, 55)
SetSwitch.Size = UDim2.new(0, 46, 0, 26)
SetSwitch.Position = UDim2.new(0.5, -23, 1, -34)
SetSwitch.BorderSizePixel = 0

local SetSwitchCorner = Instance.new("UICorner", SetSwitch)
SetSwitchCorner.CornerRadius = UDim.new(1, 0)

local SetKnob = Instance.new("Frame", SetSwitch)
SetKnob.Name = "Knob"
SetKnob.BackgroundColor3 = Color3.fromRGB(180, 180, 190)
SetKnob.Size = UDim2.new(0, 20, 0, 20)
SetKnob.Position = UDim2.new(0, 3, 0.5, -10)
SetKnob.BorderSizePixel = 0

local SetKnobCorner = Instance.new("UICorner", SetKnob)
SetKnobCorner.CornerRadius = UDim.new(1, 0)

local SetBtn = Instance.new("TextButton", SettingTemplate)
SetBtn.Name = "ToggleBtn"
SetBtn.BackgroundTransparency = 1
SetBtn.Size = UDim2.new(1, 0, 1, 0)
SetBtn.Text = ""

-- Scripts
local gui = G2L["1"]
local main = G2L["2"]
local mainContent = G2L["30"]
local extraContent = G2L["32"]
local leftPanel = G2L["18"]
local minimizeBtn = G2L["12"]
local minimizedIcon = G2L["34"]
local iconBtn = G2L["36"]
local introScreen = G2L["39"]
local introContent = G2L["40"]
local introIcon = G2L["42"]
local introTitle = G2L["43"]
local introSubtitle = G2L["44"]
local mainTab = G2L["26"]
local extraTab = G2L["28"]

-- Tween Info
local fast = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
local medium = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
local slow = TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

-- State Variables
local clicknpc = true
local networkvis = false
local currentTab = "main"

-- Functions
local function partowner(part)
	return part.ReceiveAge == 0
end

-- Tab Switching
local function switchTab(tab)
	if currentTab == tab then return end
	currentTab = tab
	
	if tab == "main" then
		TweenService:Create(mainTab, fast, {BackgroundColor3 = Color3.fromRGB(100, 150, 255)}):Play()
		TweenService:Create(mainTab, fast, {TextColor3 = Color3.fromRGB(255, 255, 255)}):Play()
		TweenService:Create(extraTab, fast, {BackgroundColor3 = Color3.fromRGB(40, 40, 50)}):Play()
		TweenService:Create(extraTab, fast, {TextColor3 = Color3.fromRGB(180, 180, 190)}):Play()
		mainContent.Visible = true
		extraContent.Visible = false
	else
		TweenService:Create(extraTab, fast, {BackgroundColor3 = Color3.fromRGB(100, 150, 255)}):Play()
		TweenService:Create(extraTab, fast, {TextColor3 = Color3.fromRGB(255, 255, 255)}):Play()
		TweenService:Create(mainTab, fast, {BackgroundColor3 = Color3.fromRGB(40, 40, 50)}):Play()
		TweenService:Create(mainTab, fast, {TextColor3 = Color3.fromRGB(180, 180, 190)}):Play()
		mainContent.Visible = false
		extraContent.Visible = true
	end
end

mainTab.MouseButton1Click:Connect(function()
	switchTab("main")
end)

extraTab.MouseButton1Click:Connect(function()
	switchTab("extra")
end)

-- Minimize/Maximize
local minimized = false
local function toggleMinimize()
	minimized = not minimized
	
	if minimized then
		TweenService:Create(main, fast, {Position = UDim2.new(0.5, 0, -0.5, 0)}):Play()
		task.wait(0.3)
		main.Visible = false
		minimizedIcon.Visible = true
		TweenService:Create(minimizedIcon, fast, {Size = UDim2.new(0, 56, 0, 56)}):Play()
	else
		minimizedIcon.Visible = true
		TweenService:Create(minimizedIcon, fast, {Size = UDim2.new(0, 0, 0, 0)}):Play()
		task.wait(0.3)
		minimizedIcon.Visible = false
		main.Visible = true
		main.Position = UDim2.new(0.5, 0, -0.5, 0)
		TweenService:Create(main, fast, {Position = UDim2.new(0.5, 0, 0.5, 0)}):Play()
	end
end

minimizeBtn.MouseButton1Click:Connect(toggleMinimize)
iconBtn.MouseButton1Click:Connect(toggleMinimize)

-- Hover Effects
local function addHoverEffect(button, hoverColor, normalColor)
	button.MouseEnter:Connect(function()
		TweenService:Create(button, TweenInfo.new(0.2), {BackgroundColor3 = hoverColor}):Play()
	end)
	
	button.MouseLeave:Connect(function()
		TweenService:Create(button, TweenInfo.new(0.2), {BackgroundColor3 = normalColor}):Play()
	end)
end

addHoverEffect(minimizeBtn, Color3.fromRGB(60, 60, 70), Color3.fromRGB(40, 40, 50))

-- Intro Animation
local function playIntro()
	introScreen.Visible = true
	introScreen.BackgroundTransparency = 1
	introIcon.ImageTransparency = 1
	introTitle.TextTransparency = 1
	introSubtitle.TextTransparency = 1
	introContent.BackgroundTransparency = 1
	main.Position = UDim2.new(0.5, 0, -0.5, 0)
	
	local blur = Instance.new("BlurEffect")
	blur.Name = "IntroBlur"
	blur.Size = 0
	blur.Parent = Lighting
	
	-- Fade in background
	TweenService:Create(introScreen, slow, {BackgroundTransparency = 0.1}):Play()
	TweenService:Create(blur, slow, {Size = 24}):Play()
	
	task.wait(0.3)
	
	-- Fade in content box
	TweenService:Create(introContent, medium, {BackgroundTransparency = 0}):Play()
	
	task.wait(0.4)
	
	-- Show icon
	TweenService:Create(introIcon, medium, {ImageTransparency = 0}):Play()
	
	task.wait(0.5)
	
	-- Show text
	TweenService:Create(introTitle, medium, {TextTransparency = 0}):Play()
	task.wait(0.2)
	TweenService:Create(introSubtitle, medium, {TextTransparency = 0}):Play()
	
	task.wait(2.5)
	
	-- Fade out
	TweenService:Create(introContent, fast, {BackgroundTransparency = 1}):Play()
	TweenService:Create(introIcon, fast, {ImageTransparency = 1}):Play()
	TweenService:Create(introTitle, fast, {TextTransparency = 1}):Play()
	TweenService:Create(introSubtitle, fast, {TextTransparency = 1}):Play()
	
	task.wait(0.4)
	
	TweenService:Create(introScreen, fast, {BackgroundTransparency = 1}):Play()
	TweenService:Create(blur, fast, {Size = 0}):Play()
	
	task.wait(0.5)
	
	introScreen.Visible = false
	blur:Destroy()
	
	-- Show main window
	main.Visible = true
	TweenService:Create(main, medium, {Position = UDim2.new(0.5, 0, 0.5, 0)}):Play()
end

-- Create API
local create = {}

function create:mainbutton(title, description, func)
	local button = ButtonTemplate:Clone()
	button.Parent = mainContent
	button.Title.Text = title or "Action"
	button.Description.Text = description or "No description"
	
	local clickBtn = button.ClickButton
	addHoverEffect(clickBtn, Color3.fromRGB(120, 170, 255), Color3.fromRGB(100, 150, 255))
	
	clickBtn.MouseButton1Click:Connect(function()
		if func then
			TweenService:Create(clickBtn, TweenInfo.new(0.1), {Size = UDim2.new(0, 55, 0, 28)}):Play()
			task.wait(0.1)
			TweenService:Create(clickBtn, TweenInfo.new(0.1), {Size = UDim2.new(0, 60, 0, 32)}):Play()
			
			local success, err = pcall(func)
			if not success then
				warn("Button error:", err)
			end
		end
	end)
	
	return button
end

function create:maintoggle(title, description, func)
	local toggle = ToggleTemplate:Clone()
	toggle.Parent = mainContent
	toggle.Title.Text = title or "Toggle"
	toggle.Description.Text = description or "No description"
	
	local switch = toggle.Switch
	local knob = switch.Knob
	local toggleBtn = toggle.ToggleBtn
	local state = false
	
	addHoverEffect(toggleBtn, Color3.fromRGB(40, 40, 50), Color3.fromRGB(35, 35, 45))
	
	toggleBtn.MouseButton1Click:Connect(function()
		state = not state
		
		if state then
			TweenService:Create(switch, fast, {BackgroundColor3 = Color3.fromRGB(100, 150, 255)}):Play()
			TweenService:Create(knob, fast, {
				Position = UDim2.new(1, -25, 0.5, -11),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			}):Play()
		else
			TweenService:Create(switch, fast, {BackgroundColor3 = Color3.fromRGB(45, 45, 55)}):Play()
			TweenService:Create(knob, fast, {
				Position = UDim2.new(0, 3, 0.5, -11),
				BackgroundColor3 = Color3.fromRGB(180, 180, 190)
			}):Play()
		end
		
		if func then
			local success, err = pcall(func, state)
			if not success then
				warn("Toggle error:", err)
			end
		end
	end)
	
	return {
		toggle = toggle,
		switch = function(bool)
			state = bool
			if bool then
				TweenService:Create(switch, fast, {BackgroundColor3 = Color3.fromRGB(100, 150, 255)}):Play()
				TweenService:Create(knob, fast, {
					Position = UDim2.new(1, -25, 0.5, -11),
					BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				}):Play()
			else
				TweenService:Create(switch, fast, {BackgroundColor3 = Color3.fromRGB(45, 45, 55)}):Play()
				TweenService:Create(knob, fast, {
					Position = UDim2.new(0, 3, 0.5, -11),
					BackgroundColor3 = Color3.fromRGB(180, 180, 190)
				}):Play()
			end
		end
	}
end

function create:extrabutton(title, func)
	local button = ExtraButtonTemplate:Clone()
	button.Parent = extraContent
	button.Title.Text = title or "Extra"
	
	local iconBtn = button.IconButton
	addHoverEffect(iconBtn, Color3.fromRGB(55, 55, 65), Color3.fromRGB(45, 45, 55))
	
	iconBtn.MouseButton1Click:Connect(function()
		if func then
			TweenService:Create(iconBtn, TweenInfo.new(0.15), {
				Size = UDim2.new(0, 70, 0, 70),
				ImageColor3 = Color3.fromRGB(100, 150, 255)
			}):Play()
			task.wait(0.15)
			TweenService:Create(iconBtn, TweenInfo.new(0.15), {
				Size = UDim2.new(0, 80, 0, 80),
				ImageColor3 = Color3.fromRGB(255, 255, 255)
			}):Play()
			
			local success, err = pcall(func)
			if not success then
				warn("Extra button error:", err)
			end
		end
	end)
	
	return button
end

function create:extratoggle(title, func)
	local button = ExtraButtonTemplate:Clone()
	button.Parent = extraContent
	button.Title.Text = title or "Extra Toggle"
	
	local iconBtn = button.IconButton
	local state = false
	
	addHoverEffect(iconBtn, Color3.fromRGB(55, 55, 65), Color3.fromRGB(45, 45, 55))
	
	iconBtn.MouseButton1Click:Connect(function()
		state = not state
		
		if state then
			TweenService:Create(iconBtn, fast, {
				BackgroundColor3 = Color3.fromRGB(100, 150, 255),
				ImageColor3 = Color3.fromRGB(255, 255, 255)
			}):Play()
		else
			TweenService:Create(iconBtn, fast, {
				BackgroundColor3 = Color3.fromRGB(45, 45, 55),
				ImageColor3 = Color3.fromRGB(180, 180, 190)
			}):Play()
		end
		
		if func then
			local success, err = pcall(func, state)
			if not success then
				warn("Extra toggle error:", err)
			end
		end
	end)
	
	return button
end

-- Add default settings
local disableSetting = SettingTemplate:Clone()
disableSetting.Parent = leftPanel
disableSetting.Title.Text = "Disable Click Control"
disableSetting.Description.Text = "Disable clicking to control NPC"

local disableBtn = disableSetting.ToggleBtn
local disableSwitch = disableSetting.Switch
local disableKnob = disableSetting.Switch.Knob

disableBtn.MouseButton1Click:Connect(function()
	clicknpc = not clicknpc
	
	if not clicknpc then
		TweenService:Create(disableSwitch, fast, {BackgroundColor3 = Color3.fromRGB(100, 150, 255)}):Play()
		TweenService:Create(disableKnob, fast, {
			Position = UDim2.new(1, -23, 0.5, -10),
			BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		}):Play()
	else
		TweenService:Create(disableSwitch, fast, {BackgroundColor3 = Color3.fromRGB(45, 45, 55)}):Play()
		TweenService:Create(disableKnob, fast, {
			Position = UDim2.new(0, 3, 0.5, -10),
			BackgroundColor3 = Color3.fromRGB(180, 180, 190)
		}):Play()
	end
end)

local networkSetting = SettingTemplate:Clone()
networkSetting.Parent = leftPanel
networkSetting.Title.Text = "Network Ownership"
networkSetting.Description.Text = "Show network ownership of NPCs"

local networkBtn = networkSetting.ToggleBtn
local networkSwitch = networkSetting.Switch
local networkKnob = networkSetting.Switch.Knob

networkBtn.MouseButton1Click:Connect(function()
	networkvis = not networkvis
	settings().Physics.AreOwnersShown = networkvis
	
	if networkvis then
		TweenService:Create(networkSwitch, fast, {BackgroundColor3 = Color3.fromRGB(100, 150, 255)}):Play()
		TweenService:Create(networkKnob, fast, {
			Position = UDim2.new(1, -23, 0.5, -10),
			BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		}):Play()
	else
		TweenService:Create(networkSwitch, fast, {BackgroundColor3 = Color3.fromRGB(45, 45, 55)}):Play()
		TweenService:Create(networkKnob, fast, {
			Position = UDim2.new(0, 3, 0.5, -10),
			BackgroundColor3 = Color3.fromRGB(180, 180, 190)
		}):Play()
	end
end)

-- Add drag functionality
local UIDragDetector = Instance.new("UIDragDetector", main)

-- Play intro
task.spawn(playIntro)

return {
	create = create,
	G2L = G2L["1"],
	partowner = partowner,
	clicknpc = function() return clicknpc end
}
