--          Welcome to Heist Control v2
--
--                  INF
-- Requires Trusted Mode ON
-- Do not contact me if you tried to edit/change anything and the script stopped working.
-- Developed by "jhowkNx" from 2TAKE1 Menu ~ "jkNX" from UC (UnknownCheats)
-- Any suggestion, bugs and so on... open a ticket here:
-- https://github.com/jhowkNx/Heist-Control-v2
--
-- Changelog:
-- https://github.com/jhowkNx/Heist-Control-v2/blob/main/changelog.md
--
-- Trusted Mode requeriment
if not menu.is_trusted_mode_enabled() then
    menu.notify("Heist Control requires Trusted Mode to be activated", "Warning", 8, 0x6414F0BE)
    return
end
--
if menu.is_trusted_mode_enabled() then
menu.notify("Thanks for using Heist Control\n\nCurrent version: 2.9.1\nDeveloped by jhowkNx", "Welcome", 6, 0x6400C814)
menu.notify("- To repeat the same Heist, you must wait up to 15 minutes (cooldown) or you won't get paid\n\n- Disable or create a new profile with no protections on to avoid bugs when playing heists\n\n- Keep in mind that Rockstar employers can join your heist, be aware.", "Important", 10, 0x50F078F0)
end

-- Script function
--
-- FLOAT
local function stat_set_float(hash, prefix, value, save)
    save = save or true
    local hash0, hash1 = hash
    if prefix then
        hash0 = "MP0_" .. hash
        hash1 = "MP1_" .. hash
        hash1 = gameplay.get_hash_key(hash1)
    end
    hash0 = gameplay.get_hash_key(hash0)
    local value0, e = stats.stat_get_float(hash0, -1)
    if value0 ~= value then
        stats.stat_set_float(hash0, value, save)
    end
    if prefix then
        local value1, e = stats.stat_get_float(hash1, -1)
        if value1 ~= value then
            stats.stat_set_float(hash1, value, save)
        end
    end
end
-- INT
local function stat_set_int(hash, prefix, value, save)
    save = save or true
    local hash0, hash1 = hash
    if prefix then
        hash0 = "MP0_" .. hash
        hash1 = "MP1_" .. hash
        hash1 = gameplay.get_hash_key(hash1)
    end
    hash0 = gameplay.get_hash_key(hash0)
    local value0, e = stats.stat_get_int(hash0, -1)
    if value0 ~= value then
        stats.stat_set_int(hash0, value, save)
    end
    if prefix then
        local value1, e = stats.stat_get_int(hash1, -1)
        if value1 ~= value then
            stats.stat_set_int(hash1, value, save)
        end
    end
end
-- BOOL
local function stat_set_bool(hash, prefix, value, save)
    save = save or true
    local hash0, hash1 = hash
    if prefix then
        hash0 = "MP0_" .. hash
        hash1 = "MP1_" .. hash
        hash1 = gameplay.get_hash_key(hash1)
    end
    hash0 = gameplay.get_hash_key(hash0)
    local value0, e = stats.stat_get_bool(hash0, -1)
    if value0 ~= value then
        stats.stat_set_bool(hash0, value, save)
    end
    if prefix then
        local value1, e = stats.stat_get_bool(hash1, -1)
        if value1 ~= value then
            stats.stat_set_bool(hash1, value, save)
        end
    end
end

local Heist_Control = menu.add_feature("» Heist Control v2.9.1", "parent", 0, function()
end)
local PERICO_HEIST = menu.add_feature("» Cayo Perico Heist", "parent", Heist_Control.id)
local CAYO_AUTO_PRST = menu.add_feature("» Automated Presets", "parent", PERICO_HEIST.id, function()
menu.notify("Remember: You must choose your preset outside the Submarine or in the Main Deck", "", 6, 0x50F0FF14)
end)
local AUTOMATED_SOLO = menu.add_feature("» SOLO  $2.4 MILLIONs", "parent", CAYO_AUTO_PRST.id)
local AUTOMATED_2P = menu.add_feature("» 2 Players  $2.4 MILLIONs", "parent", CAYO_AUTO_PRST.id)
local AUTOMATED_3P = menu.add_feature("» 3 Players  $2.4 MILLIONs", "parent", CAYO_AUTO_PRST.id)
local AUTOMATED_4P = menu.add_feature("» 4 Players  $2.4 MILLIONs", "parent", CAYO_AUTO_PRST.id)
local STANDARD_SET = menu.add_feature("» Standard Preset", "parent", PERICO_HEIST.id, function()
    menu.notify("Remember: You must choose your preset outside the Submarine or in the Main Deck", "", 6, 0x50F0FF14)
end)
local TELEPORT = menu.add_feature("» Custom Teleport", "parent", PERICO_HEIST.id)
local PERICO_ADV = menu.add_feature("» Advanced Features", "parent", PERICO_HEIST.id)
local HSCUT_CP = menu.add_feature("» Players Cut", "parent", PERICO_ADV.id, function()
menu.notify("Important\n\n- Adding a high percentage can affect payment negatively", "", 5, 0x6414F0FF)
end)
local PERICO_HOST_CUT = menu.add_feature("» Your Cut", "parent", HSCUT_CP.id)
local PERICO_P2_CUT = menu.add_feature("» Player 2", "parent", HSCUT_CP.id)
local PERICO_P3_CUT = menu.add_feature("» Player 3", "parent", HSCUT_CP.id)
local PERICO_P4_CUT = menu.add_feature("» Player 4", "parent", HSCUT_CP.id)
local CAYO_BAG = menu.add_feature("» Bag Capacity Modifier", "parent", PERICO_ADV.id)
local CAYO_VEHICLES = menu.add_feature("» Heist Vehicles", "parent", PERICO_HEIST.id)
local CAYO_PRIMARY = menu.add_feature("» Primary Target", "parent", PERICO_HEIST.id)
local CAYO_SECONDARY = menu.add_feature("» Secondary Target", "parent", PERICO_HEIST.id)
local CAYO_WEAPONS = menu.add_feature("» Weapon Loadouts", "parent", PERICO_HEIST.id)
local CAYO_EQUIPM = menu.add_feature("» Equipments Spawn Location", "parent", PERICO_HEIST.id)
local CAYO_TRUCK = menu.add_feature("» Supply Truck Location", "parent", PERICO_HEIST.id)
local CAYO_DFFCTY = menu.add_feature("» Heist Difficulty", "parent", PERICO_HEIST.id)
local MORE_OPTIONS = menu.add_feature("» More Options", "parent", PERICO_HEIST.id)
local CASINO_HEIST = menu.add_feature("» Diamond Casino Heist", "parent", Heist_Control.id)
local CASINO_PRESETS = menu.add_feature("» Insta-Play [Presets]", "parent", CASINO_HEIST.id, function()
menu.notify("Remember: You must pay to start the heist, then go outside the arcade/garage to apply the preset correctly!", "", 6, 0x50F0FF14)
end)
local CAH_ADVCED = menu.add_feature("» Advanced Features", "parent", CASINO_HEIST.id)
local CASINO_BOARD1 = menu.add_feature("» Heist Planning [Board 1]", "parent", CASINO_HEIST.id)
local BOARD1_APPROACH = menu.add_feature("» Change Approach and Difficulty", "parent", CASINO_BOARD1.id)
local CASINO_TARGET = menu.add_feature("» Change Target", "parent", CASINO_BOARD1.id)
local CASINO_BOARD2 = menu.add_feature("» Heist Planning [Board 2]", "parent", CASINO_HEIST.id)
local CASINO_BOARD3 = menu.add_feature("» Heist Planning [Board 3]", "parent", CASINO_HEIST.id)
local CASINO_LBOARDS = menu.add_feature("» Board Loader : Unloader", "parent", CASINO_HEIST.id)
local CASINO_MORE = menu.add_feature("» More Options", "parent", CASINO_HEIST.id)
local DOOMS_HEIST = menu.add_feature("» Doomsday Heist", "parent", Heist_Control.id)
local DOOMS_PRESETS = menu.add_feature("» Insta-Play (Presets)", "parent", DOOMS_HEIST.id)
local DDHEIST_PLYR_MANAGER = menu.add_feature("» Players Cut", "parent", DOOMS_HEIST.id)
local CLASSIC_HEISTS = menu.add_feature("» Classic Heists", "parent", Heist_Control.id)
local CLASSIC_CUT = menu.add_feature("» Your Percentage", "parent", CLASSIC_HEISTS.id)
local LS_ROBBERY = menu.add_feature("» LS Tuners Robbery", "parent", Heist_Control.id)
local MASTER_UNLOCKR = menu.add_feature("» Master Unlocker", "parent", Heist_Control.id)
local TOOLS = menu.add_feature("» Tools", "parent", Heist_Control.id)

menu.add_feature("» Kosatka : Heist Room [Call Kosatka first]", "action", TELEPORT.id, function()
    menu.notify("If you teleport without calling it, you will be bugged", "", 4, 0x64F06414)
	pedmy = player.get_player_ped(player.player_id())
	entity.set_entity_coords_no_offset(pedmy,v3(1561.224,386.659,-49.685))
end)

menu.add_feature("» Kosatka : Main Deck [Call Kosatka first]", "action", TELEPORT.id, function()
    menu.notify("If you teleport without calling it, you will be bugged", "", 4, 0x64F06414)
	pedmy = player.get_player_ped(player.player_id())
	entity.set_entity_coords_no_offset(pedmy,v3(1563.218,406.030,-49.667))
end)

menu.add_feature("» Drainage Tunnel : Entrance", "action", TELEPORT.id, function()
    menu.notify("Teleported to Drainage Tunnel : Entrance", "", 4, 0x64F06414)
	pedmy = player.get_player_ped(player.player_id())
	entity.set_entity_coords_no_offset(pedmy,v3(5044.726,-5816.164,-11.213))
end)

menu.add_feature("» Drainage Tunnel : 2nd Checkpoint", "action", TELEPORT.id, function()
    menu.notify("Teleported to Drainage Tunnel : 2nd Checkpoint", "", 4, 0x64F06414)
	pedmy = player.get_player_ped(player.player_id())
	entity.set_entity_coords_no_offset(pedmy,v3(5054.630,-5771.519,-4.807))
end)

menu.add_feature("» Main Target", "action", TELEPORT.id, function()
    menu.notify("Teleported to Main Target", "", 4, 0x64F06414)
	pedmy = player.get_player_ped(player.player_id())
	entity.set_entity_coords_no_offset(pedmy,v3(5006.896,-5755.963,15.487))
end)

menu.add_feature("» Secondary Target room", "action", TELEPORT.id, function()
    menu.notify("Teleported to Secondary Target room", "", 4, 0x64F06414)
	pedmy = player.get_player_ped(player.player_id())
	entity.set_entity_coords_no_offset(pedmy,v3(5003.467,-5749.352,14.840))
end)

menu.add_feature("» Vault (El Rubio room)", "action", TELEPORT.id, function()
    menu.notify("Teleported to Vault", "", 4, 0x64F06414)
	pedmy = player.get_player_ped(player.player_id())
	entity.set_entity_coords_no_offset(pedmy,v3(5010.753,-5757.639,28.845))
end)

menu.add_feature("» Reduct Exit", "action", TELEPORT.id, function()
    menu.notify("Teleported to Exit", "", 4, 0x64F06414)
	pedmy = player.get_player_ped(player.player_id())
	entity.set_entity_coords_no_offset(pedmy,v3(4992.854,-5718.537,19.880))
end)

menu.add_feature("» Ocean safe place", "action", TELEPORT.id, function()
    menu.notify("Teleported to Ocean safe place", "", 4, 0x64F06414)
	pedmy = player.get_player_ped(player.player_id())
	entity.set_entity_coords_no_offset(pedmy,v3(4771.792,-6166.055,-40.266))
end)

do
    menu.add_feature("» About HC", "action", Heist_Control.id, function()
    menu.notify("Many thanks to\nhaekkzer\nkektram\nProddy\n2TAKE1 Menu Devs", "Heist Control", 5, 0x64F06414)
    menu.notify("For future updates, visit:\ngithub.com/jhowkNx/Heist-Control-v2", "Heist Control - Official Page", 5, 0x64F06414)
    end)
end
----------------------------------------------------------------
---- AUTO (ALL PLAYERS) NO SECONDARY TARGET
do
local QUICK_SET_ANY = {
    {"H4CNF_BS_GEN", 262143},
    {"H4CNF_BS_ENTR", 63},
    {"H4CNF_BS_ABIL", 63},
    {"H4CNF_WEP_DISRP", 3},
    {"H4CNF_ARM_DISRP", 3},
    {"H4CNF_HEL_DISRP", 3},
    {"H4CNF_BOLTCUT", 4424},
    {"H4CNF_UNIFORM", 5256},
    {"H4CNF_GRAPPEL", 5156},
    {"H4CNF_APPROACH", -1},
    {"H4LOOT_CASH_I", 0},
    {"H4LOOT_CASH_C", 0},
    {"H4LOOT_WEED_I", 0},
    {"H4LOOT_WEED_C", 0},
    {"H4LOOT_COKE_I", 0},
    {"H4LOOT_COKE_C", 0},
    {"H4LOOT_GOLD_I", 0},
    {"H4LOOT_GOLD_C", 0},
    {"H4LOOT_PAINT", 0},
    {"H4LOOT_CASH_V", 0},
    {"H4LOOT_COKE_V", 0},
    {"H4LOOT_GOLD_V", 0},
    {"H4LOOT_PAINT_V", 0},
    {"H4LOOT_WEED_V", 0},
    {"H4LOOT_CASH_I_SCOPED", 0},
    {"H4LOOT_CASH_C_SCOPED", 0},
    {"H4LOOT_WEED_I_SCOPED", 0},
    {"H4LOOT_WEED_C_SCOPED", 0},
    {"H4LOOT_COKE_I_SCOPED", 0},
    {"H4LOOT_COKE_C_SCOPED", 0},
    {"H4LOOT_GOLD_I_SCOPED", 0},
    {"H4LOOT_GOLD_C_SCOPED", 0},
    {"H4LOOT_PAINT_SCOPED", 0},
    {"H4CNF_TARGET", 5},
    {"H4CNF_WEAPONS", 5},
    {"H4_MISSIONS", 65283},
    {"H4_PROGRESS", 126823},
    {"H4_PLAYTHROUGH_STATUS", 5}
}
menu.add_feature("» [1-4 Players: 2.4MI] [Quick] [Main Target only]", "toggle", CAYO_AUTO_PRST.id, function(quickcp)
    menu.notify("The Heist is ready!\n\n- There are no secondary targets, your goal is just to steal the primary target and escape\n\n- There are no other vehicles available besides the Kosatka\n\n- Do not mess with the percentage or targets\n\nLeave activated until the end", "Heist Control", 15, 0x64F06414)
    menu.notify("Note: This preset has a visual bug that shows an unusual amount at the end of the heist, however if you look in online players you can verify the true payment of other members.", "", 10, 0x501400FF)
    while quickcp.on do
        for i = 1, #QUICK_SET_ANY do
        stat_set_int(QUICK_SET_ANY[i][1], true, QUICK_SET_ANY[i][2])
        end
        script.set_global_i(1711169,100) -- original version 1710289 + 823 + 56 + 1
        script.set_global_i(1711170,145) -- original version 1710289 + 823 + 56 + 2
        script.set_global_i(1711171,145) -- original version 1710289 + 823 + 56 + 3
        script.set_global_i(1711172,145) -- original version 1710289 + 823 + 56 + 4
        script.set_global_f(262145+29470,0.0)
        script.set_global_f(262145+29471,0.0)
        script.set_global_i(262145 + 29466, 2455000)
    if not quickcp.on then return end
    system.wait(0)
    end
end)
end

--- CAYO AUTOMATED PRESET SOLO PLAYERS
do
local AUTO_SOLO_SAPPHIRE_HARD = {
    {"H4CNF_TARGET", 5},
    {"H4LOOT_CASH_I", 5551206},
    {"H4LOOT_CASH_I_SCOPED", 5551206},
    {"H4LOOT_CASH_C", 0},
    {"H4LOOT_CASH_C_SCOPED", 0},
    {"H4LOOT_COKE_I", 4884838},
    {"H4LOOT_COKE_I_SCOPED", 4884838},
    {"H4LOOT_COKE_C", 0},
    {"H4LOOT_COKE_C_SCOPED", 0},
    {"H4LOOT_GOLD_I", 0},
    {"H4LOOT_GOLD_I_SCOPED", 0},
    {"H4LOOT_GOLD_C", 192},
    {"H4LOOT_GOLD_C_SCOPED", 192},
    {"H4LOOT_WEED_I", 0},
    {"H4LOOT_WEED_I_SCOPED", 0},
    {"H4LOOT_WEED_C", 0},
    {"H4LOOT_WEED_C_SCOPED", 0},
    {"H4LOOT_PAINT", 120},
    {"H4LOOT_PAINT_SCOPED", 120},
    {"H4LOOT_CASH_V", 224431},
    {"H4LOOT_COKE_V", 353863},
    {"H4LOOT_GOLD_V", 471817},
    {"H4LOOT_PAINT_V", 353863},
    {"H4LOOT_WEED_V", 0},
        --
    {"H4_PROGRESS", 131055}, --hard
    {"H4CNF_BS_GEN", 262143},
    {"H4CNF_BS_ENTR", 63},
    {"H4CNF_BS_ABIL", 63},
    {"H4CNF_WEP_DISRP", 3},
    {"H4CNF_ARM_DISRP", 3},
    {"H4CNF_HEL_DISRP", 3},
    {"H4CNF_APPROACH", -1}
}

local USER_CAN_MDFY_PRESET_AUTO_SPSOLO = {
    {"H4CNF_BOLTCUT", 4424},
    {"H4CNF_UNIFORM", 5256},
    {"H4CNF_GRAPPEL", 5156},
    {"H4_MISSIONS", 65535},
    {"H4CNF_WEAPONS", 5},
    {"H4CNF_TROJAN", 5},
    {"H4_PLAYTHROUGH_STATUS", 100}
}
    menu.add_feature("» Sapphire Panther", "toggle", AUTOMATED_SOLO.id, function(SOLO_SAPH_var0)
    menu.notify("Preset modified to SOLO\n- Don't use any advanced options\n- Don't use bag modifier\n- Don't change the percentage set by the script\n- Just play :)\n\nleave it activated until the end of the heist.", "Cayo Perico SOLO | Sapphire Panther", 7, 0xffcc63a6)
        for i = 1, #USER_CAN_MDFY_PRESET_AUTO_SPSOLO do
        stat_set_int(USER_CAN_MDFY_PRESET_AUTO_SPSOLO[i][1], true, USER_CAN_MDFY_PRESET_AUTO_SPSOLO[i][2])
        end
        while SOLO_SAPH_var0.on do
        for i = 1, #AUTO_SOLO_SAPPHIRE_HARD do
        stat_set_int(AUTO_SOLO_SAPPHIRE_HARD[i][1], true, AUTO_SOLO_SAPPHIRE_HARD[i][2])
        end
        script.set_global_f(262145+29470,-0.1) --pavel cut protection
        script.set_global_f(262145+29471,-0.02) --fency fee cut protection
        script.set_global_i(262145+29227,1800) -- bag protection
        script.set_global_i(1711169,100) -- original version 1710289 + 823 + 56 + 1
        if not SOLO_SAPH_var0.on then return end
        system.wait(0)
    end
end)
end

---- SOLO RUBY
--- CAYO AUTOMATED PRESET SOLO PLAYERS
do
local AUTO_SOLO_RUBY_HARD = {
    {"H4CNF_TARGET", 1},
    {"H4LOOT_CASH_I", 9208137},
    {"H4LOOT_CASH_I_SCOPED", 9208137},
    {"H4LOOT_CASH_C", 0},
    {"H4LOOT_CASH_C_SCOPED", 0},
    {"H4LOOT_COKE_I", 1048704},
    {"H4LOOT_COKE_I_SCOPED", 1048704},
    {"H4LOOT_COKE_C", 0},
    {"H4LOOT_COKE_C_SCOPED", 0},
    {"H4LOOT_GOLD_I", 0},
    {"H4LOOT_GOLD_I_SCOPED", 0},
    {"H4LOOT_GOLD_C", 255},
    {"H4LOOT_GOLD_C_SCOPED", 255},
    {"H4LOOT_WEED_I", 4206596},
    {"H4LOOT_WEED_I_SCOPED", 4206596},
    {"H4LOOT_WEED_C", 0},
    {"H4LOOT_WEED_C_SCOPED", 0},
    {"H4LOOT_PAINT", 127},
    {"H4LOOT_PAINT_SCOPED", 127},
    {"H4LOOT_CASH_V", 424431},
    {"H4LOOT_COKE_V", 848863},
    {"H4LOOT_GOLD_V", 1131817},
    {"H4LOOT_PAINT_V", 848863},
    {"H4LOOT_WEED_V", 679090},
    --
    {"H4_PROGRESS", 131055}, --hard
    {"H4CNF_BS_GEN", 262143},
    {"H4CNF_BS_ENTR", 63},
    {"H4CNF_BS_ABIL", 63},
    {"H4CNF_WEP_DISRP", 3},
    {"H4CNF_ARM_DISRP", 3},
    {"H4CNF_HEL_DISRP", 3},
    {"H4CNF_APPROACH", -1}
}

local USER_CAN_MDFY_PRESET_AUTO_RNSOLO = {
    {"H4CNF_BOLTCUT", 4424},
    {"H4CNF_UNIFORM", 5256},
    {"H4CNF_GRAPPEL", 5156},
    {"H4_MISSIONS", 65535},
    {"H4CNF_WEAPONS", 5},
    {"H4CNF_TROJAN", 5},
    {"H4_PLAYTHROUGH_STATUS", 100}
}
    menu.add_feature("» Ruby Necklace", "toggle", AUTOMATED_SOLO.id, function(SOLO_RUBY_var0)
    menu.notify("Preset modified to SOLO\n- Don't use any advanced options\n- Don't use bag modifier\n- Don't change the percentage set by the script\n- Just play :)\n\nleave it activated until the end of the heist.", "Cayo Perico SOLO | Ruby Necklace", 7, 0xffcc63a6)
        for i = 1, #USER_CAN_MDFY_PRESET_AUTO_RNSOLO do
        stat_set_int(USER_CAN_MDFY_PRESET_AUTO_RNSOLO[i][1], true, USER_CAN_MDFY_PRESET_AUTO_RNSOLO[i][2])
        end
        while SOLO_RUBY_var0.on do      
        for i = 2, #AUTO_SOLO_RUBY_HARD do
        stat_set_int(AUTO_SOLO_RUBY_HARD[i][1], true, AUTO_SOLO_RUBY_HARD[i][2])
        end      
        script.set_global_f(262145+29470,-0.1) --pavel cut protection
        script.set_global_f(262145+29471,-0.02) --fency fee cut protection
        script.set_global_i(262145+29227,1800) -- bag protection
        script.set_global_i(1711169,100) -- cut original version 1710289 + 823 + 56 + 1
        if not SOLO_RUBY_var0.on then return end
        system.wait(0)
        end
end)
end
----- AUTOMATED 2 PLAYERS
do
local AUTO_2PLAYERs_SAPPHIRE_NORMAL = {
    {"H4CNF_TARGET", 5},
    {"H4LOOT_CASH_I", 2359448},
    {"H4LOOT_CASH_I_SCOPED", 2359448},
    {"H4LOOT_CASH_C", 0},
    {"H4LOOT_CASH_C_SCOPED", 0},
    {"H4LOOT_COKE_I", 2},
    {"H4LOOT_COKE_I_SCOPED", 2},
    {"H4LOOT_COKE_C", 0},
    {"H4LOOT_COKE_C_SCOPED", 0},
    {"H4LOOT_GOLD_I", 0},
    {"H4LOOT_GOLD_I_SCOPED", 0},
    {"H4LOOT_GOLD_C", 255},
    {"H4LOOT_GOLD_C_SCOPED", 255},
    {"H4LOOT_WEED_I", 0},
    {"H4LOOT_WEED_I_SCOPED", 0},
    {"H4LOOT_WEED_C", 0},
    {"H4LOOT_WEED_C_SCOPED", 0},
    {"H4LOOT_PAINT", 127},
    {"H4LOOT_PAINT_SCOPED", 127},
    {"H4LOOT_CASH_V", 474431},
    {"H4LOOT_COKE_V", 948863},
    {"H4LOOT_GOLD_V", 1265151},
    {"H4LOOT_PAINT_V", 948863},
    {"H4LOOT_WEED_V", 0},
        --
    {"H4_PROGRESS", 126823},
    {"H4CNF_BS_GEN", 262143},
    {"H4CNF_BS_ENTR", 63},
    {"H4CNF_BS_ABIL", 63},
    {"H4CNF_WEP_DISRP", 3},
    {"H4CNF_ARM_DISRP", 3},
    {"H4CNF_HEL_DISRP", 3},
    {"H4CNF_APPROACH", -1}
}
local USER_CAN_MDFY_PRESET_AUTO_SPDUO = {
    {"H4CNF_BOLTCUT", 4424},
    {"H4CNF_UNIFORM", 5256},
    {"H4CNF_GRAPPEL", 5156},
    {"H4_MISSIONS", 65535},
    {"H4CNF_WEAPONS", 5},
    {"H4CNF_TROJAN", 5},
    {"H4_PLAYTHROUGH_STATUS", 100}
}
menu.add_feature("» Sapphire Panther", "toggle", AUTOMATED_2P.id, function(AUTO_2_SAPH_var0)
    menu.notify("Preset added for 2 players\n- Don't use any advanced options\n- Don't use bag modifier\n- Don't change the percentage set by the script\n- Just play :)\n\nleave it activated until the end of the heist.", "Cayo Perico 2 Players | Sapphire Panther", 7, 0xffcc63a6)
    for i = 1, #USER_CAN_MDFY_PRESET_AUTO_SPDUO do
    stat_set_int(USER_CAN_MDFY_PRESET_AUTO_SPDUO[i][1], true, USER_CAN_MDFY_PRESET_AUTO_SPDUO[i][2])
    end
    while AUTO_2_SAPH_var0.on do
    for i = 1, #AUTO_2PLAYERs_SAPPHIRE_NORMAL do
    stat_set_int(AUTO_2PLAYERs_SAPPHIRE_NORMAL[i][1], true, AUTO_2PLAYERs_SAPPHIRE_NORMAL[i][2])
    end
    script.set_global_f(262145+29470,-0.1) --pavel cut protection
    script.set_global_f(262145+29471,-0.02) --fency fee cut protection
    script.set_global_i(262145+29227,1800) -- bag protection
    script.set_global_i(1711169,50)
    script.set_global_i(1711170,50)
    if not AUTO_2_SAPH_var0.on then return end
    system.wait(0)
end
end)
end

--- AUTOMATED 2 RUBY
do
local AUTO_2PLAYERs_RUBY_NORMAL = {
    {"H4CNF_TARGET", 1},
    {"H4LOOT_CASH_I", 9208137},
    {"H4LOOT_CASH_I_SCOPED", 9208137},
    {"H4LOOT_CASH_C", 0},
    {"H4LOOT_CASH_C_SCOPED", 0},
    {"H4LOOT_COKE_I", 1048704},
    {"H4LOOT_COKE_I_SCOPED", 1048704},
    {"H4LOOT_COKE_C", 0},
    {"H4LOOT_COKE_C_SCOPED", 0},
    {"H4LOOT_GOLD_I", 0},
    {"H4LOOT_GOLD_I_SCOPED", 0},
    {"H4LOOT_GOLD_C", 255},
    {"H4LOOT_GOLD_C_SCOPED", 255},
    {"H4LOOT_WEED_I", 4206596},
    {"H4LOOT_WEED_I_SCOPED", 4206596},
    {"H4LOOT_WEED_C", 0},
    {"H4LOOT_WEED_C_SCOPED", 0},
    {"H4LOOT_PAINT", 127},
    {"H4LOOT_PAINT_SCOPED", 127},
    {"H4LOOT_CASH_V", 572727},
    {"H4LOOT_COKE_V", 1145454},
    {"H4LOOT_GOLD_V", 1527272},
    {"H4LOOT_PAINT_V", 1145454},
    {"H4LOOT_WEED_V", 916363},
    --
    {"H4_PROGRESS", 126823},
    {"H4CNF_BS_GEN", 262143},
    {"H4CNF_BS_ENTR", 63},
    {"H4CNF_BS_ABIL", 63},
    {"H4CNF_WEP_DISRP", 3},
    {"H4CNF_ARM_DISRP", 3},
    {"H4CNF_HEL_DISRP", 3},
    {"H4CNF_APPROACH", -1}
}
local USER_CAN_MDFY_PRESET_AUTO_RBDUO = {
    {"H4CNF_BOLTCUT", 4424},
    {"H4CNF_UNIFORM", 5256},
    {"H4CNF_GRAPPEL", 5156},
    {"H4_MISSIONS", 65535},
    {"H4CNF_WEAPONS", 5},
    {"H4CNF_TROJAN", 5},
    {"H4_PLAYTHROUGH_STATUS", 100}
}
    menu.add_feature("» Ruby Necklace", "toggle", AUTOMATED_2P.id, function(AUTO_2_RUBY_var0)
    menu.notify("Preset added for 2 players\n- Don't use any advanced options\n- Don't use bag modifier\n- Don't change the percentage set by the script\n- Just play :)\n\nleave it activated until the end of the heist.", "Cayo Perico 2 Players | Ruby Necklace", 7, 0xffcc63a6)
    for i = 1, #USER_CAN_MDFY_PRESET_AUTO_RBDUO do
    stat_set_int(USER_CAN_MDFY_PRESET_AUTO_RBDUO[i][1], true, USER_CAN_MDFY_PRESET_AUTO_RBDUO[i][2])
    end
    while AUTO_2_RUBY_var0.on do
    for i = 1, #AUTO_2PLAYERs_RUBY_NORMAL do
    stat_set_int(AUTO_2PLAYERs_RUBY_NORMAL[i][1], true, AUTO_2PLAYERs_RUBY_NORMAL[i][2])
    script.set_global_f(262145+29470,-0.1) --pavel cut protection
    script.set_global_f(262145+29471,-0.02) --fency fee cut protection
    script.set_global_i(262145+29227,1800) -- bag protection
    script.set_global_i(1711169,50)
    script.set_global_i(1711170,50)
    if not AUTO_2_RUBY_var0.on then return end
    system.wait(0)
    end
end
end)
end

do
--- CAYO AUTOMATED PRESET 3 PLAYERS
local AUTO_3PLAYERs_SAPPHIRE_NORMAL = {
    {"H4CNF_TARGET", 5},
    {"H4LOOT_CASH_I", 2359448},
    {"H4LOOT_CASH_I_SCOPED", 2359448},
    {"H4LOOT_CASH_C", 0},
    {"H4LOOT_CASH_C_SCOPED", 0},
    {"H4LOOT_COKE_I", 4901222},
    {"H4LOOT_COKE_I_SCOPED", 4901222},
    {"H4LOOT_COKE_C", 0},
    {"H4LOOT_COKE_C_SCOPED", 0},
    {"H4LOOT_GOLD_I", 0},
    {"H4LOOT_GOLD_I_SCOPED", 0},
    {"H4LOOT_GOLD_C", 255},
    {"H4LOOT_GOLD_C_SCOPED", 255},
    {"H4LOOT_WEED_I", 0},
    {"H4LOOT_WEED_I_SCOPED", 0},
    {"H4LOOT_WEED_C", 0},
    {"H4LOOT_WEED_C_SCOPED", 0},
    {"H4LOOT_PAINT", 127},
    {"H4LOOT_PAINT_SCOPED", 127},
    {"H4LOOT_CASH_V", 515151},
    {"H4LOOT_COKE_V", 1030303},
    {"H4LOOT_GOLD_V", 1373737},
    {"H4LOOT_PAINT_V", 1030303},
    {"H4LOOT_WEED_V", 0},
    --
    {"H4_PROGRESS", 126823},
    {"H4CNF_BS_GEN", 262143},
    {"H4CNF_BS_ENTR", 63},
    {"H4CNF_BS_ABIL", 63},
    {"H4CNF_WEP_DISRP", 3},
    {"H4CNF_ARM_DISRP", 3},
    {"H4CNF_HEL_DISRP", 3},
    {"H4CNF_APPROACH", -1}
}
local USER_CAN_MDFY_PRESET_AUTO_SPTRIO = {
    {"H4CNF_BOLTCUT", 4424},
    {"H4CNF_UNIFORM", 5256},
    {"H4CNF_GRAPPEL", 5156},
    {"H4_MISSIONS", 65535},
    {"H4CNF_WEAPONS", 5},
    {"H4CNF_TROJAN", 5},
    {"H4_PLAYTHROUGH_STATUS", 100}
}
    menu.add_feature("» Sapphire Panther", "toggle", AUTOMATED_3P.id, function(AUTO_3_SAPH_var0)
    menu.notify("Preset added for 3 players\n- Don't use any advanced options\n- Don't use bag modifier\n- Don't change the percentage set by the script\n- Just play :)\n\nleave it activated until the end of the heist.", "Cayo Perico 3 Players | Sapphire Panther", 7, 0xffcc63a6)
    for i = 1, #USER_CAN_MDFY_PRESET_AUTO_SPTRIO do
    stat_set_int(USER_CAN_MDFY_PRESET_AUTO_SPTRIO[i][1], true, USER_CAN_MDFY_PRESET_AUTO_SPTRIO[i][2])
    end
        while AUTO_3_SAPH_var0.on do    
        for i = 1, #AUTO_3PLAYERs_SAPPHIRE_NORMAL do
        stat_set_int(AUTO_3PLAYERs_SAPPHIRE_NORMAL[i][1], true, AUTO_3PLAYERs_SAPPHIRE_NORMAL[i][2])
        script.set_global_f(262145+29470,-0.1) --pavel cut protection
        script.set_global_f(262145+29471,-0.02) --fency fee cut protection
        script.set_global_i(262145+29227,1800) -- bag protection
        script.set_global_i(1711169,30)
        script.set_global_i(1711170,35)
        script.set_global_i(1711171,35)
        if not AUTO_3_SAPH_var0.on then return end
        system.wait(0)
    end
    end
end)
end

