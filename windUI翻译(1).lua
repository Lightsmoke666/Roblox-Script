local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()

-- Test
--窗口图片app-window-mac


-- Set theme:
--WindUI:SetTheme("Light")

function gradient(text, startColor, endColor)
    local result = ""
    local length = #text

    for i = 1, length do
        local t = (i - 1) / math.max(length - 1, 1)
        local r = math.floor((startColor.R + (endColor.R - startColor.R) * t) * 255)
        local g = math.floor((startColor.G + (endColor.G - startColor.G) * t) * 255)
        local b = math.floor((startColor.B + (endColor.B - startColor.B) * t) * 255)

        local char = text:sub(i, i)
        result = result .. "<font color=\"rgb(" .. r ..", " .. g .. ", " .. b .. ")\">" .. char .. "</font>"
    end

    return result
end

local Confirmed = false

WindUI:Popup({
    Title = "脚本",
    IconThemed =true,
    Content = "脚本" .. gradient("WindUI", Color3.fromHex("#00FF87"), Color3.fromHex("#60EFFF")) .. "",
    Buttons = {
        {
            Title = "退出",
            Callback = function() end,
            Variant = "Secondary", -- Primary, Secondary, Tertiary
        },
        {
            Title = "进入",
            Icon = "arrow-right",
            Callback = function() Confirmed = true end,
            Variant = "Primary", -- Primary, Secondary, Tertiary
        }
    }
})


repeat wait() until Confirmed

--

local Window = WindUI:CreateWindow({
    Title = "集合",
    Icon = "rbxassetid://129260712070622",
    IconThemed = true,
    Author = "更便捷",
    Folder = "CloudHub",
    Size = UDim2.fromOffset(200, 460),
    Transparent = true,
    Theme = "Dark",
    User = {
        Enabled = true, -- <- or false
        Callback = function() print("clicked") end, -- <- optional
        Anonymous = true -- <- or true
    },
    SideBarWidth = 200,
    -- HideSearchBar = true, -- hides searchbar
    ScrollBarEnabled = true, -- enables scrollbar
    -- Background = "rbxassetid://13511292247", -- rbxassetid only

    -- remove it below if you don't want to use the key system in your script.
    KeySystem = { -- <- keysystem enabled
        Key = { "1234", "5678" },
        Note = "Example Key System. \n\nThe Key is '1234' or '5678",
        -- Thumbnail = {
        --     Image = "rbxassetid://18220445082", -- rbxassetid only
        --     Title = "Thumbnail"
        -- },
        URL = "link-to-linkvertise-or-discord-or-idk", -- remove this if the key is not obtained from the link.
        SaveKey = true, -- saves key : optional
    },
})


-- Window:SetBackgroundImage("rbxassetid://13511292247")
-- Window:SetBackgroundImageTransparency(0.9)


-- TopBar Edit

-- Disable Topbar Buttons
-- Window:DisableTopbarButtons({
--     "Close", 
--     "Minimize", 
--     "Fullscreen",
-- })

-- Create Custom Topbar Buttons
--                        ↓ Name             ↓ Icon          ↓ Callback                           ↓ LayoutOrder

Window:EditOpenButton({
    Title = "示例",
    Icon = "monitor",
    CornerRadius = UDim.new(0,16),
    StrokeThickness = 2,
    Color = ColorSequence.new( -- gradient
        Color3.fromHex("FF0F7B"), 
        Color3.fromHex("F89B29")
    ),
    --Enabled = false,
    Draggable = true,
})


local Tabs = {}

