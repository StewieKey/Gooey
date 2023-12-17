local gooey = {
    getPlayerInfo = function()
        local data = {}
        local localPlayer = Players.LocalPlayer
        
        if localPlayer then
            table.insert(data, localPlayer)
            table.insert(data, localPlayer.Name)
            
            if localPlayer.Character then
               table.insert(data, localPlayer.Character)
            else
                table.insert(data, nil)
            end
        else
            table.insert(data, nil)
            table.insert(data, nil)
        end
        
        return data
    end,
    
    getRootPart = function()
        local Character = Players.LocalPlayer.Character
        
        if Character then
            local humanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

            return humanoidRootPart
        end

        return nil
    end
}

return gooey
