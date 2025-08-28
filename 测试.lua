local OrionLib
-- 1. 修复OrionLib加载：双链接备用+多渠道错误提示（避免服务器屏蔽CoreGui）
local loadLinks = {
    "https://pastebin.com/raw/FUEx0f3G", -- 原链接
    "https://raw.githubusercontent.com/OrionLib/Orion/main/source" -- 备用链接（稳定性更高）
}
local success, err
-- 循环尝试加载链接，直到成功或全部失败
for _, link in ipairs(loadLinks) do
    success, err = pcall(function()
        OrionLib = loadstring(game:HttpGet(link))()
    end)
    if success then
        print("[LS_Hub] OrionLib加载成功（使用链接：" .. link .. "）")
        break
    else
        warn("[LS_Hub] 链接" .. link .. "加载失败：" .. err)
    end
end
-- 加载失败时，用通知栏+控制台双重提示（不依赖CoreGui）
if not success then
    warn("[LS_Hub] OrionLib最终加载失败：" .. err)
    -- 调用Roblox原生通知（服务器极少屏蔽）
    pcall(function()
        game.StarterGui:SetCore("SendNotification", {
            Title = "LS_Hub加载错误",
            Text = "请检查：1.网络 2.注入器模式（开Unsafe）\n错误详情：" .. err,
            Duration = 15,
            Icon = "rbxassetid://4483345998"
        })
    end)
    return
end

print("反挂机开启")
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
    vu:Button2Down(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
    wait(1)
    vu:Button2Up(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
end)

-- ====================== 2. 创建FPS/时间显示界面 - 保留原优化 ======================
local LBLG = Instance.new("ScreenGui", game.CoreGui)
LBLG.Name = "FPSDisplayGui"
LBLG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
LBLG.Enabled = true
local LBL = Instance.new("TextLabel", LBLG)
LBL.Name = "FPSAndTimeLabel"
LBL.BackgroundColor3 = Color3.new(0, 0, 0)
LBL.BackgroundTransparency = 0.5
LBL.BorderColor3 = Color3.new(1, 1, 1)
LBL.Position = UDim2.new(0.01, 0, 0.01, 0)
LBL.Size = UDim2.new(0, 220, 0, 30)
LBL.Font = Enum.Font.GothamSemibold
LBL.Text = "FPS: 加载中 | 当前时间: 加载中"
LBL.TextColor3 = Color3.new(1, 1, 1)
LBL.TextScaled = true
LBL.TextSize = 14
LBL.TextWrapped = true
LBL.Visible = true
local player = game.Players.LocalPlayer
local FpsLabel = LBL

-- ====================== 3. 定义工具函数 - 保留注入器识别 ======================
local function identifyexecutor()
    if syn then
        return "Synapse X"
    elseif getgenv().SW then
        return "Script-Ware"
    elseif is_sirhurt_closure then
        return "SirHurt"
    elseif proto then
        return "ProtoSmasher"
    else
        return "嘻嘻不告诉你"
    end
end

-- ====================== 4. FPS计算与更新逻辑 - 修复核心：RenderStepped替代Heartbeat ======================
local RunService = game:GetService("RunService")
local LastIteration, Start
local FrameUpdateTable = {tick()} -- 初始化帧时间戳
-- 改用RenderStepped（客户端渲染事件，Ohio服务器更难屏蔽）
local function FpsUpdate()
    LastIteration = tick()
    -- 清理1秒前的旧帧数据，减少内存占用
    for Index = #FrameUpdateTable, 1, -1 do
        if FrameUpdateTable[Index] < LastIteration - 1 then
            table.remove(FrameUpdateTable, Index)
        end
    end
    table.insert(FrameUpdateTable, 1, LastIteration)
    
    -- 修复：确保Start有初始值，避免除以0异常
    Start = Start or LastIteration
    local RunTime = LastIteration - Start
    -- 计算FPS：RunTime过小时用保底值，避免数值异常
    local CurrentFPS = RunTime >= 0.1 and math.floor(#FrameUpdateTable / RunTime) or 60
    -- 格式化时间（确保时间正常显示）
    local CurrentTime = os.date("%H时%M分%S秒")
    FpsLabel.Text = string.format("FPS: %d | 当前时间: %s", CurrentFPS, CurrentTime)
end
-- 连接RenderStepped事件（客户端优先级最高，确保执行）
RunService.RenderStepped:Connect(FpsUpdate)
print("[LS_Hub] FPS更新模块已启动")

-- ====================== 5. 创建Lightsmoke_Hub主窗口 - 保留原功能 ======================
local Window = OrionLib:MakeWindow({
    Name = "Lightsmoke_Hub",
    HidePremium = false,
    SaveConfig = true,
    IntroText = "欢迎使用Lightsmoke_Hub",
    ConfigFolder = "Lightsmoke_Hub"
})

-- 5.1 用户信息选项卡
local UserInfoTab = Window:MakeTab({
    Name = "用户信息",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
UserInfoTab:AddParagraph("用户名:"," "..player.Name.."")
UserInfoTab:AddParagraph("你的注入器:"," "..identifyexecutor().."")
UserInfoTab:AddParagraph("服务器的ID:"," "..game.GameId.."")
UserInfoTab:AddParagraph("配置保存路径:"," Roblox/PlayerData/[你的用户ID]/Config/Lightsmoke_Hub")

-- 5.2 主页选项卡（含关闭按钮）
local HomeTab = Window:MakeTab({
    Name = "主页",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
HomeTab:AddButton({
    Name = "关闭Lightsmoke_Hub",
    Callback = function()
        Window:Destroy()
        LBLG:Destroy()
        warn("Lightsmoke_Hub已成功关闭")
    end
})

-- 5.3 脚本Hub合集选项卡
local Tab = Window:MakeTab({
	Name = "脚本Hub合集",
	Icon = "rbxassetid://7733779610",
	PremiumOnly = false
})