do
--- CAYO AUTOMATED 3 PLAYERS RUBY
local AUTO_3PLAYERs_RUBY_NORMAL = {
    {"H4CNF_TARGET", 1},
    {"H4LOOT_CASH_I", 9208137},
    {"H4LOOT_CASH_I_SCOPED", 9208137},
    {"H4LOOT_CASH_C", 0},
    {"H4LOOT_CASH_C_SCOPED", 0},
    {"H4LOOT_COKE_I", 1048704},
    {"H4LOOT_COKE_I_SCOPED", 1048704},
    {"H4LOOT_COKE_C", 0},
    {"H4LOOT_COKE_C_SCOPED", 0},
    {"H4LOOT_GOLD_I", 0},
    {"H4LOOT_GOLD_I_SCOPED", 0},
    {"H4LOOT_GOLD_C", 255},
    {"H4LOOT_GOLD_C_SCOPED", 255},
    {"H4LOOT_WEED_I", 4206596},
    {"H4LOOT_WEED_I_SCOPED", 4206596},
    {"H4LOOT_WEED_C", 0},
    {"H4LOOT_WEED_C_SCOPED", 0},
    {"H4LOOT_PAINT", 127},
    {"H4LOOT_PAINT_SCOPED", 127},
    {"H4LOOT_CASH_V", 598268},
    {"H4LOOT_COKE_V", 1196536},
    {"H4LOOT_GOLD_V", 1595382},
    {"H4LOOT_PAINT_V", 1196536},
    {"H4LOOT_WEED_V", 957229},
    --
    {"H4_PROGRESS", 126823},
    {"H4CNF_BS_GEN", 262143},
    {"H4CNF_BS_ENTR", 63},
    {"H4CNF_BS_ABIL", 63},
    {"H4CNF_WEP_DISRP", 3},
    {"H4CNF_ARM_DISRP", 3},
    {"H4CNF_HEL_DISRP", 3},
    {"H4CNF_APPROACH", -1}
}
local USER_CAN_MDFY_PRESET_AUTO_RBTRIO = {
    {"H4CNF_BOLTCUT", 4424},
    {"H4CNF_UNIFORM", 5256},
    {"H4CNF_GRAPPEL", 5156},
    {"H4_MISSIONS", 65535},
    {"H4CNF_WEAPONS", 5},
    {"H4CNF_TROJAN", 5},
    {"H4_PLAYTHROUGH_STATUS", 100}
}
    menu.add_feature("» Ruby Necklace", "toggle", AUTOMATED_3P.id, function(AUTO_3_RUBY_var0)
    menu.notify("Preset added for 3 players\n- Don't use any advanced options\n- Don't use bag modifier\n- Don't change the percentage set by the script\n- Just play :)\n\nleave it activated until the end of the heist.", "Cayo Perico 3 Players | Ruby Necklace", 7, 0xffcc63a6)
    for i = 1, #USER_CAN_MDFY_PRESET_AUTO_RBTRIO do
        stat_set_int(USER_CAN_MDFY_PRESET_AUTO_RBTRIO[i][1], true, USER_CAN_MDFY_PRESET_AUTO_RBTRIO[i][2])
    end
    while AUTO_3_RUBY_var0.on do
        for i = 1, #AUTO_3PLAYERs_RUBY_NORMAL do
        stat_set_int(AUTO_3PLAYERs_RUBY_NORMAL[i][1], true, AUTO_3PLAYERs_RUBY_NORMAL[i][2])
        script.set_global_f(262145+29470,-0.1) --pavel cut protection
        script.set_global_f(262145+29471,-0.02) --fency fee cut protection
        script.set_global_i(262145+29227,1800) -- bag protection
        script.set_global_i(1711169,30)
        script.set_global_i(1711170,35)
        script.set_global_i(1711171,35)
        if not AUTO_3_RUBY_var0.on then return end
        system.wait(0)
    end
    end
end)
end

--- CAYO AUTOMATED PRESET 4 PLAYERS
do
local AUTO_4PLAYERs_SAPPHIRE_NORMAL = {
    {"H4CNF_TARGET", 5},
    {"H4LOOT_CASH_I", 2359448},
    {"H4LOOT_CASH_I_SCOPED", 2359448},
    {"H4LOOT_CASH_C", 0},
    {"H4LOOT_CASH_C_SCOPED", 0},
    {"H4LOOT_COKE_I", 4901222},
    {"H4LOOT_COKE_I_SCOPED", 4901222},
    {"H4LOOT_COKE_C", 0},
    {"H4LOOT_COKE_C_SCOPED", 0},
    {"H4LOOT_GOLD_I", 0},
    {"H4LOOT_GOLD_I_SCOPED", 0},
    {"H4LOOT_GOLD_C", 255},
    {"H4LOOT_GOLD_C_SCOPED", 255},
    {"H4LOOT_WEED_I", 0},
    {"H4LOOT_WEED_I_SCOPED", 0},
    {"H4LOOT_WEED_C", 0},
    {"H4LOOT_WEED_C_SCOPED", 0},
    {"H4LOOT_PAINT", 127},
    {"H4LOOT_PAINT_SCOPED", 127},
    {"H4LOOT_CASH_V", 599431},
    {"H4LOOT_COKE_V", 1198863},
    {"H4LOOT_GOLD_V", 1598484},
    {"H4LOOT_PAINT_V", 1198863},
    {"H4LOOT_WEED_V", 0},
        --
    {"H4_PROGRESS", 126823},
    {"H4CNF_BS_GEN", 262143},
    {"H4CNF_BS_ENTR", 63},
    {"H4CNF_BS_ABIL", 63},
    {"H4CNF_WEP_DISRP", 3},
    {"H4CNF_ARM_DISRP", 3},
    {"H4CNF_HEL_DISRP", 3},
    {"H4CNF_APPROACH", -1}
}
local USER_CAN_MDFY_PRESET_AUTO_SPQUAD = {
    {"H4CNF_BOLTCUT", 4424},
    {"H4CNF_UNIFORM", 5256},
    {"H4CNF_GRAPPEL", 5156},
    {"H4_MISSIONS", 65535},
    {"H4CNF_WEAPONS", 5},
    {"H4CNF_TROJAN", 5},
    {"H4_PLAYTHROUGH_STATUS", 100}
}
menu.add_feature("» Sapphire Panther", "toggle", AUTOMATED_4P.id, function(AUTO_4_SAPH_var0)
    menu.notify("Preset added for 4 players\n- Don't use any advanced options\n- Don't use bag modifier\n- Don't change the percentage set by the script\n- Just play :)\n\nleave it activated until the end of the heist.", "Cayo Perico 4 Players | Sapphire Panther", 7, 0xffcc63a6)
    for i = 1, #USER_CAN_MDFY_PRESET_AUTO_SPQUAD do
        stat_set_int(USER_CAN_MDFY_PRESET_AUTO_SPQUAD[i][1], true, USER_CAN_MDFY_PRESET_AUTO_SPQUAD[i][2])
    end
        while AUTO_4_SAPH_var0.on do
        for i = 1, #AUTO_4PLAYERs_SAPPHIRE_NORMAL do
        stat_set_int(AUTO_4PLAYERs_SAPPHIRE_NORMAL[i][1], true, AUTO_4PLAYERs_SAPPHIRE_NORMAL[i][2])
        script.set_global_f(262145+29470,-0.1) --pavel cut protection
        script.set_global_f(262145+29471,-0.02) --fency fee cut protection
        script.set_global_i(262145+29227,1800) -- bag protection
        script.set_global_i(1711169,25) -- player 1
        script.set_global_i(1711170,25) -- player 2
        script.set_global_i(1711171,25) -- player 3
        script.set_global_i(1711172,25) -- player 4
        if not AUTO_4_SAPH_var0.on then return end
         system.wait(0)
    end
    end
end)
end

--- CAYO AUTOMATED PRESET 4 PLAYERS RUBY
do
local AUTO_4PLAYERs_RUBY_NORMAL = {
    {"H4CNF_TARGET", 1},
    {"H4LOOT_CASH_I", 9208137},
    {"H4LOOT_CASH_I_SCOPED", 9208137},
    {"H4LOOT_CASH_C", 0},
    {"H4LOOT_CASH_C_SCOPED", 0},
    {"H4LOOT_COKE_I", 1048704},
    {"H4LOOT_COKE_I_SCOPED", 1048704},
    {"H4LOOT_COKE_C", 0},
    {"H4LOOT_COKE_C_SCOPED", 0},
    {"H4LOOT_GOLD_I", 0},
    {"H4LOOT_GOLD_I_SCOPED", 0},
    {"H4LOOT_GOLD_C", 255},
    {"H4LOOT_GOLD_C_SCOPED", 255},
    {"H4LOOT_WEED_I", 4206596},
    {"H4LOOT_WEED_I_SCOPED", 4206596},
    {"H4LOOT_WEED_C", 0},
    {"H4LOOT_WEED_C_SCOPED", 0},
    {"H4LOOT_PAINT", 127},
    {"H4LOOT_PAINT_SCOPED", 127},
    {"H4LOOT_CASH_V", 655681},
    {"H4LOOT_COKE_V", 1311363},
    {"H4LOOT_GOLD_V", 1748484},
    {"H4LOOT_PAINT_V", 1311363},
    {"H4LOOT_WEED_V", 1049090},
     --
    {"H4_PROGRESS", 126823},
    {"H4CNF_BS_GEN", 262143},
    {"H4CNF_BS_ENTR", 63},
    {"H4CNF_BS_ABIL", 63},
    {"H4CNF_WEP_DISRP", 3},
    {"H4CNF_ARM_DISRP", 3},
    {"H4CNF_HEL_DISRP", 3},
    {"H4CNF_APPROACH", -1}
}
local USER_CAN_MDFY_PRESET_AUTO_RBQUAD = {
    {"H4CNF_BOLTCUT", 4424},
    {"H4CNF_UNIFORM", 5256},
    {"H4CNF_GRAPPEL", 5156},
    {"H4_MISSIONS", 65535},
    {"H4CNF_WEAPONS", 5},
    {"H4CNF_TROJAN", 5},
    {"H4_PLAYTHROUGH_STATUS", 100}
}
    menu.add_feature("» Ruby Necklace", "toggle", AUTOMATED_4P.id, function(AUTO_4_RUBY_var0)
    menu.notify("Preset added for 4 players\n- Don't use any advanced options\n- Don't use bag modifier\n- Don't change the percentage set by the script\n- Just play :)\n\nleave it activated until the end of the heist.", "Cayo Perico 4 Players | Ruby Necklace", 7, 0xffcc63a6)
    for i = 1, #USER_CAN_MDFY_PRESET_AUTO_RBQUAD do
        stat_set_int(USER_CAN_MDFY_PRESET_AUTO_RBQUAD[i][1], true, USER_CAN_MDFY_PRESET_AUTO_RBQUAD[i][2])
    end
    while AUTO_4_RUBY_var0.on do    
        for i = 1, #AUTO_4PLAYERs_RUBY_NORMAL do
        stat_set_int(AUTO_4PLAYERs_RUBY_NORMAL[i][1], true, AUTO_4PLAYERs_RUBY_NORMAL[i][2])
        script.set_global_f(262145+29470,-0.1) --pavel cut protection
        script.set_global_f(262145+29471,-0.02) --fency fee cut protection
        script.set_global_i(262145+29227,1800) -- bag protection
        script.set_global_i(1711169,25) -- player 1
        script.set_global_i(1711170,25) -- player 2
        script.set_global_i(1711171,25) -- player 3
        script.set_global_i(1711172,25) -- player 4
        if not AUTO_4_RUBY_var0.on then return end
        system.wait(0)
    end
end
end)
end

---- STANDARD SET
do
local STANDARD_PRSET = {
    {"H4CNF_BS_GEN", 262143},
    {"H4CNF_BS_ENTR", 63},
    {"H4CNF_BS_ABIL", 63},
    {"H4CNF_WEP_DISRP", 3},
    {"H4CNF_ARM_DISRP", 3},
    {"H4CNF_HEL_DISRP", 3},
    {"H4CNF_BOLTCUT", 4424},
    {"H4CNF_UNIFORM", 5256},
    {"H4CNF_GRAPPEL", 5156},
    {"H4CNF_APPROACH", -1},
    {"H4LOOT_CASH_I", 1089792},
    {"H4LOOT_CASH_C", 0},
    {"H4LOOT_WEED_I", 9114214},
    {"H4LOOT_WEED_C", 37},
    {"H4LOOT_COKE_I", 6573209},
    {"H4LOOT_COKE_C", 26},
    {"H4LOOT_GOLD_I", 0},
    {"H4LOOT_GOLD_C", 192},
    {"H4LOOT_PAINT", 127},
    {"H4_PROGRESS", 124271},
    {"H4LOOT_CASH_V", 22500},
    {"H4LOOT_COKE_V", 55023},
    {"H4LOOT_GOLD_V", 83046},
    {"H4LOOT_PAINT_V", 47375},
    {"H4LOOT_WEED_V", 36967},
    {"H4LOOT_CASH_I_SCOPED", 1089792},
    {"H4LOOT_CASH_C_SCOPED", 0},
    {"H4LOOT_WEED_I_SCOPED", 9114214},
    {"H4LOOT_WEED_C_SCOPED", 37},
    {"H4LOOT_COKE_I_SCOPED", 6573209},
    {"H4LOOT_COKE_C_SCOPED", 26},
    {"H4LOOT_GOLD_I_SCOPED", 0},
    {"H4LOOT_GOLD_C_SCOPED", 192},
    {"H4LOOT_PAINT_SCOPED", 127},
    {"H4_MISSIONS", 65535},
    {"H4_PLAYTHROUGH_STATUS", 5}
}
local RANDOM_TARGET = {
    {"H4CNF_TARGET", 1,5,1,5},
    {"H4CNF_WEAPONS", 1,5,1,5}
}
    menu.add_feature("» Semi-Original Preset (Not calculated)", "action", STANDARD_SET.id, function()
    menu.notify("The preset has been set, remember to be on the limit!\n\nHere you can use\n- Advanced Options (no exceptions)\n- Modify primary and secondary targets\n\nRemember that you will only receive the money if you do not exceed the limit of $2,500,000 per player", "Heist Control", 15, 0x64F06414)
    for i = 1, #STANDARD_PRSET do
    stat_set_int(STANDARD_PRSET[i][1], true, STANDARD_PRSET[i][2])
    end
    for i = 1, #RANDOM_TARGET do
    stat_set_int(RANDOM_TARGET[i][1], true, math.random(RANDOM_TARGET[i][4], RANDOM_TARGET[i][5]))
    end
end)
end
------- ADVANCED FEATURES CAYO

menu.add_feature("0%", "action", PERICO_HOST_CUT.id, function()
        script.set_global_i(1711169,0)
end)

menu.add_feature("100%", "action", PERICO_HOST_CUT.id, function()
        script.set_global_i(1711169,100)
end)

menu.add_feature("125%", "action", PERICO_HOST_CUT.id, function()
        script.set_global_i(1711169,125)
end)

menu.add_feature("150%", "action", PERICO_HOST_CUT.id, function()
        script.set_global_i(1711169,150)
end)

-- PLAYER 2 CUT MANAGER

menu.add_feature("0%", "action", PERICO_P2_CUT.id, function()
        script.set_global_i(1711170,0)
end)

menu.add_feature("100%", "action", PERICO_P2_CUT.id, function()
        script.set_global_i(1711170,100)
end)

menu.add_feature("125%", "action", PERICO_P2_CUT.id, function()
        script.set_global_i(1711170,125)
end)

menu.add_feature("150%", "action", PERICO_P2_CUT.id, function()
        script.set_global_i(1711170,150)
end)

-- PLAYER 3 CUT MANAGER

menu.add_feature("0%", "action", PERICO_P3_CUT.id, function()
        script.set_global_i(1711171,0)
end)

menu.add_feature("100%", "action", PERICO_P3_CUT.id, function()
        script.set_global_i(1711171,100)
end)

menu.add_feature("125%", "action", PERICO_P3_CUT.id, function()
        script.set_global_i(1711171,125)
end)

menu.add_feature("150%", "action", PERICO_P3_CUT.id, function()
        script.set_global_i(1711171,150)
end)

-- PLAYER 4 CUT MANAGER

menu.add_feature("0%", "action", PERICO_P4_CUT.id, function()
        script.set_global_i(1711172,0)
end)

menu.add_feature("100%", "action", PERICO_P4_CUT.id, function()
        script.set_global_i(1711172,100)
end)

menu.add_feature("125%", "action", PERICO_P4_CUT.id, function()
        script.set_global_i(1711172,125)
end)

menu.add_feature("150%", "action", PERICO_P4_CUT.id, function()
        script.set_global_i(1711172,150)
end)

menu.add_feature("» Set 100% to everyone", "action", HSCUT_CP.id, function()
        script.set_global_i(1711169,100)
        script.set_global_i(1711170,100)
        script.set_global_i(1711171,100)
        script.set_global_i(1711172,100)
end)

menu.add_feature("» Normal Bag Limit", "action", CAYO_BAG.id, function()
    menu.notify("Affects only you\n\nBag Restored", "Heist Control", 3, 0xffef5a09)
    script.set_global_i(262145+29227,1800)
end)

menu.add_feature("» Simulate Bag to 2 players", "action", CAYO_BAG.id, function()
    menu.notify("Affects only you\n\nBag Modified to 2 Players", "Heist Control", 3, 0xffef5a09)
    script.set_global_i(262145+29227,3600)
end)

menu.add_feature("» Simulate Bag to 3 players", "action", CAYO_BAG.id, function()
    menu.notify("Affects only you\n\nBag Modified to 3 Players", "Heist Control", 3, 0xffef5a09)
    script.set_global_i(262145+29227,5400)
end)

menu.add_feature("» Simulate Bag to 4 players", "action", CAYO_BAG.id, function()
    menu.notify("Affects only you\n\nBag Modified to 4 Players", "Heist Control", 3, 0xffef5a09)
    script.set_global_i(262145+29227,7200)
end)

    menu.add_feature("» Remove Fencing Fee & Pavel Cut", "toggle", PERICO_ADV.id, function(abc)
    menu.notify("Leave activated until the end of the heist", "Heist Control", 5, 0x64F06414)
    while abc.on do
        script.set_global_f(262145+29470,0)
        script.set_global_f(262145+29471,0)
        if not abc.on then return end
        system.wait(900)
    end
end)

-------------------------
do
local CP_VEH_KA = {
    {"H4_MISSIONS", 65283}
}
    menu.add_feature("» Submarine KOSATKA", "action", CAYO_VEHICLES.id, function()
        menu.notify("KOSATKA avaliable", "Heist Control", 3, 0xffef5a09)
        for i = 1, #CP_VEH_KA do
            stat_set_int(CP_VEH_KA[i][1], true, CP_VEH_KA[i][2])
        end
    end)
end

do
local CP_VEH_AT = {
    {"H4_MISSIONS", 65413}
}
    menu.add_feature("» Plane ALKONOST", "action", CAYO_VEHICLES.id, function()
    menu.notify("ALKONOST avaliable", "Heist Control", 3, 0xffef5a09)
        for i = 1, #CP_VEH_AT do
            stat_set_int(CP_VEH_AT[i][1], true, CP_VEH_AT[i][2])
        end
    end)
end

do
local CP_VEH_VM = {
    {"H4_MISSIONS", 65289}
}
    menu.add_feature("» Plane VELUM", "action", CAYO_VEHICLES.id, function()
    menu.notify("VELUM avaliable", "Heist Control", 3, 0xffef5a09)
        for i = 1, #CP_VEH_VM do
            stat_set_int(CP_VEH_VM[i][1], true, CP_VEH_VM[i][2])
        end
    end)
end

do
local CP_VEH_SA = {
    {"H4_MISSIONS", 65425}
}
    menu.add_feature("» Helicopter STEALTH ANNIHILATOR", "action", CAYO_VEHICLES.id, function()
    menu.notify("STEALTH ANNIHILATOR avaliable", "Heist Control", 3, 0xffef5a09)
        for i = 1, #CP_VEH_SA do
            stat_set_int(CP_VEH_SA[i][1], true, CP_VEH_SA[i][2])
        end
    end)
end

do
local CP_VEH_PB = {
    {"H4_MISSIONS", 65313}
}
    menu.add_feature("» Boat PATROL BOAT", "action", CAYO_VEHICLES.id, function()
    menu.notify("PATROL BOAT avaliable", "Heist Control", 3, 0xffef5a09)
        for i = 1, #CP_VEH_PB do
            stat_set_int(CP_VEH_PB[i][1], true, CP_VEH_PB[i][2])
        end
    end)
end

do
local CP_VEH_LN = {
    {"H4_MISSIONS", 65345}
}
    menu.add_feature("» Boat LONGFIN", "action", CAYO_VEHICLES.id, function()
    menu.notify("LONGFIN avaliable", "Heist Control", 3, 0xffef5a09)
        for i = 1, #CP_VEH_LN do
            stat_set_int(CP_VEH_LN[i][1], true, CP_VEH_LN[i][2])
        end
    end)
end

do
local CP_VEH_ALL = {
    {"H4_MISSIONS", 65535}
}
    menu.add_feature("» Unlock All Vehicles", "action", CAYO_VEHICLES.id, function()
    menu.notify("All Vehicles are avaliable", "Heist Control", 3, 0xffef5a09)
        for i = 1, #CP_VEH_ALL do
            stat_set_int(CP_VEH_ALL[i][1], true, CP_VEH_ALL[i][2])
        end
    end)
end


do
local Target_SapphirePanther = {
    {"H4CNF_TARGET", 5}
}
    menu.add_feature("» Change to Sapphire Panther", "action", CAYO_PRIMARY.id, function()
    menu.notify("Primary Target Modified to Sapphire Panther\n\n- $1.900,000 (Normal)\n- $2.090,000 (Hard)", "Heist Control", 3, 0xffef5a09)
        for i = 1, #Target_SapphirePanther do
            stat_set_int(Target_SapphirePanther[i][1], true, Target_SapphirePanther[i][2])
        end
    end)
end

do
local Target_MadrazoF = {
    {"H4CNF_TARGET", 4}
}
    menu.add_feature("» Change to Madrazo Files", "action", CAYO_PRIMARY.id, function()
    menu.notify("Primary Target Modified to Madrazo Files\n\n- $1.100,000 (Normal)\n- $1.210,000 (Hard)", "Heist Control", 3, 0xffef5a09)
        for i = 1, #Target_MadrazoF do
            stat_set_int(Target_MadrazoF[i][1], true, Target_MadrazoF[i][2])
        end
    end)
end

do
local Target_PinkDiamond = {
    {"H4CNF_TARGET", 3}
}
    menu.add_feature("» Change to Pink Diamond", "action", CAYO_PRIMARY.id, function()
    menu.notify("Primary Target Modified to Pink Diamond\n\n- $1.300,000 (Normal)\n- $1.430,000 (Hard)", "Heist Control", 3, 0xffef5a09)
        for i = 1, #Target_PinkDiamond do
            stat_set_int(Target_PinkDiamond[i][1], true, Target_PinkDiamond[i][2])
        end
    end)
end

do
local Target_BearerBonds = {
    {"H4CNF_TARGET", 2}
}
    menu.add_feature("» Change to Bearer Bonds", "action", CAYO_PRIMARY.id, function()
    menu.notify("Primary Target Modified to Bearer Bonds\n\n- $1.100,000 (Normal)\n- $1.210,000 (Hard)", "Heist Control", 3, 0xffef5a09)
        for i = 1, #Target_BearerBonds do
            stat_set_int(Target_BearerBonds[i][1], true, Target_BearerBonds[i][2])
        end
    end)
end

do
local Target_Ruby = {
    {"H4CNF_TARGET", 1}
}
    menu.add_feature("» Change to Ruby", "action", CAYO_PRIMARY.id, function()
    menu.notify("Primary Target Modified to Ruby\n\n- $1.000,000 (Normal)\n- $1.100,000 (Hard)", "Heist Control", 3, 0xffef5a09)
    for i = 1, #Target_Ruby do
            stat_set_int(Target_Ruby[i][1], true, Target_Ruby[i][2])
        end
    end)
end

do
local Target_Tequila = {
    {"H4CNF_TARGET", 0}
}
    menu.add_feature("» Change to Tequila", "action", CAYO_PRIMARY.id, function()
    menu.notify("Primary Target Modified to Tequila\n\n- $900,000 (Normal)\n- $990,000 (Hard)", "Heist Control", 3, 0xffef5a09)
        for i = 1, #Target_Tequila do
        stat_set_int(Target_Tequila[i][1], true, Target_Tequila[i][2])
        end
    end)
end

do
local SecondaryT_RDM = {
    {"H4LOOT_CASH_I", 1319624},
    {"H4LOOT_CASH_C", 18},
    {"H4LOOT_CASH_V", 89400},
    {"H4LOOT_WEED_I", 2639108},
    {"H4LOOT_WEED_C", 36},
    {"H4LOOT_WEED_V", 149000},
    {"H4LOOT_COKE_I", 4229122},
    {"H4LOOT_COKE_C", 72},
    {"H4LOOT_COKE_V", 221200},
    {"H4LOOT_GOLD_I", 8589313},
    {"H4LOOT_GOLD_C", 129},
    {"H4LOOT_GOLD_V", 322600},
    {"H4LOOT_PAINT", 127},
    {"H4LOOT_PAINT_V", 186800},
    {"H4LOOT_CASH_I_SCOPED", 1319624},
    {"H4LOOT_CASH_C_SCOPED", 18},
    {"H4LOOT_WEED_I_SCOPED", 2639108},
    {"H4LOOT_WEED_C_SCOPED", 36},    
    {"H4LOOT_COKE_I_SCOPED", 4229122},
    {"H4LOOT_COKE_C_SCOPED", 72},
    {"H4LOOT_GOLD_I_SCOPED", 8589313},
    {"H4LOOT_GOLD_C_SCOPED", 129},
    {"H4LOOT_PAINT_SCOPED", 127}
}
    menu.add_feature("» Change to Mixed Loot", "action", CAYO_SECONDARY.id, function()
    menu.notify("Secondary Target are now Mixed\n\nWhen using this method, the percentage and final payment is random!", "Heist Control", 3, 0xffef5a09)
    for i = 1, #SecondaryT_RDM do
        stat_set_int(SecondaryT_RDM[i][1], true, SecondaryT_RDM[i][2])
    end
end)
end

do
local SecondaryT_FCash = {
    {"H4LOOT_CASH_I", -1},
    {"H4LOOT_CASH_C", -1},
    {"H4LOOT_CASH_V", 90000},
    {"H4LOOT_WEED_I", 0},
    {"H4LOOT_WEED_C", 0},
    {"H4LOOT_WEED_V", 0},
    {"H4LOOT_COKE_I", 0},
    {"H4LOOT_COKE_C", 0},
    {"H4LOOT_COKE_V", 0},
    {"H4LOOT_GOLD_I", 0},
    {"H4LOOT_GOLD_C", 0},
    {"H4LOOT_GOLD_V", 0},
    {"H4LOOT_PAINT", 127},
    {"H4LOOT_PAINT_V", 190000},
    {"H4LOOT_CASH_I_SCOPED", -1},
    {"H4LOOT_CASH_C_SCOPED", -1},
    {"H4LOOT_WEED_I_SCOPED", 0},
    {"H4LOOT_WEED_C_SCOPED", 0},    
    {"H4LOOT_COKE_I_SCOPED", 0},
    {"H4LOOT_COKE_C_SCOPED", 0},
    {"H4LOOT_GOLD_I_SCOPED", 0},
    {"H4LOOT_GOLD_C_SCOPED", 0},
    {"H4LOOT_PAINT_SCOPED", 127}
}
    menu.add_feature("» Change to full Cash", "action", CAYO_SECONDARY.id, function()
        menu.notify("Secondary Target are full Cash (only)\n\nWhen using this method, the percentage and final payment is random!", "Heist Control", 3, 0xffef5a09)
    for i = 1, #SecondaryT_FCash do
        stat_set_int(SecondaryT_FCash[i][1], true, SecondaryT_FCash[i][2])
    end
end)
end

do
local SecondaryT_FWeed = {
    {"H4LOOT_CASH_I", 0},
    {"H4LOOT_CASH_C", 0},
    {"H4LOOT_CASH_V", 0},
    {"H4LOOT_WEED_I", -1},
    {"H4LOOT_WEED_C", -1},
    {"H4LOOT_WEED_V", 140000},
    {"H4LOOT_COKE_I", 0},
    {"H4LOOT_COKE_C", 0},
    {"H4LOOT_COKE_V", 0},
    {"H4LOOT_GOLD_I", 0},
    {"H4LOOT_GOLD_C", 0},
    {"H4LOOT_GOLD_V", 0},
    {"H4LOOT_PAINT", 127},
    {"H4LOOT_PAINT_V", 190000},
    {"H4LOOT_CASH_I_SCOPED", 0},
    {"H4LOOT_CASH_C_SCOPED", 0},
    {"H4LOOT_WEED_I_SCOPED", -1},
    {"H4LOOT_WEED_C_SCOPED", -1},    
    {"H4LOOT_COKE_I_SCOPED", 0},
    {"H4LOOT_COKE_C_SCOPED", 0},
    {"H4LOOT_GOLD_I_SCOPED", 0},
    {"H4LOOT_GOLD_C_SCOPED", 0},
    {"H4LOOT_PAINT_SCOPED", 127}
}
    menu.add_feature("» Change to full Weed", "action", CAYO_SECONDARY.id, function()
    menu.notify("Secondary Target are full Weed (only)\n\nWhen using this method, the percentage and final payment is random!", "Heist Control", 3, 0xffef5a09)
    for i = 1, #SecondaryT_FWeed do
        stat_set_int(SecondaryT_FWeed[i][1], true, SecondaryT_FWeed[i][2])
    end
end)
end

do
local SecondaryT_FCoke = {
    {"H4LOOT_CASH_I", 0},
    {"H4LOOT_CASH_C", 0},
    {"H4LOOT_CASH_V", 0},
    {"H4LOOT_WEED_I", 0},
    {"H4LOOT_WEED_C", 0},
    {"H4LOOT_WEED_V", 0},
    {"H4LOOT_COKE_I", -1},
    {"H4LOOT_COKE_C", -1},
    {"H4LOOT_COKE_V", 210000},
    {"H4LOOT_GOLD_I", 0},
    {"H4LOOT_GOLD_C", 0},
    {"H4LOOT_GOLD_V", 0},
    {"H4LOOT_PAINT", 127},
    {"H4LOOT_PAINT_V", 190000},
    {"H4LOOT_CASH_I_SCOPED", 0},
    {"H4LOOT_CASH_C_SCOPED", 0},
    {"H4LOOT_WEED_I_SCOPED", 0},
    {"H4LOOT_WEED_C_SCOPED", 0},    
    {"H4LOOT_COKE_I_SCOPED", -1},
    {"H4LOOT_COKE_C_SCOPED", -1},
    {"H4LOOT_GOLD_I_SCOPED", 0},
    {"H4LOOT_GOLD_C_SCOPED", 0},
    {"H4LOOT_PAINT_SCOPED", 127}
}
    menu.add_feature("» Change to full Coke", "action", CAYO_SECONDARY.id, function()
        menu.notify("Secondary Target are full Coke (only)\n\nWhen using this method, the percentage and final payment is random!", "Heist Control", 3, 0xffef5a09)
    for i = 1, #SecondaryT_FCoke do
        stat_set_int(SecondaryT_FCoke[i][1], true, SecondaryT_FCoke[i][2])
    end
end)
end

