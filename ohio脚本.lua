local WindUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/Guo61/Cat-/refs/heads/main/main.lua"))()

-- Test
local Confirmed = false

WindUI:Popup({
    Title = "Lightsmoke_Hub",
    Icon = "rbxassetid://71391084474065",
    IconThemed = true,
    Background = "rbxassetid://11332993674",
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
    Icon = "rbxassetid://12433197246",
    IconThemed = true,
    Author = "轻烟",
    Folder = "MyGUI",
    Size = UDim2.fromOffset(580, 340),
    Transparent = true,
    Theme = "Sky",
    User = { Enabled = true },
    SideBarWidth = 200,
    ScrollBarEnabled = true,
    Background = "rbxassetid://14406049809",
})

Window:Tag({
    Title = "V1.5正式版",
    Color = Color3.fromHex("#30ff6a")
})
Window:Tag({
    Title = "云更ing", 
    Color = Color3.fromHex("#315dff")
})
local TimeTag = Window:Tag({
    Title = "by轻烟",
    Color = Color3.fromHex("#000000")
})

-- 创建标签页
local Tabs = {
    Main = Window:Tab({ Title = "主页", Icon = "rbxassetid://6026568198" }),
    Player = Window:Tab({ Title = "玩家", Icon = "user" }),
    Combat = Window:Tab({ Title = "战斗", Icon = "gift" }),
    Magic = Window:Tab({ Title = "魔法", Icon = "star" }),
    Shop = Window:Tab({ Title = "购买", Icon = "star" }),
    Auxiliary = Window:Tab({ Title = "附属", Icon = "star" }),
    Auto = Window:Tab({ Title = "自动", Icon = "star" }),
    Collect = Window:Tab({ Title = "收集", Icon = "star" }),
    RPG = Window:Tab({ Title = "RPG轰炸", Icon = "star" }),
    BanInfo = Window:Tab({ Title = "封禁信息", Icon = "star" })
}

Window:SelectTab(1)

-- 主页内容
Tabs.Main:Paragraph({
    Title = "Snow Hub - 适配版",
    Desc = "原Snow Hub功能已适配到LS_Hub UI框架",
    Image = "https://c-ssl.duitang.com/uploads/blog/202310/21/oVS4gnBVIg4A1yJ.jpg",
    ImageSize = 50,
    Thumbnail = "https://c-ssl.duitang.com/uploads/blog/202103/27/20210327131203_74b6b.jpg",
    ThumbnailSize = 130,
})

-- 初始化Snow Hub的变量和功能
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Signal = require(ReplicatedStorage.devv).load("Signal")
local item = require(ReplicatedStorage.devv).load("v3item")
local b1 = item.inventory.items

-- 设置FOV
RunService.Heartbeat:Connect(function()
    workspace.CurrentCamera.FieldOfView = 120
end)

-- 初始化变量
local speed = 1
local tpEnabled = false
local autokill = false
local autostomp = false
local grabplay = false
local hitMOD = "meleepunch"
local autoatm = false
local autojia = false
local jiahit = "Light Vest"
local autolok = false
local autouse = false
local autosell = false
local autorem = false
local autocl = false
local autozb = false
local autobank = false
local bxbx = false
local lock = false
local bxgh = false
local mngh = false
local czycj = false
local autobs = false
local autohk = false
local automn = false
local autodj = false
local autojt = false
local autoqq = false
local autoblue = false
local autoluck = false
local antirea = false
local antisit = false
local selectedItem = nil
local teleportLoop = nil
local heartbeatConnection = nil
local jumpConnection = nil
local character, humanoid, humanoidRootPart
local qtid = nil

-- 初始化角色
local function setupCharacter()
    character = LocalPlayer.Character
    if character then
        humanoid = character:WaitForChild("Humanoid")
        humanoidRootPart = character:WaitForChild("HumanoidRootPart")
        humanoid.Died:Connect(function()
            repeat task.wait() until LocalPlayer.Character ~= nil
            setupCharacter()
            if tpEnabled then
                startTPWalk()
            end
        end)
    end
end

setupCharacter()
LocalPlayer.CharacterAdded:Connect(setupCharacter)

