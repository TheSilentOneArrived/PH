local UIBuilders = {}

function UIBuilders.Build(playerGui)

    local UI = {}

    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "VerticalMenu"
    screenGui.ResetOnSpawn = false
    screenGui.DisplayOrder = 999
    screenGui.Parent = playerGui

    UI.screenGui = screenGui

    return UI

end

return UIBuilders
