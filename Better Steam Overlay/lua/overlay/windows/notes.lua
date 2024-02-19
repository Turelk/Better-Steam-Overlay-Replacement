local SORNotes = vgui.Create("DFrame") -- The name of the panel we don't have to parent it.
SORNotes:SetPos(100, 100) -- Set the position to 100x by 100y.
SORNotes:SetSize(250, 250) -- Set the size to 300x by 200y.
SORNotes:SetTitle("Notes Replacement") -- Set the title in the top left to "Derma Frame".
SORNotes:MakePopup() -- Makes your mouse be able to move around.

local SORTextField = vgui.Create( "DTextEntry", SORNotes )
SORTextField:Dock( TOP )
SORTextField:SetSize( 240, 230 )
SORTextField:SetValue("")
