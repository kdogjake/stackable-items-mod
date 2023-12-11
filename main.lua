local json = require("json")

local mod = RegisterMod("StackableItems", 1)

-- Mod Config Menu Support
local MOD_NAME = "Stackable Items Mod"
local VERSION = "0.6.9"

local settings = {
    cursed_eye = true,
    car_battery = true,
    loki_horns = true,
    isaacs_tomb = true,
    heartbreak = true,
    giant_cell = true,
    xray_vision = true,
    guppys_tail = true,
    cracked_orb = true,
    card_reading = true,
    infestation = true,
    infestation_two = true,
    schoolbag = true,
    stairway = true,
    eye_sores = true,
    jumper_cables = true,
    empty_heart = true,
    nine_volt = true,
    lusty_blood = true,
    bloody_lust = true,
    bloody_gust = true,
    scapular = true,
    gnawed_leaf = true,
    linger_bean = true,
    godhead = true,
    number_two = true,
    tiny_planet = true,
    serpents_kiss = true,
    purity = true
}

local items = {
    "Cursed Eye",
    "Car Battery",
    "Loki Horns",
    "Isaacs Tomb",
    "Heartbreak",
    "Giant Cell",
    "Xray Vision",
    "Guppys Tail",
    "Cracked Orb",
    "Card Reading",
    "Infestation",
    "Infestation Two",
    "Schoolbag",
    "Stairway",
    "Eye Sores",
    "Jumper Cables",
    "Empty Heart",
    "Nine Volt",
    "Lusty Blood",
    "Bloody Lust",
    "Bloody Gust",
    "Scapular",
    "Gnawed Leaf",
    "Linger Bean",
    "Godhead",
    "No. 2",
    "Tiny Planet",
    "Serpent's Kiss",
    "Purity"
}

