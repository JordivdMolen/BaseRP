/*--------------------------------------------------------
Default teams. If you make a team above the citizen team, people will spawn with that team!
--------------------------------------------------------*/
TEAM_CITIZEN = DarkRP.createJob("Citizen", {
	color = Color(20, 150, 20, 255),
	model = {
		"models/player/Group01/Female_01.mdl",
		"models/player/Group01/Female_02.mdl",
		"models/player/Group01/Female_03.mdl",
		"models/player/Group01/Female_04.mdl",
		"models/player/Group01/Female_06.mdl",
		"models/player/group01/male_01.mdl",
		"models/player/Group01/Male_02.mdl",
		"models/player/Group01/male_03.mdl",
		"models/player/Group01/Male_04.mdl",
		"models/player/Group01/Male_05.mdl",
		"models/player/Group01/Male_06.mdl",
		"models/player/Group01/Male_07.mdl",
		"models/player/Group01/Male_08.mdl",
		"models/player/Group01/Male_09.mdl"
	},
	description = [[The Citizen is the most basic level of society you can hold besides being a hobo. You have no specific role in city life.]],
	weapons = {},
	command = "citizen",
	max = 0,
	salary = 45,
	admin = 0,
	vote = false,
	hasLicense = false,
	candemote = false
})

TEAM_POLICE = DarkRP.createJob("Civil Protection", {
	color = Color(25, 25, 170, 255),
	model = {"models/player/police.mdl", "models/player/police_fem.mdl"},
	description = [[The protector of every citizen that lives in the city.
		You have the power to arrest criminals and protect innocents.
		Hit a player with your arrest baton to put them in jail.
		Bash a player with a stunstick and they may learn to obey the law.
		The Battering Ram can break down the door of a criminal, with a warrant for their arrest.
		The Battering Ram can also unfreeze frozen props (if enabled).
		Type /wanted <name> to alert the public to the presence of a criminal.]],
	weapons = {"arrest_stick", "unarrest_stick", "weapon_glock2", "stunstick", "door_ram", "weaponchecker"},
	command = "cp",
	max = 4,
	salary = 65,
	admin = 0,
	vote = true,
	hasLicense = true
})

TEAM_GANG = DarkRP.createJob("Gangster", {
	color = Color(75, 75, 75, 255),
	model = {
		"models/player/Group03/Female_01.mdl",
		"models/player/Group03/Female_02.mdl",
		"models/player/Group03/Female_03.mdl",
		"models/player/Group03/Female_04.mdl",
		"models/player/Group03/Female_06.mdl",
		"models/player/group03/male_01.mdl",
		"models/player/Group03/Male_02.mdl",
		"models/player/Group03/male_03.mdl",
		"models/player/Group03/Male_04.mdl",
		"models/player/Group03/Male_05.mdl",
		"models/player/Group03/Male_06.mdl",
		"models/player/Group03/Male_07.mdl",
		"models/player/Group03/Male_08.mdl",
		"models/player/Group03/Male_09.mdl"},
	description = [[The lowest person of crime.
		A gangster generally works for the Mobboss who runs the crime family.
		The Mob boss sets your agenda and you follow it or you might be punished.]],
	weapons = {},
	command = "gangster",
	max = 3,
	salary = 45,
	admin = 0,
	vote = false,
	hasLicense = false
})

TEAM_MOB = DarkRP.createJob("Mob boss", {
	color = Color(25, 25, 25, 255),
	model = "models/player/gman_high.mdl",
	description = [[The Mob boss is the boss of the criminals in the city.
		With his power he coordinates the gangsters and forms an efficient crime organization.
		He has the ability to break into houses by using a lockpick.
		The Mob boss posesses the ability to unarrest you.]],
	weapons = {"lockpick", "unarrest_stick"},
	command = "mobboss",
	max = 1,
	salary = 60,
	admin = 0,
	vote = false,
	hasLicense = false
})


