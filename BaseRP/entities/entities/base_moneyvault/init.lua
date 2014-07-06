-- RRPX Money Printer reworked for DarkRP by philxyz
AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")


ENT.SeizeReward = 950
local Color = Color( 0, 0, 0, 0 )
function ENT:Initialize()
	self:SetModel("models/props_lab/blastdoor001c.mdl")
	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetMoveType(MOVETYPE_VPHYSICS)
	self:SetSolid(SOLID_VPHYSICS)
	self:SetColor( Color )
	local phys = self:GetPhysicsObject()
	phys:Wake()
	self.damage = 150
end

function ENT:OnTakeDamage(dmg)
	if self.burningup then return end

	self.damage = (self.damage or 100) - dmg:GetDamage()
	if self.damage <= 0 then
			self:Destruct()
			self:Remove()
		end
	self:SetNWInt("PrintB", self.damage)
	if self.damage == 140 then
	DarkRP.notify(self:Getowning_ent(), 1, 4, "Big Base Gate is getting Destroyed. - HP left: "..self.damage)
	end
	if self.damage == 130 then
	DarkRP.notify(self:Getowning_ent(), 1, 4, "Big Base Gate is getting Destroyed. - HP left: "..self.damage)
	end
	if self.damage == 120 then
	DarkRP.notify(self:Getowning_ent(), 1, 4, "Big Base Gate is getting Destroyed. - HP left: "..self.damage)
	end
	if self.damage == 110 then
	DarkRP.notify(self:Getowning_ent(), 1, 4, "Big Base Gate is getting Destroyed. - HP left: "..self.damage)
	end
	if self.damage == 100 then
	DarkRP.notify(self:Getowning_ent(), 1, 4, "Big Base Gate is getting Destroyed. - HP left: "..self.damage)
	end
	if self.damage == 90 then
	DarkRP.notify(self:Getowning_ent(), 1, 4, "Big Base Gate is getting Destroyed. - HP left: "..self.damage)
	end
	if self.damage == 80 then
	DarkRP.notify(self:Getowning_ent(), 1, 4, "Big Base Gate is getting Destroyed. - HP left: "..self.damage)
	end
	if self.damage == 70 then
	DarkRP.notify(self:Getowning_ent(), 1, 4, "Big Base Gate is getting Destroyed. - HP left: "..self.damage)
	end
	if self.damage == 60 then
	DarkRP.notify(self:Getowning_ent(), 1, 4, "Big Base Gate is getting Destroyed. - HP left: "..self.damage)
	end
	if self.damage == 50 then
	DarkRP.notify(self:Getowning_ent(), 1, 4, "Big Base Gate is getting Destroyed. - HP left: "..self.damage)
	end
	if self.damage == 40 then
	DarkRP.notify(self:Getowning_ent(), 1, 4, "Big Base Gate is getting Destroyed. - HP left: "..self.damage)
	end
	if self.damage == 30 then
	DarkRP.notify(self:Getowning_ent(), 1, 4, "Big Base Gate is getting Destroyed. - HP left: "..self.damage)
	end
	if self.damage == 20 then
	DarkRP.notify(self:Getowning_ent(), 1, 4, "Big Base Gate is getting Destroyed. - HP left: "..self.damage)
	end
	if self.damage == 10 then
	DarkRP.notify(self:Getowning_ent(), 1, 4, "Big Base Gate is getting Destroyed. - HP left: "..self.damage)
	end
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