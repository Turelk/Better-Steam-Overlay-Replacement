local SORBrowser = vgui.Create("DFrame")
SORBrowser:SetSize(1000, 620)
SORBrowser:Center()
SORBrowser:SetTitle("Browser Replacement")
SORBrowser:MakePopup()

local html_window = vgui.Create( "DHTML", SORBrowser )
html_window:SetSize( 950, 500 )
html_window:Center()

local base_ctrls = vgui.Create( "DHTMLControls", SORBrowser )
base_ctrls:SetWide( 950 )
base_ctrls:SetPos( 25, 40 )
base_ctrls:SetHTML( html_window )
base_ctrls.AddressBar:SetText( "https://raw.githack.com/Turelk/Better-Steam-Overlay-Replacement/main/home_pages_htmls/htmls/home_page_1/home_page_1.html" )

html_window:MoveBelow( base_ctrls )
html_window:OpenURL( "https://raw.githack.com/Turelk/Better-Steam-Overlay-Replacement/main/home_pages_htmls/htmls/home_page_1/home_page_1.html" )

local MiniatureButton = vgui.Create( "DButton", SORBrowser )
MiniatureButton:SetText( "Miniature" )
MiniatureButton:SetPos( 30, 582 )
MiniatureButton:SetSize( 100, 30 )
MiniatureButton.DoClick = function()
    include("overlay/windows/miniature.lua")
end
function html_window:OnFinishLoadingDocument( url )
    openedpage = url
end
