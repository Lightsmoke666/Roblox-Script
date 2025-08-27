local OrionLib = loadstring(game:HttpGet("https://pastebin.com/raw/FUEx0f3G"))()
-- 修正getParent未定义，指定父对象为game.CoreGui
local LBLG = Instance.new("ScreenGui", game.CoreGui)
local LBL = Instance.new("TextLabel", LBLG)
local player = game.Players.LocalPlayer

LBLG.Name = "LBLG"
LBLG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
LBLG.Enabled = true

LBL.Name = "LBL"
LBL.BackgroundColor3 = Color3.new(1, 1, 1)
LBL.BackgroundTransparency = 1
LBL.BorderColor3 = Color3.new(0, 0, 0)
LBL.Position = UDim2.new(0.75, 0, 0.010, 0)
LBL.Size = UDim2.new(0, 133, 0, 30)
LBL.Font = Enum.Font.GothamSemibold
LBL.Text = "TextLabel"
LBL.TextColor3 = Color3.new(1, 1, 1)
LBL.TextScaled = true
LBL.TextSize = 14
LBL.TextWrapped = true
LBL.Visible = true

local FpsLabel = LBL
local Heartbeat = game:GetService("RunService").Heartbeat
local LastIteration, Start
-- 初始化FrameUpdateTable
local FrameUpdateTable = {}
for i = 1, 30 do
    FrameUpdateTable[i] = tick() - i
end

-- 定义identifyexecutor函数
local function identifyexecutor()
    return "示例注入器"
end

local function HeartbeatUpdate(StartParam)
    LastIteration = tick()
    for Index = #FrameUpdateTable, 1, -1 do
        FrameUpdateTable[Index + 1] = (FrameUpdateTable[Index] >= LastIteration - 1)
    end
    FrameUpdateTable[1] = LastIteration
    local CurrentFPS = #FrameUpdateTable / (LastIteration - FrameUpdateTable[#FrameUpdateTable])
    FpsLabel.Text = "FPS: " .. math.floor(CurrentFPS)
end

Heartbeat:Connect(function()
    HeartbeatUpdate(Start)
end)

local Window = OrionLib:MakeWindow({
    Name = "Lightsmoke_Hub",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "Lightsmoke_Hub"
})

-- 为每个选项卡使用不同变量名
local UserInfoTab = Window:MakeTab({
    Name = "用户信息",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local HomeTab = Window:MakeTab({
    Name = "主页",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local Test1Tab = Window:MakeTab({
    Name = "测试1",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local Test2Tab = Window:MakeTab({
    Name = "测试2",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

UserInfoTab:AddParagraph("你的名字: ", " " .. player.Name .. "")
UserInfoTab:AddParagraph("你的注入器: ", " " .. identifyexecutor() .. "")
UserInfoTab:AddParagraph("当前时间: ", " " .. os.date("%X") .. "")

OrionLib:Init()
