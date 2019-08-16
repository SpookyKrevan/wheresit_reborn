local spawnZones = {};

-- Tooltip Code --
local lineAdded = false
local function OnTooltipSetItem(tooltip, ...)
  local _,link = tooltip:GetItem()
  local id = tonumber(link:match('item:(%d+)'))
  local zone = spawnZones[id];
  if zone and not lineAdded then
    tooltip:AddLine("\nGathered from:\n" .. zone, 255/255, 255/255, 0/255, 1)
    lineAdded = true
  end
  -- if not zone then print(('zone id %s missing from spawnZones table'):format(id))
end
 
local function OnTooltipCleared(tooltip, ...)
   lineAdded = false
end

GameTooltip:HookScript("OnTooltipSetItem", OnTooltipSetItem)
GameTooltip:HookScript("OnTooltipCleared", OnTooltipCleared)

ChatFrame1:AddMessage("Wherezit Herb/Ore Location Addon Loaded.")

--[[ Classic Items ]]--

-- Herbs -- 
--[[ Silverleaf ]] spawnZones[765] = "Elwynn Forest, Tirisfal Glades, Teldrassil, Mulgore, Dun Morogh, Eversong Woods, Azuremyst Isle, Ghostlands, Bloodmyst Isle, Durotar, Gilneas, Loch Modan, Silverpine Forest, Westfall, The Lost Isles, Gilneas City, The Wandering Isle, Darkshore, Northern Barrens, Azshara and Thunder Bluff"
--[[ Peacebloom ]] spawnZones[2447] = "Teldrassil, Tirisfal Glades, Durotar, Dun Morogh, Azuremyst Isle, Mulgore, Elwynn Forest, Gilneas, Eversong Woods, The Lost Isles, Ghostlands, Bloodmyst Isle, Loch Modan, Westfall, Gilneas City, Azshara, The Wandering Isle, Darkshore and Northern Barrens"
--[[ Bloodthistle ]] spawnZones[22710] = "Eversong Woods"
--[[ Earthroot ]] spawnZones[2449] = "Silverpine Forest, Tirisfal Glades, Elwynn Forest, Redridge Mountains,Teldrassil, Durotar, Mulgore, Dun Morogh, Azuremyst Isle, Eversong Woods, Ghostlands, The Lost Isles, Bloodmyst Isle, The Wandering Isle, Westfall, Gilneas, Wailing Caverns, Azshara, Loch Modan, Gilneas City, Northern Barrens and Darkshore" 
--[[ Mageroyal ]] spawnZones[785] = "Hillsbrad Foothills, Darkshore, Silverpine Forest, Northern Barrens, Azshara, Loch Modan, Redridge Mountains, Westfall, Wetlands, Ghostlands, Duskwood, Stonetalon Mountains, Teldrassil, Bloodmyst Isle, Ashenvale, Wailing Caverns and Southern Barrens" 
--[[ Swiftthistle ]] spawnZones[2452] = "Hillsbrad Foothills, Duskwood, Darkshore, Azshara, Northern Barrens, Wetlands, Redridge Mountains, Westfall, Loch Modan, Silverpine Forest, Stonetalon Mountains, Ghostlands, Bloodmyst Isle, Ashenvale, Razorfen Kraul and Southern Barrens" 
--[[ Briarthorn ]] spawnZones[2450] = "Hillsbrad Foothills, Duskwood, Darkshore, Azshara, Northern Barrens, Wetlands, Redridge Mountains, Westfall, Loch Modan, Silverpine Forest, Stonetalon Mountains, Ghostlands, Bloodmyst Isle, Ashenvale, Razorfen Kraul and Southern Barrens" 
--[[ Stranglekelp ]] spawnZones[3820] = "The Cape of Stranglethorn, Northern Stranglethorn, Tanaris, Northern Barrens, Wetlands, Blasted Lands, Western Plaguelands, Darkshore, Eastern Plaguelands, Redridge Mountains, Swamp of Sorrows, Serpentshrine Cavern, Thousand Needles, Hillsbrad Foothills, Arathi Highlands, Feralas, Silverpine Forest, Ashenvale, Stonetalon Mountains, Desolace, Westfall, Dustwallow Marsh, The Hinterlands, Loch Modan and Moonglade" 
--[[ Bruiseweed ]] spawnZones[2453] = "Northern Stranglethorn, Wetlands, Redridge Mountains, Ashenvale, Duskwood, Westfall, The Hinterlands, Hillsbrad Foothills, Stonetalon Mountains, Loch Modan, Ghostlands, Arathi Highlands, Bloodmyst Isle, Blackfathom Deeps, Northern Barrens and Wailing Caverns" 
--[[ Wild Steelbloom ]] spawnZones[3355] = "Northern Stranglethorn, Stonetalon Mountains, Ashenvale, Arathi Highlands, Desolace, Wetlands, Duskwood, The Hinterlands, Stranglethorn Vale and Twilight Highlands" 
--[[ Grave Moss ]] spawnZones[1628] = "Duskwood, Razorfen Downs, Arathi Highlands, Wetlands and Hillsbrad Foothills" 
--[[ Kingsblood ]] spawnZones[3356] = "Northern Stranglethorn, Western Plaguelands, Wetlands, Southern Barrens, Desolace, Arathi Highlands, The Hinterlands, Duskwood, Dustwallow Marsh, Feralas, Ashenvale and Wailing Caverns"
--[[ Liferoot ]] spawnZones[3357] = "Eastern Plaguelands, Western Plaguelands, Northern Stranglethorn, Dustwallow Marsh, Wetlands, Thousand Needles, Arathi Highlands, The Hinterlands, Ashenvale, Southern Barrens, Desolace, Netherstorm, The Cape of Stranglethorn, Hillsbrad Foothills, Duskwood and Stranglethorn Vale"
--[[ Fadeleaf ]] spawnZones[3818] = "Feralas, The Cape of Stranglethorn, Dustwallow Marsh, Western Plaguelands, Arathi Highlands, The Hinterlands, Razorfen Kraul and Stranglethorn Vale"
--[[ Goldthorn ]] spawnZones[3821] = "Arathi Highlands, Dustwallow Marsh, The Hinterlands, Feralas, Desolace, The Cape of Stranglethorn, Razorfen Downs and Theramore's Fall (H)"
--[[ Dragon's Teeth ]] spawnZones[3819] = "Badlands" 
--[[ Khadgar's Whisker ]] spawnZones[3358] = "Eastern Plaguelands, Western Plaguelands, Feralas, The Cape of Stranglethorn, Arathi Highlands, Dustwallow Marsh, Desolace, Southern Barrens and The Hinterlands" -- Khadgar's Whisker
--[[ Wildvine ]] spawnZones[8153] = "Purple Lotus" 
--[[ Purple Lotus ]] spawnZones[8831] = "Felwood" 
--[[ Firebloom ]] spawnZones[4625] = "Searing Gorge, Burning Steppes, Tanaris and Badlands" 
--[[ Arthas's Tears ]] spawnZones[8836] = "Razorfen Downs, Western Plaguelands, Eastern Plaguelands and Felwood" 
--[[ Sungrass ]] spawnZones[8838] = "Eastern Plaguelands, Thousand Needles, Badlands, Burning Steppes, Silithus, Searing Gorge, Tanaris, Un'Goro Crater and Southern Barrens" 
--[[ Blindweed ]] spawnZones[8839] = "Feralas, Zangarmarsh, Western Plaguelands, The Hinterlands, Un'Goro Crater and Maraudon"; 
--[[ Ghost Mushroom ]] spawnZones[8845] = "Zangarmarsh, Un'Goro Crater"; 
--[[ Gromsblood ]] spawnZones[8846] = "Felwood, Blasted Lands, Desolace, Ashenvale"
--[[ Golden Sansam ]] spawnZones[13464] = "Swamp of Sorrows, Felwood, Hellfire Peninsula, Silithus, Zangarmarsh, Un'Goro Crater, Badlands, Blasted Lands, Netherstorm" 
--[[ Dreamfoil ]] spawnZones[13463] = "Blasted Lands, Silithus, Felwood, Hellfire Peninsula, Zangarmarsh, Burning Steppes, Un'Goro Crater" 
--[[ Mountain Silversage ]] spawnZones[13465] = "Winterspring, Hellfire Peninsula, Un'Goro Crater, Blasted Lands and Silithus"
--[[ Sorrowmoss ]] spawnZones[13466] = "Swamp of Sorrows" 
--[[ Icecap ]] spawnZones[13467] = "Winterspring" 

-- Ores --
--[[ Copper ]] spawnZones[2770] = "Elwynn Forest, Dun Morogh, Darkshore, Westfall, Durotar, Tirisfal Glades, Duskwood, Loch Modan, Redridge Mountains, Mulgore, Wetlands, The Barrens, Silverpine Forest, Hillsbrad Foothills, Thousand Needles, Ashenvale and Stonetalon Mountains"
--[[ Tin ]] spawnZones[2771] = "Duskwood, Westfall, Hillsbrad Foothills, Wetlands, Loch Modan, Thousand Needles, Darkshore, Redridge Mountains, Ashenvale, Desolace, Stonetalon Mountains, Silverpine Forest, The Barrens, Alterac Mountains, Arathi Highlands and Stranglethorn Vale"
--[[ Silver ]] spawnZones[2775] = "Duskwood, Hillsbrad Foothills, Alterac Mountains, Redridge Mountains, Wetlands, Arathi Highlands, Silverpine Forest, Desolace."






--[[ -- Burning Crusade Herbs --
spawnZones[176589] = "Blasted Lands, Silithus, Eastern Plaguelands, Winterspring" -- Black Lotus
spawnZones[22789] = "Terokkar Forest, Shadowmoon Valley, The Botanica" -- Terocone
spawnZones[181271] = "Nagrand, Terokkar Forest, Blade's Edge Mountains, Netherstorm, Hellfire Peninsula, Zangarmarsh, Shadowmoon Valley, The Botanica, Shattrath City" -- Dreaming Glory
spawnZones[22785] = "Hellfire Peninsula, Nagrand, Zangarmarsh, Blade's Edge Mountains, Terokkar Forest, Shadowmoon Valley, Netherstorm, The Underbog, The Slave Pens, The Botanica" -- Felweed
spawnZones[22787] = "Zangarmarsh, The Underbog, The Slave Pens" -- Ragveil
spawnZones[22788] = "Zangarmarsh, The Underbog, The Slave Pens, The Steamvault" -- Flame Cap
spawnZones[22790] = "Mana-Tombs, The Underbog, Sethekk Halls, Auchenai Crypts, The Slave Pens, Shadow Labyrinth, The Steamvault" -- Ancient Lichen
spawnZones[22792] = "Shadowmoon Valley, Blade's Edge Mountains, Hellfire Peninsula" -- Nightmare Vine
spawnZones[22791] = "Netherstorm, The Botanica" -- Netherbloom
spawnZones[22794] = "Ancient Lichen, Dreaming Glory, Felweed, Flame Cap, Mana Thistle, Netherbloom, Nightmare Vine, Terocone, Ragveil, Netherdust Bush" -- Fel Lotus
spawnZones[22793] = "Terokkar Forest, Shadowmoon Valley, Isle of Quel'Danas, Nagrand, Blade's Edge Mountains and Netherstorm" -- Mana Thistle
-- Wrath of the Lich King Herbs --
spawnZones[36904] = "Sholazar Basin, Grizzly Hills, Howling Fjord, Borean Tundra and Azjol-Nerub" -- Tiger Lily
spawnZones[36901] = "Howling Fjord, Sholazar Basin, Borean Tundra, Grizzly Hills, Dragonblight and Azjol-Nerub" -- Goldclover
spawnZones[37921] = "Frost Lotus, Goldclover, Talandra's Rose, Tiger Lily" --Deadnettle
spawnZones[36907] = "Zul'Drak, Drak'Tharon Keep, Ahn'kahet: The Old Kingdom, Grizzly Hills, Gundrak, Dragonblight" -- Talandra's Rose
spawnZones[39970] = "Borean Tundra (Firethorn)" -- Fire Leaf
spawnZones[36903] = "Sholazar Basin, Drak'Tharon Keep, Gundrak"	-- Adder's Tongue
spawnZones[36905] = "The Storm Peaks, Icecrown, Wintergrasp, Utgarde Pinnacle, Zul'Drak" -- Lichbloom
spawnZones[36906] = "The Storm Peaks, Icecrown, Wintergrasp, Utgarde Pinnacle, The Oculus, Zul'Drak" -- Icethorn'
spawnZones[36908] = "Wintergrasp, Ulduar\n\nAlso Contained in:\nAdder's Tongue, Firethorn, Goldclover, Icethorn, Lichbloom, Talandra's Rose, Tiger Lily" -- Frost Lotus
-- Cataclysm Herbs --
spawnZones[52983] = "Deepholm, Twilight Highlands, Mount Hyjal, Uldum, Tol Barad Peninsula, Tol Barad" -- Cinderbloom
spawnZones[52985] = "Shimmering Expanse, Tol Barad Peninsula, Abyssal Depths, Kelp'thar Forest, Mount Hyjal" -- Azshara's Veil
spawnZones[52984] = "Mount Hyjal, Abyssal Depths, Shimmering Expanse, Kelp'thar Forest" -- Stormvine
spawnZones[52986] = "Deepholm" -- Heartblossom
spawnZones[52988] = "Uldum, Tol Borad" -- Whiptail
spawnZones[52987] = "Twilight Highlands" -- Twilight Jasmine
-- Pandaria  Herbs --
spawnZones[97621] = "Valley of the Four Winds, Krasarang Wilds, The Jade Forest, The Veiled Stair, Timeless Isle" -- Silkweed Stem
spawnZones[97622] = "Kun-Lai Summit, Townlong Steppes, Shado-Pan Monastery\n\nAlso Contained in:\n Sha-Touched Herb" -- Snow Lily Petal
spawnZones[97623] = "Dread Wastes, Townlong Steppes, The Jade Forest, Timeless Isle" -- Fool's Cap Spores
spawnZones[97624] = "Sha-Touched Herb\nDread Wastes, Kun-Lai Summit, Valley of the Four Winds, The Jade Forest" -- Desecrated Herb Pod
spawnZones[97619] = "Green Tea Leaf (Timeless Isle)" -- Torn Green Tea Leaf
spawnZones[72237] = "The Jade Forest, Vale of Eternal Blossoms, Timeless Isle" -- Rain Poppy
spawnZones[97620] = "The Jade Forest, Vale of Eternal Blossoms, Timeless Isle" -- Rain Poppy Petal
spawnZones[72234] = "The Jade Forest, Valley of the Four Winds, Krasarang Wilds, Townlong Steppes, Kun-Lai Summit, Dread Wastes, Vale of Eternal Blossoms, Timeless Isle, Temple of the Jade Serpent, Siege of Niuzao Temple, Scarlet Halls, Scarlet Monastery\n\nAlso Contained in:\n Sha-Touched Herb" -- Green Tea Leaf
spawnZones[72235] = "Valley of the Four Winds, Krasarang Wilds, The Jade Forest, The Veiled Stair, Timeless Isle" -- Silkweed
spawnZones[79010] = "Kun-Lai Summit, Townlong Steppes, Shado-Pan Monastery\n\nAlso Contained in:\n Sha-Touched Herb" -- Snow Lily
spawnZones[79011] = "Dread Wastes, Townlong Steppes, The Jade Forest, Timeless Isle\n\nAlso Contained in:\n Sha-Touched Herb" -- Fool's Cap
spawnZones[72238] = "The Jade Forest, Valley of the Four Winds, Kun-Lai Summit, Dread Wastes, Townlong Steppes, Vale of Eternal Blossoms, Krasarang Wilds, The Veiled Stair\n\nAlso Contained in:\nRain Poppy, Silkweed, Fool's Cap, Sha-Touched Herb, Green Tea Leaf, Silkweed, Rain Poppy, Snow Lily" -- Golden Lotus
spawnZones[89639] = "Sha-Touched Herb" -- Desecrated Herb
--]]
