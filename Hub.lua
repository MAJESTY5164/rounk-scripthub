-- Preset Varbiables

DiscordInvite = "aSf8XbJuzy"
Version = "1.0"
updatespeed = 0

-- User Status

FullAccess = {

}

Premium = {
    "Username", "HWID",
    "Majesty", "A",
    "Chillz", "B",
    "dude", "C",
}

-- Functions

txt = Premium[3]

for i = 5, #Premium, 2 do

txt = (txt .. ", " .. Premium[i])

end

hwid = {}

for i = 4, #Premium, 2 do

table.insert(hwid, Premium[i])

end

setfpscap(0)

repeat wait() until game:IsLoaded() wait(2)
local ScreenGui = Instance.new("ScreenGui")
local Fps = Instance.new("TextLabel")
ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Fps.Name = "Fps"
Fps.Parent = ScreenGui
Fps.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Fps.BackgroundTransparency = 1.000
Fps.Position = UDim2.new(0.786138654, 0, 0, 0)
Fps.Size = UDim2.new(0, 125, 0, 25)
Fps.Font = Enum.Font.SourceSans
Fps.TextColor3 = Color3.fromRGB(255, 255, 255)
Fps.TextScaled = true
Fps.TextSize = 14.000
Fps.TextWrapped = true
Fps.Visible = false
local script = Instance.new('LocalScript', Fps)
local RunService = game:GetService("RunService")
RunService.RenderStepped:Connect(function(frame) -- This will fire every time a frame is rendered
FpsValue = ("FPS: "..math.round(1/frame))
end)

getgenv().ShowFps = function(isVisable)
    Fps.Visible = isVisable
end

local MarketplaceService = game:GetService("MarketplaceService")
local placeId = game.PlaceId
local function getGameName(placeId)
    local success, gameInfo = pcall(function()
        return MarketplaceService:GetProductInfo(placeId, Enum.InfoType.Asset)
    end)
    
    if success then
        return gameInfo.Name
    else
        return "Unable to fetch game name."
    end
end

function Discord(inv)
local requestData = {
    cmd = 'INVITE_BROWSER',
    args = { code = inv },
    nonce = game:GetService("HttpService"):GenerateGUID(false)
}

local success, response = pcall((syn and syn.request) or http and http.request or http_request or (fluxus and fluxus.request) or request, {
    Url = 'http://127.0.0.1:6463/rpc?v=1',
    Method = 'POST',
    Headers = { ['Content-Type'] = 'application/json', ['Origin'] = 'https://discord.com' },
    Body = game:GetService("HttpService"):JSONEncode(requestData)
})  
end   

function toolgiver()
    local ToolGiverGui = Instance.new("ScreenGui")
    local Frame = Instance.new("Frame")
    local ScrollingFrame = Instance.new("ScrollingFrame")
    local UIListLayout = Instance.new("UIListLayout")
    local TextButton = Instance.new("TextButton")
    local TextLabel = Instance.new("TextLabel")
    local TextButton_2 = Instance.new("TextButton")
    local CloseButton = Instance.new("TextButton")  -- Close Button
    
    -- Variables for Close Button position and size
    local CloseX = 0.9  -- Change this for horizontal positioning
    local CloseY = 0.016     -- Change this for vertical positioning
    local CloseSize = UDim2.new(0, 18, 0, 18)  -- Close Button size
    
    ToolGiverGui.Parent = game:GetService("CoreGui")
    ToolGiverGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    ToolGiverGui.ResetOnSpawn = false
    
    Frame.Parent = ToolGiverGui
    Frame.Active = true
    Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    Frame.BorderColor3 = Color3.fromRGB(255, 0, 255)
    Frame.Position = UDim2.new(0.0610425249, 0, 0.0939490423, 0)
    Frame.Size = UDim2.new(0, 218, 0, 225)  -- Original size
    
    ScrollingFrame.Parent = Frame
    ScrollingFrame.Active = true
    ScrollingFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    ScrollingFrame.BorderColor3 = Color3.fromRGB(255, 0, 255)
    ScrollingFrame.Position = UDim2.new(0.0871559605, 0, 0.155555561, 0)
    ScrollingFrame.Size = UDim2.new(0, 187, 0, 136)  -- Original size
    ScrollingFrame.CanvasSize = UDim2.new(0, 0, 35, 0)
    
    UIListLayout.Parent = ScrollingFrame
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    
    TextButton.Parent = ScrollingFrame
    TextButton.BackgroundColor3 = Color3.fromRGB(117, 117, 117)
    TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TextButton.Size = UDim2.new(0, 155, 0, 39)  -- Original size
    TextButton.Visible = false
    TextButton.Font = Enum.Font.SourceSans
    TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextButton.TextSize = 20.000
    TextButton.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
    TextButton.TextStrokeTransparency = 0.000
    TextButton.TextWrapped = true
        
        TextLabel.Parent = Frame
    TextLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    TextLabel.BorderColor3 = Color3.fromRGB(255, 0, 255)
    TextLabel.Position = UDim2.new(-0.00129664713, 0, -0.000140406293, 0)
    TextLabel.Size = UDim2.new(0, 218, 0, 25)  -- Original size
    TextLabel.Font = Enum.Font.SourceSans
    TextLabel.Text = "MAJESTY's Tool Giver"
    TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.TextSize = 14.000
    
    TextButton_2.Parent = Frame
    TextButton_2.BackgroundColor3 = Color3.fromRGB(177, 177, 177)
    TextButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TextButton_2.Position = UDim2.new(0.0825688094, 0, 0.804444432, 0)
    TextButton_2.Size = UDim2.new(0, 180, 0, 30)  -- Original size
    TextButton_2.Font = Enum.Font.SourceSans
    TextButton_2.Text = "Update List"
    TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
    TextButton_2.TextSize = 14.000
    
    CloseButton.Parent = Frame
    CloseButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)  -- Red color
    CloseButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
    CloseButton.Position = UDim2.new(CloseX, 0, CloseY, 0)  -- Use the CloseX and CloseY variables
    CloseButton.Size = CloseSize  -- Use the CloseSize variable
    CloseButton.Font = Enum.Font.SourceSans
    CloseButton.Text = "X"
    CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    CloseButton.TextSize = 14.000
    
    CloseButton.MouseButton1Click:Connect(function()
        ToolGiverGui:Destroy()  -- Destroy the GUI
    end)
