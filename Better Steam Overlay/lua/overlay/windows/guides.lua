local SORGuides = vgui.Create("DFrame")
SORGuides:SetSize(1000, 600)
SORGuides:Center()
SORGuides:SetTitle("Guides Replacement")
SORGuides:MakePopup()

local html_window = vgui.Create( "DHTML", SORGuides )
html_window:SetSize( 950, 500 )
html_window:Center()
html_window:SetAllowLua(true)

local base_ctrls = vgui.Create( "DHTMLControls", SORGuides )
base_ctrls:SetWide( 950 )
base_ctrls:SetPos( 25, 40 )
base_ctrls:SetHTML( html_window )
base_ctrls.AddressBar:SetText( "https://steamcommunity.com/app/4000/guides/" )

html_window:MoveBelow( base_ctrls )
html_window:OpenURL( "https://steamcommunity.com/app/4000/guides/" )
