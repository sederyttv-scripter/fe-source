local G2L = {};
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

-- Main ScreenGui
G2L["1"] = Instance.new("ScreenGui", core);
G2L["1"]["IgnoreGuiInset"] = true;
G2L["1"]["DisplayOrder"] = 5;
G2L["1"]["ScreenInsets"] = Enum.ScreenInsets.None;
G2L["1"]["ResetOnSpawn"] = false;

-- Main Container
G2L["2"] = Instance.new("Frame", G2L["1"]);
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(18, 18, 24);
G2L["2"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["2"]["Size"] = UDim2.new(0, 680, 0, 480);
G2L["2"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["2"]["Name"] = "MainFrame";

-- Corner
G2L["3"] = Instance.new("UICorner", G2L["2"]);
G2L["3"]["CornerRadius"] = UDim.new(0, 16);

-- Stroke
G2L["4"] = Instance.new("UIStroke", G2L["2"]);
G2L["4"]["Color"] = Color3.fromRGB(45, 45, 60);
G2L["4"]["Thickness"] = 1;

-- Header Bar
G2L["5"] = Instance.new("Frame", G2L["2"]);
G2L["5"]["BorderSizePixel"] = 0;
G2L["5"]["BackgroundColor3"] = Color3.fromRGB(24, 24, 32);
G2L["5"]["Size"] = UDim2.new(1, 0, 0, 50);
G2L["5"]["Name"] = "Header";

G2L["6"] = Instance.new("UICorner", G2L["5"]);
G2L["6"]["CornerRadius"] = UDim.new(0, 16);

-- Header Title
G2L["7"] = Instance.new("TextLabel", G2L["5"]);
G2L["7"]["BackgroundTransparency"] = 1;
G2L["7"]["Size"] = UDim2.new(0, 200, 1, 0);
G2L["7"]["Position"] = UDim2.new(0, 20, 0, 0);
G2L["7"]["Font"] = Enum.Font.GothamBold;
G2L["7"]["Text"] = "NPC Control";
G2L["7"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7"]["TextSize"] = 18;
G2L["7"]["TextXAlignment"] = Enum.TextXAlignment.Left;

-- Close Button
G2L["8"] = Instance.new("TextButton", G2L["5"]);
G2L["8"]["BackgroundColor3"] = Color3.fromRGB(255, 59, 59);
G2L["8"]["Size"] = UDim2.new(0, 32, 0, 32);
G2L["8"]["Position"] = UDim2.new(1, -42, 0.5, -16);
G2L["8"]["Font"] = Enum.Font.GothamBold;
G2L["8"]["Text"] = "×";
G2L["8"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8"]["TextSize"] = 20;
G2L["8"]["Name"] = "CloseButton";

G2L["9"] = Instance.new("UICorner", G2L["8"]);
G2L["9"]["CornerRadius"] = UDim.new(0, 8);

-- Minimize Button
G2L["10"] = Instance.new("TextButton", G2L["5"]);
G2L["10"]["BackgroundColor3"] = Color3.fromRGB(255, 184, 59);
G2L["10"]["Size"] = UDim2.new(0, 32, 0, 32);
G2L["10"]["Position"] = UDim2.new(1, -82, 0.5, -16);
G2L["10"]["Font"] = Enum.Font.GothamBold;
G2L["10"]["Text"] = "−";
G2L["10"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["10"]["TextSize"] = 20;
G2L["10"]["Name"] = "MinimizeButton";

G2L["11"] = Instance.new("UICorner", G2L["10"]);
G2L["11"]["CornerRadius"] = UDim.new(0, 8);

-- Content Container
G2L["12"] = Instance.new("Frame", G2L["2"]);
G2L["12"]["BackgroundTransparency"] = 1;
G2L["12"]["Size"] = UDim2.new(1, -40, 1, -90);
G2L["12"]["Position"] = UDim2.new(0, 20, 0, 70);
G2L["12"]["Name"] = "Content";

-- Left Panel (Settings)
G2L["13"] = Instance.new("Frame", G2L["12"]);
G2L["13"]["BackgroundColor3"] = Color3.fromRGB(24, 24, 32);
G2L["13"]["Size"] = UDim2.new(0, 200, 1, 0);
G2L["13"]["Name"] = "LeftPanel";

G2L["14"] = Instance.new("UICorner", G2L["13"]);
G2L["14"]["CornerRadius"] = UDim.new(0, 12);

G2L["15"] = Instance.new("UIStroke", G2L["13"]);
G2L["15"]["Color"] = Color3.fromRGB(45, 45, 60);

-- Settings Title
G2L["16"] = Instance.new("TextLabel", G2L["13"]);
G2L["16"]["BackgroundTransparency"] = 1;
G2L["16"]["Size"] = UDim2.new(1, -20, 0, 30);
G2L["16"]["Position"] = UDim2.new(0, 10, 0, 10);
G2L["16"]["Font"] = Enum.Font.GothamBold;
G2L["16"]["Text"] = "SETTINGS";
G2L["16"]["TextColor3"] = Color3.fromRGB(140, 140, 160);
G2L["16"]["TextSize"] = 12;
G2L["16"]["TextXAlignment"] = Enum.TextXAlignment.Left;

-- Settings List
G2L["17"] = Instance.new("ScrollingFrame", G2L["13"]);
G2L["17"]["BackgroundTransparency"] = 1;
G2L["17"]["Size"] = UDim2.new(1, -20, 1, -50);
G2L["17"]["Position"] = UDim2.new(0, 10, 0, 40);
G2L["17"]["ScrollBarThickness"] = 4;
G2L["17"]["BorderSizePixel"] = 0;
G2L["17"]["Name"] = "SettingsList";

G2L["18"] = Instance.new("UIListLayout", G2L["17"]);
G2L["18"]["Padding"] = UDim.new(0, 8);
G2L["18"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

-- Right Panel (Actions)
G2L["19"] = Instance.new("Frame", G2L["12"]);
G2L["19"]["BackgroundColor3"] = Color3.fromRGB(24, 24, 32);
G2L["19"]["Size"] = UDim2.new(1, -220, 1, 0);
G2L["19"]["Position"] = UDim2.new(0, 220, 0, 0);
G2L["19"]["Name"] = "RightPanel";

G2L["20"] = Instance.new("UICorner", G2L["19"]);
G2L["20"]["CornerRadius"] = UDim.new(0, 12);

G2L["21"] = Instance.new("UIStroke", G2L["19"]);
G2L["21"]["Color"] = Color3.fromRGB(45, 45, 60);

-- Actions Title
G2L["22"] = Instance.new("TextLabel", G2L["19"]);
G2L["22"]["BackgroundTransparency"] = 1;
G2L["22"]["Size"] = UDim2.new(1, -20, 0, 30);
G2L["22"]["Position"] = UDim2.new(0, 10, 0, 10);
G2L["22"]["Font"] = Enum.Font.GothamBold;
G2L["22"]["Text"] = "ACTIONS";
G2L["22"]["TextColor3"] = Color3.fromRGB(140, 140, 160);
G2L["22"]["TextSize"] = 12;
G2L["22"]["TextXAlignment"] = Enum.TextXAlignment.Left;

-- Actions Grid
G2L["23"] = Instance.new("ScrollingFrame", G2L["19"]);
G2L["23"]["BackgroundTransparency"] = 1;
G2L["23"]["Size"] = UDim2.new(1, -20, 1, -50);
G2L["23"]["Position"] = UDim2.new(0, 10, 0, 40);
G2L["23"]["ScrollBarThickness"] = 4;
G2L["23"]["BorderSizePixel"] = 0;
G2L["23"]["Name"] = "ActionsList";

G2L["24"] = Instance.new("UIGridLayout", G2L["23"]);
G2L["24"]["CellSize"] = UDim2.new(0, 120, 0, 120);
G2L["24"]["CellPadding"] = UDim2.new(0, 10, 0, 10);
G2L["24"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

-- Templates (Hidden)
G2L["25"] = Instance.new("Frame", G2L["1"]);
G2L["25"]["Visible"] = false;
G2L["25"]["Name"] = "Templates";

-- Toggle Template
G2L["26"] = Instance.new("Frame", G2L["25"]);
G2L["26"]["BackgroundColor3"] = Color3.fromRGB(30, 30, 40);
G2L["26"]["Size"] = UDim2.new(1, 0, 0, 40);
G2L["26"]["Name"] = "ToggleTemplate";

G2L["27"] = Instance.new("UICorner", G2L["26"]);
G2L["27"]["CornerRadius"] = UDim.new(0, 8);

G2L["28"] = Instance.new("TextLabel", G2L["26"]);
G2L["28"]["BackgroundTransparency"] = 1;
G2L["28"]["Size"] = UDim2.new(1, -50, 1, 0);
G2L["28"]["Position"] = UDim2.new(0, 10, 0, 0);
G2L["28"]["Font"] = Enum.Font.Gotham;
G2L["28"]["Text"] = "Toggle";
G2L["28"]["TextColor3"] = Color3.fromRGB(220, 220, 230);
G2L["28"]["TextSize"] = 14;
G2L["28"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["28"]["Name"] = "Label";

G2L["29"] = Instance.new("Frame", G2L["26"]);
G2L["29"]["BackgroundColor3"] = Color3.fromRGB(60, 60, 75);
G2L["29"]["Size"] = UDim2.new(0, 40, 0, 20);
G2L["29"]["Position"] = UDim2.new(1, -45, 0.5, -10);
G2L["29"]["Name"] = "ToggleBackground";

G2L["30"] = Instance.new("UICorner", G2L["29"]);
G2L["30"]["CornerRadius"] = UDim.new(1, 0);

G2L["31"] = Instance.new("Frame", G2L["29"]);
G2L["31"]["BackgroundColor3"] = Color3.fromRGB(180, 180, 190);
G2L["31"]["Size"] = UDim2.new(0, 16, 0, 16);
G2L["31"]["Position"] = UDim2.new(0, 2, 0.5, -8);
G2L["31"]["Name"] = "ToggleButton";

G2L["32"] = Instance.new("UICorner", G2L["31"]);
G2L["32"]["CornerRadius"] = UDim.new(1, 0);

G2L["33"] = Instance.new("TextButton", G2L["26"]);
G2L["33"]["BackgroundTransparency"] = 1;
G2L["33"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["33"]["Text"] = "";
G2L["33"]["Name"] = "Button";

-- Action Button Template
G2L["34"] = Instance.new("Frame", G2L["25"]);
G2L["34"]["BackgroundColor3"] = Color3.fromRGB(30, 30, 40);
G2L["34"]["Size"] = UDim2.new(0, 120, 0, 120);
G2L["34"]["Name"] = "ActionTemplate";

G2L["35"] = Instance.new("UICorner", G2L["34"]);
G2L["35"]["CornerRadius"] = UDim.new(0, 12);

G2L["36"] = Instance.new("UIStroke", G2L["34"]);
G2L["36"]["Color"] = Color3.fromRGB(45, 45, 60);

G2L["37"] = Instance.new("TextLabel", G2L["34"]);
G2L["37"]["BackgroundTransparency"] = 1;
G2L["37"]["Size"] = UDim2.new(1, -10, 0, 30);
G2L["37"]["Position"] = UDim2.new(0, 5, 0, 5);
G2L["37"]["Font"] = Enum.Font.GothamBold;
G2L["37"]["Text"] = "Action";
G2L["37"]["TextColor3"] = Color3.fromRGB(100, 180, 255);
G2L["37"]["TextSize"] = 14;
G2L["37"]["Name"] = "Title";
G2L["37"]["TextWrapped"] = true;

G2L["38"] = Instance.new("TextLabel", G2L["34"]);
G2L["38"]["BackgroundTransparency"] = 1;
G2L["38"]["Size"] = UDim2.new(1, -10, 1, -45);
G2L["38"]["Position"] = UDim2.new(0, 5, 0, 35);
G2L["38"]["Font"] = Enum.Font.Gotham;
G2L["38"]["Text"] = "Description";
G2L["38"]["TextColor3"] = Color3.fromRGB(160, 160, 170);
G2L["38"]["TextSize"] = 11;
G2L["38"]["TextWrapped"] = true;
G2L["38"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["38"]["Name"] = "Description";

G2L["39"] = Instance.new("TextButton", G2L["34"]);
G2L["39"]["BackgroundTransparency"] = 1;
G2L["39"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["39"]["Text"] = "";
G2L["39"]["Name"] = "Button";

-- Minimized Icon
G2L["40"] = Instance.new("Frame", G2L["1"]);
G2L["40"]["Visible"] = false;
G2L["40"]["BackgroundColor3"] = Color3.fromRGB(24, 24, 32);
G2L["40"]["Size"] = UDim2.new(0, 60, 0, 60);
G2L["40"]["Position"] = UDim2.new(0, 20, 0, 20);
G2L["40"]["Name"] = "MinimizedIcon";

G2L["41"] = Instance.new("UICorner", G2L["40"]);
G2L["41"]["CornerRadius"] = UDim.new(0, 12);

G2L["42"] = Instance.new("UIStroke", G2L["40"]);
G2L["42"]["Color"] = Color3.fromRGB(45, 45, 60);

G2L["43"] = Instance.new("TextButton", G2L["40"]);
G2L["43"]["BackgroundTransparency"] = 1;
G2L["43"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["43"]["Font"] = Enum.Font.GothamBold;
G2L["43"]["Text"] = "NPC";
G2L["43"]["TextColor3"] = Color3.fromRGB(100, 180, 255);
G2L["43"]["TextSize"] = 16;

G2L["44"] = Instance.new("UIDragDetector", G2L["2"]);
G2L["45"] = Instance.new("UIDragDetector", G2L["40"]);

local script = G2L["1"];
local tweenservice = game:GetService("TweenService")

local mainFrame = script.MainFrame
local minimizedIcon = script.MinimizedIcon
local templates = script.Templates

local header = mainFrame.Header
local closeButton = header.CloseButton
local minimizeButton = header.MinimizeButton

local leftPanel = mainFrame.Content.LeftPanel
local rightPanel = mainFrame.Content.RightPanel
local settingsList = leftPanel.SettingsList
local actionsList = rightPanel.ActionsList

local toggleTemplate = templates.ToggleTemplate
local actionTemplate = templates.ActionTemplate

local fast = TweenInfo.new(0.3, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)

-- State
local clicknpc = true
local networkvis = false
local minimized = false

-- Helper Functions
local function partowner(part)
	return part.ReceiveAge == 0
end

local function tweenButton(button, color)
	tweenservice:Create(button, TweenInfo.new(0.15), {BackgroundColor3 = color}):Play()
end

-- Close Button
closeButton.MouseButton1Click:Connect(function()
	tweenservice:Create(mainFrame, fast, {Size = UDim2.new(0, 0, 0, 0)}):Play()
	wait(0.3)
	script:Destroy()
end)

closeButton.MouseEnter:Connect(function()
	tweenButton(closeButton, Color3.fromRGB(255, 79, 79))
end)

closeButton.MouseLeave:Connect(function()
	tweenButton(closeButton, Color3.fromRGB(255, 59, 59))
end)

-- Minimize Function
local function toggleMinimize()
	minimized = not minimized
	if minimized then
		tweenservice:Create(mainFrame, fast, {Size = UDim2.new(0, 0, 0, 0)}):Play()
		wait(0.3)
		mainFrame.Visible = false
		minimizedIcon.Visible = true
		tweenservice:Create(minimizedIcon, fast, {Size = UDim2.new(0, 60, 0, 60)}):Play()
	else
		minimizedIcon.Visible = false
		mainFrame.Visible = true
		mainFrame.Size = UDim2.new(0, 0, 0, 0)
		tweenservice:Create(mainFrame, fast, {Size = UDim2.new(0, 680, 0, 480)}):Play()
	end
end

minimizeButton.MouseButton1Click:Connect(toggleMinimize)
minimizedIcon.TextButton.MouseButton1Click:Connect(toggleMinimize)

minimizeButton.MouseEnter:Connect(function()
	tweenButton(minimizeButton, Color3.fromRGB(255, 204, 79))
end)

minimizeButton.MouseLeave:Connect(function()
	tweenButton(minimizeButton, Color3.fromRGB(255, 184, 59))
end)

-- Create System
local create = {}

function create:toggle(title, callback, parent)
	local toggle = toggleTemplate:Clone()
	toggle.Visible = true
	toggle.Label.Text = title
	toggle.Parent = parent or settingsList
	
	local state = false
	local bg = toggle.ToggleBackground
	local btn = bg.ToggleButton
	
	toggle.Button.MouseButton1Click:Connect(function()
		state = not state
		
		tweenservice:Create(bg, fast, {
			BackgroundColor3 = state and Color3.fromRGB(100, 180, 255) or Color3.fromRGB(60, 60, 75)
		}):Play()
		
		tweenservice:Create(btn, fast, {
			Position = state and UDim2.new(1, -18, 0.5, -8) or UDim2.new(0, 2, 0.5, -8),
			BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		}):Play()
		
		if callback then
			pcall(callback, state)
		end
	end)
	
	return toggle
end

function create:maintoggle(title, description, callback)
	-- Toggle card for the actions panel
	local action = actionTemplate:Clone()
	action.Visible = true
	action.Title.Text = title
	action.Description.Text = description
	action.Parent = actionsList
	
	local state = false
	
	action.Button.MouseButton1Click:Connect(function()
		state = not state
		
		tweenservice:Create(action, TweenInfo.new(0.2), {
			BackgroundColor3 = state and Color3.fromRGB(40, 80, 120) or Color3.fromRGB(30, 30, 40)
		}):Play()
		
		tweenservice:Create(action.UIStroke, TweenInfo.new(0.2), {
			Color = state and Color3.fromRGB(100, 180, 255) or Color3.fromRGB(45, 45, 60),
			Thickness = state and 2 or 1
		}):Play()
		
		if callback then
			pcall(callback, state)
		end
	end)
	
	action.Button.MouseEnter:Connect(function()
		if not state then
			tweenservice:Create(action, TweenInfo.new(0.2), {
				BackgroundColor3 = Color3.fromRGB(35, 35, 45)
			}):Play()
		end
	end)
	
	action.Button.MouseLeave:Connect(function()
		if not state then
			tweenservice:Create(action, TweenInfo.new(0.2), {
				BackgroundColor3 = Color3.fromRGB(30, 30, 40)
			}):Play()
		end
	end)
	
	return action
end

function create:action(title, description, callback)
	local action = actionTemplate:Clone()
	action.Visible = true
	action.Title.Text = title
	action.Description.Text = description
	action.Parent = actionsList
	
	action.Button.MouseButton1Click:Connect(function()
		tweenservice:Create(action.UIStroke, TweenInfo.new(0.1), {
			Color = Color3.fromRGB(100, 180, 255),
			Thickness = 2
		}):Play()
		
		wait(0.1)
		
		tweenservice:Create(action.UIStroke, TweenInfo.new(0.2), {
			Color = Color3.fromRGB(45, 45, 60),
			Thickness = 1
		}):Play()
		
		if callback then
			pcall(callback)
		end
	end)
	
	action.Button.MouseEnter:Connect(function()
		tweenservice:Create(action, TweenInfo.new(0.2), {
			BackgroundColor3 = Color3.fromRGB(35, 35, 45)
		}):Play()
	end)
	
	action.Button.MouseLeave:Connect(function()
		tweenservice:Create(action, TweenInfo.new(0.2), {
			BackgroundColor3 = Color3.fromRGB(30, 30, 40)
		}):Play()
	end)
	
	return action
end

-- Default Settings
create:toggle("Click to Control NPC", function(state)
	clicknpc = state
end)

create:toggle("Show Network Owners", function(state)
	networkvis = state
	settings().Physics.AreOwnersShown = networkvis
end)

-- Entrance Animation
mainFrame.Size = UDim2.new(0, 0, 0, 0)
tweenservice:Create(mainFrame, fast, {Size = UDim2.new(0, 680, 0, 480)}):Play()

return {
	create = function()
		return create
	end,
	G2L = script,
	clicknpc = function() return clicknpc end
}
