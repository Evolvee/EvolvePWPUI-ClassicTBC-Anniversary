# EquipmentManagerClassic
GUI for Blizzard's EquipmentManager in Classic.  
Do you also have an annoying time on your Rank 14 warrior when you have to weapon swap to 2 weapons with the same name? IN COMBAT!? Look no further! This is the addon you are looking for.  

# How to use
`/emc`

## `/emc help`, `/emc h`, `/emc ?`
Print all the available commands

## `/emc sets`, `/emc s`
Prints all EquipmentSet IDs

## `/emc <setID>`, `/emc s <setID>`
Print all items in the given set

# Development
Discovered that you can use wow's API for equipmentset in Vanilla (Anniversary), and this works in combat, and therefore it is interesting.  

[API Namespace/C_EquipmentSet](https://warcraft.wiki.gg/wiki/Category:API_systems/EquipmentSet)  
[Blizzard API Documentation](https://www.townlong-yak.com/framexml/live/Blizzard_APIDocumentation#)  
[Ace3 Library](https://www.wowace.com/projects/ace3/pages)  

## Idea
Make an addon that let's you view all your EquipmentSet, create them, edit, change icon and give access to the button that can be place on your action bar.

### Functions  
  - [x] View saved EquipmentSets
  - [x] Create new EquipmentSet (with currently equipped geared, and choose which slots to ignore)
  - [x] Edit Icon for an EquipmentSet
  - [x] Get actionbar Button for EquipmentSet
  - [x] Get/show macro string for EquipmentSet
  - [ ] (Optional) create a WA that shows if specific EquipmentSet is equipped
  - [x] Consider getting inspiration from retail/classic Equipmentmanager for UI, screenshot below

  ![Screenshot of Equipment Manager in Mist of Pandaria](assets/EquipmentManagerMOP.png)
  ![Screenshot of Equipment Manager in Retail, about to change icon for the one in cursor](assets/EquipmentManagerRetailDragIcon.png)
