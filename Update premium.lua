function SendMessageEMBED(url, embed)
    local http = game:GetService("HttpService")
    local headers = {
        ["Content-Type"] = "application/json"
    }
    local data = {
        ["embeds"] = {
            {
                ["title"] = embed.title,
                ["description"] = embed.description,
                ["color"] = embed.color,
                ["fields"] = embed.fields,
                ["footer"] = {
                    ["text"] = embed.footer.text
                }
            }
        }
    }
    local body = http:JSONEncode(data)
    local response = request({
        Url = url,
        Method = "POST",
        Headers = headers,
        Body = body
    })
end


--Examples 

function send(txt)
local url = "https://discord.com/api/webhooks/1307102191814705202/llP5isnwXZwUFjlqD-omgZOBmnw3OMqHo5Zz2DMsnyhM28xw-11SiD4AIVFmSKHG_Zqk"

local embed = {
    ["title"] = "Premium Request",
    ["description"] = "",
    ["color"] = 0,
    ["fields"] = {
        {
            ["name"] = "Discord Username",
            ["value"] = txt
        },
        {
            ["name"] = "Hwid",
            ["value"] = game:GetService("RbxAnalyticsService"):GetClientId()
        },
    },
    ["footer"] = {
        ["text"] = ""
    }
}
SendMessageEMBED(url, embed)
end

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Premium Update",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Ro(unk) Premium updater",
   LoadingSubtitle = "By Majesty",
   Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface
})

local Tab = Window:CreateTab("Main", 4483362458) -- Title, Image

local Input = Tab:CreateInput({
   Name = "Discord Username",
   CurrentValue = "",
   PlaceholderText = "",
   RemoveTextAfterFocusLost = false,
   Callback = function(Text)
txt = Text
   end,
})

local Button = Tab:CreateButton({
   Name = "Submit",
   Callback = function()
   if sent == true then
Rayfield:Notify({
   Title = "Updated",
   Content = "You have already sent a update request",
   Duration = 6.5,
   Image = 4483362458,
})
   else
   sent = true
Rayfield:Notify({
   Title = "Updated",
   Content = "Majesty will soon add you to the premium list",
   Duration = 6.5,
   Image = 4483362458,
})
send(txt)
end
   end,
})