end

-- Lib

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
Name = "Ro(unk) Script Hub - v" .. Version,
Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
LoadingTitle = "Ro(unk) Script Hub",
LoadingSubtitle = "by Majesty & Chillz",
Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

DisableRayfieldPrompts = false,
DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

ConfigurationSaving = {
Enabled = false,
FolderName = nil, -- Create a custom folder for your hub/game
FileName = "Big Hub"
},

Discord = {
Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
RememberJoins = true -- Set this to false to make them join the discord every time they load it up
},

})

local Tab = Window:CreateTab("Main", "info") -- Title, Image

local Section = Tab:CreateSection("Discord")

local Button = Tab:CreateButton({
Name = "Join the Discord!",
Callback = function()
    Discord(DiscordInvite)
end,
})

Tab:CreateLabel("Invite Code: " .. DiscordInvite)

local Divider = Tab:CreateDivider()

local Section = Tab:CreateSection("Credits")

local Paragraph = Tab:CreateParagraph({Title = "Thanks to the following!", Content = " \n MAJESTY5164 - Hub Developer \n Chilz - Script Provider \n Sirius - UI creater"})

local Section = Tab:CreateSection("Premium Users")

local Paragraph = Tab:CreateParagraph({Title = "Thanks to the following!", Content = txt})

-- Universal

local Tab = Window:CreateTab("Universal", "globe") -- Title, Image

local Section = Tab:CreateSection("Universal Scripts")

local Button = Tab:CreateButton({
Name = "infinite yield",
Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
end,
})

local Button = Tab:CreateButton({
Name = "Air Hub",
Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/AirHub/main/AirHub.lua"))()
end,
})

local Button = Tab:CreateButton({
    Name = "Tool Giver",
    Callback = function()
        toolgiver()
    end,
    })

local Button = Tab:CreateButton({
Name = "Aimbot",
Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/utHyEcbk"))()
end,
})

local Button = Tab:CreateButton({
Name = "Equinox HUB",
Callback = function()
loadstring(game:HttpGet(('https://pastebin.com/raw/wzB1Qh78'),true))()
end,
})

local Button = Tab:CreateButton({
Name = "NamelessAdmin",
Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/FilteringEnabled/NamelessAdmin/main/Source"))();
end,
})

local Button = Tab:CreateButton({
Name = "Sirius",
Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/QP-Community/Roblox-Exploit/main/Sirius"))()
end,
})

local Button = Tab:CreateButton({
Name = "Unnamed ESP",
Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/ic3w0lf22/Unnamed-ESP/master/UnnamedESP.lua'))()
end,
})

local Button = Tab:CreateButton({
Name = "Ghost HUB",
Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/GhostHub'))()
end,
})

local Button = Tab:CreateButton({
Name = "Sky HUB",
Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/yofriendfromschool1/Sky-Hub/main/SkyHub.txt"))()
end,
})

