include("shared.lua")
	local num = 0
	
function ENT:Initialize()
	local owner = self:Getowning_ent()
	owner = (IsValid(owner) and owner:Nick()) or DarkRP.getPhrase("unknown")
end

function ENT:Draw()
	self:DrawModel()
	local Pos = self:GetPos()
	local Ang = self:GetAngles()
	local owner = self:Getowning_ent()
	owner = (IsValid(owner) and owner:Nick()) or DarkRP.getPhrase("unknown")
	

	surface.SetFont("HUDNumber5")
	local text = "MoneyBox"
	local text2 = "Amount: " ..num .."$"

	local TextWidth = surface.GetTextSize(text)
	local TextWidth2 = surface.GetTextSize(text2)

	Ang:RotateAroundAxis(Ang:Up(), 180)

	cam.Start3D2D(Pos + Ang:Up() * 11.5, Ang, 0.11)
		draw.WordBox(2, -TextWidth*0.5, -30, text, "HUDNumber5", Color(140, 0, 0, 100), Color(255,255,255,255))
		draw.WordBox(2, -TextWidth*0.5, 18, text2, "HUDNumber5", Color(140, 0, 0, 100), Color(255,255,255,255))
	cam.End3D2D()

end

function ENT:Think()
end



function Derma(activator)
	local DermaPanel = vgui.Create( "DFrame" ) -- Creates the frame itself
	DermaPanel:SetPos( 50,50 ) -- Position on the players screen
	DermaPanel:SetSize( 500 , 300 ) -- Size of the frame
	DermaPanel:SetTitle( "MoneyBox V1.1" ) -- Title of the frame
	DermaPanel:SetVisible( true )
	DermaPanel:SetDraggable( false ) -- Draggable by mouse?
	DermaPanel:ShowCloseButton( true ) -- Show the close button?
	DermaPanel:MakePopup() -- Show the frame
	local DermaText = vgui.Create( "DTextEntry", DermaPanel )
	DermaText:SetPos( 20,25 )
	DermaText:SetTall( 20 )
	DermaText:SetWide( 450 )
	DermaText:SetEnterAllowed( true )
	DermaText.OnEnter = function()
		num = "Amount: " ..DermaText:GetValue() .."$"
		end
	local DermaButton = vgui.Create( "DButton" )
	DermaButton:SetParent( DermaPanel ) -- Set parent to our "DermaPanel"
	DermaButton:SetText( "Add/Take" )
	DermaButton:SetPos( 25, 50 )
	DermaButton:SetSize( 150, 50 )
	DermaButton.DoClick = function ()
		umsg.Start("Money",owner)
		umsg.End()
	end
	local myText = vgui.Create( "DLabel" )
	myText:SetParent( DermaPanel )
	myText:SetPos( 5,100)
	myText:SetSize( 300, 20 )
	myText:SetText("Add/Remove money by using -(value) (+)(value)")
end

function Down()
	status = 0
end

function up()
	status = 1
end

function OnRemove()
	
end

usermessage.Hook( "Derma", Derma )
usermessage.Hook( "OnRemove", OnRemove )
usermessage.Hook( "down", Down )
usermessage.Hook( "up", up )