function mod:setupMyModConfigMenuSettings()
    if ModConfigMenu == nil then
        return
    end

    local function save()
        local jsonString = json.encode(settings)
        mod:SaveData(jsonString)
    end

    local function load()
        if not mod:HasData() then
            return
        end
        local jsonString = mod:LoadData()
        settings = json.decode(jsonString)
    end

    ModConfigMenu.AddSpace(MOD_NAME, "Info")
    ModConfigMenu.AddText(MOD_NAME, "Info", function() return MOD_NAME end)
    ModConfigMenu.AddSpace(MOD_NAME, "Info")
    ModConfigMenu.AddText(MOD_NAME, "Info", function() return "Version " .. VERSION end)
    ModConfigMenu.AddText(MOD_NAME, "Info", "Follow me on Twitter @kd0gjake")

    ModConfigMenu.AddSetting(
    "Stackable Items Mod",
    "Items",
    {
        Type = ModConfigMenu.OptionType.BOOLEAN,
        CurrentSetting = function()
            return settings.cursed_eye
        end,
        Display = function()
            return "Cursed Eye Stacking: " .. (settings.cursed_eye and "on" or "off")
        end,
        OnChange = function(b)
            settings.cursed_eye = b
            save()
        end,
        Info = { -- This can also be a function instead of a table
            "Enables/disables stacking for Cursed Eye"
        }
    }
)
    ModConfigMenu.AddSetting("Stackable Items Mod","Items",{Type = ModConfigMenu.OptionType.BOOLEAN, CurrentSetting = function() return settings.car_battery end, Display = function() return "Car Battery Stacking: "..(settings.car_battery and "on" or "off") end, OnChange = function(b) settings.car_battery = b save() end, Info = {"Enables/disables stacking for Car Battery"}})
    ModConfigMenu.AddSetting("Stackable Items Mod","Items",{Type = ModConfigMenu.OptionType.BOOLEAN, CurrentSetting = function() return settings.lokis_horns end, Display = function() return "Loki Horns Stacking: "..(settings.loki_horns and "on" or "off") end, OnChange = function(b) settings.lokis_horns = b save() end, Info = {"Enables/disables stacking for Loki Horns"}})
    ModConfigMenu.AddSetting("Stackable Items Mod","Items",{Type = ModConfigMenu.OptionType.BOOLEAN, CurrentSetting = function() return settings.isaacs_tomb end, Display = function() return "Isaacs Tomb Stacking: "..(settings.isaacs_tomb and "on" or "off") end, OnChange = function(b) settings.isaacs_tomb = b save() end, Info = {"Enables/disables stacking for Isaacs Tomb"}})
    ModConfigMenu.AddSetting("Stackable Items Mod","Items",{Type = ModConfigMenu.OptionType.BOOLEAN, CurrentSetting = function() return settings.heartbreak end, Display = function() return "Heartbreak Stacking: "..(settings.heartbreak and "on" or "off") end, OnChange = function(b) settings.heartbreak = b save() end, Info = {"Enables/disables stacking for Heartbreak"}})
    ModConfigMenu.AddSetting("Stackable Items Mod","Items",{Type = ModConfigMenu.OptionType.BOOLEAN, CurrentSetting = function() return settings.giant_cell end, Display = function() return "Giant Cell Stacking: "..(settings.giant_cell and "on" or "off") end, OnChange = function(b) settings.giant_cell = b save() end, Info = {"Enables/disables stacking for Giant Cell"}})
    ModConfigMenu.AddSetting("Stackable Items Mod","Items",{Type = ModConfigMenu.OptionType.BOOLEAN, CurrentSetting = function() return settings.xray_vision end, Display = function() return "Xray Vision Stacking: "..(settings.xray_vision and "on" or "off") end, OnChange = function(b) settings.xray_vision = b save() end, Info = {"Enables/disables stacking for Xray Vision"}})
    ModConfigMenu.AddSetting("Stackable Items Mod","Items",{Type = ModConfigMenu.OptionType.BOOLEAN, CurrentSetting = function() return settings.guppys_tail end, Display = function() return "Guppy's Tail Stacking: "..(settings.guppys_tail and "on" or "off") end, OnChange = function(b) settings.guppys_tail = b save() end, Info = {"Enables/disables stacking for Guppy's Tail"}})
    ModConfigMenu.AddSetting("Stackable Items Mod","Items",{Type = ModConfigMenu.OptionType.BOOLEAN, CurrentSetting = function() return settings.cracked_orb end, Display = function() return "Cracked Orb Stacking: "..(settings.cracked_orb and "on" or "off") end, OnChange = function(b) settings.cracked_orb = b save() end, Info = {"Enables/disables stacking for Cracked Orb"}})
    ModConfigMenu.AddSetting("Stackable Items Mod","Items",{Type = ModConfigMenu.OptionType.BOOLEAN, CurrentSetting = function() return settings.card_reading end, Display = function() return "Card Reading Stacking: "..(settings.card_reading and "on" or "off") end, OnChange = function(b) settings.card_reading = b save() end, Info = {"Enables/disables stacking for Card Reading"}})
    ModConfigMenu.AddSetting("Stackable Items Mod","Items",{Type = ModConfigMenu.OptionType.BOOLEAN, CurrentSetting = function() return settings.infestation end, Display = function() return "Infestation Stacking: "..(settings.infestation and "on" or "off") end, OnChange = function(b) settings.infestation = b save() end, Info = {"Enables/disables stacking for Infestation"}})
    ModConfigMenu.AddSetting("Stackable Items Mod","Items",{Type = ModConfigMenu.OptionType.BOOLEAN, CurrentSetting = function() return settings.infestation_two end, Display = function() return "Infestation Two Stacking: "..(settings.infestation_two and "on" or "off") end, OnChange = function(b) settings.infestation_two = b save() end, Info = {"Enables/disables stacking for Infestation Two"}})
    ModConfigMenu.AddSetting("Stackable Items Mod","Items",{Type = ModConfigMenu.OptionType.BOOLEAN, CurrentSetting = function() return settings.schoolbag end, Display = function() return "Schoolbag Stacking: "..(settings.schoolbag and "on" or "off") end, OnChange = function(b) settings.schoolbag = b save() end, Info = {"Enables/disables stacking for Schoolbag"}})
    ModConfigMenu.AddSetting("Stackable Items Mod","Items",{Type = ModConfigMenu.OptionType.BOOLEAN, CurrentSetting = function() return settings.stairway end, Display = function() return "Stairway Stacking: "..(settings.stairway and "on" or "off") end, OnChange = function(b) settings.stairway = b save() end, Info = {"Enables/disables stacking for Stairway"}})
    ModConfigMenu.AddSetting("Stackable Items Mod","Items",{Type = ModConfigMenu.OptionType.BOOLEAN, CurrentSetting = function() return settings.eye_sores end, Display = function() return "Eye Sores Stacking: "..(settings.eye_sores and "on" or "off") end, OnChange = function(b) settings.eye_sores = b save() end, Info = {"Enables/disables stacking for Eye Sores"}})
    ModConfigMenu.AddSetting("Stackable Items Mod","Items",{Type = ModConfigMenu.OptionType.BOOLEAN, CurrentSetting = function() return settings.jumper_cables end, Display = function() return "Jumper Cables Stacking: "..(settings.jumper_cables and "on" or "off") end, OnChange = function(b) settings.jumper_cables = b save() end, Info = {"Enables/disables stacking for Jumper Cables"}})
    ModConfigMenu.AddSetting("Stackable Items Mod","Items",{Type = ModConfigMenu.OptionType.BOOLEAN, CurrentSetting = function() return settings.empty_heart end, Display = function() return "Empty Heart Stacking: "..(settings.empty_heart and "on" or "off") end, OnChange = function(b) settings.empty_heart = b save() end, Info = {"Enables/disables stacking for Empty Heart"}})
    ModConfigMenu.AddSetting("Stackable Items Mod","Items",{Type = ModConfigMenu.OptionType.BOOLEAN, CurrentSetting = function() return settings.nine_volt end, Display = function() return "Nine Volt Stacking: "..(settings.nine_volt and "on" or "off") end, OnChange = function(b) settings.nine_volt = b save() end, Info = {"Enables/disables stacking for Nine Volt"}})
    ModConfigMenu.AddSetting("Stackable Items Mod","Items",{Type = ModConfigMenu.OptionType.BOOLEAN, CurrentSetting = function() return settings.lusty_blood end, Display = function() return "Lusty Blood Stacking: "..(settings.lusty_blood and "on" or "off") end, OnChange = function(b) settings.lusty_blood = b save() end, Info = {"Enables/disables stacking for Lusty Blood"}})
    ModConfigMenu.AddSetting("Stackable Items Mod","Items",{Type = ModConfigMenu.OptionType.BOOLEAN, CurrentSetting = function() return settings.bloody_lust end, Display = function() return "Bloody Lust Stacking: "..(settings.bloody_lust and "on" or "off") end, OnChange = function(b) settings.bloody_lust = b save() end, Info = {"Enables/disables stacking for Bloody Lust"}})
    ModConfigMenu.AddSetting("Stackable Items Mod","Items",{Type = ModConfigMenu.OptionType.BOOLEAN, CurrentSetting = function() return settings.bloody_gust end, Display = function() return "Bloody Gust Stacking: "..(settings.bloody_gust and "on" or "off") end, OnChange = function(b) settings.bloody_gust = b save() end, Info = {"Enables/disables stacking for Bloody Gust"}})
    ModConfigMenu.AddSetting("Stackable Items Mod","Items",{Type = ModConfigMenu.OptionType.BOOLEAN, CurrentSetting = function() return settings.scapular end, Display = function() return "Scapular Stacking: "..(settings.scapular and "on" or "off") end, OnChange = function(b) settings.scapular = b save() end, Info = {"Enables/disables stacking for Scapular"}})
    ModConfigMenu.AddSetting("Stackable Items Mod","Items",{Type = ModConfigMenu.OptionType.BOOLEAN, CurrentSetting = function() return settings.gnawed_leaf end, Display = function() return "Gnawed Leaf Stacking: "..(settings.gnawed_leaf and "on" or "off") end, OnChange = function(b) settings.gnawed_leaf = b save() end, Info = {"Enables/disables stacking for Gnawed Leaf"}})
    ModConfigMenu.AddSetting("Stackable Items Mod","Items",{Type = ModConfigMenu.OptionType.BOOLEAN, CurrentSetting = function() return settings.linger_bean end, Display = function() return "Linger Bean Stacking: "..(settings.linger_bean and "on" or "off") end, OnChange = function(b) settings.linger_bean = b save() end, Info = {"Enables/disables stacking for Linger Bean"}})
    ModConfigMenu.AddSetting("Stackable Items Mod","Items",{Type = ModConfigMenu.OptionType.BOOLEAN, CurrentSetting = function() return settings.godhead end, Display = function() return "Godhead Stacking: "..(settings.godhead and "on" or "off") end, OnChange = function(b) settings.godhead = b save() end, Info = {"Enables/disables stacking for Godhead"}})
    ModConfigMenu.AddSetting("Stackable Items Mod","Items",{Type = ModConfigMenu.OptionType.BOOLEAN, CurrentSetting = function() return settings.number_two end, Display = function() return "No. 2 Stacking: "..(settings.number_two and "on" or "off") end, OnChange = function(b) settings.number_two = b save() end, Info = {"Enables/disables stacking for No. 2"}})
    ModConfigMenu.AddSetting("Stackable Items Mod","Items",{Type = ModConfigMenu.OptionType.BOOLEAN, CurrentSetting = function() return settings.tiny_planet end, Display = function() return "Tiny Planet Stacking: "..(settings.tiny_planet and "on" or "off") end, OnChange = function(b) settings.tiny_planet = b save() end, Info = {"Enables/disables stacking for Tiny Planet"}})
    ModConfigMenu.AddSetting("Stackable Items Mod","Items",{Type = ModConfigMenu.OptionType.BOOLEAN, CurrentSetting = function() return settings.serpents_kiss end, Display = function() return "Serpent's Kiss Stacking: "..(settings.serpents_kiss and "on" or "off") end, OnChange = function(b) settings.serpents_kiss = b save() end, Info = {"Enables/disables stacking for Serpent's Kiss"}})
    ModConfigMenu.AddSetting("Stackable Items Mod","Items",{Type = ModConfigMenu.OptionType.BOOLEAN, CurrentSetting = function() return settings.purity end, Display = function() return "Purity Stacking: "..(settings.purity and "on" or "off") end, OnChange = function(b) settings.purity = b save() end, Info = {"Enables/disables stacking for Purity"}})
    load()
