
DarkRP.createEntity("Gun lab", {
	ent = "gunlab",
	model = "models/props_c17/TrapPropeller_Engine.mdl",
	price = 500,
	max = 1,
	cmd = "buygunlab",
	allowed = {TEAM_GUN, TEAM_JM}
})

DarkRP.createEntity("Normal Money Printer", {
	ent = "money_printer",
	model = "models/props_c17/consolebox01a.mdl",
	price = 5000,
	max = 99,
	cmd = "buynormalprinter",
})

DarkRP.createEntity("Nuclear Money Printer", {
	ent = "money_printer_nuclear",
	model = "models/props_c17/oildrum001_explosive.mdl",
	price = 1000000,
	max = 99,
	cmd = "buynuclearprinter",
})

DarkRP.createEntity("Universed Money Printer", {
	ent = "money_printer_washingmachine",
	model = "models/props_lab/harddrive02.mdl",
	price = 1000000000,
	max = 99,
	cmd = "buyuniversedprinter",
})

DarkRP.createEntity("Bank", {
	ent = "bank_vault",
	model = "models/props_lab/harddrive02.mdl",
	price = 1,
	max = 99,
	cmd = "buymoneybox",
})

AddCustomShipment("blowtorch", {
	entity = "blowtorch",
	model = "models/weapons/w_fn_scar_h.mdl",
	price = 100,
	amount = 5,
	noship = false,
	separate = true,
	pricesep = 100,
})

AddCustomShipment("M9K Scar", {
	entity = "m9k_scar",
	model = "models/weapons/w_fn_scar_h.mdl",
	price = 5000,
	amount = 15,
	noship = false,
	allowed = {TEAM_GUN, TEAM_BD}
})

AddCustomShipment("M9K UMP45", {
	entity = "m9k_ump45",
	model = "models/weapons/w_hk_ump45.mdl",
	price = 3000,
	amount = 15,
	noship = false,
	allowed = {TEAM_GUN, TEAM_BD}
})


AddCustomShipment("M9K Striker12", {
	entity = "m9k_striker12",
	model = "models/weapons/w_striker_12g.mdl",
	price = 2500,
	amount = 15,
	noship = false,
	allowed = {TEAM_GUN, TEAM_BD}
})


AddCustomShipment("M9K M4a1 Iron", {
	entity = "m9k_m4a1",
	model = "models/weapons/w_m4a1_iron.mdl",
	price = 7500,
	amount = 15,
	noship = false,
	allowed = {TEAM_GUN, TEAM_BD}
})

AddCustomShipment("M9K FAMAS", {
	entity = "m9k_famas",
	model = "models/weapons/w_tct_famas.mdl",
	price = 20000,
	amount = 15,
	noship = false,
	allowed = {TEAM_GUN, TEAM_BD}
})

AddCustomShipment("M9K Ares Shrike", {
	entity = "m9k_ares_shrike",
	model = "models/weapons/w_ares_shrike.mdl",
	price = 50000,
	amount = 15,
	noship = false,
	allowed = {TEAM_GUN, TEAM_BD}
})

AddCustomShipment("M9K Jack Hammer", {
	entity = "m9k_jackhammer",
	model = "models/weapons/w_pancor_jackhammer.mdl",
	price = 90000,
	amount = 15,
	noship = false,
	allowed = {TEAM_GUN, TEAM_BD}
})


AddCustomShipment("M9K Double Barrel Shotgun", {
	entity = "m9k_dbarrel",
	model = "models/weapons/w_double_barrel_shotgun.mdl",
	price = 500000,
	amount = 15,
	noship = false,
	allowed = {TEAM_GUN, TEAM_BD}
})

DarkRP.createVehicle({
        name = "Jeep",
        model = "models/buggy.mdl",
        price = 500
})

DarkRP.createVehicle({
        name = "cadillac",
        model = "models/buggy.mdl",
        price = 50000
})


AddCustomShipment("M9K SVT 40", {
	entity = "m9k_svt40",
	model = "models/weapons/w_svt_40.mdl",
	price = 100000,
	amount = 15,
	noship = false,
	allowed = {TEAM_GUN, TEAM_BD}
})

AddCustomShipment("AK 47", {
	entity = "weapon_ak472",
	model = "models/weapons/w_rif_ak47.mdl",
	price = 100000,
	amount = 15,
	noship = false,
	allowed = {TEAM_GUN, TEAM_BD}
})
DarkRP.createEntity("-=[Big Base Gate]=-", {
        ent = "base_structure",
        model = "models/props_c17/consolebox05a.mdl",
        price = 100,
        max = 9999999999,
        cmd = "buybasebig",
})

