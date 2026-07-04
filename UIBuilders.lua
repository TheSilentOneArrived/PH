local UIBuilders = {}

function UIBuilders.CreateScreenGui(playerGui)

    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "VerticalMenu"
    screenGui.ResetOnSpawn = false
    screenGui.DisplayOrder = 999
    screenGui.Parent = playerGui

    return screenGui

end

return UIBuilders