end


-- Items
local CursedEyeItem = CollectibleType.COLLECTIBLE_CURSED_EYE
local CarBatteryItem = CollectibleType.COLLECTIBLE_CAR_BATTERY
local LokiHornsItem = CollectibleType.COLLECTIBLE_LOKIS_HORNS
local IsaacTombItem = CollectibleType.COLLECTIBLE_ISAACS_TOMB
local HeartbreakItem = CollectibleType.COLLECTIBLE_HEARTBREAK
local GiantCellItem = CollectibleType.COLLECTIBLE_GIANT_CELL
local XRayVisionItem = CollectibleType.COLLECTIBLE_XRAY_VISION
local GuppyTailItem = CollectibleType.COLLECTIBLE_GUPPYS_TAIL
local CrackedOrbItem = CollectibleType.COLLECTIBLE_CRACKED_ORB
local CardReadingItem = CollectibleType.COLLECTIBLE_CARD_READING
local InfestationItem = CollectibleType.COLLECTIBLE_INFESTATION
local InfestationTwoItem = CollectibleType.COLLECTIBLE_INFESTATION_2
local SchoolbagItem = CollectibleType.COLLECTIBLE_SCHOOLBAG
local StairwayItem = CollectibleType.COLLECTIBLE_STAIRWAY
local EyeSoresItem = CollectibleType.COLLECTIBLE_EYE_SORE
local JumperCablesItem = CollectibleType.COLLECTIBLE_JUMPER_CABLES
local EmptyHeartItem = CollectibleType.COLLECTIBLE_EMPTY_HEART
local NineVoltItem = CollectibleType.COLLECTIBLE_NINE_VOLT
local KidneyStoneItem = CollectibleType.COLLECTIBLE_KIDNEY_STONE
local LustyBloodItem = CollectibleType.COLLECTIBLE_LUSTY_BLOOD
local BloodyLustItem = CollectibleType.COLLECTIBLE_BLOODY_LUST
local BloodyGustItem = CollectibleType.COLLECTIBLE_BLOODY_GUST
local ScapularItem = CollectibleType.COLLECTIBLE_SCAPULAR
local GnawedLeafItem = CollectibleType.COLLECTIBLE_GNAWED_LEAF
local LingerBeanItem = CollectibleType.COLLECTIBLE_LINGER_BEAN
local GodHeadItem = CollectibleType.COLLECTIBLE_GODHEAD
local NumberTwoItem = CollectibleType.COLLECTIBLE_NUMBER_TWO
local TinyPlanetItem = CollectibleType.COLLECTIBLE_TINY_PLANET
local SerpentsKissItem = CollectibleType.COLLECTIBLE_SERPENTS_KISS
local PurityItem = CollectibleType.COLLECTIBLE_PURITY

-- Important Variables
local chests = {PickupVariant.PICKUP_CHEST, PickupVariant.PICKUP_LOCKEDCHEST, PickupVariant.PICKUP_REDCHEST, PickupVariant.PICKUP_BOMBCHEST, PickupVariant.PICKUP_ETERNALCHEST, PickupVariant.PICKUP_SPIKEDCHEST, PickupVariant.PICKUP_MIMICCHEST, PickupVariant.PICKUP_OLDCHEST, PickupVariant.PICKUP_WOODENCHEST, PickupVariant.PICKUP_MEGACHEST, PickupVariant.PICKUP_HAUNTEDCHEST}
local spawning_tear = false
local spawning_laser = false
local using_item = false
local current_scapular_charge = 0
local scapular_activate = false
local jumper_cables_kills = 0
local current_room_kills = 0
local lusty_blood_extra_damage = 0
local current_floor_hits_taken = 0
local bloody_lust_extra_damage = 0
local bloody_gust_extra_tears = 0
local gnawed_leaf_ticks = 0
local gnawed_leaf_active = false
local damaged_in_room = false

-- Purity Buff Booleans
local purity_dmg = false
local purity_tears = false
local purity_range = false
local purity_speed = false
local purity_buffs_active = false

-- Checks if the player already has an active item in their pocket slot
function mod:canHoldPocketActive(player)
    if player:GetActiveItem(ActiveSlot.SLOT_POCKET) == 0 then
        return true
    else
        return false
    end
end

-- Functions for counting enemies killed in the current room
function mod:onKillEnemy(entity)
    if entity:IsEnemy() then
        current_room_kills = current_room_kills + 1
    end
end

