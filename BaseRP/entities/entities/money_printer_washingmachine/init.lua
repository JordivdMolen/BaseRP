-- RRPX Money Printer reworked for DarkRP by philxyz
	local Status1 = 0 -- DONT EDIT
AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")

ENT.SeizeReward = 950
local Name = "Universed Money Printer"
local Color = Color( 0, 0, 0, 0 )
local PrintAmount = 10000
local PrintTime1 = 1 --Range of the random timer--
local PrintTime2 = 2
local HeatSystem = true
local Health = 10000 -- Health
local PrintDis1 = 9000 --Range of the random timer of Inactive--
local PrintDis2 = 15000
local RefillPrice = 5000 -- The Rifill Price --
local PrintMore
function ENT:Initialize()
	self:SetNWInt("Reff", RefillPrice)
	self:SetNWInt("Name", Name)
	self:SetModel("models/props_lab/harddrive02.mdl")
	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetMoveType(MOVETYPE_VPHYSICS)
	self:SetSolid(SOLID_VPHYSICS)
	self:SetColor( Color )
	local phys = self:GetPhysicsObject()
	self.damage = Health
	phys:Wake()

	self.sparking = false
	self.IsMoneyPrinter = true
	timer.Simple(math.random(PrintTime1, PrintTime2), function() PrintMore(self) end)

	self.sound = CreateSound(self, Sound("ambient/levels/labs/equipment_printer_loop1.wav"))
	self.sound:SetSoundLevel(52)
	self.sound:PlayEx(1, 100)
	self:SetNWInt("PrintB", self.damage)
	self:SetNWInt("PrintA", PrintAmount)
	self:SetNWInt("PrintT1", PrintTime1)
	self:SetNWInt("PrintT2", PrintTime2)
	self:SetNWInt("Status", 0)
	local Status1 = self:GetNWInt("Status")
	local owner = self:Getowning_ent()
	Owner = (IsValid(owner) and owner:Nick()) or DarkRP.getPhrase("unknown")
end

function ENT:OnTakeDamage(dmg)
	if self.burningup then return end

	self.damage = (self.damage or 100) - dmg:GetDamage()
	if self.damage <= 0 then
		local rnd = math.random(1, 10)
		if rnd < 3 then
			self:BurstIntoFlames()
		else
			self:Destruct()
			self:Remove()
		end
	end
	self:SetNWInt("PrintB", self.damage)
end

function ENT:Destruct()
	local vPoint = self:GetPos()
	local effectdata = EffectData()
	effectdata:SetStart(vPoint)
	effectdata:SetOrigin(vPoint)
	effectdata:SetScale(1)
	util.Effect("Explosion", effectdata)
end

function ENT:BurstIntoFlames()
	local stopBurst = hook.Run("moneyPrinterCatchFire", self)
	if stopBurst == true then return end

	DarkRP.notify(self:Getowning_ent(), 0, 4, DarkRP.getPhrase("money_printer_overheating"))
	self.burningup = true
	local burntime = math.random(8, 18)
	self:Ignite(burntime, 0)
	timer.Simple(burntime, function() self:Fireball() end)
end

function ENT:Fireball()
	if not self:IsOnFire() then self.burningup = false return end
	local dist = math.random(20, 280) -- Explosion radius
	self:Destruct()
	for k, v in pairs(ents.FindInSphere(self:GetPos(), dist)) do
		if not v:IsPlayer() and not v:IsWeapon() and v:GetClass() ~= "predicted_viewmodel" and not v.IsMoneyPrinter then
			v:Ignite(math.random(5, 22), 0)
		elseif v:IsPlayer() then
			local distance = v:GetPos():Distance(self:GetPos())
			v:TakeDamage(distance / dist * 100, self, self)
		end
	end
	self:Remove()
end

PrintMore = function(ent)
	if not IsValid(ent) then return end

	ent.sparking = true
		if not IsValid(ent) then return end
		ent:CreateMoneybag()
	
end

function ENT:CreateMoneybag()
	Status1 = self:GetNWInt("Status")
	if not IsValid(self) or self:IsOnFire() then return end

	local MoneyPos = self:GetPos()

	local amount = PrintAmount

	local prevent, hookAmount = hook.Run("moneyPrinterPrintMoney", self, amount)
	if prevent == true then return end

	amount = hookAmount or amount
	if Status1 == 1 then
	local Pos = self:GetPos()
	local moneybag = DarkRP.createMoneyBag(Vector(MoneyPos.x + 0, MoneyPos.y + 0, MoneyPos.z + 10), amount)
	hook.Run("moneyPrinterPrinted", self, moneybag)
	self.sparking = false
	end
	timer.Simple(math.random(PrintTime1, PrintTime2), function() PrintMore(self) end)
end

function ENT:Think()

	if self:WaterLevel() > 0 then
		self:Destruct()
		self:Remove()
		return
	end

	if not self.sparking then return end

	local effectdata = EffectData()
	effectdata:SetOrigin(self:GetPos())
	effectdata:SetMagnitude(1)
	effectdata:SetScale(1)
	effectdata:SetRadius(2)
	util.Effect("Sparks", effectdata)
end

	

function ENT:Use(activator)
	if HeatSystem == true then
	Status1 = self:GetNWInt("Status")
	timer.Simple(math.random(PrintDis1, PrintDis2), function() self:SetNWInt("Status", 0) end )
	if(activator:IsPlayer()) and self:GetNWInt("Status") == 0 then
	DarkRP.notify(activator, 1, 4, "You have paid  $"..self:GetNWInt("Reff").." to refill your printer")
	activator:addMoney(-100)
	self:SetNWInt("Status", 1)
	end
	end
end



function ENT:OnRemove()
	if self.sound then
		self.sound:Stop()
	end
end