do
    Tabs.ElementsSection = Window:Section({
        Title = "脚本",
        Opened = true,
    })
    
    Tabs.WindowSection = Window:Section({
        Title = "窗口管理",
        Icon = "app-window-mac",
        Opened = true,
    })
    
    Tabs.OtherSection = Window:Section({
        Title = "其它",
        Opened = true,
    })

    
    Tabs.ParagraphTab = Tabs.ElementsSection:Tab({ Title = "图片", Icon = "type" })
    Tabs.ButtonTab = Tabs.ElementsSection:Tab({ Title = "按钮", Icon = "mouse-pointer-2", Desc = "Contains interactive buttons for various actions." })
    Tabs.CodeTab = Tabs.ElementsSection:Tab({ Title = "代码", Icon = "code", Desc = "Displays and manages code snippets." })
    Tabs.ColorPickerTab = Tabs.ElementsSection:Tab({ Title = "颜色选择器", Icon = "paintbrush", Desc = "Choose and customize colors easily." })
    Tabs.DialogTab = Tabs.ElementsSection:Tab({ Title = "对话", Icon = "message-square", Desc = "Dialog lol" })
    Tabs.NotificationTab = Tabs.ElementsSection:Tab({ Title = "通知", Icon = "bell", Desc = "Configure and view notifications." })
    Tabs.ToggleTab = Tabs.ElementsSection:Tab({ Title = "切换", Icon = "toggle-left", Desc = "Switch settings on and off." })
    Tabs.SliderTab = Tabs.ElementsSection:Tab({ Title = "滑 块", Icon = "sliders-horizontal", Desc = "Adjust values smoothly with sliders." })
    Tabs.InputTab = Tabs.ElementsSection:Tab({ Title = "输入", Icon = "keyboard", Desc = "Accept text and numerical input." })
    Tabs.KeybindTab = Tabs.ElementsSection:Tab({ Title = "按键绑定", Icon = "keyboard-off" })
    Tabs.DropdownTab = Tabs.ElementsSection:Tab({ Title = "落下菜单", Icon = "chevrons-up-down", Desc = "Select from multiple options." })
    
    Tabs.WindowTab = Tabs.WindowSection:Tab({ 
        Title = "窗口和文件配置", 
        Icon = "settings", 
        Desc = "管理窗口设置和文件配置。", 
        ShowTabTitle = true 
    })
    Tabs.CreateThemeTab = Tabs.WindowSection:Tab({ Title = "创建主题", Icon = "palette", Desc = "设计和应用自定义主题。" })
    
    Tabs.LongTab = Tabs.OtherSection:Tab({ 
        Title = "长而空的选项卡。带有自定义图标", 
        Icon = "rbxassetid://129260712070622", 
        IconThemed = true, 
        Desc = "详细描述" 
    })
    Tabs.LockedTab = Tabs.OtherSection:Tab({ Title = "锁定选项卡", Icon = "lock", Desc = "此选项卡已锁定", Locked = true })
    Tabs.TabWithoutIcon = Tabs.OtherSection:Tab({ Title = "无图标选项卡", ShowTabTitle = true })
    Tabs.Tests = Tabs.OtherSection:Tab({ Title = "测试", Icon = "https://raw.githubusercontent.com/Footagesus/WindUI/main/docs/ui.png", ShowTabTitle = true })
    
    
    Tabs.LastSection = Window:Section({
        Title = "没有制表符的部分",
        --Opened = true,
    })
    
    Tabs.ConfigTab = Window:Tab({ Title = "配置", Icon = "file-cog" })
end



Window:SelectTab(1)

Tabs.ParagraphTab:Paragraph({
    Title = "带有图像和拇指的段落",
    Desc = "Test Paragraph",
    Image = "https://play-lh.googleusercontent.com/7cIIPlWm4m7AGqVpEsIfyL-HW4cQla4ucXnfalMft1TMIYQIlf2vqgmthlZgbNAQoaQ",
    ImageSize = 42, -- default 30
    Thumbnail = "https://tr.rbxcdn.com/180DAY-59af3523ad8898216dbe1043788837bf/768/432/Image/Webp/noFilter",
    ThumbnailSize = 120 -- Thumbnail height
})
Tabs.ParagraphTab:Paragraph({
    Title = "带有图像、缩略图和按钮的段落",
    Desc = "Test Paragraph",
    Image = "https://play-lh.googleusercontent.com/7cIIPlWm4m7AGqVpEsIfyL-HW4cQla4ucXnfalMft1TMIYQIlf2vqgmthlZgbNAQoaQ",
    ImageSize = 42, -- default 30
    Thumbnail = "https://tr.rbxcdn.com/180DAY-59af3523ad8898216dbe1043788837bf/768/432/Image/Webp/noFilter",
    ThumbnailSize = 120, -- Thumbnail height
    Buttons = {
        {
            Title = "按钮1",
            Variant = "Primary",
            Callback = function() print("1 Button") end,
            Icon = "bird",
        },
        {
            Title = "按钮2",
            Variant = "Primary",
            Callback = function() print("2 Button") end,
            Icon = "bird",
        },
        {
            Title = "按钮3",
            Variant = "Primary",
            Callback = function() print("3 Button") end,
            Icon = "bird",
        },
    }
})

