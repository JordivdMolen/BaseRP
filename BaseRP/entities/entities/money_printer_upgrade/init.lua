AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")
local State = 0

--------------LIMIT SETTINGS------------
local Limit = 1 -- VERY IMPORTANT
--------------------------------
Limit = Limit + 1
function ENT:Initialize()
	self:Getowning_ent():SetNWInt("Raidable", "Unraidable")
	----------------Counter V.1--------------------
	self:Getowning_ent():SetNWInt("RiadableSign", (self:Getowning_ent():GetNWInt("RiadableSign") or 0 ) + 1)
	DarkRP.notify(self:Getowning_ent(), 0, 5, "you own now: " ..self:Getowning_ent():GetNWInt("RiadableSign") .." printers of this kind")
	if self:Getowning_ent():GetNWInt("RiadableSign") == Limit then
		self:Remove()
	DarkRP.notify(self:Getowning_ent(), 0, 7, "you have reached the limit!")
	end
	--------------------Counter END--------------------
	self:SetModel("models/props_c17/consolebox01a.mdl")
	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetMoveType(MOVETYPE_VPHYSICS)
	self:SetSolid(SOLID_VPHYSICS)
	self:SetUseType(SIMPLE_USE)
	local phys = self:GetPhysicsObject()
	if phys:IsValid() then phys:Wake() end
	self.IsUpgrade = true
	self:Getowning_ent():SetNWInt("State_Sign", "Unfrozen")
	-------------------CONFIG-------------------
	local P1 = self:Getowning_ent():GetNWInt("BronzeP")
	local P2 = self:Getowning_ent():GetNWInt("SilverP")
	local P3 = self:Getowning_ent():GetNWInt("GoldP")
	local P4 = self:Getowning_ent():GetNWInt("DiamondP")
	local P5 = self:Getowning_ent():GetNWInt("rapidumP")
	local P6 = self:Getowning_ent():GetNWInt("")
	local P7 = self:Getowning_ent():GetNWInt("")
	local P8 = self:Getowning_ent():GetNWInt("")
	if (P3 or 0 ) >= 1 then
		self:Getowning_ent():SetNWInt("Raidable", "Raidable")
	end
	if (P4 or 0 ) >= 1 then
		self:Getowning_ent():SetNWInt("Raidable", "Raidable")
	end
	if (P5 or 0 ) >= 1 then
		self:Getowning_ent():SetNWInt("Raidable", "Raidable")
	end
	if (P6 or 0 ) >= 1 then
		self:Getowning_ent():SetNWInt("Raidable", "Raidable")
	end
	if (P7 or 0 ) >= 1 then
		self:Getowning_ent():SetNWInt("Raidable", "Raidable")
	end
	if (P8 or 0 ) >= 1 then
		self:Getowning_ent():SetNWInt("Raidable", "Raidable")
	end
		
end


function ENT:Think()
	local P1 = self:Getowning_ent():GetNWInt("BronzeP")
	local P2 = self:Getowning_ent():GetNWInt("SilverP")
	local P3 = self:Getowning_ent():GetNWInt("GoldP")
	local P4 = self:Getowning_ent():GetNWInt("DiamondP")
	local P5 = self:Getowning_ent():GetNWInt("rapidumP")
	local P6 = self:Getowning_ent():GetNWInt("")
	local P7 = self:Getowning_ent():GetNWInt("")
	local P8 = self:Getowning_ent():GetNWInt("")
	if (P3 or 0 ) == 0 then
		self:Getowning_ent():SetNWInt("Raidable", "Unraidable")
	end
	if (P4 or 0 ) == 0 then
		self:Getowning_ent():SetNWInt("Raidable", "Unraidable")
	end
	if (P5 or 0 ) == 0	then
		self:Getowning_ent():SetNWInt("Raidable", "Unraidable")
	end
	if (P6 or 0 ) == 0 then
		self:Getowning_ent():SetNWInt("Raidable", "Unraidable")
	end
	if (P7 or 0 ) == 0 then
		self:Getowning_ent():SetNWInt("Raidable", "Unraidable")
	end
	if (P8 or 0 ) == 0 then
		self:Getowning_ent():SetNWInt("Raidable", "Unraidable")
	end
	if (P3 or 0 ) >= 1 then
		self:Getowning_ent():SetNWInt("Raidable", "Raidable")
	end
	if (P4 or 0 ) >= 1 then
		self:Getowning_ent():SetNWInt("Raidable", "Raidable")
	end
	if (P5 or 0 ) >= 1 then
		self:Getowning_ent():SetNWInt("Raidable", "Raidable")
	end
	if (P6 or 0 ) >= 1 then
		self:Getowning_ent():SetNWInt("Raidable", "Raidable")
	end
	if (P7 or 0 ) >= 1 then
		self:Getowning_ent():SetNWInt("Raidable", "Raidable")
	end
	if (P8 or 0 ) >= 1 then
		self:Getowning_ent():SetNWInt("Raidable", "Raidable")
	end
	----------------------
	self.Entity:NextThink(CurTime())
end
function ENT:OnRemove()
	self:Getowning_ent():SetNWInt("Raidable", "Unraidable")
	self:Getowning_ent():SetNWInt("RiadableSign", (self:Getowning_ent():GetNWInt("RiadableSign") or 0 ) - 1)
	DarkRP.notify(self:Getowning_ent(), 0, 5, "your RaidableSign is sucesfully removed. it has been deleted from the limit count. you own now: " ..self:Getowning_ent():GetNWInt("RiadableSign") .." printers of this kind")
end


function ENT:Use(ply)
if ply == self:Getowning_ent() then
	if (CurTime() or 1 ) >= (self.KeyPress or 1) then
		if State == 0 then
			self:SetMoveType(MOVETYPE_NONE)
			State = 1
			self:Getowning_ent():SetNWInt("State_Sign", "Frozen")
		elseif State == 1 then
			self:Getowning_ent():SetNWInt("State_Sign", "Unfrozen")
			self:PhysicsInit(SOLID_VPHYSICS)
		self:SetMoveType(MOVETYPE_VPHYSICS)
		self:SetSolid(SOLID_VPHYSICS)
			State = 0
		end
		self.KeyPress = (CurTime() or 1 ) + 1
	end;
	end
end
