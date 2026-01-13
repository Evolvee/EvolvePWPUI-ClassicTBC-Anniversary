-- This guide is written by Nutri.
-- V2.5.5

-------------------COOKING--------------------------------
RXPGuides.RegisterGuide("Nutri Classic Professions",[[
#name Nutri - Cooking 1-300

step -- Introduction
	>>This guide will guide you through leveling your cooking profession from 1-300 for Alliance players.
	>>You will need to be at least level 5 to learn Apprentice Cooking.
	>>First you will collect materials, then level through different tiers of cooking.
	.link https://shop.restedxp.com/ref/nutri/ >> |cRXP_WARN_Click here for 10% off all RestedXP guides!|r
	+Click here to continue

step -- Required Materials
	>>|cRXP_WARN_Total materials to collect before starting:|r
	.collect 2672,60 -- Stringy Wolf Meat
	.collect 5503,60 -- Clam Meat
	.collect 159,60 -- Refreshing Spring Water
	.collect 2674,40 -- Crawler Meat
	.collect 3685,50 -- Raptor Egg
	.collect 12184,50 -- Raptor Flesh
	.collect 12207,47 -- Giant Egg
	.collect 7974,140 -- Zesty Clam Meat
	.collect 8932,20 -- Alterac Swiss
	.collect 1179,65 -- Ice Cold Milk

-- APPRENTICE COOKING (1-50)
step -- Materials for 1-50
	>>|cRXP_WARN_Collect or buy the following materials for levels 1-50:|r
	>>You can farm these yourself or buy them from the Auction House.
	.collect 2672,60 -- Stringy Wolf Meat

step -- Go to Stormwind
	#completewith next
	.zone Stormwind City >>Go to Stormwind City to learn Cooking.

step -- Learn Apprentice Cooking
	>>Talk to |cRXP_FRIENDLY_Stephen Ryback|r inside the Trade District.
	.train 2550 >> Train Apprentice Cooking.
	.target Stephen Ryback
	.goto Stormwind City,77.6,53.0

step -- Level 1-50
	>>Cook |cRXP_FRIENDLY_Charred Wolf Meat|r until you reach skill level 50.
	>>|cRXP_WARN_You can buy Soothing Spices and Refreshing Spring Water from cooking supply vendors near your trainer.|r
	--.skill cooking,50,1 >>Level your Cooking skill to 50.
	+Once you reach Cooking level 50, click here.

-- JOURNEYMAN COOKING (50-130)
step -- Learn Journeyman Cooking
	>>You need to be at least level 10 to learn Journeyman Cooking.
	>>Talk to |cRXP_FRIENDLY_Stephen Ryback|r again.
	.train 3102 >> Train Journeyman Cooking.
	.target Stephen Ryback
	.goto Stormwind City,77.6,53.0

step -- Materials for 50-100
	>>|cRXP_WARN_Collect or buy the following materials for levels 50-100:|r
	.collect 5503,60 -- Clam Meat
	.collect 159,60 -- Refreshing Spring Water (buy from vendor)

step -- Level 50-100
	>>Cook |cRXP_FRIENDLY_Boiled Clams|r until you reach skill level 100.
	>>Combine Clam Meat + Refreshing Spring Water.
	--.skill cooking,100,1 >>Level your Cooking skill to 100.
	+Once you reach Cooking level 100, click here.

step -- Materials for 100-130
	>>|cRXP_WARN_Collect or buy the following materials for levels 100-130:|r
	.collect 2674,40 -- Crawler Meat

step -- Level 100-130
	>>Cook |cRXP_FRIENDLY_Crab Cake|r until you reach skill level 130.
	--.skill cooking,130,1 >>Level your Cooking skill to 130.
	+Once you reach Cooking level 130, click here.

-- EXPERT COOKING (130-225)
step -- Prepare for Expert Cooking
	>>|cRXP_WARN_You need to be at least level 20 and have Cooking 125+ to learn Expert Cooking.|r
	>>You will need to travel to Ashenvale to purchase the Expert Cookbook.
	+Click here to continue

step -- Go to Ashenvale
	#completewith next
	.zone Ashenvale >>Travel to Ashenvale.

step -- Buy Expert Cookbook
	>>Travel to Ashenvale and find |cRXP_FRIENDLY_Shandrina|r.
	>>Buy |cRXP_FRIENDLY_Expert Cookbook|r from her.
	.collect 16072,1 -- Expert Cookbook
	.target Shandrina
	.goto Ashenvale,35.0,49.0

step -- Use Expert Cookbook
	>>Right-click the |cRXP_FRIENDLY_Expert Cookbook|r in your inventory to learn Expert Cooking.
	.use 16072
	.train 3413 >> Learn Expert Cooking.

step -- Materials for 130-175
	>>|cRXP_WARN_Collect or buy the following materials for levels 130-175:|r
	.collect 3685,50 -- Raptor Egg
	>>|cRXP_WARN_These can be found from raptors in various zones or purchased from AH.|r

step -- Buy Recipe: Curiously Tasty Omelet
	#completewith next
	.zone Stormwind City >>Return to Stormwind City.

step -- Buy Recipe
	>>Find |cRXP_FRIENDLY_Kendor Kabonka|r in Stormwind.
	>>Buy |cRXP_FRIENDLY_Recipe: Curiously Tasty Omelet|r.
	.collect 3679,1 -- Recipe: Curiously Tasty Omelet
	.target Kendor Kabonka
	.goto Stormwind City,77.3,52.8

step -- Learn Recipe
	>>Right-click the recipe to learn it.
	.use 3679

step -- Level 130-175
	>>Cook |cRXP_FRIENDLY_Curiously Tasty Omelet|r until you reach skill level 175.
	--.skill cooking,175,1 >>Level your Cooking skill to 175.
	+Once you reach Cooking level 175, click here.

step -- Materials for 175-225
	>>|cRXP_WARN_Collect or buy the following materials for levels 175-225:|r
	.collect 12184,50 -- Raptor Flesh
	>>|cRXP_WARN_Raptor Flesh drops from raptors in various zones (Arathi, STV, Wetlands).|r

step -- Go to Arathi Highlands
	#completewith next
	.zone Arathi Highlands >>Travel to Arathi Highlands.

step -- Buy Recipe: Roast Raptor
	>>Find |cRXP_FRIENDLY_Hammon Karwn|r in Arathi Highlands.
	>>Buy |cRXP_FRIENDLY_Recipe: Roast Raptor|r.
	.collect 12228,1 -- Recipe: Roast Raptor
	.target Hammon Karwn
	.goto Arathi Highlands,46.2,47.0

step -- Learn Recipe
	>>Right-click the recipe to learn it.
	.use 12228

step -- Level 175-225
	>>Cook |cRXP_FRIENDLY_Roast Raptor|r until you reach skill level 225.
	--.skill cooking,225,1 >>Level your Cooking skill to 225.
	+Once you reach Cooking level 225, click here.

-- ARTISAN COOKING (225-300)
step -- Prepare for Artisan Cooking Quest
	>>|cRXP_WARN_You need to be at least level 35 and have Cooking 225 to learn Artisan Cooking.|r
	>>You will need to complete a quest to unlock Artisan Cooking.
	>>|cRXP_WARN_Do NOT go to Gadgetzan until you have all quest materials!|r
	+Click here to continue

step -- Materials for Artisan Quest
	>>|cRXP_WARN_Collect the following materials for the Artisan Cooking quest:|r
	.collect 12207,12 -- Giant Egg
	.collect 7974,10 -- Zesty Clam Meat
	.collect 8932,20 -- Alterac Swiss
	>>|cRXP_WARN_Giant Eggs drop from Rocs/Hippogryphs in Feralas/Tanaris|r
	>>|cRXP_WARN_Zesty Clam Meat drops from clams on beaches (Tanaris is best)|r
	>>|cRXP_WARN_Alterac Swiss can be purchased from vendors or found in Alterac Mountains|r

step -- Start Quest Chain
	#completewith next
	.zone Ironforge >>Travel to Ironforge.

step -- Accept Quest
	>>Find |cRXP_FRIENDLY_Daryl Riknussun|r in Ironforge.
	>>Accept the quest |cRXP_FRIENDLY_I Know A Guy...|r
	.accept 6612 >> Accept I Know A Guy...
	.target Daryl Riknussun
	.goto Ironforge,60.0,36.4

step -- Go to Gadgetzan
	#completewith next
	.zone Tanaris >>Travel to Tanaris (Gadgetzan).

step -- Find Dirge Quikcleave
	>>Find |cRXP_FRIENDLY_Dirge Quikcleave|r in Gadgetzan.
	>>Turn in |cRXP_FRIENDLY_I Know A Guy...|r
	>>Accept |cRXP_FRIENDLY_Clamlette Surprise|r
	.turnin 6612 >> Turn in I Know A Guy...
	.accept 6610 >> Accept Clamlette Surprise
	.target Dirge Quikcleave
	.goto Tanaris,52.6,28.8

step -- Complete Artisan Quest
	>>Turn in all the materials to |cRXP_FRIENDLY_Dirge Quikcleave|r.
	.turnin 6610 >> Turn in Clamlette Surprise
	.train 18260 >> Learn Artisan Cooking
	.target Dirge Quikcleave

step -- Buy Recipe: Undermine Clam Chowder
	>>Buy from |cRXP_FRIENDLY_Jabbey|r in Gadgetzan:
	>>|cRXP_FRIENDLY_Recipe: Undermine Clam Chowder|r
	>>|cRXP_WARN_This is a limited supply recipe - may need to wait for respawn.|r
	.collect 16767,1 -- Recipe: Undermine Clam Chowder
	.target Jabbey
	.goto Tanaris,52.6,28.0

step -- Learn Recipe
	>>Right-click the recipe to learn it.
	.use 16767

step -- Materials for 225-275
	>>|cRXP_WARN_Collect or buy materials for levels 225-275:|r
	.collect 7974,130 -- Zesty Clam Meat
	.collect 1179,65 -- Ice Cold Milk (buy from innkeepers/bartenders)

step -- Level 225-275
	>>Cook |cRXP_FRIENDLY_Undermine Clam Chowder|r until you reach skill level 275.
	>>Combine Zesty Clam Meat + Ice Cold Milk.
	--.skill cooking,275,1 >>Level your Cooking skill to 275.
	+Once you reach Cooking level 275, click here.

step -- Materials for 275-300
	>>|cRXP_WARN_Collect or buy materials for levels 275-300:|r
	.collect 12207,35 -- Giant Egg

step -- Buy Recipe: Monster Omelet
	#completewith next
	.zone Winterspring >>Travel to Winterspring.

step -- Buy Recipe from Everlook
	>>Find |cRXP_FRIENDLY_Himmik|r inside the inn at Everlook.
	>>Buy |cRXP_FRIENDLY_Recipe: Monster Omelet|r.
	.collect 16110,1 -- Recipe: Monster Omelet
	.target Himmik
	.goto Winterspring,61.3,38.9

step -- Learn Recipe
	>>Right-click the recipe to learn it.
	.use 16110

step -- Level 275-300
	>>Cook |cRXP_FRIENDLY_Monster Omelet|r until you reach skill level 300.
	--.skill cooking,300,1 >>Level your Cooking skill to 300.
	+Once you reach Cooking level 300, click here.

step -- Congratulations
	>>Congratulations on reaching level 300 Cooking!
	>>You can now cook high-level recipes and create powerful food buffs.
	.link https://boostyou.ai >> |cRXP_WARN_More free WoW Classic content!|r
	+Thank you for using |cRXP_FRIENDLY_Nutri|r Classic Cooking Guide.
]])
-------------------FISHING--------------------------------
RXPGuides.RegisterGuide("Nutri Classic Professions",[[
#name Nutri - Fishing 1-300

step -- Introduction
	>>This guide will guide you through leveling your fishing profession from 1-300 for Alliance players.
	>>You will need to be at least level 5 to learn Apprentice Fishing.
	>>Fishing requires patience and time. You'll be catching a lot of fish!
	.link https://shop.restedxp.com/ref/nutri/ >> |cRXP_WARN_Click here for 10% off all RestedXP guides!|r
	+Click here to continue

step -- Required Materials
	>>|cRXP_WARN_Recommended to bring before you start:|r
	.collect 6256,1 -- Fishing Pole
	.collect 6529,10 -- Shiny Bauble
	.collect 6532,20 -- Bright Bauble

-- APPRENTICE FISHING (1-75)
step -- Buy Fishing Supplies
	>>|cRXP_WARN_Buy the following items from a Fishing Supply or Trade Supply merchant:|r
	.collect 6256,1 -- Fishing Pole
	.collect 6529,10 -- Shiny Bauble
	>>|cRXP_WARN_These can be purchased from vendors near your fishing trainer.|r

step -- Go to Stormwind
	#completewith next
	.zone Stormwind City >>Go to Stormwind City to learn Fishing.

step -- Learn Apprentice Fishing
	>>Talk to |cRXP_FRIENDLY_Arnold Leland|r in the Canal District.
	.train 7731 >> Train Apprentice Fishing.
	.target Arnold Leland
	.goto Stormwind City,55.0,69.6

step -- Equip and Apply Lure
	>>Equip your |cRXP_FRIENDLY_Fishing Pole|r.
	>>Apply |cRXP_FRIENDLY_Shiny Bauble|r to your fishing pole.
	>>Open your Spellbook (P), go to the General tab, and drag the Fishing spell to your action bar.
	+Click here to continue

step -- Go to Starting Zone
	#completewith next
	.zone Elwynn Forest >>Go to Elwynn Forest to fish.

step -- Level 1-75
	>>Go to any lake, pond, or river in |cRXP_FRIENDLY_Elwynn Forest|r.
	>>Stand in front of the water and press your fishing button.
	>>When the lure splashes, right-click on it to catch the fish.
	>>|cRXP_WARN_Fish until you reach skill level 75.|r
	>>|cRXP_WARN_Remember: Starting zones do not include capital cities!|r
	--.skill fishing,75,1 >>Level your Fishing skill to 75.
	+Once you reach Fishing level 75, click here.

-- JOURNEYMAN FISHING (75-150)
step -- Learn Journeyman Fishing
	>>You need to be at least level 10 to learn Journeyman Fishing.
	#completewith next
	.zone Stormwind City >>Return to Stormwind City.

step -- Train Journeyman
	>>Talk to |cRXP_FRIENDLY_Arnold Leland|r again.
	.train 7620 >> Train Journeyman Fishing.
	.target Arnold Leland
	.goto Stormwind City,55.0,69.6

step -- Level 75-150
	>>Fish in the canals of |cRXP_FRIENDLY_Stormwind City|r until you reach skill level 150.
	>>|cRXP_WARN_Alternative zones: Darkshore, Loch Modan, Westfall.|r
	--.skill fishing,150,1 >>Level your Fishing skill to 150.
	+Once you reach Fishing level 150, click here.

-- EXPERT FISHING (150-225)
step -- Prepare for Expert Fishing
	>>|cRXP_WARN_You need to be at least level 20 to learn Expert Fishing.|r
	>>You will need to travel to Booty Bay to purchase the Expert Fishing book.
	+Click here to continue

step -- Go to Booty Bay
	#completewith next
	.zone Stranglethorn Vale >>Travel to Stranglethorn Vale (Booty Bay).

step -- Buy Expert Fishing Book
	>>Find |cRXP_FRIENDLY_Old Man Heming|r in Booty Bay.
	>>He is at the bottom part of Booty Bay, near a fishing sign.
	>>Buy |cRXP_FRIENDLY_Expert Fishing - The Bass and You|r from him.
	.collect 16083,1 -- Expert Fishing - The Bass and You
	.target Old Man Heming
	.goto Stranglethorn Vale,27.2,77.6

step -- Buy Bright Baubles
	>>Also buy a bunch of |cRXP_FRIENDLY_Bright Baubles|r from |cRXP_FRIENDLY_Old Man Heming|r.
	>>|cRXP_WARN_You will need these for fishing later.|r
	.collect 6532,20 -- Bright Baubles
	.target Old Man Heming

step -- Use Expert Fishing Book
	>>Right-click the |cRXP_FRIENDLY_Expert Fishing - The Bass and You|r book to learn Expert Fishing.
	.use 16083
	.train 18248 >> Learn Expert Fishing.

step -- Go to Dustwallow Marsh
	#completewith next
	.zone Dustwallow Marsh >>Travel to Dustwallow Marsh.

step -- Level 150-225
	>>Apply |cRXP_FRIENDLY_Bright Baubles|r to your fishing pole.
	>>Fish in |cRXP_FRIENDLY_Dustwallow Marsh|r until you reach skill level 225.
	>>|cRXP_WARN_Dustwallow Marsh is recommended because the Artisan Fishing quest starts here.|r
	>>|cRXP_WARN_Alternative zones: Alterac Mountains, Arathi Highlands, Desolace, Stranglethorn Vale.|r
	--.skill fishing,225,1 >>Level your Fishing skill to 225.
	+Once you reach Fishing level 225, click here.

-- ARTISAN FISHING (225-300)
step -- Prepare for Artisan Fishing Quest
	>>|cRXP_WARN_You need to be at least level 35 and have Fishing 225 to learn Artisan Fishing.|r
	>>You will need to complete a quest to unlock Artisan Fishing.
	>>This quest requires catching 4 special fish from different zones.
	+Click here to continue

step -- Accept Artisan Quest
	>>Find |cRXP_FRIENDLY_Nat Pagle|r in Dustwallow Marsh.
	>>Accept the quest |cRXP_FRIENDLY_Nat Pagle, Angler Extreme|r.
	.accept 6607 >> Accept Nat Pagle, Angler Extreme
	.target Nat Pagle
	.goto Dustwallow Marsh,58.6,60.0

step -- Quest Instructions
	>>|cRXP_WARN_You need to catch 4 special fish from the following zones:|r
	>>Feralas Ahi - |cRXP_FRIENDLY_Feralas|r
	>>Misty Reed Mahi Mahi - |cRXP_FRIENDLY_Swamp of Sorrows|r
	>>Sar'theris Striker - |cRXP_FRIENDLY_Desolace|r
	>>Savage Coast Blue Sailfin - |cRXP_FRIENDLY_Stranglethorn Vale|r
	>>|cRXP_WARN_Use Bright Baubles in Feralas to prevent fish from getting away.|r
	+Click here to continue

step -- Go to Feralas
	#completewith next
	.zone Feralas >>Travel to Feralas.

step -- Catch Feralas Ahi
	>>Apply |cRXP_FRIENDLY_Bright Baubles|r to your fishing pole.
	>>Fish in |cRXP_FRIENDLY_Feralas|r until you catch |cRXP_FRIENDLY_Feralas Ahi|r.
	.collect 16967,1 -- Feralas Ahi

step -- Go to Swamp of Sorrows
	#completewith next
	.zone Swamp of Sorrows >>Travel to Swamp of Sorrows.

step -- Catch Misty Reed Mahi Mahi
	>>Fish in |cRXP_FRIENDLY_Swamp of Sorrows|r until you catch |cRXP_FRIENDLY_Misty Reed Mahi Mahi|r.
	.collect 16970,1 -- Misty Reed Mahi Mahi

step -- Go to Desolace
	#completewith next
	.zone Desolace >>Travel to Desolace.

step -- Catch Sar'theris Striker
	>>Fish in |cRXP_FRIENDLY_Desolace|r until you catch |cRXP_FRIENDLY_Sar'theris Striker|r.
	.collect 16968,1 -- Sar'theris Striker

step -- Go to Stranglethorn Vale
	#completewith next
	.zone Stranglethorn Vale >>Travel to Stranglethorn Vale.

step -- Catch Savage Coast Blue Sailfin
	>>Fish along the coast in |cRXP_FRIENDLY_Stranglethorn Vale|r until you catch |cRXP_FRIENDLY_Savage Coast Blue Sailfin|r.
	.collect 16969,1 -- Savage Coast Blue Sailfin

step -- Return to Nat Pagle
	#completewith next
	.zone Dustwallow Marsh >>Return to Dustwallow Marsh.

step -- Complete Artisan Quest
	>>Turn in all 4 fish to |cRXP_FRIENDLY_Nat Pagle|r.
	.turnin 6607 >> Turn in Nat Pagle, Angler Extreme
	.train 18248 >> Learn Artisan Fishing
	.target Nat Pagle
	.goto Dustwallow Marsh,58.6,60.0

step -- Buy More Bright Baubles
	>>|cRXP_WARN_Make sure you have plenty of Bright Baubles for the final stretch.|r
	>>You can buy them from |cRXP_FRIENDLY_Old Man Heming|r in Booty Bay.
	+Click here to continue

step -- Choose Final Fishing Zone
	>>|cRXP_WARN_Fish in one of the following zones until you reach skill level 300:|r
	>>Felwood
	>>Feralas
	>>The Hinterlands
	>>Tanaris
	>>Un'Goro Crater
	>>Western Plaguelands
	>>|cRXP_WARN_You will need to use Bright Baubles in these zones!|r
	+Click here to continue

step -- Go to Feralas
	#completewith next
	.zone Feralas >>Travel to Feralas (recommended).

step -- Level 225-300
	>>Apply |cRXP_FRIENDLY_Bright Baubles|r to your fishing pole.
	>>Fish in |cRXP_FRIENDLY_Feralas|r until you reach skill level 300.
	--.skill fishing,300,1 >>Level your Fishing skill to 300.
	+Once you reach Fishing level 300, click here.

step -- Congratulations
	>>Congratulations on reaching level 300 Fishing!
	>>You can now fish in any zone in Azeroth and catch the highest level fish.
	.link https://boostyou.ai >> |cRXP_WARN_More free WoW Classic content!|r
	+Thank you for using |cRXP_FRIENDLY_Nutri|r Classic Fishing Guide.
]])
-------------------FIRST AID----------------------------------------------------------------------------------------
RXPGuides.RegisterGuide("Nutri Classic Professions",[[
#name Nutri - First Aid 1-300

step -- Introduction
	>>This guide will guide you through leveling your First Aid profession from 1-300 for Alliance players.
	>>|cRXP_WARN_First Aid does not take up a profession slot - every player can learn it!|r
	>>It's highly recommended for all classes, especially melee without healing abilities.
	>>You will need various cloth materials to level this profession.
	.link https://shop.restedxp.com/ref/nutri/ >> |cRXP_WARN_Click here for 10% off all RestedXP guides!|r
	+Click here to continue

step -- Required Materials
	>>|cRXP_WARN_Total materials to collect before starting:|r
	.collect 2589,200 -- Linen Cloth
	.collect 2592,180 -- Wool Cloth
	.collect 4306,150 -- Silk Cloth
	.collect 4338,150 -- Mageweave Cloth
	.collect 14047,80 -- Runecloth

-- APPRENTICE FIRST AID (1-75)
step -- Materials for 1-75
	>>|cRXP_WARN_Collect or buy the following materials for levels 1-75:|r
	.collect 2589,170 -- Linen Cloth
	>>You can farm these from humanoid enemies or buy from the Auction House.

step -- Go to Stormwind
	#completewith next
	.zone Stormwind City >>Go to Stormwind City to learn First Aid.

step -- Learn Apprentice First Aid
	>>Talk to |cRXP_FRIENDLY_Shaina Fuller|r in the Cathedral District.
	.train 3273 >> Train Apprentice First Aid.
	.target Shaina Fuller
	.goto Stormwind City,43.4,52.6

step -- Level 1-40
	>>Create |cRXP_FRIENDLY_Linen Bandage|r until you reach skill level 40.
	>>This requires 1 Linen Cloth per bandage.
	--.skill firstaid,40,1 >>Level your First Aid skill to 40.
	+Once you reach First Aid level 40, click here.

step -- Level 40-75
	>>Create |cRXP_FRIENDLY_Heavy Linen Bandage|r until you reach skill level 75.
	>>This requires 2 Linen Cloth per bandage.
	--.skill firstaid,75,1 >>Level your First Aid skill to 75.
	+Once you reach First Aid level 75, click here.

-- JOURNEYMAN FIRST AID (75-150)
step -- Learn Journeyman First Aid
	>>You need to be at least level 10 to learn Journeyman First Aid.
	>>Talk to |cRXP_FRIENDLY_Shaina Fuller|r again.
	.train 3274 >> Train Journeyman First Aid.
	.target Shaina Fuller
	.goto Stormwind City,43.4,52.6

step -- Materials for 75-150
	>>|cRXP_WARN_Collect or buy the following materials for levels 75-150:|r
	.collect 2589,30 -- Linen Cloth (for 75-80)
	.collect 2592,180 -- Wool Cloth (for 80-150)

step -- Level 75-80
	>>Continue creating |cRXP_FRIENDLY_Heavy Linen Bandage|r until you reach skill level 80.
	--.skill firstaid,80,1 >>Level your First Aid skill to 80.
	+Once you reach First Aid level 80, click here.

step -- Level 80-115
	>>Create |cRXP_FRIENDLY_Wool Bandage|r until you reach skill level 115.
	>>This requires 1 Wool Cloth per bandage.
	--.skill firstaid,115,1 >>Level your First Aid skill to 115.
	+Once you reach First Aid level 115, click here.

step -- Level 115-150
	>>Create |cRXP_FRIENDLY_Heavy Wool Bandage|r until you reach skill level 150.
	>>This requires 2 Wool Cloth per bandage.
	--.skill firstaid,150,1 >>Level your First Aid skill to 150.
	+Once you reach First Aid level 150, click here.

-- EXPERT FIRST AID (150-225)
step -- Learn Silk Bandage Recipe
	>>|cRXP_WARN_Before leaving your trainer, learn the Silk Bandage recipe!|r
	>>Talk to |cRXP_FRIENDLY_Shaina Fuller|r to learn it.
	.train 7924 >> Train Silk Bandage.
	.target Shaina Fuller

step -- Prepare for Expert First Aid
	>>|cRXP_WARN_You need to purchase books to learn Expert First Aid and continue leveling.|r
	>>You can buy them from a vendor in Arathi Highlands or from the Auction House.
	+Click here to continue

step -- Go to Arathi Highlands
	#completewith next
	.zone Arathi Highlands >>Travel to Arathi Highlands.

step -- Buy Expert First Aid Books
	>>Find |cRXP_FRIENDLY_Deneb Walker|r in Arathi Highlands.
	>>Buy the following three books:
	>>|cRXP_FRIENDLY_Expert First Aid - Under Wraps|r
	>>|cRXP_FRIENDLY_Manual: Heavy Silk Bandage|r
	>>|cRXP_FRIENDLY_Manual: Mageweave Bandage|r
	.collect 16084,1 -- Expert First Aid - Under Wraps
	.collect 16112,1 -- Manual: Heavy Silk Bandage
	.collect 16113,1 -- Manual: Mageweave Bandage
	.target Deneb Walker
	.goto Arathi Highlands,73.4,36.8

step -- Use Expert First Aid Book
	>>Right-click |cRXP_FRIENDLY_Expert First Aid - Under Wraps|r to learn Expert First Aid.
	.use 16084
	.train 7934 >> Learn Expert First Aid.

step -- Materials for 150-225
	>>|cRXP_WARN_Collect or buy the following materials for levels 150-225:|r
	.collect 4306,150 -- Silk Cloth
	.collect 4338,30 -- Mageweave Cloth

step -- Level 150-180
	>>Create |cRXP_FRIENDLY_Silk Bandage|r until you reach skill level 180.
	>>This requires 1 Silk Cloth per bandage.
	--.skill firstaid,180,1 >>Level your First Aid skill to 180.
	+Once you reach First Aid level 180, click here.

step -- Learn Heavy Silk Bandage
	>>Right-click |cRXP_FRIENDLY_Manual: Heavy Silk Bandage|r to learn the recipe.
	.use 16112

step -- Level 180-210
	>>Create |cRXP_FRIENDLY_Heavy Silk Bandage|r until you reach skill level 210.
	>>This requires 2 Silk Cloth per bandage.
	--.skill firstaid,210,1 >>Level your First Aid skill to 210.
	+Once you reach First Aid level 210, click here.

step -- Learn Mageweave Bandage
	>>Right-click |cRXP_FRIENDLY_Manual: Mageweave Bandage|r to learn the recipe.
	.use 16113

step -- Level 210-225
	>>Create |cRXP_FRIENDLY_Mageweave Bandage|r until you reach skill level 225.
	>>This requires 1 Mageweave Cloth per bandage.
	--.skill firstaid,225,1 >>Level your First Aid skill to 225.
	+Once you reach First Aid level 225, click here.

-- ARTISAN FIRST AID (225-300)
step -- Prepare for Artisan Quest
	>>|cRXP_WARN_You need to be at least level 35 and have First Aid 225 to learn Artisan First Aid.|r
	>>You will need to complete the Triage quest.
	>>|cRXP_WARN_Bring 120 Mageweave Cloth and 80 Runecloth with you to Dustwallow Marsh!|r
	+Click here to continue

step -- Materials for 225-300
	>>|cRXP_WARN_Collect or buy these materials before starting the quest:|r
	.collect 4338,120 -- Mageweave Cloth
	.collect 14047,80 -- Runecloth

step -- Go to Dustwallow Marsh
	#completewith next
	.zone Dustwallow Marsh >>Travel to Dustwallow Marsh (Theramore Isle).

step -- Accept Triage Quest Chain
	>>Find |cRXP_FRIENDLY_Doctor Gustaf VanHowzen|r at Theramore Isle.
	>>He is inside the main keep (NOT the giant tower).
	>>Go inside, turn right, then left - he's in the corner room.
	>>Accept |cRXP_FRIENDLY_Alliance Trauma|r (optional pre-quest).
	.accept 6625 >> Accept Alliance Trauma
	.target Doctor Gustaf VanHowzen
	.goto Dustwallow Marsh,67.8,48.2

step -- Accept Triage Quest
	>>Turn in |cRXP_FRIENDLY_Alliance Trauma|r and accept |cRXP_FRIENDLY_Triage|r.
	.turnin 6625 >> Turn in Alliance Trauma
	.accept 6624 >> Accept Triage
	.target Doctor Gustaf VanHowzen

step -- Triage Quest Instructions
	>>|cRXP_WARN_You must save 15 patients to complete this quest.|r
	>>|cRXP_WARN_Tips for success:|r
	>>- Press CTRL+V to show health bars above patients
	>>- Put the triage bandages (from the doctor) on your action bar
	>>- Position yourself in the middle of the room
	>>- Pre-select the next patient while healing the current one
	>>|cRXP_WARN_Priority order:|r
	>>1. Critically Injured (will die after 2 other heals)
	>>2. Badly Injured (will die after 4 other heals)
	>>3. Injured (have the most time)
	>>Turn in immediately after saving 15 patients!
	+Click here when ready to start

step -- Complete Triage Quest
	>>Save 15 patients using the triage bandages provided.
	>>Turn in the quest to |cRXP_FRIENDLY_Doctor Gustaf VanHowzen|r.
	.turnin 6624 >> Turn in Triage
	.train 10846 >> Learn Artisan First Aid
	.target Doctor Gustaf VanHowzen

step -- Level 225-240
	>>Create |cRXP_FRIENDLY_Mageweave Bandage|r until you reach skill level 240.
	--.skill firstaid,240,1 >>Level your First Aid skill to 240.
	+Once you reach First Aid level 240, click here.

step -- Learn Heavy Mageweave Bandage
	>>Talk to |cRXP_FRIENDLY_Doctor Gustaf VanHowzen|r to learn Heavy Mageweave Bandage.
	.train 10841 >> Train Heavy Mageweave Bandage.
	.target Doctor Gustaf VanHowzen
	.goto Dustwallow Marsh,67.8,48.2

step -- Level 240-260
	>>Create |cRXP_FRIENDLY_Heavy Mageweave Bandage|r until you reach skill level 260.
	>>This requires 2 Mageweave Cloth per bandage.
	--.skill firstaid,260,1 >>Level your First Aid skill to 260.
	+Once you reach First Aid level 260, click here.

step -- Learn Runecloth Bandage
	>>Talk to |cRXP_FRIENDLY_Doctor Gustaf VanHowzen|r to learn Runecloth Bandage.
	.train 18629 >> Train Runecloth Bandage.
	.target Doctor Gustaf VanHowzen
	.goto Dustwallow Marsh,67.8,48.2

step -- Level 260-290
	>>Create |cRXP_FRIENDLY_Runecloth Bandage|r until you reach skill level 290.
	>>This requires 1 Runecloth per bandage.
	--.skill firstaid,290,1 >>Level your First Aid skill to 290.
	+Once you reach First Aid level 290, click here.

step -- Learn Heavy Runecloth Bandage
	>>Talk to |cRXP_FRIENDLY_Doctor Gustaf VanHowzen|r to learn Heavy Runecloth Bandage.
	.train 18630 >> Train Heavy Runecloth Bandage.
	.target Doctor Gustaf VanHowzen
	.goto Dustwallow Marsh,67.8,48.2

step -- Level 290-300
	>>Create |cRXP_FRIENDLY_Heavy Runecloth Bandage|r until you reach skill level 300.
	>>This requires 2 Runecloth per bandage.
	--.skill firstaid,300,1 >>Level your First Aid skill to 300.
	+Once you reach First Aid level 300, click here.

step -- Congratulations
	>>Congratulations on reaching level 300 First Aid!
	>>You can now create the best bandages in Classic WoW.
	.link https://boostyou.ai >> |cRXP_WARN_More free WoW Classic content!|r
	+Thank you for using |cRXP_FRIENDLY_Nutri|r Classic First Aid Guide.
]])
-------------------LOCKPICKING----------------------------------------------------------------------------------------
RXPGuides.RegisterGuide("Nutri Classic Professions",[[
#name Nutri - Lockpicking 1-300 (Rogue)

step -- Introduction
	>>This guide will guide you through leveling your Lockpicking skill from 1-300 for Alliance Rogues.
	>>|cRXP_WARN_Lockpicking is a Rogue-only ability and does not require a trainer.|r
	>>|cRXP_WARN_Your maximum lockpicking skill = (5 x your level).|r
	>>Example: Level 20 = 100 max Lockpicking skill.
	>>You will be opening various chests and lockboxes throughout Azeroth.
	.link https://shop.restedxp.com/ref/nutri/ >> |cRXP_WARN_Click here for 10% off all RestedXP guides!|r
	+Click here to continue

step -- Required Materials
	>>No materials to pre-collect; just bring your lockpicking tools of choice.

-- LOCKPICKING 1-100
step -- Go to Redridge Mountains
	>>|cRXP_WARN_You will level Lockpicking from 1-100 in Redridge Mountains.|r
	#completewith next
	.zone Redridge Mountains >>Travel to Redridge Mountains.

step -- Level 1-100
	>>Go north of Lake Everstill in Redridge Mountains.
	>>Look for |cRXP_FRIENDLY_Practice Lockboxes|r scattered around the area.
	>>These respawn very quickly, making this location ideal for leveling.
	>>Open Practice Lockboxes until you reach skill level 100.
	.goto Redridge Mountains,52.0,44.8,50,0
	.goto Redridge Mountains,54.2,46.0,50,0
	.goto Redridge Mountains,56.0,47.5,50,0
	--.skill lockpicking,100,1 >>Level your Lockpicking skill to 100.
	+Once you reach Lockpicking level 100, click here.

-- LOCKPICKING 100-150
step -- Go to Ashenvale
	>>|cRXP_WARN_You will level Lockpicking from 100-150 in Ashenvale.|r
	#completewith next
	.zone Ashenvale >>Travel to Ashenvale.

step -- Level 100-150
	>>Go to Zoram Strand in northwestern Ashenvale.
	>>Look for |cRXP_FRIENDLY_Waterlogged Footlockers|r along the shore (on land, not underwater).
	>>These chests respawn regularly.
	>>Open Waterlogged Footlockers until you reach skill level 150.
	.goto Ashenvale,14.0,22.0,50,0
	.goto Ashenvale,12.5,20.5,50,0
	.goto Ashenvale,11.0,18.0,50,0
	--.skill lockpicking,150,1 >>Level your Lockpicking skill to 150.
	+Once you reach Lockpicking level 150, click here.

-- LOCKPICKING 150-200
step -- Go to Badlands
	>>|cRXP_WARN_You will level Lockpicking from 150-200 in Badlands.|r
	#completewith next
	.zone Badlands >>Travel to Badlands.

step -- Level 150-200
	>>Go to Angor Fortress in southwestern Badlands.
	>>You will find two types of footlockers:
	>>|cRXP_FRIENDLY_Battered Footlocker|r (requires 150 skill) - Upstairs
	>>|cRXP_FRIENDLY_Dented Footlocker|r (requires 175 skill) - Downstairs
	>>Start with Battered Footlockers, then move to Dented Footlockers at 175.
	>>|cRXP_WARN_Don't Pick Pocket mobs here - their boxes are too low level.|r
	.goto Badlands,42.0,52.0,50,0
	.goto Badlands,41.5,50.5,50,0
	.goto Badlands,40.8,52.2,50,0
	--.skill lockpicking,200,1 >>Level your Lockpicking skill to 200.
	+Once you reach Lockpicking level 200, click here.

-- LOCKPICKING 200-250
step -- Go to Searing Gorge
	>>|cRXP_WARN_You will level Lockpicking from 200-250 in Searing Gorge.|r
	#completewith next
	.zone Searing Gorge >>Travel to Searing Gorge.

step -- Level 200-250
	>>Go to the middle of Searing Gorge and enter The Slag Pit cave.
	>>You will find many footlockers inside the cave.
	>>|cRXP_WARN_Stay on the lower part of The Slag Pit until 225.|r
	>>You cannot open the lockboxes in the upper part until 225+.
	>>Also try to Pick Pocket mobs to get |cRXP_FRIENDLY_Sturdy Junkbox|r for additional skill points.
	.goto Searing Gorge,40.0,53.0,50,0
	.goto Searing Gorge,41.5,54.5,50,0
	.goto Searing Gorge,39.0,55.0,50,0
	--.skill lockpicking,250,1 >>Level your Lockpicking skill to 250.
	+Once you reach Lockpicking level 250, click here.

-- LOCKPICKING 250-300
step -- Prepare for BRD
	>>|cRXP_WARN_You will level Lockpicking from 250-300 in Blackrock Depths (BRD).|r
	>>This method uses repeatable locked doors inside the dungeon.
	>>You will be resetting the instance multiple times.
	>>|cRXP_WARN_Remember: Your maximum Lockpicking skill is (5 x your level).|r
	+Click here to continue

step -- Go to Blackrock Depths
	>>Enter |cRXP_FRIENDLY_Blackrock Depths|r via Blackrock Mountain.
	>>This step does not auto-complete.
	.goto Searing Gorge,34.8,84.6
	+Click here to continue

step -- BRD Lockpicking Route
	>>Inside BRD, follow this route:
	>>1. After entering, turn LEFT and unlock the first door
	>>2. Take the first RIGHT and open the next door
	>>3. Go LEFT and open the first door
	>>4. Interact with |cRXP_FRIENDLY_The Shadowforge Lock|r below the giant gear
	>>|cRXP_WARN_This gives you 4 lockpicking attempts per run.|r
	.goto Searing Gorge,34.8,84.6
	+Click here to continue

step -- Reset Instance
	>>After picking all 4 locks, exit the dungeon.
	>>Right-click your portrait and select |cRXP_FRIENDLY_Reset all instances|r.
	>>|cRXP_WARN_You can only do 5 instance runs per hour (≈20 skill points per hour).|r
	>>Pick Pocket mobs during runs for |cRXP_FRIENDLY_Strong|r and |cRXP_FRIENDLY_Heavy Junkboxes|r.
	+Click here to continue

step -- Level 250-300
	>>Repeat the BRD lockpicking route until you reach skill level 300.
	>>Use junkboxes between runs for additional skill-ups.
	>>|cRXP_WARN_Expect this step to take multiple hours due to instance lockout limits.|r
	--.skill lockpicking,300,1 >>Level your Lockpicking skill to 300.
	+Once you reach Lockpicking level 300, click here.

step -- Congratulations
	>>Congratulations on reaching level 300 Lockpicking!
	>>You can now open the highest level locks and lockboxes in Classic WoW.
	.link https://boostyou.ai >> |cRXP_WARN_More free WoW Classic content!|r
	+Thank you for using |cRXP_FRIENDLY_Nutri|r Classic Lockpicking Guide.
]])
-------------------ALCHEMY----------------------------------------------------------------------------------------
RXPGuides.RegisterGuide("Nutri Classic Professions",[[
#name Nutri - Alchemy 1-300

step -- Introduction
	>>This guide will guide you through leveling your Alchemy profession from 1-300 for Alliance players.
	>>|cRXP_WARN_Alchemy pairs best with Herbalism to save gold on materials.|r
	>>You will be crafting various potions and elixirs to level.
	.link https://shop.restedxp.com/ref/nutri/ >> |cRXP_WARN_Click here for 10% off all RestedXP guides!|r
	+Click here to continue

-- APPRENTICE ALCHEMY (1-60)
step -- Materials for 1-300
	>>|cRXP_WARN_Full materials list for 1-300 Alchemy:|r
	.collect 2447,65 -- Peacebloom
	.collect 765,65 -- Silverleaf
	.collect 3371,85 -- Empty Vial
	.collect 2450,100 -- Briarthorn
	.collect 2453,35 -- Bruiseweed
	.collect 3372,105 -- Leaded Vial
	.collect 785,20 -- Mageroyal
	.collect 3820,50 -- Stranglekelp
	.collect 3357,35 -- Liferoot
	.collect 3356,35 -- Kingsblood
	.collect 3821,35 -- Goldthorn
	.collect 3355,5 -- Wild Steelbloom
	.collect 8838,75 -- Sungrass
	.collect 3358,15 -- Khadgar's Whisker
	.collect 8925,120 -- Crystal Vial
	.collect 8836,45 -- Arthas' Tears
	.collect 8839,60 -- Blindweed
	.collect 13464,75 -- Golden Sansam
	.collect 13465,20 -- Mountain Silversage
	>>|cRXP_WARN_These can be farmed with Herbalism or purchased from the Auction House.|r

step -- Go to Stormwind
	#completewith next
	.zone Stormwind City >>Go to Stormwind City to learn Alchemy.

step -- Learn Apprentice Alchemy
	>>Talk to |cRXP_FRIENDLY_Lilyssia Nightbreeze|r in the Mage Quarter.
	.train 2259 >> Train Apprentice Alchemy.
	.target Lilyssia Nightbreeze
	.goto Stormwind City,55.6,85.8

step -- Level 1-60
	>>Create |cRXP_FRIENDLY_Minor Healing Potion|r until you reach skill level 60.
	>>Requires: 1 Peacebloom + 1 Silverleaf + 1 Empty Vial per potion.
	>>|cRXP_WARN_Keep all of these potions - you'll need them for the next step!|r
	--.skill alchemy,60 >>Level your Alchemy skill to 60.
	+Once you reach Alchemy level 60, click here.

-- JOURNEYMAN ALCHEMY (60-140)
step -- Learn Journeyman Alchemy
	>>You need to be at least level 10 to learn Journeyman Alchemy.
	>>Talk to |cRXP_FRIENDLY_Lilyssia Nightbreeze|r again.
	.train 3101 >> Train Journeyman Alchemy.
	.target Lilyssia Nightbreeze
	.goto Stormwind City,55.6,85.8

step -- Level 60-110
    >>Create |cRXP_FRIENDLY_Lesser Healing Potion|r until you reach skill level 110.
    >>Requires: 1 Minor Healing Potion + 1 Briarthorn per potion.
    --.skill alchemy,110 >>Level your Alchemy skill to 110.
    +Once you reach Alchemy level 110, click here.

step -- Level 110-140
    >>Create |cRXP_FRIENDLY_Healing Potion|r until you reach skill level 140.
    >>Requires: 1 Bruiseweed + 1 Briarthorn + 1 Leaded Vial per potion.
    --.skill alchemy,140 >>Level your Alchemy skill to 140.
    +Once you reach Alchemy level 140, click here.

-- EXPERT ALCHEMY (140-210)
step -- Prepare for Expert Alchemy
	>>|cRXP_WARN_You need to be at least level 20 to learn Expert Alchemy.|r
	>>You will travel to Darnassus to train.
	+Click here to continue

step -- Go to Darnassus
	#completewith next
	.zone Darnassus >>Travel to Darnassus.

step -- Learn Expert Alchemy
	>>Find |cRXP_FRIENDLY_Ainethil|r in Darnassus.
	>>Train Expert Alchemy.
	.train 3464 >> Train Expert Alchemy.
	.target Ainethil
	.goto Darnassus,54.2,38.6

step -- Buy Recipe: Superior Mana Potion
	>>While in Darnassus, buy |cRXP_FRIENDLY_Recipe: Superior Mana Potion|r from |cRXP_FRIENDLY_Ulthir|r.
	>>|cRXP_WARN_This is a limited supply item - may need to wait for respawn.|r
	>>You will need this recipe later at 265.
	.collect 13477,1 -- Recipe: Superior Mana Potion
	.target Ulthir
	.goto Darnassus,54.8,39.0

step -- Level 140-155
	>>Create |cRXP_FRIENDLY_Lesser Mana Potion|r until you reach skill level 155.
	>>Requires: 1 Mageroyal + 1 Stranglekelp + 1 Empty Vial per potion.
	>>|cRXP_WARN_This recipe turns yellow at 145, so you may need extra materials.|r
	--.skill alchemy,155,1 >>Level your Alchemy skill to 155.
	+Once you reach Alchemy level 155, click here.

step -- Level 155-185
	>>Create |cRXP_FRIENDLY_Greater Healing Potion|r until you reach skill level 185.
	>>Requires: 1 Liferoot + 1 Kingsblood + 1 Leaded Vial per potion.
	--.skill alchemy,185,1 >>Level your Alchemy skill to 185.
	+Once you reach Alchemy level 185, click here.

step -- Level 185-210
	>>Create |cRXP_FRIENDLY_Elixir of Agility|r until you reach skill level 210.
	>>Requires: 1 Stranglekelp + 1 Goldthorn + 1 Leaded Vial per elixir.
	--.skill alchemy,210,1 >>Level your Alchemy skill to 210.
	+Once you reach Alchemy level 210, click here.

-- ARTISAN ALCHEMY (210-300)
step -- Prepare for Artisan Alchemy
	>>|cRXP_WARN_You need to be at least level 35 to learn Artisan Alchemy.|r
	>>You will travel to Feralas to train.
	+Click here to continue

step -- Go to Feralas
	#completewith next
	.zone Feralas >>Travel to Feralas.

step -- Learn Artisan Alchemy
	>>Find |cRXP_FRIENDLY_Kylanna Windwhisper|r at Feathermoon Stronghold.
	>>Train Artisan Alchemy.
	.train 11611 >> Train Artisan Alchemy.
	.target Kylanna Windwhisper
	.goto Feralas,32.4,43.8

step -- Level 210-215
	>>Create |cRXP_FRIENDLY_Elixir of Greater Defense|r until you reach skill level 215.
	>>Requires: 1 Wild Steelbloom + 1 Goldthorn + 1 Leaded Vial per elixir.
	--.skill alchemy,215,1 >>Level your Alchemy skill to 215.
	+Once you reach Alchemy level 215, click here.

step -- Level 215-230
	>>Create |cRXP_FRIENDLY_Superior Healing Potion|r until you reach skill level 230.
	>>Requires: 1 Sungrass + 1 Khadgar's Whisker + 1 Crystal Vial per potion.
	--.skill alchemy,230,1 >>Level your Alchemy skill to 230.
	+Once you reach Alchemy level 230, click here.

step -- Level 230-265
	>>Create |cRXP_FRIENDLY_Elixir of Detect Undead|r until you reach skill level 265.
	>>Requires: 1 Arthas' Tears + 1 Crystal Vial per elixir.
	--.skill alchemy,265,1 >>Level your Alchemy skill to 265.
	+Once you reach Alchemy level 265, click here.

step -- Learn Recipe: Superior Mana Potion
	>>If you haven't already, make sure you have the Superior Mana Potion recipe.
	>>Right-click the recipe to learn it.
	.use 13477

step -- Level 265-285
	>>Create |cRXP_FRIENDLY_Superior Mana Potion|r until you reach skill level 285.
	>>Requires: 2 Sungrass + 2 Blindweed + 1 Crystal Vial per potion.
	--.skill alchemy,285,1 >>Level your Alchemy skill to 285.
	+Once you reach Alchemy level 285, click here.

step -- Buy Recipe: Major Healing Potion
	#completewith next
	.zone Winterspring >>Travel to Winterspring.

step -- Purchase Final Recipe
	>>Find |cRXP_FRIENDLY_Evie Whirlbrew|r at Everlook in Winterspring.
	>>Buy |cRXP_FRIENDLY_Recipe: Major Healing Potion|r.
	>>|cRXP_WARN_This is a limited supply item - may need to wait for respawn.|r
	.collect 13458,1 -- Recipe: Major Healing Potion
	.target Evie Whirlbrew
	.goto Winterspring,61.2,38.8

step -- Learn Recipe: Major Healing Potion
	>>Right-click the recipe to learn it.
	.use 13458

step -- Level 285-300
	>>Create |cRXP_FRIENDLY_Major Healing Potion|r until you reach skill level 300.
	>>Requires: 2 Golden Sansam + 1 Mountain Silversage + 1 Crystal Vial per potion.
	--.skill alchemy,300,1 >>Level your Alchemy skill to 300.
	+Once you reach Alchemy level 300, click here.

step -- Congratulations
	>>Congratulations on reaching level 300 Alchemy!
	>>You can now create the most powerful potions and elixirs in Classic WoW.
	.link https://boostyou.ai >> |cRXP_WARN_More free WoW Classic content!|r
	+Thank you for using |cRXP_FRIENDLY_Nutri|r Classic Alchemy Guide.
]])
-------------------BLACKSMITHING----------------------------------------------------------------------------------------
RXPGuides.RegisterGuide("Nutri Classic Professions",[[
#name Nutri - Blacksmithing 1-300

step -- Introduction
	>>This guide will guide you through leveling your Blacksmithing profession from 1-300 for Alliance players.
	>>|cRXP_WARN_Blacksmithing pairs best with Mining to save gold on materials.|r
	>>You will need access to a forge and anvil to craft items.
	.link https://shop.restedxp.com/ref/nutri/ >> |cRXP_WARN_Click here for 10% off all RestedXP guides!|r
	+Click here to continue

-- APPRENTICE BLACKSMITHING (1-75)
step -- Materials for 1-300
	>>|cRXP_WARN_Full materials list for 1-300 Blacksmithing:|r
	.collect 2835,150 -- Rough Stone
	.collect 2840,150 -- Copper Bar
	.collect 2836,95 -- Coarse Stone
	.collect 2842,5 -- Silver Bar
	.collect 2841,140 -- Bronze Bar
	.collect 2838,105 -- Heavy Stone
	.collect 3577,5 -- Gold Bar
	.collect 3575,230 -- Iron Bar
	.collect 2605,35 -- Green Dye
	.collect 3859,190 -- Steel Bar
	.collect 7912,520 -- Solid Stone
	.collect 4338,60 -- Mageweave Cloth
	.collect 3860,250 -- Mithril Bar
	.collect 12365,20 -- Dense Stone
	.collect 12359,730 -- Thorium Bar
	.collect 7910,30 -- Star Ruby
	.collect 7909,5 -- Aquamarine
	>>|cRXP_WARN_These can be farmed with Mining or purchased from the Auction House.|r

step -- Go to Stormwind
	#completewith next
	.zone Stormwind City >>Go to Stormwind City to learn Blacksmithing.

step -- Learn Apprentice Blacksmithing
	>>Talk to |cRXP_FRIENDLY_Therum Deepforge|r in the Dwarven District.
	.train 2018 >> Train Apprentice Blacksmithing.
	.target Therum Deepforge
	.goto Stormwind City,56.0,16.0

step -- Level 1-30
	>>Create |cRXP_FRIENDLY_Rough Sharpening Stone|r until you reach skill level 30.
	>>Requires: 1 Rough Stone per stone.
	>>|cRXP_WARN_You must be near a forge and anvil to craft.|r
	--.skill blacksmithing,30,1 >>Level your Blacksmithing skill to 30.
	+Once you reach Blacksmithing level 30, click here.

step -- Level 30-65
	>>Create |cRXP_FRIENDLY_Rough Grinding Stone|r until you reach skill level 65.
	>>Requires: 2 Rough Stone per stone.
	>>|cRXP_WARN_Save 10 Rough Grinding Stones for later!|r
	--.skill blacksmithing,65,1 >>Level your Blacksmithing skill to 65.
	+Once you reach Blacksmithing level 65, click here.

step -- Level 65-75
	>>Create |cRXP_FRIENDLY_Coarse Sharpening Stone|r until you reach skill level 75.
	>>Requires: 1 Coarse Stone per stone.
	--.skill blacksmithing,75,1 >>Level your Blacksmithing skill to 75.
	+Once you reach Blacksmithing level 75, click here.

-- JOURNEYMAN BLACKSMITHING (75-125)
step -- Learn Journeyman Blacksmithing
	>>You need to be at least level 10 to learn Journeyman Blacksmithing.
	>>Talk to |cRXP_FRIENDLY_Therum Deepforge|r again.
	.train 3100 >> Train Journeyman Blacksmithing.
	.target Therum Deepforge
	.goto Stormwind City,56.0,16.0

step -- Level 75-90
	>>Create |cRXP_FRIENDLY_Coarse Grinding Stone|r until you reach skill level 90.
	>>Requires: 2 Coarse Stone per stone.
	>>|cRXP_WARN_Save all Coarse Grinding Stones for later!|r
	--.skill blacksmithing,90,1 >>Level your Blacksmithing skill to 90.
	+Once you reach Blacksmithing level 90, click here.

step -- Level 90-100
	>>Create |cRXP_FRIENDLY_Runed Copper Belt|r until you reach skill level 100.
	>>Requires: 10 Copper Bar per belt.
	--.skill blacksmithing,100,1 >>Level your Blacksmithing skill to 100.
	+Once you reach Blacksmithing level 100, click here.

step -- Level 100-105
	>>Create |cRXP_FRIENDLY_Silver Rod|r until you reach skill level 105.
	>>Requires: 1 Silver Bar + 2 Rough Grinding Stone per rod.
	--.skill blacksmithing,105,1 >>Level your Blacksmithing skill to 105.
	+Once you reach Blacksmithing level 105, click here.

step -- Level 105-110
	>>Create |cRXP_FRIENDLY_Runed Copper Belt|r until you reach skill level 110.
	>>Requires: 10 Copper Bar per belt.
	--.skill blacksmithing,110,1 >>Level your Blacksmithing skill to 110.
	+Once you reach Blacksmithing level 110, click here.

step -- Level 110-125
	>>Create |cRXP_FRIENDLY_Rough Bronze Leggings|r until you reach skill level 125.
	>>Requires: 6 Bronze Bar per leggings.
	--.skill blacksmithing,125,1 >>Level your Blacksmithing skill to 125.
	+Once you reach Blacksmithing level 125, click here.

-- EXPERT BLACKSMITHING (125-225)
step -- Prepare for Expert Blacksmithing
	>>|cRXP_WARN_You need to be at least level 20 to learn Expert Blacksmithing.|r
	>>You will travel to Ironforge to train.
	+Click here to continue

step -- Go to Ironforge
	#completewith next
	.zone Ironforge >>Travel to Ironforge.

step -- Learn Expert Blacksmithing
	>>Find |cRXP_FRIENDLY_Bengus Deepforge|r in Ironforge.
	>>Train Expert Blacksmithing.
	.train 3538 >> Train Expert Blacksmithing.
	.target Bengus Deepforge
	.goto Ironforge,51.4,42.6

step -- Level 125-140
	>>Create |cRXP_FRIENDLY_Heavy Grinding Stone|r until you reach skill level 140.
	>>Requires: 3 Heavy Stone per stone.
	>>|cRXP_WARN_Save all Heavy Grinding Stones for later!|r
	--.skill blacksmithing,140,1 >>Level your Blacksmithing skill to 140.
	+Once you reach Blacksmithing level 140, click here.

step -- Level 140-150
	>>Create |cRXP_FRIENDLY_Patterned Bronze Bracers|r until you reach skill level 150.
	>>Requires: 5 Bronze Bar + 2 Coarse Grinding Stone per bracers.
	--.skill blacksmithing,150,1 >>Level your Blacksmithing skill to 150.
	+Once you reach Blacksmithing level 150, click here.

step -- Level 150-155
	>>Create |cRXP_FRIENDLY_Golden Rod|r until you reach skill level 155.
	>>Requires: 1 Gold Bar + 2 Coarse Grinding Stone per rod.
	--.skill blacksmithing,155,1 >>Level your Blacksmithing skill to 155.
	+Once you reach Blacksmithing level 155, click here.

step -- Level 155-165
	>>Create |cRXP_FRIENDLY_Green Iron Leggings|r until you reach skill level 165.
	>>Requires: 8 Iron Bar + 1 Heavy Grinding Stone + 1 Green Dye per leggings.
	>>|cRXP_WARN_Green Dye is sold by Tailoring and Leatherworking supply vendors.|r
	--.skill blacksmithing,165,1 >>Level your Blacksmithing skill to 165.
	+Once you reach Blacksmithing level 165, click here.

step -- Level 165-190
	>>Create |cRXP_FRIENDLY_Green Iron Bracers|r until you reach skill level 190.
	>>Requires: 6 Iron Bar + 1 Green Dye per bracers.
	--.skill blacksmithing,190,1 >>Level your Blacksmithing skill to 190.
	+Once you reach Blacksmithing level 190, click here.

step -- Level 190-200
	>>Create |cRXP_FRIENDLY_Golden Scale Bracers|r until you reach skill level 200.
	>>Requires: 5 Steel Bar + 2 Heavy Grinding Stone per bracers.
	--.skill blacksmithing,200,1 >>Level your Blacksmithing skill to 200.
	+Once you reach Blacksmithing level 200, click here.

step -- Level 200-210
	>>Create |cRXP_FRIENDLY_Solid Grinding Stone|r until you reach skill level 210.
	>>Requires: 4 Solid Stone per stone.
	>>|cRXP_WARN_Save at least 10 Solid Grinding Stones for later!|r
	--.skill blacksmithing,210,1 >>Level your Blacksmithing skill to 210.
	+Once you reach Blacksmithing level 210, click here.

step -- Level 210-225
	>>Create |cRXP_FRIENDLY_Heavy Mithril Gauntlet|r until you reach skill level 225.
	>>Requires: 6 Mithril Bar + 4 Mageweave Cloth per gauntlet.
	--.skill blacksmithing,225,1 >>Level your Blacksmithing skill to 225.
	+Once you reach Blacksmithing level 225, click here.

-- ARTISAN BLACKSMITHING (225-300)
step -- Prepare for Artisan Blacksmithing
	>>|cRXP_WARN_You need to be at least level 35 to learn Artisan Blacksmithing.|r
	>>You will travel to Booty Bay in Stranglethorn Vale.
	+Click here to continue

step -- Go to Booty Bay
	#completewith next
	.zone Stranglethorn Vale >>Travel to Stranglethorn Vale (Booty Bay).

step -- Learn Artisan Blacksmithing
	>>Find |cRXP_FRIENDLY_Brikk Keencraft|r in Booty Bay.
	>>Train Artisan Blacksmithing.
	.train 9785 >> Train Artisan Blacksmithing.
	.target Brikk Keencraft
	.goto Stranglethorn Vale,28.2,76.2

step -- Level 225-235
	>>Create |cRXP_FRIENDLY_Steel Plate Helm|r until you reach skill level 235.
	>>Requires: 14 Steel Bar + 1 Solid Grinding Stone per helm.
	--.skill blacksmithing,235,1 >>Level your Blacksmithing skill to 235.
	+Once you reach Blacksmithing level 235, click here.

step -- Buy Recipe: Mithril Spurs
	>>|cRXP_WARN_Buy Plans: Mithril Spurs from the Auction House.|r
	>>This recipe is essential for efficient leveling.
	.collect 7989,1 -- Plans: Mithril Spurs

step -- Learn Recipe
	>>Right-click the plans to learn Mithril Spurs.
	.use 7989

step -- Level 235-250
	>>Create |cRXP_FRIENDLY_Mithril Spurs|r until you reach skill level 250.
	>>Requires: 4 Mithril Bar + 3 Solid Grinding Stone per spurs.
	--.skill blacksmithing,250,1 >>Level your Blacksmithing skill to 250.
	+Once you reach Blacksmithing level 250, click here.

step -- Level 250-260
	>>Create |cRXP_FRIENDLY_Dense Sharpening Stone|r until you reach skill level 260.
	>>Requires: 1 Dense Stone per stone.
	--.skill blacksmithing,260,1 >>Level your Blacksmithing skill to 260.
	+Once you reach Blacksmithing level 260, click here.

step -- Level 260-270
	>>Continue creating |cRXP_FRIENDLY_Mithril Spurs|r until you reach skill level 270.
	>>Requires: 4 Mithril Bar + 3 Solid Grinding Stone per spurs.
	--.skill blacksmithing,270,1 >>Level your Blacksmithing skill to 270.
	+Once you reach Blacksmithing level 270, click here.

step -- Prepare for Imperial Plate Quests
	>>|cRXP_WARN_You will need to complete quests in Tanaris to learn the final recipes.|r
	>>|cRXP_WARN_Bring at least 190 Thorium Bar with you!|r
	+Click here to continue

step -- Go to Tanaris
	#completewith next
	.zone Tanaris >>Travel to Tanaris.

step -- Accept Imperial Plate Belt Quest
	>>Find |cRXP_FRIENDLY_Derotain Mudsipper|r in Tanaris.
	>>Accept |cRXP_FRIENDLY_Imperial Plate Belt|r quest.
	.accept 7653 >> Accept Imperial Plate Belt
	.target Derotain Mudsipper
	.goto Tanaris,51.4,28.7

step -- Complete Imperial Plate Belt Quest
	>>Turn in 20 Thorium Bar to complete the quest.
	.turnin 7653 >> Turn in Imperial Plate Belt
	.target Derotain Mudsipper

step -- Accept Imperial Plate Bracers Quest
	>>Accept |cRXP_FRIENDLY_Imperial Plate Bracers|r quest.
	.accept 7655 >> Accept Imperial Plate Bracers
	.target Derotain Mudsipper

step -- Complete Imperial Plate Bracers Quest
	>>Turn in 20 Thorium Bar to complete the quest.
	.turnin 7655 >> Turn in Imperial Plate Bracers
	.target Derotain Mudsipper

step -- Accept Imperial Plate Boots Quest
	>>Accept |cRXP_FRIENDLY_Imperial Plate Boots|r quest.
	.accept 7654 >> Accept Imperial Plate Boots
	.target Derotain Mudsipper

step -- Complete Imperial Plate Boots Quest
	>>Turn in 40 Thorium Bar to complete the quest.
	.turnin 7654 >> Turn in Imperial Plate Boots
	.target Derotain Mudsipper

step -- Level 270-295
	>>Create |cRXP_FRIENDLY_Imperial Plate Bracers|r until you reach skill level 295.
	>>Requires: 20 Thorium Bar + 1 Star Ruby per bracers.
	>>|cRXP_WARN_This recipe turns yellow at 290, so you may need extra materials.|r
	--.skill blacksmithing,295,1 >>Level your Blacksmithing skill to 295.
	+Once you reach Blacksmithing level 295, click here.

step -- Level 295-300
	>>Create |cRXP_FRIENDLY_Imperial Plate Boots|r until you reach skill level 300.
	>>Requires: 34 Thorium Bar + 1 Star Ruby + 1 Aquamarine per boots.
	--.skill blacksmithing,300,1 >>Level your Blacksmithing skill to 300.
	+Once you reach Blacksmithing level 300, click here.

step -- Specialization Information
	>>|cRXP_WARN_At level 40 and Blacksmithing 200, you can specialize:|r
	>>- Armorsmithing (craft powerful armor)
	>>- Weaponsmithing (craft powerful weapons)
	>>This is optional and can be done later.
	+Click here to continue

step -- Congratulations
	>>Congratulations on reaching level 300 Blacksmithing!
	>>You can now craft the most powerful weapons and armor in Classic WoW.
	.link https://boostyou.ai >> |cRXP_WARN_More free WoW Classic content!|r
	+Thank you for using |cRXP_FRIENDLY_Nutri|r Classic Blacksmithing Guide.
]])
-------------------ENCHANTING----------------------------------------------------------------------------------------
RXPGuides.RegisterGuide("Nutri Classic Professions",[[
#name Nutri - Enchanting 1-300

step -- Introduction
	>>This guide will guide you through leveling your Enchanting profession from 1-300 for Alliance players.
	>>|cRXP_WARN_Enchanting pairs well with Tailoring since you can disenchant crafted items.|r
	>>You will be disenchanting items and creating various enchantments to level.
	.link https://shop.restedxp.com/ref/nutri/ >> |cRXP_WARN_Click here for 10% off all RestedXP guides!|r
	+Click here to continue

step -- Required Materials
	>>|cRXP_WARN_Total materials to collect before starting (bring extra for yellow/green steps):|r
	.collect 6217,1 -- Copper Rod
	.collect 6338,1 -- Silver Rod
	.collect 11128,1 -- Golden Rod
	.collect 11144,1 -- Truesilver Rod
	.collect 16206,1 -- Arcanite Rod
	.collect 1210,1 -- Shadowgem
	.collect 5500,1 -- Iridescent Pearl
	.collect 7971,1 -- Black Pearl
	.collect 13926,1 -- Golden Pearl
	.collect 10938,1 -- Lesser Magic Essence
	.collect 10939,12 -- Greater Magic Essence
	.collect 10940,105 -- Strange Dust
	.collect 10998,25 -- Lesser Astral Essence
	.collect 11082,2 -- Greater Astral Essence
	.collect 11083,100 -- Soul Dust
	.collect 11137,171 -- Vision Dust
	.collect 11135,2 -- Greater Mystic Essence
	.collect 11174,5 -- Lesser Nether Essence
	.collect 11176,335 -- Dream Dust
	.collect 8831,30 -- Purple Lotus
	.collect 8925,15 -- Crystal Vial
	.collect 16204,50 -- Illusion Dust
	.collect 16203,4 -- Greater Eternal Essence
	.collect 14343,4 -- Small Brilliant Shard
	.collect 14344,2 -- Large Brilliant Shard

step -- Materials Overview
	>>|cRXP_WARN_Enchanting materials are obtained by disenchanting items.|r
	>>You will need various dusts, essences, and shards throughout the leveling process.
	>>Rods and gems must be purchased or crafted.
	>>Check the Auction House regularly for materials.
	+Click here to continue

-- APPRENTICE ENCHANTING (1-50)
step -- Go to Stormwind
	#completewith next
	.zone Stormwind City >>Go to Stormwind City to learn Enchanting.

step -- Learn Apprentice Enchanting
	>>Talk to |cRXP_FRIENDLY_Lucan Cordell|r in the Mage Quarter.
	.train 7411 >> Train Apprentice Enchanting.
	.target Lucan Cordell
	.goto Stormwind City,49.8,55.2

step -- Buy Copper Rod
	>>Buy a |cRXP_FRIENDLY_Copper Rod|r from an Enchanting Supplies vendor near your trainer.
	>>|cRXP_WARN_Don't buy it from the Auction House - it's sold by vendors!|r
	.collect 6217,1 -- Copper Rod

step -- Level 1-2
	>>Create |cRXP_FRIENDLY_Runed Copper Rod|r.
	>>Requires: 1 Copper Rod + 1 Strange Dust + 1 Lesser Magic Essence.
	--.skill enchanting,2,1 >>Level your Enchanting skill to 2.
	+Once you reach Enchanting level 2, click here.

step -- Level 2-50
	>>Create |cRXP_FRIENDLY_Enchant Bracer - Minor Health|r until you reach skill level 50.
	>>Requires: 1 Strange Dust per enchant.
	>>|cRXP_WARN_You can also disenchant green quality items instead of crafting.|r
	--.skill enchanting,50,1 >>Level your Enchanting skill to 50.
	+Once you reach Enchanting level 50, click here.

-- JOURNEYMAN ENCHANTING (50-135)
step -- Learn Journeyman Enchanting
	>>You need to be at least level 10 to learn Journeyman Enchanting.
	>>Talk to |cRXP_FRIENDLY_Lucan Cordell|r again.
	.train 7412 >> Train Journeyman Enchanting.
	.target Lucan Cordell
	.goto Stormwind City,49.8,55.2

step -- Level 50-100
	>>Continue creating |cRXP_FRIENDLY_Enchant Bracer - Minor Health|r until you reach skill level 100.
	>>Requires: 1 Strange Dust per enchant.
	--.skill enchanting,100,1 >>Level your Enchanting skill to 100.
	+Once you reach Enchanting level 100, click here.

step -- Buy Silver Rod
	>>Buy or craft a |cRXP_FRIENDLY_Silver Rod|r.
	>>|cRXP_WARN_Blacksmiths can craft this for you.|r
	.collect 6338,1 -- Silver Rod

step -- Prepare Materials for Runed Silver Rod
	>>You will need:
	>>1 Silver Rod
	>>6 Strange Dust
	>>3 Greater Magic Essence
	>>1 Shadowgem
	+Click here to continue

step -- Level 100-101
	>>Create |cRXP_FRIENDLY_Runed Silver Rod|r.
	--.skill enchanting,101,1 >>Level your Enchanting skill to 101.
	+Once you reach Enchanting level 101, click here.

step -- Level 101-110
	>>Create |cRXP_FRIENDLY_Greater Magic Wand|r until you reach skill level 110.
	>>Requires: 1 Simple Wood + 1 Greater Magic Essence per wand.
	--.skill enchanting,110,1 >>Level your Enchanting skill to 110.
	+Once you reach Enchanting level 110, click here.

step -- Buy Recipes in Ashenvale
	>>|cRXP_WARN_You need to purchase two recipes from Ashenvale.|r
	>>These are limited supply recipes - may need to wait for respawn.
	+Click here to continue

step -- Go to Ashenvale
	#completewith next
	.zone Ashenvale >>Travel to Ashenvale.

step -- Buy Limited Supply Recipes
	>>Find |cRXP_FRIENDLY_Dalria|r in Ashenvale.
	>>Buy the following recipes:
	>>|cRXP_FRIENDLY_Formula: Enchant Bracer - Lesser Strength|r
	>>|cRXP_FRIENDLY_Formula: Enchant Cloak - Minor Agility|r
	.collect 11101,1 -- Formula: Enchant Bracer - Lesser Strength
	.collect 11039,1 -- Formula: Enchant Cloak - Minor Agility
	.target Dalria
	.goto Ashenvale,35.0,49.0

step -- Learn Recipes
	>>Right-click both recipes to learn them.
	.use 11101
	.use 11039

step -- Level 110-135
	>>Create |cRXP_FRIENDLY_Enchant Cloak - Minor Agility|r until you reach skill level 135.
	>>Requires: 1 Lesser Astral Essence per enchant.
	--.skill enchanting,135,1 >>Level your Enchanting skill to 135.
	+Once you reach Enchanting level 135, click here.

-- EXPERT ENCHANTING (135-225)
step -- Prepare for Expert Enchanting
	>>|cRXP_WARN_You need to be at least level 20 and have Enchanting 125+ to learn Expert Enchanting.|r
	>>You will travel to Elwynn Forest to train.
	+Click here to continue

step -- Go to Elwynn Forest
	#completewith next
	.zone Elwynn Forest >>Travel to Elwynn Forest.

step -- Learn Expert Enchanting
	>>Find |cRXP_FRIENDLY_Kitta Firewind|r at the Tower of Azora.
	>>She is at the top level of the tower.
	.train 7413 >> Train Expert Enchanting.
	.target Kitta Firewind
	.goto Elwynn Forest,64.9,70.6

step -- Level 135-155
	>>Create |cRXP_FRIENDLY_Enchant Bracer - Lesser Stamina|r until you reach skill level 155.
	>>Requires: 2 Soul Dust per enchant.
	--.skill enchanting,155,1 >>Level your Enchanting skill to 155.
	+Once you reach Enchanting level 155, click here.

step -- Buy Golden Rod
	>>Buy or craft a |cRXP_FRIENDLY_Golden Rod|r.
	>>|cRXP_WARN_Blacksmiths can craft this for you.|r
	.collect 11128,1 -- Golden Rod

step -- Prepare Materials for Runed Golden Rod
	>>You will need:
	>>1 Golden Rod
	>>1 Iridescent Pearl
	>>2 Greater Astral Essence
	>>2 Soul Dust
	+Click here to continue

step -- Level 155-156
	>>Create |cRXP_FRIENDLY_Runed Golden Rod|r.
	--.skill enchanting,156,1 >>Level your Enchanting skill to 156.
	+Once you reach Enchanting level 156, click here.

step -- Level 156-185
	>>Create |cRXP_FRIENDLY_Enchant Bracer - Lesser Strength|r until you reach skill level 185.
	>>Requires: 2 Soul Dust per enchant.
	--.skill enchanting,185,1 >>Level your Enchanting skill to 185.
	+Once you reach Enchanting level 185, click here.

step -- Level 185-200
	>>Create |cRXP_FRIENDLY_Enchant Bracer - Strength|r until you reach skill level 200.
	>>Requires: 1 Vision Dust per enchant.
	--.skill enchanting,200,1 >>Level your Enchanting skill to 200.
	+Once you reach Enchanting level 200, click here.

step -- Buy Truesilver Rod
	>>Buy or craft a |cRXP_FRIENDLY_Truesilver Rod|r.
	>>|cRXP_WARN_Blacksmiths can craft this for you.|r
	.collect 11144,1 -- Truesilver Rod

step -- Prepare Materials for Runed Truesilver Rod
	>>You will need:
	>>1 Truesilver Rod
	>>1 Black Pearl
	>>2 Greater Mystic Essence
	>>2 Vision Dust
	+Click here to continue

step -- Level 200-201
	>>Create |cRXP_FRIENDLY_Runed Truesilver Rod|r.
	--.skill enchanting,201,1 >>Level your Enchanting skill to 201.
	+Once you reach Enchanting level 201, click here.

step -- Level 201-220
	>>Continue creating |cRXP_FRIENDLY_Enchant Bracer - Strength|r until you reach skill level 220.
	>>Requires: 1 Vision Dust per enchant.
	>>|cRXP_WARN_This recipe turns yellow, so you may need extra materials.|r
	--.skill enchanting,220,1 >>Level your Enchanting skill to 220.
	+Once you reach Enchanting level 220, click here.

step -- Level 220-225
	>>Create |cRXP_FRIENDLY_Enchant Cloak - Greater Defense|r until you reach skill level 225.
	>>Requires: 3 Vision Dust per enchant.
	--.skill enchanting,225,1 >>Level your Enchanting skill to 225.
	+Once you reach Enchanting level 225, click here.

-- ARTISAN ENCHANTING (225-300)
step -- Prepare for Artisan Enchanting
	>>|cRXP_WARN_You need to be at least level 35 and have Enchanting 200+ to learn Artisan Enchanting.|r
	>>|cRXP_WARN_The Artisan trainer is inside Uldaman dungeon.|r
	>>You will need a group or a level 60 character to help you.
	>>|cRXP_WARN_Bring 11.79 Gold and ~200 Vision Dust to learn all recipes and reach 250!|r
	+Click here to continue

step -- Go to Uldaman (Back Entrance)
	>>Travel to the back entrance of |cRXP_FRIENDLY_Uldaman|r in the Badlands.
	>>This step does not auto-complete.
	.goto Badlands,42.1,81.8
	+Click here to continue

step -- Enter Uldaman and Find Annora
	>>Enter Uldaman through the back entrance.
	>>Clear ALL mobs in Annora's room for her to spawn.
	>>|cRXP_WARN_She will NOT appear unless the area is fully cleared.|r
	>>|cRXP_WARN_Learn ALL recipes from Annora before leaving!|r
	>>Manually purchase and learn every available formula from Annora before leaving.
	.train 13920 >> Train Artisan Enchanting.
	.target Annora
	.goto Badlands,42.1,81.8

step -- Level 225-230
	>>Create |cRXP_FRIENDLY_Enchant Gloves - Agility|r until you reach skill level 230.
	>>Requires: 1 Lesser Nether Essence + 1 Vision Dust per enchant.
	--.skill enchanting,230,1 >>Level your Enchanting skill to 230.
	+Once you reach Enchanting level 230, click here.

step -- Level 230-235
	>>Create |cRXP_FRIENDLY_Enchant Boots - Stamina|r until you reach skill level 235.
	>>Requires: 5 Vision Dust per enchant.
	--.skill enchanting,235,1 >>Level your Enchanting skill to 235.
	+Once you reach Enchanting level 235, click here.

step -- Level 235-250
	>>Create |cRXP_FRIENDLY_Enchant Chest - Superior Health|r until you reach skill level 250.
	>>Requires: 6 Vision Dust per enchant.
	--.skill enchanting,250,1 >>Level your Enchanting skill to 250.
	+Once you reach Enchanting level 250, click here.

step -- Buy Recipe: Lesser Mana Oil
	#completewith next
	.zone Silithus >>Travel to Silithus.

step -- Purchase Recipe
	>>Find |cRXP_FRIENDLY_Kania|r inside the inn (upstairs) in Silithus.
	>>Buy |cRXP_FRIENDLY_Formula: Lesser Mana Oil|r.
	.collect 20754,1 -- Formula: Lesser Mana Oil
	.target Kania
	.goto Silithus,55.4,36.6

step -- Learn Recipe
	>>Right-click the formula to learn it.
	.use 20754

step -- Level 250-265
	>>Create |cRXP_FRIENDLY_Lesser Mana Oil|r until you reach skill level 265.
	>>Requires: 3 Dream Dust + 2 Purple Lotus + 1 Crystal Vial per oil.
	--.skill enchanting,265,1 >>Level your Enchanting skill to 265.
	+Once you reach Enchanting level 265, click here.

step -- Buy Recipe: Enchant Shield - Greater Stamina
	#completewith next
	.zone Darnassus >>Travel to Darnassus.

step -- Purchase Recipe
	>>Find |cRXP_FRIENDLY_Mythrin'dir|r in Darnassus.
	>>Buy |cRXP_FRIENDLY_Formula: Enchant Shield - Greater Stamina|r.
	>>|cRXP_WARN_This is a limited supply recipe - may need to wait for respawn.|r
	>>|cRXP_WARN_This recipe binds on pickup - don't buy with an alt!|r
	.collect 20727,1 -- Formula: Enchant Shield - Greater Stamina
	.target Mythrin'dir
	.goto Darnassus,58.0,34.2

step -- Learn Recipe
	>>Right-click the formula to learn it.
	.use 20727

step -- Level 265-294
	>>Create |cRXP_FRIENDLY_Enchant Shield - Greater Stamina|r until you reach skill level 294.
	>>Requires: 10 Dream Dust per enchant.
	--.skill enchanting,294,1 >>Level your Enchanting skill to 294.
	+Once you reach Enchanting level 294, click here.

step -- Buy Arcanite Rod
	>>Buy or craft an |cRXP_FRIENDLY_Arcanite Rod|r.
	>>|cRXP_WARN_Blacksmiths can craft this for you.|r
	.collect 16206,1 -- Arcanite Rod

step -- Buy Recipes in Moonglade
	#completewith next
	.zone Moonglade >>Travel to Moonglade.

step -- Purchase Final Recipes
	>>Find |cRXP_FRIENDLY_Lorelae Wintersong|r at Nighthaven in Moonglade.
	>>Buy both recipes:
	>>|cRXP_FRIENDLY_Formula: Runed Arcanite Rod|r
	>>|cRXP_FRIENDLY_Formula: Enchant Cloak - Superior Defense|r
	.collect 16243,1 -- Formula: Runed Arcanite Rod
	.collect 16224,1 -- Formula: Enchant Cloak - Superior Defense
	.target Lorelae Wintersong
	.goto Moonglade,52.5,40.6

step -- Learn Recipes
	>>Right-click both formulas to learn them.
	.use 16243
	.use 16224

step -- Prepare Materials for Runed Arcanite Rod
	>>You will need:
	>>1 Arcanite Rod
	>>1 Golden Pearl
	>>10 Illusion Dust
	>>4 Greater Eternal Essence
	>>4 Small Brilliant Shard
	>>2 Large Brilliant Shard
	+Click here to continue

step -- Level 294-295
	>>Create |cRXP_FRIENDLY_Runed Arcanite Rod|r.
	--.skill enchanting,295,1 >>Level your Enchanting skill to 295.
	+Once you reach Enchanting level 295, click here.

step -- Level 295-300
	>>Create |cRXP_FRIENDLY_Enchant Cloak - Superior Defense|r until you reach skill level 300.
	>>Requires: 8 Illusion Dust per enchant.
	--.skill enchanting,300,1 >>Level your Enchanting skill to 300.
	+Once you reach Enchanting level 300, click here.

step -- Congratulations
	>>Congratulations on reaching level 300 Enchanting!
	>>You can now create the most powerful enchantments in Classic WoW.
	.link https://boostyou.ai >> |cRXP_WARN_More free WoW Classic content!|r
	+Thank you for using |cRXP_FRIENDLY_Nutri|r Classic Enchanting Guide.
]])
-------------------ENGINEERING----------------------------------------------------------------------------------------
RXPGuides.RegisterGuide("Nutri Classic Professions",[[
#name Nutri - Engineering 1-300

step -- Introduction
	>>This guide will guide you through leveling your Engineering profession from 1-300 for Alliance players.
	>>|cRXP_WARN_Engineering pairs best with Mining to save gold on materials.|r
	>>You will craft various gadgets, bombs, and devices to level.
	.link https://shop.restedxp.com/ref/nutri/ >> |cRXP_WARN_Click here for 10% off all RestedXP guides!|r
	+Click here to continue

step -- Materials Overview
	>>|cRXP_WARN_Full materials list for 1-300 Engineering:|r
	.collect 2835,60 -- Rough Stone
	.collect 2840,66 -- Copper Bar
	.collect 2836,60 -- Coarse Stone
	.collect 2589,50 -- Linen Cloth
	.collect 2842,5 -- Silver Bar
	.collect 2841,110 -- Bronze Bar
	.collect 2838,30 -- Heavy Stone
	.collect 1206,10 -- Moss Agate
	.collect 2592,60 -- Wool Cloth
	.collect 2319,15 -- Medium Leather
	.collect 3859,4 -- Steel Bar
	.collect 7912,120 -- Solid Stone
	.collect 3860,170 -- Mithril Bar
	.collect 4338,20 -- Mageweave Cloth
	.collect 12365,60 -- Dense Stone
	.collect 12359,225 -- Thorium Bar
	.collect 14047,35 -- Runecloth

step -- Buy Blacksmith Hammer
	>>Buy a |cRXP_FRIENDLY_Blacksmith Hammer|r from an Engineering Supply vendor.
	>>|cRXP_WARN_You need this tool to craft Engineering items.|r
	.collect 5956,1 -- Blacksmith Hammer

-- APPRENTICE ENGINEERING (1-75)
step -- Go to Ironforge
	#completewith next
	.zone Ironforge >>Go to Ironforge to learn Engineering.

step -- Learn Apprentice Engineering
	>>Talk to |cRXP_FRIENDLY_Springspindle Fizzlegear|r in Tinker Town.
	.train 4036 >> Train Apprentice Engineering.
	.target Springspindle Fizzlegear
	.goto Ironforge,68.2,46.0

step -- Level 1-30
	>>Create |cRXP_FRIENDLY_Rough Blasting Powder|r until you reach skill level 30.
	>>Requires: 1 Rough Stone per powder.
	>>|cRXP_WARN_Save all 60 Rough Blasting Powder - you'll need them later!|r
	--.skill engineering,30,1 >>Level your Engineering skill to 30.
	+Once you reach Engineering level 30, click here.

step -- Level 30-50
	>>Create |cRXP_FRIENDLY_Handful of Copper Bolts|r until you reach skill level 50.
	>>Requires: 1 Copper Bar per handful.
	>>|cRXP_WARN_Save around 30 Handful of Copper Bolts - you'll need them later!|r
	--.skill engineering,50,1 >>Level your Engineering skill to 50.
	+Once you reach Engineering level 50, click here.

step -- Level 50-51
	>>Create |cRXP_FRIENDLY_Arclight Spanner|r.
	>>Requires: 6 Copper Bar.
	>>|cRXP_WARN_Keep this tool - you'll use it to craft Engineering recipes!|r
	--.skill engineering,51,1 >>Level your Engineering skill to 51.
	+Once you reach Engineering level 51, click here.

step -- Level 51-75
	>>Create |cRXP_FRIENDLY_Rough Copper Bomb|r until you reach skill level 75.
	>>Requires: 1 Copper Bar + 1 Handful of Copper Bolts + 2 Rough Blasting Powder + 1 Linen Cloth per bomb.
	--.skill engineering,75,1 >>Level your Engineering skill to 75.
	+Once you reach Engineering level 75, click here.

-- JOURNEYMAN ENGINEERING (75-135)
step -- Learn Journeyman Engineering
	>>You need to be at least level 10 to learn Journeyman Engineering.
	>>Talk to |cRXP_FRIENDLY_Springspindle Fizzlegear|r again.
	.train 4037 >> Train Journeyman Engineering.
	.target Springspindle Fizzlegear
	.goto Ironforge,68.2,46.0

step -- Level 75-90
	>>Create |cRXP_FRIENDLY_Coarse Blasting Powder|r until you reach skill level 90.
	>>Requires: 1 Coarse Stone per powder.
	>>|cRXP_WARN_Save all 60 Coarse Blasting Powder - you'll need them later!|r
	--.skill engineering,90,1 >>Level your Engineering skill to 90.
	+Once you reach Engineering level 90, click here.

step -- Level 90-100
	>>Create |cRXP_FRIENDLY_Coarse Dynamite|r until you reach skill level 100.
	>>Requires: 3 Coarse Blasting Powder + 1 Linen Cloth per dynamite.
	--.skill engineering,100,1 >>Level your Engineering skill to 100.
	+Once you reach Engineering level 100, click here.

step -- Level 100-105
	>>Create |cRXP_FRIENDLY_Silver Contact|r until you reach skill level 105.
	>>Requires: 1 Silver Bar per contact.
	--.skill engineering,105,1 >>Level your Engineering skill to 105.
	+Once you reach Engineering level 105, click here.

step -- Buy Weak Flux
	>>Buy |cRXP_FRIENDLY_Weak Flux|r from an Engineering Supply vendor near your trainer.
	.collect 2880,25 -- Weak Flux

step -- Level 105-125
	>>Create |cRXP_FRIENDLY_Bronze Tube|r until you reach skill level 125.
	>>Requires: 2 Bronze Bar + 1 Weak Flux per tube.
	--.skill engineering,125,1 >>Level your Engineering skill to 125.
	+Once you reach Engineering level 125, click here.

step -- Level 125-135
	>>Create |cRXP_FRIENDLY_Standard Scope|r until you reach skill level 135.
	>>Requires: 1 Bronze Tube + 1 Moss Agate per scope.
	--.skill engineering,135,1 >>Level your Engineering skill to 135.
	+Once you reach Engineering level 135, click here.

-- EXPERT ENGINEERING (135-200)
step -- Prepare for Expert Engineering
	>>|cRXP_WARN_You need to be at least level 20 to learn Expert Engineering.|r
	>>You can learn Expert Engineering in Ironforge.
	+Click here to continue

step -- Learn Expert Engineering
	>>Talk to |cRXP_FRIENDLY_Springspindle Fizzlegear|r again.
	.train 4038 >> Train Expert Engineering.
	.target Springspindle Fizzlegear
	.goto Ironforge,68.2,46.0

step -- Level 135-150 (Part 1)
	>>Create |cRXP_FRIENDLY_Heavy Blasting Powder|r until you have 30.
	>>Requires: 1 Heavy Stone per powder.
	>>|cRXP_WARN_Save all 30 - you'll need them later!|r
	>>Continue to the next step.
	+Click here to continue

step -- Level 135-150 (Part 2)
	>>Create |cRXP_FRIENDLY_Whirring Bronze Gizmo|r until you have 15 and reach skill level 150.
	>>Requires: 2 Bronze Bar + 1 Wool Cloth per gizmo.
	>>|cRXP_WARN_Save all 15 - you'll need them later!|r
	--.skill engineering,150,1 >>Level your Engineering skill to 150.
	+Once you reach Engineering level 150, click here.

step -- Level 150-160
	>>Create |cRXP_FRIENDLY_Bronze Framework|r until you reach skill level 160.
	>>Requires: 2 Bronze Bar + 1 Medium Leather + 1 Wool Cloth per framework.
	>>|cRXP_WARN_Save at least 15 Bronze Frameworks!|r
	--.skill engineering,160,1 >>Level your Engineering skill to 160.
	+Once you reach Engineering level 160, click here.

step -- Level 160-175
	>>Create |cRXP_FRIENDLY_Explosive Sheep|r until you reach skill level 175.
	>>Requires: 2 Heavy Blasting Powder + 1 Whirring Bronze Gizmo + 1 Bronze Framework + 2 Wool Cloth per sheep.
	>>|cRXP_WARN_Save 5 Explosive Sheep if you plan to choose Goblin Engineering at 200!|r
	--.skill engineering,175,1 >>Level your Engineering skill to 175.
	+Once you reach Engineering level 175, click here.

step -- Level 175-194
	>>Create |cRXP_FRIENDLY_Solid Blasting Powder|r until you reach skill level 194.
	>>Requires: 2 Solid Stone per powder.
	>>|cRXP_WARN_Save all Solid Blasting Powder - you'll need them later!|r
	--.skill engineering,194,1 >>Level your Engineering skill to 194.
	+Once you reach Engineering level 194, click here.

step -- Level 194-195
	>>Create |cRXP_FRIENDLY_Gyromatic Micro-Adjustor|r.
	>>Requires: 4 Steel Bar.
	>>|cRXP_WARN_Keep this tool - you need it for crafting Engineering recipes!|r
	--.skill engineering,195,1 >>Level your Engineering skill to 195.
	+Once you reach Engineering level 195, click here.

step -- Level 195-200
	>>Create |cRXP_FRIENDLY_Mithril Tube|r until you reach skill level 200.
	>>Requires: 3 Mithril Bar per tube.
	>>|cRXP_WARN_Save 6 Mithril Tubes if you plan to choose Gnomish Engineering at 200!|r
	--.skill engineering,200,1 >>Level your Engineering skill to 200.
	+Once you reach Engineering level 200, click here.

-- ARTISAN ENGINEERING (200-300)
step -- Prepare for Artisan Engineering
	>>|cRXP_WARN_You need to be at least level 35 to learn Artisan Engineering.|r
	>>You will travel to Tanaris (Gadgetzan) to train.
	+Click here to continue

step -- Go to Tanaris
	#completewith next
	.zone Tanaris >>Travel to Tanaris (Gadgetzan).

step -- Learn Artisan Engineering
	>>Find |cRXP_FRIENDLY_Buzzek Bracketswing|r in Gadgetzan.
	>>He's standing outside the Inn, on the left side, near the mailbox.
	.train 12656 >> Train Artisan Engineering.
	.target Buzzek Bracketswing
	.goto Tanaris,52.2,27.8

step -- Specialization Information
	>>|cRXP_WARN_At Engineering 200, you can specialize in:|r
	>>- Gnomish Engineering (trinkets, gadgets, teleporters)
	>>- Goblin Engineering (bombs, explosives, sapper charges)
	>>This is optional and can be done at any time after reaching 200.
	+Click here to continue

step -- Level 200-215
	>>Create |cRXP_FRIENDLY_Unstable Trigger|r until you reach skill level 215.
	>>Requires: 1 Mithril Bar + 1 Mageweave Cloth + 1 Solid Blasting Powder per trigger.
	>>|cRXP_WARN_Save all 20 Unstable Triggers - you'll need them later!|r
	--.skill engineering,215,1 >>Level your Engineering skill to 215.
	+Once you reach Engineering level 215, click here.

step -- Level 215-238
	>>Create |cRXP_FRIENDLY_Mithril Casing|r until you reach skill level 238.
	>>Requires: 3 Mithril Bar per casing.
	>>|cRXP_WARN_Save all 40 Mithril Casings - you'll need them later!|r
	--.skill engineering,238,1 >>Level your Engineering skill to 238.
	+Once you reach Engineering level 238, click here.

step -- Level 238-250
	>>Create |cRXP_FRIENDLY_Hi-Explosive Bomb|r until you reach skill level 250.
	>>Requires: 2 Mithril Casing + 1 Unstable Trigger + 2 Solid Blasting Powder per bomb.
	--.skill engineering,250,1 >>Level your Engineering skill to 250.
	+Once you reach Engineering level 250, click here.

step -- Level 250-260
	>>Create |cRXP_FRIENDLY_Dense Blasting Powder|r until you reach skill level 260.
	>>Requires: 2 Dense Stone per powder.
	>>|cRXP_WARN_You may need to make more than 30 to reach 260.|r
	--.skill engineering,260,1 >>Level your Engineering skill to 260.
	+Once you reach Engineering level 260, click here.

step -- Buy Recipe: Thorium Widget
	>>Buy |cRXP_FRIENDLY_Schematic: Thorium Widget|r from an Engineering Supply vendor in Ironforge.
	.collect 16041,1 -- Schematic: Thorium Widget

step -- Learn Recipe
	>>Right-click the schematic to learn it.
	.use 16041

step -- Level 260-285
	>>Create |cRXP_FRIENDLY_Thorium Widget|r until you reach skill level 285.
	>>Requires: 3 Thorium Bar + 1 Runecloth per widget.
	>>|cRXP_WARN_Recipe turns yellow, so you may need extra materials.|r
	--.skill engineering,285,1 >>Level your Engineering skill to 285.
	+Once you reach Engineering level 285, click here.

step -- Buy Recipe: Thorium Tube
	#completewith next
	.zone Winterspring >>Travel to Winterspring.

step -- Purchase Final Recipe
	>>Find |cRXP_FRIENDLY_Xizzer Fizzbolt|r at Everlook in Winterspring.
	>>He's in the first building to the right.
	>>Buy |cRXP_FRIENDLY_Schematic: Thorium Tube|r.
	.collect 16047,1 -- Schematic: Thorium Tube
	.target Xizzer Fizzbolt
	.goto Winterspring,61.2,38.9

step -- Learn Recipe
	>>Right-click the schematic to learn it.
	.use 16047

step -- Level 285-300
	>>Create |cRXP_FRIENDLY_Thorium Tube|r until you reach skill level 300.
	>>Requires: 6 Thorium Bar per tube.
	--.skill engineering,300,1 >>Level your Engineering skill to 300.
	+Once you reach Engineering level 300, click here.

step -- Congratulations
	>>Congratulations on reaching level 300 Engineering!
	>>You can now craft the most powerful gadgets and explosives in Classic WoW.
	>>|cRXP_WARN_Don't forget to choose a specialization if you haven't already!|r
	.link https://boostyou.ai >> |cRXP_WARN_More free WoW Classic content!|r
	+Thank you for using |cRXP_FRIENDLY_Nutri|r Classic Engineering Guide.
]])
-------------------LEATHERWORKING----------------------------------------------------------------------------------------
RXPGuides.RegisterGuide("Nutri Classic Professions",[[
#name Nutri - Leatherworking 1-300

step -- Introduction
	>>This guide will guide you through leveling your Leatherworking profession from 1-300 for Alliance players.
	>>|cRXP_WARN_Leatherworking pairs best with Skinning to save gold on materials.|r
	>>You will craft various leather armor and items to level.
	.link https://shop.restedxp.com/ref/nutri/ >> |cRXP_WARN_Click here for 10% off all RestedXP guides!|r
	+Click here to continue

step -- Materials Overview
	>>|cRXP_WARN_Full materials list for 1-300 Leatherworking:|r
	.collect 2934,57 -- Ruined Leather Scraps
	.collect 2318,470 -- Light Leather
	.collect 2319,335 -- Medium Leather
	.collect 4235,20 -- Heavy Hide
	.collect 4234,195 -- Heavy Leather
	.collect 4304,650 -- Thick Leather
	.collect 8170,400 -- Rugged Leather
	.collect 14047,100 -- Runecloth
	>>|cRXP_WARN_Threads, dyes, and salt are sold by Leatherworking Supply vendors.|r

-- APPRENTICE LEATHERWORKING (1-55)
step -- Go to Stormwind
	#completewith next
	.zone Stormwind City >>Go to Stormwind City to learn Leatherworking.

step -- Learn Apprentice Leatherworking
	>>Talk to |cRXP_FRIENDLY_Simon Tanner|r in the Mage Quarter.
	.train 2108 >> Train Apprentice Leatherworking.
	.target Simon Tanner
	.goto Stormwind City,44.4,46.0

step -- Level 1-20
	>>Create |cRXP_FRIENDLY_Light Leather|r until you reach skill level 20.
	>>Requires: 3 Ruined Leather Scraps per Light Leather.
	>>|cRXP_WARN_Skip this if you don't have Ruined Leather Scraps.|r
	--.skill leatherworking,20,1 >>Level your Leatherworking skill to 20.
	+Once you reach Leatherworking level 20, click here.

step -- Level 20-45 (or 1-45)
	>>Create |cRXP_FRIENDLY_Light Armor Kit|r until you reach skill level 45.
	>>Requires: 1 Light Leather per kit.
	--.skill leatherworking,45,1 >>Level your Leatherworking skill to 45.
	+Once you reach Leatherworking level 45, click here.

step -- Buy Coarse Thread
	>>Buy |cRXP_FRIENDLY_Coarse Thread|r from a Leatherworking Supply vendor.
	.collect 2320,100 -- Coarse Thread

step -- Level 45-55
	>>Create |cRXP_FRIENDLY_Handstitched Leather Cloak|r until you reach skill level 55.
	>>Requires: 2 Light Leather + 1 Coarse Thread per cloak.
	--.skill leatherworking,55,1 >>Level your Leatherworking skill to 55.
	+Once you reach Leatherworking level 55, click here.

-- JOURNEYMAN LEATHERWORKING (55-137)
step -- Learn Journeyman Leatherworking
	>>You need to be at least level 10 to learn Journeyman Leatherworking.
	>>Talk to |cRXP_FRIENDLY_Simon Tanner|r again.
	.train 3104 >> Train Journeyman Leatherworking.
	.target Simon Tanner
	.goto Stormwind City,44.4,46.0

step -- Level 55-100
	>>Create |cRXP_FRIENDLY_Embossed Leather Gloves|r until you reach skill level 100.
	>>Requires: 3 Light Leather + 2 Coarse Thread per gloves.
	--.skill leatherworking,100,1 >>Level your Leatherworking skill to 100.
	+Once you reach Leatherworking level 100, click here.

step -- Level 100-125
	>>Create |cRXP_FRIENDLY_Fine Leather Belt|r until you reach skill level 125.
	>>Requires: 6 Light Leather + 2 Coarse Thread per belt.
	>>|cRXP_WARN_Save these belts for later use!|r
	--.skill leatherworking,125,1 >>Level your Leatherworking skill to 125.
	+Once you reach Leatherworking level 125, click here.

step -- Buy Fine Thread and Gray Dye
	>>Buy |cRXP_FRIENDLY_Fine Thread|r and |cRXP_FRIENDLY_Gray Dye|r from vendors.
	.collect 2321,50 -- Fine Thread
	.collect 2325,35 -- Gray Dye

step -- Level 125-137
	>>Create |cRXP_FRIENDLY_Dark Leather Boots|r until you reach skill level 137.
	>>Requires: 4 Medium Leather + 2 Fine Thread + 1 Gray Dye per boots.
	--.skill leatherworking,137,1 >>Level your Leatherworking skill to 137.
	+Once you reach Leatherworking level 137, click here.

-- EXPERT LEATHERWORKING (137-205)
step -- Prepare for Expert Leatherworking
	>>|cRXP_WARN_You need to be at least level 20 and have Leatherworking 125+ to learn Expert Leatherworking.|r
	>>You will travel to Darnassus to train.
	+Click here to continue

step -- Go to Darnassus
	#completewith next
	.zone Darnassus >>Travel to Darnassus.

step -- Learn Expert Leatherworking
	>>Find |cRXP_FRIENDLY_Telonis|r in Darnassus.
	>>Train Expert Leatherworking.
	.train 3811 >> Train Expert Leatherworking.
	.target Telonis
	.goto Darnassus,60.0,37.2

step -- Level 137-150
	>>Create |cRXP_FRIENDLY_Dark Leather Pants|r until you reach skill level 150.
	>>Requires: 12 Medium Leather + 1 Gray Dye + 1 Fine Thread per pants.
	--.skill leatherworking,150,1 >>Level your Leatherworking skill to 150.
	+Once you reach Leatherworking level 150, click here.

step -- Level 150-155
	>>Create |cRXP_FRIENDLY_Heavy Leather|r until you reach skill level 155.
	>>Requires: 5 Medium Leather per Heavy Leather.
	--.skill leatherworking,155,1 >>Level your Leatherworking skill to 155.
	+Once you reach Leatherworking level 155, click here.

step -- Buy Salt
	>>Buy |cRXP_FRIENDLY_Salt|r from a Leatherworking Supply vendor.
	.collect 4289,60 -- Salt

step -- Level 155-165
	>>Create |cRXP_FRIENDLY_Cured Heavy Hide|r until you reach skill level 165.
	>>Requires: 1 Heavy Hide + 3 Salt per hide.
	>>|cRXP_WARN_Save all 20 Cured Heavy Hides for later!|r
	--.skill leatherworking,165,1 >>Level your Leatherworking skill to 165.
	+Once you reach Leatherworking level 165, click here.

step -- Level 165-180
	>>Create |cRXP_FRIENDLY_Heavy Armor Kit|r until you reach skill level 180.
	>>Requires: 5 Heavy Leather + 1 Fine Thread per kit.
	--.skill leatherworking,180,1 >>Level your Leatherworking skill to 180.
	+Once you reach Leatherworking level 180, click here.

step -- Buy Silken Thread
	>>Buy |cRXP_FRIENDLY_Silken Thread|r from a vendor.
	.collect 8343,15 -- Silken Thread

step -- Level 180-190
	>>Create |cRXP_FRIENDLY_Barbaric Shoulders|r until you reach skill level 190.
	>>Requires: 8 Heavy Leather + 1 Cured Heavy Hide + 2 Fine Thread per shoulders.
	--.skill leatherworking,190,1 >>Level your Leatherworking skill to 190.
	+Once you reach Leatherworking level 190, click here.

step -- Level 190-200
	>>Create |cRXP_FRIENDLY_Guardian Gloves|r until you reach skill level 200.
	>>Requires: 4 Heavy Leather + 1 Cured Heavy Hide + 1 Silken Thread per gloves.
	--.skill leatherworking,200,1 >>Level your Leatherworking skill to 200.
	+Once you reach Leatherworking level 200, click here.

step -- Level 200-205
	>>Create |cRXP_FRIENDLY_Thick Armor Kit|r until you reach skill level 205.
	>>Requires: 5 Thick Leather + 1 Silken Thread per kit.
	--.skill leatherworking,205,1 >>Level your Leatherworking skill to 205.
	+Once you reach Leatherworking level 205, click here.

-- ARTISAN LEATHERWORKING (205-300)
step -- Prepare for Artisan Leatherworking
	>>|cRXP_WARN_You need to be at least level 35 and have Leatherworking 200+ to learn Artisan Leatherworking.|r
	>>You will travel to the Hinterlands.
	+Click here to continue

step -- Go to The Hinterlands
	#completewith next
	.zone The Hinterlands >>Travel to The Hinterlands.

step -- Learn Artisan Leatherworking
	>>Find |cRXP_FRIENDLY_Drakk Stonehand|r at Wildhammer Keep in Aerie Peak.
	>>He's inside the main keep, to the left and down one layer of stairs.
	.train 10662 >> Train Artisan Leatherworking.
	.target Drakk Stonehand
	.goto The Hinterlands,13.4,43.4

step -- Level 205-235
	>>Create |cRXP_FRIENDLY_Nightscape Headband|r until you reach skill level 235.
	>>Requires: 5 Thick Leather + 2 Silken Thread per headband.
	--.skill leatherworking,235,1 >>Level your Leatherworking skill to 235.
	+Once you reach Leatherworking level 235, click here.

step -- Level 235-250
	>>Create |cRXP_FRIENDLY_Nightscape Pants|r until you reach skill level 250.
	>>Requires: 14 Thick Leather + 4 Silken Thread per pants.
	--.skill leatherworking,250,1 >>Level your Leatherworking skill to 250.
	+Once you reach Leatherworking level 250, click here.

step -- Buy Heavy Silken Thread
	>>Buy |cRXP_FRIENDLY_Heavy Silken Thread|r from a vendor.
	>>Note: Silken Thread and Heavy Silken Thread share the same item ID in Classic.
	.collect 8343,30 -- Heavy Silken Thread

step -- Level 250-260
	>>Create |cRXP_FRIENDLY_Nightscape Boots|r until you reach skill level 260.
	>>Requires: 16 Thick Leather + 2 Heavy Silken Thread per boots.
	--.skill leatherworking,260,1 >>Level your Leatherworking skill to 260.
	+Once you reach Leatherworking level 260, click here.

step -- Buy Recipe: Wicked Leather Gauntlets
	>>|cRXP_WARN_Buy Pattern: Wicked Leather Gauntlets from a vendor or Auction House.|r
	>>This is a limited supply recipe in Western Plaguelands.
	.collect 15725,1 -- Pattern: Wicked Leather Gauntlets

step -- Learn Recipe
	>>Right-click the pattern to learn it.
	.use 15725

step -- Buy Rune Thread and Black Dye
	>>Buy |cRXP_FRIENDLY_Rune Thread|r and |cRXP_FRIENDLY_Black Dye|r from vendors.
	.collect 14341,50 -- Rune Thread
	.collect 2325,50 -- Black Dye

step -- Level 260-290
	>>Create |cRXP_FRIENDLY_Wicked Leather Gauntlets|r until you reach skill level 290.
	>>Requires: 8 Rugged Leather + 1 Black Dye + 1 Rune Thread per gauntlets.
	>>|cRXP_WARN_This recipe turns yellow, so you may need extra materials.|r
	--.skill leatherworking,290,1 >>Level your Leatherworking skill to 290.
	+Once you reach Leatherworking level 290, click here.

step -- Buy Recipe: Runic Leather Headband
	>>|cRXP_WARN_Buy Pattern: Runic Leather Headband from Eastern Plaguelands or Auction House.|r
	>>This is a limited supply recipe.
	.collect 15756,1 -- Pattern: Runic Leather Headband

step -- Learn Recipe
	>>Right-click the pattern to learn it.
	.use 15756

step -- Level 290-300
	>>Create |cRXP_FRIENDLY_Runic Leather Headband|r until you reach skill level 300.
	>>Requires: 14 Rugged Leather + 10 Runecloth + 1 Rune Thread per headband.
	--.skill leatherworking,300,1 >>Level your Leatherworking skill to 300.
	+Once you reach Leatherworking level 300, click here.

step -- Specialization Information
	>>|cRXP_WARN_At level 40 and Leatherworking 225, you can specialize in:|r
	>>- Dragonscale Leatherworking (Mail-type gear)
	>>- Elemental Leatherworking (Resistance & Agility Leather gear)
	>>- Tribal Leatherworking (Intellect/Agility Leather gear & Devilsaur set)
	>>This is optional and can be done later.
	+Click here to continue

step -- Congratulations
	>>Congratulations on reaching level 300 Leatherworking!
	>>You can now craft the most powerful leather and mail armor in Classic WoW.
	.link https://boostyou.ai >> |cRXP_WARN_More free WoW Classic content!|r
	+Thank you for using |cRXP_FRIENDLY_Nutri|r Classic Leatherworking Guide.
]])
-------------------TAILORING----------------------------------------------------------------------------------------
RXPGuides.RegisterGuide("Nutri Classic Professions",[[
#name Nutri - Tailoring 1-300

step -- Introduction
	>>This guide will guide you through leveling your Tailoring profession from 1-300 for Alliance players.
	>>|cRXP_WARN_Tailoring doesn't require a gathering profession since cloth drops from humanoid enemies.|r
	>>Tailoring pairs well with Enchanting - you can disenchant crafted items.
	.link https://shop.restedxp.com/ref/nutri/ >> |cRXP_WARN_Click here for 10% off all RestedXP guides!|r
	+Click here to continue

step -- Materials Overview
	>>|cRXP_WARN_Full materials list for 1-300 Tailoring:|r
	.collect 2589,204 -- Linen Cloth
	.collect 2592,135 -- Wool Cloth
	.collect 4306,804 -- Silk Cloth
	.collect 4338,470 -- Mageweave Cloth
	.collect 14047,1195 -- Runecloth
	.collect 8170,110 -- Rugged Leather
	>>|cRXP_WARN_Threads and dyes are sold by Tailoring Supply vendors.|r

-- APPRENTICE TAILORING (1-75)
step -- Go to Stormwind
	#completewith next
	.zone Stormwind City >>Go to Stormwind City to learn Tailoring.

step -- Learn Apprentice Tailoring
	>>Talk to |cRXP_FRIENDLY_Sellandus|r in the Mage Quarter.
	.train 3908 >> Train Apprentice Tailoring.
	.target Sellandus
	.goto Stormwind City,53.2,81.6

step -- Level 1-45
	>>Create |cRXP_FRIENDLY_Bolt of Linen Cloth|r until you reach skill level 45.
	>>Requires: 2 Linen Cloth per bolt.
	>>|cRXP_WARN_Stop at 45 and only make more if needed later!|r
	--.skill tailoring,45,1 >>Level your Tailoring skill to 45.
	+Once you reach Tailoring level 45, click here.

step -- Buy Coarse Thread
	>>Buy |cRXP_FRIENDLY_Coarse Thread|r from a Tailoring Supply vendor.
	.collect 2320,60 -- Coarse Thread

step -- Level 40-70
	>>Create |cRXP_FRIENDLY_Linen Belt|r until you reach skill level 70.
	>>Requires: 1 Bolt of Linen Cloth + 1 Coarse Thread per belt.
	--.skill tailoring,70,1 >>Level your Tailoring skill to 70.
	+Once you reach Tailoring level 70, click here.

step -- Level 70-75
	>>Create |cRXP_FRIENDLY_Reinforced Linen Cape|r until you reach skill level 75.
	>>Requires: 2 Bolt of Linen Cloth + 3 Coarse Thread per cape.
	--.skill tailoring,75,1 >>Level your Tailoring skill to 75.
	+Once you reach Tailoring level 75, click here.

-- JOURNEYMAN TAILORING (75-125)
step -- Learn Journeyman Tailoring
	>>You need to be at least level 10 to learn Journeyman Tailoring.
	>>Talk to |cRXP_FRIENDLY_Sellandus|r again.
	.train 3909 >> Train Journeyman Tailoring.
	.target Sellandus
	.goto Stormwind City,53.2,81.6

step -- Level 75-100
	>>Create |cRXP_FRIENDLY_Bolt of Woolen Cloth|r until you reach skill level 100.
	>>Requires: 3 Wool Cloth per bolt.
	--.skill tailoring,100,1 >>Level your Tailoring skill to 100.
	+Once you reach Tailoring level 100, click here.

step -- Buy Fine Thread
	>>Buy |cRXP_FRIENDLY_Fine Thread|r from a Tailoring Supply vendor.
	.collect 2321,50 -- Fine Thread

step -- Level 100-110
	>>Create |cRXP_FRIENDLY_Simple Kilt|r until you reach skill level 110.
	>>Requires: 4 Bolt of Linen Cloth + 1 Fine Thread per kilt.
	--.skill tailoring,110,1 >>Level your Tailoring skill to 110.
	+Once you reach Tailoring level 110, click here.

step -- Level 110-125
	>>Create |cRXP_FRIENDLY_Double-stitched Woolen Shoulders|r until you reach skill level 125.
	>>Requires: 3 Bolt of Woolen Cloth + 2 Fine Thread per shoulders.
	--.skill tailoring,125,1 >>Level your Tailoring skill to 125.
	+Once you reach Tailoring level 125, click here.

-- EXPERT TAILORING (125-220)
step -- Prepare for Expert Tailoring
	>>|cRXP_WARN_You need to be at least level 20 to learn Expert Tailoring.|r
	>>You can learn Expert Tailoring in Stormwind City.
	+Click here to continue

step -- Learn Expert Tailoring
	>>Find |cRXP_FRIENDLY_Georgio Bolero|r in Stormwind City.
	>>Train Expert Tailoring.
	.train 3910 >> Train Expert Tailoring.
	.target Georgio Bolero
	.goto Stormwind City,53.0,81.8

step -- Level 125-145
	>>Create |cRXP_FRIENDLY_Bolt of Silk Cloth|r until you reach skill level 145.
	>>Requires: 4 Silk Cloth per bolt.
	--.skill tailoring,145,1 >>Level your Tailoring skill to 145.
	+Once you reach Tailoring level 145, click here.

step -- Buy Blue Dye
	>>Buy |cRXP_FRIENDLY_Blue Dye|r from a Tailoring Supply vendor.
	.collect 6260,36 -- Blue Dye

step -- Level 145-160
	>>Create |cRXP_FRIENDLY_Azure Silk Hood|r until you reach skill level 160.
	>>Requires: 2 Bolt of Silk Cloth + 2 Blue Dye + 1 Fine Thread per hood.
	--.skill tailoring,160,1 >>Level your Tailoring skill to 160.
	+Once you reach Tailoring level 160, click here.

step -- Level 160-170
	>>Create |cRXP_FRIENDLY_Silk Headband|r until you reach skill level 170.
	>>Requires: 3 Bolt of Silk Cloth + 2 Fine Thread per headband.
	--.skill tailoring,170,1 >>Level your Tailoring skill to 170.
	+Once you reach Tailoring level 170, click here.

step -- Buy Bleach
	>>Buy |cRXP_FRIENDLY_Bleach|r from a Tailoring Supply vendor.
	.collect 2324,10 -- Bleach

step -- Level 170-175
	>>Create |cRXP_FRIENDLY_Formal White Shirt|r until you reach skill level 175.
	>>Requires: 3 Bolt of Silk Cloth + 2 Bleach + 1 Fine Thread per shirt.
	--.skill tailoring,175,1 >>Level your Tailoring skill to 175.
	+Once you reach Tailoring level 175, click here.

step -- Level 175-185
	>>Create |cRXP_FRIENDLY_Bolt of Mageweave|r until you reach skill level 185.
	>>Requires: 5 Mageweave Cloth per bolt.
	--.skill tailoring,185,1 >>Level your Tailoring skill to 185.
	+Once you reach Tailoring level 185, click here.

step -- Buy Red Dye
	>>Buy |cRXP_FRIENDLY_Red Dye|r from a Tailoring Supply vendor.
	.collect 2604,60 -- Red Dye

step -- Level 185-205
	>>Create |cRXP_FRIENDLY_Crimson Silk Vest|r until you reach skill level 205.
	>>Requires: 4 Bolt of Silk Cloth + 2 Fine Thread + 2 Red Dye per vest.
	--.skill tailoring,205,1 >>Level your Tailoring skill to 205.
	+Once you reach Tailoring level 205, click here.

step -- Buy Silken Thread
	>>Buy |cRXP_FRIENDLY_Silken Thread|r from a Tailoring Supply vendor.
	.collect 8343,25 -- Silken Thread

step -- Level 205-215
	>>Create |cRXP_FRIENDLY_Crimson Silk Pantaloons|r until you reach skill level 215.
	>>Requires: 4 Bolt of Silk Cloth + 2 Red Dye + 2 Silken Thread per pantaloons.
	--.skill tailoring,215,1 >>Level your Tailoring skill to 215.
	+Once you reach Tailoring level 215, click here.

step -- Buy Orange Dye and Heavy Silken Thread
	>>Buy |cRXP_FRIENDLY_Orange Dye|r and |cRXP_FRIENDLY_Heavy Silken Thread|r from vendors.
	.collect 2605,5 -- Orange Dye
	.collect 8343,75 -- Heavy Silken Thread

step -- Level 215-220
	>>Create |cRXP_FRIENDLY_Orange Mageweave Shirt|r until you reach skill level 220.
	>>Requires: 1 Bolt of Mageweave + 1 Orange Dye + 1 Heavy Silken Thread per shirt.
	--.skill tailoring,220,1 >>Level your Tailoring skill to 220.
	+Once you reach Tailoring level 220, click here.

-- ARTISAN TAILORING (220-300)
step -- Prepare for Artisan Tailoring
	>>|cRXP_WARN_You need to be at least level 35 to learn Artisan Tailoring.|r
	>>You will travel to Dustwallow Marsh.
	+Click here to continue

step -- Go to Dustwallow Marsh
	#completewith next
	.zone Dustwallow Marsh >>Travel to Dustwallow Marsh.

step -- Learn Artisan Tailoring
	>>Find |cRXP_FRIENDLY_Timothy Worthington|r at Theramore Isle.
	>>He's on the top floor of a small building, first on the left after getting off the boat.
	.train 12180 >> Train Artisan Tailoring.
	.target Timothy Worthington
	.goto Dustwallow Marsh,66.4,51.8

step -- Level 220-230
	>>Create |cRXP_FRIENDLY_Black Mageweave Gloves|r until you reach skill level 230.
	>>Requires: 2 Bolt of Mageweave + 2 Heavy Silken Thread per gloves.
	--.skill tailoring,230,1 >>Level your Tailoring skill to 230.
	+Once you reach Tailoring level 230, click here.

step -- Level 230-250
	>>Create |cRXP_FRIENDLY_Black Mageweave Headband|r until you reach skill level 250.
	>>Requires: 3 Bolt of Mageweave + 2 Heavy Silken Thread per headband.
	--.skill tailoring,250,1 >>Level your Tailoring skill to 250.
	+Once you reach Tailoring level 250, click here.

step -- Level 250-260
	>>Create |cRXP_FRIENDLY_Bolt of Runecloth|r until you reach skill level 260.
	>>Requires: 5 Runecloth per bolt.
	>>|cRXP_WARN_You need to make approximately 239 bolts total.|r
	--.skill tailoring,260,1 >>Level your Tailoring skill to 260.
	+Once you reach Tailoring level 260, click here.

step -- Buy Rune Thread
	>>Buy |cRXP_FRIENDLY_Rune Thread|r from a Tailoring Supply vendor.
	.collect 14341,75 -- Rune Thread

step -- Level 260-280
	>>Create |cRXP_FRIENDLY_Runecloth Belt|r until you reach skill level 280.
	>>Requires: 3 Bolt of Runecloth + 1 Rune Thread per belt.
	--.skill tailoring,280,1 >>Level your Tailoring skill to 280.
	+Once you reach Tailoring level 280, click here.

step -- Buy Recipe: Runecloth Bag
	#completewith next
	.zone Winterspring >>Travel to Winterspring.

step -- Purchase Recipe
	>>Find |cRXP_FRIENDLY_Qia|r inside the Bank building at Everlook.
	>>She's in the left corner as you walk in.
	>>Buy |cRXP_FRIENDLY_Pattern: Runecloth Bag|r.
	>>|cRXP_WARN_This is a limited supply recipe - may need to wait for respawn (5-90 min).|r
	.collect 14468,1 -- Pattern: Runecloth Bag
	.target Qia
	.goto Winterspring,61.2,37.2

step -- Learn Recipe
	>>Right-click the pattern to learn it.
	.use 14468

step -- Level 280-290
	>>Create |cRXP_FRIENDLY_Runecloth Bag|r until you reach skill level 290.
	>>Requires: 5 Bolt of Runecloth + 2 Rugged Leather + 1 Rune Thread per bag.
	>>|cRXP_WARN_You can sell these bags at the Auction House to recover gold!|r
	--.skill tailoring,290,1 >>Level your Tailoring skill to 290.
	+Once you reach Tailoring level 290, click here.

step -- Buy Recipe: Runecloth Gloves
	>>Buy |cRXP_FRIENDLY_Pattern: Runecloth Gloves|r from |cRXP_FRIENDLY_Qia|r.
	>>|cRXP_WARN_This is a limited supply recipe - may need to wait for respawn.|r
	.collect 14481,1 -- Pattern: Runecloth Gloves
	.target Qia
	.goto Winterspring,61.2,37.2

step -- Learn Recipe
	>>Right-click the pattern to learn it.
	.use 14481

step -- Level 290-300
	>>Create |cRXP_FRIENDLY_Runecloth Gloves|r until you reach skill level 300.
	>>Requires: 4 Bolt of Runecloth + 4 Rugged Leather + 1 Rune Thread per gloves.
	>>|cRXP_WARN_Recipe turns yellow at 290, so you may need extra materials.|r
	--.skill tailoring,300,1 >>Level your Tailoring skill to 300.
	+Once you reach Tailoring level 300, click here.

step -- Congratulations
	>>Congratulations on reaching level 300 Tailoring!
	>>You can now craft the most powerful cloth armor in Classic WoW.
	.link https://boostyou.ai >> |cRXP_WARN_More free WoW Classic content!|r
	+Thank you for using |cRXP_FRIENDLY_Nutri|r Classic Tailoring Guide.
]])
-------------------HERBALISM----------------------------------------------------------------------------------------
RXPGuides.RegisterGuide("Nutri Classic Professions",[[
#name Nutri - Herbalism 1-300

step -- Introduction
	>>This guide will guide you through leveling your Herbalism profession from 1-300 for Alliance players.
	>>|cRXP_WARN_Herbalism pairs best with Alchemy to use gathered herbs for potions.|r
	>>You will gather herbs across Azeroth to level.
	.link https://shop.restedxp.com/ref/nutri/ >> |cRXP_WARN_Click here for 10% off all RestedXP guides!|r
	+Click here to continue

step -- Required Materials
	>>No fixed materials to pre-collect; just have Herbalism trained (and any +herbalism gear you like).

-- APPRENTICE HERBALISM (1-70)
step -- Go to Stormwind
	#completewith next
	.zone Stormwind City >>Go to Stormwind City to learn Herbalism.

step -- Learn Apprentice Herbalism
	>>Talk to |cRXP_FRIENDLY_Tannysa|r in the Mage Quarter.
	.train 2366 >> Train Apprentice Herbalism.
	.target Tannysa
	.goto Stormwind City,55.6,85.6

step -- Level 1-70 Information
	>>|cRXP_WARN_You will level Herbalism from 1-70 in a starter zone.|r
	>>Gather these herbs:
	>>- Peacebloom
	>>- Silverleaf
	>>- Earthroot
	>>|cRXP_WARN_Recommended zone: Elwynn Forest|r
	+Click here to continue

step -- Go to Elwynn Forest
	#completewith next
	.zone Elwynn Forest >>Travel to Elwynn Forest.

step -- Level 1-70
	>>Gather herbs in Elwynn Forest until you reach skill level 70.
	>>Focus on Peacebloom, Silverleaf, and Earthroot.
	>>Travel around the entire zone gathering herbs.
	.goto Elwynn Forest,50.0,50.0,0
	--.skill herbalism,70,1 >>Level your Herbalism skill to 70.
	+Once you reach Herbalism level 70, click here.

-- JOURNEYMAN HERBALISM (70-115)
step -- Learn Journeyman Herbalism
	>>You need to be at least level 10 to learn Journeyman Herbalism.
	#completewith next
	.zone Stormwind City >>Return to Stormwind City.

step -- Train Journeyman
	>>Talk to |cRXP_FRIENDLY_Tannysa|r again.
	.train 2368 >> Train Journeyman Herbalism.
	.target Tannysa
	.goto Stormwind City,55.6,85.6

step -- Level 70-115 Information
	>>|cRXP_WARN_You will level Herbalism from 70-115 in a mid-level zone.|r
	>>Gather these herbs:
	>>- Mageroyal
	>>- Briarthorn
	>>- Stranglekelp (requires 85 skill)
	>>|cRXP_WARN_Recommended zone: Loch Modan or Darkshore|r
	+Click here to continue

step -- Go to Loch Modan
	#completewith next
	.zone Loch Modan >>Travel to Loch Modan.

step -- Level 70-115
	>>Gather herbs in Loch Modan until you reach skill level 115.
	>>Focus on Mageroyal, Briarthorn, and Stranglekelp.
	>>Travel around the entire zone, including shorelines for Stranglekelp.
	.goto Loch Modan,50.0,50.0,0
	--.skill herbalism,115,1 >>Level your Herbalism skill to 115.
	+Once you reach Herbalism level 115, click here.

-- EXPERT HERBALISM (115-170)
step -- Learn Expert Herbalism
	>>You need to be at least level 20 to learn Expert Herbalism.
	#completewith next
	.zone Stormwind City >>Return to Stormwind City.

step -- Train Expert
	>>Talk to |cRXP_FRIENDLY_Tannysa|r again.
	.train 3570 >> Train Expert Herbalism.
	.target Tannysa
	.goto Stormwind City,55.6,85.6

step -- Level 115-170 Information
	>>|cRXP_WARN_You will level Herbalism from 115-170.|r
	>>Gather these herbs:
	>>- Bruiseweed
	>>- Wild Steelbloom
	>>- Stranglekelp
	>>- Kingsblood (requires 125 skill)
	>>- Liferoot (requires 150 skill)
	>>|cRXP_WARN_Recommended zone: Hillsbrad Foothills or Wetlands|r
	+Click here to continue

step -- Go to Hillsbrad Foothills
	#completewith next
	.zone Hillsbrad Foothills >>Travel to Hillsbrad Foothills.

step -- Level 115-170
	>>Gather herbs in Hillsbrad Foothills until you reach skill level 170.
	>>Focus on all available herbs in the zone.
	>>Travel around the entire zone, including water areas.
	.goto Hillsbrad Foothills,50.0,50.0,0
	--.skill herbalism,170,1 >>Level your Herbalism skill to 170.
	+Once you reach Herbalism level 170, click here.

-- LEVEL 170-205
step -- Level 170-205 Information
	>>|cRXP_WARN_You will level Herbalism from 170-205.|r
	>>Gather these herbs:
	>>- Kingsblood
	>>- Liferoot
	>>- Fadeleaf
	>>- Goldthorn
	>>- Khadgar's Whisker (requires 185 skill)
	>>|cRXP_WARN_Recommended zone: Stranglethorn Vale or Arathi Highlands|r
	+Click here to continue

step -- Go to Arathi Highlands
	#completewith next
	.zone Arathi Highlands >>Travel to Arathi Highlands.

step -- Level 170-205
	>>Gather herbs in Arathi Highlands until you reach skill level 205.
	>>Focus on all available herbs in the zone.
	>>Travel around the entire zone.
	.goto Arathi Highlands,50.0,50.0,0
	--.skill herbalism,205,1 >>Level your Herbalism skill to 205.
	+Once you reach Herbalism level 205, click here.

-- ARTISAN HERBALISM (205-300)
step -- Learn Artisan Herbalism
	>>You need to be at least level 35 to learn Artisan Herbalism.
	#completewith next
	.zone Stormwind City >>Return to Stormwind City.

step -- Train Artisan
	>>Talk to |cRXP_FRIENDLY_Tannysa|r again.
	.train 11993 >> Train Artisan Herbalism.
	.target Tannysa
	.goto Stormwind City,55.6,85.6

step -- Level 205-230 Information
	>>|cRXP_WARN_You will level Herbalism from 205-230.|r
	>>Gather these herbs:
	>>- Purple Lotus
	>>- Firebloom
	>>|cRXP_WARN_Recommended zone: Tanaris or Searing Gorge|r
	+Click here to continue

step -- Go to Tanaris
	#completewith next
	.zone Tanaris >>Travel to Tanaris.

step -- Level 205-230
	>>Gather herbs in Tanaris until you reach skill level 230.
	>>Focus on Purple Lotus and Firebloom.
	>>Travel around the entire zone.
	.goto Tanaris,50.0,50.0,0
	--.skill herbalism,230,1 >>Level your Herbalism skill to 230.
	+Once you reach Herbalism level 230, click here.

step -- Level 230-270 Information
	>>|cRXP_WARN_You will level Herbalism from 230-270.|r
	>>Gather these herbs:
	>>- Sungrass
	>>- Purple Lotus
	>>- Ghost Mushroom (requires 245 skill, found in caves)
	>>- Golden Sansam
	>>|cRXP_WARN_Recommended zone: The Hinterlands|r
	+Click here to continue

step -- Go to The Hinterlands
	#completewith next
	.zone The Hinterlands >>Travel to The Hinterlands.

step -- Level 230-270
	>>Gather herbs in The Hinterlands until you reach skill level 270.
	>>Focus on all available herbs in the zone.
	>>Check caves for Ghost Mushrooms after reaching 245 skill.
	>>Travel around the entire zone.
	.goto The Hinterlands,50.0,50.0,0
	--.skill herbalism,270,1 >>Level your Herbalism skill to 270.
	+Once you reach Herbalism level 270, click here.

step -- Level 270-300 Information
	>>|cRXP_WARN_You will level Herbalism from 270-300.|r
	>>Gather these herbs:
	>>- Sungrass
	>>- Gromsblood
	>>- Golden Sansam
	>>- Dreamfoil
	>>- Mountain Silversage
	>>- Plaguebloom
	>>|cRXP_WARN_Recommended zone: Felwood|r
	+Click here to continue

step -- Go to Felwood
	#completewith next
	.zone Felwood >>Travel to Felwood.

step -- Level 270-300
	>>Gather herbs in Felwood until you reach skill level 300.
	>>Focus on all available high-level herbs.
	>>Travel around the entire zone thoroughly.
	.goto Felwood,50.0,50.0,0
	--.skill herbalism,300,1 >>Level your Herbalism skill to 300.
	+Once you reach Herbalism level 300, click here.

step -- Congratulations
	>>Congratulations on reaching level 300 Herbalism!
	>>You can now gather the highest level herbs in Classic WoW.
	.link https://boostyou.ai >> |cRXP_WARN_More free WoW Classic content!|r
	+Thank you for using |cRXP_FRIENDLY_Nutri|r Classic Herbalism Guide.
]])
-------------------MINING----------------------------------------------------------------------------------------
RXPGuides.RegisterGuide("Nutri Classic Professions",[[
#name Nutri - Mining 1-300

step -- Introduction
	>>This guide will guide you through leveling your Mining profession from 1-300 for Alliance players.
	>>|cRXP_WARN_Mining pairs best with Blacksmithing or Engineering.|r
	>>You will mine ore nodes across Azeroth to level.
	.link https://shop.restedxp.com/ref/nutri/ >> |cRXP_WARN_Click here for 10% off all RestedXP guides!|r
	+Click here to continue

step -- Required Materials
	>>|cRXP_WARN_Bring this before you start:|r
	.collect 2901,1 -- Mining Pick

step -- Buy Mining Pick
	>>|cRXP_WARN_You need a Mining Pick to mine ore nodes!|r
	>>Buy a |cRXP_FRIENDLY_Mining Pick|r from a Mining Supply vendor near your trainer.
	>>|cRXP_WARN_Keep it in your inventory - you don't need to equip it.|r
	.collect 2901,1 -- Mining Pick

-- APPRENTICE MINING (1-65)
step -- Go to Stormwind
	#completewith next
	.zone Stormwind City >>Go to Stormwind City to learn Mining.

step -- Learn Apprentice Mining
	>>Talk to |cRXP_FRIENDLY_Gelman Stonehand|r in the Dwarven District.
	.train 2575 >> Train Apprentice Mining.
	.target Gelman Stonehand
	.goto Stormwind City,59.6,37.8

step -- Level 1-65 Information
	>>|cRXP_WARN_You will level Mining from 1-65 in a starter zone.|r
	>>Mine: Copper Ore
	>>|cRXP_WARN_Recommended zone: Elwynn Forest or Dun Morogh|r
	+Click here to continue

step -- Go to Elwynn Forest
	#completewith next
	.zone Elwynn Forest >>Travel to Elwynn Forest.

step -- Level 1-65
	>>Mine Copper Ore in Elwynn Forest until you reach skill level 65.
	>>Travel around the entire zone looking for Copper Veins.
	>>|cRXP_WARN_Copper Veins are found along mountains and hills.|r
	.goto Elwynn Forest,50.0,50.0,0
	--.skill mining,65,1 >>Level your Mining skill to 65.
	+Once you reach Mining level 65, click here.

-- JOURNEYMAN MINING (65-125)
step -- Learn Journeyman Mining
	>>You need to be at least level 10 and have Mining 50+ to learn Journeyman Mining.
	#completewith next
	.zone Stormwind City >>Return to Stormwind City.

step -- Train Journeyman
	>>Talk to |cRXP_FRIENDLY_Gelman Stonehand|r again.
	.train 2576 >> Train Journeyman Mining.
	.target Gelman Stonehand
	.goto Stormwind City,59.6,37.8

step -- Level 65-125 Information
	>>|cRXP_WARN_You will level Mining from 65-125.|r
	>>Mine: Tin Ore, Copper Ore, Silver Ore
	>>|cRXP_WARN_At skill 75, learn to smelt Silver Ore for extra skill points!|r
	>>|cRXP_WARN_Recommended zone: Redridge Mountains or Hillsbrad Foothills|r
	+Click here to continue

step -- Go to Redridge Mountains
	#completewith next
	.zone Redridge Mountains >>Travel to Redridge Mountains.

step -- Level 65-125
	>>Mine Tin Ore and Copper Ore in Redridge Mountains until you reach skill level 125.
	>>Travel around the entire zone, focusing on mountainous areas.
	>>|cRXP_WARN_At 75 skill, smelt Silver Ore if available for bonus skill points.|r
	.goto Redridge Mountains,50.0,50.0,0
	--.skill mining,125,1 >>Level your Mining skill to 125.
	+Once you reach Mining level 125, click here.

-- EXPERT MINING (125-175)
step -- Learn Expert Mining
	>>You need to be at least level 20 and have Mining 125 to learn Expert Mining.
	#completewith next
	.zone Stormwind City >>Return to Stormwind City.

step -- Train Expert
	>>Talk to |cRXP_FRIENDLY_Gelman Stonehand|r again.
	.train 3564 >> Train Expert Mining.
	.target Gelman Stonehand
	.goto Stormwind City,59.6,37.8

step -- Level 125-175 Information
	>>|cRXP_WARN_You will level Mining from 125-175.|r
	>>Mine: Iron Ore, Tin Ore, Gold Ore
	>>|cRXP_WARN_At skill 155, learn to smelt Gold Ore for extra skill points!|r
	>>|cRXP_WARN_Recommended zone: Arathi Highlands|r
	+Click here to continue

step -- Go to Arathi Highlands
	#completewith next
	.zone Arathi Highlands >>Travel to Arathi Highlands.

step -- Level 125-175
	>>Mine Iron Ore in Arathi Highlands until you reach skill level 175.
	>>Travel around the entire zone, check caves for ore nodes.
	>>|cRXP_WARN_At 155 skill, smelt Gold Ore if available for bonus skill points.|r
	.goto Arathi Highlands,50.0,50.0,0
	--.skill mining,175,1 >>Level your Mining skill to 175.
	+Once you reach Mining level 175, click here.

-- ARTISAN MINING (175-245)
step -- Learn Artisan Mining
	>>You need to be at least level 35 and have Mining 200+ to learn Artisan Mining.
	>>|cRXP_WARN_You may train Artisan Mining at skill 200, but it is more efficient to continue mining first.|r
	+Click here to continue

step -- Level 175-200 Information
	>>|cRXP_WARN_You will level Mining from 175-200.|r
	>>Mine: Mithril Ore, Truesilver Ore
	>>|cRXP_WARN_Recommended zone: The Hinterlands or Tanaris|r
	+Click here to continue

step -- Go to The Hinterlands
	#completewith next
	.zone The Hinterlands >>Travel to The Hinterlands.

step -- Level 175-200
	>>Mine Mithril Ore in The Hinterlands until you reach skill level 200.
	>>Travel around the entire zone looking for Mithril Veins.
	.goto The Hinterlands,50.0,50.0,0
	--.skill mining,200,1 >>Level your Mining skill to 200.
	+Once you reach Mining level 200, click here.

step -- Train Artisan Mining
	#completewith next
	.zone Stormwind City >>Return to Stormwind City.

step -- Learn Artisan
	>>Talk to |cRXP_FRIENDLY_Gelman Stonehand|r again.
	.train 10248 >> Train Artisan Mining.
	.target Gelman Stonehand
	.goto Stormwind City,59.6,37.8

step -- Level 200-245 Information
	>>|cRXP_WARN_Continue mining Mithril Ore from 200-245.|r
	>>Mine: Mithril Ore, Truesilver Ore
	>>|cRXP_WARN_Recommended zone: The Hinterlands or Tanaris|r
	+Click here to continue

step -- Return to The Hinterlands
	#completewith next
	.zone The Hinterlands >>Return to The Hinterlands.

step -- Level 200-245
	>>Continue mining Mithril Ore in The Hinterlands until you reach skill level 245.
	.goto The Hinterlands,50.0,50.0,0
	--.skill mining,245,1 >>Level your Mining skill to 245.
	+Once you reach Mining level 245, click here.

-- LEVEL 245-275
step -- Level 245-275 Information
	>>|cRXP_WARN_You will level Mining from 245-275.|r
	>>Mine: Mithril Ore, Truesilver Ore, Thorium Ore
	>>|cRXP_WARN_Recommended zone: Un'Goro Crater, Blasted Lands, or Felwood|r
	+Click here to continue

step -- Go to Un'Goro Crater
	#completewith next
	.zone Un'Goro Crater >>Travel to Un'Goro Crater.

step -- Level 245-275
	>>Mine Mithril and Thorium Ore in Un'Goro Crater until you reach skill level 275.
	>>Travel around the entire zone, especially around the mountain edges.
	>>Check caves for ore nodes.
	.goto Un'Goro Crater,50.0,50.0,0
	--.skill mining,275,1 >>Level your Mining skill to 275.
	+Once you reach Mining level 275, click here.

-- LEVEL 275-300
step -- Level 275-300 Information
	>>|cRXP_WARN_You will level Mining from 275-300.|r
	>>Mine: Thorium Ore, Rich Thorium Ore
	>>|cRXP_WARN_You can now mine Rich Thorium Veins!|r
	>>|cRXP_WARN_Recommended zone: Un'Goro Crater, Eastern Plaguelands, Winterspring, or Burning Steppes|r
	+Click here to continue

step -- Continue in Un'Goro Crater
	>>Continue mining in Un'Goro Crater, now focusing on Thorium and Rich Thorium.
	>>Travel around the entire zone, especially around mountain edges.
	>>Check caves for ore nodes.
	.goto Un'Goro Crater,50.0,50.0,0
	--.skill mining,300,1 >>Level your Mining skill to 300.
	+Once you reach Mining level 300, click here.

step -- Alternative: Eastern Plaguelands
	>>|cRXP_WARN_Alternative location: Eastern Plaguelands|r
	>>Travel to Eastern Plaguelands if Un'Goro is too crowded.
	>>|cRXP_WARN_Be careful of elite mobs in certain areas!|r
	.goto Eastern Plaguelands,50.0,50.0,0

step -- Alternative: Winterspring
	>>|cRXP_WARN_Alternative location: Winterspring|r
	>>Travel to Winterspring if other zones are too crowded.
	>>Good Thorium spawns in various caves and mountain areas.
	.goto Winterspring,50.0,50.0,0

step -- Alternative: Burning Steppes
	>>|cRXP_WARN_Alternative location: Burning Steppes|r
	>>Travel to Burning Steppes if other zones are too crowded.
	>>Check caves and mountain areas for Thorium.
	.goto Burning Steppes,50.0,50.0,0

step -- Congratulations
	>>Congratulations on reaching level 300 Mining!
	>>You can now mine the highest level ore nodes in Classic WoW.
	.link https://boostyou.ai >> |cRXP_WARN_More free WoW Classic content!|r
	+Thank you for using |cRXP_FRIENDLY_Nutri|r Classic Mining Guide.
]])
-------------------SKINNING----------------------------------------------------------------------------------------
RXPGuides.RegisterGuide("Nutri Classic Professions",[[
#name Nutri - Skinning 1-300

step -- Introduction
	>>This guide will guide you through leveling your Skinning profession from 1-300 for Alliance players.
	>>|cRXP_WARN_Skinning pairs best with Leatherworking to use gathered leather.|r
	>>You will skin beasts across Azeroth to level.
	.link https://shop.restedxp.com/ref/nutri/ >> |cRXP_WARN_Click here for 10% off all RestedXP guides!|r
	+Click here to continue

step -- Required Materials
	>>|cRXP_WARN_Bring this before you start:|r
	.collect 7005,1 -- Skinning Knife

step -- Buy Skinning Knife
	>>|cRXP_WARN_You need a Skinning Knife to skin beasts!|r
	>>Buy a |cRXP_FRIENDLY_Skinning Knife|r from a Leatherworking Supply vendor or General Goods vendor.
	>>|cRXP_WARN_Keep it in your inventory - you don't need to equip it.|r
	.collect 7005,1 -- Skinning Knife

-- APPRENTICE SKINNING (1-75)
step -- Go to Ironforge
	#completewith next
	.zone Ironforge >>Go to Ironforge to learn Skinning.

step -- Learn Apprentice Skinning
	>>Talk to |cRXP_FRIENDLY_Balthus Stoneflayer|r in The Great Forge.
	.train 8613 >> Train Apprentice Skinning.
	.target Balthus Stoneflayer
	.goto Ironforge,40.4,33.4

step -- Level 1-75 Information
	>>|cRXP_WARN_You will level Skinning from 1-75 in Dun Morogh.|r
	>>Skin beasts around the zone, especially near Ironforge.
	>>|cRXP_WARN_Skinning skill formula (up to 100): (Skill/10)+10 = Max mob level|r
	>>Example: Skill 50 can skin up to level 15 mobs.
	+Click here to continue

step -- Go to Dun Morogh
	#completewith next
	.zone Dun Morogh >>Travel to Dun Morogh.

step -- Level 1-50
	>>Skin beasts around the lake near Ironforge until you reach skill level 50.
	>>Kill and skin any beast you can find.
	.goto Dun Morogh,47.0,52.0,50,0
	.goto Dun Morogh,45.0,49.0,50,0
	.goto Dun Morogh,46.0,46.0,50,0
	--.skill skinning,50,1 >>Level your Skinning skill to 50.
	+Once you reach Skinning level 50, click here.

step -- Train Journeyman Skinning
	#completewith next
	.zone Ironforge >>Return to Ironforge.

step -- Learn Journeyman
	>>Talk to |cRXP_FRIENDLY_Balthus Stoneflayer|r again.
	.train 8617 >> Train Journeyman Skinning.
	.target Balthus Stoneflayer
	.goto Ironforge,40.4,33.4

step -- Level 50-75
	>>Continue skinning beasts in Dun Morogh while heading toward Loch Modan.
	>>Skin any beast along the way.
	.goto Dun Morogh,50.0,50.0,0
	--.skill skinning,75,1 >>Level your Skinning skill to 75.
	+Once you reach Skinning level 75, click here.

-- JOURNEYMAN SKINNING (75-155)
step -- Level 75-115 Information
	>>|cRXP_WARN_You will level Skinning from 75-115 in Loch Modan.|r
	>>Skin beasts throughout the zone.
	+Click here to continue

step -- Go to Loch Modan
	#completewith next
	.zone Loch Modan >>Travel to Loch Modan.

step -- Level 75-115
	>>Skin beasts in Loch Modan until you reach skill level 115.
	>>Follow the paths and valleys, killing and skinning beasts.
	.goto Loch Modan,50.0,50.0,0
	--.skill skinning,115,1 >>Level your Skinning skill to 115.
	+Once you reach Skinning level 115, click here.

step -- Level 115-125 Information
	>>|cRXP_WARN_You will level Skinning from 115-125 in Wetlands.|r
	>>|cRXP_WARN_Make sure you reach at least 125 before training Expert Skinning!|r
	+Click here to continue

step -- Go to Wetlands
	#completewith next
	.zone Wetlands >>Travel to Wetlands.

step -- Level 115-125
	>>Skin beasts along the river in Wetlands until you reach skill level 125.
	>>Follow the river from the entrance toward Menethil Harbor.
	.goto Wetlands,50.0,50.0,0
	--.skill skinning,125,1 >>Level your Skinning skill to 125.
	+Once you reach Skinning level 125, click here.

-- EXPERT SKINNING (125-205)
step -- Train Expert Skinning
	>>You need to be at least level 20 and have Skinning 125 to learn Expert Skinning.
	#completewith next
	.zone Ironforge >>Return to Ironforge (use flight path from Menethil Harbor).

step -- Learn Expert
	>>Talk to |cRXP_FRIENDLY_Balthus Stoneflayer|r again.
	.train 8618 >> Train Expert Skinning.
	.target Balthus Stoneflayer
	.goto Ironforge,40.4,33.4

step -- Level 125-155 Information
	>>|cRXP_WARN_Return to Wetlands and continue skinning from 125-155.|r
	>>|cRXP_WARN_New skinning formula (100+): Skill/5 = Max mob level|r
	>>Example: Skill 150 can skin up to level 30 mobs.
	+Click here to continue

step -- Return to Wetlands
	#completewith next
	.zone Wetlands >>Fly back to Wetlands (Menethil Harbor).

step -- Level 125-155
	>>Continue skinning beasts in Wetlands until you reach skill level 155.
	>>Travel along the river and coastal areas.
	.goto Wetlands,50.0,50.0,0
	--.skill skinning,155,1 >>Level your Skinning skill to 155.
	+Once you reach Skinning level 155, click here.

-- LEVEL 155-205
step -- Level 155-205 Information
	>>|cRXP_WARN_You will level Skinning from 155-205 in Arathi Highlands.|r
	>>Focus on raptors and other beasts in the zone.
	+Click here to continue

step -- Go to Arathi Highlands
	#completewith next
	.zone Arathi Highlands >>Travel to Arathi Highlands.

step -- Level 155-170
	>>Skin beasts in Arathi Highlands until you reach skill level 170.
	>>Start in the western/central areas with lower level raptors.
	.goto Arathi Highlands,40.0,50.0,50,0
	.goto Arathi Highlands,45.0,55.0,50,0
	--.skill skinning,170,1 >>Level your Skinning skill to 170.
	+Once you reach Skinning level 170, click here.

step -- Level 170-205
	>>Continue skinning higher level raptors in eastern Arathi Highlands.
	>>Focus on raptors in the southeastern areas.
	>>|cRXP_WARN_At 180 skill, you can skin level 36-37 raptors.|r
	.goto Arathi Highlands,60.0,60.0,50,0
	.goto Arathi Highlands,65.0,65.0,50,0
	--.skill skinning,205,1 >>Level your Skinning skill to 205.
	+Once you reach Skinning level 205, click here.

-- ARTISAN SKINNING (205-300)
step -- Train Artisan Skinning
	>>You need to be at least level 35 and have Skinning 205 to learn Artisan Skinning.
	#completewith next
	.zone Ironforge >>Return to Ironforge.

step -- Learn Artisan
	>>Talk to |cRXP_FRIENDLY_Balthus Stoneflayer|r again.
	.train 10768 >> Train Artisan Skinning.
	.target Balthus Stoneflayer
	.goto Ironforge,40.4,33.4

step -- Level 205-280 Information
	>>|cRXP_WARN_You will level Skinning from 205-280 in Feralas.|r
	>>Skin various beasts including Yetis and Hippogryphs.
	+Click here to continue

step -- Go to Feralas
	#completewith next
	.zone Feralas >>Travel to Feralas.

step -- Level 205-230
	>>Skin beasts around the zone until you reach skill level 230.
	>>Focus on any beasts you can find in central Feralas.
	.goto Feralas,50.0,50.0,0
	--.skill skinning,230,1 >>Level your Skinning skill to 230.
	+Once you reach Skinning level 230, click here.

step -- Level 230-260
	>>Head to the Yeti caves in Feralas.
	>>Skin Yetis until you reach skill level 260.
	>>If caves are crowded, skin Hippogryphs to the south.
	.goto Feralas,55.0,56.0,50,0
	.goto Feralas,56.0,60.0,50,0
	--.skill skinning,260,1 >>Level your Skinning skill to 260.
	+Once you reach Skinning level 260, click here.

step -- Level 260-280
	>>Move to the higher level Yeti cave area.
	>>Skin Yetis and other beasts in the area.
	>>Continue until you reach skill level 280.
	.goto Feralas,53.0,48.0,50,0
	.goto Feralas,52.0,46.0,50,0
	--.skill skinning,280,1 >>Level your Skinning skill to 280.
	+Once you reach Skinning level 280, click here.

-- LEVEL 280-300
step -- Level 280-300 Information
	>>|cRXP_WARN_You will level Skinning from 280-300 in Un'Goro Crater.|r
	>>Skin high-level beasts throughout the zone.
	>>|cRXP_WARN_You can also stay in Feralas if you prefer.|r
	+Click here to continue

step -- Go to Un'Goro Crater
	#completewith next
	.zone Un'Goro Crater >>Travel to Un'Goro Crater.

step -- Level 280-300
	>>Skin beasts in Un'Goro Crater until you reach skill level 300.
	>>Focus on Devilsaurs, Raptors, and other high-level beasts.
	>>Travel around the entire zone.
	.goto Un'Goro Crater,50.0,50.0,0
	--.skill skinning,300,1 >>Level your Skinning skill to 300.
	+Once you reach Skinning level 300, click here.

step -- Congratulations
	>>Congratulations on reaching level 300 Skinning!
	>>You can now skin the highest level beasts in Classic WoW.
	.link https://boostyou.ai >> |cRXP_WARN_More free WoW Classic content!|r
	+Thank you for using |cRXP_FRIENDLY_Nutri|r Classic Skinning Guide.
]])


