openedpage = _G.openedpage
local MiniatureBrowser = vgui.Create("DFrame")
MiniatureBrowser:SetSize(600, 400)
MiniatureBrowser:Center()
MiniatureBrowser:SetTitle("Miniature")
MiniatureBrowser:SetMinWidth( 200 )
MiniatureBrowser:SetMinHeight( 100 )
MiniatureBrowser:SetSizable( true )

local html_window_mini = vgui.Create( "DHTML", MiniatureBrowser )
html_window_mini:SetSize( 550, 350 )
html_window_mini:Center()
html_window_mini:SetSize( 550, 360 )
html_window_mini:OpenURL( openedpage )
