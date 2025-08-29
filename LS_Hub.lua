local WindUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/Guo61/Cat-/refs/heads/main/main.lua"))()

-- Test
local Confirmed = false

WindUI:Popup({
    Title = "Lightsmoke_Hub",
    Icon = "rbxassetid://129260712070622",
    IconThemed = true,
    Content = "欢迎使用 LS_Hub",
    Buttons = {
        {
            Title = "进入Hub。",
            Icon = "arrow-right",
            Callback = function() Confirmed = true end,
            Variant = "Primary",
        }
    }
})

repeat wait() until Confirmed

--
local Window = WindUI:CreateWindow({
    Title = "Lightsmoke_Hub",
    Icon = "rbxassetid://129260712070622",
    IconThemed = true,
    Author = "轻烟",
    Folder = "MyGUI",
    Size = UDim2.fromOffset(580, 340),
    Transparent = true,
    Theme = "Light",
    User = { Enabled = true },
    SideBarWidth = 200,
    ScrollBarEnabled = true,
})


local Tabs = {
    Main = Window:Tab({ Title = "主页", Icon = "rbxassetid://6026568198" }),
    Player = Window:Tab({ Title = "玩家", Icon = "user" }),
    Combat = Window:Tab({ Title = "通用", Icon = "star" }),
    Script = Window:Tab({ Title = "脚本中心", Icon = "star" }),
    Ball = Window:Tab({ Title = "刀刃球", Icon = "gift" }),
    
}


Window:SelectTab(1)



Tabs.Main:Paragraph({
    Title = "欢迎使用 LS_Hub",
    Desc = "QQ群 1057220534",
    Image = "https://c-ssl.duitang.com/uploads/blog/202310/21/oVS4gnBVIg4A1yJ.jpg",
    ImageSize = 42,
    Thumbnail = "https://c-ssl.duitang.com/uploads/blog/202103/27/20210327131203_74b6b.jpg",
    ThumbnailSize = 120
})

Tabs.Script:Button({
    Title = "XA_Hub",
    Desc = "",
    Callback = function()
        loadstring(game:HttpGet("https://raw.gitcode.com/Xingtaiduan/Scripts/raw/main/Loader.lua"))()
    end
})

Tabs.Script:Button({
    Title = "禁漫中心",
    Desc = "",
    Callback = function()
        getgenv().LS="禁漫中心" 
        loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/ng/main/jmlllllllIIIIlllllII.lua"))()
    end
})

Tabs.Script:Button({
    Title = "情云脚本",
    Desc = "",
    Callback = function()
        loadstring(utf8.char((function() 
            return table.unpack({108,111,97,100,115,116,114,105,110,103,40,103,97,109,101,58,72,116,116,112,71,101,116,40,34,104,116,116,112,115,58,47,47,114,97,119,46,103,105,116,104,117,98,117,115,101,114,99,111,110,116,101,110,116,46,99,111,109,47,67,104,105,110,97,81,89,47,45,47,109,97,105,110,47,37,69,54,37,56,51,37,56,53,37,69,52,37,66,65,37,57,49,34,41,41,40,41})
        end)()))()
    end
})

Tabs.Script:Button({
    Title = "XK_Hub",
    Desc = "",
    Callback = function()
        loadstring(game:HttpGet(('https://github.com/DevSloPo/DVES/raw/main/XK%20Hub')))()
    end
})

Tabs.Script:Button({
    Title = "皮脚本",
    Desc = "",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/xiaopi77/xiaopi77/main/QQ1002100032-Roblox-Pi-script.lua"))()
    end
})



Tabs.Combat:Toggle({
    Title = "夜视",
    Value = false,
    Callback = function(state)
        if state then
            game.Lighting.Ambient = Color3.new(1, 1, 1)  
        else
            game.Lighting.Ambient = Color3.new(0, 0, 0) 
        end
    end
})

Tabs.Combat:Toggle({
    Title = "透视",
    Desc = "开了就不能关了",
    Value = false,
    Callback = function(state)
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
Tabs.Combat:Toggle({
    Title = "穿墙",
    Value = false,
    Callback = function(state)
        if state then
            local Noclip = true
            local Stepped = game:GetService("RunService").Stepped:Connect(function()
                if Noclip then
                    local character = game.Players.LocalPlayer.Character
                    if character then
                        for _, part in pairs(character:GetDescendants()) do
                            if part:IsA("BasePart") then
                                part.CanCollide = false
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



Tabs.Combat:Button({
    Title = "飞行",
    Desc = "加载飞行功能相关脚本",
    Callback = function()
    loadstring(game.HttpGet(game, "https://raw.githubusercontent.com/Xingtaiduan/Script/main/Content/FlyGuiV3"))()
    end
})

Tabs.Combat:Button({
    Title = "飞车",
    Desc = "英文版的",
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Lightsmoke666/Roblox-Script/refs/heads/main/飞车脚本源码.lua"))()
    end
})



Tabs.Combat:Button({
    Title = "透视自瞄范围",
    Desc = "三合一",
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Lightsmoke666/Roblox-Script/refs/heads/main/通用碰撞箱拓展器(Universal HitBox Expander).txt"))()
    end
})



Tabs.Player:Slider({
    Title = "跳跃",
    Value = {
        Min = 50,
        Max = 200,
        Default = 50,
    },
    Increment = 1,
    Callback = function(value)
        if game.Players.LocalPlayer.Character then
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
        end
    end
})

Tabs.Player:Slider({
    Title = "移速",
    Value = {
        Min = 16,
        Max = 100,
        Default = 16,
    },
    Increment = 1,
    Callback = function(value)
        if game.Players.LocalPlayer.Character then
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
        end
    end
})

Tabs.Player:Slider({
    Title = "重力",
    Value = {
        Min = 0.1,
        Max = 500.0,
        Default = 196.2,
    },
    Step = 0.1,
    Callback = function(value)
        game.Workspace.Gravity = value
    end
})

Tabs.Ball:Button({
    Title = "ArgonHubX",
    Desc = "纯英文没汉化",
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/AgentX771/ArgonHubX/main/Loader.lua"))()
    end
})

Window:OnClose(function()
    print("UI closed.")
end)
