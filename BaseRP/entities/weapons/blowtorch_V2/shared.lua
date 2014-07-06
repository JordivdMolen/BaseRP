if ( SERVER ) then

        AddCSLuaFile( "shared.lua" )
        SWEP.HoldType       = "ar2"
        
end

if ( CLIENT ) then

        SWEP.PrintName  = "Blow Torch V2"                        
        SWEP.Author     = "Wolly, Light Demon, AgentJ"
        SWEP.Slot       = 3
        SWEP.SlotPos    = 1
        SWEP.IconLetter = "w"     
		SWEP.Instructions	= "Left click breaks things. Right click repairs things."
end


SWEP.Base     = "weapon_base"


SWEP.Spawnable       = true
SWEP.AdminSpawnable  = true

SWEP.ViewModel    = "models/weapons/v_shotgun.mdl"
SWEP.WorldModel   = "models/weapons/w_shotgun.mdl"
SWEP.Category = "BaseRP"
SWEP.Primary.ClipSize		= -1
SWEP.Primary.DefaultClip	= -1
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "none"

SWEP.Secondary.ClipSize		= -1
SWEP.Secondary.DefaultClip	= -1
SWEP.Secondary.Automatic	= false
SWEP.Secondary.Ammo			= "none"


SWEP.Weight             = 5
SWEP.AutoSwitchTo       = false
SWEP.AutoSwitchFrom     = false
SWEP.health = 0
SWEP.num = 0
function SWEP:Think()
        --if CLIENT then return end
        if not self.Owner then return end
		 local trace = util.GetPlayerTrace(self.Owner)
		 local tr = util.TraceLine(trace)
		 local dist = self.Owner:GetPos():Distance(tr.HitPos)
	if SERVER then			
	if (tr.Entity:IsValid() and not tr.Entity:IsWorld() and not tr.Entity:IsPlayer() and not tr.Entity:IsNPC()) then
	
		if (tr.Entity.cbt != nil) then
			self.num = tr.Entity.cbt.health
		else
			
			local h = tr.Entity:GetPhysicsObject():GetMass() * 4
			local maxhealth = math.Clamp( h, 1, 4000 )
			self.num = maxhealth
			
		end
	else
		self.num = 0
		
	end	
	self.Owner:SetNetworkedInt("health", self.num)
	end
	
		--self.Owner:SetNetworkedInt(healht, self.num)
		 
		
			if self.Owner:KeyDown(IN_ATTACK) then
				if CLIENT then
					local effectdata = EffectData()
					effectdata:SetOrigin( self.Owner:GetShootPos())
					effectdata:SetAngle( self.Owner:GetAimVector():Angle() )
					effectdata:SetScale( 2 )
					util.Effect( "MuzzleEffect", effectdata )
                
					if self.Owner:GetPos():Distance(tr.HitPos)>100 then return end
				local effectdata = EffectData()
                 effectdata:SetOrigin( tr.HitPos )
                 effectdata:SetNormal( tr.HitNormal*2 )
                 effectdata:SetMagnitude( 1 )
                 effectdata:SetScale( 1 )
                 effectdata:SetRadius( 2 )
				util.Effect( "Sparks", effectdata )
				end
					if dist <100 and SERVER then
						local attack = cbt_dealdevhit(tr.Entity, 2, 32 )
							if attack == 2 then
					
								local wreck = ents.Create( "wreckedstuff" )
										wreck:SetModel( tr.Entity:GetModel() )
										wreck:SetAngles(  tr.Entity:GetAngles() )
										wreck:SetPos(  tr.Entity:GetPos() )
										wreck:Spawn()
										wreck:Activate()
										wreck.deathtype = 1
								tr.Entity:Remove()
							end
				
					end
			end
		
			if self.Owner:KeyDown(IN_ATTACK2) then
				if CLIENT then
				local effectdata = EffectData()
				effectdata:SetOrigin( self.Owner:GetShootPos())
				effectdata:SetAngle( self.Owner:GetAimVector():Angle() )
				effectdata:SetScale( 2 )
				util.Effect( "MuzzleEffect", effectdata )
                
					if self.Owner:GetPos():Distance(tr.HitPos)>100 then return end
					local effectdata = EffectData()
					effectdata:SetOrigin( tr.HitPos )
					effectdata:SetNormal( tr.HitNormal*2 )
					effectdata:SetMagnitude( 1 )
					effectdata:SetScale( 1 )
					effectdata:SetRadius( 2 )
					util.Effect( "Sparks", effectdata )
				end
				if dist <100 and SERVER then
					cbt_gcxrepair(tr.Entity, 5)
				end 
			end
				
end

function SWEP:Reload()

end

function SWEP:SecondaryAttack()

end

function SWEP:PrimaryAttack()
        

        --self.Weapon:EmitSound("", 100, 100)
end 

function SWEP:CustomAmmoDisplay()
self.AmmoDisplay = self.AmmoDisplay or {}
self.health = LocalPlayer():GetNetworkedInt("health")

self.AmmoDisplay.Draw = true

	self.AmmoDisplay.PrimaryClip = self.health //Health
	self.AmmoDisplay.PrimaryAmmo = 0  

return self.AmmoDisplay 
end 