do
local SecondaryT_FGold = {
    {"H4LOOT_CASH_I", 0},
    {"H4LOOT_CASH_C", 0},
    {"H4LOOT_CASH_V", 0},
    {"H4LOOT_WEED_I", 0},
    {"H4LOOT_WEED_C", 0},
    {"H4LOOT_WEED_V", 0},
    {"H4LOOT_COKE_I", 0},
    {"H4LOOT_COKE_C", 0},
    {"H4LOOT_COKE_V", 0},
    {"H4LOOT_GOLD_I", -1},
    {"H4LOOT_GOLD_C", -1},
    {"H4LOOT_GOLD_V", 320000},
    {"H4LOOT_PAINT", -1},
    {"H4LOOT_PAINT_V", 190000},
    {"H4LOOT_CASH_I_SCOPED", 0},
    {"H4LOOT_CASH_C_SCOPED", 0},
    {"H4LOOT_WEED_I_SCOPED", 0},
    {"H4LOOT_WEED_C_SCOPED", 0},    
    {"H4LOOT_COKE_I_SCOPED", 0},
    {"H4LOOT_COKE_C_SCOPED", 0},
    {"H4LOOT_GOLD_I_SCOPED", -1},
    {"H4LOOT_GOLD_C_SCOPED", -1},
    {"H4LOOT_PAINT_SCOPED", -1}
}
    menu.add_feature("» Change to full Gold", "action", CAYO_SECONDARY.id, function()
    menu.notify("Secondary Target are full Gold (only)\n\nWhen using this method, the percentage and final payment is random!", "Heist Control", 3, 0xffef5a09)
    for i = 1, #SecondaryT_FGold do
        stat_set_int(SecondaryT_FGold[i][1], true, SecondaryT_FGold[i][2])
    end
end)
end

do
local SecondaryT_Remove = {
    {"H4LOOT_CASH_I", 0},
    {"H4LOOT_CASH_C", 0},
    {"H4LOOT_CASH_V", 0},
    {"H4LOOT_WEED_I", 0},
    {"H4LOOT_WEED_C", 0},
    {"H4LOOT_WEED_V", 0},
    {"H4LOOT_COKE_I", 0},
    {"H4LOOT_COKE_C", 0},
    {"H4LOOT_COKE_V", 0},
    {"H4LOOT_GOLD_I", 0},
    {"H4LOOT_GOLD_C", 0},
    {"H4LOOT_GOLD_V", 0},
    {"H4LOOT_PAINT", 0},
    {"H4LOOT_PAINT_V", 0},
    {"H4LOOT_CASH_I_SCOPED", 0},
    {"H4LOOT_CASH_C_SCOPED", 0},
    {"H4LOOT_WEED_I_SCOPED", 0},
    {"H4LOOT_WEED_C_SCOPED", 0},
    {"H4LOOT_COKE_I_SCOPED", 0},
    {"H4LOOT_COKE_C_SCOPED", 0},
    {"H4LOOT_GOLD_I_SCOPED", 0},
    {"H4LOOT_GOLD_C_SCOPED", 0},
    {"H4LOOT_PAINT_SCOPED", 0}
}
    menu.add_feature("» Remove All", "action", CAYO_SECONDARY.id, function()
        menu.notify("All Secondary targets has been removed", "Heist Control", 3, 0xffef5a09)
        for i = 1, #SecondaryT_Remove do
        stat_set_int(SecondaryT_Remove[i][1], true, SecondaryT_Remove[i][2])
    end
    end)
end

local CAYO_COMPOUND = menu.add_feature("» Compound Loot", "parent", CAYO_SECONDARY.id)

do
local Compound_LT_MIX = {
    {"H4LOOT_CASH_C", 2},
    {"H4LOOT_CASH_V", 474431},
    {"H4LOOT_WEED_C", 17},
    {"H4LOOT_WEED_V", 759090},
    {"H4LOOT_COKE_C", 132},
    {"H4LOOT_COKE_V", 948863},
    {"H4LOOT_GOLD_C", 104},
    {"H4LOOT_GOLD_V", 1265151},
    {"H4LOOT_PAINT", 127},
    {"H4LOOT_PAINT_V", 948863},
    {"H4LOOT_CASH_C_SCOPED", 2},
    {"H4LOOT_WEED_C_SCOPED", 17},
    {"H4LOOT_COKE_C_SCOPED", 132},
    {"H4LOOT_GOLD_C_SCOPED", 104},
    {"H4LOOT_PAINT_SCOPED", 127}
}
    menu.add_feature("» Change to Mixed Loot", "action", CAYO_COMPOUND.id, function()
    menu.notify("Compound Loot has been modified", "Heist Control", 3, 0xffef5a09)
        for i = 1, #Compound_LT_MIX do
        stat_set_int(Compound_LT_MIX[i][1], true, Compound_LT_MIX[i][2])
        end
    end)
end

do
local Compound_LT_CASH = {
    {"H4LOOT_CASH_C", -1},
    {"H4LOOT_CASH_V", 90000},
    {"H4LOOT_WEED_C", 0},
    {"H4LOOT_WEED_V", 0},
    {"H4LOOT_COKE_C", 0},
    {"H4LOOT_COKE_V", 0},
    {"H4LOOT_GOLD_C", 0},
    {"H4LOOT_GOLD_V", 0},
    {"H4LOOT_PAINT", 127},
    {"H4LOOT_PAINT_V", 190000},
    {"H4LOOT_CASH_C_SCOPED", -1},
    {"H4LOOT_WEED_C_SCOPED", 0},
    {"H4LOOT_COKE_C_SCOPED", 0},
    {"H4LOOT_GOLD_C_SCOPED", 0},
    {"H4LOOT_PAINT_SCOPED", 127}
}
    menu.add_feature("» Change to full Cash", "action", CAYO_COMPOUND.id, function()
    menu.notify("Compound Loot modified to Cash", "Heist Control", 3, 0xffef5a09)
        for i = 1, #Compound_LT_CASH do
        stat_set_int(Compound_LT_CASH[i][1], true, Compound_LT_CASH[i][2])
        end
    end)
end

do
local Compound_LT_WEED = {
    {"H4LOOT_CASH_C", 0},
    {"H4LOOT_CASH_V", 0},
    {"H4LOOT_WEED_C", -1},
    {"H4LOOT_WEED_V", 140000},
    {"H4LOOT_COKE_C", 0},
    {"H4LOOT_COKE_V", 0},
    {"H4LOOT_GOLD_C", 0},
    {"H4LOOT_PAINT", 127},
    {"H4LOOT_PAINT_V", 190000},
    {"H4LOOT_CASH_C_SCOPED", 0},
    {"H4LOOT_WEED_C_SCOPED", -1},
    {"H4LOOT_COKE_C_SCOPED", 0},
    {"H4LOOT_GOLD_C_SCOPED", 0},
    {"H4LOOT_PAINT_SCOPED", 127}
}
    menu.add_feature("» Change to full Weed", "action", CAYO_COMPOUND.id, function()
    menu.notify("Compound Loot modified to Weed", "Heist Control", 3, 0xffef5a09)
        for i = 1, #Compound_LT_WEED do
        stat_set_int(Compound_LT_WEED[i][1], true, Compound_LT_WEED[i][2])
        end
    end)
end

do
local Compound_LT_COKE = {
    {"H4LOOT_CASH_C", 0},
    {"H4LOOT_CASH_V", 0},
    {"H4LOOT_WEED_C", 0},
    {"H4LOOT_WEED_V", 0},
    {"H4LOOT_COKE_C", -1},
    {"H4LOOT_COKE_V", 210000},
    {"H4LOOT_GOLD_C", 0},
    {"H4LOOT_PAINT", 127},
    {"H4LOOT_PAINT_V", 190000},
    {"H4LOOT_CASH_C_SCOPED", 0},
    {"H4LOOT_WEED_C_SCOPED", 0},
    {"H4LOOT_COKE_C_SCOPED", -1},
    {"H4LOOT_GOLD_C_SCOPED", 0},
    {"H4LOOT_PAINT_SCOPED", 127}
}
    menu.add_feature("» Change to full Coke", "action", CAYO_COMPOUND.id, function()
    menu.notify("Compound Loot modified to Coke", "Heist Control", 3, 0xffef5a09)
        for i = 1, #Compound_LT_COKE do
        stat_set_int(Compound_LT_COKE[i][1], true, Compound_LT_COKE[i][2])
        end
    end)
end

do
local Compound_LT_GOLD = {
    {"H4LOOT_CASH_C", 0},
    {"H4LOOT_CASH_V", 0},
    {"H4LOOT_WEED_C", 0},
    {"H4LOOT_WEED_V", 0},
    {"H4LOOT_COKE_C", 0},
    {"H4LOOT_COKE_V", 0},
    {"H4LOOT_GOLD_C", -1},
    {"H4LOOT_GOLD_V", 320000},
    {"H4LOOT_PAINT", 127},
    {"H4LOOT_PAINT_V", 190000},
    {"H4LOOT_GOLD_C_SCOPED", -1},
    {"H4LOOT_CASH_C_SCOPED", 0},
    {"H4LOOT_WEED_C_SCOPED", 0},
    {"H4LOOT_COKE_C_SCOPED", 0},
    {"H4LOOT_PAINT_SCOPED", 127}
}
    menu.add_feature("» Change to full Gold", "action", CAYO_COMPOUND.id, function()
        menu.notify("Compound Loot modified to Gold", "Heist Control", 3, 0xffef5a09)
        for i = 1, #Compound_LT_GOLD do
        stat_set_int(Compound_LT_GOLD[i][1], true, Compound_LT_GOLD[i][2])
    end
    end)
end

do
local Compound_LT_PAINT = {
    {"H4LOOT_CASH_C", 0},
    {"H4LOOT_CASH_V", 0},
    {"H4LOOT_WEED_C", 0},
    {"H4LOOT_WEED_V", 0},
    {"H4LOOT_COKE_C", 0},
    {"H4LOOT_COKE_V", 0},
    {"H4LOOT_GOLD_C", 0},
    {"H4LOOT_GOLD_V", 0},
    {"H4LOOT_GOLD_C_SCOPED", 0},
    {"H4LOOT_CASH_C_SCOPED", 0},
    {"H4LOOT_WEED_C_SCOPED", 0},
    {"H4LOOT_COKE_C_SCOPED", 0},
    {"H4LOOT_PAINT", 127},
    {"H4LOOT_PAINT_V", 190000},
    {"H4LOOT_PAINT_SCOPED", 127}
}
    menu.add_feature("» Change to full Paint", "action", CAYO_COMPOUND.id, function()
        menu.notify("Compound Loot modified to Paint", "Heist Control", 3, 0xffef5a09)
        for i = 1, #Compound_LT_PAINT do
        stat_set_int(Compound_LT_PAINT[i][1], true, Compound_LT_PAINT[i][2])
    end
    end)
end

do
local Remove_Compound_Paint = {
    {"H4LOOT_PAINT", 0},
    {"H4LOOT_PAINT_V", 0},
    {"H4LOOT_PAINT_SCOPED", 0}
}
    menu.add_feature("» Remove Paint (only)", "action", CAYO_COMPOUND.id, function()
    menu.notify("Paints has been removed", "Heist Control", 3, 0xffef5a09)
    for i = 1, #Remove_Compound_Paint do
    stat_set_int(Remove_Compound_Paint[i][1], true, Remove_Compound_Paint[i][2])
    end
    end)
end

do
local Remove_ALL_Compound_LT = {
    {"H4LOOT_CASH_C", 0},
    {"H4LOOT_WEED_C", 0},
    {"H4LOOT_COKE_C", 0},
    {"H4LOOT_GOLD_C", 0},
    {"H4LOOT_GOLD_C_SCOPED", 0},
    {"H4LOOT_CASH_C_SCOPED", 0},
    {"H4LOOT_WEED_C_SCOPED", 0},
    {"H4LOOT_COKE_C_SCOPED", 0},
    {"H4LOOT_PAINT", 0},
    {"H4LOOT_PAINT_SCOPED", 0}
}
    menu.add_feature("» Remove all", "action", CAYO_COMPOUND.id, function()
        menu.notify("All Compound loots has been removed", "Heist Control", 3, 0xffef5a09)
        for i = 1, #Remove_ALL_Compound_LT do
        stat_set_int(Remove_ALL_Compound_LT[i][1], true, Remove_ALL_Compound_LT[i][2])
    end
    end)
end

do
local Weapon_Aggressor = {
    {"H4CNF_WEAPONS", 1}
}
    menu.add_feature("» Aggressor Loadout", "action", CAYO_WEAPONS.id, function()
    menu.notify("Aggressor Loadout\n\nAssault SG + Machine Pistol\nMachete + Grenade", "Heist Control", 3, 0xffef5a09)
    for i = 1, #Weapon_Aggressor do
         stat_set_int(Weapon_Aggressor[i][1], true, Weapon_Aggressor[i][2])
        end
    end)
end

do
local Weapon_Conspirator = {
    {"H4CNF_WEAPONS", 2}
}
    menu.add_feature("» Conspirator Loadout", "action", CAYO_WEAPONS.id, function()
    menu.notify("Conspirator Loadout\n\nMilitary Rifle + AP\nKnuckles + Stickies", "Heist Control", 3, 0xffef5a09)
    for i = 1, #Weapon_Conspirator do
        stat_set_int(Weapon_Conspirator[i][1], true, Weapon_Conspirator[i][2])
        end
    end)
end

do
local Weapon_Crackshot = {
    {"H4CNF_WEAPONS", 3}
}
    menu.add_feature("» Crackshot Loadout", "action", CAYO_WEAPONS.id, function()
    menu.notify("Crackshot Loadout\n\nSniper + AP\nKnife + Molotov", "Heist Control", 3, 0xffef5a09)
    for i = 1, #Weapon_Crackshot do
        stat_set_int(Weapon_Crackshot[i][1], true, Weapon_Crackshot[i][2])
        end
    end)
end

do
local Weapon_Saboteur = {
    {"H4CNF_WEAPONS", 4}
}
    menu.add_feature("» Saboteur Loadout", "action", CAYO_WEAPONS.id, function()
    menu.notify("Saboteur Loadout\n\nSMG Mk2 + SNS Pistol\nKnife + Pipe Bomb", "Heist Control", 3, 0xffef5a09)
    for i = 1, #Weapon_Saboteur do
        stat_set_int(Weapon_Saboteur[i][1], true, Weapon_Saboteur[i][2])
        end
    end)
end

do
local Weapon_Marksman = {
    {"H4CNF_WEAPONS", 5}
}
    menu.add_feature("» Marksman Loadout", "action", CAYO_WEAPONS.id, function()
    menu.notify("Marksman Loadout\n\n- AK-47 + Pistol .50\n- Machete + Pipe Bomb", "Heist Control", 3, 0xffef5a09)
    for i = 1, #Weapon_Marksman do
        stat_set_int(Weapon_Marksman[i][1], true, Weapon_Marksman[i][2])
        end
    end)
end

do
local CP_Item_SpawnPlace_AIR = {
    {"H4CNF_GRAPPEL", 2022},
    {"H4CNF_UNIFORM", 12},
    {"H4CNF_BOLTCUT", 4161},
    {"H4CNF_TROJAN", 1}
}
    menu.add_feature("» Set to Equipments spawn next to Airport", "action", CAYO_EQUIPM.id, function()
    menu.notify("Equipments will spawn next to Airport:\n\n- Grappling Hook\n- Guard Clothing\n- Bolt Cutters", "Heist Control", 3, 0xffef5a09)
    for i = 1, #CP_Item_SpawnPlace_AIR do
        stat_set_int(CP_Item_SpawnPlace_AIR[i][1], true, CP_Item_SpawnPlace_AIR[i][2])
        end
    end)
end

do
local CP_Item_SpawnPlace_DKS = {
    {"H4CNF_GRAPPEL", 3671},
    {"H4CNF_UNIFORM", 5256},
    {"H4CNF_BOLTCUT", 4424},
    {"H4CNF_TROJAN", 2}
}
    menu.add_feature("» Set to Equipments spawn next to Docks", "action", CAYO_EQUIPM.id, function()
    menu.notify("Equipments will spawn next to Docks:\n\n- Grappling Hook\n- Guard Clothing\n- Bolt Cutters", "Heist Control", 3, 0xffef5a09)
    for i = 1, #CP_Item_SpawnPlace_DKS do
        stat_set_int(CP_Item_SpawnPlace_DKS[i][1], true, CP_Item_SpawnPlace_DKS[i][2])
        end
    end)
end

do
local CP_Item_SpawnPlace_CP = {
    {"H4CNF_GRAPPEL", 85324},
    {"H4CNF_UNIFORM", 61034},
    {"H4CNF_BOLTCUT", 4612},
    {"H4CNF_TROJAN", 5}
}
    menu.add_feature("» Set to Equipments spawn next to Compound", "action", CAYO_EQUIPM.id, function()
    menu.notify("Equipments will spawn next to Compound:\n\n- Grappling Hook\n- Guard Clothing\n- Bolt Cutters", "Heist Control", 3, 0xffef5a09)
    for i = 1, #CP_Item_SpawnPlace_CP do
    stat_set_int(CP_Item_SpawnPlace_CP[i][1], true, CP_Item_SpawnPlace_CP[i][2])
    end
end)
end

do
local CP_TRUCK_SPAWN_mov1 = {
    {"H4CNF_TROJAN", 1}
}
    menu.add_feature("» Modify Supply Truck spawn to Airport", "action", CAYO_TRUCK.id, function()
    menu.notify("Supply Truck will now spawn next to Airport", "Heist Control", 3, 0xffef5a09)
    for i = 1, #CP_TRUCK_SPAWN_mov1 do
    stat_set_int(CP_TRUCK_SPAWN_mov1[i][1], true, CP_TRUCK_SPAWN_mov1[i][2])
    end
    end)
end

do
local CP_TRUCK_SPAWN_mov2 = {
    {"H4CNF_TROJAN", 2}
}
    menu.add_feature("» Modify Supply Truck spawn to North Dock", "action", CAYO_TRUCK.id, function()
    menu.notify("Supply Truck will now spawn next to North Dock", "Heist Control", 3, 0xffef5a09)
    for i = 1, #CP_TRUCK_SPAWN_mov2 do
     stat_set_int(CP_TRUCK_SPAWN_mov2[i][1], true, CP_TRUCK_SPAWN_mov2[i][2])
    end
    end)
end

do
local CP_TRUCK_SPAWN_mov3 = {
    {"H4CNF_TROJAN", 3}
}
    menu.add_feature("» Modify Supply Truck spawn to Main Dock (East)", "action", CAYO_TRUCK.id, function()
    menu.notify("Supply Truck will now spawn next to Main Dock - East", "Heist Control", 3, 0xffef5a09)
    for i = 1, #CP_TRUCK_SPAWN_mov3 do
    stat_set_int(CP_TRUCK_SPAWN_mov3[i][1], true, CP_TRUCK_SPAWN_mov3[i][2])
    end
    end)
end

do
local CP_TRUCK_SPAWN_mov4 = {
    {"H4CNF_TROJAN", 4}
}
    menu.add_feature("» Modify Supply Truck spawn to Main Dock (West)", "action", CAYO_TRUCK.id, function()
    menu.notify("Supply Truck will now spawn next to Main Dock (West)", "Heist Control", 3, 0xffef5a09)
    for i = 1, #CP_TRUCK_SPAWN_mov4 do
    stat_set_int(CP_TRUCK_SPAWN_mov4[i][1], true, CP_TRUCK_SPAWN_mov4[i][2])
    end
    end)
end

do
local CP_TRUCK_SPAWN_mov5 = {
    {"H4CNF_TROJAN", 5}
}
    menu.add_feature("» Modify Supply Truck spawn next to Compound", "action", CAYO_TRUCK.id, function()
    menu.notify("Supply Truck will now spawn next to Compound", "Heist Control", 3, 0xffef5a09)
    for i = 1, #CP_TRUCK_SPAWN_mov5 do
    stat_set_int(CP_TRUCK_SPAWN_mov5[i][1], true, CP_TRUCK_SPAWN_mov5[i][2])
    end
    end)
end

do
local CAYO_NORMAL = {
    {"H4_PROGRESS", 126823}
}
    menu.add_feature("» Change Difficulty to Normal", "action", CAYO_DFFCTY.id, function()
    menu.notify("Difficulty has been changed to Normal", "Difficulty Editor", 3, 0xffef5a09)
        for i = 1, #CAYO_NORMAL do
            stat_set_int(CAYO_NORMAL[i][1], true, CAYO_NORMAL[i][2])
        end
    end)
end

do
local CAYO_Hard = {
    {"H4_PROGRESS", 131055}
}
    menu.add_feature("» Change Difficulty to Hard", "action", CAYO_DFFCTY.id, function()
    menu.notify("Difficulty has been changed to Hard", "Difficulty Editor", 3, 0xffef5a09)
        for i = 1, #CAYO_Hard do
            stat_set_int(CAYO_Hard[i][1], true, CAYO_Hard[i][2])
        end
    end)
end



do
menu.add_feature("» Unlock Cayo Perico Awards", "action", MORE_OPTIONS.id, function()

local CP_AWRD_BL = {
    {"AWD_INTELGATHER", true},
    {"AWD_COMPOUNDINFILT", true},
    {"AWD_LOOT_FINDER", true},
    {"AWD_MAX_DISRUPT", true},
    {"AWD_THE_ISLAND_HEIST", true},
    {"AWD_GOING_ALONE", true},
    {"AWD_TEAM_WORK", true},
    {"AWD_MIXING_UP", true},
    {"AWD_PRO_THIEF", true},
    {"AWD_CAT_BURGLAR", true},
    {"AWD_ONE_OF_THEM", true},
    {"AWD_GOLDEN_GUN", true},
    {"AWD_ELITE_THIEF", true},
    {"AWD_PROFESSIONAL", true},
    {"AWD_HELPING_OUT", true},
    {"AWD_COURIER", true},
    {"AWD_PARTY_VIBES", true},
    {"AWD_HELPING_HAND", true},
    {"AWD_ELEVENELEVEN", true},
    {"COMPLETE_H4_F_USING_VETIR", true},
    {"COMPLETE_H4_F_USING_LONGFIN", true},
    {"COMPLETE_H4_F_USING_ANNIH", true},
    {"COMPLETE_H4_F_USING_ALKONOS", true},
    {"COMPLETE_H4_F_USING_PATROLB", true}
}
local CP_AWRD_IT = {
    {"AWD_LOSTANDFOUND", 500000},
    {"AWD_SUNSET", 1800000},
    {"AWD_TREASURE_HUNTER", 1000000},
    {"AWD_WRECK_DIVING", 1000000},
    {"AWD_KEINEMUSIK", 1800000},
    {"AWD_PALMS_TRAX", 1800000},
    {"AWD_MOODYMANN", 1800000},
    {"AWD_FILL_YOUR_BAGS", 1000000000},
    {"AWD_WELL_PREPARED", 80},
    {"H4_H4_DJ_MISSIONS", 65535}
}
    menu.notify("Cayo Perico Awards Unlocked!", "Heist Control", 3, 0xffef5a09)
    for i = 1, #CP_AWRD_IT do
    stat_set_int(CP_AWRD_IT[i][1], true, CP_AWRD_IT[i][2])
    for i = 1, #CP_AWRD_BL do
    stat_set_bool(CP_AWRD_BL[i][1], true, CP_AWRD_BL[i][2])
    end
end
end)
end

do

local COMPLETE_CP_MISSIONS = {
    {"H4_MISSIONS", 65535},
    {"H4CNF_APPROACH", -1},
    {"H4CNF_BS_ENTR", 63},
    {"H4CNF_BS_GEN", 63},
    {"H4CNF_WEP_DISRP", 3},
    {"H4CNF_ARM_DISRP", 3},
    {"H4CNF_HEL_DISRP", 3}
}
    menu.add_feature("» Complete all Missions only", "action", MORE_OPTIONS.id, function()
    menu.notify("All missions are completed!", "Heist Control", 3, 0xffef5a09)
        for i = 1, #COMPLETE_CP_MISSIONS do
        stat_set_int(COMPLETE_CP_MISSIONS[i][1], true, COMPLETE_CP_MISSIONS[i][2])
        end
        end)
end

do
local WATCH_LONG_CUT = {
    {"H4_PLAYTHROUGH_STATUS", 0}
}
    menu.add_feature("» Force the longest final Cutscene", "action", MORE_OPTIONS.id, function()
    menu.notify("Keep in mind that you must use this option before starting the Heist\n\nDone!", "Heist Control", 3, 0xffef5a09)
        for i = 1, #WATCH_LONG_CUT do
        stat_set_int(WATCH_LONG_CUT[i][1], true, WATCH_LONG_CUT[i][2])
    end
    end)
end

do
local CP_RST = {
    {"H4_MISSIONS", 0},
    {"H4_PROGRESS", 0},
    {"H4CNF_APPROACH", 0},
    {"H4CNF_BS_ENTR", 0},
    {"H4CNF_BS_GEN", 0},
    {"H4_PLAYTHROUGH_STATUS", 0}
}
    menu.add_feature("» Set Heist to Default [Reset]", "action", MORE_OPTIONS.id, function()
    menu.notify("Heist has been restored", "Heist Control", 3, 0xffef5a09)
        for i = 1, #CP_RST do
        stat_set_int(CP_RST[i][1], true, CP_RST[i][2])
    end
    end)
end

do
local CLD_RMV = {
    {"H4_COOLDOWN", -1},
    {"H4_COOLDOWN_HARD", -1},
    {"MPPLY_H4_COOLDOWN", -1}
}
    menu.add_feature("» Remove Repeat Cooldown", "action", MORE_OPTIONS.id, function()
    menu.notify("Alert: This is NOT a bypass for the Server-Side Cooldown (Payout)\n\nPlease wait up to 15 minutes to avoid not receiving the money in the end", "Heist Control", 5, 0x641400E6)
        for i = 1, #CLD_RMV do
        stat_set_int(CLD_RMV[i][1], true, CLD_RMV[i][2])
        stat_set_int(CLD_RMV[i][1], false, CLD_RMV[i][2])
    end
    end)
end
---------------------- CASINO HEIST
do
local CH_RANDOM_PRST = {
    {"H3_LAST_APPROACH", 4},
    {"H3OPT_POI", 1023},
    {"H3OPT_ACCESSPOINTS", 2047},
    {"H3OPT_BITSET1", -1},
    {"H3OPT_DISRUPTSHIP", 3},
    {"H3OPT_BODYARMORLVL", 3},
    {"H3OPT_KEYLEVELS", 2},
    {"H3OPT_BITSET0", -1}
}
local CH_RANDOM_METHOD = {
    {"H3OPT_TARGET", 0,3,0,3},
    {"H3_HARD_APPROACH", 1,3,1,3},
    {"H3OPT_CREWWEAP", 1,5,1,5},
    {"H3OPT_CREWDRIVER", 1,5,1,5},
    {"H3OPT_CREWHACKER", 1,5,1,5},
    {"H3OPT_WEAPS", 0,1,0,1},
    {"H3OPT_VEHS", 0,3,0,3},
    {"H3OPT_MASKS", 1,12,1,12},
    {"H3OPT_APPROACH", 1,3,1,3}
}
    menu.add_feature("» Load Random Approach", "action", CASINO_PRESETS.id, function()
    menu.notify("Make sure you have paid the heist on the planning screen before using this option\n\nRandom Preset Loaded!", "Heist Control", 3, 0x6414F0FF)
        for i = 1, #CH_RANDOM_PRST do
        stat_set_int(CH_RANDOM_PRST[i][1], true, CH_RANDOM_PRST[i][2])
        for i = 2, #CH_RANDOM_METHOD do
        stat_set_int(CH_RANDOM_METHOD[i][1], true, math.random(CH_RANDOM_METHOD[i][4], CH_RANDOM_METHOD[i][5]))
    end
end
end)
end

do
local CAH_SILENT_SNEAKY_HARD = {
    {"H3_LAST_APPROACH", 4},
    {"H3OPT_APPROACH", 1},
    {"H3_HARD_APPROACH", 1},
    {"H3OPT_TARGET", 3},
    {"H3OPT_POI", 1023},
    {"H3OPT_ACCESSPOINTS", 2047},
    {"H3OPT_BITSET1", -1},
    {"H3OPT_CREWWEAP", 2},
    {"H3OPT_CREWDRIVER", 5},
    {"H3OPT_CREWHACKER", 4},
    {"H3OPT_WEAPS", 0},
    {"H3OPT_VEHS", 3},
    {"H3OPT_DISRUPTSHIP", 3},
    {"H3OPT_BODYARMORLVL", 3},
    {"H3OPT_KEYLEVELS", 2},
    {"H3OPT_MASKS", 2},
    {"H3OPT_BITSET0", -1}
}
    menu.add_feature("» Silent & Sneaky Approach [Hard]", "action", CASINO_PRESETS.id, function()
    menu.notify("Silent & Sneaky Approach Hard Difficulty\n\nTarget: Diamond\nVehicle: Everon\nDriver Crew: Chester McCoy\n\nWeapon: Rifle + Shotgun\nGunman: Gustavo Mota\n\nHacker: Avi Schwartzman\nUndetected: 3 minutes 30s\nDetected: 2 minutes 26s\n\nMask: Hunter Set", "Heist Control", 6, 0x64F0AA14)
        for i = 1, #CAH_SILENT_SNEAKY_HARD do
        stat_set_int(CAH_SILENT_SNEAKY_HARD[i][1], true, CAH_SILENT_SNEAKY_HARD[i][2])
        end
    end)
end

do
local CAH_SILENT_SNEAKY = {
    {"H3_LAST_APPROACH", 4},
    {"H3OPT_APPROACH", 1},
    {"H3_HARD_APPROACH", 0},
    {"H3OPT_TARGET", 3},
    {"H3OPT_POI", 1023},
    {"H3OPT_ACCESSPOINTS", 2047},
    {"H3OPT_BITSET1", -1},
    {"H3OPT_CREWWEAP", 2},
    {"H3OPT_CREWDRIVER", 5},
    {"H3OPT_CREWHACKER", 4},
    {"H3OPT_WEAPS", 0},
    {"H3OPT_VEHS", 3},
    {"H3OPT_DISRUPTSHIP", 3},
    {"H3OPT_BODYARMORLVL", 3},
    {"H3OPT_KEYLEVELS", 2},
    {"H3OPT_MASKS", 2},
    {"H3OPT_BITSET0", -1}
}
    menu.add_feature("» Silent & Sneaky Approach [Normal]", "action", CASINO_PRESETS.id, function()
    menu.notify("Silent & Sneaky Approach Normal Difficulty\n\nTarget: Diamond\nVehicle: Everon\nDriver Crew: Chester McCoy\n\nWeapon: Rifle + Shotgun\nGunman: Gustavo Mota\n\nHacker: Avi Schwartzman\nUndetected: 3 minutes 30s\nDetected: 2 minutes 26s\n\nMask: Hunter Set", "Heist Control", 6, 0x64F0AA14)
    for i = 1, #CAH_SILENT_SNEAKY do
        stat_set_int(CAH_SILENT_SNEAKY[i][1], true, CAH_SILENT_SNEAKY[i][2])
    end
end)
end

