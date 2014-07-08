AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")

ENT.SeizeReward = 950

--Settings--
local Color = Color( 255, 145, 0, 0 )
local PrintTime1 = 1 --Range of the random timer--
local PrintTime2 = 50
local Health = 500
local PrintAmountRange1 = 2000
local PrintAmountRange2 = 2500
local overheatchance = 100 -- 3 is minimum and biggest change to explode
local PrintMore
local Limit = 6 -- VERY IMPORTANT
Limit = Limit + 1
function ENT:Initialize()
	self:SetModel("models/props_lab/reciever01b.mdl")
	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetMoveType(MOVETYPE_VPHYSICS)
	self:SetSolid(SOLID_VPHYSICS)
	self:SetColor( Color )
	self:SetNWInt("PrintB",Health)
	local phys = self:GetPhysicsObject()
	phys:Wake()

	self.sparking = false
	self.damage = Health
	self.IsMoneyPrinter = true
	timer.Simple(math.random(PrintTime1, PrintTime2), function() PrintMore(self) end)

	self.sound = CreateSound(self, Sound("ambient/levels/labs/equipment_printer_loop1.wav"))
	self.sound:SetSoundLevel(52)
	self.sound:PlayEx(1, 100)
	self:Getowning_ent():SetNWInt("rapidumP", (self:Getowning_ent():GetNWInt("rapidumP") or 0 ) + 1)
	DarkRP.notify(self:Getowning_ent(), 0, 5, "you own now: " ..self:Getowning_ent():GetNWInt("rapidumP") .." printers of this kind")
	if self:Getowning_ent():GetNWInt("rapidumP") == Limit then
		self:Remove()
	DarkRP.notify(self:Getowning_ent(), 0, 7, "you have reached the limit!")
	end
end

function ENT:OnTakeDamage(dmg)
	if self.burningup then return end
	DarkRP.notify(self:Getowning_ent(), 0, 7, tostring(dmg:GetAttacker()) .." did destroy your printer, !!DESTROYER DID RECEIVE 1/2 OF BUY PRICE")
	  dmg:GetAttacker():addMoney(50000)
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
	Health = self.damage
	self:SetNWInt("PrintB",Health)
end

function ENT:Destruct()
	local vPoint = self:GetPos()
	local effectdata = EffectData()
	effectdata:SetStart(vPoint)
	effectdata:SetOrigin(vPoint)
	effectdata:SetScale(1)
	util.Effect("Explosion", effectdata)
	DarkRP.notify(self:Getowning_ent(), 1, 4, DarkRP.getPhrase("money_printer_exploded"))
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
	timer.Simple(3, function()
		if not IsValid(ent) then return end
		ent:CreateMoneybag()
	end)
end

function ENT:CreateMoneybag()
	if not IsValid(self) or self:IsOnFire() then return end

	local MoneyPos = self:GetPos()

	local amount = math.random(PrintAmountRange1,PrintAmountRange2)

	local prevent, hookAmount = hook.Run("moneyPrinterPrintMoney", self, amount)
	if prevent == true then return end

	amount = hookAmount or amount

	if GAMEMODE.Config.printeroverheat then
		local overheatchance
		if GAMEMODE.Config.printeroverheatchance <= 3 then
			overheatchance = 22
		else
			overheatchance = GAMEMODE.Config.printeroverheatchance or 22
		end
		if math.random(1, overheatchance) == 3 then self:BurstIntoFlames() end
	end

	local moneybag = DarkRP.createMoneyBag(Vector(MoneyPos.x + 15, MoneyPos.y, MoneyPos.z + 0), amount)
	hook.Run("moneyPrinterPrinted", self, moneybag)
	self.sparking = false
	timer.Simple(math.random(PrintTime1, PrintTime2), function() PrintMore(self) end)
	DarkRP.notify(self:Getowning_ent(), 0, 7, "your Rapidum printer has printed: $" ..amount )
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

function ENT:OnRemove()
	if self.sound then
		self.sound:Stop()
	end
		self:Getowning_ent():SetNWInt("rapidumP", (self:Getowning_ent():GetNWInt("rapidumP") or 0 ) - 1)
		DarkRP.notify(self:Getowning_ent(), 0, 5, "your moneyprinters is sucesfully removed. it has been deleted from the limit count. you own now: " ..self:Getowning_ent():GetNWInt("rapidumP") .." printers of this kind")
end