-- Resets current room kills
function mod:onNewRoom()
    current_room_kills = 0
    damaged_in_room = false
    local player = Isaac.GetPlayer(0)
    if player:HasCollectible(LustyBloodItem) then
        lusty_blood_extra_damage = 0
    end
    if player:HasCollectible(ScapularItem) then
        current_scapular_charge = player:GetCollectibleNum(ScapularItem) - 1
    end
    if settings.purity and player:HasCollectible(PurityItem) and not purity_buffs_active then
        local purityCount = player:GetCollectibleNum(PurityItem) - 1
        local buffs = {"dmg", "tears", "speed", "range"}
        if purityCount > 4 then
            purityCount = 4
        end
        for i=1, purityCount, 1 do
            local rand = math.random(0, (#buffs)-1)
            if buffs[rand] == "dmg" then
                purity_dmg = true
            elseif buffs[rand] == "tears" then
                purity_tears = true
            elseif buffs[rand] == "speed" then
                purity_speed = true
            elseif buffs[rand] == "range" then
                purity_range = true
            end
            table.remove(buffs, rand)
        end
        purity_buffs_active = true
    end
end

-- Checks how much health the player has excluding bone hearts for use with Scapular
function mod:getPlayerTotalHealth()
    local player = Isaac.GetPlayer(0)
    return player:GetHearts() + player:GetSoulHearts() + player:GetEternalHearts() + player:GetRottenHearts()
end

-- Credit to PixelPlz for the code to open the Boss Rush & Hush rooms
-- Checks if room is Mom boss room or Mom's Heart boss room
function mod:IsMommyRoom(type, room)
	if room:GetType() == RoomType.ROOM_BOSS and Game():GetLevel():GetAbsoluteStage() ~= LevelStage.STAGE7 then
		local bossID = room:GetBossID()

		if (type == "Mom" 	 and bossID == 6)
		or (type == "Heart"  and (bossID == 8 or bossID == 25))
		or (type == "Mother" and bossID == 88) then
			return true
		end
	end
	return false
end

-- Tries to spawn Boss Rush or Hush door if in correct boss room
function mod:TrySpawnXRayVisionExits()
    local room = Game():GetRoom()
    -- Boss Rush door from Mom
    if mod:IsMommyRoom("Mom", room) == true then
        room:TrySpawnBossRushDoor(true)


    -- Blue Womb door from Mom's Heart / It Lives
    elseif mod:IsMommyRoom("Heart", room) then
        room:TrySpawnBlueWombDoor(false, true)
    end
end

-- X-Ray Vision stacking trying to spawn Hush/Boss Rush exits upon clearing a room
function mod:onClearXRV(rng, position)
    if not settings.xray_vision then
        return
    end
    local player = Isaac.GetPlayer(0)
    if player:HasCollectible(XRayVisionItem) then
        local copyCount = player:GetCollectibleNum(XRayVisionItem) - 1
        if copyCount > 0 then
	        mod:TrySpawnXRayVisionExits()
        end
    end
end

-- X-Ray Vision stacking trying to spawn Hush/Boss Rush exits upon entering a cleared room
function mod:onNewRoomXRV()
    if not settings.xray_vision then
        return
    end
    local player = Isaac.GetPlayer(0)
    if player:HasCollectible(XRayVisionItem) then
        local copyCount = player:GetCollectibleNum(XRayVisionItem) - 1
        if copyCount > 0 then
            local room  = Game():GetRoom()
            if room:IsClear() then
                mod:TrySpawnXRayVisionExits()
            end
        end
    end
end

-- Adjusts stats appropriately for items that change stats
function mod:evaluateCache(player, cacheFlags)
    if cacheFlags & CacheFlag.CACHE_DAMAGE == CacheFlag.CACHE_DAMAGE then
        if player:HasCollectible(HeartbreakItem) and settings.heartbreak then
            local copyCount = player:GetCollectibleNum(HeartbreakItem) - 1
            local damageToAdd = 0.25 * player:GetBrokenHearts() * copyCount
            player.Damage = player.Damage + damageToAdd
        end
        if player:HasCollectible(LustyBloodItem) and settings.lusty_blood then
            player.Damage = player.Damage + lusty_blood_extra_damage
        end
        if player:HasCollectible(BloodyLustItem) and settings.bloody_lust then
            player.Damage = player.Damage + bloody_lust_extra_damage
        end
        if player:HasCollectible(PurityItem) and settings.purity and purity_dmg then
            player.Damage = player.Damage + 4
        end
    end
    if cacheFlags & CacheFlag.CACHE_FIREDELAY == CacheFlag.CACHE_FIREDELAY then
        if player:HasCollectible(BloodyGustItem) and settings.bloody_gust then
            player.MaxFireDelay = player.MaxFireDelay - (bloody_gust_extra_tears)
        end
        if player:HasCollectible(PurityItem) and settings.purity and purity_tears then
            player.MaxFireDelay = player.MaxFireDelay - 4
        end
    end
    if cacheFlags & CacheFlag.CACHE_SPEED == CacheFlag.CACHE_SPEED then
        if player:HasCollectible(PurityItem) and settings.purity and purity_speed then
            player.MoveSpeed = player.MoveSpeed + 0.5
        end
    end
    if cacheFlags & CacheFlag.CACHE_RANGE == CacheFlag.CACHE_RANGE then
        if player:HasCollectible(PurityItem) and settings.purity and purity_range then
            player.TearRange = player.TearRange + 3
        end
    end
end

-- Cursed Eye Stacking with Tears fires extra tears
function mod:onFireTearsCE(tear)
    if not settings.cursed_eye then
        return
    end
    if spawning_tear then
        return
    end
    local player = Isaac.GetPlayer(0)
    if player:HasCollectible(CursedEyeItem) then
        --local player = tear.SpawnerEntity:ToPlayer()
        local copyCount = player:GetCollectibleNum(CursedEyeItem) - 1
        if copyCount > 0 then
            spawning_tear = true
            for i=1, copyCount, 1 do
                player:FireTear(player.Position, tear.Velocity, true, false, true)
            end
            spawning_tear = false
        end
    end
end

-- Cursed Eye Stacking with Tech Lasers fires extra lasers
function mod:onFireLaserCE(laser)
    if not settings.cursed_eye then
        return
    end
    if spawning_laser then
        return
    end
    local player = Isaac.GetPlayer(0)
    if player:HasCollectible(CursedEyeItem) then
        if player:HasWeaponType(WeaponType.WEAPON_LASER) then
            local copyCount = player:GetCollectibleNum(CursedEyeItem) - 1
            if copyCount > 0 then
                spawning_laser = true
                for i=1, copyCount, 1 do
                    player:FireTechLaser(player.Position, LaserOffset.LASER_TECH1_OFFSET, laser.EndPoint:Rotated(-45), false)
                end
                spawning_laser = false
            end
        end
    end
end

-- Loki's Horns Stacking with Tears, firing 4 tears diagonally
function mod:onFireTearsLH(tear)
    if not settings.loki_horns then
        return
    end
    if spawning_tear then
        return
    end
    local player = Isaac.GetPlayer(0)
    if player:HasCollectible(LokiHornsItem) then
        local vel = tear.Velocity
        local copyCount = player:GetCollectibleNum(LokiHornsItem) - 1
        if copyCount > 0 then
            if math.random() < 0.25 + (0.05 * player.Luck) then
                spawning_tear = true
                player:FireTear(player.Position, vel:Rotated(45), false, true, false)
                player:FireTear(player.Position, vel:Rotated(-45), false, true, false)
                player:FireTear(player.Position, vel:Rotated(135), false, true, false)
                player:FireTear(player.Position, vel:Rotated(-135), false, true, false)
                spawning_tear = false
            end
        end
    end
end

-- Isaac's Tomb Stacking
-- Spawns an additional Old Chest per stack of Isaac's Tomb at the start of each floor
function mod:onNewFloorIT()
    if not settings.isaacs_tomb then
        return
    end
    local player = Isaac.GetPlayer(0)
    if player:HasCollectible(IsaacTombItem) then
        local copyCount = player:GetCollectibleNum(IsaacTombItem) - 1
        if copyCount > 0 then
            for i=1, copyCount, 1 do
                Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_OLDCHEST, 0, Vector(320,240), Vector(0,0), nil)
            end
        end
    end
end

-- Card Reading Stacking adds the third portal type when entering a floor
function mod:onNewFloorCR()
    if not settings.card_reading then
        return
    end
    local player = Isaac.GetPlayer(0)
    if player:HasCollectible(CardReadingItem) then
        local copyCount = player:GetCollectibleNum(CardReadingItem) - 1
        if copyCount > 0 then
            local room = Game():GetRoom()
            local entities = room:GetEntities()
            local treasure_portal = false
            local boss_portal = false
            local secret_portal = false
            for i=0, entities.Size-1 do
                local cur_entity = entities:Get(i)
                if cur_entity.Type == EntityType.ENTITY_EFFECT and cur_entity.Variant == EffectVariant.PORTAL_TELEPORT then
                    if cur_entity.SubType == 0 then
                        treasure_portal = true
                    elseif cur_entity.SubType == 1 then
                        boss_portal = true
                    elseif cur_entity.SubType == 2 then
                        secret_portal = true
                    end
                end
            end
            if treasure_portal and boss_portal then
                Isaac.Spawn(EntityType.ENTITY_EFFECT, EffectVariant.PORTAL_TELEPORT, 2, Vector(320,200), Vector(0, 0), nil)
            elseif treasure_portal and secret_portal then
                Isaac.Spawn(EntityType.ENTITY_EFFECT, EffectVariant.PORTAL_TELEPORT, 1, Vector(320,200), Vector(0, 0), nil)
            elseif boss_portal and secret_portal then
                Isaac.Spawn(EntityType.ENTITY_EFFECT, EffectVariant.PORTAL_TELEPORT, 0, Vector(320,200), Vector(0, 0), nil)
            end
        end
    end
end

-- Car Battery Stacking
-- Uses the active item one additional time per stack of car battery
function mod:onUseItemCB(item, rng, player_entity, flags, active_slot)
    if not settings.car_battery then
        return
    end
    if player_entity:HasCollectible(CarBatteryItem) then
        --Check for the USE_CARBATTERY UseFlag to prevent additional uses of the item
        if (flags & (1 << 5)) == (1 << 5) then
            return
        end
        --Make sure effect isn't repeated into infinity
        if using_item then
            return
        end
        --Get number of copies of Car Battery and uses active item effect appropriate number of times
        local copyCount = player_entity:GetCollectibleNum(CarBatteryItem) - 1
        if copyCount > 0 then
            using_item = true
            for i=1, copyCount, 1 do
                player_entity:UseActiveItem(item, UseFlag.USE_CARBATTERY)
            end
            using_item = false
        end
    end
end

-- Adds an additional Minisaac when damaged per stack of Giant Cell
function mod:onDamageGC()
    if not settings.giant_cell then
        return
    end
    local player = Isaac.GetPlayer(0)
    if player:HasCollectible(GiantCellItem) then
        local copyCount = player:GetCollectibleNum(GiantCellItem) - 1
        if copyCount > 0 then
            for i=1, copyCount, 1 do
                player:AddMinisaac(player.Position, true)
            end
        end
    end
end

-- Uses Soul of Cain effect on taking damage if player has more than one Cracked Orb
function mod:onDamageCO()
    if not settings.cracked_orb then
        return
    end
    local player = Isaac.GetPlayer(0)
    if player:HasCollectible(CrackedOrbItem) then
        local copyCount = player:GetCollectibleNum(CrackedOrbItem) - 1
        if copyCount > 0 then
            player:UseCard(Card.CARD_SOUL_CAIN, UseFlag.USE_NOANNOUNCER)
        end
    end
end

-- Infestation 1 Stacking
-- Spawns an additional 2-6 blue flies after taking damage
function mod:onDamageInfestation()
    if not settings.infestation then
        return
    end
    local player = Isaac.GetPlayer(0)
    if player:HasCollectible(InfestationItem) then
        local copyCount = player:GetCollectibleNum(InfestationItem) - 1
        if copyCount > 0 then
            for i=1, copyCount, 1 do
                local flies = math.random(2, 6)
                player:AddBlueFlies(flies, player.Position, player)
            end
        end
    end
end

-- Adds an additional 33% (increased with luck) on room clear to spawn a chest of ANY random type
function mod:onClearGT(rng, position)
    if not settings.guppys_tail then
        return
    end
    local room = Game():GetRoom()
    if room:GetType() == RoomType.ROOM_BOSS then
        return
    end
    local player = Isaac.GetPlayer(0)
    if player:HasCollectible(GuppyTailItem) then
        local copyCount = player:GetCollectibleNum(GuppyTailItem) - 1
        if copyCount > 0 then
            local effectiveLuck = player.Luck
            if effectiveLuck < 0 then
                effectiveLuck = 0
            elseif effectiveLuck > 10 then
                effectiveLuck = 10
            end
            for i=1, copyCount, 1 do
                if (rng:RandomFloat() * effectiveLuck * 0.1) + rng:RandomFloat() > 0.66 then
                    local spawnpos = room:FindFreePickupSpawnPosition(position)
                    if player:GetTrinket(0) == TrinketType.TRINKET_LEFT_HAND or player:GetTrinket(1) == TrinketType.TRINKET_LEFT_HAND then
                        Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_REDCHEST, 0, spawnpos, Vector(0,0), nil)
                    elseif player:GetTrinket(0) == TrinketType.TRINKET_GILDED_KEY or player:GetTrinket(1) == TrinketType.TRINKET_GILDED_KEY then
                        Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_LOCKEDCHEST, 0, spawnpos, Vector(0,0), nil)
                    else
                        local chestType = rng:RandomInt(10)
                        Isaac.Spawn(EntityType.ENTITY_PICKUP, chests[chestType], 0, spawnpos, Vector(0,0), nil)
                    end
                end
            end
        end
    end
