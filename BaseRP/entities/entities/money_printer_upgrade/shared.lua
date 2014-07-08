ENT.Type = "anim"
ENT.Base = "base_gmodentity"
ENT.PrintName = "Upgrade"
ENT.Author = "Koolaidmini"
ENT.Spawnable = true
ENT.AdminSpawnable = true

function ENT:SetupDataTables()
	self:NetworkVar("Entity", 0, "owning_ent")
end