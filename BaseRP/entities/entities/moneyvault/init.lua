AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")


ENT.SeizeReward = 950
local Color = Color( 0, 0, 0, 0 )
local name = "BaseRP Structure Destroyer"
local health = 100 -- Health of the structure

function ENT:Initialize()
	self:SetModel("models/props_junk/sawblade001a.mdl")
	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetMoveType(MOVETYPE_VPHYSICS)
	self:SetSolid(SOLID_VPHYSICS)
	self:SetColor( Color )
	local phys = self:GetPhysicsObject()
	heat = StartHeath
	phys:Wake()
	self.damage = health
	self:SetNWInt("PrintB", health)
	
			
end

function ENT:Destruct()
	local vPoint = self:GetPos()
	local effectdata = EffectData()
	effectdata:SetStart(vPoint)
	effectdata:SetOrigin(vPoint)
	effectdata:SetScale(1)
	util.Effect("Explosion", effectdata)
	DarkRP.notify(self:Getowning_ent(), 1, 4, name.. " Destroyed")
	self:Remove()
end

function ENT:Touch( ent )
		self.damage = (self.damage or 100) - 0.1
		if self.damage < 0 then
		self:Destruct()
		self:Remove()
		end
		self:SetNWInt("PrintB", heat)
		self:SetNWInt("PrintB", self.damage)
end

	