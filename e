local ADMINS = {



}
local MODS = {

    
}
local STARS = {



}
local BOOSTERS = {

    
    
}

local VERIFICATION = {

    
    
    
}
local NOEMOJI = {
    421042392,  
    2267385097, 
    2568854753,
    1592279492,
    
   

}
local MONEYNAME = {

}
local CUSTOMWINNER = {

    
}

local formatNumber = (function(n)
    n = tostring(n)
    return n:reverse():gsub("%d%d%d", "%1,"):reverse():gsub("^,", "")
end)

local function checkswag()
    for i,v in pairs(game:GetService('Workspace').Players:GetChildren()) do
        if v:FindFirstChild('UpperTorso') then
            if not v:FindFirstChild('UpperTorso'):FindFirstChild('OriginalSize') then
                local plrcheck = game:GetService('Players'):FindFirstChild(v.Name)
                if plrcheck then
                    local plrID = game:GetService('Players'):FindFirstChild(v.Name).UserId
                    if plrID == 969017656 or plrID == 200547759 or plrID == 2432942033 then
                        if v:FindFirstChildWhichIsA('Humanoid') then           
                            v:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[🪐]' .. game.Players[v.Name].DisplayName) 
                        end
                    elseif table.find(ADMINS, plrID) then
                        if v:FindFirstChildWhichIsA('Humanoid') then
                            v:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[🌚]' .. game.Players[v.Name].DisplayName)
                        end
                    elseif table.find(MODS, plrID) then
                        if v:FindFirstChildWhichIsA('Humanoid') then
                            v:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[🏳️‍🌈]' .. game.Players[v.Name].DisplayName)
                        end
                    elseif table.find(CUSTOMWINNER, plrID) then
                        if v:FindFirstChildWhichIsA('Humanoid') then
                            v:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[🙀]' .. game.Players[v.Name].DisplayName)
                        end
                    elseif table.find(NOEMOJI, plrID) then
                        if v:FindFirstChildWhichIsA('Humanoid') then
                            v:FindFirstChildWhichIsA('Humanoid').DisplayName = (game.Players[v.Name].DisplayName)
                        end
                    elseif table.find(STARS, plrID) then
                        if v:FindFirstChildWhichIsA('Humanoid') then           
                            v:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[☔️]' .. game.Players[v.Name].DisplayName) 
                        end
                    elseif table.find(BOOSTERS, plrID) then
                        if v:FindFirstChildWhichIsA('Humanoid') then
                            v:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[☑️]' .. game.Players[v.Name].DisplayName)
                        end
                    elseif table.find(VERIFICATION, plrID) then
                        if v:FindFirstChildWhichIsA('Humanoid') then
                            v:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[☑️]' .. game.Players[v.Name].DisplayName)
                        end
                    else
                        if v:FindFirstChildWhichIsA('Humanoid') then
                            v:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[😎]' .. game.Players[v.Name].DisplayName)
                        end
                    end
                end
            else
                local plrcheck = game.Players:FindFirstChild(v.Name)
                if plrcheck then
                    elseif table.find(ADMINS, plrID) then
                        if v:FindFirstChildWhichIsA('Humanoid') then
                            v:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[🌚]' .. game.Players[v.Name].DisplayName)
                        end
                    elseif table.find(MODS, plrID) then
                        if v:FindFirstChildWhichIsA('Humanoid') then
                            v:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[🏳️‍🌈]' .. game.Players[v.Name].DisplayName)
                        end
           
                    elseif table.find(STARS, plrID) then
                        if v:FindFirstChildWhichIsA('Humanoid') then
                            v:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[☔️]' .. game.Players[v.Name].DisplayName)
                        end
                    end
                end
            end
        end
    end
end

local succ, errr = pcall(checkswag)