Tabs.ParagraphTab:Divider()

for _,i in next, { "Default", "Red", "Orange", "Green", "Blue", "Grey", "White" } do
    Tabs.ParagraphTab:Paragraph({
        Title = i,
        Desc = "Paragraph with color",
        Image = "bird",
        Color = i ~= "Default" and i or nil,
        Buttons = {
            {
                Title = "按钮1",
                Variant = "Primary",
                Callback = function() print("1 Button") end,
                Icon = "bird",
            },
            {
                Title = "按钮2",
                Variant = "Primary",
                Callback = function() print("2 Button") end,
                Icon = "bird",
            },
            {
                Title = "按钮3",
                Variant = "Primary",
                Callback = function() print("3 Button") end,
                Icon = "bird",
            },
        }
    })
end



Tabs.ButtonTab:Button({
    Title = "点击我",
    Desc = "这是一个简单的按钮",
    Callback = function() print("Button Clicked!") end
})


local destroybtn
destroybtn = Tabs.ButtonTab:Button({
    Title = "点击销毁我!",
    Callback = function() destroybtn:Destroy() end,
})

Tabs.ButtonTab:Button({
    Title = "提交",
    Desc = "点击提交",
    Callback = function() print("Submitted!") end,
})

Tabs.ButtonTab:Button({
    Title = "设置切换键为'F'",
    Callback = function() Window:SetToggleKey(Enum.KeyCode.F) end,
})

Tabs.ButtonTab:Divider()


Tabs.ButtonTab:Button({
    Title = "锁定按钮",
    Desc = "此按钮已锁定",
    Locked = true,
})


Tabs.CodeTab:Code({
    Title = "示例代码.luau",
    Code = [[-- Example Luau code to test syntax highlighting
local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")

local function factorial(n)
    if n <= 1 then
        return 1
    else
        return n * factorial(n - 1)
    end
end

local result = factorial(5)
print("Factorial of 5 is:", result)

local playerName = "Player"
local score = 100

if score >= 100 then
    print(playerName .. " earned an achievement!")
else
    warn("Need more points.")
end

-- Table with nested values
local playerStats = {
    name = "Player",
    health = 100,
    inventory = {"sword", "shield", "potion"}
}

for i, item in ipairs(playerStats.inventory) do
    print("Item in inventory:", item)
end]],
})

Tabs.CodeTab:Code({
    Code = [[print("WindUI on top!")]],
})



Tabs.ColorPickerTab:Colorpicker({
    Title = "选择颜色",
    Default = Color3.fromRGB(255, 0, 0),
    Callback = function(color) print("Selected color: " .. tostring(color)) end
})

Tabs.ColorPickerTab:Colorpicker({
    Title = "透明颜色",
    Default = Color3.fromRGB(0, 0, 255),
    Transparency = 0,
    Callback = function(color) print("Background color: " .. tostring(color)) end
})


