-- RRPX Money Printer reworked for DarkRP by philxyz
AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")


ENT.SeizeReward = 950
local Color = Color( 0, 0, 0, 0 )
local healt = 100 -- Health of the structure
local name = "Big Base Gate" -- Name
function ENT:Initialize()
	self:SetModel("models/props_junk/wood_crate002a.mdl")
	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetMoveType(MOVETYPE_VPHYSICS)
	self:SetSolid(SOLID_VPHYSICS)
	self:SetColor( Color )
	self.dmg = 150
	local phys = self:GetPhysicsObject()
	phys:Wake()
	self:SetNWInt("PrintB", self.dmg)
	


	

end



function ENT:Destruct()
	local vPoint = self:GetPos()
	local effectdata = EffectData()
	effectdata:SetStart(vPoint)
	effectdata:SetOrigin(vPoint)
	effectdata:SetScale(1)
	util.Effect("Explosion", effectdata)
	DarkRP.notify(self:Getowning_ent(), 1, 4, "Big Base Gate Destroyed")
	self:Remove()
end

function ENT:Use()
	self:SetMoveType(MOVETYPE_FLY)
end

function ENT:Touch( ent )
		if ent:GetClass( ) == "auto_turret" then
			self.dmg = 150
			ent:Remove( );
			DarkRP.notify(owner, 1, 4, name.. " Healed")
			self:SetNWInt("PrintB", dmg)
		end
		if ent:GetClass( ) == "moneyvault" then
			 
			self.dmg = (self.dmg or 100 ) - 0.1
			self:SetNWInt("PrintB", self.dmg)
			if self.dmg < 0 then
			self:Destruct()
			self:Remove()
			end
		end
	if self.dmg == 140 then
	DarkRP.notify(owner, 1, 4, "Big Base Gate is getting Destroyed. - HP left: "..self.dmg)
	end
	if self.dmg == 130 then
	DarkRP.notify(owner, 1, 4, "Big Base Gate is getting Destroyed. - HP left: "..self.dmg)
	end
	if self.dmg == 120 then
	DarkRP.notify(owner, 1, 4, "Big Base Gate is getting Destroyed. - HP left: "..self.dmg)
	end
	if self.dmg == 110 then
	DarkRP.notify(owner, 1, 4, "Big Base Gate is getting Destroyed. - HP left: "..self.dmg)
	end
	if self.dmg == 100 then
	DarkRP.notify(owner, 1, 4, "Big Base Gate is getting Destroyed. - HP left: "..self.dmg)
	end
	if self.dmg == 90 then
	DarkRP.notify(owner, 1, 4, "Big Base Gate is getting Destroyed. - HP left: "..self.dmg)
	end
	if self.dmg == 80 then
	DarkRP.notify(owner, 1, 4, "Big Base Gate is getting Destroyed. - HP left: "..self.dmg)
	end
	if self.dmg == 70 then
	DarkRP.notify(owner, 1, 4, "Big Base Gate is getting Destroyed. - HP left: "..self.dmg)
	end
	if self.dmg == 60 then
	DarkRP.notify(owner, 1, 4, "Big Base Gate is getting Destroyed. - HP left: "..self.dmg)
	end
	if self.dmg == 50 then
	DarkRP.notify(owner, 1, 4, "Big Base Gate is getting Destroyed. - HP left: "..self.dmg)
	end
	if self.dmg == 40 then
	DarkRP.notify(owner, 1, 4, "Big Base Gate is getting Destroyed. - HP left: "..self.dmg)
	end
	if self.dmg == 30 then
	DarkRP.notify(owner, 1, 4, "Big Base Gate is getting Destroyed. - HP left: "..self.dmg)
	end
	if self.dmg == 20 then
	DarkRP.notify(owner, 1, 4, "Big Base Gate is getting Destroyed. - HP left: "..self.dmg)
	end
	if self.dmg == 10 then
	DarkRP.notify(owner, 1, 4, "Big Base Gate is getting Destroyed. - HP left: "..self.dmg)
	end
		
end

concommand.Add("Test", lol)