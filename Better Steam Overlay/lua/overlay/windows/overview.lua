local SOROverview = vgui.Create("DFrame") -- The name of the panel we don't have to parent it.
SOROverview:Center() -- Set the position to 100x by 100y.
SOROverview:SetSize(300, 400) -- Set the size to 300x by 200y.
SOROverview:SetTitle("Game Overview Replacement") -- Set the title in the top left to "Derma Frame".
SOROverview:MakePopup() -- Makes your mouse be able to move around.
SOROverview:MoveToFront()
-- getUserServerTime()

function getRealTime()
    local Timestamp = os.time()
    SORRealTime = os.date( "%H:%M", Timestamp )
end
-- function getUserServerTime()
    -- TimeSinceConnected = Player:TimeConnected()
-- end

local CatList = vgui.Create( "DCategoryList", SOROverview )
CatList:Dock( FILL )
local Cat = CatList:Add( "GAME INFO" )
Cat:Add( "Currently Playing ".. engine.ActiveGamemode().. " gamemode." )
getRealTime()
Cat:Add( "Current real time: ".. SORRealTime)
-- local Cat2 = CatList:Add( "YOUR PLAYTIME" )
-- Cat2:Add( TimeSinceConnected.. " since you connected")
-- Cat2:SetTall( 100 )
-- CatList:InvalidateLayout( true )