Tabs.DialogTab:Button({
    Title = "创建示例对话框",
    Callback = function()
        Window:Dialog({
            Title = "示例对话框",
            Content = "Example Content. lalala",
            Icon = "bird",
            Buttons = {
                {
                    Title = "哈哈!",
                    Icon = "bird",
                    Variant = "Tertiary",
                    Callback = function()
                        print("lol")
                    end,
                },
                {
                    Title = "酷!",
                    Icon = "bird",
                    Variant = "Tertiary",
                    Callback = function()
                        print("Cool")
                    end,
                },
                {
                    Title = "好的!",
                    Icon = "bird",
                    Variant = "Secondary",
                    Callback = function()
                        print("Ok")
                    end,
                },
                {
                    Title = "太棒了!",
                    Icon = "bird",
                    Variant = "Primary",
                    Callback = function() 
                        print("Awesome")
                    end,
                }
            }
        })
    end,
})

Tabs.DialogTab:Button({
    Title = "创建示例对话框2",
    Callback = function()
        Window:Dialog({
            Title = "示例对话框2",
            Content = "Example Content. lalala",
            Icon = "rbxassetid://129260712070622",
            Buttons = {
                {
                    Title = "好的!",
                    Variant = "Primary",
                    Callback = function()
                        print("ok")
                    end,
                },
            }
        })
    end,
})


Tabs.NotificationTab:Button({
    Title = "点击获取通知",
    Callback = function() 
        WindUI:Notify({
            Title = "通知示例1",
            Content = "Content",
            Duration = 5,
        })
    end
})

Tabs.NotificationTab:Button({
    Title = "带图标的通知",
    Callback = function() 
        WindUI:Notify({
            Title = "通知示例2",
            Content = "Content",
            Icon = "droplet-off",
            Duration = 5,
        })
    end
})

Tabs.NotificationTab:Button({
    Title = "带自定义图标的通知",
    Callback = function() 
        WindUI:Notify({
            Title = "通知示例2",
            Content = "Content",
            Icon = "rbxassetid://129260712070622",
            IconThemed = true, -- automatic color icon to theme 
            Duration = 5,
        })
    end
})

Tabs.NotificationTab:Button({
    Title = "带背景图片的通知",
    Callback = function() 
        WindUI:Notify({
            Title = "通知示例3",
            Content = "with BackgroundImage",
            Icon = "image",
            Duration = 5,
            Background = "rbxassetid://13511292247"
        })
    end
})


Tabs.ToggleTab:Toggle({
    Title = "启用功能",
    --Image = "bird",
    Value = true,
    Callback = function(state) print("Feature enabled: " .. tostring(state)) end
})

Tabs.ToggleTab:Toggle({
    Title = "激活模式",
    Value = false,
    Callback = function(state) print("Mode activated: " .. tostring(state)) end
})
Tabs.ToggleTab:Toggle({
    Title = "带图标的切换",
    Icon = "check",
    Value = false,
    Callback = function(state) print("Toggle with icon activated: " .. tostring(state)) end
})

Tabs.ToggleTab:Toggle({
    Title = "新切换类型'复选框'",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) print("'Checkbox' Toggle activated: " .. tostring(state)) end
})
Tabs.ToggleTab:Toggle({
    Title = "带自定义图标的新切换类型'复选框'",
    Icon = "bird",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) print("'Checkbox' Toggle with icon activated: " .. tostring(state)) end
})


Tabs.SliderTab:Slider({
    Title = "音量滑块",
    Value = {
        Min = 0,
        Max = 100,
        Default = 50,
    },
    Callback = function(value) print("Volume set to: " .. value) end
})

Tabs.SliderTab:Slider({
    Title = "亮度滑块",
    Value = {
        Min = 1,
        Max = 100,
        Default = 75,
    },
    Callback = function(value) print("Brightness set to: " .. value) end
})

Tabs.SliderTab:Slider({
    Title = "浮点滑块",
    Step = 0.1,
    Value = {
        Min = 0,
        Max = 2.5,
        Default = 1.5,
    },
    Callback = function(value) print("Brightness set to: " .. value) end
})


Tabs.InputTab:Input({
    Title = "用户名",
    Value = "Guest",
    Placeholder = "Enter your username",
    Callback = function(input) print("Username: " .. input) end
})

Tabs.InputTab:Input({
    Title = "密码",
    Value = "",
    Placeholder = "Enter your password",
    Callback = function(input) print("Password entered.") end
})


