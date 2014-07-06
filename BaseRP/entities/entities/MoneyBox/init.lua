-- RRPX Money Printer reworked for DarkRP by philxyz
AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")
local MoneyBox = "MoneyBox" ..math.random(1,math.random(100,100000))
concommand.Add(MoneyBox, Darma)


ENT.SeizeReward = 950
local Color = Color( 0, 0, 0, 0 )
function ENT:Initialize()
	self:SetModel("models/props_lab/harddrive02.mdl")
	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetMoveType(MOVETYPE_VPHYSICS)
	self:SetSolid(SOLID_VPHYSICS)
	self:SetColor( Color )
	local phys = self:GetPhysicsObject()
	self:SetNWInt("Money", MoneyBox)
	phys:Wake()
	
	local owner = self:Getowning_ent()
	owner = (IsValid(owner) and owner:Nick()) or DarkRP.getPhrase("unknown")
end

function ENT:Use(ply)


	DarkRP.notify(ply, 1, 4, "Your MoneyBox number is: "..MoneyBox)
	self.Number = MoneyBox
end

function Darma(ply,command,args)

	
if args[1] == "setmoney" then
	DarkRP.notify(ply, 1, 4, "Your MoneyBox number is: " ..args[2])
	self.Number = args[2]
else
	umsg.Start("Derma",ply)
	umsg.End()
	
	umsg.Start("up",ply)
	timer.Simple(6, function() umsg.Start("Down",ply) end )
	
end
end

function derg()

end

function ENT:OnRemove(ply)
	DarkRP.notify(ply , 1, 4, "Your MoneyBox is removed")
	umsg.Start("OnRemove",ply)
	umsg.End()
	
end
function Money()
	
	owner:AddMoney(self:GetWNInt("Money"))
end

usermessage.Hook( "Money", Money )