do
local CAH_BIG_CON_HARD = {
    {"H3_LAST_APPROACH", 4},
    {"H3OPT_APPROACH", 2},
    {"H3_HARD_APPROACH", 2},
    {"H3OPT_TARGET", 3},
    {"H3OPT_POI", 1023},
    {"H3OPT_ACCESSPOINTS", 2047},
    {"H3OPT_BITSET1", -1},
    {"H3OPT_CREWWEAP", 2},
    {"H3OPT_CREWDRIVER", 5},
    {"H3OPT_CREWHACKER", 4},
    {"H3OPT_WEAPS", 0},
    {"H3OPT_VEHS", 3},
    {"H3OPT_DISRUPTSHIP", 3},
    {"H3OPT_BODYARMORLVL", 3},
    {"H3OPT_KEYLEVELS", 2},
    {"H3OPT_MASKS", 2},
    {"H3OPT_BITSET0", -1}
}
    menu.add_feature("» BigCon Approach [Hard]", "action", CASINO_PRESETS.id, function()
    menu.notify("BigCon Approach Hard Difficulty\n\nTarget: Diamond\nVehicle: Everon\nDriver Crew: Chester McCoy\n\nWeapon: Rifle + Pistol\nGunman: Gustavo Mota\n\nHacker: Avi Schwartzman\nUndetected: 3 minutes 30s\nDetected: 2 minutes 26s\n\nMask: Hunter Set", "Heist Control", 6, 0x64F0AA14)
    for i = 1, #CAH_BIG_CON_HARD do
        stat_set_int(CAH_BIG_CON_HARD[i][1], true, CAH_BIG_CON_HARD[i][2])
    end
end)
end

do
local CAH_BIG_CON = {
    {"H3_LAST_APPROACH", 4},
    {"H3OPT_APPROACH", 2},
    {"H3_HARD_APPROACH", 0},
    {"H3OPT_TARGET", 3},
    {"H3OPT_POI", 1023},
    {"H3OPT_ACCESSPOINTS", 2047},
    {"H3OPT_BITSET1", -1},
    {"H3OPT_CREWWEAP", 2},
    {"H3OPT_CREWDRIVER", 5},
    {"H3OPT_CREWHACKER", 4},
    {"H3OPT_WEAPS", 0},
    {"H3OPT_VEHS", 3},
    {"H3OPT_DISRUPTSHIP", 3},
    {"H3OPT_BODYARMORLVL", 3},
    {"H3OPT_KEYLEVELS", 2},
    {"H3OPT_MASKS", 2},
    {"H3OPT_BITSET0", -1}
}
    menu.add_feature("» BigCon Approach [Normal]", "action", CASINO_PRESETS.id, function()
    menu.notify("BigCon Approach Normal Difficulty\n\nTarget: Diamond\nVehicle: Everon\nDriver Crew: Chester McCoy\n\nWeapon: Rifle + Pistol\nGunman: Gustavo Mota\n\nHacker: Avi Schwartzman\nUndetected: 3 minutes 30s\nDetected: 2 minutes 26s\n\nMask: Hunter Set", "Heist Control", 6, 0x64F0AA14)
        for i = 1, #CAH_BIG_CON do
            stat_set_int(CAH_BIG_CON[i][1], true, CAH_BIG_CON[i][2])
        end
    end)
end

do
local CAH_AGGRESSIVE_HARD = {
    {"H3_LAST_APPROACH", 4},
    {"H3OPT_APPROACH", 3},
    {"H3_HARD_APPROACH", 3},
    {"H3OPT_TARGET", 3},
    {"H3OPT_POI", 1023},
    {"H3OPT_ACCESSPOINTS", 2047},
    {"H3OPT_BITSET1", -1},
    {"H3OPT_CREWWEAP", 2},
    {"H3OPT_CREWDRIVER", 5},
    {"H3OPT_CREWHACKER", 4},
    {"H3OPT_WEAPS", 1},
    {"H3OPT_VEHS", 3},
    {"H3OPT_DISRUPTSHIP", 3},
    {"H3OPT_BODYARMORLVL", 3},
    {"H3OPT_KEYLEVELS", 2},
    {"H3OPT_MASKS", 2},
    {"H3OPT_BITSET0", -1}
}
    menu.add_feature("» Aggressive Approach [Hard]", "action", CASINO_PRESETS.id, function()
    menu.notify("Aggressive Approach Hard Difficulty\n\nTarget: Diamond\nVehicle: Everon\nDriver Crew: Chester McCoy\n\nWeapon: Submachine Gun + Shotgun\nGunman: Gustavo Mota\n\nHacker: Avi Schwartzman\nUndetected: 3 minutes 30s\nDetected: 2 minutes 26s\n\nMask: Hunter Set", "Heist Control", 6, 0x64F0AA14)
        for i = 1, #CAH_AGGRESSIVE_HARD do
            stat_set_int(CAH_AGGRESSIVE_HARD[i][1], true, CAH_AGGRESSIVE_HARD[i][2])
        end
    end)
end

do
local CH_UNLCK_PT = {
    {"H3OPT_POI", 1023},
    {"H3OPT_ACCESSPOINTS", 2047}
}
    menu.add_feature("» Unlock all Points of Interests & Access Points", "action", CASINO_BOARD1.id, function()
    menu.notify("Unlocked Successfully", "Heist Control", 3, 0x64FF7800)
        for i = 1, #CH_UNLCK_PT do
        stat_set_int(CH_UNLCK_PT[i][1], true, CH_UNLCK_PT[i][2])
        end
    end)
end

do
local CAH_AGGRESSIVE = {
    {"H3_LAST_APPROACH", 4},
    {"H3OPT_APPROACH", 3},
    {"H3_HARD_APPROACH", 0},
    {"H3OPT_TARGET", 3},
    {"H3OPT_POI", 1023},
    {"H3OPT_ACCESSPOINTS", 2047},
    {"H3OPT_BITSET1", -1},
    {"H3OPT_CREWWEAP", 2},
    {"H3OPT_CREWDRIVER", 5},
    {"H3OPT_CREWHACKER", 4},
    {"H3OPT_WEAPS", 1},
    {"H3OPT_VEHS", 3},
    {"H3OPT_DISRUPTSHIP", 3},
    {"H3OPT_BODYARMORLVL", 3},
    {"H3OPT_KEYLEVELS", 2},
    {"H3OPT_MASKS", 2},
    {"H3OPT_BITSET0", -1}
}
    menu.add_feature("» Aggressive Approach [Normal]", "action", CASINO_PRESETS.id, function()
    menu.notify("Aggressive Approach Normal Difficulty\n\nTarget: Diamond\nVehicle: Everon\nDriver Crew: Chester McCoy\n\nWeapon: Submachine Gun + Shotgun\nGunman: Gustavo Mota\n\nHacker: Avi Schwartzman\nUndetected: 3 minutes 30s\nDetected: 2 minutes 26s\n\nMask: Hunter Set", "Heist Control", 6, 0x64F0AA14)
        for i = 1, #CAH_AGGRESSIVE do
            stat_set_int(CAH_AGGRESSIVE[i][1], true, CAH_AGGRESSIVE[i][2])
        end
    end)
end

do
local CH_Target_Diamond = {
    {"H3OPT_TARGET", 3}
}
    menu.add_feature("» Diamond", "action", CASINO_TARGET.id, function()
    menu.notify("Target changed to Diamond", "Target Editor", 3, 0x64F0AA14)
        for i = 1, #CH_Target_Diamond do
            stat_set_int(CH_Target_Diamond[i][1], true, CH_Target_Diamond[i][2])
        end
    end)
end

do
local CH_Target_Gold = {
    {"H3OPT_TARGET", 1}
}
    menu.add_feature("» Gold", "action", CASINO_TARGET.id, function()
    menu.notify("Target changed to Gold", "Target Editor", 3, 0x64F0AA14)
        for i = 1, #CH_Target_Gold do
            stat_set_int(CH_Target_Gold[i][1], true, CH_Target_Gold[i][2])
        end
    end)
end

do
local CH_Target_Artwork = {
    {"H3OPT_TARGET", 2}
}
    menu.add_feature("» Artwork", "action", CASINO_TARGET.id, function()
    menu.notify("Target changed to Artwork", "Target Editor", 3, 0x64F0AA14)
        for i = 1, #CH_Target_Artwork do
            stat_set_int(CH_Target_Artwork[i][1], true, CH_Target_Artwork[i][2])
        end
    end)
end

do
local CH_Target_Cash = {
    {"H3OPT_TARGET", 0}
}
    menu.add_feature("» Cash", "action", CASINO_TARGET.id, function()
    menu.notify("Target changed to Cash", "Target Editor", 3, 0x64F0AA14)
        for i = 1, #CH_Target_Cash do
            stat_set_int(CH_Target_Cash[i][1], true, CH_Target_Cash[i][2])
        end
    end)
end
---- CASINO ADVANCED
do
    local SET_Diamond = {
        {"H3OPT_TARGET", 3}
    }
    local SET_NORMAL = {
    {"H3_LAST_APPROACH", 0},
    {"H3_HARD_APPROACH", 0}
}
    menu.add_feature("» Modify Preset to max payout [$3.4mi to everyone]", "toggle", CAH_ADVCED.id, function(hj)
    menu.notify("- Make sure you have chosen the preset before performing this function\n\n- Do not try to modify difficulty\n\n- Do not attempt to modify the target\n\n- Use this option outside the arcade before starting the Heist", "", 11, 0x64F0AA14)
    menu.notify("Instructions\n\n- ALWAYS choose the cheapest buyer\n\n- Use the Remove IA Crew Payout option before you escape through the tunnel", "", 11, 0x64F0AA14)
    while hj.on do
    script.set_global_i(1703513 + 2326, 41)
    script.set_global_i(1703513 + 2326 + 1, 97)
    script.set_global_i(1703513 + 2326 + 2, 97)
    script.set_global_i(1703513 + 2326 + 3, 97)
    script.set_global_i(262145 + 28306, 1410065408)
    for i = 1, #SET_Diamond do
    stat_set_int(SET_Diamond[i][1], true, SET_Diamond[i][2])
    end
    for i = 1, #SET_NORMAL do
    stat_set_int(SET_NORMAL[i][1], true, SET_NORMAL[i][2])
    end
    if not hj.on then return end
    system.wait(0)
    end
end)
end

    menu.add_feature("» Increase potential gains", "toggle", CAH_ADVCED.id, function(gains)
    menu.notify("This option must be enabled before starting Heist. (Outside the arcade/garage)\n\nYou do not need to activate this option if you use the option to change the preset payment", "", 5, 0x6414F0FF)
    while gains.on do
    script.set_global_i(262145 + 28303, 1410065408) --Cash
    script.set_global_i(262145 + 28304, 1410065408) --Art
    script.set_global_i(262145 + 28305, 1410065408) --Gold
    script.set_global_i(262145 + 28306, 1410065408) --Diamond
    if not gains.on then return end
    system.wait(0)
    end
end)

local CAH_PLAYER_CUT = menu.add_feature("» Players Cut", "parent", CAH_ADVCED.id, function()
    menu.notify("Important\n\n- Adding a high percentage can affect your payment negatively", "", 5, 0x6414F0FF)
end)

do
local CAH_PLAYER_HOST = menu.add_feature("» Your Cut", "parent", CAH_PLAYER_CUT.id)
menu.add_feature("0 %", "action", CAH_PLAYER_HOST.id, function()
    script.set_global_i(1703513 + 2326, 0)
end)

menu.add_feature("35 %", "action", CAH_PLAYER_HOST.id, function()
    script.set_global_i(1703513 + 2326, 35)
end)

menu.add_feature("100 %", "action", CAH_PLAYER_HOST.id, function()
     script.set_global_i(1703513 + 2326, 100)
end)

menu.add_feature("125 %", "action", CAH_PLAYER_HOST.id, function()
    script.set_global_i(1703513 + 2326, 125)
end)

menu.add_feature("150 %", "action", CAH_PLAYER_HOST.id, function()
    script.set_global_i(1703513 + 2326, 150)
end)

local CAH_PLAYER_TWO = menu.add_feature("» Player 2", "parent", CAH_PLAYER_CUT.id)
menu.add_feature("0 %", "action", CAH_PLAYER_TWO.id, function()
    script.set_global_i(1703513 + 2326 +1, 0)
end)

menu.add_feature("85 %", "action", CAH_PLAYER_TWO.id, function()
    script.set_global_i(1703513 + 2326 +1, 85)
end)

menu.add_feature("100 %", "action", CAH_PLAYER_TWO.id, function()
    script.set_global_i(1703513 + 2326 +1, 100)
end)

menu.add_feature("125 %", "action", CAH_PLAYER_TWO.id, function()
    script.set_global_i(1703513 + 2326 +1, 125)
end)

menu.add_feature("150 %", "action", CAH_PLAYER_TWO.id, function()
    script.set_global_i(1703513 + 2326 +1, 150)
end)

local CAH_PLAYER_THREE = menu.add_feature("» Player 3", "parent", CAH_PLAYER_CUT.id)
menu.add_feature("0 %", "action", CAH_PLAYER_THREE.id, function()
    script.set_global_i(1703513 + 2326 +2, 0)
end)

menu.add_feature("85 %", "action", CAH_PLAYER_THREE.id, function()
    script.set_global_i(1703513 + 2326 +2, 85)
end)

menu.add_feature("100 %", "action", CAH_PLAYER_THREE.id, function()
    script.set_global_i(1703513 + 2326 +2, 100)
end)

menu.add_feature("125 %", "action", CAH_PLAYER_THREE.id, function()
    script.set_global_i(1703513 + 2326 +2, 125)
end)

menu.add_feature("150 %", "action", CAH_PLAYER_THREE.id, function(g)
    script.set_global_i(1703513 + 2326 +2, 150)
end)

local CAH_PLAYER_FOUR = menu.add_feature("» Player 4", "parent", CAH_PLAYER_CUT.id)
menu.add_feature("0 %", "action", CAH_PLAYER_FOUR.id, function()
    script.set_global_i(1703513 + 2326 +3, 0)
end)

menu.add_feature("85 %", "action", CAH_PLAYER_FOUR.id, function()
    script.set_global_i(1703513 + 2326 +3, 85)
end)

menu.add_feature("100 %", "action", CAH_PLAYER_FOUR.id, function()
    script.set_global_i(1703513 + 2326 +3, 100)
end)

 menu.add_feature("125 %", "action", CAH_PLAYER_FOUR.id, function()
    script.set_global_i(1703513 + 2326 +3, 125)
 end)

 menu.add_feature("150 %", "action", CAH_PLAYER_FOUR.id, function()
    script.set_global_i(1703513 + 2326 +3, 150)
 end)

menu.add_feature("» Set 100% to everyone", "action", CAH_PLAYER_CUT.id, function()
    script.set_global_i(1703513 + 2326, 100)
    script.set_global_i(1703513 + 2326 +1, 100)
    script.set_global_i(1703513 + 2326 +2, 100)
    script.set_global_i(1703513 + 2326 +3, 100)
end)
end

do
local CH_REM_CREW = {
    {"H3OPT_CREWWEAP", 6},
    {"H3OPT_CREWDRIVER", 6},
    {"H3OPT_CREWHACKER", 6}
}
menu.add_feature("» Remove IA Crew Payout", "action", CAH_ADVCED.id, function()
    menu.notify("Use after stealing the target, before leaving the tunnel\n\nCrew removed", "Heist Control", 4, 0x64FF7800)
    for i = 1, #CH_REM_CREW do
    stat_set_int(CH_REM_CREW[i][1], true, CH_REM_CREW[i][2])
    end
end)
end

--- CASINO DIFFICULTY
do
local CH_Diff_Hard1 = {
    {"H3_LAST_APPROACH", 0},
    {"H3OPT_APPROACH", 1},
    {"H3_HARD_APPROACH", 1}
}
    menu.add_feature("» Silent and Sneaky Approach (Hard)", "action", BOARD1_APPROACH.id, function()
    menu.notify("Approach changed to Silent and Sneaky (Hard)", "Heist Control", 3, 0x64FF7800)
        for i = 1, #CH_Diff_Hard1 do
        stat_set_int(CH_Diff_Hard1[i][1], true, CH_Diff_Hard1[i][2])
    end
end)
end

do
local CH_Diff_Normal1 = {
    {"H3_LAST_APPROACH", 0},
    {"H3OPT_APPROACH", 1},
    {"H3_HARD_APPROACH", 0}
}
    menu.add_feature("» Silent and Sneaky Approach (Normal)", "action", BOARD1_APPROACH.id, function()
    menu.notify("Approach changed to Silent and Sneaky (Normal)", "Heist Control", 3, 0x64FF7800)
        for i = 1, #CH_Diff_Normal1 do
        stat_set_int(CH_Diff_Normal1[i][1], true, CH_Diff_Normal1[i][2])
        end
    end)
end


do
local CH_Diff_Hard2 = {
    {"H3_LAST_APPROACH", 0},
    {"H3OPT_APPROACH", 2},
    {"H3_HARD_APPROACH", 2}
}
    menu.add_feature("» BigCon Approach (Hard)", "action", BOARD1_APPROACH.id, function()
    menu.notify("Approach changed to BigCon (Hard)", "Heist Control", 3, 0x64FF7800)
        for i = 1, #CH_Diff_Hard2 do
        stat_set_int(CH_Diff_Hard2[i][1], true, CH_Diff_Hard2[i][2])
        end
     end)
end

do
local CH_Diff_Normal2 = {
    {"H3_LAST_APPROACH", 0},
    {"H3OPT_APPROACH", 2},
    {"H3_HARD_APPROACH", 0}
}
    menu.add_feature("» BigCon Approach (Normal)", "action", BOARD1_APPROACH.id, function()
    menu.notify("Approach changed to BigCon (Normal)", "Heist Control", 3, 0x64FF7800)
        for i = 1, #CH_Diff_Normal2 do
        stat_set_int(CH_Diff_Normal2[i][1], true, CH_Diff_Normal2[i][2])
    end
end)
end

do
local CH_Diff_Hard3 = {
    {"H3_LAST_APPROACH", 0},
    {"H3OPT_APPROACH", 3},
    {"H3_HARD_APPROACH", 0}
}
    menu.add_feature("» Aggressive Approach (Hard)", "action", BOARD1_APPROACH.id, function()
    menu.notify("Approach changed to Aggressive (Hard)", "Heist Control", 3, 0x64FF7800)
            for i = 1, #CH_Diff_Hard3 do
            stat_set_int(CH_Diff_Hard3[i][1], true, CH_Diff_Hard3[i][2])
        end
    end)
end

do
local CH_Diff_Normal3 = {
    {"H3_LAST_APPROACH", 0},
    {"H3OPT_APPROACH", 3},
    {"H3_HARD_APPROACH", 0}
}
    menu.add_feature("» Aggressive Approach (Normal)", "action", BOARD1_APPROACH.id, function()
    menu.notify("Approach changed to Aggressive (Normal)", "Heist Control", 3, 0x64FF7800)
         for i = 1, #CH_Diff_Normal3 do
         stat_set_int(CH_Diff_Normal3[i][1], true, CH_Diff_Normal3[i][2])
        end
    end)
end

local CASINO_GUNMAN = menu.add_feature("» Change Gunman", "parent", CASINO_BOARD2.id)
do
local CH_GUNMAN_05 = {
    {"H3OPT_CREWWEAP", 4}
}
    menu.add_feature("» Chester McCoy (10%)", "action", CASINO_GUNMAN.id, function()
    menu.notify("Chester McCoy now as Gunman\nCut 10%", "Heist Control", 3, 0x64F0AA14)
        for i = 1, #CH_GUNMAN_05 do
        stat_set_int(CH_GUNMAN_05[i][1], true, CH_GUNMAN_05[i][2])
        end
    end)
end

do
local CH_GUNMAN_04 = {
    {"H3OPT_CREWWEAP", 2}
}
    menu.add_feature("» Gustavo Mota (9%)", "action", CASINO_GUNMAN.id, function()
    menu.notify("Gustavo Mota now as Gunman\nCut 9%", "Heist Control", 3, 0x64F0AA14)
        for i = 1, #CH_GUNMAN_04 do
        stat_set_int(CH_GUNMAN_04[i][1], true, CH_GUNMAN_04[i][2])
        end
end)
end

do
local CH_GUNMAN_03 = {
    {"H3OPT_CREWWEAP", 5}
}
    menu.add_feature("» Patrick McReary (8%)", "action", CASINO_GUNMAN.id, function()
    menu.notify("Patrick McReary now as Gunman\nCut 8%", "Heist Control", 3, 0x64F0AA14)
        for i = 1, #CH_GUNMAN_03 do
        stat_set_int(CH_GUNMAN_03[i][1], true, CH_GUNMAN_03[i][2])
        end
    end)
end

do
local CH_GUNMAN_02 = {
    {"H3OPT_CREWWEAP", 3}
}
    menu.add_feature("» Charlie Reed (7%)", "action", CASINO_GUNMAN.id, function()
    menu.notify("Charlie Reed now as Gunman\nCut 7%", "Heist Control", 3, 0x64F0AA14)
        for i = 1, #CH_GUNMAN_02 do
        stat_set_int(CH_GUNMAN_02[i][1], true, CH_GUNMAN_02[i][2])
        end
    end)
end

do
local CH_GUNMAN_01 = {
     {"H3OPT_CREWWEAP", 1}
}
    menu.add_feature("» Karl Abolaji (5%)", "action", CASINO_GUNMAN.id, function()
    menu.notify("Karl Abolaji now as Gunman\nCut 5%", "Heist Control", 3, 0x64F0AA14)
        for i = 1, #CH_GUNMAN_01 do
        stat_set_int(CH_GUNMAN_01[i][1], true, CH_GUNMAN_01[i][2])
        end
    end)
end


do
local CH_GUNMAN_RND = {
    {"H3OPT_CREWWEAP", 1, 5, 1 ,5}
}
    menu.add_feature("» Random Gunman Member (??%)", "action", CASINO_GUNMAN.id, function()
    menu.notify("Gunman Randomized\nCut ??", "RHeist Control", 3, 0x64F0AA14)
        for i = 1, #CH_GUNMAN_RND do
        stat_set_int(CH_GUNMAN_RND[i][1], true, math.random(CH_GUNMAN_RND[i][4], CH_GUNMAN_RND[i][5]))
         end
    end)
end

do
local CH_GUNMAN_00 = {
    {"H3OPT_CREWWEAP", 6}
}
menu.add_feature("» Remove Gunman Member (0% Payout)", "action", CASINO_GUNMAN.id, function()
    menu.notify("Gunman Member Removed", "Heist Control", 3, 0x64F0AA14)
        for i = 1, #CH_GUNMAN_00 do
        stat_set_int(CH_GUNMAN_00[i][1], true, CH_GUNMAN_00[i][2])
        end
    end)
end

local CASINO_GUNMAN_var = menu.add_feature("» Weapon Variation", "parent", CASINO_GUNMAN.id)

do
local CH_Gunman_var_01 = {
    {"H3OPT_WEAPS", 1}
}
    menu.add_feature("» Best Variation", "action", CASINO_GUNMAN_var.id, function()
    menu.notify("Variation Changed to the Best", "Heist Control", 3, 0x64F0AA14)
    for i = 1, #CH_Gunman_var_01 do
    stat_set_int(CH_Gunman_var_01[i][1], true, CH_Gunman_var_01[i][2])
    end
end)
end

do
local CH_Gunman_var_00 = {
    {"H3OPT_WEAPS", 0}
}
    menu.add_feature("» Worst Variation", "action", CASINO_GUNMAN_var.id, function()
    menu.notify("Variation Changed to the Worst", "Heist Control", 3, 0x64F0AA14)
        for i = 1, #CH_Gunman_var_00 do
        stat_set_int(CH_Gunman_var_00[i][1], true, CH_Gunman_var_00[i][2])
        end
    end)
end

local CASINO_DRIVER_TEAM = menu.add_feature("» Vehicle Variation", "parent", CASINO_BOARD2.id)

do
local CH_DRV_MAN_05 = {
    {"H3OPT_CREWDRIVER", 5}
}
    menu.add_feature("» Chester McCoy (10%)", "action", CASINO_DRIVER_TEAM.id, function()
    menu.notify("Vehicle Variation Best\nVehicle: Everon 4 Seats\n\nVehicle Variation Good\nVehicle: Outlaw 2 Seats\n\nVehicle Variation Fine\nVehicle: Vagrant 2 Seats\n\nVehicle Variation Worst\nVehicle: Zhaba 4 Seats", "Chester McCoy Cut 10%", 5, 0x64F0AA14)
        for i = 1, #CH_DRV_MAN_05 do
        stat_set_int(CH_DRV_MAN_05[i][1], true, CH_DRV_MAN_05[i][2])
        end
    end)
end

do
local CH_DRV_MAN_04 = {
    {"H3OPT_CREWDRIVER", 3}
}
    menu.add_feature("» Eddie Toh (9%)", "action", CASINO_DRIVER_TEAM.id, function()
    menu.notify("Vehicle Variation Best\nVehicle: Komoda 4 Seats\n\nVehicle Variation Good\nVehicle: Ellie 2 Seats\n\nVehicle Variation Fine\nVehicle: Gauntlet Classic 2 Seats\n\nVehicle Variation Worst\nVehicle: Sultan Classic 4 Seats", "Eddie Toh Cut 9%", 5, 0x64F0AA14)
        for i = 1, #CH_DRV_MAN_04 do
        stat_set_int(CH_DRV_MAN_04[i][1], true, CH_DRV_MAN_04[i][2])
        end
    end)
end

do
local CH_DRV_MAN_03 = {
    {"H3OPT_CREWDRIVER", 2}
}
    menu.add_feature("» Taliana Martinez (7%)", "action", CASINO_DRIVER_TEAM.id, function()
    menu.notify("Vehicle Variation Best\nVehicle: Jugular 4 Seats\n\nVehicle Variation Good\nVehicle: Sugoi 4 Seats\n\nVehicle Variation: Fine\nVehicle Drift Yosemite 2 Seats\n\nVehicle Variation Worst\nVehicle: Retinue Mk II 2 Seats", "Taliana Martinez Cut 7%", 5, 0x64F0AA14)
        for i = 1, #CH_DRV_MAN_03 do
        stat_set_int(CH_DRV_MAN_03[i][1], true, CH_DRV_MAN_03[i][2])
        end
    end)
end

do
local CH_DRV_MAN_02 = {
    {"H3OPT_CREWDRIVER", 4}
}
    menu.add_feature("» Zach Nelson (6%)", "action", CASINO_DRIVER_TEAM.id, function()
    menu.notify("Vehicle Variation Best\nVehicle: Lectro 2 Seats\n\nVehicle Variation Good\nVehicle: Defiler 1 Seat\n\nVehicle Variation Fine\nVehicle: Stryder 1 Seat\n\nVehicle Variation Worst\nVehicle: Manchez 2 Seats", "Zach Nelson Cut 6%", 5, 0x64F0AA14)
        for i = 1, #CH_DRV_MAN_02 do
        stat_set_int(CH_DRV_MAN_02[i][1], true, CH_DRV_MAN_02[i][2])
        end
end)
end

do
local CH_DRV_MAN_01 = {
    {"H3OPT_CREWDRIVER", 1}
}
    menu.add_feature("» Karim Denz (5%)", "action", CASINO_DRIVER_TEAM.id, function()
    menu.notify("Vehicle Variation Best\nVehicle: Sentinel Classic 2 Seats\n\nVehicle Variation: Good\nVehicle: Kanjo 2 Seats\n\nVehicle Variation Fine\nVehicle: Asbo 2 Seats\n\nVehicle Variation Worst\nVehicle: Issi Classic 2 Seats", "Karim Denz Cut 5%", 5, 0x64F0AA14)
        for i = 1, #CH_DRV_MAN_01 do
        stat_set_int(CH_DRV_MAN_01[i][1], true, CH_DRV_MAN_01[i][2])
        end
end)
end

do
local CH_DRV_MAN_RND = {
    {"H3OPT_CREWDRIVER", 1, 5, 1 ,5}
}
    menu.add_feature("» Random Driver Member", "action", CASINO_DRIVER_TEAM.id, function()
    menu.notify("Crew Driver randomized", "Heist Control", 3, 0x64F0AA14)
    for i = 1, #CH_DRV_MAN_RND do
    stat_set_int(CH_DRV_MAN_RND[i][1], true, math.random(CH_DRV_MAN_RND[i][4], CH_DRV_MAN_RND[i][5]))
    end
end)
end

do
    local CH_DRV_MAN_00 = {
        {"H3OPT_CREWDRIVER", 6}
    }
menu.add_feature("» Remove Driver Member (0% Payout)", "action", CASINO_DRIVER_TEAM.id, function()
menu.notify("Driver Member Removed", "Heist Control", 3, 0x64F0AA14)
    for i = 1, #CH_DRV_MAN_00 do
    stat_set_int(CH_DRV_MAN_00[i][1], true, CH_DRV_MAN_00[i][2])
        end
    end)
end

local CAH_DRIVER_TEAM_var = menu.add_feature("» Vehicle Variation", "parent", CASINO_DRIVER_TEAM.id)

do
local CH_DRV_MAN_var_03 = {
    {"H3OPT_VEHS", 3}
}
menu.add_feature("» Best Variation", "action", CAH_DRIVER_TEAM_var.id, function()
menu.notify("Best Variation Selected", "Heist Control", 3, 0x64F0AA14)
    for i = 1, #CH_DRV_MAN_var_03 do
    stat_set_int(CH_DRV_MAN_var_03[i][1], true, CH_DRV_MAN_var_03[i][2])
    end
end)
end

do
local CH_DRV_MAN_var_02 = {
        {"H3OPT_VEHS", 2}
    }
    menu.add_feature("» Good Variation", "action", CAH_DRIVER_TEAM_var.id, function()
    menu.notify("Good Variation", "Heist Control", 3, 0x64F0AA14)
        for i = 1, #CH_DRV_MAN_var_02 do
        stat_set_int(CH_DRV_MAN_var_02[i][1], true, CH_DRV_MAN_var_02[i][2])
        end
    end)
end
do
local CH_DRV_MAN_var_01 = {
    {"H3OPT_VEHS", 1}
}
    menu.add_feature("» Fine Variation", "action", CAH_DRIVER_TEAM_var.id, function()
    menu.notify("Fine Variation", "Heist Control - Vehicle Variation", 3, 0x64F0AA14)
        for i = 1, #CH_DRV_MAN_var_01 do
        stat_set_int(CH_DRV_MAN_var_01[i][1], true, CH_DRV_MAN_var_01[i][2])
        end
    end)
end
do

local CH_DRV_MAN_var_00 = {
    {"H3OPT_VEHS", 0}
}
    menu.add_feature("» Worst Variation", "action", CAH_DRIVER_TEAM_var.id, function()
    menu.notify("Worst Variation", "Heist Control", 3, 0x64F0AA14)
        for i = 1, #CH_DRV_MAN_var_00 do
        stat_set_int(CH_DRV_MAN_var_00[i][1], true, CH_DRV_MAN_var_00[i][2])
        end
    end)
end

do
local CH_DRV_MAN_var_RND = {
    {"H3OPT_VEHS", 0, 3, 0, 3}
}
    menu.add_feature("» Random Car Variation", "action", CAH_DRIVER_TEAM_var.id, function()
    menu.notify("Car Randomized", "Heist Control", 3, 0x64F0AA14)
        for i = 1, #CH_DRV_MAN_var_RND do
        stat_set_int(CH_DRV_MAN_var_RND[i][1], true, math.random(CH_DRV_MAN_var_RND[i][4], CH_DRV_MAN_var_RND[i][5]))
        end
    end)
end

local CASINO_HACKERs = menu.add_feature("» Change Hacker", "parent", CASINO_BOARD2.id)
do
local CH_HCK_MAN_04 = {
    {"H3OPT_CREWHACKER", 4}
}
    menu.add_feature("» Avi Schwartzman (10%)", "action", CASINO_HACKERs.id, function()
    menu.notify("Name: Avi Schwartzman\nSkill: Expert\nTime Undetected: 3:30\nTime Detected: 2:26\nCut: 10%", "Heist Control", 5, 0x64F0AA14)
        for i = 1, #CH_HCK_MAN_04 do
        stat_set_int(CH_HCK_MAN_04[i][1], true, CH_HCK_MAN_04[i][2])
        end
end)
end

do
local CH_HCK_MAN_05 = {
    {"H3OPT_CREWHACKER", 5}
}
    menu.add_feature("» Paige Harris (9%)", "action", CASINO_HACKERs.id, function()
    menu.notify("Name: Paige Harris\nSkill: Expert\nTime Undetected: 3:25\nTime Detected: 2:23\nCut: 9%", "Heist Control", 5, 0x64F0AA14)
        for i = 1, #CH_HCK_MAN_05 do
        stat_set_int(CH_HCK_MAN_05[i][1], true, CH_HCK_MAN_05[i][2])
        end
end)
end