Tabs.InputTab:Input({
    Title = "带图标的输入",
    Value = "示例",
    InputIcon = "bird",
    Placeholder = "Enter example",
    Callback = function(input) print("Example entered.") end
})


Tabs.InputTab:Input({
    Title = "评论",
    Value = "",
    Type = "Textarea", -- or Input
    Placeholder = "Leave a comment",
    Callback = function(input) 
        print("Comment entered: " .. input)
    end
})

Tabs.InputTab:Input({
    Title = "带图标的评论",
    Desc = "嗯...",
    Value = "示例",
    InputIcon = "bird",
    Type = "Textarea", -- or Input
    Placeholder = "Leave an example",
    Callback = function(input) 
        print("Example entered: " .. input)
    end
})


Tabs.KeybindTab:Keybind({
    Title = "按键绑定示例",
    Desc = "打开UI的按键绑定",
    Value = "G",
    Callback = function(v)
        Window:SetToggleKey(Enum.KeyCode[v])
    end
})

Tabs.DropdownTab:Dropdown({
    Title = "选择一个选项",
    Values = { "Option 1", "Option 2", "Option 3" },
    Value = "Option 1",
    Callback = function(option) print("Selected: " .. option) end
})

Tabs.DropdownTab:Dropdown({
    Title = "选择一个类别(多选)",
    Values = { "Category A", "Category B", "Category C" },
    Value = { "Category A" },
    Multi = true,
    AllowNone = true,
    Callback = function(option) 
        print("Categories selected: " .. game:GetService("HttpService"):JSONEncode(option)) 
    end
})
Tabs.DropdownTab:Dropdown({
    Title = "大下拉菜单",
    Values = { "非常长的标签", 
               "Hi",
               "Hi",
               "Hi",
               "Hi",
               "Hi",
               "Hi",
               "Hi",
               "Hi",
               "Hi",
             },
    --Value = { "" },
    Multi = true,
    AllowNone = true,
    Callback = function(option) 
        print("Example selected: " .. game:GetService("HttpService"):JSONEncode(option)) 
    end
})



-- Configuration
-- Optional


local HttpService = game:GetService("HttpService")

local folderPath = "WindUI"
makefolder(folderPath)

local function SaveFile(fileName, data)
    local filePath = folderPath .. "/" .. fileName .. ".json"
    local jsonData = HttpService:JSONEncode(data)
    writefile(filePath, jsonData)
end

local function LoadFile(fileName)
    local filePath = folderPath .. "/" .. fileName .. ".json"
    if isfile(filePath) then
        local jsonData = readfile(filePath)
        return HttpService:JSONDecode(jsonData)
    end
end

local function ListFiles()
    local files = {}
    for _, file in ipairs(listfiles(folderPath)) do
        local fileName = file:match("([^/]+)%.json$")
        if fileName then
            table.insert(files, fileName)
        end
    end
    return files
end

Tabs.WindowTab:Section({ Title = "窗口", Icon = "app-window-mac" })

local themeValues = {}
for name, _ in pairs(WindUI:GetThemes()) do
    table.insert(themeValues, name)
end

local themeDropdown = Tabs.WindowTab:Dropdown({
    Title = "选择主题",
    Multi = false,
    AllowNone = false,
    Value = nil,
    Values = themeValues,
    Callback = function(theme)
        WindUI:SetTheme(theme)
    end
})
themeDropdown:Select(WindUI:GetCurrentTheme())

local ToggleTransparency = Tabs.WindowTab:Toggle({
    Title = "切换窗口透明度",
    Callback = function(e)
        Window:ToggleTransparency(e)
    end,
    Value = WindUI:GetTransparency()
})

Tabs.WindowTab:Section({ Title = "保存" })

local fileNameInput = ""
Tabs.WindowTab:Input({
    Title = "写入文件名",
    PlaceholderText = "Enter file name",
    Callback = function(text)
        fileNameInput = text
    end
})