-- 速度功能
local function startTPWalk()
    if heartbeatConnection then
        heartbeatConnection:Disconnect()
    end
    heartbeatConnection = RunService.Heartbeat:Connect(function()
        if not tpEnabled or not character or not humanoid or humanoid.Health <= 0 then
            return
        end
        if humanoid.MoveDirection.Magnitude > 0 then
            local currentCFrame = character.PrimaryPart.CFrame
            local newPosition = currentCFrame.Position + (humanoid.MoveDirection * speed)
            character:SetPrimaryPartCFrame(CFrame.new(newPosition) * currentCFrame.Rotation)
        end
    end)
end

local function stopTPWalk()
    if heartbeatConnection then
        heartbeatConnection:Disconnect()
        heartbeatConnection = nil
    end
end

-- 玩家功能
Tabs.Player:Slider({
    Title = "加速设置",
    Value = { Min = 1, Max = 15, Default = 1 },
    Increment = 1,
    Callback = function(value)
        speed = value
    end
})

Tabs.Player:Toggle({
    Title = "速度开关",
    Value = false,
    Callback = function(value)
        tpEnabled = value
        if value then
            startTPWalk()
        else
            stopTPWalk()
        end
    end
})

Tabs.Player:Toggle({
    Title = "连跳",
    Value = false,
    Callback = function(value)
        if value then
            jumpConnection = game:GetService("UserInputService").JumpRequest:Connect(function()
                if humanoid and humanoid.Health > 0 then
                    humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                end
            end)
        else
            if jumpConnection then
                jumpConnection:Disconnect()
                jumpConnection = nil
            end
        end
    end
})

Tabs.Player:Button({
    Title = "透视ESP",
    Callback = function()
        local Players = game:GetService("Players")
        local RunService = game:GetService("RunService")
        local LocalPlayer = Players.LocalPlayer
        local LocalCharacter = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
        local LocalHead = LocalCharacter:WaitForChild("Head")
        local playerConnections = {}
        
        local function updateNametag(player, textLabel, head)
            local character = player.Character
            if not character then return end
            local humanoid = character:FindFirstChildOfClass("Humanoid")
            local targetHead = character:FindFirstChild("Head")
            if humanoid and targetHead and humanoid.Health > 0 then
                local distance = (LocalHead.Position - targetHead.Position).Magnitude
                textLabel.Text = string.format("%s\n血量: %d/%d\n距离: %.1fm", player.Name, math.floor(humanoid.Health), math.floor(humanoid.MaxHealth), distance)
                textLabel.Visible = true
            else
                textLabel.Visible = false
            end
        end
        
        local function createNametag(player)
            if player == LocalPlayer then return end
            playerConnections[player] = {}
            
            local function setupCharacter(character)
                local head = character:WaitForChild("Head")
                local billboard = Instance.new("BillboardGui")
                billboard.Name = "PlayerNametag"
                billboard.Adornee = head
                billboard.Size = UDim2.new(0, 200, 0, 80)
                billboard.StudsOffset = Vector3.new(0, 3, 0)
                billboard.AlwaysOnTop = true
                billboard.Parent = head
                
                local textLabel = Instance.new("TextLabel")
                textLabel.Size = UDim2.new(1, 0, 1, 0)
                textLabel.Font = Enum.Font.GothamBold
                textLabel.TextSize = 8
                textLabel.TextColor3 = Color3.new(1, 0, 0)
                textLabel.TextStrokeColor3 = Color3.new(0, 0, 0)
                textLabel.TextStrokeTransparency = 0.3
                textLabel.BackgroundTransparency = 1
                textLabel.TextYAlignment = Enum.TextYAlignment.Top
                textLabel.Parent = billboard
                
                local heartbeatConn = RunService.Heartbeat:Connect(function()
                    if not character or not character.Parent then
                        heartbeatConn:Disconnect()
                        return
                    end
                    updateNametag(player, textLabel, head)
                end)
                table.insert(playerConnections[player], heartbeatConn)
                
                local characterRemovedConn = character.AncestryChanged:Connect(function(_, parent)
                    if parent == nil then
                        billboard:Destroy()
                        heartbeatConn:Disconnect()
                        characterRemovedConn:Disconnect()
                    end
                end)
                table.insert(playerConnections[player], characterRemovedConn)
            end
            
            if player.Character then
                setupCharacter(player.Character)
            end
            
            local charAddedConn = player.CharacterAdded:Connect(setupCharacter)
            table.insert(playerConnections[player], charAddedConn)
        end
        
        Players.PlayerAdded:Connect(function(player)
            createNametag(player)
        end)
        
        for _, player in ipairs(Players:GetPlayers()) do
            if player ~= LocalPlayer then
                createNametag(player)
            end
        end
    end
})