end

-- Spawn an additional blue spider per stack of Infestation 2 upon killing an enemy
function mod:onKillInfestationTwo(entity)
    if not settings.infestation_two then
        return
    end
    local player = Isaac.GetPlayer(0)
    if entity:IsEnemy() then
        if player:HasCollectible(InfestationTwoItem) then
            local copyCount = player:GetCollectibleNum(InfestationTwoItem) - 1
            if copyCount > 0 then
                for i=1, copyCount, 1 do
                    local spider_target = Vector(entity.Position.X + math.random(-10, 10), entity.Position.Y+80)
                    player:ThrowBlueSpider(entity.Position, spider_target)
                end
            end
        end
    end
end

-- If the player does not already have a pocket active item, the player's current active item will be moved to the pocket active slot
function mod:onUseItemSchoolbag(item, rng, player_entity, flags, active_slot)
    if not settings.schoolbag then
        return
    end
    if not mod:canHoldPocketActive(player_entity) then
        return
    end
    local current_active_item = item
    if player_entity:HasCollectible(SchoolbagItem) then
        local copyCount = player_entity:GetCollectibleNum(SchoolbagItem) - 1
        if copyCount > 0 then
            if active_slot == ActiveSlot.SLOT_PRIMARY and (flags & (1 << 2)) == (1 << 2) then
                player_entity:SetPocketActiveItem(current_active_item, ActiveSlot.SLOT_POCKET, false)
            end
        end
    end