Tabs.WindowTab:Button({
    Title = "保存文件",
    Callback = function()
        if fileNameInput ~= "" then
            SaveFile(fileNameInput, { Transparent = WindUI:GetTransparency(), Theme = WindUI:GetCurrentTheme() })
        end
    end
})

Tabs.WindowTab:Section({ Title = "加载" })

local filesDropdown
local files = ListFiles()

filesDropdown = Tabs.WindowTab:Dropdown({
    Title = "选择文件",
    Multi = false,
    AllowNone = true,
    Values = files,
    Callback = function(selectedFile)
        fileNameInput = selectedFile
    end
})

Tabs.WindowTab:Button({
    Title = "加载文件",
    Callback = function()
        if fileNameInput ~= "" then
            local data = LoadFile(fileNameInput)
            if data then
                WindUI:Notify({
                    Title = "文件已加载",
                    Content = "Loaded data: " .. HttpService:JSONEncode(data),
                    Duration = 5,
                })
                if data.Transparent then 
                    Window:ToggleTransparency(data.Transparent)
                    ToggleTransparency:SetValue(data.Transparent)
                end
                if data.Theme then WindUI:SetTheme(data.Theme) end
            end
        end
    end
})

Tabs.WindowTab:Button({
    Title = "覆盖文件",
    Callback = function()
        if fileNameInput ~= "" then
            SaveFile(fileNameInput, { Transparent = WindUI:GetTransparency(), Theme = WindUI:GetCurrentTheme() })
        end
    end
})

Tabs.WindowTab:Button({
    Title = "刷新列表",
    Callback = function()
        filesDropdown:Refresh(ListFiles())
    end
})

local currentThemeName = WindUI:GetCurrentTheme()
local themes = WindUI:GetThemes()

local ThemeAccent = themes[currentThemeName].Accent
local ThemeOutline = themes[currentThemeName].Outline
local ThemeText = themes[currentThemeName].Text
local ThemePlaceholderText = themes[currentThemeName].Placeholder

function updateTheme()
    WindUI:AddTheme({
        Name = currentThemeName,
        Accent = ThemeAccent,
        Outline = ThemeOutline,
        Text = ThemeText,
        Placeholder = ThemePlaceholderText
    })
    WindUI:SetTheme(currentThemeName)
end

local CreateInput = Tabs.CreateThemeTab:Input({
    Title = "主题名称",
    Value = currentThemeName,
    Callback = function(name)
        currentThemeName = name
    end
})

Tabs.CreateThemeTab:Colorpicker({
    Title = "背景颜色",
    Default = Color3.fromHex(ThemeAccent),
    Callback = function(color)
        ThemeAccent = color:ToHex()
    end
})

Tabs.CreateThemeTab:Colorpicker({
    Title = "轮廓颜色",
    Default = Color3.fromHex(ThemeOutline),
    Callback = function(color)
        ThemeOutline = color:ToHex()
    end
})

Tabs.CreateThemeTab:Colorpicker({
    Title = "文本颜色",
    Default = Color3.fromHex(ThemeText),
    Callback = function(color)
        ThemeText = color:ToHex()
    end
})

Tabs.CreateThemeTab:Colorpicker({
    Title = "占位符文本颜色",
    Default = Color3.fromHex(ThemePlaceholderText),
    Callback = function(color)
        ThemePlaceholderText = color:ToHex()
    end
})

Tabs.CreateThemeTab:Button({
    Title = "更新主题",
    Callback = function()
        updateTheme()
    end
})

local InviteCode = "ApbHXtAwU2"
local DiscordAPI = "https://discord.com/api/v10/invites/" .. InviteCode .. "?with_counts=true&with_expiration=true"

local Response = game:GetService("HttpService"):JSONDecode(WindUI.Creator.Request({
    Url = DiscordAPI,
    Method = "GET",
    Headers = {
        ["User-Agent"] = "RobloxBot/1.0",
        ["Accept"] = "application/json"
    }
}).Body)