DarkRP.createEntity("-=[Small Base Gate]=-", {
        ent = "auto_turret_gun",
        model = "models/props_c17/consolebox05a.mdl",
        price = 50,
        max = 9999999999,
        cmd = "buybasesmall",
})
DarkRP.createEntity("-=[Base Gate Health]=-", {
        ent = "auto_turret",
        model = "models/props_c17/consolebox05a.mdl",
        price = 50,
        max = 9999999999,
        cmd = "buybasehealth",
})

DarkRP.createEntity("-=[Base Structure Destroyer]=-", {
        ent = "moneyvault",
        model = "models/props_c17/consolebox05a.mdl",
        price = 5000,
        max = 9999999999,
        cmd = "buybasedestroyer",
})

DarkRP.createEntity("-=[Hobbo Printer]=-", {
        ent = "hobbo_money_printer",
        model = "models/props_c17/consolebox05a.mdl",
        price = 0,
        max = 4,
        cmd = "buyhobboprinter",
})

DarkRP.createEntity("-=[Wood Printer]=-", {
        ent = "topaz_money_printer",
        model = "models/props_c17/consolebox05a.mdl",
        price = 1000,
        max = 999,
        cmd = "buytopazprinter"
})

 
DarkRP.createEntity("-=[Wizzard Printer]=-", {
        ent = "amethyst_money_printer",
        model = "models/props_c17/consolebox05a.mdl",
        price = 5000,
        max = 999,
        cmd = "buyamethystprinter"
})
 
DarkRP.createEntity("-=[Emerald Printer=-", {
        ent = "emerald_money_printer",
        model = "models/props_c17/consolebox05a.mdl",
        price = 10000,
        max = 999,
        cmd = "buyemeraldprinter"
})
 
DarkRP.createEntity("-=[Redstone Printer]=-", {
        ent = "ruby_money_printer",
        model = "models/props_c17/consolebox05a.mdl",
        price = 25000,
        max = 999,
        cmd = "buyrubyprinter"
})
 
DarkRP.createEntity("-=[Diamond Printer]=-", {
        ent = "sapphire_money_printer",
        model = "models/props_c17/consolebox05a.mdl",
        price = 50000,
        max = 999,
        cmd = "buysapphireprinter"
})


DarkRP.createEntity("-=[Massa Printer (No VIP)]=-", {
        ent = "mass_PRINT",
        model = "models/props_c17/consolebox03a.mdl",
        price = 100000,
        max = 999,
        cmd = "buymassaoneprinternormal"
})


DarkRP.createEntity("-=[NG_MoneyPrinter]=-", {
        ent = "ng_money_printer",
        model = "models/props_c17/consolebox01a.mdl",
        price = 10000, -- (Printer+Cooler=Money Farm)Change this number to change the price of the Cooler in-game.
        max = 999,
        cmd = "buyngmoney"
})

DarkRP.createEntity("-=[NG_Cooler]=-", {
        ent = "ng_cooler",
        model = "models/props_c17/consolebox01a.mdl",
        price = 100, -- (Printer+Cooler=Money Farm)Change this number to change the price of the Cooler in-game.
        max = 999,
        cmd = "buyngcooler"
})

DarkRP.createEntity("-=[NG_OverCloaker]=-", {
        ent = "ng_overclocker",
        model = "models/props_c17/consolebox01a.mdl",
        price = 100, -- (Printer+Cooler=Money Farm)Change this number to change the price of the Cooler in-game.
        max = 999,
        cmd = "buyngcloakJM"
})

DarkRP.createEntity("-=[NG_Turner]=-", {
        ent = "ng_tuner",
        model = "models/props_c17/consolebox01a.mdl",
        price = 100, -- (Printer+Cooler=Money Farm)Change this number to change the price of the Cooler in-game.
        max = 999,
        cmd = "buyngturnerng"
})

DarkRP.createEntity("-=[Coolant Cell]=-", {
	ent = "money_coolant_cell",
	model = "models/Items/battery.mdl",
	price = 2000,
	max = 20,
	cmd = "coolantcell"
})

DarkRP.createEntity("-=[Printer Upgrade]=-", {
	ent = "money_printer_upgrade",
	model = "models/props_lab/box01a.mdl",
	price = 2000,
	max = 20,
	cmd = "printerupgrade"
})