end

-- Stairway ladder will now persist after leaving the initial room
function mod:onNewRoomStairway()
    if not settings.stairway then
        return
    end
    local player = Isaac.GetPlayer(0)
    if player:HasCollectible(StairwayItem) then
        local copyCount = player:GetCollectibleNum(StairwayItem) - 1
        if copyCount > 0 then
            if Game():GetLevel():GetCurrentRoomIndex() == Game():GetLevel():GetStartingRoomIndex() then
                Isaac.Spawn(EntityType.ENTITY_EFFECT, EffectVariant.TALL_LADDER, 1, Vector(440, 160), Vector(0,0), nil)
            end
        end
    end
end

-- For every tear fired while stacking Eye Sore, an additional random tear will be fired in a random direction
function mod:onFireTearsEyeSores(tear)
    if not settings.eye_sores then
        return
    end
    if spawning_tear then
        return
    end
    local player = Isaac.GetPlayer(0)
    if player:HasCollectible(EyeSoresItem) then
        local copyCount = player:GetCollectibleNum(EyeSoresItem) - 1
        if copyCount > 0 then
            spawning_tear = true
            for i=1, copyCount, 1 do
                player:FireTear(player.Position, tear.Velocity:Rotated(math.random(-179, 180)), true, false, true)
            end
            spawning_tear = false
        end
    end
end

-- Stacking Jumper Cables adds an additional charge to the primary active item and pocket active every 7 kills
function mod:onKillJumperCables(entity)
    if not settings.jumper_cables then
        return
    end
    local player = Isaac.GetPlayer(0)
    if entity:IsEnemy() then
        if player:HasCollectible(JumperCablesItem) then
            local copyCount = player:GetCollectibleNum(JumperCablesItem) - 1
            if copyCount > 0 then
                if jumper_cables_kills == 7 then
                    jumper_cables_kills = 0
                    player:SetActiveCharge(player:GetActiveCharge(ActiveSlot.SLOT_PRIMARY) + 1, ActiveSlot.SLOT_PRIMARY)
                    player:SetActiveCharge(player:GetActiveCharge(ActiveSlot.SLOT_POCKET) + 1, ActiveSlot.SLOT_POCKET)
                else
                    jumper_cables_kills = jumper_cables_kills + 1
                end
            end
        end
    end
end

-- Stacking Empty Heart adds an additional empty heart container per stack when effect is triggered
function mod:onNewFloorEmptyHeart()
    if not settings.empty_heart then
        return
    end
    local player = Isaac.GetPlayer(0)
    if player:HasCollectible(EmptyHeartItem) then
        local copyCount = player:GetCollectibleNum(EmptyHeartItem) - 1
        if copyCount > 0 then
            -- If player has two hearts less than their max red hearts, then trigger effect
            if player:GetHearts() <= 2 then
                for i=1, copyCount, 1 do
                    player:AddMaxHearts(2, true)
                end
            end
        end
    end
end

-- 9 Volt Stacking adds additional charges back to the item upon use
function mod:onUseItemNineVolt(item, rng, player_entity, flags, active_slot)
    if not settings.nine_volt then
        return
    end
    if player_entity:HasCollectible(NineVoltItem) then
        if (flags & (1 << 5)) == (1 << 5) then
            return
        end
        local copyCount = player_entity:GetCollectibleNum(NineVoltItem) - 1
        if copyCount > 0 then
            player_entity:SetActiveCharge(player_entity:GetActiveCharge() + copyCount)
        end
    end
end

-- Lusty Blood Stacking adds additional damage upon killing the appropriate number of enemies
function mod:onKillEnemyLustyBlood(entity)
    if not settings.lusty_blood then
        return
    end
    if entity:IsEnemy() then
        local player = Isaac.GetPlayer(0)
        if player:HasCollectible(LustyBloodItem) then
            local copyCount = player:GetCollectibleNum(LustyBloodItem)
            if copyCount > 1 then
                local max_kill_bonus = copyCount * 10
                if current_room_kills <= 10 then
                    lusty_blood_extra_damage = 0
                elseif current_room_kills > 10 and current_room_kills <= max_kill_bonus then
                    lusty_blood_extra_damage = (current_room_kills - 10) * 0.5
                end
            end
        end
    end
end

-- Increments the number of hits taken on the current floor by 1 when hit
function mod:onDamage()
    current_floor_hits_taken = current_floor_hits_taken + 1
    damaged_in_room = true
    if settings.purity then
        purity_dmg = false
        purity_tears = false
        purity_range = false
        purity_speed = false
        purity_buffs_active = false
    end
end