if Response and Response.guild then
    local DiscordInfo = Tabs.Tests:Paragraph({
        Title = Response.guild.name,
        Desc = 
            ' <font color="#52525b">•</font> Member Count : ' .. tostring(Response.approximate_member_count) .. 
            '\n <font color="#16a34a">•</font> Online Count : ' .. tostring(Response.approximate_presence_count)
        ,
        Image = "https://cdn.discordapp.com/icons/" .. Response.guild.id .. "/" .. Response.guild.icon .. ".png?size=1024",
        ImageSize = 42,
    })

    Tabs.Tests:Button({
        Title = "更新信息",
        --Image = "refresh-ccw",
        Callback = function()
            local UpdatedResponse = game:GetService("HttpService"):JSONDecode(WindUI.Creator.Request({
                Url = DiscordAPI,
                Method = "GET",
            }).Body)
            
            if UpdatedResponse and UpdatedResponse and UpdatedResponse.guild then
                DiscordInfo:SetDesc(
                    ' <font color="#52525b">•</font> Member Count : ' .. tostring(UpdatedResponse.approximate_member_count) .. 
                    '\n <font color="#16a34a">•</font> Online Count : ' .. tostring(UpdatedResponse.approximate_presence_count)
                )
            end
        end
    })
else
    Tabs.Tests:Paragraph({
        Title = "接收Discord服务器信息时出错",
        Desc = game:GetService("HttpService"):JSONEncode(Response),
        Image = "triangle-alert",
        ImageSize = 26,
        Color = "Red",
    })
end



local function parseJSON(luau_table, indent, level, visited)
    indent = indent or 2
    level = level or 0
    visited = visited or {}
    
    local currentIndent = string.rep(" ", level * indent)
    local nextIndent = string.rep(" ", (level + 1) * indent)
    
    if luau_table == nil then
        return "null"
    end
    
    local dataType = type(luau_table)
    
    if dataType == "table" then
        if visited[luau_table] then
            return "\"[Circular Reference]\""
        end
        
        visited[luau_table] = true
        
        local isArray = true
        local maxIndex = 0
        
        for k, _ in pairs(luau_table) do
            if type(k) == "number" and k > maxIndex then
                maxIndex = k
            end
            if type(k) ~= "number" or k <= 0 or math.floor(k) ~= k then
                isArray = false
                break
            end
        end
        
        local count = 0
        for _ in pairs(luau_table) do
            count = count + 1
        end
        if count ~= maxIndex and isArray then
            isArray = false
        end
        
        if count == 0 then
            return "{}"
        end
        
        if isArray then
            if count == 0 then
                return "[]"
            end
            
            local result = "[\n"
            
            for i = 1, maxIndex do
                result = result .. nextIndent .. parseJSON(luau_table[i], indent, level + 1, visited)
                if i < maxIndex then
                    result = result .. ","
                end
                result = result .. "\n"
            end
            
            result = result .. currentIndent .. "]"
            return result
        else
            local result = "{\n"
            local first = true
            
            local keys = {}
            for k in pairs(luau_table) do
                table.insert(keys, k)
            end
            table.sort(keys, function(a, b)
                if type(a) == type(b) then
                    return tostring(a) < tostring(b)
                else
                    return type(a) < type(b)
                end
            end)
            
            for _, k in ipairs(keys) do
                local v = luau_table[k]
                if not first then
                    result = result .. ",\n"
                else
                    first = false
                end
                
                if type(k) == "string" then
                    result = result .. nextIndent .. "\"" .. k .. "\": "
                else
                    result = result .. nextIndent .. "\"" .. tostring(k) .. "\": "
                end
                
                result = result .. parseJSON(v, indent, level + 1, visited)
            end
            
            result = result .. "\n" .. currentIndent .. "}"
            return result
        end
    elseif dataType == "string" then
        local escaped = luau_table:gsub("\\", "\\\\")
        escaped = escaped:gsub("\"", "\\\"")
        escaped = escaped:gsub("\n", "\\n")
        escaped = escaped:gsub("\r", "\\r")
        escaped = escaped:gsub("\t", "\\t")
        
        return "\"" .. escaped .. "\""
    elseif dataType == "number" then
        return tostring(luau_table)
    elseif dataType == "boolean" then
        return luau_table and "true" or "false"
    elseif dataType == "function" then
        return "\"function\""
    else
        return "\"" .. dataType .. "\""
    end
