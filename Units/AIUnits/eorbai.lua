-- UNITDEF -- EORBAI --
--------------------------------------------------------------------------------

local unitName                   = "eorbai"

--------------------------------------------------------------------------------

local armortype					 = [[light]]
local supply					 = [[5]]

local unitDef                    = {

	--mobileunit 
	transportbyenemy             = false;

	--**


	acceleration                 = 1,
	brakeRate                    = 0.24,
	buildCostEnergy              = 0,
	buildCostMetal               = 30,
	buildDistance                = 800,
	builder                      = true,
	buildTime                    = 5,
	CanAttack			         = false,
	CanAssist			         = true,
	CanBeAssisted		         = true,
	CanCapture                   = false,
	CanRepair			         = true,
	cancollect                   = "1",
	canGuard                     = true,
	canHover                     = true,
	canMove                      = true,
	canPatrol                    = true,
	canreclaim		             = false,
	canstop                      = true,
	category                     = "LIGHT NOTAIR SUPPORT",
	description                  = [[Unit Type: Field Medic / Construction Assistant
Armortype: ]] ..armortype.. [[ 

� Automatically repairs mobile units in the area 

Uses +]] .. supply .. [[ Supply]],
	energyMake                   = 0,
	energyStorage                = 0,
	energyUse                    = 0,
	explodeAs                    = "mediumExplosionGenericGreen",
	footprintX                   = 6,
	footprintZ                   = 6,
	fireState			         = "0",
	iconType                     = "orb",
	idleAutoHeal                 = .5,
	idleTime                     = 2200,
	levelground                  = true,
	maxDamage                    = 600,
	maxSlope                     = 26,
	maxVelocity                  = 3,
	maxReverseVelocity           = 1,
	maxWaterDepth                = 5000,
	metalmake                    = 0,
	metalStorage                 = 0,
	movementClass                = "HOVERTANK6",
	moveState			         = "2",
	name                         = "ORB",
	objectName                   = "eorb3.s3o",
	script			             = "eorb3.cob",
	radarDistance                = 0,
	--radarDistanceJam           = 20,
	repairable		             = false,
	selfDestructAs               = "mediumExplosionGenericGreen",
	showNanoSpray                = "0",
	side                         = "ARM",
	sightDistance                = 500,
	smoothAnim                   = true,
	stealth			             = true,
	seismicSignature             = 2,
	--  turnInPlace              = false,
	--  turnInPlaceSpeedLimit    = 3,
	turnInPlace                  = true,
	turnRate                     = 5000,
	--  turnrate                 = 1020,
	unitname                     = "eorbai",
	unitrestricted				  = 4,
	upright                      = true,
	workerTime                   = 1,
	capturespeed                 = 0,
	TerraformSpeed               = 100000,
	ReclaimSpeed                 = 0,
	repairspeed                  = 0.3125,
	sfxtypes                     = { 
		pieceExplosionGenerators = { 
			"deathceg3", 
			"deathceg4", 
		}, 

		explosiongenerators      = {
			"custom:nanoorb",
			"custom:dirt",
			"custom:blacksmoke",
		},
	},
	sounds                       = {
		underattack              = "unitsunderattack1",
		ok                       = {
			"ack",
		},
		select                   = {
			"unitselect",
		},
	},
	customParams                 = {
		canbetransported 		 = "true",
		needed_cover             = 2,
		death_sounds             = "generic",
		cancollect               = "1",
		armortype                = armortype,
		supply_cost              = supply,
		normalstex               = "unittextures/lego2skin_explorernormal.dds", 
		buckettex                = "unittextures/lego2skin_explorerbucket.dds",
		factionname	             = "outer_colonies",   
		helptext	             = [[The ORB is a field medic designed to quickly repair damaged units. It has an Area Repair ability that will repair 10 hitpoints every second to any damaged unit (including allied units) in range. Unit must be out of combat for 5 seconds before repairs can take place.
		
		The ORB will also automatically reclaim and energy cores it gets close to. This means that if you include them in your unit groups, not only do you get excellent repair, you can also turn a profit from even a bad engagement.]],
		
		-- groundtexselectimg    = ":nc:bitmaps/icons/repairzone.png",
		-- groundtexselectxsize  = 1000, 
		-- groundtexselectzsize  = 1000, 	
	},
}

--------------------------------------------------------------------------------

local weaponDefs                 = {

	aoeheal                      = {
		AreaOfEffect             = 1000,
		avoidFriendly            = false,
		
		collideFriendly          = false,
		commandfire		         = true,
		explosionGenerator       = "custom:AREAHEALING",
		energypershot            = 50,
		edgeEffectiveness        = 1,
		impulseFactor            = 0,
		name                     = "Area Healing Device",
		range                    = 50,
		reloadtime               = 10,
		weaponType		         = "Cannon",
		soundStart               = "areaheal.wav",
		
		turret                   = true,
		weaponVelocity           = 1000,
		customparams             = {
			damagetype		     = "default",
			noenemyfire		     = "1",
		},      
		damage                   = {
			default              = -250,
		},
	},
}
unitDef.weaponDefs               = weaponDefs
--------------------------------------------------------------------------------

return lowerkeys({ [unitName]    = unitDef })

--------------------------------------------------------------------------------