-- Resets value of hits taken on current floor, extra damage from bloody lust, and extra tears from bloody gust
function mod:onNewFloor()
    local player = Isaac.GetPlayer(0)
    current_floor_hits_taken = 0
    if player:HasCollectible(BloodyLustItem) then
        bloody_lust_extra_damage = 0
    end
    if player:HasCollectible(BloodyGustItem) then
        bloody_gust_extra_tears = 0
    end
end

-- Bloody Lust Stacking adds appropriate amount of damage when taking hits
function mod:onDamageBloodyLust()
    if not settings.bloody_lust then
        return
    end
    local player = Isaac.GetPlayer(0)
    if player:HasCollectible(BloodyLustItem) then
        local copyCount = player:GetCollectibleNum(BloodyLustItem) - 1
        if copyCount > 0 then
            local max_hit_bonus = copyCount * 4
            if current_floor_hits_taken <= 6 then
                bloody_lust_extra_damage = 0
            elseif current_floor_hits_taken > 6 and (current_floor_hits_taken - 6) <= max_hit_bonus then
                bloody_lust_extra_damage = 1.5 * (current_floor_hits_taken - 6)
            end
        end
    end
end

-- Bloody Gust Stacking adds appropriate amount of tears when taking hits
function mod:onDamageBloodyGust()
    if not settings.bloody_gust then
        return
    end
    local player = Isaac.GetPlayer(0)
    if player:HasCollectible(BloodyGustItem) then
        local copyCount = player:GetCollectibleNum(BloodyGustItem) - 1
        if copyCount > 0 then
            local max_hit_bonus = copyCount * 2
            if current_floor_hits_taken <= 6 then
                bloody_gust_extra_tears = 0
            elseif current_floor_hits_taken > 6 and (current_floor_hits_taken - 6) <= max_hit_bonus then
                bloody_gust_extra_tears = 0
                for i=1, current_floor_hits_taken, 1 do
                    bloody_gust_extra_tears = (bloody_gust_extra_tears + (0.1 * (i-1)) + 0.25)
                end
                bloody_gust_extra_tears = bloody_gust_extra_tears - 3
            end
        end
    end
end

-- Scapular Stacking
function mod:onDamageScapular(entity, amount, flags, source, countdown_frames)
    if not settings.scapular then
        return
    end
    local player = Isaac.GetPlayer(0)
    if player:HasCollectible(ScapularItem) then
        local copyCount = player:GetCollectibleNum(ScapularItem)
        if copyCount > 1 then
            if current_scapular_charge > 0 and mod:getPlayerTotalHealth()-amount <= copyCount and mod:getPlayerTotalHealth()-amount > 0 then
                current_scapular_charge = current_scapular_charge - 1
                scapular_activate = true
            end
        end
    end
end

-- Adds soul hearts to the player after taking damage. This is necessary as the MC_ENTITY_TAKE_DMG callback occurs before the actual damage is taken.
function mod:onUpdateScapular()
    if not settings.scapular then
        return
    end
    if scapular_activate then
        Isaac.GetPlayer(0):AddSoulHearts(2)
        scapular_activate = false
    end
end

-- Checks if the player has been standing still without shooting for 1 second before activating activating the gnawed leaf effect
function mod:postUpdateGnawedLeaf()
    if not settings.gnawed_leaf then
        return
    end
    local player = Isaac.GetPlayer(0)
    if player:HasCollectible(GnawedLeafItem) then
        if player:GetMovementVector().X == 0 and player:GetMovementVector().Y == 0 and player:GetShootingInput().X == 0 and player:GetShootingInput().Y == 0 then
            gnawed_leaf_ticks = gnawed_leaf_ticks + 1
            if gnawed_leaf_ticks >= 30 then
                gnawed_leaf_active = true
            end
        else
            gnawed_leaf_ticks = 0
            gnawed_leaf_active = false
        end
    end
end

-- Gnawed Leaf Stacking. Deals double the player's current damage multiplied by number of stacks after the first whenever an enemy collides with the player
function mod:onPlayerCollisionGnawedLeaf(player_entity, collider_entity, low)
    if not settings.gnawed_leaf then
        return
    end
    if not collider_entity:IsEnemy() then
        return
    end
    if player_entity:HasCollectible(GnawedLeafItem) then
        local copyCount = player_entity:GetCollectibleNum(GnawedLeafItem) - 1
        if copyCount > 0 then
            if gnawed_leaf_active then
                local damage = copyCount * player_entity.Damage * 2
                collider_entity:TakeDamage(damage, 0, EntityRef(player_entity), 0)
            end
        end
    end
end

-- Linger bean stacking
function mod:onFireTearsLingerBean(tear)
    if not settings.linger_bean then
        return
    end
    local player = Isaac.GetPlayer(0)
    if player:HasCollectible(LingerBeanItem) then
        --local player = tear.SpawnerEntity:ToPlayer()
        local copyCount = player:GetCollectibleNum(LingerBeanItem) - 1
        if copyCount > 0 then
            for i=1, copyCount, 1 do
                local chance = math.random()
                if chance > 0.85 then
                    local radius = 100 * copyCount
                    if chance > 0.95 then
                        Game():ButterBeanFart(player.Position, radius, player, true, true)
                    else
                        Game().Fart(Game(), player.Position, radius, player, copyCount, 0)
                    end
                end
            end
        end
    end
end

-- Stole this code from Fiend Folio which stole the code from Retribution. Get fricked.
local function increaseTearScale(tear, multiplier)
    tear.Scale = tear.Scale * multiplier
end

-- Godhead Stacking
mod:AddCallback(ModCallbacks.MC_POST_TEAR_UPDATE, function(_, tear)
    if not settings.godhead then
        return
    end
    local player = Isaac.GetPlayer(0)
    if player:HasCollectible(GodHeadItem) then
        local copyCount = player:GetCollectibleNum(GodHeadItem) - 1
        if copyCount > 0 then
            if tear.FrameCount < 1 then
                if tear.Parent.Type == 1 or (tear.Parent.Type == 3 and (tear.Parent.Variant == 80 or tear.Parent.Variant == 235 or tear.Parent.Variant == 240)) then
                    increaseTearScale(tear, 1 + (copyCount * 0.25))
                end
            elseif tear.FrameCount == 1 and tear.Parent then
                if tear.Parent.Type == 3 and tear.Parent.Variant == 81 then
                    increaseTearScale(tear, 1 + (copyCount * 0.25))
                end
            end
        end
    end
end)