do
local CH_HCK_MAN_03 = {
    {"H3OPT_CREWHACKER", 2}
}
    menu.add_feature("» Christian Feltz (7%)", "action", CASINO_HACKERs.id, function()
    menu.notify("Name: Christian Feltz\nSkill: Good\nTime Undetected: 2:59\nTime Detected: 2:05\nCut: 7%", "Heist Control", 5, 0x64F0AA14)
        for i = 1, #CH_HCK_MAN_03 do
        stat_set_int(CH_HCK_MAN_03[i][1], true, CH_HCK_MAN_03[i][2])
        end
end)
end

do
local CH_HCK_MAN_02 = {
    {"H3OPT_CREWHACKER", 3}
}
    menu.add_feature("» Yohan Blair (5%)", "action", CASINO_HACKERs.id, function()
    menu.notify("Name: Yohan Blair\nSkill: Good\nTime Undetected: 2:52\nTime Detected: 2:01\nCut: 5%", "Heist Control", 5, 0x64F0AA14)
        for i = 1, #CH_HCK_MAN_02 do
        stat_set_int(CH_HCK_MAN_02[i][1], true, CH_HCK_MAN_02[i][2])
        end
end)
end

do
local CH_HCK_MAN_01 = {
    {"H3OPT_CREWHACKER", 1}
}
    menu.add_feature("» Rickie Luken (3%)", "action", CASINO_HACKERs.id, function()
    menu.notify("Name: Rickie Luken\nSkill: Poor\nTime Undetected: 2:26\nTime Detected: 1:42\nCut: 3%", "Heist Control - Hacker Member", 5, 0x64F0AA14)
        for i = 1, #CH_HCK_MAN_01 do
        stat_set_int(CH_HCK_MAN_01[i][1], true, CH_HCK_MAN_01[i][2])
        end
end)
end

do
local CH_HCK_MAN_RND = {
    {"H3OPT_CREWHACKER", 0, 5, 1, 5}
}
    menu.add_feature("» Random Hacker Member", "action", CASINO_HACKERs.id, function()
    menu.notify("Hacker member randomized", "Heist Control", 4, 0x64F0AA14)
        for i = 1, #CH_HCK_MAN_RND do
        stat_set_int(CH_HCK_MAN_RND[i][1], true, math.random(CH_HCK_MAN_RND[i][4], CH_HCK_MAN_RND[i][5]))
        end
end)
end
do
local CH_HCK_MAN_00 = {
    {"H3OPT_CREWHACKER", 6}
}
    menu.add_feature("» Remove Hacker Member (0% Payout)", "action", CASINO_HACKERs.id, function()
    menu.notify("Hacker member removed", "Heist Control", 4, 0x64F0AA14)
        for i = 1, #CH_HCK_MAN_00 do
        stat_set_int(CH_HCK_MAN_00[i][1], true, CH_HCK_MAN_00[i][2])
        end
    end)
end

local CASINO_MASK = menu.add_feature("» Choose Mask", "parent", CASINO_BOARD2.id)

do
local CH_MASK_00 = {
    {"H3OPT_MASKS", -1}
}
    menu.add_feature("» Remove Mask", "action", CASINO_MASK.id, function()
    menu.notify("Mask: Removed", "Heist Control", 2, 0x64F0AA14)
        for i = 1, #CH_MASK_00 do
        stat_set_int(CH_MASK_00[i][1], true, CH_MASK_00[i][2])
        end
end)
end

do
local CH_MASK_01 = {
    {"H3OPT_MASKS", 1}
}
    menu.add_feature("» Geometric Set", "action", CASINO_MASK.id, function()
    menu.notify("Mask: Geometric", "Heist Control", 2, 0x64F0AA14)
        for i = 1, #CH_MASK_01 do
        stat_set_int(CH_MASK_01[i][1], true, CH_MASK_01[i][2])
        end
end)
end

do
local CH_MASK_02 = {
    {"H3OPT_MASKS", 2}
}
    menu.add_feature("» Hunter Set", "action", CASINO_MASK.id, function()
    menu.notify("Mask: Hunter", "Heist Control", 2, 0x64F0AA14)
        for i = 1, #CH_MASK_02 do
        stat_set_int(CH_MASK_02[i][1], true, CH_MASK_02[i][2])
        end
end)
end

do
local CH_MASK_03 = {
    {"H3OPT_MASKS", 3}
}
    menu.add_feature("» Oni Half Mask Set", "action", CASINO_MASK.id, function()
    menu.notify("Mask: Oni Half Mask", "Heist Control", 2, 0x64F0AA14)
        for i = 1, #CH_MASK_03 do
    stat_set_int(CH_MASK_03[i][1], true, CH_MASK_03[i][2])
        end
    end)
end

do
local CH_MASK_04 = {
    {"H3OPT_MASKS", 4}
}
    menu.add_feature("» Emoji Set", "action", CASINO_MASK.id, function()
    menu.notify("Mask: Emoji", "Heist Control", 2, 0x64F0AA14)
        for i = 1, #CH_MASK_04 do
        stat_set_int(CH_MASK_04[i][1], true, CH_MASK_04[i][2])
        end
end)
end

do
local CH_MASK_05 = {
    {"H3OPT_MASKS", 5}
}
    menu.add_feature("» Ornate Skull Set", "action", CASINO_MASK.id, function()
    menu.notify("Mask: Ornate Skull", "Heist Control", 2, 0x64F0AA14)
        for i = 1, #CH_MASK_05 do
        stat_set_int(CH_MASK_05[i][1], true, CH_MASK_05[i][2])
        end
end)
end

do
local CH_MASK_06 = {
     {"H3OPT_MASKS", 6}
}
    menu.add_feature("» Lucky Fruit Set", "action", CASINO_MASK.id, function()
    menu.notify("Mask: Lucky Fruit", "Heist Control", 2, 0x64F0AA14)
        for i = 1, #CH_MASK_06 do
        stat_set_int(CH_MASK_06[i][1], true, CH_MASK_06[i][2])
         end
end)
end

do
local CH_MASK_07 = {
    {"H3OPT_MASKS", 7}
}
    menu.add_feature("» Guerilla Set", "action", CASINO_MASK.id, function()
    menu.notify("Mask: Guerilla", "Heist Control", 2, 0x64F0AA14)
        for i = 1, #CH_MASK_07 do
        stat_set_int(CH_MASK_07[i][1], true, CH_MASK_07[i][2])
        end
end)
end

do
local CH_MASK_08 = {
    {"H3OPT_MASKS", 8}
}
    menu.add_feature("» Clown Set", "action", CASINO_MASK.id, function()
    menu.notify("Mask: Clown", "Heist Control", 2, 0x64F0AA14)
    for i = 1, #CH_MASK_08 do
     stat_set_int(CH_MASK_08[i][1], true, CH_MASK_08[i][2])
    end
end)
end

do
local CH_MASK_09 = {
    {"H3OPT_MASKS", 9}
}
    menu.add_feature("» Animal Set", "action", CASINO_MASK.id, function()
    menu.notify("Mask: Animal", "Heist Control", 2, 0x64F0AA14)
        for i = 1, #CH_MASK_09 do
        stat_set_int(CH_MASK_09[i][1], true, CH_MASK_09[i][2])
        end
end)
end

do
local CH_MASK_10 = {
    {"H3OPT_MASKS", 10}
}
    menu.add_feature("» Riot Set", "action", CASINO_MASK.id, function()
    menu.notify("Mask: Riot", "Heist Control", 2, 0x64F0AA14)
        for i = 1, #CH_MASK_10 do
        stat_set_int(CH_MASK_10[i][1], true, CH_MASK_10[i][2])
        end
end)
end

do
local CH_MASK_11 = {
    {"H3OPT_MASKS", 11}
}
    menu.add_feature("» Oni Set", "action", CASINO_MASK.id, function()
    menu.notify("Mask: Oni Set", "Heist Control", 2, 0x64F0AA14)
        for i = 1, #CH_MASK_11 do
        stat_set_int(CH_MASK_11[i][1], true, CH_MASK_11[i][2])
        end
end)
end

do
local CH_MASK_12 = {
    {"H3OPT_MASKS", 12}
}
    menu.add_feature("» Hocket Set", "action", CASINO_MASK.id, function()
    menu.notify("Mask: Hockey Set", "Heist Control", 2, 0x64F0AA14)
        for i = 1, #CH_MASK_12 do
        stat_set_int(CH_MASK_12[i][1], true, CH_MASK_12[i][2])
    end
end)
end

do
    local CH_DUGGAN = {
{"H3OPT_DISRUPTSHIP", 3}
}
local CH_SCANC_LVL = {
    {"H3OPT_KEYLEVELS", 2}
}
    menu.add_feature("» Unlock Scan Card LVL 2", "action", CASINO_BOARD2.id, function()
    menu.notify("Scan Card LVL 2 Unlocked", "Heist Control", 2, 0x64F0AA14)
        for i = 1, #CH_SCANC_LVL do
        stat_set_int(CH_SCANC_LVL[i][1], true, CH_SCANC_LVL[i][2])
    end
end)
   
    menu.add_feature("» Weaken Duggan Guards", "action", CASINO_BOARD2.id, function()
    menu.notify("Duggan Guards Weakened", "Heist Control", 2, 0x64F0AA14)
        for i = 1, #CH_DUGGAN do
        stat_set_int(CH_DUGGAN[i][1], true, CH_DUGGAN[i][2])
    end
end)
end

do
    local CH_UNLCK_3stboard_var1 = {
        {"H3OPT_BITSET0", -8849}
    }
    local CH_UNLCK_3stboard_var3bc = {
        {"H3OPT_BITSET0", -186}
    }
    menu.add_feature("» Remove Drill for Silent and Aggressive Approach", "action", CASINO_BOARD3.id, function()
    menu.notify("Drill removed for Silent and Aggressive Approach", "Heist Control", 3, 0x64F06414)
    for i = 1, #CH_UNLCK_3stboard_var1 do
        stat_set_int(CH_UNLCK_3stboard_var1[i][1], true, CH_UNLCK_3stboard_var1[i][2])
     end
end)
    menu.add_feature("» Remove Drill for BigCon Approach only", "action", CASINO_BOARD3.id, function()
     menu.notify("Drill removed for BigCon", "Heist Control", 3, 0x64F06414)
    for i = 1, #CH_UNLCK_3stboard_var3bc do
        stat_set_int(CH_UNLCK_3stboard_var3bc[i][1], true, CH_UNLCK_3stboard_var3bc[i][2])
        end
    end)
end

do
local CH_LOAD_BOARD_var0 = {
    {"H3OPT_BITSET1", -1},
    {"H3OPT_BITSET0", -1}
}
local CH_UNLOAD_BOARD_var1 = {
    {"H3OPT_BITSET1", 0},
    {"H3OPT_BITSET0", 0}
}
menu.add_feature("» Load all Boards", "action", CASINO_LBOARDS.id, function()
    menu.notify("All Planning Board Loaded", "Heist Control", 3, 0x6400FA14)
    for i = 1, #CH_LOAD_BOARD_var0 do
        stat_set_int(CH_LOAD_BOARD_var0[i][1], true, CH_LOAD_BOARD_var0[i][2])
    end
end)

menu.add_feature("» Unload all Boards", "action", CASINO_LBOARDS.id, function()
    menu.notify("All Planning Board Unloaded", "Heist Control", 3, 0x641400FF)
    for i = 1, #CH_UNLOAD_BOARD_var1 do
        stat_set_int(CH_UNLOAD_BOARD_var1[i][1], true, CH_UNLOAD_BOARD_var1[i][2])
    end
end)
end

do
local UNLCK_PATRICK = {
    {"CAS_HEIST_FLOW", -1}
}
    menu.add_feature("» Unlock Packie McReary", "action", CASINO_MORE.id, function()
    menu.notify("Packie McReary has been unlocked", "Heist Control", 3, 0x64F06414)
    for i = 1, #UNLCK_PATRICK do
    stat_set_int(UNLCK_PATRICK[i][1], true, UNLCK_PATRICK[i][2])
    end
end)
end

do
local CH_AWRD_BL = {
    {"AWD_FIRST_TIME1", true},
    {"AWD_FIRST_TIME2", true},
    {"AWD_FIRST_TIME3", true},
    {"AWD_FIRST_TIME4", true},
    {"AWD_FIRST_TIME5", true},
    {"AWD_FIRST_TIME6", true},
    {"AWD_ALL_IN_ORDER", true},
    {"AWD_SUPPORTING_ROLE", true},
    {"AWD_LEADER", true},
    {"AWD_ODD_JOBS", true},
    {"AWD_SURVIVALIST", true},
    {"AWD_SCOPEOUT", true},
    {"AWD_CREWEDUP", true},
    {"AWD_MOVINGON", true},
    {"AWD_PROMOCAMP", true},
    {"AWD_GUNMAN", true},
    {"AWD_SMASHNGRAB", true},
    {"AWD_INPLAINSI", true},
    {"AWD_UNDETECTED", true},
    {"AWD_ALLROUND", true},
    {"AWD_ELITETHEIF", true},
    {"AWD_PRO", true},
    {"AWD_SUPPORTACT", true},
    {"AWD_SHAFTED", true},
    {"AWD_COLLECTOR", true},
    {"AWD_DEADEYE", true},
    {"AWD_PISTOLSATDAWN", true},
    {"AWD_TRAFFICAVOI", true},
    {"AWD_CANTCATCHBRA", true},
    {"AWD_WIZHARD", true},
    {"AWD_APEESCAPE", true},
    {"AWD_MONKEYKIND", true},
    {"AWD_AQUAAPE", true},
    {"AWD_KEEPFAITH", true},
    {"AWD_TRUELOVE", true},
    {"AWD_NEMESIS", true},
    {"AWD_FRIENDZONED", true},
    {"VCM_FLOW_CS_RSC_SEEN", true},
    {"VCM_FLOW_CS_BWL_SEEN", true},
    {"VCM_FLOW_CS_MTG_SEEN", true},
    {"VCM_FLOW_CS_OIL_SEEN", true},
    {"VCM_FLOW_CS_DEF_SEEN", true},
    {"VCM_FLOW_CS_FIN_SEEN", true},
    {"CAS_VEHICLE_REWARD", false},
    {"HELP_FURIA", true},
    {"HELP_MINITAN", true},
    {"HELP_YOSEMITE2", true},
    {"HELP_ZHABA", true},
    {"HELP_IMORGEN", true},
    {"HELP_SULTAN2", true},
    {"HELP_VAGRANT", true},
    {"HELP_VSTR", true},
    {"HELP_STRYDER", true},
    {"HELP_SUGOI", true},
    {"HELP_KANJO", true},
    {"HELP_FORMULA", true},
    {"HELP_FORMULA2", true},
    {"HELP_JB7002", true}
}
local CH_AWRD_IT = {
    {"CH_ARC_CAB_CLAW_TROPHY", -1},
    {"CH_ARC_CAB_LOVE_TROPHY", -1},
    {"SIGNAL_JAMMERS_COLLECTED", 50},
    {"AWD_ODD_JOBS", 52},
    {"AWD_PREPARATION", 40},
    {"AWD_ASLEEPONJOB", 20},
    {"AWD_DAICASHCRAB", 100000},
    {"AWD_BIGBRO", 40},
    {"AWD_SHARPSHOOTER", 40},
    {"AWD_RACECHAMP", 40},
    {"AWD_BATSWORD", 1000000},
    {"AWD_COINPURSE", 950000},
    {"AWD_ASTROCHIMP", 3000000},
    {"AWD_MASTERFUL", 40000},
    {"VCM_FLOW_PROGRESS", 1839072},
    {"VCM_STORY_PROGRESS", 0},
    {"H3_BOARD_DIALOGUE0", -1},
    {"H3_BOARD_DIALOGUE1", -1},
    {"H3_BOARD_DIALOGUE2", -1},
    {"H3_VEHICLESUSED", -1}
}
    menu.add_feature("» Unlock Casino Awards", "action", CASINO_MORE.id, function()
    menu.notify("Casino Heist Awards Unlocked", "Heist Control", 3, 0x6400FA14)
    for i = 1, #CH_AWRD_IT do
        stat_set_int(CH_AWRD_IT[i][1], true, CH_AWRD_IT[i][2])
    for i = 2, #CH_AWRD_BL do
        stat_set_bool(CH_AWRD_BL[i][1], true, CH_AWRD_BL[i][2])
            end
        end
    end)
end

do
local CLD_CH_RMV = {
     {"H3_COMPLETEDPOSIX", -1},
    {"MPPLY_H3_COOLDOWN", -1}
}
    menu.add_feature("» Remove Repeat Cooldown", "action", CASINO_MORE.id, function()
    menu.notify("This is not a bypass for the server-side cooldown (payment)", "Heist Control", 3, 0x6414F0FF)
    for i = 1, #CLD_CH_RMV do
        stat_set_int(CLD_CH_RMV[i][1], true, CLD_CH_RMV[i][2])
        stat_set_int(CLD_CH_RMV[i][1], false, CLD_CH_RMV[i][2])
        end
    end)
end

do
local CH_RST = {
    {"H3_LAST_APPROACH", 0},
    {"H3OPT_APPROACH", 0},
    {"H3_HARD_APPROACH", 0},
    {"H3OPT_TARGET", 0},
    {"H3OPT_POI", 0},
    {"H3OPT_ACCESSPOINTS", 0},
    {"H3OPT_BITSET1", 0},
    {"H3OPT_CREWWEAP", 0},
    {"H3OPT_CREWDRIVER", 0},
    {"H3OPT_CREWHACKER", 0},
    {"H3OPT_WEAPS", 0},
    {"H3OPT_VEHS", 0},
    {"H3OPT_DISRUPTSHIP", 0},
    {"H3OPT_BODYARMORLVL", 0},
    {"H3OPT_KEYLEVELS", 0},
    {"H3OPT_MASKS", 0},
    {"H3OPT_BITSET0", 0}
}
menu.add_feature("» Set Heist to Default (Reset)", "action", CASINO_MORE.id, function()
    menu.notify("Now call Lester and try to cancel the Casino Heist", "Heist Control", 3, 0x6414F0FF)
for i = 1, #CH_RST do
    stat_set_int(CH_RST[i][1], true, CH_RST[i][2])
end
end)
end
-------- DOOMSDAY HEIST
do
local DD_H_ACT1 = {
    {"GANGOPS_FLOW_MISSION_PROG", 503},
    {"GANGOPS_HEIST_STATUS", -229383},
    {"GANGOPS_FLOW_NOTIFICATIONS", 1557}
}
    menu.add_feature("» The Data Breaches ACT I [Final Heist]", "action", DOOMS_PRESETS.id, function()
    menu.notify("The Data Breaches ACT I\nIs ready to play", "Heist Control", 4, 0x64FF78B4)
    for i = 1, #DD_H_ACT1 do
        stat_set_int(DD_H_ACT1[i][1], true, DD_H_ACT1[i][2])
    end
end)
end

do
local DD_H_ACT2 = {
    {"GANGOPS_FLOW_MISSION_PROG", 240},
    {"GANGOPS_HEIST_STATUS", -229378},
    {"GANGOPS_FLOW_NOTIFICATIONS", 1557}
}
    menu.add_feature("» The Bogdan Problem ACT II [Final Heist]", "action", DOOMS_PRESETS.id, function()
    menu.notify("The Bogdan Problem ACT II\nIs ready to play", "Heist Control", 4, 0x64FF78B4)
    for i = 1, #DD_H_ACT2 do
        stat_set_int(DD_H_ACT2[i][1], true, DD_H_ACT2[i][2])
    end
end)
end

do
local DD_H_ACT3 = {
    {"GANGOPS_FLOW_MISSION_PROG", 16368},
    {"GANGOPS_HEIST_STATUS", -229380},
    {"GANGOPS_FLOW_NOTIFICATIONS", 1557}
}
    menu.add_feature("» The Doomsday Scenario ACT III [Final Heist]", "action", DOOMS_PRESETS.id, function()
    menu.notify("The Doomsday Scenario ACT III\nIs Ready to play", "Heist Control", 4, 0x64FF78B4)
    for i = 1, #DD_H_ACT3 do
        stat_set_int(DD_H_ACT3[i][1], true, DD_H_ACT3[i][2])
    end
end)
end

do
local DDHEIST_HOST_MANAGER = menu.add_feature("» Your Cut", "parent", DDHEIST_PLYR_MANAGER.id)
    menu.add_feature("0%", "toggle", DDHEIST_HOST_MANAGER.id, function(p)
    while p.on do
    script.set_global_i(1699568+812+50+1, 0)
    if not p.on then return end
    system.wait(0)
    end
end)

    menu.add_feature("100%", "toggle", DDHEIST_HOST_MANAGER.id, function(p)
    while p.on do
    script.set_global_i(1699568+812+50+1, 100)
    if not p.on then return end
    system.wait(0)
end
end)

    menu.add_feature("150%", "toggle", DDHEIST_HOST_MANAGER.id, function(p)
    while p.on do
    script.set_global_i(1699568+812+50+1, 150)
    if not p.on then return end
    system.wait(0)
end
end)

    menu.add_feature("175%", "toggle", DDHEIST_HOST_MANAGER.id, function(p)
    while p.on do
    script.set_global_i(1699568+812+50+1, 175)
    if not p.on then return end
    system.wait(0)
end
end)

    menu.add_feature("205%", "toggle", DDHEIST_HOST_MANAGER.id, function(p)
    while p.on do
    script.set_global_i(1699568+812+50+1, 205)
    if not p.on then return end
    system.wait(0)
end
end)
end

do
    local DDHEIST_PLAYER2_MANAGER = menu.add_feature("» Player 2", "parent", DDHEIST_PLYR_MANAGER.id)

    menu.add_feature("0%", "toggle", DDHEIST_PLAYER2_MANAGER.id, function(p)
    while p.on do
    script.set_global_i(1699568+812+50+2, 0)
    if not p.on then return end
    system.wait(0)
end
end)

    menu.add_feature("100%", "toggle", DDHEIST_PLAYER2_MANAGER.id, function(p)
    while p.on do
    script.set_global_i(1699568+812+50+2, 100)
    if not p.on then return end
    system.wait(0)
end
end)

menu.add_feature("150%", "toggle", DDHEIST_PLAYER2_MANAGER.id, function(p)
    while p.on do
    script.set_global_i(1699568+812+50+2, 150)
    if not p.on then return end
    system.wait(0)
end
end)

menu.add_feature("175%", "toggle", DDHEIST_PLAYER2_MANAGER.id, function(p)
    while p.on do
    script.set_global_i(1699568+812+50+2, 175)
    if not p.on then return end
    system.wait(0)
end
end)

menu.add_feature("200%", "toggle", DDHEIST_PLAYER2_MANAGER.id, function(p)
    while p.on do
    script.set_global_i(1699568+812+50+2, 200)
    if not p.on then return end
    system.wait(0)
end
end)

menu.add_feature("205%", "toggle", DDHEIST_PLAYER2_MANAGER.id, function(p)
    while p.on do
    script.set_global_i(1699568+812+50+2, 205)
    if not p.on then return end
    system.wait(0)
end
end)
end

do
local DDHEIST_PLAYER3_MANAGER = menu.add_feature("» Player 3", "parent", DDHEIST_PLYR_MANAGER.id)
menu.add_feature("0%", "toggle", DDHEIST_PLAYER3_MANAGER.id, function(p)
    while p.on do
    script.set_global_i(1699568+812+50+3, 0)
    if not p.on then return end
    system.wait(0)
end
end)

menu.add_feature("100%", "toggle", DDHEIST_PLAYER3_MANAGER.id, function(p)
    while p.on do
    script.set_global_i(1699568+812+50+3, 100)
    if not p.on then return end
    system.wait(0)
end
end)

menu.add_feature("150%", "toggle", DDHEIST_PLAYER3_MANAGER.id, function(p)
    while p.on do
    script.set_global_i(1699568+812+50+3, 150)
    if not p.on then return end
    system.wait(0)
end
end)

menu.add_feature("175%", "toggle", DDHEIST_PLAYER3_MANAGER.id, function(p)
    while p.on do
    script.set_global_i(1699568+812+50+3, 175)
    if not p.on then return end
    system.wait(0)
end
end)

menu.add_feature("200%", "toggle", DDHEIST_PLAYER3_MANAGER.id, function(p)
    while p.on do
    script.set_global_i(1699568+812+50+3, 200)
    if not p.on then return end
    system.wait(0)
end
end)

menu.add_feature("205%", "toggle", DDHEIST_PLAYER3_MANAGER.id, function(p)
    while p.on do
    script.set_global_i(1699568+812+50+3, 205)
    if not p.on then return end
    system.wait(0)
end
end)
end

do
local DDHEIST_PLAYER4_MANAGER = menu.add_feature("» Player 4", "parent", DDHEIST_PLYR_MANAGER.id)
menu.add_feature("0%", "toggle", DDHEIST_PLAYER4_MANAGER.id, function(p)
    while p.on do
    script.set_global_i(1699568+812+50+4, 0)
    if not p.on then return end
    system.wait(0)
end
end)

menu.add_feature("100%", "toggle", DDHEIST_PLAYER4_MANAGER.id, function(p)
    while p.on do
    script.set_global_i(1699568+812+50+4, 100)
    if not p.on then return end
    system.wait(0)
end
end)

menu.add_feature("150%", "toggle", DDHEIST_PLAYER4_MANAGER.id, function(p)
    while p.on do
    script.set_global_i(1699568+812+50+4, 150)
    if not p.on then return end
    system.wait(0)
end
end)

menu.add_feature("175%", "toggle", DDHEIST_PLAYER4_MANAGER.id, function(p)
    while p.on do
    script.set_global_i(1699568+812+50+4, 175)
    if not p.on then return end
    system.wait(0)
end
end)

menu.add_feature("200%", "toggle", DDHEIST_PLAYER4_MANAGER.id, function(p)
    while p.on do
    script.set_global_i(1699568+812+50+4, 200)
    if not p.on then return end
    system.wait(0)
end
end)

menu.add_feature("205%", "toggle", DDHEIST_PLAYER4_MANAGER.id, function(p)
    while p.on do
    script.set_global_i(1699568+812+50+4, 205)
    if not p.on then return end
    system.wait(0)
end
end)
end

menu.add_feature("» Modify ACT 2 Payout (2.4 Millions to everyone)", "toggle", DDHEIST_PLYR_MANAGER.id, function(act)
    menu.notify("This is specific to ACT II (Bogdan Problem)\nPut it on hard difficulty, don't worry if it shows different percentages in-game\n\nLeave activated until the end of the heist", "Heist Control", 6, 0x6414F0FF)
    while act.on do
    script.set_global_i(1699568+812+50+1, 205)
    script.set_global_i(1699568+812+50+2, 205)
    script.set_global_i(1699568+812+50+3, 205)
    script.set_global_i(1699568+812+50+4, 205)
    if not act.on then return end
    system.wait(0)
end
end)


do
local DD_H_ULCK = {
    {"GANGOPS_HEIST_STATUS", -1},
    {"GANGOPS_HEIST_STATUS", -229384}
}
    menu.add_feature("» Unlock all Doomsday Heist", "action", DOOMS_HEIST.id, function()
    menu.notify("Call the Lester and ask to cancel the Doomsday Heist (Three Times)\nDo this only once", "Heist Control", 4, 0x64F06414)
    for i = 1, #DD_H_ULCK do
    stat_set_int(DD_H_ULCK[i][1], true, DD_H_ULCK[i][2])
    end
    end)
end

do
local DD_PREPS_DONE = {
    {"GANGOPS_FM_MISSION_PROG", -1}
}
    menu.add_feature("» Complete all preparations (Not setups)", "action", DOOMS_HEIST.id, function()
        menu.notify("All Preps are completed", "Heist Control", 3, 0x64F06414)
        for i = 1, #DD_PREPS_DONE do
            stat_set_int(DD_PREPS_DONE[i][1], true, DD_PREPS_DONE[i][2])
        end
    end)
end

do
local DD_H_RST = {
    {"GANGOPS_FLOW_MISSION_PROG", 240},
    {"GANGOPS_HEIST_STATUS", 0},
    {"GANGOPS_FLOW_NOTIFICATIONS", 1557}
}
    menu.add_feature("» Set Heist to Default (Reset)", "action", DOOMS_HEIST.id, function()
    menu.notify("Doomsday restored\nGo to a new session!!!", "Heist Control", 3, 0x64F06414)
        for i = 1, #DD_H_RST do
        stat_set_int(DD_H_RST[i][1], true, DD_H_RST[i][2])
        end
    end)
    end
do
    local DD_AWARDS_I = {
    {"GANGOPS_FM_MISSION_PROG", -1},
    {"GANGOPS_FLOW_MISSION_PROG", -1},
    {"MPPLY_GANGOPS_ALLINORDER", 100},
    {"MPPLY_GANGOPS_LOYALTY", 100},
    {"MPPLY_GANGOPS_CRIMMASMD", 100},
    {"MPPLY_GANGOPS_LOYALTY2", 100},
    {"MPPLY_GANGOPS_LOYALTY3", 100},
    {"MPPLY_GANGOPS_CRIMMASMD2", 100},
    {"MPPLY_GANGOPS_CRIMMASMD3", 100},
    {"MPPLY_GANGOPS_SUPPORT", 100},
    {"CR_GANGOP_MORGUE", 10},
    {"CR_GANGOP_DELUXO", 10},
    {"CR_GANGOP_SERVERFARM", 10},
    {"CR_GANGOP_IAABASE_FIN", 10},
    {"CR_GANGOP_STEALOSPREY", 10},
    {"CR_GANGOP_FOUNDRY", 10},
    {"CR_GANGOP_RIOTVAN", 10},
    {"CR_GANGOP_SUBMARINECAR", 10},
    {"CR_GANGOP_SUBMARINE_FIN", 10},
    {"CR_GANGOP_PREDATOR", 10},
    {"CR_GANGOP_BMLAUNCHER", 10},
    {"CR_GANGOP_BCCUSTOM", 10},
    {"CR_GANGOP_STEALTHTANKS", 10},
    {"CR_GANGOP_SPYPLANE", 10},
    {"CR_GANGOP_FINALE", 10},
    {"CR_GANGOP_FINALE_P2", 10},
    {"CR_GANGOP_FINALE_P3", 10}
}
local DD_AWARDS_B = {
    {"MPPLY_AWD_GANGOPS_IAA", true},
    {"MPPLY_AWD_GANGOPS_SUBMARINE", true},
    {"MPPLY_AWD_GANGOPS_MISSILE", true},
    {"MPPLY_AWD_GANGOPS_ALLINORDER", true},
    {"MPPLY_AWD_GANGOPS_LOYALTY", true},
    {"MPPLY_AWD_GANGOPS_LOYALTY2", true},
    {"MPPLY_AWD_GANGOPS_LOYALTY3", true},
    {"MPPLY_AWD_GANGOPS_CRIMMASMD", true},
    {"MPPLY_AWD_GANGOPS_CRIMMASMD2", true},
    {"MPPLY_AWD_GANGOPS_CRIMMASMD3", true}
}
    menu.add_feature("» Unlock Doomsday Heist Awards", "action", DOOMS_HEIST.id, function()
    menu.notify("Doomsday Awards Unlocked", "Heist Control", 3, 0x6400FA14)
    for i = 1, #DD_AWARDS_I do
        stat_set_int(DD_AWARDS_I[i][1], true, DD_AWARDS_I[i][2])
        stat_set_int(DD_AWARDS_I[i][1], false, DD_AWARDS_I[i][2])
    for i = 1, #DD_AWARDS_B do
        stat_set_bool(DD_AWARDS_B[i][1], true, DD_AWARDS_B[i][2])
        stat_set_bool(DD_AWARDS_B[i][1], false, DD_AWARDS_B[i][2])
        end
    end
    end)
end
-------- CLASSIC HEIST
do
local Apartment_SetDone = {
    {"HEIST_PLANNING_STAGE", -1}
}
    menu.add_feature("» Complete all setups", "action", CLASSIC_HEISTS.id, function()
    for i = 1, #Apartment_SetDone do
    menu.notify("You need to watch/skip the first cutscene to activate this option", "Heist Control", 5, 0x6414F0FF)
    stat_set_int(Apartment_SetDone[i][1], true, Apartment_SetDone[i][2])
end
end)
end