TEAM_GUN = DarkRP.createJob("Gun Dealer", {
	color = Color(255, 140, 0, 255),
	model = "models/player/monk.mdl",
	description = [[A Gun Dealer is the only person who can sell guns to other people.
		Make sure you aren't caught selling illegal firearms to the public! You might get arrested!]],
	weapons = {},
	command = "gundealer",
	max = 2,
	salary = 45,
	admin = 0,
	vote = false,
	hasLicense = false
})

TEAM_MEDIC = DarkRP.createJob("Medic", {
	color = Color(47, 79, 79, 255),
	model = "models/player/kleiner.mdl",
	description = [[With your medical knowledge you work to restore players to full health.
		Without a medic, people cannot be healed.
		Left click with the Medical Kit to heal other players.
		Right click with the Medical Kit to heal yourself.]],
	weapons = {"med_kit"},
	command = "medic",
	max = 3,
	salary = 45,
	admin = 0,
	vote = false,
	hasLicense = false,
	medic = true
})


TEAM_CHIEF = DarkRP.createJob("Civil Protection Chief", {
	color = Color(20, 20, 255, 255),
	model = "models/player/combine_soldier_prisonguard.mdl",
	description = [[The Chief is the leader of the Civil Protection unit.
		Coordinate the police force to enforce law in the city.
		Hit a player with arrest baton to put them in jail.
		Bash a player with a stunstick and they may learn to obey the law.
		The Battering Ram can break down the door of a criminal, with a warrant for his/her arrest.
		Type /wanted <name> to alert the public to the presence of a criminal.
		Type /jailpos to set the Jail Position]],
	weapons = {"arrest_stick", "unarrest_stick", "weapon_deagle2", "stunstick", "door_ram", "weaponchecker"},
	command = "chief",
	max = 1,
	salary = 75,
	admin = 0,
	vote = false,
	hasLicense = true,
	chief = true,
	NeedToChangeFrom = TEAM_POLICE
})

TEAM_MAYOR = DarkRP.createJob("Mayor", {
	color = Color(150, 20, 20, 255),
	model = "models/player/breen.mdl",
	description = [[The Mayor of the city creates laws to govern the city.
	If you are the mayor you may create and accept warrants.
	Type /wanted <name>  to warrant a player.
	Type /jailpos to set the Jail Position.
	Type /lockdown initiate a lockdown of the city.
	Everyone must be inside during a lockdown.
	The cops patrol the area.
	/unlockdown to end a lockdown]],
	weapons = {},
	command = "mayor",
	max = 1,
	salary = 85,
	admin = 0,
	vote = true,
	hasLicense = false,
	mayor = true
})

TEAM_HOBO = DarkRP.createJob("Hobo", {
	color = Color(80, 45, 0, 255),
	model = "models/player/corpse1.mdl",
	description = [[The lowest member of society. Everybody laughs at you.
		You have no home.
		Beg for your food and money
		Sing for everyone who passes to get money
		Make your own wooden home somewhere in a corner or outside someone else's door]],
	weapons = {"weapon_bugbait"},
	command = "hobo",
	max = 5,
	salary = 0,
	admin = 0,
	vote = false,
	hasLicense = false,
	candemote = false,
	hobo = true
})

TEAM_CUSTOM = DarkRP.createJob("Banker", {
	color = Color(0,150,255,255),
	model = "models/player/Barney.mdl",
	description = [[Put peoples money in a safe unraidable place]],
	weapons = {""},
	command = "Banker",
	max = 4,
	salary = 300,
	admin = 0,
	vote = false,
	hasLicense = false,
	customCheck = function(ply) return ply:GetNWString("usergroup") == "Donator" or ply:GetNWString("usergroup") == "superadmin"or ply:GetNWString("usergroup") == "hoster"or ply:GetNWString("usergroup") == "AdminTeam"or ply:GetNWString("usergroup") == "vip"or ply:GetNWString("usergroup") == "Co_Owner" end,
	CustomCheckFailMsg = "This Job Is Donator Only!",
})

TEAM_CUSTOM = DarkRP.createJob("Thief", {
	color = Color(102, 102, 102,255),
	model = "models/player/Barney.mdl",
	description = [[Steal from others using your skills to pick locks, steal printers, drug labs, whatever you want, don't get caught]],
	weapons = {"keypad_cracker" , "weapon_mad_knife", "lockpick"},
	command = "Thief",
	max = 10,
	salary = 50,
	admin = 0,
	vote = false,
	hasLicense = false,
})

TEAM_CUSTOM = DarkRP.createJob("Professional Thief", {
	color = Color(102, 102, 102,255),
	model = "models/player/Barney.mdl",
	description = [[You are a professional thief, not like the small fry that exist too, you have access to better resources than them]],
	weapons = {"thief_plus" , "weapon_mad_knife", "lockpickpremium"},
	command = "Thiefplus",
	max = 999,
	salary = 100,
	admin = 0,
	vote = false,
	hasLicense = false,
    customCheck = function(ply) return ply:GetNWString("usergroup") == "Donator" or ply:GetNWString("usergroup") == "superadmin"or ply:GetNWString("usergroup") == "hoster"or ply:GetNWString("usergroup") == "AdminTeam"or ply:GetNWString("usergroup") == "vip"or ply:GetNWString("usergroup") == "Co_Owner" end,
	CustomCheckFailMsg = "This Job Is Donator Only!",
})

TEAM_CUSTOM = DarkRP.createJob("Taxi Driver", {
	color = Color(149,88,232,255),
	model = "models/player/Barney.mdl",
	description = [[You are a Taxi Driver, Your Job is to Drive People to Their Destination, (Max Payment $ 50)you may kill people if they dont pay]],
	weapons = {"weapon_mad_knife"},
	command = "Taxi",
	max = 4,
	salary = 100,
	admin = 0,
	vote = false,
	hasLicense = false,
})

TEAM_CUSTOM = DarkRP.createJob("Car dealer", {
	color = Color(149,88,232,255),
	model = "models/player/Barney.mdl",
	description = [[You are a Car Dealer, Your Job is To Sell Cars to The People of The Server! Only SuperAdmin + Donator]],
	weapons = {"weapon_mad_knife"},
	command = "Car",
	max = 5,
	salary = 100,
	admin = 0,
	vote = false,
	hasLicense = false,
	customCheck = function(ply) return ply:GetNWString("usergroup") == "Donator" or ply:GetNWString("usergroup") == "superadmin"or ply:GetNWString("usergroup") == "hoster"or ply:GetNWString("usergroup") == "AdminTeam"or ply:GetNWString("usergroup") == "vip"or ply:GetNWString("usergroup") == "Co_Owner" end,
	CustomCheckFailMsg = "This Job Is Donator&Admin Only!"
})
	
TEAM_BD = DarkRP.createJob("FA:S black dealer", {
	color = Color(0,0,0,255),
	model = "models/player/Barney.mdl",
	description = [[Deal but if the police see it you can be arrested for selling illegal firearms]],
	weapons = {""},
	command = "FA",
	max = 10,
	salary = 100,
	admin = 0,
	vote = false,
	hasLicense = false,
})

TEAM_SP = DarkRP.createJob("Spiderman", {
	color = Color(0,122,222,255),
	model = "models/Humans/Group03/male_07.mdl",
	description = [[Run errands for people, be a douche and steal, to then parkour to freedom, endless possibilities, dont break your legs though]],
	weapons = {"climb_swep2", "spiderman's_swep"},
	command = "SP",
	max = 1,
	salary = 120,
	admin = 0,
	vote = false,
	hasLicense = false,
})

TEAM_CUSTOM = DarkRP.createJob("American Infantry", {
    color = Color(0,0,212,255),
    model = "models/player/tac_op2.mdl",
    description = [[Fight against the Russian menace during our War event]],
    weapons = {"fas2_m4a1","fas2_m1911"}, 
    command = "AmInf",
	max = 10,
	salary = 0,
    admin = 0,
    vote = false,
    hasLicense = true,
    customCheck = function(ply) return ply:GetNWString("usergroup") == "Donator" or ply:GetNWString("usergroup") == "superadmin"or ply:GetNWString("usergroup") == "hoster"or ply:GetNWString("usergroup") == "AdminTeam"or ply:GetNWString("usergroup") == "vip"or ply:GetNWString("usergroup") == "Co_Owner" end,
    CustomCheckFailMsg = "This Job Is Event Only!" 
})

TEAM_CUSTOM = DarkRP.createJob("Russian Infantry", {
	color = Color(212,0,0,255),
    model = "models/player/combine_shock_trooper1.mdl",
    description = [[Make sure the Glorious USSR doesnt fall to the filthy capitalists]],
    weapons = {"fas2_ak47","fas2_ots33"}, 
    command = "RusInf",
	max = 10,
	salary = 0,
    admin = 0,
    vote = false,
    hasLicense = true,
    customCheck = function(ply) return ply:GetNWString("usergroup") == "Donator" or ply:GetNWString("usergroup") == "superadmin"or ply:GetNWString("usergroup") == "hoster"or ply:GetNWString("usergroup") == "AdminTeam"or ply:GetNWString("usergroup") == "vip"or ply:GetNWString("usergroup") == "Co_Owner" end,
    CustomCheckFailMsg = "This Job Is Event Only!" 
})

TEAM_CUSTOM = DarkRP.createJob("American Scout", {
	color = Color(0,0,212,255),
    model = "models/player/tac_op3.mdl",
    description = [[Assist your fellow americans with your high RoF mp5a5, add a silencer for more stealth]],
    weapons = {"fas2_mp5a5","fas2_glock20"}, 
    command = "AmScout",
    max = 5,
	salary = 0,
    admin = 0,
    vote = false,
    hasLicense = true,
    customCheck = function(ply) return ply:GetNWString("usergroup") == "Donator" or ply:GetNWString("usergroup") == "superadmin"or ply:GetNWString("usergroup") == "hoster"or ply:GetNWString("usergroup") == "AdminTeam"or ply:GetNWString("usergroup") == "vip"or ply:GetNWString("usergroup") == "Co_Owner" end,
    CustomCheckFailMsg = "This Job Is Event Only!" 
})

TEAM_CUSTOM = DarkRP.createJob("Russian Specialist", {
    color = Color(212, 0, 0, 255),
    model = "models/player/combine_shock_trooper2.mdl",
    description = [[You are a russian specialist who excels in CQC with your PP19 Bizon]],
    weapons = {"fas2_pp19","fas2_ots33"}, 
    command = "RusSpec",
	max = 10,
	salary = 0,
    admin = 0,
    vote = false,
    hasLicense = true,
    customCheck = function(ply) return ply:GetNWString("usergroup") == "Donator" or ply:GetNWString("usergroup") == "superadmin"or ply:GetNWString("usergroup") == "hoster"or ply:GetNWString("usergroup") == "AdminTeam"or ply:GetNWString("usergroup") == "vip"or ply:GetNWString("usergroup") == "Co_Owner" end,
    CustomCheckFailMsg = "This Job Is Event Only!" 
})

TEAM_Adm = DarkRP.createJob("Admin on duty", {
	color = Color(200,200,20,255),
    model = "models/player/combine_specialforce_1.mdl",
    description = [[We make sure the rules are enforced, use @ if you need us]],
    weapons = {}, 
    command = "AoD",
	max = 10,
	salary = 0,
    admin = 1,
    vote = false,
    hasLicense = true,
})

TEAM_DOCTOR = DarkRP.createJob("Doctor", {
     color = Color(80, 5, 255, 0),
     model = "models/player/kleiner.mdl",
     description = [[Heal hurt people for a price or for free using your medical knowledge and your medkit]],
     weapons = {"med_kit"},
     command = "Medic", 
     max = 5,
     salary = 100, 
     admin = 0,
     vote = false,
     hasLicense = false,
})

TEAM_HITMAN = DarkRP.createJob("Hitman", {
    color = Color(0, 0, 0, 255),
    model = "models/player/combine_qrat_unit3.mdl",
    description = [[You are someone who makes other's problems dissappear, for a fee, change the price using /hitprice]],
    weapons = {"weapon_lockpick", "fas2_p226"},
    command = "Hitman", 
    max = 2,
    salary = 150, 
    admin = 0,
    vote = false,
    hasLicense = true,
})

TEAM_SWAT = DarkRP.createJob("Swat", {
    color = Color(0,0,153,255),
    model = "models/player/tac_op4.mdl",
    description = [[You are a SWAT unit, you are not to come into action unless the police is doing raids or heavy firearms are needed]],
    weapons = {"door_ram", "arrest_stick", "unarrest_stick", "stunstick","fas2_glock20", "fas2_mp5a5", "weaponchecker"},
    command = "Swat", 
    max = 5,
    salary = 200,
    admin = 0,
    vote = true,
    hasLicense = true,
})
   
TEAM_SWAT = DarkRP.createJob("Swat Leader", {
    color = Color(0,0,153,255),
    model = "models/player/combine_qrat_unit.mdl",
    description = [[You are the leader of the elite SWAT unit, you command your swat unit and make them work like the are a machine, SWAT must listen to your orders, CPs however, do not. Donator/Admin only]],
    weapons = {"door_ram","arrest_stick", "unarrest_stick", "stunstick", "fas2_p226", "fas2_m4a1", "weaponchecker"},
    command = "SwatL", 
    max = 1,
    salary = 200,
    admin = 0,
    vote = true,
    hasLicense = true,
    customCheck = function(ply) return ply:GetNWString("usergroup") == "Donator" or ply:GetNWString("usergroup") == "superadmin"or ply:GetNWString("usergroup") == "hoster"or ply:GetNWString("usergroup") == "AdminTeam"or ply:GetNWString("usergroup") == "vip"or ply:GetNWString("usergroup") == "Co_Owner" end,
    CustomCheckFailMsg = "This Job Is Donator Only!",

})   
TEAM_SWAT = DarkRP.createJob("Swat Medic", {
    color = Color(0,0,153,255),
    model = "models/player/tac_med5.mdl",
    description = [[You are the medic of the SWAT unit, you make sure that wounds that occur during Duty get healed using your medical kit you always carry with you]],
    weapons = {"door_ram", "arrest_stick", "unarrest_stick", "stunstick", "fas2_p226", "fas_ifak", "weaponchecker"},
    command = "SwatM", 
    max = 1,
    salary = 200,
    admin = 0,
    vote = true,
    hasLicense = true,
    customCheck = function(ply) return ply:GetNWString("usergroup") == "Donator" or ply:GetNWString("usergroup") == "superadmin"or ply:GetNWString("usergroup") == "hoster"or ply:GetNWString("usergroup") == "AdminTeam"or ply:GetNWString("usergroup") == "vip"or ply:GetNWString("usergroup") == "Co_Owner" end,
    CustomCheckFailMsg = "This Job Is Donator Only!",
})   
TEAM_SWAT = DarkRP.createJob("Swat Sniper", {
    color = Color(0,0,153,255),
    model = "models/player/tac_op7.mdl",
    description = [[You are the sniper of the SWAT unit, you cover your unit while they raid people from afar using your trusty sniper]],
    weapons = {"door_ram", "arrest_stick", "unarrest_stick", "stunstick", "fas2_sr25", "weaponchecker"},
    command = "SwatS", 
    max = 2,
    salary = 200,
    admin = 0,
    vote = true,
    hasLicense = true,
    customCheck = function(ply) return ply:GetNWString("usergroup") == "Donator" or ply:GetNWString("usergroup") == "superadmin"or ply:GetNWString("usergroup") == "AdminTeam"or ply:GetNWString("usergroup") == "vip"or ply:GetNWString("usergroup") == "Co_Owner" end,
    CustomCheckFailMsg = "This Job Is Donator Only!",
}) 

TEAM_DR = DarkRP.createJob("Drugs Dealer", {
    color = Color(0,0,153,255),
    model = "models/player/tac_op7.mdl",
    description = [[Be high!!!]],
    weapons = {""},
    command = "DR", 
    max = 1,
    salary = 500,
    admin = 0,
    vote = false,
    hasLicense = true,
}) 

TEAM_SPY = DarkRP.createJob("Spy", {
    color = Color(0,123,31,255),
    model = "models/player/combine_qrat_unit3.mdl",
    description = [[Spy on (government) people to see if you can find any information worth selling, like their entry codes, don't get caught]],
    weapons = {"fas2_dv2", "climb_swep2", "lockpickpremium", "weapon_cloaking_device"},
    command = "Spy",
    max = 3,
    salary = 200,
    admin = 0,
    vote = false,
    hasLicense = true,
})
TEAM_Help = DarkRP.createJob("Trial Mod", {
    color = Color(0,123,31,255),
    model = "models/player/combine_qrat_unit3.mdl",
    description = [[Free to help real mods]],
    weapons = {"fas2_dv2", "thief_plus", "lockpickpremium", "weapon_cloaking_device"},
    command = "Help",
    max = 3,
    salary = 0,
    admin = 0,
    vote = false,
    hasLicense = true,
})
TEAM_JM = DarkRP.createJob("JM's job", {
    color = Color(0,123,31,255),
    model = "models/player/combine_qrat_unit3.mdl",
    description = [[if you arent JM dont TRY to use this job!]],
    weapons = {""},
    command = "JM",
    max = 1,
    salary = 0,
    admin = 1,
    vote = false,
    hasLicense = true,
})
TEAM_Dt = DarkRP.createJob("JM's pet" , {
	color = Color(0,123,31,255),
	model = "models/dog.mdl",
	description = [[KILLER]],
	weapons = {""},
	command = "Dt",
	max = 1,
	salary = 100,
	admin = 1,
	vote = false,
	hasLicense = true,
})

TEAM_Wirer = DarkRP.createJob('Advanced wirer', {
color = Color(0, 0, 0, 255),
model = 'models/player/group01/male_01.mdl',
description = [[We wire stuff for people that dont know how to do it]],
weapons = {},
command = 'wirerSimple',
max = 2,
salary = 1000,
admin = 0,
vote = true,
hasLicense = true,
})
TEAM_Admin = DarkRP.createJob('Advanced Admin', {
color = Color(0, 0, 0, 255),
model = 'models/player/group01/male_01.mdl',
description = [[We help]],
weapons = {'thief_plus', 'lockpickpremium', 'weapon_Knife'},
command = 'ADVadmin',
max = 5,
salary = 1000,
admin = 0,
vote = true,
hasLicense = true,
VIPOnly = true,
customCheck = function(ply) return ply:GetNWString("usergroup") == "Donator" or ply:GetNWString("usergroup") == "superadmin"or ply:GetNWString("usergroup") == "hoster"or ply:GetNWString("usergroup") == "AdminTeam"or ply:GetNWString("usergroup") == "vip"or ply:GetNWString("usergroup") == "Co_Owner" end,
CustomCheckFailMsg = "This Job Is Event Only!" 
})

TEAM_Admin = DarkRP.createJob('Raider', {
color = Color(0, 0, 0, 255),
model = 'models/player/group01/male_01.mdl',
description = [[We can raid ur ass]],
weapons = {'blowtorch'},
command = 'Raider',
max = 5,
salary = 1000,
admin = 0,
vote = true,
hasLicense = true,
})
	
/*-

-- Compatibility for when default teams are disabled
TEAM_CITIZEN = TEAM_CITIZEN  or -1
TEAM_POLICE  = TEAM_POLICE   or -1
TEAM_GANG    = TEAM_GANG     or -1
TEAM_MOB     = TEAM_MOB      or -1
TEAM_GUN     = TEAM_GUN      or -1
TEAM_MEDIC   = TEAM_MEDIC    or -1
TEAM_CHIEF   = TEAM_CHIEF    or -1
TEAM_MAYOR   = TEAM_MAYOR    or -1
TEAM_HOBO    = TEAM_HOBO     or -1


/*
--------------------------------------------------------
HOW TO MAKE A DOOR GROUP
--------------------------------------------------------
AddDoorGroup("NAME OF THE GROUP HERE, you see this when looking at a door", Team1, Team2, team3, team4, etc.)


The default door groups, can also be used as examples:
*/
AddDoorGroup("Cops and Mayor only", TEAM_CHIEF, TEAM_POLICE, TEAM_MAYOR)
AddDoorGroup("Gundealer only", TEAM_GUN)


/*
--------------------------------------------------------
HOW TO MAKE AN AGENDA
--------------------------------------------------------
AddAgenda(Title of the agenda, Manager (who edits it), Listeners (the ones who just see and follow the agenda))

The default agenda's, can also be used as examples:
*/
AddAgenda("Gangster's agenda", TEAM_MOB, {TEAM_GANG})
AddAgenda("Police agenda", TEAM_MAYOR, {TEAM_CHIEF, TEAM_POLICE})

/*
---------------------------------------------------------------------------
HOW TO MAKE A GROUP CHAT
---------------------------------------------------------------------------
Pick one!
GAMEMODE:AddGroupChat(List of team variables separated by comma)

or

GAMEMODE:AddGroupChat(a function with ply as argument that returns whether a random player is in one chat group)
This one is for people who know how to script Lua.

*/
GM:AddGroupChat(function(ply) return ply:isCP() end)
GM:AddGroupChat(TEAM_MOB, TEAM_GANG)

/*---------------------------------------------------------------------------
Define which team joining players spawn into and what team you change to if demoted
---------------------------------------------------------------------------*/
GM.DefaultTeam = TEAM_CITIZEN

/*---------------------------------------------------------------------------
Define which teams belong to civil protection
Civil protection can set warrants, make people wanted and do some other police related things
---------------------------------------------------------------------------*/
GM.CivilProtection = {
	[TEAM_POLICE] = true,
	[TEAM_CHIEF] = true,
	[TEAM_MAYOR] = true,
}

/*---------------------------------------------------------------------------
Enable hitman goodies on this team
---------------------------------------------------------------------------*/
DarkRP.addHitmanTeam(TEAM_MOB)

/*---------------------------------------------------------------------------
Default demote groups
---------------------------------------------------------------------------*/
DarkRP.createDemoteGroup("Cops", {TEAM_POLICE, TEAM_CHIEF})
DarkRP.createDemoteGroup("Gangsters", {TEAM_GANG, TEAM_MOB})