RXPGuides.RegisterGuide("Nutri TBC Professions",[[
#name Nutri - Cooking 300-375

step -- Introduction
	>>This guide will guide you through leveling your Cooking profession from 300 to 375 in The Burning Crusade.
	>>This guide is written for Alliance players.
	>>You must have Cooking skill 300 before starting this guide.
	>>You will mainly cook trainer recipes and a few vendor recipes.
	.link https://shop.restedxp.com/ref/nutri/ >> |cRXP_WARN_Click here for 10% off all RestedXP guides!|r
	+Click here to continue

step -- Required Materials
	>>|cRXP_WARN_Total materials to collect before starting:|r
	.collect 30817,95 -- Simple Flour
	.collect 2678,95 -- Mild Spices
	.collect 27668,30 -- Lynx Meat
	.collect 27674,25 -- Ravager Flesh
	.collect 27677,20 -- Chunk o' Basilisk
	.collect 27671,20 -- Buzzard Meat

-- MASTER COOKING (300-375)
step -- Learn Master Cooking
	>>|cRXP_WARN_You must be level 50 to learn Master Cooking.|r
	>>Travel to Hellfire Peninsula.
	#completewith next
	.zone Hellfire Peninsula >>Travel to Hellfire Peninsula.

step -- Train Master Cooking
	>>Talk to |cRXP_FRIENDLY_Gaston|r at Honor Hold.
	.train 33359 >> Train Master Cooking.
	.target Gaston
	.goto Hellfire Peninsula,54.2,63.6

-- 300-325
step -- Materials for 300-325
	>>|cRXP_WARN_Collect or buy the following materials:|r
	.collect 30817,30 -- Simple Flour
	.collect 2678,30 -- Mild Spices
	.collect 27668,30 -- Lynx Meat
	>>|cRXP_WARN_All vendor items can be bought from Cooking Supply vendors.|r

step -- Level 300-325
	>>Cook |cRXP_FRIENDLY_Lynx Steak|r until you reach skill level 325.
	--.skill cooking,325,1 >>Level your Cooking skill to 325.
	+Once you reach Cooking level 325, click here.

-- 325-350
step -- Materials for 325-350
	>>|cRXP_WARN_Collect or buy the following materials:|r
	.collect 27674,25 -- Ravager Flesh
	.collect 30817,25 -- Simple Flour
	.collect 2678,25 -- Mild Spices

step -- Level 325-350
	>>Cook |cRXP_FRIENDLY_Ravager Dog|r until you reach skill level 350.
	--.skill cooking,350,1 >>Level your Cooking skill to 350.
	+Once you reach Cooking level 350, click here.

-- 350-365
step -- Materials for 350-365
	>>|cRXP_WARN_Collect or buy the following materials:|r
	.collect 27677,20 -- Chunk o' Basilisk
	.collect 30817,20 -- Simple Flour
	.collect 2678,20 -- Mild Spices

step -- Level 350-365
	>>Cook |cRXP_FRIENDLY_Basilisk Bite|r until you reach skill level 365.
	--.skill cooking,365,1 >>Level your Cooking skill to 365.
	+Once you reach Cooking level 365, click here.

-- 365-375
step -- Materials for 365-375
	>>|cRXP_WARN_Collect or buy the following materials:|r
	.collect 27671,20 -- Buzzard Meat
	.collect 30817,20 -- Simple Flour
	.collect 2678,20 -- Mild Spices

step -- Level 365-375
	>>Cook |cRXP_FRIENDLY_Buzzard Bites|r until you reach skill level 375.
	--.skill cooking,375,1 >>Level your Cooking skill to 375.
	+Once you reach Cooking level 375, click here.

step -- Congratulations
	>>Congratulations on reaching level 375 Cooking!
	>>You can now cook all Burning Crusade Classic food recipes.
	.link https://boostyou.ai >> |cRXP_WARN_More free WoW Classic & TBC content!|r
	+Thank you for using |cRXP_FRIENDLY_Nutri|r TBC Cooking Guide.
]])

