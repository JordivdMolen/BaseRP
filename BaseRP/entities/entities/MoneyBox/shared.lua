ENT.Type = "anim"
ENT.Base = "base_structure"
ENT.PrintName = "MoneyBox"
ENT.Author = "JMteam09"
ENT.Spawnable = true
ENT.AdminSpawnable = true
ENT.Number = "Ey"

function ENT:SetupDataTables()
	self:NetworkVar("Int", 0, "price")
	self:NetworkVar("Entity", 0, "owning_ent")
end