-- 战斗功能
Tabs.Combat:Slider({
    Title = "物品栏数量",
    Value = { Min = 1, Max = 9, Default = 6 },
    Increment = 1,
    Callback = function(value)
        local sum = require(game.ReplicatedStorage.devv.client.Objects.v3item.modules.inventory)
        sum.numSlots = value
    end
})

Tabs.Combat:Dropdown({
    Title = "攻击方式",
    Options = {"超级拳", "普通拳"},
    Default = "普通拳",
    Callback = function(value)
        if value == "超级拳" then
            hitMOD = "meleemegapunch"
        elseif value == "普通拳" then
            hitMOD = "meleepunch"
        end
    end
})

Tabs.Combat:Toggle({
    Title = "杀戮光环",
    Value = false,
    Callback = function(state)
        autokill = state
    end
})

Tabs.Combat:Toggle({
    Title = "踩踏光环",
    Value = false,
    Callback = function(state)
        autostomp = state
    end
})

Tabs.Combat:Toggle({
    Title = "抓取光环",
    Value = false,
    Callback = function(state)
        grabplay = state
    end
})

Tabs.Combat:Toggle({
    Title = "反布娃娃状态[防止僵直]",
    Value = false,
    Callback = function(state)
        antirea = state
        if antirea then
            while antirea and task.wait() do
                Signal.FireServer("setRagdoll", false)
            end
        end
    end
})

Tabs.Combat:Toggle({
    Title = "反坐下状态",
    Value = false,
    Callback = function(state)
        antisit = state
        if antisit then
            while antisit and task.wait() do
                local humanoid = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid")
                if humanoid then
                    humanoid.Sit = false
                end
            end
        end
    end
})

Tabs.Combat:Dropdown({
    Title = "选择护甲",
    Options = {"轻型护甲100", "重型护甲2000", "军用护甲3500", "EOD护甲7500"},
    Default = "轻型护甲100",
    Callback = function(value)
        if value == "轻型护甲100" then
            jiahit = "Light Vest"
        elseif value == "重型护甲2000" then
            jiahit = "Heavy Vest"
        elseif value == "军用护甲3500" then
            jiahit = "Military Vest"
        elseif value == "EOD护甲7500" then
            jiahit = "EOD Vest"
        end
    end
})

Tabs.Combat:Toggle({
    Title = "自动穿甲",
    Value = false,
    Callback = function(state)
        autojia = state
    end
})

Tabs.Combat:Toggle({
    Title = "自动回血",
    Value = false,
    Callback = function(state)
        autolok = state
    end
})

-- 魔法功能
Tabs.Magic:Button({
    Title = "购买RPG武器",
    Callback = function()
        Signal.InvokeServer("attemptPurchase", "RPG")
    end
})

Tabs.Magic:Button({
    Title = "购买RPG子弹",
    Callback = function()
        Signal.InvokeServer("attemptPurchaseAmmo", "RPG")
    end
})

