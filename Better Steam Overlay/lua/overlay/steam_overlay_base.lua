function open_overlay()
    local faded_black = Color(0, 0, 0, 100)
    SteamOverlayBase = vgui.Create("DFrame")
    SteamOverlayBase:SetScreenLock( true )
    SteamOverlayBase:SetSize(500,80)
    SteamOverlayBase:SetPos(ScrW() /2 - 250 , ScrH() - 120)
    SteamOverlayBase:SetTitle("")
    SteamOverlayBase:SetBackgroundBlur( true )
    SteamOverlayBase:ShowCloseButton(false)
    SteamOverlayBase:MakePopup()
    local ButtonBase = vgui.Create( "DPanel", SteamOverlayBase )
    ButtonBase:SetSize(480,70)
    ButtonBase:Center()
    ButtonBase:SetPaintBackground( false )
    local CloseButton = vgui.Create( "DButton", ButtonBase )
    CloseButton:SetText( "X" )
    CloseButton:SetPos( 450,18 )
    CloseButton:SetSize( 30, 30 )
    CloseButton.DoClick = function()
        SteamOverlayBase:Close()
    end
    local GuidesButton = vgui.Create( "DButton", ButtonBase )
    GuidesButton:SetText( "" )
    GuidesButton:SetPos( 410,18 )
    GuidesButton:SetSize( 30, 30 )
    GuidesButton:SetImage( "icon16/eye.png" )
    GuidesButton.DoClick = function()
        if SteamOverlayBase:GetBackgroundBlur() == true then
            SteamOverlayBase:SetBackgroundBlur( false )
            GuidesButton:SetImage( "icon16/shading.png" )
        elseif SteamOverlayBase:GetBackgroundBlur() == false then
            SteamOverlayBase:SetBackgroundBlur( true )
            GuidesButton:SetImage( "icon16/eye.png" )
        end
    end
    -- local ChatButton = vgui.Create( "DButton", ButtonBase )
    -- ChatButton:SetText( "" )
    -- ChatButton:SetPos( 210,15 )
    -- ChatButton:SetSize( 40, 40 )
    -- ChatButton:SetImage( "icon16/comments.png" )
    -- ChatButton.DoClick = function()
        -- include("overlay/windows/chat.lua")
    -- end
    local GuidesButton = vgui.Create( "DButton", ButtonBase )
    GuidesButton:SetText( "" )
    GuidesButton:SetPos( 160,15 )
    GuidesButton:SetSize( 40, 40 )
    GuidesButton:SetImage( "icon16/book_open.png" )
    GuidesButton.DoClick = function()
        include("overlay/windows/guides.lua")
    end
    local NoteButton = vgui.Create( "DButton", ButtonBase )
    NoteButton:SetText( "" )
    NoteButton:SetPos( 110,15 )
    NoteButton:SetSize( 40, 40 )
    NoteButton:SetImage( "icon16/note.png" )
    NoteButton.DoClick = function()
        include("overlay/windows/notes.lua")
    end
    local WebButton = vgui.Create( "DButton", ButtonBase )
    WebButton:SetText( "" )
    WebButton:SetPos( 60,15 )
    WebButton:SetSize( 40, 40 )
    WebButton:SetImage( "icon16/layout.png" )
    WebButton.DoClick = function()
        include("overlay/windows/browser.lua")
    end
    local OverviewButton = vgui.Create( "DButton", ButtonBase )
    OverviewButton:SetText( "" )
    OverviewButton:SetPos( 10,15 )
    OverviewButton:SetSize( 40, 40 )
    OverviewButton:SetImage( "icon16/information.png" )
    OverviewButton.DoClick = function()
        include("overlay/windows/overview.lua")
    end
end