end

local function tableToClipboard(luau_table, indent)
    indent = indent or 4
    local jsonString = parseJSON(luau_table, indent)
    setclipboard(jsonString)
    return jsonString
end

Tabs.Tests:Section({
    Title = "获取WindUI JSON"
})

Tabs.Tests:Button({
    Title = "获取WindUI JSON",
    Callback = function()
        tableToClipboard(WindUI)
    end
})




-- Configs


local ToggleElement = Tabs.ConfigTab:Toggle({
    Title = "切换",
    Desc = "Config Test Toggle",
    Callback = function(v) print("Toggle Changed: " .. tostring(v)) end
})

local SliderElement = Tabs.ConfigTab:Slider({
    Title = "滑块",
    Desc = "Config Test Slider",
    Value = {
        Min = 0,
        Max = 100,
        Default = 50,
    },
    Callback = function(v) print("Slider Changed: " .. v) end
})

local KeybindElement = Tabs.ConfigTab:Keybind({
    Title = "按键绑定",
    Desc = "Config Test Keybind",
    Value = "F",
    Callback = function(v) print("Keybind Changed/Clicked: " .. v) end
})

local DropdownElement = Tabs.ConfigTab:Dropdown({
    Title = "下拉菜单",
    Desc = "Config Test Dropdown",
    Values = { "Test 1", "Test 2" },
    Value = "Test 1",
    Callback = function(v) print("Dropdown Changed: " .. HttpService:JSONEncode(v)) end
})

local InputElement = Tabs.ConfigTab:Input({
    Title = "输入",
    Desc = "Config Test Input",
    Value = "Test",
    Placeholder = "Enter text.......",
    Callback = function(v) print("Input Changed: " .. v) end
})

local ColorpickerElement = Tabs.ConfigTab:Colorpicker({
    Title = "颜色选择器",
    Desc = "Config Test Colorpicker",
    Default = Color3.fromHex("#315dff"),
    Transparency = 0, -- Transparency enabled
    Callback = function(c,t) print("Colorpicker Changed: " .. c:ToHex() .. "\nTransparency: " .. t) end
})

-- Configs


-- 1. Load ConfigManager
local ConfigManager = Window.ConfigManager


-- 2. Create Config File                    ↓ Config File name
local myConfig = ConfigManager:CreateConfig("myConfig")


-- 3. Register elements

--               | ↓ Element name (no spaces)  | ↓ Element          |
myConfig:Register( "toggleNameExample",          ToggleElement      )
myConfig:Register( "sliderNameExample",          SliderElement      ) 
myConfig:Register( "keybindNameExample",         KeybindElement     )
myConfig:Register( "dropdownNameExample",        DropdownElement    )
myConfig:Register( "inputNameExample",           InputElement       )
myConfig:Register( "ColorpickerNameExample",     ColorpickerElement )


-- Save

--[[ Saving at 
    {yourExecutor}
        /Workspace
            /WindUI
                /{Window.Folder}
                    /config
                        /myConfig.json
                        
                                       ]]
                                   
-- myConfig:Save()


-- Load   

-- myConfig:Load()



-- Usage:

Tabs.ConfigTab:Button({
    Title = "保存",
    Desc = "Saves elements to config",
    Callback = function()
        myConfig:Save()
    end
})

Tabs.ConfigTab:Button({
    Title = "加载",
    Desc = "Loads elements from config",
    Callback = function()
        myConfig:Load()
    end
})

Tabs.ConfigTab:Button({
    Title = "打印所有配置",
    --Desc = "Prints configs",
    Callback = function()
        print(game:GetService("HttpService"):JSONEncode(ConfigManager:AllConfigs()))
    end
})



-- function :OnClose()


Window:OnClose(function()
    print("UI closed.")
end)