local Button = Tab:CreateButton({
Name = "Aimbot and ESP",
Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Mick-gordon/Hyper-Escape/main/DeleteMobCheatEngine.lua'))()
end,
})

local Tab = Window:CreateTab("BladeBall", "sword") -- Title, Image

local Section = Tab:CreateSection("BladeBall Scripts")

-- FFJ HUB V3
local Button = Tab:CreateButton({
    Name = "FFJ HUB V3",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/FFJ1/Roblox-Exploits/main/scripts/BladeBallV3.lua"))()
    end,
})

-- Nurysium
local Button = Tab:CreateButton({
    Name = "Nurysium",
    Callback = function()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/1f9bc8752e71c108f3a9d219a5239a59.lua"))()
    end,
})

-- infinix hub
local Button = Tab:CreateButton({
    Name = "infinix hub",
    Callback = function()
        loadstring(game:HttpGet("https://github.com/Hosvile/InfiniX/releases/latest/download/main.lua", true))()
    end,
})

-- Ether HUB
local Button = Tab:CreateButton({
    Name = "Ether HUB",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/6w0s/_6w0s/main/Loader.lua"))()
    end,
})

-- SumitScripts HUB
local Button = Tab:CreateButton({
    Name = "SumitScripts HUB",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/SumitScripts/SumitScripts-hub/main/Bladeball/Releases.lua'))()
    end,
})

-- OP Manual Spam
local Button = Tab:CreateButton({
    Name = "OP Manual Spam",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/nqxlOfc/SlzAX17vGCub7iRKVmJid61Bg/main/KwKVzV5SgcFBd9fnpLr4lKCg6.lua"))()
    end,
})

-- Schema HUB
local Button = Tab:CreateButton({
    Name = "Schema HUB",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/manimanni/Schema/main/posse.lua"))()
    end,
})

-- Zygarde HUB
local Button = Tab:CreateButton({
    Name = "Zygarde HUB",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/louismich4el/Zygarde/main/Protected%20zygarde.lua"))()
    end,
})

-- Auto Dungeons
local Button = Tab:CreateButton({
    Name = "Auto Dungeons",
    Callback = function()
        _G.AutoStart = true; -- true / false
        _G.Map = "Frost Area"; -- "Grass Area", "Frost Area", "Space Area"
        _G.Mode = "Hard"; -- "Easy", "Normal", "Hard"
        loadstring(game:HttpGet("https://raw.githubusercontent.com/nqxlOfc/Loaders/main/Dungeons.lua"))()
    end,
})

-- ZapHUB
local Button = Tab:CreateButton({
    Name = "ZapHUB",
    Callback = function()
        loadstring(game:HttpGet('https://zaphub.xyz/Exec'))()
    end,
})

-- HOHO HUB
local Button = Tab:CreateButton({
    Name = "HOHO HUB",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI"))()
    end,
})

-- Bedol HUB V4.2
local Button = Tab:CreateButton({
    Name = "Bedol HUB V4.2",
    Callback = function()
        local _, er_msg = pcall(loadstring(game:HttpGet("https://raw.githubusercontent.com/3345-c-a-t-s-u-s/New-C4-Remote.lua/main/BetaTest/Bladeball15m.html")))
    end,
})

-- Pitbull HUB
local Button = Tab:CreateButton({
    Name = "Pitbull HUB",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/SoyAdriYT/PitbullHub--/main/Destroyer", true))()
    end,
})

-- Visual V3.5
local Button = Tab:CreateButton({
    Name = "Visual V3.5",
    Callback = function()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/a5945467f3b9388503ca653c0ea49cba.lua"))()
    end,
})

-- Plutonium HUB
local Button = Tab:CreateButton({
    Name = "Plutonium HUB",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/PawsThePaw/Plutonium.AA/main/Plutonium.Loader.lua", true))()
    end,
})

-- Triple HUB
local Button = Tab:CreateButton({
    Name = "Triple HUB",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/TripleScript/TripleHub/main/TripleHubV2.txt"))()
    end,
})

-- Expo HUB V1
local Button = Tab:CreateButton({
    Name = "Expo HUB V1",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ExpoSploits/expo-key-system/main/Expo%20Key", true))()
    end,
})

-- Bedol HUB V4.3
local Button = Tab:CreateButton({
    Name = "Bedol HUB V4.3",
    Callback = function()
        _G.UI_Size = 200 -- config ui size
        loadstring(game:HttpGet("https://raw.githubusercontent.com/3345-c-a-t-s-u-s/-beta-/main/AutoParry.lua"))()
    end,
})

