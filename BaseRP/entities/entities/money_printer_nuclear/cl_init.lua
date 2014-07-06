include("shared.lua")

function ENT:Initialize()
end

function ENT:Draw()
	self:DrawModel()

	local Pos = self:GetPos()
	local Ang = self:GetAngles()

	local owner = self:Getowning_ent()
	owner = (IsValid(owner) and owner:Nick()) or DarkRP.getPhrase("unknown")

	surface.SetFont("HUDNumber5")
	local text = self:GetNWInt("Name")
	txt3 = "Health: " .. self:GetNWInt("PrintB")
	txt4 = "Print amount: " ..self:GetNWInt("PrintA")
	txt5 = "Print time (range): " ..self:GetNWInt("PrintT1") .."/" ..self:GetNWInt("PrintT2")
	if self:GetNWInt("Status") == 1 then
	Status = "Online"
	end
	if self:GetNWInt("Status") == 0 then
	Status = "Offline, press -E- to refill"
	end
	txt6 = "Status: " ..Status
	local TextWidth = surface.GetTextSize(text)
	local TextWidth2 = surface.GetTextSize(owner)
	local TextWidth3 = surface.GetTextSize(txt3)
	local TextWidth4 = surface.GetTextSize(txt4)
	local TextWidth5 = surface.GetTextSize(txt5)
	local TextWidth6 = surface.GetTextSize(txt6)

	Ang:RotateAroundAxis(Ang:Right(), 180)

	cam.Start3D2D(Pos + Ang:Right() * 11.5, Ang, 0.11)
		draw.WordBox(2, -TextWidth*0.5, -30, text, "HUDNumber5", Color(140, 0, 0, 100), Color(255,255,255,255))
		draw.WordBox(2, -TextWidth2*0.5, 18, owner, "HUDNumber5", Color(140, 0, 0, 100), Color(255,255,255,255))
		draw.WordBox(2, -TextWidth3*0.5, 50, txt3, "HUDNumber5", Color(140, 0, 0, 100), Color(255,255,255,255))
		draw.WordBox(2, -TextWidth3*0.5, 100, txt4, "HUDNumber5", Color(140, 0, 0, 100), Color(255,255,255,255))
		draw.WordBox(2, -TextWidth3*0.5, 150, txt5, "HUDNumber5", Color(140, 0, 0, 100), Color(255,255,255,255))
		draw.WordBox(2, -TextWidth3*0.5, 200, txt6, "HUDNumber5", Color(140, 0, 0, 100), Color(255,255,255,255))
	cam.End3D2D()
end

function ENT:Think()
end
