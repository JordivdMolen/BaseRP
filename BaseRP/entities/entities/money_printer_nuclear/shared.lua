ENT.Type = "anim"
ENT.Base = "base_gmodentity"
ENT.PrintName = "Nuclear Money Printer"
ENT.Author = "Render Case and philxyz and Koolaidmini"
ENT.Spawnable = false
ENT.AdminSpawnable = false

function ENT:SetupDataTables()
	self:NetworkVar("Int", 0, "price")
	self:NetworkVar("Entity", 0, "owning_ent")
end