do
local CUT_CHAR_P1 = menu.add_feature("» Your Cut", "parent", CLASSIC_CUT.id)
menu.add_feature("0 %", "toggle", CUT_CHAR_P1.id, function(a)
    while a.on do
    script.set_global_i(1671773 + 3008 +1, 0)
    if not a.on then return end
    system.wait(0)
    end
end)
menu.add_feature("100 %", "toggle", CUT_CHAR_P1.id, function(a)
    while a.on do
    script.set_global_i(1671773 + 3008 +1, 100)
    if not a.on then return end
    system.wait(0)
    end
end)
menu.add_feature("125 %", "toggle", CUT_CHAR_P1.id, function(a)
    while a.on do
    script.set_global_i(1671773 + 3008 +1, 125)
    if not a.on then return end
    system.wait(0)
    end
end)
menu.add_feature("150 %", "toggle", CUT_CHAR_P1.id, function(a)
    while a.on do
    script.set_global_i(1671773 + 3008 +1, 150)
    if not a.on then return end
    system.wait(0)
    end
end)
menu.add_feature("200 %", "toggle", CUT_CHAR_P1.id, function(a)
    while a.on do
    script.set_global_i(1671773 + 3008 +1, 200)
    if not a.on then return end
    system.wait(0)
    end
end)
end

do
local Apartment_AWD_B = {
    {"MPPLY_AWD_COMPLET_HEIST_MEM", true},
    {"MPPLY_AWD_COMPLET_HEIST_1STPER", true},
    {"MPPLY_AWD_FLEECA_FIN", true},
    {"MPPLY_AWD_HST_ORDER", true},
    {"MPPLY_AWD_HST_SAME_TEAM", true},
    {"MPPLY_AWD_HST_ULT_CHAL", true},
    {"MPPLY_AWD_HUMANE_FIN", true},
    {"MPPLY_AWD_PACIFIC_FIN", true},
    {"MPPLY_AWD_PRISON_FIN", true},
    {"MPPLY_AWD_SERIESA_FIN", true},
    {"AWD_FINISH_HEIST_NO_DAMAGE", true},
    {"AWD_SPLIT_HEIST_TAKE_EVENLY", true},
    {"AWD_ALL_ROLES_HEIST", true},
    {"AWD_MATCHING_OUTFIT_HEIST", true},
    {"HEIST_PLANNING_DONE_PRINT", true},
    {"HEIST_PLANNING_DONE_HELP_0", true},
    {"HEIST_PLANNING_DONE_HELP_1", true},
    {"HEIST_PRE_PLAN_DONE_HELP_0", true},
    {"HEIST_CUTS_DONE_FINALE", true},
    {"HEIST_IS_TUTORIAL", false},
    {"HEIST_STRAND_INTRO_DONE", true},
    {"HEIST_CUTS_DONE_ORNATE", true},
    {"HEIST_CUTS_DONE_PRISON", true},
    {"HEIST_CUTS_DONE_BIOLAB", true},
    {"HEIST_CUTS_DONE_NARCOTIC", true},
    {"HEIST_CUTS_DONE_TUTORIAL", true},
    {"HEIST_AWARD_DONE_PREP", true},
    {"HEIST_AWARD_BOUGHT_IN", true}
}
    local Apartment_AWD_I = {
    {"AWD_FINISH_HEISTS", 900},
    {"MPPLY_WIN_GOLD_MEDAL_HEISTS", 900},
    {"AWD_DO_HEIST_AS_MEMBER", 900},
    {"AWD_DO_HEIST_AS_THE_LEADER", 900},
    {"AWD_FINISH_HEIST_SETUP_JOB", 900},
    {"AWD_FINISH_HEIST", 900},
    {"HEIST_COMPLETION", 900},
    {"HEISTS_ORGANISED", 900},
    {"AWD_CONTROL_CROWDS", 900},
    {"AWD_WIN_GOLD_MEDAL_HEISTS", 900},
    {"AWD_COMPLETE_HEIST_NOT_DIE", 900},
    {"HEIST_START", 900},
    {"HEIST_END", 900},
    {"CUTSCENE_MID_PRISON", 900},
    {"CUTSCENE_MID_HUMANE", 900},
    {"CUTSCENE_MID_NARC", 900},
    {"CUTSCENE_MID_ORNATE", 900},
    {"CR_FLEECA_PREP_1", 5000},
    {"CR_FLEECA_PREP_2", 5000},
    {"CR_FLEECA_FINALE", 5000},
    {"CR_PRISON_PLANE", 5000},
    {"CR_PRISON_BUS", 5000},
    {"CR_PRISON_STATION", 5000},
    {"CR_PRISON_UNFINISHED_BIZ", 5000},
    {"CR_PRISON_FINALE", 5000},
    {"CR_HUMANE_KEY_CODES", 5000},
    {"CR_HUMANE_ARMORDILLOS", 5000},
    {"CR_HUMANE_EMP", 5000},
    {"CR_HUMANE_VALKYRIE", 5000},
    {"CR_HUMANE_FINALE", 5000},
    {"CR_NARC_COKE", 5000},
    {"CR_NARC_TRASH_TRUCK", 5000},
    {"CR_NARC_BIKERS", 5000},
    {"CR_NARC_WEED", 5000},
    {"CR_NARC_STEAL_METH", 5000},
    {"CR_NARC_FINALE", 5000},
    {"CR_PACIFIC_TRUCKS ", 5000},
    {"CR_PACIFIC_WITSEC", 5000},
    {"CR_PACIFIC_HACK", 5000},
    {"CR_PACIFIC_BIKES", 5000},
    {"CR_PACIFIC_CONVOY", 5000},
    {"CR_PACIFIC_FINALE", 5000},
    {"MPPLY_HEIST_ACH_TRACKER", -1}
}
    menu.add_feature("» Unlock Classic Heist Awards", "action", CLASSIC_HEISTS.id, function()
    menu.notify("Classic Heists Awards unlocked", "Heist Control", 3, 0x6400FA14)
    for i = 1, #Apartment_AWD_I do
    stat_set_int(Apartment_AWD_I[i][1], true, Apartment_AWD_I[i][2])
    stat_set_int(Apartment_AWD_I[i][1], false, Apartment_AWD_I[i][2])
    for i = 1, #Apartment_AWD_B do
    stat_set_bool(Apartment_AWD_B[i][1], true, Apartment_AWD_B[i][2])
    stat_set_bool(Apartment_AWD_B[i][1], false, Apartment_AWD_B[i][2])
end
end
end)
end
    menu.add_feature("Fleeca Heist Payout 10 MILLIONs (You only)", "toggle", CLASSIC_HEISTS.id, function(a)
    menu.notify("You need to be the host of this heist\n\nUse this option in the final heist (in the screen for choosing the percentage)\n\nDo not try to change player2 percentage, it will not work for him", "", 12, 0x6414F0FF)
    menu.notify("Use it with caution.\n\nIf you over-use it on a fresh new account, it can cause bans on your account!\n\nLeave it on until you complete the heist", "", 12, 0x6414F0FF)
    while a.on do
    script.set_global_i(1671773 + 3008 +1,7000)
    if not a.on then return end
    system.wait(0)
    end
end)
------------- LS CONTRACTS
    menu.add_feature("» Increase Contracts payout (1 Million) (you only)", "toggle", LS_ROBBERY.id, function(rob)
    menu.notify("Always keep this option actived before starting a contract\n\nThere is a cooldown for the payment, it can be between 15-20 minutes if you plan to repeat.","Heist Control", 5, 0x6400FA14)
    while rob.on do
        script.set_global_i(262145+30515+0,1000000) 
        script.set_global_i(262145+30515+1,1000000) 
        script.set_global_i(262145+30515+2,1000000)
        script.set_global_i(262145+30515+3,1000000) 
        script.set_global_i(262145+30515+4,1000000)
        script.set_global_i(262145+30515+5,1000000) 
        script.set_global_i(262145+30515+6,1000000) 
        script.set_global_i(262145+30515+7,1000000) 
        script.set_global_i(262145+30514,1000000) -- reward when joining a contract
        script.set_global_i(262145+30511,0) -- IA cut removal
    if not rob.on then return end
    system.wait(0)
    end
end)

do
local LS_CONTRACT_0_UD = {
    {"TUNER_GEN_BS", 12543},
    {"TUNER_CURRENT", 0}
}
    menu.add_feature("» Union Depository", "action", LS_ROBBERY.id, function()
        for i = 1, #LS_CONTRACT_0_UD do
        menu.notify("Changes will only happen if you are outside your Auto-Shop!\n\n\nUnion Depository Contract ready to play", "Heist Control", 3, 0x64F06414)
        stat_set_int(LS_CONTRACT_0_UD[i][1], true, LS_CONTRACT_0_UD[i][2])
    end
    end)
end

do
local LS_CONTRACT_1_SD = {
     {"TUNER_GEN_BS", 4351},
    {"TUNER_CURRENT", 1}
}
    menu.add_feature("» The Superdollar Deal", "action", LS_ROBBERY.id, function()
        for i = 1, #LS_CONTRACT_1_SD do
        menu.notify("Changes will only happen if you are outside your Auto-Shop!\n\n\nThe Superdollar Deal Contract ready to play", "Heist Control", 3, 0x64F06414)
        stat_set_int(LS_CONTRACT_1_SD[i][1], true, LS_CONTRACT_1_SD[i][2])
    end
    end)
end

do
local LS_CONTRACT_2_BC = {
    {"TUNER_GEN_BS", 12543},
    {"TUNER_CURRENT", 2}
}
    menu.add_feature("» The Bank Contract", "action", LS_ROBBERY.id, function()
    for i = 1, #LS_CONTRACT_2_BC do
    menu.notify("Changes will only happen if you are outside your Auto-Shop!\n\n\nThe Bank Contract ready to play", "Heist Control", 3, 0x64F06414)
    stat_set_int(LS_CONTRACT_2_BC[i][1], true, LS_CONTRACT_2_BC[i][2])
    end
    end)
end

do
local LS_CONTRACT_3_ECU = {
    {"TUNER_GEN_BS", 12543},
    {"TUNER_CURRENT", 3}
}
    menu.add_feature("» The ECU Job", "action", LS_ROBBERY.id, function()
        for i = 1, #LS_CONTRACT_3_ECU do
        menu.notify("Changes will only happen if you are outside your Auto-Shop!\n\n\nThe ECU Job Contract ready to play", "Heist Control", 3, 0x64F06414)
        stat_set_int(LS_CONTRACT_3_ECU[i][1], true, LS_CONTRACT_3_ECU[i][2])
    end
    end)
end

do
local LS_CONTRACT_4_PRSN = {
    {"TUNER_GEN_BS", 12543},
    {"TUNER_CURRENT", 4}
} 
    menu.add_feature("» The Prison Contract", "action", LS_ROBBERY.id, function()
        for i = 1, #LS_CONTRACT_4_PRSN do
        menu.notify("Changes will only happen if you are outside your Auto-Shop!\n\n\nThe Prison Contract ready to play", "Heist Control", 3, 0x64F06414)
        stat_set_int(LS_CONTRACT_4_PRSN[i][1], true, LS_CONTRACT_4_PRSN[i][2])
    end
    end)
end

do
local LS_CONTRACT_5_AGC = {
    {"TUNER_GEN_BS", 12543},
    {"TUNER_CURRENT", 5}
}
    menu.add_feature("» The Agency Deal", "action", LS_ROBBERY.id, function()
        for i = 1, #LS_CONTRACT_5_AGC do
        menu.notify("Changes will only happen if you are outside your Auto-Shop!\n\n\nThe Agency Deal Contract ready to play", "Heist Control", 3, 0x64F06414)
        stat_set_int(LS_CONTRACT_5_AGC[i][1], true, LS_CONTRACT_5_AGC[i][2])
    end
    end)
end

do
local LS_CONTRACT_6_LOST = {
    {"TUNER_GEN_BS", 12543},
    {"TUNER_CURRENT", 6}
}
    menu.add_feature("» The Lost Contract", "action", LS_ROBBERY.id, function()
    for i = 1, #LS_CONTRACT_6_LOST do
    menu.notify("Changes will only happen if you are outside your Auto-Shop!\n\n\nThe Lost Contract ready to play", "Heist Control", 3, 0x64F06414)
    stat_set_int(LS_CONTRACT_6_LOST[i][1], true, LS_CONTRACT_6_LOST[i][2])
    end
    end)
end

do
local LS_CONTRACT_7_DATA = {
    {"TUNER_GEN_BS", 12543},
    {"TUNER_CURRENT", 7}
}
    menu.add_feature("» The Data Contract", "action", LS_ROBBERY.id, function()
        for i = 1, #LS_CONTRACT_7_DATA do
        menu.notify("Changes will only happen if you are outside your Auto-Shop!\n\n\nThe Data Contract ready to play", "Heist Control", 3, 0x64F06414)
        stat_set_int(LS_CONTRACT_7_DATA[i][1], true, LS_CONTRACT_7_DATA[i][2])
    end
    end)
end

do
local LS_CONTRACT_MSS_ONLY = {
    {"TUNER_GEN_BS", -1}
}
    menu.add_feature("» Complete missions (only)", "action", LS_ROBBERY.id, function()
    for i = 1, #LS_CONTRACT_MSS_ONLY do
    menu.notify("Changes will only happen if you are outside your Auto-Shop\n\nMissions completed","Heist Control", 3, 0x64F06414)
    stat_set_int(LS_CONTRACT_MSS_ONLY[i][1], true, LS_CONTRACT_MSS_ONLY[i][2])
    end
    end)
end

do
local LS_CONTRACT_MISSION_RST = {
    {"TUNER_GEN_BS", 12467}
}
menu.add_feature("» Reset Missions (only)", "action", LS_ROBBERY.id, function()
    for i = 1, #LS_CONTRACT_MISSION_RST do
    menu.notify("Changes will only happen if you are outside your Auto-Shop\n\nMissions reseted","Heist Control", 3, 0x64F06414)
    stat_set_int(LS_CONTRACT_MISSION_RST[i][1], true, LS_CONTRACT_MISSION_RST[i][2])
    end
    end)
end

do
local LS_CONTRACT_RST = {
    {"TUNER_GEN_BS", 8371},
    {"TUNER_CURRENT", -1}
}
menu.add_feature("» Reset Contracts", "action", LS_ROBBERY.id, function()
    for i = 1, #LS_CONTRACT_RST do
    menu.notify("Changes will only happen if you are outside your Auto-Shop\n\nContract reseted","Heist Control", 3, 0x64F06414)
    stat_set_int(LS_CONTRACT_RST[i][1], true, LS_CONTRACT_RST[i][2])
end
end)
end
-------------------- MASTER UNLOCKER AREA

    local TUNERS_DLC = menu.add_feature("» LS Tuners DLC", "parent", MASTER_UNLOCKR.id)
    menu.add_feature("» Unlock Drip Fed Vehicles", "toggle", TUNERS_DLC.id, function(bit)
        menu.notify("You can leave this option active if you want to play with the new cars in missions, heists and free mode\n\nThe cars are available for purchase!", "Master Unlocker", 5, 0x64F06414)
        while bit.on do 
        script.set_global_i(262145 + 30494, 1)
        script.set_global_i(262145 + 30498, 1)
        script.set_global_i(262145 + 30499, 1)
        script.set_global_i(262145 + 30500, 1)
        script.set_global_i(262145 + 30488, 1)
        script.set_global_i(262145 + 30486, 1)
        script.set_global_i(262145 + 30493, 1)
        system.wait(0)
        if not bit.on then return end
    end
    end)

    menu.add_feature("» Unlock Drip Fed Outfits", "action", TUNERS_DLC.id, function()
        menu.notify("Sprunk Bodysuit\nCola Parachute Bag\nSprunk Parachute Bag\nHalloween Parachute Bag\nLos Santos Customs tee-shirt\nKnuckleduster Tee\nRampage Tee", "", 15, 0x64F06414)
        menu.notify("Several items have been unlocked:\n\nPenitentiary Coverall outfit (delayed)\nBanshee Logo black & blue t-shirt\nBorn X Raised black, blue and white t-shirt\nCircoloco Tee\nBaseball Bat Tee\nWasted! Tee\nRockstar Games Typeface Tee\nSprunk x eCola", "", 15, 0x64F06414)
        script.set_global_i(262145 + 30657, 1)
        script.set_global_i(262145 + 30658, 1)
        script.set_global_i(262145 + 30659, 1)
        script.set_global_i(262145 + 30660, 1)
        script.set_global_i(262145 + 30661, 1)
        script.set_global_i(262145 + 30662, 1)
        script.set_global_i(262145 + 30663, 1)
        script.set_global_i(262145 + 30664, 1)
        script.set_global_i(262145 + 30665, 1)
        script.set_global_i(262145 + 30666, 1)
        script.set_global_i(262145 + 30667, 1)
        script.set_global_i(262145 + 30668, 1)
        script.set_global_i(262145 + 30669, 1)
        script.set_global_i(262145 + 30670, 1)
        script.set_global_i(262145 + 30671, 1)
        script.set_global_i(262145 + 30672, 1)
        script.set_global_i(262145 + 30673, 1)
        script.set_global_i(262145 + 30674, 1)
        script.set_global_i(262145 + 30675, 1)
        script.set_global_i(262145 + 30676, 1)
        script.set_global_i(262145 + 30677, 1)
        script.set_global_i(262145 + 30678, 1)
        script.set_global_i(262145 + 30679, 1)
        script.set_global_i(2595595,0)
    end)
do
    local LS_TUNERS_DLC_BL = {
    {"AWD_CAR_CLUB", true},
    {"AWD_PRO_CAR_EXPORT", true},
    {"AWD_UNION_DEPOSITORY", true},
    {"AWD_MILITARY_CONVOY", true},
    {"AWD_FLEECA_BANK", true},
    {"AWD_FREIGHT_TRAIN", true},
    {"AWD_BOLINGBROKE_ASS", true},
    {"AWD_IAA_RAID", true},
    {"AWD_METH_JOB", true},
    {"AWD_BUNKER_RAID", true},
    {"AWD_STRAIGHT_TO_VIDEO", true},
    {"AWD_MONKEY_C_MONKEY_DO", true},
    {"AWD_TRAINED_TO_KILL", true},
    {"AWD_DIRECTOR", true}
}
local LS_TUNERS_DLC_IT = {
    {"AWD_CAR_CLUB_MEM", 100},
    {"AWD_SPRINTRACER", 50},
    {"AWD_STREETRACER", 50},
    {"AWD_PURSUITRACER", 50},
    {"AWD_TEST_CAR", 240},
    {"AWD_AUTO_SHOP", 50},
    {"AWD_CAR_EXPORT", 100},
    {"AWD_GROUNDWORK", 40},
    {"AWD_ROBBERY_CONTRACT", 100},
    {"AWD_FACES_OF_DEATH", 100}
}
    menu.add_feature("» Unlock Awards", "action", TUNERS_DLC.id, function()
     menu.notify("Tuners Awards Unlocked", "Master Unlocker", 4, 257818)
    for i = 1, #LS_TUNERS_DLC_IT do
        stat_set_int(LS_TUNERS_DLC_IT[i][1], true, LS_TUNERS_DLC_IT[i][2])
    for i = 2, #LS_TUNERS_DLC_BL do
        stat_set_bool(LS_TUNERS_DLC_BL[i][1], true, LS_TUNERS_DLC_BL[i][2])
            end
        end
    end)
end

do
local LS_TUNERS_PRIZE_BL = {
    {"CARMEET_PV_CHLLGE_CMPLT", true},
    {"CARMEET_PV_CLMED", false}
}
--local LS_TUNERS_PRICE_IT = {
 --   {"CARMEET_PV_CHLLGE_PRGRSS",0},
 --   {"CARMEET_PV_CHLLGE_POXIS", -1}
--}
    menu.add_feature("» Unlock Vehicle Prize", "action", TUNERS_DLC.id, function()
        menu.notify("Task Completed", "Master Unlocker", 4, 257818)
        for i = 1, #LS_TUNERS_PRIZE_BL do
            stat_set_bool(LS_TUNERS_PRIZE_BL[i][1], true, LS_TUNERS_PRIZE_BL[i][2])
        --for i = 2, #LS_TUNERS_PRICE_IT do
          --  stat_set_int(LS_TUNERS_PRICE_IT[i][1], true, LS_TUNERS_PRICE_IT[i][2])
        end
    --end
end)
end

    menu.add_feature("» Valentine Unlocker", "action", MASTER_UNLOCKR.id, function()
        script.set_global_i(262145+6770,1)
        script.set_global_i(262145+11733,1)
        script.set_global_i(262145+11734,1)
        script.set_global_i(262145+11735,1)
        script.set_global_i(262145+11736,1)
        script.set_global_i(262145+11737,1)
        script.set_global_i(262145+13100,1)
    end)

    menu.add_feature("» Independence Day Unlocker", "action", MASTER_UNLOCKR.id, function()
        script.set_global_i(262145+7965,1)
        script.set_global_i(262145+7970,1)
        script.set_global_i(262145+7971,1)
        script.set_global_i(262145+7972,1)
        script.set_global_i(262145+7973,1)
        script.set_global_i(262145+7974,1)
        script.set_global_i(262145+7975,1)
        script.set_global_i(262145+7978,1)
        script.set_global_i(262145+7979,1)
        script.set_global_i(262145+7980,1)
        script.set_global_i(262145+7981,1)
        script.set_global_i(262145+7982,1)
        script.set_global_i(262145+7983,1)
        script.set_global_i(262145+7984,1)
        script.set_global_i(262145+7985,1)
        script.set_global_i(262145+7986,1)
        script.set_global_i(262145+7987,1)
        script.set_global_i(262145+7988,1)
        script.set_global_i(262145+7989,1)
        script.set_global_i(262145+7990,1)
        script.set_global_i(262145+7991,1)
        script.set_global_i(262145+7992,1)
        script.set_global_i(262145+7993,1)
        script.set_global_i(262145+7994,1)
        script.set_global_i(262145+7995,1)
        script.set_global_i(262145+8003,1) -- from now not related to independence
        script.set_global_i(262145+8004,1)
        script.set_global_i(262145+8005,1)
        script.set_global_i(262145+8006,1)
        script.set_global_i(262145+8007,1)
        script.set_global_i(262145+8008,1)
        script.set_global_i(262145+8009,1)
end)

    menu.add_feature("» Halloween Unlocker", "action", MASTER_UNLOCKR.id, function()
        script.set_global_i(262145+11699,1) --turn on
        script.set_global_i(262145+11747,1)
        script.set_global_i(262145+11747,1)
        script.set_global_i(262145+11739,1)
        script.set_global_i(262145+11744,1)
        script.set_global_i(262145+11745,1)
        script.set_global_i(262145+11746,1)
        script.set_global_i(262145+11748,1)
        script.set_global_i(262145+11749,1)
        script.set_global_i(262145+11750,1)
        script.set_global_i(262145+11754,1)
        script.set_global_i(262145+11755,1)
        script.set_global_i(262145+11756,1)
        script.set_global_i(262145+11762,1)
        script.set_global_i(262145+12405,1)
        script.set_global_i(262145+17200,1)
        script.set_global_i(262145+12266,1)
        script.set_global_i(262145+12267,1)
        script.set_global_i(262145+12268,1)
        script.set_global_i(262145+12269,1)
        script.set_global_i(262145+12270,1)
        script.set_global_i(262145+12271,1)
        script.set_global_i(262145+12272,1)
        script.set_global_i(262145+12273,1)
        script.set_global_i(262145+12274,1)
        script.set_global_i(262145+12275,1)
        script.set_global_i(262145+12276,1)
        script.set_global_i(262145+12277,1)
        script.set_global_i(262145+12278,1)
        script.set_global_i(262145+12279,1)
        script.set_global_i(262145+12280,1)
        script.set_global_i(262145+12281,1)
        script.set_global_i(262145+12282,1)
        script.set_global_i(262145+12283,1)
        script.set_global_i(262145+12284,1)
        script.set_global_i(262145+12285,1)
        script.set_global_i(262145+12286,1)
        script.set_global_i(262145+12287,1)
    end)

    menu.add_feature("» Unlock Returning Player Bonus + Up-N-Atomizer", "action", MASTER_UNLOCKR.id,function()
        script.set_global_i(151130,2)
        script.set_global_i(102284,90)
        script.set_global_i(102285,1)
    end)

    menu.add_feature("» Cayo Perico unlockables", "action", MASTER_UNLOCKR.id, function()
    menu.notify("These items will be in the store unlocked for purchase\n\nT-shirts\nJackets\nSweaters\nCaps\nGlow glasses\nGlow necklaces\nSpecial glasses\nDJ T-shirts", "Master Unlocker", 5, 0x64F06414)
        -- T-shirts/Jackets/Sweaters
    script.set_global_i(262145 + 29688, 1)
    script.set_global_i(262145 + 29689, 1)
    script.set_global_i(262145 + 29690, 1)
    script.set_global_i(262145 + 29691, 1)
    script.set_global_i(262145 + 29692, 1)
    script.set_global_i(262145 + 29693, 1)
    script.set_global_i(262145 + 29694, 1)
    script.set_global_i(262145 + 29695, 1)
    script.set_global_i(262145 + 29696, 1)
    script.set_global_i(262145 + 29697, 1)
    script.set_global_i(262145 + 29698, 1)
    script.set_global_i(262145 + 29699, 1)
    script.set_global_i(262145 + 29700, 1)
    script.set_global_i(262145 + 29701, 1)
    script.set_global_i(262145 + 29702, 1)
    script.set_global_i(262145 + 29703, 1)
    script.set_global_i(262145 + 29704, 1)
    script.set_global_i(262145 + 29705, 1)
    script.set_global_i(262145 + 29706, 1)
    script.set_global_i(262145 + 29707, 1)
    -- Shorts
    script.set_global_i(262145 + 29708, 1)
    script.set_global_i(262145 + 29709, 1)
    script.set_global_i(262145 + 29710, 1)
    script.set_global_i(262145 + 29711, 1)
    -- Caps
    script.set_global_i(262145 + 29712, 1)
    script.set_global_i(262145 + 29713, 1)
    script.set_global_i(262145 + 29714, 1)
    script.set_global_i(262145 + 29715, 1)
    script.set_global_i(262145 + 29716, 1)
            -- Glow bracelets
    script.set_global_i(262145 + 29717, 1)
    script.set_global_i(262145 + 29718, 1)
    script.set_global_i(262145 + 29719, 1)
    script.set_global_i(262145 + 29720, 1)
    script.set_global_i(262145 + 29721, 1)
    script.set_global_i(262145 + 29722, 1)
    script.set_global_i(262145 + 29723, 1)
    script.set_global_i(262145 + 29724, 1)
    script.set_global_i(262145 + 29725, 1)
    script.set_global_i(262145 + 29726, 1)
    script.set_global_i(262145 + 29727, 1)
    script.set_global_i(262145 + 29728, 1)
            -- Glow glasses
    script.set_global_i(262145 + 29729, 1)
    script.set_global_i(262145 + 29730, 1)
    script.set_global_i(262145 + 29731, 1)
    script.set_global_i(262145 + 29732, 1)
    script.set_global_i(262145 + 29733, 1)
    script.set_global_i(262145 + 29734, 1)
    script.set_global_i(262145 + 29735, 1)
    script.set_global_i(262145 + 29736, 1)
    script.set_global_i(262145 + 29737, 1)
    script.set_global_i(262145 + 29738, 1)
    script.set_global_i(262145 + 29739, 1)
    script.set_global_i(262145 + 29740, 1)
    -- Glow necklaces
    script.set_global_i(262145 + 29741, 1)
    script.set_global_i(262145 + 29742, 1)
    script.set_global_i(262145 + 29743, 1)
    script.set_global_i(262145 + 29744, 1)
    script.set_global_i(262145 + 29745, 1)
    script.set_global_i(262145 + 29746, 1)
    script.set_global_i(262145 + 29747, 1)
    script.set_global_i(262145 + 29748, 1)
    script.set_global_i(262145 + 29749, 1)
    script.set_global_i(262145 + 29750, 1)
    script.set_global_i(262145 + 29751, 1)
    script.set_global_i(262145 + 29752, 1)
    script.set_global_i(262145 + 29753, 1)
    script.set_global_i(262145 + 29754, 1)
    script.set_global_i(262145 + 29755, 1)
    script.set_global_i(262145 + 29756, 1)
            -- Full head masks
    script.set_global_i(262145 + 29761, 1)
    script.set_global_i(262145 + 29762, 1)
    script.set_global_i(262145 + 29763, 1)
    script.set_global_i(262145 + 29764, 1)
    script.set_global_i(262145 + 29765, 1)
    script.set_global_i(262145 + 29766, 1)
    script.set_global_i(262145 + 29767, 1)
    script.set_global_i(262145 + 29768, 1)
    script.set_global_i(262145 + 29769, 1)
    script.set_global_i(262145 + 29770, 1)
    script.set_global_i(262145 + 29771, 1)
    script.set_global_i(262145 + 29772, 1)
    script.set_global_i(262145 + 29773, 1)
    script.set_global_i(262145 + 29774, 1)
    script.set_global_i(262145 + 29775, 1)
    script.set_global_i(262145 + 29776, 1)
    script.set_global_i(262145 + 29777, 1)
    script.set_global_i(262145 + 29778, 1)
     script.set_global_i(262145 + 29779, 1)
    script.set_global_i(262145 + 29780, 1)
            -- Special glasses
    script.set_global_i(262145 + 30345, 1)
    script.set_global_i(262145 + 30346, 1)
    script.set_global_i(262145 + 30347, 1)
    script.set_global_i(262145 + 30348, 1)
    script.set_global_i(262145 + 30349, 1)
    script.set_global_i(262145 + 30350, 1)
    script.set_global_i(262145 + 30351, 1)
    script.set_global_i(262145 + 30352, 1)
    script.set_global_i(262145 + 30353, 1)
    script.set_global_i(262145 + 30354, 1)
    script.set_global_i(262145 + 30355, 1)
    script.set_global_i(262145 + 30356, 1)
    script.set_global_i(262145 + 30357, 1)
    script.set_global_i(262145 + 30358, 1)
    script.set_global_i(262145 + 30359, 1)
    script.set_global_i(262145 + 30360, 1)
    script.set_global_i(262145 + 30361, 1)
    script.set_global_i(262145 + 30362, 1)
    script.set_global_i(262145 + 30363, 1)
    script.set_global_i(262145 + 30364, 1)
    script.set_global_i(262145 + 30365, 1)
    script.set_global_i(262145 + 30366, 1)
    script.set_global_i(262145 + 30367, 1)
    script.set_global_i(262145 + 30368, 1)
    script.set_global_i(262145 + 30369, 1)
    script.set_global_i(262145 + 30370, 1)
    script.set_global_i(262145 + 30371, 1)
    script.set_global_i(262145 + 30372, 1)
    script.set_global_i(262145 + 30373, 1)
    script.set_global_i(262145 + 30374, 1)
    script.set_global_i(262145 + 30375, 1)
    script.set_global_i(262145 + 30376, 1)
    script.set_global_i(262145 + 30377, 1)
    script.set_global_i(262145 + 30378, 1)
    script.set_global_i(262145 + 30379, 1)
    script.set_global_i(262145 + 30380, 1)
            -- DJ's T-shirts
    script.set_global_i(262145 + 30390, 1)
    script.set_global_i(262145 + 30391, 1)
    script.set_global_i(262145 + 30392, 1)
    script.set_global_i(262145 + 30393, 1)
    script.set_global_i(262145 + 30394, 1)
    script.set_global_i(262145 + 30395, 1)
end)