-- Astral HUB
local Button = Tab:CreateButton({
    Name = "Astral HUB",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Augustzyzx/A-s-t-r-a-l/main/Loader_BladeBall.lua'))()
    end,
})

-- Nexam HUB
local Button = Tab:CreateButton({
    Name = "Nexam HUB",
    Callback = function()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/6af56c1753ac6679dee3acbd1fd952e5.lua"))()
    end,
})

-- infinix hub
local Button = Tab:CreateButton({
    Name = "infinix hub",
    Callback = function()
        loadstring(game:HttpGet("https://github.com/Hosvile/InfiniX/releases/latest/download/main.lua", true))()
    end,
})

local Tab = Window:CreateTab("Bedwars", "bed-double") -- Title, Image

local Section = Tab:CreateSection("Bedwars Scripts")

-- AlSploit
local Button = Tab:CreateButton({
    Name = "AlSploit",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AlSploit/AlSploit/main/AlSploit/Bedwars/Loader.lua"))()
    end,
})

-- AlSploit (No Loading Screen)
local Button = Tab:CreateButton({
    Name = "AlSploit (No Loading Screen)",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/C45F8Tpk"))()
    end,
})

-- Liquid Bounce
local Button = Tab:CreateButton({
    Name = "Liquid Bounce",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Springs67/LeaksNStuff/3kdIKfmsdSf/LiquidBounce.lua", true))()
    end,
})

-- Skid Vape
local Button = Tab:CreateButton({
    Name = "Skid Vape",
    Callback = function()
        shared.LogUser = false;
        loadstring(game:HttpGet("https://raw.githubusercontent.com/sstvskids/SkidVapeForRoblox/main/NewMainScript.lua", true))();
    end,
})

-- Hazel Ware
local Button = Tab:CreateButton({
    Name = "Hazel Ware",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Hazel-roblox/Hazel-Ware/main/Loader.lua", true))()
    end,
})

-- Old AlSploit
local Button = Tab:CreateButton({
    Name = "Old AlSploit",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/QP-Community/Roblox/main/OldAlSploit.lua"))()
    end,
})

-- Polaris
local Button = Tab:CreateButton({
    Name = "Polaris",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/yVbn13Ya"))()
    end,
})

-- Snyware
local Button = Tab:CreateButton({
    Name = "Snyware",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/AFGCLIENT/Snyware/main/Loader'))()
    end,
})

-- CoCosploit
local Button = Tab:CreateButton({
    Name = "CoCosploit",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/QP-Community/Roblox/refs/heads/main/CoCoSkid"))()
    end,
})

-- Autumn
local Button = Tab:CreateButton({
    Name = "Autumn",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/abZNjBcP"))()
    end,
})

-- CoCosploit V3
local Button = Tab:CreateButton({
    Name = "CoCosploit V3",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/cocotv666/CocoSploit/main/CocoSploit_Loader'))()
    end,
})

-- Aurora V1.6
local Button = Tab:CreateButton({
    Name = "Aurora V1.6",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/cocotv666/Aurora/refs/heads/main/Aurora_Loader'))()
    end,
})

-- Vape v4
local Button = Tab:CreateButton({
    Name = "Vape v4",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()
    end,
})

-- Rise
local Button = Tab:CreateButton({
    Name = "Rise",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/RiseForRoblox/main/main.lua", true))()
    end,
})

local Tab = Window:CreateTab("Settings", "settings") -- Title, Image

local Section = Tab:CreateSection("Fps")

local FpsLabel = Tab:CreateLabel("Loading...")

local Input = Tab:CreateInput({
    Name = "Fps Cap",
    CurrentValue = "0",
    PlaceholderText = "0",
    RemoveTextAfterFocusLost = false,
    Callback = function(Text)
        if type(tonumber(Text)) == "number" then
        setfpscap(tonumber(Text))
        Rayfield:Notify({
            Title = "Fps",
            Content = "Fps Cap set to " .. Text,
            Duration = 5,
         })
        else
            Rayfield:Notify({
                Title = "Fps",
                Content = "Error please provide a number",
                Duration = 5,
             })
        end
    end,
 })

 local Toggle = Tab:CreateToggle({
    Name = "Fps Overlay",
    CurrentValue = false,
    Callback = function(Value)
        getgenv().ShowFps(Value)
    end,
 })

local Section = Tab:CreateSection("Misc")

local Slider = Tab:CreateSlider({
    Name = "Update Speed",
    Range = {0, 10},
    Increment = 0.5,
    Suffix = "seconds",
    CurrentValue = 0,
    Callback = function(Value)
        updatespeed = Value
    end,
 })

while true do
    FpsLabel:Set(FpsValue)
    script.Parent.Text = FpsValue
wait(updatespeed)
end