Tabs.Magic:Toggle({
    Title = "RPG全图轰炸",
    Value = false,
    Callback = function(state)
        if state then
            local ReplicatedStorage = game:GetService("ReplicatedStorage")
            local Players = game:GetService("Players")
            local localPlayer = Players.LocalPlayer
            
            local function findRemoteEvent(eventName)
                for _, v in next, getgc(false) do
                    if typeof(v) == "function" then
                        local source = debug.info(v, "s")
                        local name = debug.info(v, "n")
                        if source and source:find("Signal") and name == "FireServer" then
                            local success, upvalue = pcall(getupvalue, v, 1)
                            if success and upvalue and typeof(upvalue) == "table" then
                                for k, remote in pairs(upvalue) do
                                    if k == eventName then
                                        return typeof(remote) == "string" and ReplicatedStorage.devv.remoteStorage[remote] or remote
                                    end
                                end
                            end
                            break
                        end
                    end
                end
                return nil
            end
            
            local rocketHit = ReplicatedStorage.devv.remoteStorage:FindFirstChild("rocketHit") or findRemoteEvent("rocketHit")
            local lastArgs = nil
            local isListening = false
            
            local function shouldIgnorePlayer(player)
                if player == localPlayer then return true end
                if player.Name == "PolarDream8" then return true end
                if player.Name == "X7Sdaydream_XD" then return true end
                local success, isFriend = pcall(function()
                    return localPlayer:IsFriendsWith(player.UserId)
                end)
                if success and isFriend then return true end
                return false
            end
            
            local originalNamecall
            originalNamecall = hookmetamethod(game, "__namecall", function(self, ...)
                local args = {...}
                local method = getnamecallmethod()
                if self == rocketHit and method == "FireServer" then
                    if not lastArgs then
                        lastArgs = args
                        isListening = true
                        coroutine.wrap(function()
                            while isListening and lastArgs do
                                local otherPlayersPositions = {}
                                for _, player in ipairs(Players:GetPlayers()) do
                                    if not shouldIgnorePlayer(player) and player.Character then
                                        local rootPart = player.Character:FindFirstChild("HumanoidRootPart")
                                        if rootPart then
                                            table.insert(otherPlayersPositions, rootPart.Position)
                                        end
                                    end
                                end
                                if #otherPlayersPositions > 0 then
                                    local randomIndex = math.random(1, #otherPlayersPositions)
                                    local modifiedArgs = {lastArgs[1], lastArgs[2], otherPlayersPositions[randomIndex]}
                                    rocketHit:FireServer(unpack(modifiedArgs))
                                end
                                task.wait()
                            end
                        end)()
                    end
                end
                return originalNamecall(self, ...)
            end)
        end
    end
})

-- 购买功能
local dropdown = Tabs.Shop:Dropdown({
    Title = "选择物品",
    Options = {},
    Default = nil,
    Callback = function(value)
        selectedItem = value
    end
})

-- 更新物品列表
local itemsOnSale = workspace:FindFirstChild("ItemsOnSale")
if itemsOnSale then
    local itemNames = {}
    local seenNames = {}
    for _, item in ipairs(itemsOnSale:GetChildren()) do
        if not seenNames[item.Name] then
            table.insert(itemNames, item.Name)
            seenNames[item.Name] = true
        end
    end
    dropdown:SetOptions(itemNames)
end

Tabs.Shop:Button({
    Title = "购买物品",
    Callback = function()
        if selectedItem then
            Signal.InvokeServer("attemptPurchase", selectedItem)
        end
    end
})

Tabs.Shop:Button({
    Title = "购买子弹",
    Callback = function()
        if selectedItem then
            Signal.InvokeServer("attemptPurchaseAmmo", selectedItem)
        end
    end
})

-- 附属功能
Tabs.Auxiliary:Toggle({
    Title = "自动使用物品",
    Value = false,
    Callback = function(state)
        autouse = state
    end
})

Tabs.Auxiliary:Toggle({
    Title = "自动出售物品",
    Value = false,
    Callback = function(state)
        autosell = state
    end
})

Tabs.Auxiliary:Toggle({
    Title = "自动移除物品",
    Value = false,
    Callback = function(state)
        autorem = state
    end
})

Tabs.Auxiliary:Toggle({
    Title = "自动清理垃圾",
    Value = false,
    Callback = function(state)
        autocl = state
    end
})

Tabs.Auxiliary:Toggle({
    Title = "自动装备",
    Value = false,
    Callback = function(state)
        autozb = state
    end
})

Tabs.Auxiliary:Toggle({
    Title = "自动存钱",
    Value = false,
    Callback = function(state)
        autobank = state
    end
})

-- 自动功能
Tabs.Auto:Toggle({
    Title = "自动宝箱",
    Value = false,
    Callback = function(state)
        bxbx = state
    end
})

Tabs.Auto:Toggle({
    Title = "自动锁头",
    Value = false,
    Callback = function(state)
        lock = state
    end
})

Tabs.Auto:Toggle({
    Title = "自动宝箱光环",
    Value = false,
    Callback = function(state)
        bxgh = state
    end
})

Tabs.Auto:Toggle({
    Title = "自动ATM",
    Value = false,
    Callback = function(state)
        autoatm = state
    end
})

Tabs.Auto:Toggle({
    Title = "自动抢劫",
    Value = false,
    Callback = function(state)
        autobs = state
    end
})

Tabs.Auto:Toggle({
    Title = "自动黑客",
    Value = false,
    Callback = function(state)
        autohk = state
    end
})

Tabs.Auto:Toggle({
    Title = "自动矿机",
    Value = false,
    Callback = function(state)
        automn = state
    end
})

Tabs.Auto:Toggle({
    Title = "自动打劫",
    Value = false,
    Callback = function(state)
        autodj = state
    end
})

Tabs.Auto:Toggle({
    Title = "自动抢劫",
    Value = false,
    Callback = function(state)
        autojt = state
    end
})

Tabs.Auto:Toggle({
    Title = "自动抢钱",
    Value = false,
    Callback = function(state)
        autoqq = state
    end
})

Tabs.Auto:Toggle({
    Title = "自动蓝卡",
    Value = false,
    Callback = function(state)
        autoblue = state
    end
})

Tabs.Auto:Toggle({
    Title = "自动幸运",
    Value = false,
    Callback = function(state)
        autoluck = state
    end
})

-- 收集功能
Tabs.Collect:Toggle({
    Title = "自动收集",
    Value = false,
    Callback = function(state)
        czycj = state
    end
})

-- RPG轰炸功能
Tabs.RPG:Toggle({
    Title = "RPG轰炸",
    Value = false,
    Callback = function(state)
        if state then
            local ReplicatedStorage = game:GetService("ReplicatedStorage")
            local Players = game:GetService("Players")
            local localPlayer = Players.LocalPlayer
            
            local function findRemoteEvent(eventName)
                for _, v in next, getgc(false) do
                    if typeof(v) == "function" then
                        local source = debug.info(v, "s")
                        local name = debug.info(v, "n")
                        if source and source:find("Signal") and name == "FireServer" then
                            local success, upvalue = pcall(getupvalue, v, 1)
                            if success and upvalue and typeof(upvalue) == "table" then
                                for k, remote in pairs(upvalue) do
                                    if k == eventName then
                                        return typeof(remote) == "string" and ReplicatedStorage.devv.remoteStorage[remote] or remote
                                    end
                                end
                            end
                            break
                        end
                    end
                end
                return nil
            end
            
            local rocketHit = ReplicatedStorage.devv.remoteStorage:FindFirstChild("rocketHit") or findRemoteEvent("rocketHit")
            local lastArgs = nil
            local isListening = false
            
            local function shouldIgnorePlayer(player)
                if player == localPlayer then return true end
                if player.Name == "PolarDream8" then return true end
                if player.Name == "X7Sdaydream_XD" then return true end
                local success, isFriend = pcall(function()
                    return localPlayer:IsFriendsWith(player.UserId)
                end)
                if success and isFriend then return true end
                return false
            end
            
            local originalNamecall
            originalNamecall = hookmetamethod(game, "__namecall", function(self, ...)
                local args = {...}
                local method = getnamecallmethod()
                if self == rocketHit and method == "FireServer" then
                    if not lastArgs then
                        lastArgs = args
                        isListening = true
                        coroutine.wrap(function()
                            while isListening and lastArgs do
                                local otherPlayersPositions = {}
                                for _, player in ipairs(Players:GetPlayers()) do
                                    if not shouldIgnorePlayer(player) and player.Character then
                                        local rootPart = player.Character:FindFirstChild("HumanoidRootPart")
                                        if rootPart then
                                            table.insert(otherPlayersPositions, rootPart.Position)
                                        end
                                    end
                                end
                                if #otherPlayersPositions > 0 then
                                    local randomIndex = math.random(1, #otherPlayersPositions)
                                    local modifiedArgs = {lastArgs[1], lastArgs[2], otherPlayersPositions[randomIndex]}
                                    rocketHit:FireServer(unpack(modifiedArgs))
                                end
                                task.wait()
                            end
                        end)()
                    end
                end
                return originalNamecall(self, ...)
            end)
        end
    end
})

-- 封禁信息功能
Tabs.BanInfo:Paragraph({
    Title = "封禁信息",
    Desc = "当前无封禁信息",
    Image = "https://c-ssl.duitang.com/uploads/blog/202310/21/oVS4gnBVIg4A1yJ.jpg",
    ImageSize = 50,
    Thumbnail = "https://c-ssl.duitang.com/uploads/blog/202103/27/20210327131203_74b6b.jpg",
    ThumbnailSize = 130,
})

-- 自动功能循环
task.spawn(function()
    while task.wait() do
        -- 自动穿甲
        if autojia then
            local item = require(ReplicatedStorage.devv).load("v3item")
            local inventory = item.inventory
            local v3item = require(ReplicatedStorage.devv).load("v3item")
            local items = v3item.inventory.items
            for i, v in pairs(items) do
                if v and v.name == jiahit then
                    Signal.FireServer("equipItem", i)
                    break
                end
            end
        end
        
        -- 自动回血
        if autolok then
            local character = LocalPlayer.Character
            if character then
                local humanoid = character:FindFirstChild("Humanoid")
                if humanoid and humanoid.Health < humanoid.MaxHealth then
                    Signal.FireServer("useMedkit")
                end
            end
        end
        
        -- 自动使用物品
        if autouse then
            local v3item = require(ReplicatedStorage.devv).load("v3item")
            local items = v3item.inventory.items
            for i, v in pairs(items) do
                if v and (v.name == "Medkit" or v.name == "Bandage") then
                    Signal.FireServer("useItem", i)
                    break
                end
            end
        end
        
        -- 自动出售物品
        if autosell then
            local v3item = require(ReplicatedStorage.devv).load("v3item")
            local items = v3item.inventory.items
            for i, v in pairs(items) do
                if v and (v.name == "Scrap Metal" or v.name == "Plastic" or v.name == "Glass" or v.name == "Rubber") then
                    Signal.FireServer("sellItem", i)
                end
            end
        end
        
        -- 自动移除物品
        if autorem then
            local v3item = require(ReplicatedStorage.devv).load("v3item")
            local items = v3item.inventory.items
            for i, v in pairs(items) do
                if v and (v.name == "Scrap Metal" or v.name == "Plastic" or v.name == "Glass" or v.name == "Rubber") then
                    Signal.FireServer("dropItem", i)
                end
            end
        end
        
        -- 自动清理垃圾
        if autocl then
            local v3item = require(ReplicatedStorage.devv).load("v3item")
            local items = v3item.inventory.items
            for i, v in pairs(items) do
                if v and (v.name == "Scrap Metal" or v.name == "Plastic" or v.name == "Glass" or v.name == "Rubber") then
                    Signal.FireServer("dropItem", i)
                end
            end
        end
        
        -- 自动装备
        if autozb then
            local v3item = require(ReplicatedStorage.devv).load("v3item")
            local items = v3item.inventory.items
            for i, v in pairs(items) do
                if v and (v.name == "Pistol" or v.name == "Rifle" or v.name == "Shotgun" or v.name == "SMG") then
                    Signal.FireServer("equipItem", i)
                    break
                end
            end
        end
        
        -- 自动存钱
        if autobank then
            local playerData = require(ReplicatedStorage.devv).load("playerData")
            local cash = playerData.cash
            if cash > 0 then
                Signal.FireServer("depositCash", cash)
            end
        end
        
        -- 自动宝箱
        if bxbx then
            for _, v in pairs(workspace:GetChildren()) do
                if v.Name == "Chest" and v:FindFirstChild("Main") then
                    local distance = (humanoidRootPart.Position - v.Main.Position).Magnitude
                    if distance < 10 then
                        Signal.FireServer("openChest", v)
                    end
                end
            end
        end
        
        -- 自动锁头
        if lock then
            local closestPlayer = nil
            local closestDistance = math.huge
            for _, player in ipairs(Players:GetPlayers()) do
                if player ~= LocalPlayer and player.Character then
                    local humanoid = player.Character:FindFirstChild("Humanoid")
                    local rootPart = player.Character:FindFirstChild("HumanoidRootPart")
                    if humanoid and humanoid.Health > 0 and rootPart then
                        local distance = (humanoidRootPart.Position - rootPart.Position).Magnitude
                        if distance < closestDistance then
                            closestDistance = distance
                            closestPlayer = player
                        end
                    end
                end
            end
            if closestPlayer then
                local rootPart = closestPlayer.Character:FindFirstChild("HumanoidRootPart")
                if rootPart then
                    humanoidRootPart.CFrame = CFrame.new(humanoidRootPart.Position, rootPart.Position)
                end
            end
        end
        
        -- 自动宝箱光环
        if bxgh then
            for _, v in pairs(workspace:GetChildren()) do
                if v.Name == "Chest" and v:FindFirstChild("Main") then
                    local distance = (humanoidRootPart.Position - v.Main.Position).Magnitude
                    if distance < 50 then
                        humanoidRootPart.CFrame = v.Main.CFrame
                        task.wait(0.5)
                        Signal.FireServer("openChest", v)
                    end
                end
            end
        end
        
        -- 自动ATM
        if autoatm then
            for _, v in pairs(workspace:GetChildren()) do
                if v.Name == "ATM" and v:FindFirstChild("Main") then
                    local distance = (humanoidRootPart.Position - v.Main.Position).Magnitude
                    if distance < 10 then
                        Signal.FireServer("useATM", v)
                    end
                end
            end
        end
        
        -- 自动收集
        if czycj then
            for _, v in pairs(workspace:GetChildren()) do
                if v:IsA("BasePart") and (v.Name == "Scrap Metal" or v.Name == "Plastic" or v.Name == "Glass" or v.Name == "Rubber") then
                    local distance = (humanoidRootPart.Position - v.Position).Magnitude
                    if distance < 10 then
                        humanoidRootPart.CFrame = v.CFrame
                        task.wait(0.5)
                        Signal.FireServer("pickupItem", v)
                    end
                end
            end
        end
    end
end)

-- 战斗光环循环
task.spawn(function()
    while task.wait() do
        if autokill then
            for _, player in ipairs(Players:GetPlayers()) do
                if player ~= LocalPlayer and player.Character then
                    local humanoid = player.Character:FindFirstChild("Humanoid")
                    local rootPart = player.Character:FindFirstChild("HumanoidRootPart")
                    if humanoid and humanoid.Health > 0 and rootPart then
                        local distance = (humanoidRootPart.Position - rootPart.Position).Magnitude
                        if distance < 10 then
                            Signal.FireServer("hitPlayer", player, hitMOD)
                        end
                    end
                end
            end
        end
        
        if autostomp then
            for _, player in ipairs(Players:GetPlayers()) do
                if player ~= LocalPlayer and player.Character then
                    local humanoid = player.Character:FindFirstChild("Humanoid")
                    local rootPart = player.Character:FindFirstChild("HumanoidRootPart")
                    if humanoid and humanoid.Health > 0 and rootPart then
                        local distance = (humanoidRootPart.Position - rootPart.Position).Magnitude
                        if distance < 10 then
                            Signal.FireServer("stompPlayer", player)
                        end
                    end
                end
            end
        end
        
        if grabplay then
            for _, player in ipairs(Players:GetPlayers()) do
                if player ~= LocalPlayer and player.Character then
                    local humanoid = player.Character:FindFirstChild("Humanoid")
                    local rootPart = player.Character:FindFirstChild("HumanoidRootPart")
                    if humanoid and humanoid.Health > 0 and rootPart then
                        local distance = (humanoidRootPart.Position - rootPart.Position).Magnitude
                        if distance < 10 then
                            Signal.FireServer("grabPlayer", player)
                        end
                    end
                end
            end
        end
    end
end)

-- 通知
Window:Notify({
    Title = "Snow Hub",
    Content = "已成功适配到LS_Hub UI框架",
    Duration = 5,
    Buttons = {
        {
            Title = "确定",
            Callback = function()
                print("用户确认通知")
            end
        }
    }
})