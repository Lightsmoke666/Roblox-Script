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
    Background = "https://create.roblox.com/store/asset/1441878187/Anime-Neko-Maid?keyword=neko&pageNumber=1&pagePosition=92"
    })

        Window:Tag({
        Title = "V1.0 Beta",
        Color = Color3.fromHex("#30ff6a")
    })
    Window:Tag({
        Title = "云更ing", 
        Color = Color3.fromHex("#315dff")
    })
    local TimeTag = Window:Tag({
        Title = "🤗",
        Color = Color3.fromHex("#000000")
    })

local Tabs = {
    Main = Window:Tab({ Title = "主页", Icon = "rbxassetid://6026568198" }),
    Player = Window:Tab({ Title = "玩家", Icon = "user" }),
    Combat = Window:Tab({ Title = "通用", Icon = "star" }),
    Script = Window:Tab({ Title = "脚本中心", Icon = "star" }),
    Ball = Window:Tab({ Title = "刀刃球", Icon = "gift" }),
    Slap = Window:Tap({ Title ="巴掌", Icon = "gift "}),
    
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



Tabs.Combat:Toggle({
    Title = "飞行",
    Desc = "加载飞行功能相关脚本",
    Value = true
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xiaow6720-max/-1/c62d80a8fbd0175a28814be2b0858d45db74b8a2/飞行脚本V3(全游戏通用) .txt"))()
    end
})

Tabs.Combat:Button({
    Title = "飞车",
    Desc = "英文版的",
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Lightsmoke666/Roblox-Script/refs/heads/main/飞车脚本源码.lua"))()
    end
})



Tabs.Combat:Toggle({
    Title = "透视",
    Desc = "纯透视",
    Value = true
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/DevSloPo/ESP_Xuan/refs/heads/main/ESP.lua"))()
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

Tabs.Script:Button({
    Title = "获得所有徽章手套",
    Desc = "群友提供",
    Callback = function()
        loadstring(game:HttpGet("https://raw.gitcode.com/Xingtaiduan/Scripts/raw/main/Loader.lua"))()
    end
})