local XMAS_FEATURES = menu.add_feature("» XMAS Utilities", "parent", MASTER_UNLOCKR.id)
do
local ML_UNLK_XMAS = {
    {"MPPLY_XMASLIVERIES0", 2147483647},
    {"MPPLY_XMASLIVERIES1", 2147483647},
    {"MPPLY_XMASLIVERIES2", 2147483647},
    {"MPPLY_XMASLIVERIES3", 2147483647},
    {"MPPLY_XMASLIVERIES4", 2147483647},
    {"MPPLY_XMASLIVERIES5", 2147483647},
    {"MPPLY_XMASLIVERIES6", 2147483647},
    {"MPPLY_XMASLIVERIES7", 2147483647},
    {"MPPLY_XMASLIVERIES8", 2147483647},
    {"MPPLY_XMASLIVERIES9", 2147483647},
    {"MPPLY_XMASLIVERIES10", 2147483647},
    {"MPPLY_XMASLIVERIES11", 2147483647},
    {"MPPLY_XMASLIVERIES12", 2147483647},
    {"MPPLY_XMASLIVERIES13", 2147483647},
    {"MPPLY_XMASLIVERIES14", 2147483647},
    {"MPPLY_XMASLIVERIES15", 2147483647},
    {"MPPLY_XMASLIVERIES16", 2147483647},
    {"MPPLY_XMASLIVERIES17", 2147483647},
    {"MPPLY_XMASLIVERIES18", 2147483647},
    {"MPPLY_XMASLIVERIES19", 2147483647},
    {"MPPLY_XMASLIVERIES20", 2147483647}
}
    menu.add_feature("» Unlock XMAS Liveries", "action", XMAS_FEATURES.id, function()
    menu.notify("All Liveries Unlocked", "Master Unlocker", 3, 0x6400FA14)
        for i = 1, #ML_UNLK_XMAS do
            stat_set_int(ML_UNLK_XMAS[i][1], false, ML_UNLK_XMAS[i][2])
        end
    end)

    menu.add_feature("» Unlock XMAS Content", "action", XMAS_FEATURES.id, function()
        script.set_global_i(262145+12414,1)
        script.set_global_i(262145+12416,1)
        script.set_global_i(262145+25334,1)
        script.set_global_i(262145+25335,1)
        script.set_global_i(262145 + 9154,1)
        script.set_global_i(262145 + 9155,1)
        script.set_global_i(262145 + 9156,1)
        script.set_global_i(262145 + 12413,1)
        script.set_global_i(262145 + 23092,1)
        script.set_global_i(262145 + 23093,1)
        script.set_global_i(262145 + 23094,1)
        script.set_global_i(262145 + 23095,1)
        script.set_global_i(262145 + 4735,1)
        script.set_global_i(262145 + 8891,1)
        script.set_global_i(262145 + 9098,0)
        script.set_global_i(262145 + 9099,0)
        script.set_global_i(262145 + 9100,0)
        script.set_global_i(262145 + 9101,0)
        script.set_global_i(262145 + 9102,0)
        script.set_global_i(262145 + 9103,0)
        script.set_global_i(262145 + 9104,0) 
        script.set_global_i(262145 + 9106,1)
        script.set_global_i(262145 + 9107,1)
        script.set_global_i(262145 + 9108,1)
        script.set_global_i(262145 + 9109,1)
        script.set_global_i(262145 + 9110,1)
        script.set_global_i(262145 + 9111,1)
        script.set_global_i(262145 + 9112,1)
        script.set_global_i(262145 + 9113,1)
        script.set_global_i(262145 + 9114,1)
        script.set_global_i(262145 + 9115,1)
        script.set_global_i(262145 + 9116,1)
        script.set_global_i(262145 + 9117,1)
        script.set_global_i(262145 + 9118,1)
        script.set_global_i(262145 + 9119,1)
        script.set_global_i(262145 + 9120,1)
        script.set_global_i(262145 + 9121,1)
        script.set_global_i(262145 + 9122,1)
        script.set_global_i(262145 + 9123,1)
        script.set_global_i(262145 + 9124,1)
        script.set_global_i(262145 + 9125,1)
        script.set_global_i(262145 + 9126,1)
        script.set_global_i(262145 + 9127,1)
        script.set_global_i(262145 + 9128,1)
        script.set_global_i(262145 + 9129,1)
        script.set_global_i(262145 + 9130,1)
        script.set_global_i(262145 + 9131,1)
        script.set_global_i(262145 + 9132,1)
        script.set_global_i(262145 + 9133,1)
        script.set_global_i(262145 + 9134,1)
        script.set_global_i(262145 + 9135,1)
        script.set_global_i(262145 + 9136,1)
        script.set_global_i(262145 + 9137,1)
        script.set_global_i(262145 + 9138,1)
        script.set_global_i(262145 + 9139,1)
        script.set_global_i(262145 + 9140,1)
        script.set_global_i(262145 + 9141,1)
        script.set_global_i(262145 + 9142,1)
        script.set_global_i(262145 + 9143,1)
        script.set_global_i(262145 + 9144,1)
        script.set_global_i(262145 + 9145,1)
        script.set_global_i(262145 + 9146,1)
        script.set_global_i(262145 + 9147,1)
        script.set_global_i(262145 + 9148,1)
        script.set_global_i(262145 + 9149,1)
        script.set_global_i(262145 + 9150,1)
        script.set_global_i(262145 + 9151,1)
        script.set_global_i(262145 + 9152,1)
        script.set_global_i(262145 + 9153,1)
        script.set_global_i(262145 + 12519,1) -- from 2105
        script.set_global_i(262145 + 12520,1) -- from 2105
        script.set_global_i(262145 + 12521,1)
        script.set_global_i(262145 + 12522,1)
        script.set_global_i(262145 + 18822,1) -- from 2016
        script.set_global_i(262145 + 18823,1)
        script.set_global_i(262145 + 18824,1)
        script.set_global_i(262145 + 18825,1)
        script.set_global_i(262145 + 23113,1) -- from 2017
        script.set_global_i(262145 + 23114,1)
        script.set_global_i(262145 + 23115,1)
        script.set_global_i(262145 + 23116,1)
        script.set_global_i(262145 + 25337,1) -- from 2018
        script.set_global_i(262145 + 25338,1)
        script.set_global_i(262145 + 25339,1)
        script.set_global_i(262145 + 25340,1)
        script.set_global_i(262145 + 28188,1) -- from 2019
        script.set_global_i(262145 + 28189,1)
        script.set_global_i(262145 + 28190,1)
        script.set_global_i(262145 + 28191,1)
        script.set_global_i(262145 + 30381,1) -- from 2020
    end)
end

menu.add_feature("» Unlock Hats,T-shirts & Shirts", "action", MASTER_UNLOCKR.id, function(hats)
    script.set_global_i(262145 + 12294,1)
    script.set_global_i(262145 + 12295,1)
    script.set_global_i(262145 + 12296,1)
    script.set_global_i(262145 + 12297,1)
    script.set_global_i(262145 + 12298,1)
    script.set_global_i(262145 + 12299,1)
    script.set_global_i(262145 + 12300,1)
    script.set_global_i(262145 + 12301,1)
    script.set_global_i(262145 + 12302,1)
    script.set_global_i(262145 + 12303,1)
    --
    script.set_global_i(262145 + 14885,1)
    script.set_global_i(262145 + 14886,1)
    script.set_global_i(262145 + 14887,1)
    script.set_global_i(262145 + 14888,1)
    script.set_global_i(262145 + 14889,1)
    script.set_global_i(262145 + 14890,1)
    script.set_global_i(262145 + 14891,1)
    script.set_global_i(262145 + 14892,1)
    script.set_global_i(262145 + 14893,1)
    script.set_global_i(262145 + 14894,1)
    script.set_global_i(262145 + 14895,1)
    script.set_global_i(262145 + 14896,1)
    script.set_global_i(262145 + 14897,1)
    script.set_global_i(262145 + 14898,1)
    script.set_global_i(262145 + 14899,1)
    script.set_global_i(262145 + 23885,1)
    script.set_global_i(262145 + 23885,1)
    script.set_global_i(262145 + 23886,1)
    script.set_global_i(262145 + 23887,1)
    script.set_global_i(262145 + 23888,1)
    script.set_global_i(262145 + 23889,1)
    script.set_global_i(262145 + 23890,1)
    script.set_global_i(262145 + 23893,1)
    script.set_global_i(262145 + 23895,1)
    script.set_global_i(262145 + 23898,1)
    --
    script.set_global_i(262145 + 23901,1)
    script.set_global_i(262145 + 23902,1)
    script.set_global_i(262145 + 23903,1)
    script.set_global_i(262145 + 23904,1)
    script.set_global_i(262145 + 23905,1)
    script.set_global_i(262145 + 23906,1)
    script.set_global_i(262145 + 23907,1)
    script.set_global_i(262145 + 23908,1)
    script.set_global_i(262145 + 23909,1)
    script.set_global_i(262145 + 23910,1)
    --
    script.set_global_i(262145 + 17244,1)
    script.set_global_i(262145 + 17245,1)
    script.set_global_i(262145 + 17246,1)
    script.set_global_i(262145 + 17247,1)
    script.set_global_i(262145 + 17248,1)
    script.set_global_i(262145 + 17249,1)
    script.set_global_i(262145 + 17250,1)
    script.set_global_i(262145 + 17251,1)
    script.set_global_i(262145 + 17252,1)
    script.set_global_i(262145 + 17253,1)
    script.set_global_i(262145 + 17254,1)
    script.set_global_i(262145 + 17255,1)
    script.set_global_i(262145 + 17256,1)
    script.set_global_i(262145 + 17257,1)
    script.set_global_i(262145 + 17258,1)
    script.set_global_i(262145 + 17259,1)
    script.set_global_i(262145 + 17260,1)
    script.set_global_i(262145 + 17261,1)
    script.set_global_i(262145 + 17262,1)
    script.set_global_i(262145 + 17263,1)
    script.set_global_i(262145 + 17264,1)
    script.set_global_i(262145 + 17265,1)
    --
    script.set_global_i(262145 + 11658,1)
    script.set_global_i(262145 + 11659,1)
    script.set_global_i(262145 + 11660,1)
    script.set_global_i(262145 + 11661,1)
    script.set_global_i(262145 + 11662,1)
    script.set_global_i(262145 + 11663,1)
    script.set_global_i(262145 + 11664,1)
    script.set_global_i(262145 + 11665,1)
    script.set_global_i(262145 + 11666,1)
    script.set_global_i(262145 + 11667,1)
    script.set_global_i(262145 + 12304,1)
    script.set_global_i(262145 + 12305,1)
    script.set_global_i(262145 + 12306,1)
    script.set_global_i(262145 + 12307,1)
    script.set_global_i(262145 + 12308,1)
    script.set_global_i(262145 + 12309,1)
    script.set_global_i(262145 + 12310,1)
    script.set_global_i(262145 + 12311,1)
    script.set_global_i(262145 + 12312,1)
    script.set_global_i(262145 + 12313,1)
    script.set_global_i(262145 + 12314,1)
    script.set_global_i(262145 + 12315,1)
    script.set_global_i(262145 + 12316,1)
    --
    script.set_global_i(262145 + 23884,1)
    script.set_global_i(262145 + 23889,1)
    script.set_global_i(262145 + 23891,1)
    script.set_global_i(262145 + 23892,1)
    script.set_global_i(262145 + 23893,1)
    script.set_global_i(262145 + 23894,1)
    script.set_global_i(262145 + 23895,1)
    script.set_global_i(262145 + 23896,1)
    script.set_global_i(262145 + 23897,1)
    script.set_global_i(262145 + 24409,1)
    script.set_global_i(262145 + 24410,1)
    script.set_global_i(262145 + 24411,1)
    script.set_global_i(262145 + 24412,1)
    script.set_global_i(262145 + 24413,1)
    script.set_global_i(262145 + 24414,1)
    script.set_global_i(262145 + 24415,1)
    script.set_global_i(262145 + 24416,1)
    script.set_global_i(262145 + 24417,1)
    script.set_global_i(262145 + 24418,1) 
    script.set_global_i(262145 + 24419,1)
    script.set_global_i(262145 + 24420,1)
    script.set_global_i(262145 + 24421,1)
    script.set_global_i(262145 + 24422,1)
    script.set_global_i(262145 + 24423,1)
    script.set_global_i(262145 + 24424,1)
    script.set_global_i(262145 + 24425,1)
    script.set_global_i(262145 + 24426,1)
    script.set_global_i(262145 + 24427,1)
    script.set_global_i(262145 + 24428,1)
    --
    script.set_global_i(262145 + 24585,1)
    script.set_global_i(262145 + 24586,1)
    script.set_global_i(262145 + 24587,1)
    script.set_global_i(262145 + 24588,1)
    script.set_global_i(262145 + 24589,1)
    script.set_global_i(262145 + 24590,1)
    script.set_global_i(262145 + 24591,1)
    script.set_global_i(262145 + 24592,1)
    script.set_global_i(262145 + 24593,1)
    script.set_global_i(262145 + 24594,1)
    script.set_global_i(262145 + 24595,1)
    script.set_global_i(262145 + 24596,1)
    script.set_global_i(262145 + 24597,1)
    script.set_global_i(262145 + 24598,1)
    script.set_global_i(262145 + 24599,1)
    script.set_global_i(262145 + 24600,1)
    script.set_global_i(262145 + 24601,1)
    script.set_global_i(262145 + 24602,1)
    script.set_global_i(262145 + 24603,1)
    script.set_global_i(262145 + 24604,1)
    script.set_global_i(262145 + 24605,1)
    script.set_global_i(262145 + 24606,1)
    script.set_global_i(262145 + 24607,1)
    --
    script.set_global_i(262145 + 20816,1)
    script.set_global_i(262145 + 20820,1)
    script.set_global_i(262145 + 20823,1)
    script.set_global_i(262145 + 20825,1)
    script.set_global_i(262145 + 20830,1)
    script.set_global_i(262145 + 20832,1)
    script.set_global_i(262145 + 20836,1)
    script.set_global_i(262145 + 20839,1)
    --
    script.set_global_i(262145 + 20817,1)
    script.set_global_i(262145 + 20819,1)
    script.set_global_i(262145 + 20821,1)
    script.set_global_i(262145 + 20822,1)
    script.set_global_i(262145 + 20826,1)
    script.set_global_i(262145 + 20829,1)
    script.set_global_i(262145 + 20831,1)
    script.set_global_i(262145 + 20833,1)
    script.set_global_i(262145 + 20834,1)
    script.set_global_i(262145 + 20837,1)
    script.set_global_i(262145 + 20841,1)
    script.set_global_i(262145 + 20842,1)
    script.set_global_i(262145 + 20843,1)
    script.set_global_i(262145 + 20844,1)
    script.set_global_i(262145 + 20845,1)
    script.set_global_i(262145 + 20846,1)
    script.set_global_i(262145 + 20847,1)
    script.set_global_i(262145 + 20848,1)
    script.set_global_i(262145 + 20849,1)
    script.set_global_i(262145 + 20850,1)
    script.set_global_i(262145 + 20851,1)
    script.set_global_i(262145 + 20852,1)
    script.set_global_i(262145 + 20853,1)
    script.set_global_i(262145 + 20290,1)
    --
    script.set_global_i(262145 + 23087,1)
    script.set_global_i(262145 + 23088,1)
    script.set_global_i(262145 + 23089,1)
    script.set_global_i(262145 + 23090,1)
    script.set_global_i(262145 + 23091,1)
    --
    script.set_global_i(262145 + 16503,1)
    script.set_global_i(262145 + 16504,1)
    script.set_global_i(262145 + 16505,1)
    script.set_global_i(262145 + 16506,1)
    script.set_global_i(262145 + 16507,1)
    script.set_global_i(262145 + 16508,1)
    script.set_global_i(262145 + 16509,1)
    --
    script.set_global_i(262145 + 25409,1)
    script.set_global_i(262145 + 25410,1)
    script.set_global_i(262145 + 25411,1)
    script.set_global_i(262145 + 25412,1)
    script.set_global_i(262145 + 25413,1)
    script.set_global_i(262145 + 25414,1)
    script.set_global_i(262145 + 25415,1)
    script.set_global_i(262145 + 25416,1)
    script.set_global_i(262145 + 25417,1)
    script.set_global_i(262145 + 25418,1)
    -- CASINO SHIRT
    script.set_global_i(262145 + 26525,1)
    script.set_global_i(262145 + 26526,1)
    script.set_global_i(262145 + 26527,1)
    script.set_global_i(262145 + 26528,1)
    script.set_global_i(262145 + 26529,1)
    script.set_global_i(262145 + 26530,1)
    script.set_global_i(262145 + 26531,1)
end)

do
local INVTRY_FLL = {
    {"NO_BOUGHT_YUM_SNACKS", 30},
    {"NO_BOUGHT_HEALTH_SNACKS", 15},
    {"NO_BOUGHT_EPIC_SNACKS", 5},
    {"NUMBER_OF_ORANGE_BOUGHT", 10},
    {"NUMBER_OF_BOURGE_BOUGHT", 10},
    {"NUMBER_OF_CHAMP_BOUGHT", 5},
    {"CIGARETTES_BOUGHT", 20},
    {"MP_CHAR_ARMOUR_1_COUNT", 10},
    {"MP_CHAR_ARMOUR_2_COUNT", 10},
    {"MP_CHAR_ARMOUR_3_COUNT", 10},
    {"MP_CHAR_ARMOUR_4_COUNT", 10},
    {"MP_CHAR_ARMOUR_5_COUNT", 10},
    {"BREATHING_APPAR_BOUGHT,", 20}
}
    menu.add_feature("» Refill Inventory", "action", MASTER_UNLOCKR.id, function()
    menu.notify("Inventory Restored", "Master Unlocker", 3, 0x64F06414)
        for i = 1, #INVTRY_FLL do
        stat_set_int(INVTRY_FLL[i][1], true, INVTRY_FLL[i][2])
        end
    end)
end

local ARENA_TOOL = menu.add_feature("» Arena Wars DLC", "parent", MASTER_UNLOCKR.id)

do
local ARENA_W_UNLK = {
    {"ARN_BS_TRINKET_TICKERS", -1},
    {"ARN_BS_TRINKET_SAVED", -1},
    {"AWD_WATCH_YOUR_STEP", 50},
    {"AWD_TOWER_OFFENSE", 50},
    {"AWD_READY_FOR_WAR", 50},
    {"AWD_THROUGH_A_LENS", 50},
    {"AWD_SPINNER", 50},
    {"AWD_YOUMEANBOOBYTRAPS", 50},
    {"AWD_MASTER_BANDITO", 50},
    {"AWD_SITTING_DUCK", 50},
    {"AWD_CROWDPARTICIPATION", 50},
    {"AWD_KILL_OR_BE_KILLED", 50},
    {"AWD_MASSIVE_SHUNT", 50},
    {"AWD_YOURE_OUTTA_HERE", 200},
    {"AWD_WEVE_GOT_ONE", 50},
    {"AWD_ARENA_WAGEWORKER", 1000000},
    {"AWD_TIME_SERVED", 1000},
    {"AWD_TOP_SCORE", 55000},
    {"AWD_CAREER_WINNER", 1000},
    {"ARENAWARS_SP", 209},
    {"ARENAWARS_SKILL_LEVEL", 20},
    {"ARENAWARS_SP_LIFETIME", 209},
    {"ARENAWARS_AP_TIER", 1000},
    {"ARENAWARS_AP_LIFETIME", 47551850},
    {"ARENAWARS_CARRER_UNLK", 44},
    {"ARN_W_THEME_SCIFI", 1000},
    {"ARN_W_THEME_APOC", 1000},
    {"ARN_W_THEME_CONS", 1000},
    {"ARN_W_PASS_THE_BOMB", 1000},
    {"ARN_W_DETONATION", 1000},
    {"ARN_W_ARCADE_RACE", 1000},
    {"ARN_W_CTF", 1000},
    {"ARN_W_TAG_TEAM", 1000},
    {"ARN_W_DESTR_DERBY", 1000},
    {"ARN_W_CARNAGE", 1000},
    {"ARN_W_MONSTER_JAM", 1000},
    {"ARN_W_GAMES_MASTERS", 1000},
    {"ARN_L_PASS_THE_BOMB", 500},
    {"ARN_L_DETONATION", 500},
    {"ARN_L_ARCADE_RACE", 500},
    {"ARN_L_CTF", 500},
    {"ARN_L_TAG_TEAM", 500},
    {"ARN_L_DESTR_DERBY", 500},
    {"ARN_L_CARNAGE", 500},
    {"ARN_L_MONSTER_JAM", 500},
    {"ARN_L_GAMES_MASTERS", 500},
    {"NUMBER_OF_CHAMP_BOUGHT", 1000},
    {"ARN_SPECTATOR_KILLS", 1000},
    {"ARN_LIFETIME_KILLS", 1000},
    {"ARN_LIFETIME_DEATHS", 500},
    {"ARENAWARS_CARRER_WINS", 1000},
    {"ARENAWARS_CARRER_WINT", 1000},
    {"ARENAWARS_MATCHES_PLYD", 1000},
    {"ARENAWARS_MATCHES_PLYDT", 1000},
    {"ARN_SPEC_BOX_TIME_MS", 86400000},
    {"ARN_SPECTATOR_DRONE", 1000},
    {"ARN_SPECTATOR_CAMS", 1000},
    {"ARN_SMOKE", 1000},
    {"ARN_DRINK", 1000},
    {"ARN_VEH_MONSTER", 31000},
    {"ARN_VEH_MONSTER", 41000},
    {"ARN_VEH_MONSTER", 51000},
    {"ARN_VEH_CERBERUS", 1000},
    {"ARN_VEH_CERBERUS2", 1000},
    {"ARN_VEH_CERBERUS3", 1000},
    {"ARN_VEH_BRUISER", 1000},
    {"ARN_VEH_BRUISER2", 1000},
    {"ARN_VEH_BRUISER3", 1000},
    {"ARN_VEH_SLAMVAN4", 1000},
    {"ARN_VEH_SLAMVAN5", 1000},
    {"ARN_VEH_SLAMVAN6", 1000},
    {"ARN_VEH_BRUTUS", 1000},
    {"ARN_VEH_BRUTUS2", 1000},
    {"ARN_VEH_BRUTUS3", 1000},
    {"ARN_VEH_SCARAB", 1000},
    {"ARN_VEH_SCARAB2", 1000},
    {"ARN_VEH_SCARAB3", 1000},
    {"ARN_VEH_DOMINATOR4", 1000},
    {"ARN_VEH_DOMINATOR5", 1000},
    {"ARN_VEH_DOMINATOR6", 1000},
    {"ARN_VEH_IMPALER2", 1000},
    {"ARN_VEH_IMPALER3", 1000},
    {"ARN_VEH_IMPALER4", 1000},
    {"ARN_VEH_ISSI4", 1000},
    {"ARN_VEH_ISSI5", 1000},
    {"ARN_VEH_ISSI", 61000},
    {"ARN_VEH_IMPERATOR", 1000},
    {"ARN_VEH_IMPERATOR2", 1000},
    {"ARN_VEH_IMPERATOR3", 1000},
    {"ARN_VEH_ZR380", 1000},
    {"ARN_VEH_ZR3802", 1000},
    {"ARN_VEH_ZR3803", 1000},
    {"ARN_VEH_DEATHBIKE", 1000},
    {"ARN_VEH_DEATHBIKE2", 1000},
    {"ARN_VEH_DEATHBIKE3", 1000}
}
local ARENA_W_UNLK_BL = {
    {"AWD_BEGINNER", true},
    {"AWD_FIELD_FILLER", true},
    {"AWD_ARMCHAIR_RACER", true},
    {"AWD_LEARNER", true},
    {"AWD_SUNDAY_DRIVER", true},
    {"AWD_THE_ROOKIE", true},
    {"AWD_BUMP_AND_RUN", true},
    {"AWD_GEAR_HEAD", true},
    {"AWD_DOOR_SLAMMER", true},
    {"AWD_HOT_LAP", true},
    {"AWD_ARENA_AMATEUR", true},
    {"AWD_PAINT_TRADER", true},
    {"AWD_SHUNTER", true},
    {"AWD_JOCK", true},
    {"AWD_WARRIOR", true},
    {"AWD_T_BONE", true},
    {"AWD_MAYHEM", true},
    {"AWD_WRECKER", true},
    {"AWD_CRASH_COURSE", true},
    {"AWD_ARENA_LEGEND", true},
    {"AWD_PEGASUS", true},
    {"AWD_UNSTOPPABLE", true},
    {"AWD_CONTACT_SPORT", true}
}
    menu.add_feature("» Unlock all Arena Wars Trophy and Toys", "action", ARENA_TOOL.id, function()
    menu.notify("Arena Wars Unlocked", "Master Unlocker", 3, 0x6400FA14)
        for i = 1, #ARENA_W_UNLK do
        stat_set_int(ARENA_W_UNLK[i][1], true, ARENA_W_UNLK[i][2])
        for i = 2, #ARENA_W_UNLK_BL do
        stat_set_bool(ARENA_W_UNLK_BL[i][1], true, ARENA_W_UNLK_BL[i][2])
        stat_set_bool(ARENA_W_UNLK_BL[i][1], false, ARENA_W_UNLK_BL[i][2])
        end
        end
    end)

    menu.add_feature("» Arena Wars Clothing", "action", ARENA_TOOL.id, function()
        script.set_global_i(262145 + 25341,1)
        script.set_global_i(262145 + 25342,1)
        script.set_global_i(262145 + 25341,1)
        script.set_global_i(262145 + 25342,1)
        script.set_global_i(262145 + 25343,1)
        script.set_global_i(262145 + 25344,1)
        script.set_global_i(262145 + 25345,1)
        script.set_global_i(262145 + 25346,1)
        script.set_global_i(262145 + 25347,1)
        script.set_global_i(262145 + 25348,1)
        script.set_global_i(262145 + 25349,1)
        script.set_global_i(262145 + 25350,1)
        script.set_global_i(262145 + 25351,1)
        script.set_global_i(262145 + 25352,1)
        script.set_global_i(262145 + 25353,1)
        script.set_global_i(262145 + 25354,1)
        script.set_global_i(262145 + 25355,1)
        script.set_global_i(262145 + 25356,1)
        script.set_global_i(262145 + 25357,1)
        script.set_global_i(262145 + 25358,1)
        script.set_global_i(262145 + 25359,1)
        script.set_global_i(262145 + 25360,1)
        script.set_global_i(262145 + 25361,1)
        script.set_global_i(262145 + 25362,1)
        script.set_global_i(262145 + 25363,1)
        script.set_global_i(262145 + 25364,1)
        script.set_global_i(262145 + 25365,1)
        script.set_global_i(262145 + 25366,1)
        script.set_global_i(262145 + 25367,1)
        script.set_global_i(262145 + 25368,1)
        script.set_global_i(262145 + 25369,1)
        script.set_global_i(262145 + 25370,1)       
        script.set_global_i(262145 + 25371,1)
        script.set_global_i(262145 + 25372,1)
        script.set_global_i(262145 + 25373,1)
        script.set_global_i(262145 + 25374,1)
        script.set_global_i(262145 + 25375,1)
        script.set_global_i(262145 + 25376,1)
        script.set_global_i(262145 + 25377,1)
        script.set_global_i(262145 + 25378,1)
        script.set_global_i(262145 + 25379,1)
        script.set_global_i(262145 + 25380,1)
        script.set_global_i(262145 + 25381,1)
        script.set_global_i(262145 + 25382,1)
        script.set_global_i(262145 + 25383,1)
        script.set_global_i(262145 + 25384,1)
        script.set_global_i(262145 + 25385,1)
        script.set_global_i(262145 + 25386,1)
        script.set_global_i(262145 + 25387,1)
        script.set_global_i(262145 + 25388,1)
        script.set_global_i(262145 + 25389,1)
        script.set_global_i(262145 + 25390,1)
        script.set_global_i(262145 + 25391,1)
        script.set_global_i(262145 + 25392,1)
        script.set_global_i(262145 + 25393,1)
        script.set_global_i(262145 + 25394,1)
        script.set_global_i(262145 + 25395,1)
        script.set_global_i(262145 + 25396,1)
        script.set_global_i(262145 + 25397,1)
        script.set_global_i(262145 + 25398,1)
        script.set_global_i(262145 + 25399,1)
        script.set_global_i(262145 + 25400,1)
        script.set_global_i(262145 + 25401,1)
        script.set_global_i(262145 + 25402,1)
        script.set_global_i(262145 + 25403,1)
        script.set_global_i(262145 + 25404,1)
        script.set_global_i(262145 + 25405,1)
        script.set_global_i(262145 + 25406,1)
        script.set_global_i(262145 + 25407,1)
        script.set_global_i(262145 + 25408,1)
    end)
end

do
local NIGH_C_UNLK = {
    {"AWD_DANCE_TO_SOLOMUN", 120},
    {"AWD_DANCE_TO_TALEOFUS", 120},
    {"AWD_DANCE_TO_DIXON", 120},
    {"AWD_DANCE_TO_BLKMAD", 120},
    {"AWD_CLUB_DRUNK", 200},
    {"NIGHTCLUB_VIP_APPEAR", 700},
    {"NIGHTCLUB_JOBS_DONE", 700},
    {"NIGHTCLUB_EARNINGS", 20721002},
    {"HUB_SALES_COMPLETED", 1001},
    {"HUB_EARNINGS", 320721002},
    {"DANCE_COMBO_DURATION_MINS", 3600000},
    {"NIGHTCLUB_PLAYER_APPEAR", 9506},
    {"LIFETIME_HUB_GOODS_SOLD", 784672},
    {"LIFETIME_HUB_GOODS_MADE", 507822},
    {"DANCEPERFECTOWNCLUB", 120},
    {"NUMUNIQUEPLYSINCLUB", 120},
    {"DANCETODIFFDJS", 4},
    {"NIGHTCLUB_HOTSPOT_TIME_MS", 3600000},
    {"NIGHTCLUB_CONT_TOTAL", 20},
    {"NIGHTCLUB_CONT_MISSION", -1},
    {"CLUB_CONTRABAND_MISSION", 1000},
    {"HUB_CONTRABAND_MISSION", 1000}
}
local NIGH_C_UNLK_B = {
    {"AWD_CLUB_HOTSPOT", true},
    {"AWD_CLUB_CLUBBER", true},
    {"AWD_CLUB_COORD", true}
}
local NIGH_INC_PP = {
    {"CLUB_POPULARITY", 1000}
}

local NIGHT_C_UNLCKS = menu.add_feature("» NightClub", "parent", MASTER_UNLOCKR.id)
    menu.add_feature("» NighClub MAX Popularity", "action", NIGHT_C_UNLCKS.id, function()
        menu.notify("Nightclub Popularity Increased", "Master Unlocker", 3, 0x6400FA14)
        for i = 1, #NIGH_INC_PP do
            stat_set_int(NIGH_INC_PP[i][1], true, NIGH_INC_PP[i][2])
        end
    end)

    menu.add_feature("» Unlock NightClub Awards", "action", NIGHT_C_UNLCKS.id, function()
        menu.notify("NightClub Awards Unlocked", "Master Unlocker", 3, 0x6400FA14)
        for i = 1, #NIGH_C_UNLK do
            stat_set_int(NIGH_C_UNLK[i][1], true, NIGH_C_UNLK[i][2])
        for i = 2, #NIGH_C_UNLK_B do
            stat_set_bool(NIGH_C_UNLK_B[i][1], true, NIGH_C_UNLK_B[i][2])
            stat_set_bool(NIGH_C_UNLK_B[i][1], false, NIGH_C_UNLK_B[i][2])
        end
    end
    end)
end

do
local MENTAL_PLAYER_MODIFIER_ON = {
    {"PLAYER_MENTAL_STATE", 100.0}
}
local MENTAL_PLAYER_MODIFIER_HF = {
    {"PLAYER_MENTAL_STATE", 50.0}
}
local MENTAL_PLAYER_MODIFIER_OFF = {
    {"PLAYER_MENTAL_STATE", 0.0}
}
local PLAYER_MENTAL_CHECK = menu.add_feature("» Mental State", "parent", MASTER_UNLOCKR.id)

    menu.add_feature("» Maximum", "action", PLAYER_MENTAL_CHECK.id, function()
        menu.notify("Mental State modified to the maximum", "Master Unlocker", 3, 0x641400FF)
        for i = 1, #MENTAL_PLAYER_MODIFIER_ON do
        stat_set_float(MENTAL_PLAYER_MODIFIER_ON[i][1], true, MENTAL_PLAYER_MODIFIER_ON[i][2])
    end
    end)

    menu.add_feature("» Half", "action", PLAYER_MENTAL_CHECK.id, function()
        menu.notify("Mental State modified to the Half", "Master Unlocker", 3, 0x6414F0FF)
        for i = 1, #MENTAL_PLAYER_MODIFIER_HF do
        stat_set_float(MENTAL_PLAYER_MODIFIER_HF[i][1], true, MENTAL_PLAYER_MODIFIER_HF[i][2])
    end
    end)

    menu.add_feature("» Remove", "action", PLAYER_MENTAL_CHECK.id, function()
        menu.notify("Mental State has been removed", "Master Unlocker", 3, 0x64F06414)
        for i = 1, #MENTAL_PLAYER_MODIFIER_OFF do
        stat_set_float(MENTAL_PLAYER_MODIFIER_OFF[i][1], true, MENTAL_PLAYER_MODIFIER_OFF[i][2])
    end
    end)
end

local ARCADE_TOOL = menu.add_feature("» Arcade Unlockers", "parent", MASTER_UNLOCKR.id)

