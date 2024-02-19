SOverRChat = {}
SOverRChat.SORChat = vgui.Create("DFrame")
SOverRChat.SORChat:SetPos(100, 100)
SOverRChat.SORChat:SetSize(300, 300)
SOverRChat.SORChat:SetTitle("Chat Replacement")
SOverRChat.SORChat:MakePopup()
SOverRChat.ChatGuts = vgui.Create( "RichText", SOverRChat.SORChat )
SOverRChat.ChatGuts:SetPos(10,30)
SOverRChat.ChatGuts:SetSize(290,245)
SOverRChat.ChatMesgEntry = vgui.Create( "DTextEntry", SOverRChat.SORChat )
SOverRChat.ChatMesgEntry:SetPos(8,270)
SOverRChat.ChatMesgEntry:SetSize(240,20)
hook.Add("OnPlayerChat", "myChat", function( player, strText, bTeamOnly, bPlayerIsDead )
    if SOverR.ChatMesgEntry ~= nil then
        local col = GAMEMODE:GetTeamColor( player ) -- Get the player's team color
        SOverRChat.ChatGuts:InsertColorChange( col.r, col.g, col.b, 255 ) -- Make their name that color
        SOverRChat.ChatGuts:AppendText( player:Nick() )

        SOverRChat.ChatGuts:InsertColorChange( 255, 255, 255, 255 )
        SOverRChat.ChatGuts:AppendText( ": " .. strText .. "\n" )
        end
end)
    hook.Add("ChatTextChanged", "myChat_Update", function( text )
        if SOverR.ChatMesgEntry ~= nil then
            SOverRChat.ChatMesgEntry:SetText( text )
        end
    end)