-- Number Two Stacking - If you know how to fix the visual issues, please leave a comment on the mod page or message me on twitter
function mod:onBombNumber2(bomb)
    if not settings.number_two then
        return
    end
    local player = Isaac.GetPlayer(0)
    if player:HasCollectible(NumberTwoItem) then
        local copyCount = player:GetCollectibleNum(NumberTwoItem) - 1
        if copyCount == 1 then
            if bomb.Variant == BombVariant.BOMB_BUTT then
                bomb.Variant = BombVariant.BOMB_MR_MEGA
            end
        end
        if copyCount >= 2 then
            if bomb.Variant == BombVariant.BOMB_BUTT then
                bomb:AddTearFlags(TearFlags.TEAR_GIGA_BOMB)
                bomb.Variant = BombVariant.BOMB_GIGA
            end
        end
        if copyCount > 0 then
            bomb.ExplosionDamage = bomb.ExplosionDamage * (copyCount + 1)
        end
    end
end

function mod:onFireTearsTinyPlanet(tear)
    if not settings.tiny_planet then
        return
    end
    local player = Isaac.GetPlayer(0)
    if player:HasCollectible(TinyPlanetItem) then
        local copyCount = player:GetCollectibleNum(TinyPlanetItem) - 1
        if copyCount > 0 then
            if spawning_tear then
                return
            end
            for i=1, copyCount, 1 do
                spawning_tear = true
                local fired_tear = player:FireTear(tear.Position, tear.Velocity, false, true, false, player, 0.5)
                spawning_tear = false
            end
        end
    end
end

function mod:onFireTearsSerpentsKiss(tear)
    if not settings.serpents_kiss then
        return
    end
    local player = Isaac.GetPlayer(0)
    if player:HasCollectible(SerpentsKissItem) then
        local copyCount = player:GetCollectibleNum(SerpentsKissItem) - 1
        if copyCount > 0 then
            if not tear:HasTearFlags(TearFlags.TEAR_POISON) then
                if math.random() < 0.15 * copyCount then
                    tear:AddTearFlags(TearFlags.TEAR_POISON)
                end
            end
            if tear:HasTearFlags(TearFlags.TEAR_POISON) then
                tear:AddTearFlags(TearFlags.TEAR_BLACK_HP_DROP)
            end
        end
    end
end

mod:AddCallback(ModCallbacks.MC_POST_UPDATE, mod.onUpdateScapular)
mod:AddCallback(ModCallbacks.MC_POST_NEW_ROOM, mod.onNewRoom)
mod:AddCallback(ModCallbacks.MC_POST_ENTITY_KILL, mod.onKillEnemy)
mod:AddCallback(ModCallbacks.MC_ENTITY_TAKE_DMG, mod.onDamage, EntityType.ENTITY_PLAYER)
mod:AddCallback(ModCallbacks.MC_POST_NEW_LEVEL, mod.onNewFloor)

mod:AddCallback(ModCallbacks.MC_POST_UPDATE, mod.postUpdateGnawedLeaf)

mod:AddCallback(ModCallbacks.MC_PRE_PLAYER_COLLISION, mod.onPlayerCollisionGnawedLeaf)

mod:AddCallback(ModCallbacks.MC_ENTITY_TAKE_DMG, mod.onDamageGC, EntityType.ENTITY_PLAYER)
mod:AddCallback(ModCallbacks.MC_ENTITY_TAKE_DMG, mod.onDamageCO, EntityType.ENTITY_PLAYER)
mod:AddCallback(ModCallbacks.MC_ENTITY_TAKE_DMG, mod.onDamageInfestation, EntityType.ENTITY_PLAYER)
mod:AddCallback(ModCallbacks.MC_ENTITY_TAKE_DMG, mod.onDamageBloodyLust, EntityType.ENTITY_PLAYER)
mod:AddCallback(ModCallbacks.MC_ENTITY_TAKE_DMG, mod.onDamageBloodyGust, EntityType.ENTITY_PLAYER)
mod:AddCallback(ModCallbacks.MC_ENTITY_TAKE_DMG, mod.onDamageScapular, EntityType.ENTITY_PLAYER)

mod:AddCallback(ModCallbacks.MC_POST_ENTITY_KILL, mod.onKillInfestationTwo)
mod:AddCallback(ModCallbacks.MC_POST_ENTITY_KILL, mod.onKillJumperCables)
mod:AddCallback(ModCallbacks.MC_POST_ENTITY_KILL, mod.onKillEnemyLustyBlood)

mod:AddCallback(ModCallbacks.MC_POST_FIRE_TEAR, mod.onFireTearsCE)
mod:AddCallback(ModCallbacks.MC_POST_LASER_INIT, mod.onFireLaserCE)
mod:AddCallback(ModCallbacks.MC_POST_FIRE_TEAR, mod.onFireTearsLH)
mod:AddCallback(ModCallbacks.MC_POST_FIRE_TEAR, mod.onFireTearsEyeSores)
mod:AddCallback(ModCallbacks.MC_POST_FIRE_TEAR, mod.onFireTearsLingerBean)
mod:AddCallback(ModCallbacks.MC_POST_FIRE_TEAR, mod.onFireTearsTinyPlanet)
mod:AddCallback(ModCallbacks.MC_POST_FIRE_TEAR, mod.onFireTearsSerpentsKiss)

mod:AddCallback(ModCallbacks.MC_USE_ITEM, mod.onUseItemCB)
mod:AddCallback(ModCallbacks.MC_USE_ITEM, mod.onUseItemNineVolt)
mod:AddCallback(ModCallbacks.MC_USE_ITEM, mod.onUseItemSchoolbag)

mod:AddCallback(ModCallbacks.MC_POST_NEW_LEVEL, mod.onNewFloorIT)
mod:AddCallback(ModCallbacks.MC_POST_NEW_LEVEL, mod.onNewFloorCR)
mod:AddCallback(ModCallbacks.MC_POST_NEW_LEVEL, mod.onNewFloorEmptyHeart)

mod:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, mod.evaluateCache)

mod:AddCallback(ModCallbacks.MC_POST_NEW_ROOM, mod.onNewRoomXRV)
mod:AddCallback(ModCallbacks.MC_POST_NEW_ROOM, mod.onNewRoomStairway)

mod:AddCallback(ModCallbacks.MC_PRE_SPAWN_CLEAN_AWARD, mod.onClearXRV)
mod:AddCallback(ModCallbacks.MC_PRE_SPAWN_CLEAN_AWARD, mod.onClearGT)

mod:AddCallback(ModCallbacks.MC_POST_BOMB_INIT, mod.onBombNumber2)

mod:setupMyModConfigMenuSettings()