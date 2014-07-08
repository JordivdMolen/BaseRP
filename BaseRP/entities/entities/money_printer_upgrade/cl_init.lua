include("shared.lua")
function ENT:Draw()
	self:DrawModel()

	local Pos = self:GetPos()
	local Ang = self:GetAngles()

	local owner = self:Getowning_ent()
	owner = (IsValid(owner) and owner:Nick()) or DarkRP.getPhrase("unknown")

	surface.SetFont("HUDNumber5")
	local text2 = owner .. " is"
	local text = self:Getowning_ent():GetNWInt("Raidable") 
	txt4 = "press E on me to freeze me"
	txt3 = "Current sate: " ..self:Getowning_ent():GetNWInt("State_Sign")
	local TextWidth = surface.GetTextSize(text)
	local TextWidth2 = surface.GetTextSize(text2)
	local TextWidth4 = surface.GetTextSize(txt4)
	local TextWidth3 = surface.GetTextSize(txt3)

	Ang:RotateAroundAxis(Ang:Up(), 90)

	cam.Start3D2D(Pos + Ang:Up() * 11.5, Ang, 0.11)
		draw.WordBox(2, -TextWidth2*0.5, -30, text2, "HUDNumber5", Color(140, 0, 0, 100), Color(255,255,255,255))
		draw.WordBox(2, -TextWidth*0.5, 0, text, "HUDNumber5", Color(140, 0, 0, 100), Color(255,255,255,255))
		draw.WordBox(2, -TextWidth4*0.5, 30, txt4, "HUDNumber5", Color(140, 0, 0, 100), Color(255,255,255,255))
		draw.WordBox(2, -TextWidth3*0.5, 60, txt3, "HUDNumber5", Color(140, 0, 0, 100), Color(255,255,255,255))
	cam.End3D2D()
end