do
    local ARCD_I_UNLK = {
    {"AWD_PREPARATION", 40},
    {"AWD_ASLEEPONJOB", 20},
    {"AWD_DAICASHCRAB", 100000},
    {"AWD_BIGBRO", 40},
    {"AWD_SHARPSHOOTER", 40},
    {"AWD_RACECHAMP", 40},
    {"AWD_BATSWORD", 1000000},
    {"AWD_COINPURSE", 950000},
    {"AWD_ASTROCHIMP", 3000000},
    {"AWD_MASTERFUL", 40000},
    {"SCGW_NUM_WINS_GANG_0", 50},
    {"SCGW_NUM_WINS_GANG_1", 50},
    {"SCGW_NUM_WINS_GANG_2", 50},
    {"SCGW_NUM_WINS_GANG_3", 50},
    {"CH_ARC_CAB_CLAW_TROPHY", -1},
    {"CH_ARC_CAB_LOVE_TROPHY", -1},
    {"IAP_MAX_MOON_DIST", 2147483647},
    {"IAP_INITIALS_0", 50},
    {"IAP_INITIALS_1", 50},
    {"IAP_INITIALS_2", 50},
    {"IAP_INITIALS_3", 50},
    {"IAP_INITIALS_4", 50},
    {"IAP_INITIALS_5", 50},
    {"IAP_INITIALS_6", 50},
    {"IAP_INITIALS_7", 50},
    {"IAP_INITIALS_8", 50},
    {"IAP_INITIALS_9", 50},
    {"IAP_SCORE_0", 50},
    {"IAP_SCORE_1", 50},
    {"IAP_SCORE_2", 50},
    {"IAP_SCORE_3", 50},
    {"IAP_SCORE_4", 50},
    {"IAP_SCORE_5", 50},
    {"IAP_SCORE_6", 50},
    {"IAP_SCORE_7", 50},
    {"IAP_SCORE_8", 50},
    {"IAP_SCORE_9", 50},
    {"SCGW_INITIALS_0", 69644},
    {"SCGW_INITIALS_1", 50333},
    {"SCGW_INITIALS_2", 63512},
    {"SCGW_INITIALS_3", 46136},
    {"SCGW_INITIALS_4", 21638},
    {"SCGW_INITIALS_5", 2133},
    {"SCGW_INITIALS_6", 1215},
    {"SCGW_INITIALS_7", 2444},
    {"SCGW_INITIALS_8", 38023},
    {"SCGW_INITIALS_9", 2233},
    {"SCGW_SCORE_1", 50},
    {"SCGW_SCORE_2", 50},
    {"SCGW_SCORE_3", 50},
    {"SCGW_SCORE_4", 50},
    {"SCGW_SCORE_5", 50},
    {"SCGW_SCORE_6", 50},
    {"SCGW_SCORE_7", 50},
    {"SCGW_SCORE_8", 50},
    {"SCGW_SCORE_9", 50},
    {"DG_DEFENDER_INITIALS_0", 69644},
    {"DG_DEFENDER_INITIALS_1", 69644},
    {"DG_DEFENDER_INITIALS_2", 69644},
    {"DG_DEFENDER_INITIALS_3", 69644},
    {"DG_DEFENDER_INITIALS_4", 69644},
    {"DG_DEFENDER_INITIALS_5", 69644},
    {"DG_DEFENDER_INITIALS_6", 69644},
    {"DG_DEFENDER_INITIALS_7", 69644},
    {"DG_DEFENDER_INITIALS_8", 69644},
    {"DG_DEFENDER_INITIALS_9", 69644},
    {"DG_DEFENDER_SCORE_0", 50},
    {"DG_DEFENDER_SCORE_1", 50},
    {"DG_DEFENDER_SCORE_2", 50},
    {"DG_DEFENDER_SCORE_3", 50},
    {"DG_DEFENDER_SCORE_4", 50},
    {"DG_DEFENDER_SCORE_5", 50},
    {"DG_DEFENDER_SCORE_6", 50},
    {"DG_DEFENDER_SCORE_7", 50},
    {"DG_DEFENDER_SCORE_8", 50},
    {"DG_DEFENDER_SCORE_9", 50},
    {"DG_MONKEY_INITIALS_0", 69644},
    {"DG_MONKEY_INITIALS_1", 69644},
    {"DG_MONKEY_INITIALS_2", 69644},
    {"DG_MONKEY_INITIALS_3", 69644},
    {"DG_MONKEY_INITIALS_4", 69644},
    {"DG_MONKEY_INITIALS_5", 69644},
    {"DG_MONKEY_INITIALS_6", 69644},
    {"DG_MONKEY_INITIALS_7", 69644},
    {"DG_MONKEY_INITIALS_8", 69644},
    {"DG_MONKEY_INITIALS_9", 69644},
    {"DG_MONKEY_SCORE_0", 50},
    {"DG_MONKEY_SCORE_1", 50},
    {"DG_MONKEY_SCORE_2", 50},
    {"DG_MONKEY_SCORE_3", 50},
    {"DG_MONKEY_SCORE_4", 50},
    {"DG_MONKEY_SCORE_5", 50},
    {"DG_MONKEY_SCORE_6", 50},
    {"DG_MONKEY_SCORE_7", 50},
    {"DG_MONKEY_SCORE_8", 50},
    {"DG_MONKEY_SCORE_9", 50},
    {"DG_PENETRATOR_INITIALS_0", 69644},
    {"DG_PENETRATOR_INITIALS_1", 69644},
    {"DG_PENETRATOR_INITIALS_2", 69644},
    {"DG_PENETRATOR_INITIALS_3", 69644},
    {"DG_PENETRATOR_INITIALS_4", 69644},
    {"DG_PENETRATOR_INITIALS_5", 69644},
    {"DG_PENETRATOR_INITIALS_6", 69644},
    {"DG_PENETRATOR_INITIALS_7", 69644},
    {"DG_PENETRATOR_INITIALS_8", 69644},
    {"DG_PENETRATOR_INITIALS_9", 69644},
    {"DG_PENETRATOR_SCORE_0", 50},
    {"DG_PENETRATOR_SCORE_1", 50},
    {"DG_PENETRATOR_SCORE_2", 50},
    {"DG_PENETRATOR_SCORE_3", 50},
    {"DG_PENETRATOR_SCORE_4", 50},
    {"DG_PENETRATOR_SCORE_5", 50},
    {"DG_PENETRATOR_SCORE_6", 50},
    {"DG_PENETRATOR_SCORE_7", 50},
    {"DG_PENETRATOR_SCORE_8", 50},
    {"DG_PENETRATOR_SCORE_9", 50},
    {"GGSM_INITIALS_0", 69644},
    {"GGSM_INITIALS_1", 69644},
    {"GGSM_INITIALS_2", 69644},
    {"GGSM_INITIALS_3", 69644},
    {"GGSM_INITIALS_4", 69644},
    {"GGSM_INITIALS_5", 69644},
    {"GGSM_INITIALS_6", 69644},
    {"GGSM_INITIALS_7", 69644},
    {"GGSM_INITIALS_8", 69644},
    {"GGSM_INITIALS_9", 69644},
    {"GGSM_SCORE_0", 50},
    {"GGSM_SCORE_1", 50},
    {"GGSM_SCORE_2", 50},
    {"GGSM_SCORE_3", 50},
    {"GGSM_SCORE_4", 50},
    {"GGSM_SCORE_5", 50},
    {"GGSM_SCORE_6", 50},
    {"GGSM_SCORE_7", 50},
    {"GGSM_SCORE_8", 50},
    {"GGSM_SCORE_9", 50},
    {"TWR_INITIALS_0", 69644},
    {"TWR_INITIALS_1", 69644},
    {"TWR_INITIALS_2", 69644},
    {"TWR_INITIALS_3", 69644},
    {"TWR_INITIALS_4", 69644},
    {"TWR_INITIALS_5", 69644},
    {"TWR_INITIALS_6", 69644},
    {"TWR_INITIALS_7", 69644},
    {"TWR_INITIALS_8", 69644},
    {"TWR_INITIALS_9", 69644},
    {"TWR_SCORE_0", 50},
    {"TWR_SCORE_1", 50},
    {"TWR_SCORE_2", 50},
    {"TWR_SCORE_3", 50},
    {"TWR_SCORE_4", 50},
    {"TWR_SCORE_5", 50},
    {"TWR_SCORE_6", 50},
    {"TWR_SCORE_7", 50},
    {"TWR_SCORE_8", 50},
    {"TWR_SCORE_9", 50}
}
local ARCD_B_UNLK = {
    {"AWD_SCOPEOUT", true},
    {"AWD_CREWEDUP", true},
    {"AWD_MOVINGON", true},
    {"AWD_PROMOCAMP", true},
    {"AWD_GUNMAN", true},
    {"AWD_SMASHNGRAB", true},
    {"AWD_INPLAINSI", true},
    {"AWD_UNDETECTED", true},
    {"AWD_ALLROUND", true},
    {"AWD_ELITETHEIF", true},
    {"AWD_PRO", true},
    {"AWD_SUPPORTACT", true},
    {"AWD_SHAFTED", true}, 
    {"AWD_COLLECTOR", true},
    {"AWD_DEADEYE", true},
    {"AWD_PISTOLSATDAWN", true},
    {"AWD_TRAFFICAVOI", true},
    {"AWD_CANTCATCHBRA", true},
    {"AWD_WIZHARD", true},
    {"AWD_APEESCAP", true},
    {"AWD_MONKEYKIND", true},
    {"AWD_AQUAAPE", true},
    {"AWD_KEEPFAITH", true},
    {"AWD_TRUELOVE", true},
    {"AWD_NEMESIS", true},
    {"AWD_FRIENDZONED", true},
    {"IAP_CHALLENGE_0", true},
    {"IAP_CHALLENGE_1", true},
    {"IAP_CHALLENGE_2", true},
    {"IAP_CHALLENGE_3", true},
    {"IAP_CHALLENGE_4", true},
    {"IAP_GOLD_TANK", true},
    {"SCGW_WON_NO_DEATHS", true}
}
    menu.add_feature("» Unlock Arcade Trophys and Toys", "action", ARCADE_TOOL.id, function()
    menu.notify("Arcade Trophys Unlocked", "Master Unlocker", 3, 0x6400FA14)
    for i = 1, #ARCD_I_UNLK do
        stat_set_int(ARCD_I_UNLK[i][1], true, ARCD_I_UNLK[i][2])
    for i = 2, #ARCD_B_UNLK do
        stat_set_bool(ARCD_B_UNLK[i][1], true, ARCD_B_UNLK[i][2])
        end
    end
end)
menu.add_feature("» Unlock Arcade Clothing", "action", ARCADE_TOOL.id, function()
    script.set_global_i(262145 + 27814,1)
    script.set_global_i(262145 + 27815,1)
    script.set_global_i(262145 + 27816,1)
    script.set_global_i(262145 + 27817,1)
    script.set_global_i(262145 + 27818,1)
    script.set_global_i(262145 + 27819,1)
    script.set_global_i(262145 + 27820,1)
    script.set_global_i(262145 + 27821,1)
    script.set_global_i(262145 + 27822,1)
    script.set_global_i(262145 + 27823,1)
    script.set_global_i(262145 + 27824,1)
    script.set_global_i(262145 + 27825,1)
    script.set_global_i(262145 + 27826,1)
    script.set_global_i(262145 + 27827,1)
    script.set_global_i(262145 + 27828,1)
    script.set_global_i(262145 + 27829,1)
    script.set_global_i(262145 + 27830,1)
    script.set_global_i(262145 + 27831,1)
    script.set_global_i(262145 + 27832,1)
    script.set_global_i(262145 + 27833,1)
end)
end

do
local OFFC_M_SHOW = {
    {"LIFETIME_BUY_COMPLETE", 1000},
    {"LIFETIME_BUY_UNDERTAKEN", 1000},
    {"LIFETIME_SELL_COMPLETE", 1000},
    {"LIFETIME_SELL_UNDERTAKEN", 1000},
    {"LIFETIME_CONTRA_EARNINGS", 20000000},
    {"LIFETIME_BIKER_BUY_COMPLET", 1000},
    {"LIFETIME_BIKER_BUY_UNDERTA", 1000},
    {"LIFETIME_BIKER_SELL_COMPLET", 1000},
    {"LIFETIME_BIKER_SELL_UNDERTA", 1000},
    {"LIFETIME_BIKER_BUY_COMPLET1", 1000},
    {"LIFETIME_BIKER_BUY_UNDERTA1", 1000},
    {"LIFETIME_BIKER_SELL_COMPLET1", 1000},
    {"LIFETIME_BIKER_SELL_UNDERTA1", 1000},
    {"LIFETIME_BIKER_BUY_COMPLET2", 1000},
    {"LIFETIME_BIKER_BUY_UNDERTA2", 1000},
    {"LIFETIME_BIKER_SELL_COMPLET2", 1000},
    {"LIFETIME_BIKER_SELL_UNDERTA2", 1000},
    {"LIFETIME_BIKER_BUY_COMPLET3", 1000},
    {"LIFETIME_BIKER_BUY_UNDERTA3", 1000},
    {"LIFETIME_BIKER_SELL_COMPLET3", 1000},
    {"LIFETIME_BIKER_SELL_UNDERTA3", 1000},
    {"LIFETIME_BIKER_BUY_COMPLET4", 1000},
    {"LIFETIME_BIKER_BUY_UNDERTA4", 1000},
    {"LIFETIME_BIKER_SELL_COMPLET4", 1000},
    {"LIFETIME_BIKER_SELL_UNDERTA4", 1000},
    {"LIFETIME_BIKER_BUY_COMPLET5", 1000},
    {"LIFETIME_BIKER_BUY_UNDERTA5", 1000},
    {"LIFETIME_BIKER_SELL_COMPLET5", 1000},
    {"LIFETIME_BIKER_SELL_UNDERTA5", 1000},
    {"LIFETIME_BKR_SELL_EARNINGS0", 20000000},
    {"LIFETIME_BKR_SELL_EARNINGS1", 20000000},
    {"LIFETIME_BKR_SELL_EARNINGS2", 20000000},
    {"LIFETIME_BKR_SELL_EARNINGS3", 20000000},
    {"LIFETIME_BKR_SELL_EARNINGS4", 20000000},
    {"LIFETIME_BKR_SELL_EARNINGS5", 20000000}
}
    menu.add_feature("» Add cosmetics items to the Office/MC", "action", MASTER_UNLOCKR.id, function()
    menu.notify("Please, now sell anything and switch session.", "Master Unlocker", 3, 0x6414F0FF)
        for i = 1, #OFFC_M_SHOW do
            stat_set_int(OFFC_M_SHOW[i][1], true, OFFC_M_SHOW[i][2])
        end
    end)
end

do
local VEHICLE_SELL_T_LIMIT = {
    {"MPPLY_VEHICLE_SELL_TIME", 0},
    {"MPPLY_NUM_CARS_SOLD_TODAY", 0}
}
menu.add_feature("» Bypass LSC daily sell limit (Vehicles)", "action", MASTER_UNLOCKR.id, function()
    menu.notify("Cooldown Removed", "Master Unlocker", 3, 0x6400FA14)
    for i = 1, #VEHICLE_SELL_T_LIMIT do
        stat_set_int(VEHICLE_SELL_T_LIMIT[i][1], true, VEHICLE_SELL_T_LIMIT[i][2])
        stat_set_int(VEHICLE_SELL_T_LIMIT[i][1], false, VEHICLE_SELL_T_LIMIT[i][2])
    end
end)
end

do
local DCTL_UNLK = {
    {"DCTL_WINS", 500},
    {"DCTL_PLAY_COUNT", 750}
}
    menu.add_feature("» Unlock Don't Cross the Line Tee", "action", MASTER_UNLOCKR.id, function()
    menu.notify("Unlocked...You can buy it from any Clothing Store", "Master Unlocker", 3, 0x6400FA14)
        for i = 1, #DCTL_UNLK do
            stat_set_int(DCTL_UNLK[i][1], true, DCTL_UNLK[i][2])
        end
    end)
end

do
local SHT_UNLK = {
    {"CRDEADLINE", -1}
}
    menu.add_feature("» Unlock Shotaro", "action", MASTER_UNLOCKR.id, function()
    menu.notify("Shotaro is now avaliable to purchase at Legendary Motorsport", "Master Unlocker", 3, 0x64F06414)
        for i = 1, #SHT_UNLK do
            stat_set_int(SHT_UNLK[i][1], true, SHT_UNLK[i][2])
        end
    end)
end

do
local summer2020_AWARDS_BL = {
    {"AWD_KINGOFQUB3D", true},
    {"AWD_QUBISM", true},
    {"AWD_QUIBITS", true},
    {"AWD_GODOFQUB3D", true},
    {"AWD_GOFOR11TH", true},
    {"AWD_ELEVENELEVEN", true}
}
local SUMMER2020 = menu.add_feature("» Summer 2020 DLC", "parent", MASTER_UNLOCKR.id)

    menu.add_feature("» Summer 2020 Awards", "action", SUMMER2020.id, function()
    menu.notify("Summer 2020 Awards Unlocked", "Master Unlocker", 3, 0x6400FA14)
    for i = 1, #summer2020_AWARDS_BL do
        stat_set_bool(summer2020_AWARDS_BL[i][1], true, summer2020_AWARDS_BL[i][2])
        stat_set_bool(summer2020_AWARDS_BL[i][1], false, summer2020_AWARDS_BL[i][2])
    end
end)

    menu.add_feature("» Unlock Summer DLC Clothing", "action", SUMMER2020.id, function()
    script.set_global_i(262145 + 29181,1)
    script.set_global_i(262145 + 29182,1)
    script.set_global_i(262145 + 29183,1)
    script.set_global_i(262145 + 29184,1)
    script.set_global_i(262145 + 29185,1)
    script.set_global_i(262145 + 29186,1)
    script.set_global_i(262145 + 29187,1)
    script.set_global_i(262145 + 29188,1)
    script.set_global_i(262145 + 29189,1)
    script.set_global_i(262145 + 29190,1)
    script.set_global_i(262145 + 29191,1)
    script.set_global_i(262145 + 29192,1)
    script.set_global_i(262145 + 29193,1)
    script.set_global_i(262145 + 29194,1)
    script.set_global_i(262145 + 29195,1)
    script.set_global_i(262145 + 29196,1)
    script.set_global_i(262145 + 29197,1)
    script.set_global_i(262145 + 29198,1)
    script.set_global_i(262145 + 29199,1)
    script.set_global_i(262145 + 29200,1)
    script.set_global_i(262145 + 29201,1)
    script.set_global_i(262145 + 29202,1)
    script.set_global_i(262145 + 29203,1)
    script.set_global_i(262145 + 29204,1)
    script.set_global_i(262145 + 29205,1)
    script.set_global_i(262145 + 29206,1)
    script.set_global_i(262145 + 29207,1)
    script.set_global_i(262145 + 29208,1)
    script.set_global_i(262145 + 29209,1)
    script.set_global_i(262145 + 29210,1)
    script.set_global_i(262145 + 29211,1)
    script.set_global_i(262145 + 29212,1)
    script.set_global_i(262145 + 29213,1)
    script.set_global_i(262145 + 29214,1)
    script.set_global_i(262145 + 29215,1)
    script.set_global_i(262145 + 29216,1)
    end)

end

do
local Yacht_MS = {
    {"YACHT_MISSION_PROG", 0},
    {"YACHT_MISSION_FLOW", 21845},
    {"CASINO_DECORATION_GIFT_1", -1}
}
    menu.add_feature("» Unlock Yacht Missions", "action", MASTER_UNLOCKR.id, function()
    menu.notify("Yacht Missions Unlocked", "Master Unlocker", 3, 0x6400FA14)
    for i = 1, #Yacht_MS do
        stat_set_int(Yacht_MS[i][1], true, Yacht_MS[i][2])
        end
    end)
end

do
local ALN_UNLCK_M = {
    {"TATTOO_FM_CURRENT_32", 32768}
}
local ALN_UNLCK_F = {
    {"TATTOO_FM_CURRENT_32", 67108864}
}
local ALN_TT_UNLCK = menu.add_feature("» Alien Tatto (Illuminati)", "parent", MASTER_UNLOCKR.id)
    menu.add_feature("» Apply the tatto for my MALE Character", "action", ALN_TT_UNLCK.id, function()
    menu.notify("Tatto applied, please switch session or suicide for it to show up", "Master Unlocker", 3, 0x64F06414)
    for i = 1, #ALN_UNLCK_M do
        stat_set_int(ALN_UNLCK_M[i][1], true, ALN_UNLCK_M[i][2])
    end
end)
    menu.add_feature("» Apply the tatto for my FEMALE Character", "action", ALN_TT_UNLCK.id, function()
        menu.notify("Tatto applied, please switch session or suicide for it to show up", "Master Unlocker", 3, 0x64F06414)
        for i = 1, #ALN_UNLCK_F do
            stat_set_int(ALN_UNLCK_F[i][1], true, ALN_UNLCK_F[i][2])
        end
    end)
end

do
local LMAR_UNLK_B = {
    {"LOW_FLOW_CS_DRV_SEEN", true},
    {"LOW_FLOW_CS_TRA_SEEN", true},
    {"LOW_FLOW_CS_FUN_SEEN", true},
    {"LOW_FLOW_CS_PHO_SEEN", true},
    {"LOW_FLOW_CS_FIN_SEEN", true},
    {"LOW_BEN_INTRO_CS_SEEN", true}
}
local LMAR_UNLK_I = {
    {"LOWRIDER_FLOW_COMPLETE", 3},
    {"LOW_FLOW_CURRENT_PROG", 9},
    {"LOW_FLOW_CURRENT_CALL", 9}
}
    menu.add_feature("» Skip Lamar Missions to the last one", "action", MASTER_UNLOCKR.id, function()
        menu.notify("Done, please switch session for it to take effect.", "Master Unlocker", 5, 0x64F06414)
        for i = 1, #LMAR_UNLK_B do
        stat_set_bool(LMAR_UNLK_B[i][1], true, LMAR_UNLK_B[i][2])
        for i = 2, #LMAR_UNLK_I do
         stat_set_int(LMAR_UNLK_I[i][1], true, LMAR_UNLK_I[i][2])
    end
    end
end)
end

do
local FLY_SCHOOL_I = {
    {"PILOT_SCHOOL_MEDAL_0", -1},
    {"PILOT_SCHOOL_MEDAL_1", -1},
    {"PILOT_SCHOOL_MEDAL_2", -1},
    {"PILOT_SCHOOL_MEDAL_3", -1},
    {"PILOT_SCHOOL_MEDAL_4", -1},
    {"PILOT_SCHOOL_MEDAL_5", -1},
    {"PILOT_SCHOOL_MEDAL_6", -1},
    {"PILOT_SCHOOL_MEDAL_7", -1},
    {"PILOT_SCHOOL_MEDAL_8", -1},
    {"PILOT_SCHOOL_MEDAL_9", -1}
}
local FLY_SCHOOL_B = {
    {"PILOT_ASPASSEDLESSON_0", true},
    {"PILOT_ASPASSEDLESSON_1", true},
    {"PILOT_ASPASSEDLESSON_2", true},
    {"PILOT_ASPASSEDLESSON_3", true},
    {"PILOT_ASPASSEDLESSON_4", true},
    {"PILOT_ASPASSEDLESSON_5", true},
    {"PILOT_ASPASSEDLESSON_6", true},
    {"PILOT_ASPASSEDLESSON_7", true},
    {"PILOT_ASPASSEDLESSON_8", true},
     {"PILOT_ASPASSEDLESSON_9", true}
}
    menu.add_feature("» Unlock Flight School Awards", "action", MASTER_UNLOCKR.id, function()
    menu.notify("Flight School Awards Unlocked", "Master Unlocker", 3, 0x6400FA14)
        for i = 1, #FLY_SCHOOL_I do
        stat_set_int(FLY_SCHOOL_I[i][1], true, FLY_SCHOOL_I[i][2])
        for i = 2, #FLY_SCHOOL_B do
        stat_set_bool(FLY_SCHOOL_B[i][1], true, FLY_SCHOOL_B[i][2])
        end
    end
end)
end

do
local FAST_RUN_ON = {
    {"CHAR_FM_ABILITY_1_UNLCK", -1},
    {"CHAR_FM_ABILITY_2_UNLCK", -1},
    {"CHAR_FM_ABILITY_3_UNLCK", -1},
    {"CHAR_ABILITY_1_UNLCK", -1},
    {"CHAR_ABILITY_2_UNLCK", -1},
    {"CHAR_ABILITY_3_UNLCK", -1}
}
local FAST_RUN_OFF = {
    {"CHAR_FM_ABILITY_1_UNLCK", 0},
    {"CHAR_FM_ABILITY_2_UNLCK", 0},
    {"CHAR_FM_ABILITY_3_UNLCK", 0},
    {"CHAR_ABILITY_1_UNLCK", 0},
    {"CHAR_ABILITY_2_UNLCK", 0},
    {"CHAR_ABILITY_3_UNLCK", 0}
}
local FAST_RUN_M = menu.add_feature("» Fast Run and Reload", "parent", MASTER_UNLOCKR.id)
    menu.add_feature("» Set fast run and reload - ON", "action", FAST_RUN_M.id, function()
    menu.notify("Fast Run/Reload Enabled", "Master Unlocker", 4, 0x6400FA14)
        for i = 1, #FAST_RUN_ON do
        stat_set_int(FAST_RUN_ON[i][1], true, FAST_RUN_ON[i][2])
    end
end) 
    menu.add_feature("» Set fast run and reload - OFF", "action", FAST_RUN_M.id, function()
    menu.notify("Fast Run/Reload Disabled", "Master Unlocker", 4, 0x641400FF)
    for i = 1, #FAST_RUN_OFF do
    stat_set_int(FAST_RUN_OFF[i][1], true, FAST_RUN_OFF[i][2])
    end
    end)
end

do
local VEH_TRADE_PR = {
    {"AT_FLOW_IMPEXP_NUM", -1},
    {"AT_FLOW_VEHICLE_BS", -1},
    {"GANGOPS_FLOW_BITSET_MISS0", -1},
    {"WVM_FLOW_VEHICLE_BS", -1}
}
    menu.add_feature("» Unlock some vehicles trade price", "action", MASTER_UNLOCKR.id, function()
    menu.notify("Trade Price Unlocked", "Master Unlocker", 3, 0x6400FA14)
        for i = 1, #VEH_TRADE_PR do
        stat_set_int(VEH_TRADE_PR[i][1], true, VEH_TRADE_PR[i][2])
        stat_set_int(VEH_TRADE_PR[i][1], false, VEH_TRADE_PR[i][2])
        end
    end)
end

do
local CONTACTx_UNLCK = {
    {"FM_ACT_PHN", -1},
    {"FM_ACT_PH2", -1},
    {"FM_ACT_PH3", -1},
    {"FM_ACT_PH4", -1},
    {"FM_ACT_PH5", -1},
    {"FM_VEH_TX1", -1},
    {"FM_ACT_PH6", -1},
    {"FM_ACT_PH7", -1},
    {"FM_ACT_PH8", -1},
    {"FM_ACT_PH9", -1},
    {"FM_CUT_DONE", -1},
    {"FM_CUT_DONE_2", -1}
}
    menu.add_feature("» Unlock all Contacts", "action", MASTER_UNLOCKR.id, function()
    menu.notify("Contacts Unlocked", "Master Unlocker", 3, 0x6400FA14)
        for i = 1, #CONTACTx_UNLCK do
        stat_set_int(CONTACTx_UNLCK[i][1], true, CONTACTx_UNLCK[i][2])
        end
    end)
end

do
local VANNIL_AWD = {
    {"LAP_DANCED_BOUGHT", 0},
    {"LAP_DANCED_BOUGHT", 5},
    {"LAP_DANCED_BOUGHT", 10},
    {"LAP_DANCED_BOUGHT", 15},
    {"LAP_DANCED_BOUGHT", 25},
    {"PROSTITUTES_FREQUENTED", 1000}
}
    menu.add_feature("» Unlock Vanilla Unicorn Award", "action", MASTER_UNLOCKR.id, function()
    menu.notify("Vanilla Unicorn Awards Unlocked", "Master Unlocker", 3, 0x6400FA14)
        for i = 1, #VANNIL_AWD do
        stat_set_int(VANNIL_AWD[i][1], true, VANNIL_AWD[i][2])
        end
    end)
end

do
local ALN_EG_MS = {
    {"LFETIME_BIKER_BUY_COMPLET5", 599},
    {"LFETIME_BIKER_BUY_UNDERTA5", 599}
}
local BUNKR_UNLCK = {
    {"SR_HIGHSCORE_1", 690},
    {"SR_HIGHSCORE_2", 1860},
    {"SR_HIGHSCORE_3", 2690},
    {"SR_HIGHSCORE_4", 2660},
    {"SR_HIGHSCORE_5", 2650},
    {"SR_HIGHSCORE_6", 450},
    {"SR_TARGETS_HIT", 269},
    {"SR_WEAPON_BIT_SET", -1}
}
local BUNKR_UNLCK_B = {

    {"SR_TIER_1_REWARD", true},
    {"SR_TIER_3_REWARD", true},
    {"SR_INCREASE_THROW_CAP", true}
}

local BNKR_AWARDS = menu.add_feature("» Unlock Bunker Awards", "parent", MASTER_UNLOCKR.id)
    menu.add_feature("» Trigger Alien Egg Mission", "action", BNKR_AWARDS.id, function()
    menu.notify("It's necessary to change the clock time between 9pm and 11pm", "Master Unlocker", 3, 0x6414F0FF)
        for i = 1, #ALN_EG_MS do
            stat_set_int(ALN_EG_MS[i][1], true, ALN_EG_MS[i][2])
        end
    end)

menu.add_feature("» Unlock Bunker Awards", "action", BNKR_AWARDS.id, function()
menu.notify("Bunker Awards Unlocked!", "Master Unlocker", 3, 0x64F06414)
    for i = 1, #BUNKR_UNLCK do
        stat_set_int(BUNKR_UNLCK[i][1], true, BUNKR_UNLCK[i][2])
    for i = 2, #BUNKR_UNLCK_B do
        stat_set_bool(BUNKR_UNLCK_B[i][1], true, BUNKR_UNLCK_B[i][2])
        end
    end
end)
end

do
local DAILY_OBJ_AWD = {
    {"AWD_DAILYOBJCOMPLETED", 0},
    {"AWD_DAILYOBJCOMPLETED", 10},
    {"AWD_DAILYOBJCOMPLETED", 25},
    {"AWD_DAILYOBJCOMPLETED", 50},
    {"AWD_DAILYOBJCOMPLETED", 100},
    {"CONSECUTIVEWEEKCOMPLETED", 0},
    {"CONSECUTIVEWEEKCOMPLETED", 7},
    {"CONSECUTIVEWEEKCOMPLETED", 28}
}
local DAILY_OBJ_AWD_B = {
    {"AWD_DAILYOBJWEEKBONUS", true},
    {"AWD_DAILYOBJMONTHBONUS", true}
}
    menu.add_feature("» Unlock All Daily Objectives Awards", "action", MASTER_UNLOCKR.id, function()
    menu.notify("Daily Objectives Awards Unlocked!", "Master Unlocker", 3, 0x64F06414)
        for i = 1, #DAILY_OBJ_AWD_B do
            stat_set_bool(DAILY_OBJ_AWD_B[i][1], true, DAILY_OBJ_AWD_B[i][2])
        for i = 2, #DAILY_OBJ_AWD do
            stat_set_int(DAILY_OBJ_AWD[i][1], true, DAILY_OBJ_AWD[i][2])
        end
    end
    end)
end

do
local ORBT_CLDWN_ = {
    {"ORBITAL_CANNON_COOLDOWN", 0}
}
    menu.add_feature("[!] Remove Orbital Cannon Cooldown [risky]", "action", MASTER_UNLOCKR.id, function()
     menu.notify("Abusing this option can lead to a ban!!!", "Warning", 5, 0x641400FF)
    menu.notify("Cooldown Removed!", "Master Unlocker", 3, 0x6400FA14)
        for i = 1, #ORBT_CLDWN_ do
        stat_set_int(ORBT_CLDWN_[i][1], true, ORBT_CLDWN_[i][2])
        end
    end)
end

do
    menu.add_feature("» Leave Session (Freeze the game for a few secs)", "action", TOOLS.id, function()
    menu.notify("Task completed", "Heist Control", 3, 0x6400FA14)
        local time = utils.time_ms() + 8500
        while time > utils.time_ms() do end
    end)
end