RXPGuides.RegisterGuide("Nutri TBC Professions",[[
#name Nutri - Fishing 300-375

step -- Introduction
	>>This guide will guide you through leveling your Fishing profession from 300 to 375 in The Burning Crusade.
	>>This guide is written for Alliance players.
	>>You must have Fishing skill 300 before starting this guide.
	>>You will level primarily in Outland (Zangarmarsh + Terokkar Forest).
	.link https://shop.restedxp.com/ref/nutri/ >> |cRXP_WARN_Click here for 10% off all RestedXP guides!|r
	+Click here to continue

step -- Required Materials
	>>|cRXP_WARN_Recommended to bring:|r
	.collect 6256,1 -- Fishing Pole
	.collect 6532,40 -- Bright Baubles

-- MASTER FISHING (300-375)
step -- Learn Master Fishing
	>>Buy |cRXP_FRIENDLY_Master Fishing - The Art of Angling|r from |cRXP_FRIENDLY_Juno Dufrain|r in Zangarmarsh, then learn it.
	>>If you need lures, buy around 40x |cRXP_FRIENDLY_Bright Baubles|r from him as well. 
	.zone Zangarmarsh >>Travel to Zangarmarsh.

step -- Buy the Master Fishing book
	>>Talk to |cRXP_FRIENDLY_Juno Dufrain|r (Cenarion Refuge).
	>>Buy |cRXP_FRIENDLY_Master Fishing - The Art of Angling|r and learn it.  
	.target Juno Dufrain
	.goto Zangarmarsh,78.0,66.1

-- 300-350
step -- Important note for 300-350
	>>|cRXP_WARN_To stop fish from getting away in Zangarmarsh, you need ~400 effective Fishing skill (base skill + pole + lure bonuses).|r
	>>|cRXP_WARN_If you don't have a good pole, leveling will be slower (more fish will get away).|r 

step -- Optional (recommended) Fishing Pole upgrade
	>>|cRXP_WARN_Recommended options:|r  
	>>- |cRXP_FRIENDLY_Seth's Graphite Fishing Pole|r (+20) from the Terokkar Forest quest |cRXP_FRIENDLY_Rather Be Fishin'|r (Alliance-friendly; requires level 62).  
	>>- |cRXP_FRIENDLY_Big Iron Fishing Pole|r (+20) from the Auction House (often expensive). 
	>>If you have neither: consider using |cRXP_FRIENDLY_Aquadynamic Fish Attractor|r until 325, then switch to |cRXP_FRIENDLY_Bright Baubles|r.  
	+Continue once ready

step -- Level 300-350
	>>Fish in |cRXP_FRIENDLY_Zangarmarsh|r (any lakes/ponds) until your base Fishing skill reaches 350. 
	--.skill fishing,350,1 >>Level your Fishing skill to 350.
	+Once you reach Fishing level 350, click here.
	.zone Zangarmarsh >>Fish in Zangarmarsh until 350.

-- 350-375
step -- Level 350-375
	>>Fish in |cRXP_FRIENDLY_Terokkar Forest|r in most open waters until 375.
	>>|cRXP_WARN_Avoid flying-restricted areas and the lake near Shattrath City (they require much higher Fishing skill).|r  
	>>|cRXP_WARN_You CAN stay in Zangarmarsh to 375, but Terokkar is recommended for more valuable fish.|r
	--.skill fishing,375,1 >>Level your Fishing skill to 375.
	+Once you reach Fishing level 375, click here.
	.zone Terokkar Forest >>Fish in Terokkar Forest until 375.

step -- Congratulations
	>>Congratulations on reaching level 375 Fishing!
	.link https://boostyou.ai >> |cRXP_WARN_More free WoW Classic & TBC content!|r
	+Thank you for using |cRXP_FRIENDLY_Nutri|r TBC Fishing Guide.
]])
RXPGuides.RegisterGuide("Nutri TBC Professions",[[
#name Nutri - First Aid 300-375

step -- Introduction
	>>This guide will guide you through leveling your First Aid profession from 300 to 375 in The Burning Crusade.
	>>This guide is written for Alliance players.
	>>You must have First Aid skill 300 before starting this guide.
	>>You will mainly use Netherweave Cloth.
	.link https://shop.restedxp.com/ref/nutri/ >> |cRXP_WARN_Click here for 10% off all RestedXP guides!|r
	+Click here to continue

step -- Required Materials
	>>|cRXP_WARN_Total materials to collect before starting:|r
	.collect 21877,130 -- Netherweave Cloth

-- MASTER FIRST AID (300-375)
step -- Learn Master First Aid
	>>|cRXP_WARN_You must be level 50 to learn Master First Aid.|r
	>>Travel to Hellfire Peninsula.
	#completewith next
	.zone Hellfire Peninsula >>Travel to Hellfire Peninsula.

step -- Train Master First Aid
	>>Talk to |cRXP_FRIENDLY_Burko|r at Honor Hold.
	.train 27029 >> Train Master First Aid.
	.target Burko
	.goto Hellfire Peninsula,54.6,63.6

-- 300-330
step -- Materials for 300-330
	>>|cRXP_WARN_Collect or buy the following materials:|r
	.collect 21877,30 -- Netherweave Cloth

step -- Level 300-330
	>>Create |cRXP_FRIENDLY_Netherweave Bandage|r until you reach skill level 330.
	--.skill firstaid,330,1 >>Level your First Aid skill to 330.
	+Once you reach First Aid level 330, click here.

-- 330-360
step -- Materials for 330-360
	>>|cRXP_WARN_Collect or buy the following materials:|r
	.collect 21877,60 -- Netherweave Cloth

step -- Level 330-360
	>>Create |cRXP_FRIENDLY_Heavy Netherweave Bandage|r until you reach skill level 360.
	--.skill firstaid,360,1 >>Level your First Aid skill to 360.
	+Once you reach First Aid level 360, click here.

-- 360-375
step -- Materials for 360-375
	>>|cRXP_WARN_Collect or buy the following materials:|r
	.collect 21877,40 -- Netherweave Cloth

step -- Level 360-375
	>>Continue creating |cRXP_FRIENDLY_Heavy Netherweave Bandage|r until you reach skill level 375.
	--.skill firstaid,375,1 >>Level your First Aid skill to 375.
	+Once you reach First Aid level 375, click here.

step -- Congratulations
	>>Congratulations on reaching level 375 First Aid!
	>>You can now use the strongest First Aid bandages in TBC.
	.link https://boostyou.ai >> |cRXP_WARN_More free WoW Classic & TBC content!|r
	+Thank you for using |cRXP_FRIENDLY_Nutri|r TBC First Aid Guide.
]])
RXPGuides.RegisterGuide("Nutri TBC Professions",[[
#name Nutri - Herbalism 300-375

step -- Introduction
	>>This guide will guide you through leveling your Herbalism profession from 300 to 375 in The Burning Crusade.
	>>This guide is written for Alliance players.
	>>You must have Herbalism skill 300 before starting this guide.
	>>You will gather herbs primarily in Outland zones.
	.link https://shop.restedxp.com/ref/nutri/ >> |cRXP_WARN_Click here for 10% off all RestedXP guides!|r
	+Click here to continue

-- MASTER HERBALISM (300-375)
step -- Learn Master Herbalism
	>>|cRXP_WARN_You must be level 50 to learn Master Herbalism.|r
    >>Travel to Hellfire Peninsula
	#completewith next
    .goto Hellfire Peninsula,54.2,63.6

step -- Train Master Herbalism
	>>Talk to |cRXP_FRIENDLY_Relara Whitemoon|r at Honor Hold.
	.train 28695 >> Train Master Herbalism.
	.target Relara Whitemoon
	.goto Hellfire Peninsula,54.2,63.6

-- 300-325
step -- Herbalism 300-325
	>>Gather |cRXP_FRIENDLY_Felweed|r throughout |cRXP_FRIENDLY_Hellfire Peninsula|r.
	--.skill herbalism,325,1 >>Level your Herbalism skill to 325.
	+Once you reach Herbalism level 325, click here.

-- 325-350
step -- Herbalism 325-350
	>>Gather |cRXP_FRIENDLY_Dreaming Glory|r and |cRXP_FRIENDLY_Felweed|r in |cRXP_FRIENDLY_Zangarmarsh|r.
	>>Focus on lake edges and marsh areas.
	--.skill herbalism,350,1 >>Level your Herbalism skill to 350.
	+Once you reach Herbalism level 350, click here.

-- 350-375
step -- Herbalism 350-375
	>>Gather |cRXP_FRIENDLY_Terocone|r in |cRXP_FRIENDLY_Terokkar Forest|r.
	>>You can also gather |cRXP_FRIENDLY_Felweed|r and |cRXP_FRIENDLY_Dreaming Glory|r if needed.
	--.skill herbalism,375,1 >>Level your Herbalism skill to 375.
	+Once you reach Herbalism level 375, click here.

step -- Congratulations
	>>Congratulations on reaching level 375 Herbalism!
	>>You can now gather all TBC Classic herbs.
	.link https://boostyou.ai >> |cRXP_WARN_More free WoW Classic & TBC content!|r
	+Thank you for using |cRXP_FRIENDLY_Nutri|r TBC Herbalism Guide.
]])
RXPGuides.RegisterGuide("Nutri TBC Professions",[[
#name Nutri - Mining 300-375

step -- Introduction
	>>This guide will guide you through leveling your Mining profession from 300 to 375 in The Burning Crusade.
	>>This guide is written for Alliance players.
	>>You must have Mining skill 300 before starting this guide.
	>>You will mine ores primarily in Outland zones.
	.link https://shop.restedxp.com/ref/nutri/ >> |cRXP_WARN_Click here for 10% off all RestedXP guides!|r
	+Click here to continue

step -- Required Materials
	>>|cRXP_WARN_Bring this tool before you start:|r
	.collect 2901,1 -- Mining Pick

-- MASTER MINING (300-375)
step -- Learn Master Mining
	>>|cRXP_WARN_You must be level 50 to learn Master Mining.|r
	>>Travel to Hellfire Peninsula.
	#completewith next
	.goto Hellfire Peninsula,54.2,63.4

step -- Train Master Mining
	>>Talk to |cRXP_FRIENDLY_Braknar|r at Honor Hold.
	.train 29354 >> Train Master Mining.
	.target Braknar
	.goto Hellfire Peninsula,54.2,63.4

-- 300-325
step -- Mining 300-325
	>>Mine |cRXP_FRIENDLY_Fel Iron Ore|r throughout |cRXP_FRIENDLY_Hellfire Peninsula|r.
	>>Fel Iron veins are abundant across the zone.
	--.skill mining,325,1 >>Level your Mining skill to 325.
	+Once you reach Mining level 325, click here.

-- 325-350
step -- Mining 325-350
	>>Mine |cRXP_FRIENDLY_Fel Iron Ore|r and |cRXP_FRIENDLY_Adamantite Ore|r in |cRXP_FRIENDLY_Zangarmarsh|r.
	>>Follow the outer edges of the zone for best results.
	--.skill mining,350,1 >>Level your Mining skill to 350.
	+Once you reach Mining level 350, click here.

-- 350-375
step -- Mining 350-375
	>>Mine |cRXP_FRIENDLY_Adamantite Ore|r in |cRXP_FRIENDLY_Nagrand|r.
	>>Rich Adamantite veins become more common at higher skill.
	--.skill mining,375,1 >>Level your Mining skill to 375.
	+Once you reach Mining level 375, click here.

step -- Congratulations
	>>Congratulations on reaching level 375 Mining!
	>>You can now mine all Burning Crusade Classic ores.
	.link https://boostyou.ai >> |cRXP_WARN_More free WoW Classic & TBC content!|r
	+Thank you for using |cRXP_FRIENDLY_Nutri|r TBC Mining Guide.
]])
RXPGuides.RegisterGuide("Nutri TBC Professions",[[
#name Nutri - Skinning 300-375

step -- Introduction
	>>This guide will guide you through leveling your Skinning profession from 300 to 375 in The Burning Crusade.
	>>This guide is written for Alliance players.
	>>You must have Skinning skill 300 before starting this guide.
	>>You will skin beasts primarily while questing or farming in Outland.
	.link https://shop.restedxp.com/ref/nutri/ >> |cRXP_WARN_Click here for 10% off all RestedXP guides!|r
	+Click here to continue

step -- Required Materials
	>>|cRXP_WARN_Bring this tool before you start:|r
	.collect 7005,1 -- Skinning Knife

-- MASTER SKINNING (300-375)
step -- Learn Master Skinning
	>>|cRXP_WARN_You must be level 50 to learn Master Skinning.|r
	>>Travel to Hellfire Peninsula.
	#completewith next
	.goto Hellfire Peninsula,54.2,63.6

step -- Train Master Skinning
	>>Talk to |cRXP_FRIENDLY_Relara Whitemoon|r at Honor Hold.
	.train 29346 >> Train Master Skinning.
	.target Relara Whitemoon
	.goto Hellfire Peninsula,54.2,63.6

-- 300-325
step -- Skinning 300-325
	>>Skin beasts in |cRXP_FRIENDLY_Hellfire Peninsula|r.
	>>Boars, ravagers, and other local beasts are ideal.
	--.skill skinning,325,1 >>Level your Skinning skill to 325.
	+Once you reach Skinning level 325, click here.

-- 325-350
step -- Skinning 325-350
	>>Skin beasts in |cRXP_FRIENDLY_Zangarmarsh|r.
	>>Marshfang Rippers and similar creatures work well.
	--.skill skinning,350,1 >>Level your Skinning skill to 350.
	+Once you reach Skinning level 350, click here.

-- 350-375
step -- Skinning 350-375
	>>Skin beasts in |cRXP_FRIENDLY_Nagrand|r.
	>>Clefthoofs, talbuks, and windrocs are excellent targets.
	--.skill skinning,375,1 >>Level your Skinning skill to 375.
	+Once you reach Skinning level 375, click here.
step -- Congratulations
	>>Congratulations on reaching level 375 Skinning!
	>>You can now skin all Burning Crusade Classic beasts.
	.link https://boostyou.ai >> |cRXP_WARN_More free WoW Classic & TBC content!|r
	+Thank you for using |cRXP_FRIENDLY_Nutri|r TBC Skinning Guide.
]])
RXPGuides.RegisterGuide("Nutri TBC Professions",[[
#name Nutri - Tailoring 300-375

step -- Introduction
	>>This guide will guide you through leveling your Tailoring profession from 300 to 375 in The Burning Crusade.
	>>This guide is written for Alliance players.
	>>You must have Tailoring skill 300 before starting this guide.
	>>You will mainly use Netherweave Cloth.
	.link https://shop.restedxp.com/ref/nutri/ >> |cRXP_WARN_Click here for 10% off all RestedXP guides!|r
	+Click here to continue

step -- Required Materials
	>>|cRXP_WARN_Total materials to collect before starting:|r
	.collect 21877,650 -- Netherweave Cloth

-- MASTER TAILORING (300-375)
step -- Learn Master Tailoring
	>>|cRXP_WARN_You must be level 50 to learn Master Tailoring.|r
	>>Travel to Hellfire Peninsula.
	#completewith next
	.zone Hellfire Peninsula >>Travel to Hellfire Peninsula.

step -- Train Master Tailoring
	>>Talk to |cRXP_FRIENDLY_Hannelore|r at Honor Hold.
	.train 26790 >> Train Master Tailoring.
	.target Hannelore
	.goto Hellfire Peninsula,54.2,63.6

-- 300-325
step -- Materials for 300-325
	>>|cRXP_WARN_Collect or buy the following materials:|r
	.collect 21877,150 -- Netherweave Cloth

step -- Level 300-325
	>>Craft |cRXP_FRIENDLY_Netherweave Belt|r until you reach skill level 325.
	--.skill tailoring,325,1 >>Level your Tailoring skill to 325.
	+Once you reach Tailoring level 325, click here.

-- 325-350
step -- Materials for 325-350
	>>|cRXP_WARN_Collect or buy the following materials:|r
	.collect 21877,200 -- Netherweave Cloth

step -- Level 325-350
	>>Craft |cRXP_FRIENDLY_Netherweave Boots|r until you reach skill level 350.
	--.skill tailoring,350,1 >>Level your Tailoring skill to 350.
	+Once you reach Tailoring level 350, click here.

-- 350-375
step -- Materials for 350-375
	>>|cRXP_WARN_Collect or buy the following materials:|r
	.collect 21877,300 -- Netherweave Cloth

step -- Level 350-375
	>>Craft |cRXP_FRIENDLY_Netherweave Robe|r until you reach skill level 375.
	--.skill tailoring,375,1 >>Level your Tailoring skill to 375.
	+Once you reach Tailoring level 375, click here.

step -- Congratulations
	>>Congratulations on reaching level 375 Tailoring!
	>>You can now craft all Burning Crusade Classic tailoring items.
	.link https://boostyou.ai >> |cRXP_WARN_More free WoW Classic & TBC content!|r
	+Thank you for using |cRXP_FRIENDLY_Nutri|r TBC Tailoring Guide.
]])
RXPGuides.RegisterGuide("Nutri TBC Professions",[[
#name Nutri - Alchemy 300-375

step -- Introduction
	>>This guide will guide you through leveling your Alchemy profession from 300 to 375 in The Burning Crusade.
	>>This guide is written for Alliance players.
	>>You must have Alchemy skill 300 before starting this guide.
	>>You will mainly use Outland herbs.
	.link https://shop.restedxp.com/ref/nutri/ >> |cRXP_WARN_Click here for 10% off all RestedXP guides!|r
	+Click here to continue

step -- Required Materials
	>>|cRXP_WARN_Total materials to collect before starting:|r
	.collect 22785,135 -- Felweed
	.collect 22789,60 -- Terocone
	.collect 22786,30 -- Dreaming Glory
	.collect 22787,30 -- Ragveil

-- MASTER ALCHEMY (300-375)
step -- Learn Master Alchemy
	>>|cRXP_WARN_You must be level 50 to learn Master Alchemy.|r
	>>Travel to Hellfire Peninsula.
	#completewith next
	.zone Hellfire Peninsula >>Travel to Hellfire Peninsula.

step -- Train Master Alchemy
	>>Talk to |cRXP_FRIENDLY_Alchemist Gribble|r at Honor Hold.
	.train 28596 >> Train Master Alchemy.
	.target Alchemist Gribble
	.goto Hellfire Peninsula,54.2,63.6

-- 300-315
step -- Materials for 300-315
	>>|cRXP_WARN_Collect or buy the following materials:|r
	.collect 22785,15 -- Felweed

step -- Level 300-315
	>>Craft |cRXP_FRIENDLY_Volatile Healing Potion|r until you reach skill level 315.
	--.skill alchemy,315,1 >>Level your Alchemy skill to 315.
	+Once you reach Alchemy level 315, click here.

-- 315-330
step -- Materials for 315-330
	>>|cRXP_WARN_Collect or buy the following materials:|r
	.collect 22785,30 -- Felweed
	.collect 22789,30 -- Terocone

step -- Level 315-330
	>>Craft |cRXP_FRIENDLY_Super Healing Potion|r until you reach skill level 330.
	--.skill alchemy,330,1 >>Level your Alchemy skill to 330.
	+Once you reach Alchemy level 330, click here.

-- 330-345
step -- Materials for 330-345
	>>|cRXP_WARN_Collect or buy the following materials:|r
	.collect 22785,30 -- Felweed
	.collect 22786,30 -- Dreaming Glory

step -- Level 330-345
	>>Craft |cRXP_FRIENDLY_Super Mana Potion|r until you reach skill level 345.
	--.skill alchemy,345,1 >>Level your Alchemy skill to 345.
	+Once you reach Alchemy level 345, click here.

-- 345-360
step -- Materials for 345-360
	>>|cRXP_WARN_Collect or buy the following materials:|r
	.collect 22785,30 -- Felweed
	.collect 22789,30 -- Terocone

step -- Level 345-360
	>>Craft |cRXP_FRIENDLY_Adept's Elixir|r until you reach skill level 360.
	--.skill alchemy,360,1 >>Level your Alchemy skill to 360.
	+Once you reach Alchemy level 360, click here.

-- 360-375
step -- Materials for 360-375
	>>|cRXP_WARN_Collect or buy the following materials:|r
	.collect 22785,30 -- Felweed
	.collect 22787,30 -- Ragveil

step -- Level 360-375
	>>Craft |cRXP_FRIENDLY_Major Healing Potion|r until you reach skill level 375.
	--.skill alchemy,375,1 >>Level your Alchemy skill to 375.
	+Once you reach Alchemy level 375, click here.

step -- Congratulations
	>>Congratulations on reaching level 375 Alchemy!
	>>You can now craft all Burning Crusade Classic alchemy potions and elixirs.
	.link https://boostyou.ai >> |cRXP_WARN_More free WoW Classic & TBC content!|r
	+Thank you for using |cRXP_FRIENDLY_Nutri|r TBC Alchemy Guide.
]])
RXPGuides.RegisterGuide("Nutri TBC Professions",[[
#name Nutri - Engineering 300-375

step -- Introduction
	>>This guide will guide you through leveling your Engineering profession from 300 to 375 in The Burning Crusade.
	>>This guide is written for Alliance players.
	>>You must have Engineering skill 300 before starting this guide.
	>>This path avoids specialization-only recipes and focuses on trainer recipes.
	.link https://shop.restedxp.com/ref/nutri/ >> |cRXP_WARN_Click here for 10% off all RestedXP guides!|r
	+Click here to continue

step -- Required Materials
	>>|cRXP_WARN_Total materials to collect before starting:|r
	.collect 23445,70 -- Fel Iron Bar
	.collect 23446,90 -- Adamantite Bar
	.collect 23783,140 -- Handful of Fel Iron Bolts

-- MASTER ENGINEERING (300-375)
step -- Learn Master Engineering
	>>|cRXP_WARN_You must be level 50 to learn Master Engineering.|r
	>>Travel to Hellfire Peninsula.
	#completewith next
	.zone Hellfire Peninsula >>Travel to Hellfire Peninsula.

step -- Train Master Engineering
	>>Talk to |cRXP_FRIENDLY_Lebowski|r at Honor Hold.
	.train 30350 >> Train Master Engineering.
	.target Lebowski
	.goto Hellfire Peninsula,54.2,63.8

-- 300-315
step -- Materials for 300-315
	>>|cRXP_WARN_Collect or buy the following materials:|r
	.collect 23445,40 -- Fel Iron Bar
	.collect 23783,20 -- Handful of Fel Iron Bolts

step -- Level 300-315
	>>Craft |cRXP_FRIENDLY_Fel Iron Casing|r until you reach skill level 315.
	--.skill engineering,315,1 >>Level your Engineering skill to 315.
	+Once you reach Engineering level 315, click here.

-- 315-330
step -- Materials for 315-330
	>>|cRXP_WARN_Collect or buy the following materials:|r
	.collect 23445,30 -- Fel Iron Bar
	.collect 23783,30 -- Handful of Fel Iron Bolts

step -- Level 315-330
	>>Craft |cRXP_FRIENDLY_Fel Iron Bomb|r until you reach skill level 330.
	--.skill engineering,330,1 >>Level your Engineering skill to 330.
	+Once you reach Engineering level 330, click here.

-- 330-350
step -- Materials for 330-350
	>>|cRXP_WARN_Collect or buy the following materials:|r
	.collect 23446,40 -- Adamantite Bar
	.collect 23783,40 -- Handful of Fel Iron Bolts

step -- Level 330-350
	>>Craft |cRXP_FRIENDLY_Adamantite Grenade|r until you reach skill level 350.
	--.skill engineering,350,1 >>Level your Engineering skill to 350.
	+Once you reach Engineering level 350, click here.

-- 350-375
step -- Materials for 350-375
	>>|cRXP_WARN_Collect or buy the following materials:|r
	.collect 23446,50 -- Adamantite Bar
	.collect 23783,50 -- Handful of Fel Iron Bolts

step -- Level 350-375
	>>Craft |cRXP_FRIENDLY_Adamantite Shell Machine|r until you reach skill level 375.
	--.skill engineering,375,1 >>Level your Engineering skill to 375.
	+Once you reach Engineering level 375, click here.

step -- Congratulations
	>>Congratulations on reaching level 375 Engineering!
	>>You can now craft all Burning Crusade Classic engineering items.
	.link https://boostyou.ai >> |cRXP_WARN_More free WoW Classic & TBC content!|r
	+Thank you for using |cRXP_FRIENDLY_Nutri|r TBC Engineering Guide.
]])
RXPGuides.RegisterGuide("Nutri TBC Professions",[[
#name Nutri - Enchanting 300-375

step -- Introduction
	>>This guide will guide you through leveling your Enchanting profession from 300 to 375 in The Burning Crusade.
	>>This guide is written for Alliance players.
	>>You must have Enchanting skill 300 before starting this guide.
	>>This path focuses on trainer recipes and common materials.
	.link https://shop.restedxp.com/ref/nutri/ >> |cRXP_WARN_Click here for 10% off all RestedXP guides!|r
	+Click here to continue

step -- Required Materials
	>>|cRXP_WARN_Total materials to collect before starting:|r
	.collect 22445,210 -- Arcane Dust
	.collect 22447,30 -- Lesser Planar Essence
	.collect 22448,30 -- Greater Planar Essence

-- MASTER ENCHANTING (300-375)
step -- Learn Master Enchanting
	>>|cRXP_WARN_You must be level 50 to learn Master Enchanting.|r
	>>Travel to Hellfire Peninsula.
	#completewith next
	.zone Hellfire Peninsula >>Travel to Hellfire Peninsula.

step -- Train Master Enchanting
	>>Talk to |cRXP_FRIENDLY_Lebowski|r at Honor Hold.
	.train 28029 >> Train Master Enchanting.
	.target Lebowski
	.goto Hellfire Peninsula,54.2,63.8

-- 300-315
step -- Materials for 300-315
	>>|cRXP_WARN_Collect or buy the following materials:|r
	.collect 22445,30 -- Arcane Dust
	.collect 22447,10 -- Lesser Planar Essence

step -- Level 300-315
	>>Enchant bracers with |cRXP_FRIENDLY_Enchant Bracer - Major Stamina|r until you reach skill level 315.
	--.skill enchanting,315,1 >>Level your Enchanting skill to 315.
	+Once you reach Enchanting level 315, click here.

-- 315-330
step -- Materials for 315-330
	>>|cRXP_WARN_Collect or buy the following materials:|r
	.collect 22445,40 -- Arcane Dust
	.collect 22447,20 -- Lesser Planar Essence

step -- Level 315-330
	>>Enchant gloves with |cRXP_FRIENDLY_Enchant Gloves - Major Strength|r until you reach skill level 330.
	--.skill enchanting,330,1 >>Level your Enchanting skill to 330.
	+Once you reach Enchanting level 330, click here.

-- 330-350
step -- Materials for 330-350
	>>|cRXP_WARN_Collect or buy the following materials:|r
	.collect 22445,60 -- Arcane Dust
	.collect 22448,10 -- Greater Planar Essence

step -- Level 330-350
	>>Enchant cloaks with |cRXP_FRIENDLY_Enchant Cloak - Major Resistance|r until you reach skill level 350.
	--.skill enchanting,350,1 >>Level your Enchanting skill to 350.
	+Once you reach Enchanting level 350, click here.

-- 350-375
step -- Materials for 350-375
	>>|cRXP_WARN_Collect or buy the following materials:|r
	.collect 22445,80 -- Arcane Dust
	.collect 22448,20 -- Greater Planar Essence

step -- Level 350-375
	>>Enchant rings or cloaks with |cRXP_FRIENDLY_Enchant Cloak - Major Agility|r until you reach skill level 375.
	--.skill enchanting,375,1 >>Level your Enchanting skill to 375.
	+Once you reach Enchanting level 375, click here.

step -- Congratulations
	>>Congratulations on reaching level 375 Enchanting!
	>>You can now enchant all Burning Crusade Classic gear.
	.link https://boostyou.ai >> |cRXP_WARN_More free WoW Classic & TBC content!|r
	+Thank you for using |cRXP_FRIENDLY_Nutri|r TBC Enchanting Guide.
]])
RXPGuides.RegisterGuide("Nutri TBC Professions",[[
#name Nutri - Leatherworking 300-375

step -- Introduction
	>>This guide will guide you through leveling your Leatherworking profession from 300 to 375 in The Burning Crusade.
	>>This guide is written for Alliance players.
	>>You must have Leatherworking skill 300 before starting this guide.
	>>This path avoids specialization-only recipes and focuses on trainer recipes.
	.link https://shop.restedxp.com/ref/nutri/ >> |cRXP_WARN_Click here for 10% off all RestedXP guides!|r
	+Click here to continue

step -- Required Materials
	>>|cRXP_WARN_Total materials to collect before starting:|r
	.collect 25649,280 -- Knothide Leather
	.collect 25707,30 -- Fel Hide

-- MASTER LEATHERWORKING (300-375)
step -- Learn Master Leatherworking
	>>|cRXP_WARN_You must be level 50 to learn Master Leatherworking.|r
	>>Travel to Hellfire Peninsula.
	#completewith next
	.zone Hellfire Peninsula >>Travel to Hellfire Peninsula.

step -- Train Master Leatherworking
	>>Talk to |cRXP_FRIENDLY_Brumman|r at Honor Hold.
	.train 32455 >> Train Master Leatherworking.
	.target Brumman
	.goto Hellfire Peninsula,54.2,63.4

-- 300-320
step -- Materials for 300-320
	>>|cRXP_WARN_Collect or buy the following materials:|r
	.collect 25649,40 -- Knothide Leather

step -- Level 300-320
	>>Craft |cRXP_FRIENDLY_Knothide Leather Armor Kit|r until you reach skill level 320.
	--.skill leatherworking,320,1 >>Level your Leatherworking skill to 320.
	+Once you reach Leatherworking level 320, click here.

-- 320-340
step -- Materials for 320-340
	>>|cRXP_WARN_Collect or buy the following materials:|r
	.collect 25649,60 -- Knothide Leather

step -- Level 320-340
	>>Craft |cRXP_FRIENDLY_Heavy Knothide Leather|r until you reach skill level 340.
	--.skill leatherworking,340,1 >>Level your Leatherworking skill to 340.
	+Once you reach Leatherworking level 340, click here.

-- 340-360
step -- Materials for 340-360
	>>|cRXP_WARN_Collect or buy the following materials:|r
	.collect 25649,80 -- Knothide Leather
	.collect 25707,10 -- Fel Hide

step -- Level 340-360
	>>Craft |cRXP_FRIENDLY_Fel Leather Gloves|r until you reach skill level 360.
	--.skill leatherworking,360,1 >>Level your Leatherworking skill to 360.
	+Once you reach Leatherworking level 360, click here.

-- 360-375
step -- Materials for 360-375
	>>|cRXP_WARN_Collect or buy the following materials:|r
	.collect 25649,100 -- Knothide Leather
	.collect 25707,20 -- Fel Hide

step -- Level 360-375
	>>Craft |cRXP_FRIENDLY_Fel Leather Leggings|r until you reach skill level 375.
	--.skill leatherworking,375,1 >>Level your Leatherworking skill to 375.
	+Once you reach Leatherworking level 375, click here.

step -- Congratulations
	>>Congratulations on reaching level 375 Leatherworking!
	>>You can now craft all Burning Crusade Classic leatherworking items.
	.link https://boostyou.ai >> |cRXP_WARN_More free WoW Classic & TBC content!|r
	+Thank you for using |cRXP_FRIENDLY_Nutri|r TBC Leatherworking Guide.
]])
RXPGuides.RegisterGuide("Nutri TBC Professions",[[
#name Nutri - Blacksmithing 300-375

step -- Introduction
	>>This guide will guide you through leveling your Blacksmithing profession from 300 to 375 in The Burning Crusade.
	>>This guide is written for Alliance players.
	>>You must have Blacksmithing skill 300 before starting this guide.
	>>This path focuses on trainer recipes and avoids specialization-locked recipes.
	.link https://shop.restedxp.com/ref/nutri/ >> |cRXP_WARN_Click here for 10% off all RestedXP guides!|r
	+Click here to continue

step -- Required Materials
	>>|cRXP_WARN_Total materials to collect before starting:|r
	.collect 23445,180 -- Fel Iron Bar
	.collect 23446,240 -- Adamantite Bar

-- MASTER BLACKSMITHING (300-375)
step -- Learn Master Blacksmithing
	>>|cRXP_WARN_You must be level 50 to learn Master Blacksmithing.|r
	>>Travel to Hellfire Peninsula.
	#completewith next
	.zone Hellfire Peninsula >>Travel to Hellfire Peninsula.

step -- Train Master Blacksmithing
	>>Talk to |cRXP_FRIENDLY_Brumman|r at Honor Hold.
	.train 29844 >> Train Master Blacksmithing.
	.target Brumman
	.goto Hellfire Peninsula,54.2,63.4

-- 300-315
step -- Materials for 300-315
	>>|cRXP_WARN_Collect or buy the following materials:|r
	.collect 23445,60 -- Fel Iron Bar

step -- Level 300-315
	>>Craft |cRXP_FRIENDLY_Fel Iron Plate Gloves|r until you reach skill level 315.
	--.skill blacksmithing,315,1 >>Level your Blacksmithing skill to 315.
	+Once you reach Blacksmithing level 315, click here.

-- 315-330
step -- Materials for 315-330
	>>|cRXP_WARN_Collect or buy the following materials:|r
	.collect 23445,80 -- Fel Iron Bar

step -- Level 315-330
	>>Craft |cRXP_FRIENDLY_Fel Iron Plate Boots|r until you reach skill level 330.
	--.skill blacksmithing,330,1 >>Level your Blacksmithing skill to 330.
	+Once you reach Blacksmithing level 330, click here.

-- 330-345
step -- Materials for 330-345
	>>|cRXP_WARN_Collect or buy the following materials:|r
	.collect 23445,40 -- Fel Iron Bar
	.collect 23446,40 -- Adamantite Bar

step -- Level 330-345
	>>Craft |cRXP_FRIENDLY_Fel Iron Chain Tunic|r until you reach skill level 345.
	--.skill blacksmithing,345,1 >>Level your Blacksmithing skill to 345.
	+Once you reach Blacksmithing level 345, click here.

-- 345-360
step -- Materials for 345-360
	>>|cRXP_WARN_Collect or buy the following materials:|r
	.collect 23446,80 -- Adamantite Bar

step -- Level 345-360
	>>Craft |cRXP_FRIENDLY_Adamantite Cleaver|r until you reach skill level 360.
	--.skill blacksmithing,360,1 >>Level your Blacksmithing skill to 360.
	+Once you reach Blacksmithing level 360, click here.

-- 360-375
step -- Materials for 360-375
	>>|cRXP_WARN_Collect or buy the following materials:|r
	.collect 23446,120 -- Adamantite Bar

step -- Level 360-375
	>>Craft |cRXP_FRIENDLY_Adamantite Dagger|r until you reach skill level 375.
	--.skill blacksmithing,375,1 >>Level your Blacksmithing skill to 375.
	+Once you reach Blacksmithing level 375, click here.

step -- Congratulations
	>>Congratulations on reaching level 375 Blacksmithing!
	>>You can now craft all Burning Crusade Classic blacksmithing items.
	.link https://boostyou.ai >> |cRXP_WARN_More free WoW Classic & TBC content!|r
	+Thank you for using |cRXP_FRIENDLY_Nutri|r TBC Blacksmithing Guide.
]])
RXPGuides.RegisterGuide("Nutri TBC Professions",[[
#name Nutri - Lockpicking 300-350

step -- Introduction
	>>This guide will guide you through leveling your Lockpicking skill from 300 to 350 in The Burning Crusade.
	>>This guide is written for Alliance Rogues.
	>>You must have Lockpicking skill 300 before starting this guide.
	>>Lockpicking is capped at 350 in TBC Classic.
	.link https://shop.restedxp.com/ref/nutri/ >> |cRXP_WARN_Click here for 10% off all RestedXP guides!|r
	+Click here to continue

step -- Required Materials
	>>No fixed materials to pre-collect; just have your lockpicking tool preferences ready.

-- IMPORTANT NOTE
step -- Lockpicking cap
	>>|cRXP_WARN_Lockpicking caps at 350 in The Burning Crusade. There is no progression beyond this.|r
	+Continue

-- 300-325
step -- Lockpicking 300-325
	>>Pick |cRXP_FRIENDLY_Battered Junkboxes|r.
	>>These drop from humanoid mobs level 50–60.
	>>Recommended zones:
	>>- |cRXP_FRIENDLY_Western Plaguelands|r
	>>- |cRXP_FRIENDLY_Eastern Plaguelands|r
	--.skill lockpicking,325,1 >>Level your Lockpicking skill to 325.
	+Once you reach Lockpicking level 325, click here.

-- 325-350
step -- Lockpicking 325-350
	>>Pick |cRXP_FRIENDLY_Sturdy Junkboxes|r.
	>>These drop from humanoid mobs level 60–70.
	>>Recommended zones:
	>>- |cRXP_FRIENDLY_Hellfire Peninsula|r
	>>- |cRXP_FRIENDLY_Zangarmarsh|r
	>>- |cRXP_FRIENDLY_Terokkar Forest|r
	--.skill lockpicking,350,1 >>Level your Lockpicking skill to 350.
	+Once you reach Lockpicking level 350, click here.

step -- Congratulations
	>>Congratulations on reaching level 350 Lockpicking!
	>>You have reached the maximum Lockpicking skill in TBC Classic.
	.link https://boostyou.ai >> |cRXP_WARN_More free WoW Classic & TBC content!|r
	+Thank you for using |cRXP_FRIENDLY_Nutri|r TBC Lockpicking Guide.
]])
RXPGuides.RegisterGuide("Nutri TBC Professions",[[
#name Nutri - Jewelcrafting 1-375

step -- Introduction
	>>This guide will guide you through leveling your Jewelcrafting profession from 1 to 375 in The Burning Crusade.
	>>This guide is written for Alliance players.
	>>Jewelcrafting was introduced in TBC and starts at skill level 1.
	>>Mining is strongly recommended to reduce gold cost.
	>>You will prospect ores, craft rings, necklaces, and gems.
	.link https://shop.restedxp.com/ref/nutri/ >> |cRXP_WARN_Click here for 10% off all RestedXP guides!|r
	+Click here to continue

step -- Required Materials
	>>|cRXP_WARN_Total materials to collect before starting:|r
	.collect 2770,20 -- Copper Ore
	.collect 20816,20 -- Delicate Copper Wire
	.collect 2771,40 -- Tin Ore
	.collect 2840,20 -- Copper Bar
	.collect 2772,40 -- Iron Ore
	.collect 3575,20 -- Iron Bar
	.collect 3858,40 -- Mithril Ore
	.collect 10620,30 -- Thorium Ore
	.collect 23424,40 -- Fel Iron Ore
	.collect 23425,100 -- Adamantite Ore
	.collect 23426,50 -- Khorium Ore
	.collect 23449,10 -- Khorium Power Core

-- APPRENTICE JEWELCRAFTING (1-50)
step -- Learn Apprentice Jewelcrafting
	>>Travel to Stormwind City.
	>>Talk to |cRXP_FRIENDLY_Gelvas Grimegate|r near the Auction House.
	.train 25229 >> Train Apprentice Jewelcrafting.
	.target Gelvas Grimegate
	.goto Stormwind City,63.8,61.6

step -- Materials for 1-50
	>>|cRXP_WARN_Collect or buy the following materials:|r
	.collect 2770,20 -- Copper Ore
	.collect 20816,20 -- Delicate Copper Wire

step -- Level 1-50
	>>Create |cRXP_FRIENDLY_Delicate Copper Wire|r and |cRXP_FRIENDLY_Rough Stone Statue|r.
	>>Prospect Copper Ore for gems.
	--.skill jewelcrafting,50,1 >>Level your Jewelcrafting skill to 50.
	+Once you reach Jewelcrafting level 50, click here.

-- JOURNEYMAN JEWELCRAFTING (50-150)
step -- Learn Journeyman Jewelcrafting
	>>Talk to |cRXP_FRIENDLY_Gelvas Grimegate|r again.
	.train 25230 >> Train Journeyman Jewelcrafting.
	.target Gelvas Grimegate
	.goto Stormwind City,63.8,61.6

step -- Materials for 50-100
	>>|cRXP_WARN_Collect or buy the following materials:|r
	.collect 2771,40 -- Tin Ore
	.collect 2840,20 -- Copper Bar

step -- Level 50-100
	>>Prospect Tin Ore.
	>>Craft |cRXP_FRIENDLY_Bronze Setting|r and simple gem settings.
	--.skill jewelcrafting,100,1 >>Level your Jewelcrafting skill to 100.
	+Once you reach Jewelcrafting level 100, click here.

step -- Materials for 100-150
	>>|cRXP_WARN_Collect or buy the following materials:|r
	.collect 2772,40 -- Iron Ore
	.collect 3575,20 -- Iron Bar

step -- Level 100-150
	>>Prospect Iron Ore.
	>>Craft basic rings and necklaces using green gems.
	--.skill jewelcrafting,150,1 >>Level your Jewelcrafting skill to 150.
	+Once you reach Jewelcrafting level 150, click here.

-- EXPERT JEWELCRAFTING (150-225)
step -- Learn Expert Jewelcrafting
	>>Travel to Ironforge.
	>>Talk to |cRXP_FRIENDLY_Lil Timmy|r.
	.train 25278 >> Train Expert Jewelcrafting.
	.target Lil Timmy
	.goto Ironforge,50.0,26.0

step -- Materials for 150-200
	>>|cRXP_WARN_Collect or buy the following materials:|r
	.collect 3858,40 -- Mithril Ore

step -- Level 150-200
	>>Prospect Mithril Ore.
	>>Craft mithril rings and gem settings.
	--.skill jewelcrafting,200,1 >>Level your Jewelcrafting skill to 200.
	+Once you reach Jewelcrafting level 200, click here.

step -- Materials for 200-225
	>>|cRXP_WARN_Collect or buy the following materials:|r
	.collect 10620,30 -- Thorium Ore

step -- Level 200-225
	>>Prospect Thorium Ore.
	>>Craft Thorium settings and green gem jewelry.
	--.skill jewelcrafting,225,1 >>Level your Jewelcrafting skill to 225.
	+Once you reach Jewelcrafting level 225, click here.

-- ARTISAN JEWELCRAFTING (225-300)
step -- Learn Artisan Jewelcrafting
	>>Travel to Hellfire Peninsula.
	>>Talk to |cRXP_FRIENDLY_Ravandwyr|r at Honor Hold.
	.train 25280 >> Train Artisan Jewelcrafting.
	.target Ravandwyr
	.goto Hellfire Peninsula,54.6,63.6

step -- Materials for 225-275
	>>|cRXP_WARN_Collect or buy the following materials:|r
	.collect 23424,40 -- Fel Iron Ore

step -- Level 225-275
	>>Prospect Fel Iron Ore.
	>>Craft Fel Iron Blood Rings and basic TBC designs.
	--.skill jewelcrafting,275,1 >>Level your Jewelcrafting skill to 275.
	+Once you reach Jewelcrafting level 275, click here.

step -- Materials for 275-300
	>>|cRXP_WARN_Collect or buy the following materials:|r
	.collect 23425,40 -- Adamantite Ore

step -- Level 275-300
	>>Prospect Adamantite Ore.
	>>Craft uncommon Outland gem jewelry.
	--.skill jewelcrafting,300,1 >>Level your Jewelcrafting skill to 300.
	+Once you reach Jewelcrafting level 300, click here.

-- MASTER JEWELCRAFTING (300-375)
step -- Learn Master Jewelcrafting
	>>You must be level 50 to learn Master Jewelcrafting.
	>>Talk to |cRXP_FRIENDLY_Ravandwyr|r again at Honor Hold.
	.train 32801 >> Train Master Jewelcrafting.
	.target Ravandwyr
	.goto Hellfire Peninsula,54.6,63.6

-- 300-325
step -- Materials for 300-325
	>>|cRXP_WARN_Collect or buy the following materials:|r
	.collect 23425,30 -- Adamantite Ore

step -- Level 300-325
	>>Prospect Adamantite Ore.
	>>Craft uncommon gem cuts.
	--.skill jewelcrafting,325,1 >>Level your Jewelcrafting skill to 325.
	+Once you reach Jewelcrafting level 325, click here.

-- 325-350
step -- Materials for 325-350
	>>|cRXP_WARN_Collect or buy the following materials:|r
	.collect 23426,30 -- Khorium Ore (optional)
	.collect 23425,30 -- Adamantite Ore

step -- Level 325-350
	>>Craft rare gem cuts and advanced necklaces.
	>>Use vendor-trained recipes where possible.
	--.skill jewelcrafting,350,1 >>Level your Jewelcrafting skill to 350.
	+Once you reach Jewelcrafting level 350, click here.

-- 350-375
step -- Materials for 350-375
	>>|cRXP_WARN_Collect or buy the following materials:|r
	.collect 23426,20 -- Khorium Ore
	.collect 23449,10 -- Khorium Power Core (if available)

step -- Level 350-375
	>>Craft epic gem cuts and high-end jewelry.
	>>Recipe availability may depend on reputation and drops.
	--.skill jewelcrafting,375,1 >>Level your Jewelcrafting skill to 375.
	+Once you reach Jewelcrafting level 375, click here.

step -- Congratulations
	>>Congratulations on reaching level 375 Jewelcrafting!
	>>You can now cut epic gems and craft the best jewelry in TBC Classic.
	.link https://boostyou.ai >> |cRXP_WARN_More free WoW Classic & TBC content!|r
	+Thank you for using |cRXP_FRIENDLY_Nutri|r TBC Jewelcrafting Guide.
]])
