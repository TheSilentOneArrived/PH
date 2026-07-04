local UIBuilders = {}

function UIBuilders.Build(playerGui)

    local UI = {}

    --==================================================
    -- SCREEN GUI
    --==================================================

    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "VerticalMenu"
    screenGui.ResetOnSpawn = false
    screenGui.DisplayOrder = 999
    screenGui.Parent = playerGui

    UI.screenGui = screenGui

    --==================================================
    -- IGNORE WINDOW
    --==================================================

    local ignoreFrame = Instance.new("Frame")
    ignoreFrame.Size = UDim2.new(0,250,0,300)
    ignoreFrame.Position = UDim2.new(0.5,-125,0.5,-150)
    ignoreFrame.BackgroundColor3 = Color3.fromRGB(0,0,0)
    ignoreFrame.BorderSizePixel = 0
    ignoreFrame.Visible = false
    ignoreFrame.Parent = screenGui
    ignoreFrame.Active = true
    ignoreFrame.Draggable = true
    UI.ignoreFrame = ignoreFrame

    ignoreStroke = Instance.new("UIStroke")
    ignoreStroke.Thickness = 2.5
    ignoreStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    ignoreStroke.Parent = ignoreFrame

    ignoreTitle = Instance.new("TextLabel")
    ignoreTitle.Size = UDim2.new(1,0,0,30)
    ignoreTitle.Position = UDim2.new(0,0,0,0)
    ignoreTitle.BackgroundTransparency = 1
    ignoreTitle.Text = "Select items to ignore"
    ignoreTitle.FontFace = Font.fromName("Michroma")
    ignoreTitle.TextSize = 18
    ignoreTitle.TextColor3 = Color3.fromRGB(255,255,255)
    ignoreTitle.Parent = ignoreFrame

    ignoreCorner = Instance.new("UICorner")
    ignoreCorner.CornerRadius = UDim.new(0,10)
    ignoreCorner.Parent = ignoreFrame

    local scroll = Instance.new("ScrollingFrame")
    scroll.Size = UDim2.new(1,-10,1,-40)
    scroll.Position = UDim2.new(0,5,0,35)
    scroll.BackgroundTransparency = 1
    scroll.BorderSizePixel = 0
    scroll.ScrollBarThickness = 5
    scroll.Parent = ignoreFrame
    UI.scroll = scroll

    local ignoreLayout = Instance.new("UIListLayout")
    ignoreLayout.Parent = scroll
    UI.ignoreLayout = ignoreLayout

    ignoreLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
        scroll.CanvasSize = UDim2.new(0, 0, 0, ignoreLayout.AbsoluteContentSize.Y + 5)
    end)

    return UI

end

return UIBuilders
