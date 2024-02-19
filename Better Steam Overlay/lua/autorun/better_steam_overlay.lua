if CLIENT then
    OverlayOpened = false
    MsgC( Color( 33, 55, 105 ), "[Better Steam Overlay V1.0]" )
    print(" is installed!")
    concommand.Add( "better_steam_overlay", function( ply, cmd, args, str )
            include("overlay/steam_overlay_base.lua")
            open_overlay()
    end )
end
