-------------------------------------------------------
--- Debug & Message Control
local function printMsg(message)
    print("[Frame Commander] "..message)
end

local debug = false
local function printMsgDebug(message)
	if debug == true then
		printMsg(message)
	end
end
printMsgDebug("Debug mode is enabled. Please disable this in FrameCommander.lua to stop these messages.")
-------------------------------------------------------
local function clearChatbox() -- Chatbar text stays even if the command was entered, so clear the chatbox after.
    if editbox then
    editbox:SetText("")
    end
end
-------------------------------------------------------
-- CHARACTER
SLASH_ToggleChar1, SLASH_ToggleChar2, SLASH_ToggleChar3, SLASH_ToggleChar4 =
'/character', '/char', '/charecter', '/toon';
function SlashCmdList.ToggleChar(msg, editbox)
 printMsgDebug("Toggling character frame.")
 ToggleCharacter("PaperDollFrame")
 clearChatbox()
end

-- REPUTATION
SLASH_ToggleRep1, SLASH_ToggleRep2, SLASH_ToggleRep3 =
'/reputation', '/rep', '/reput';
function SlashCmdList.ToggleRep(msg, editbox)
 printMsgDebug("Toggling reputation frame.")
 ToggleCharacter("ReputationFrame")
 clearChatbox()
end

-- CURRENCY
SLASH_ToggleCurrency1, SLASH_ToggleCurrency2, SLASH_ToggleCurrency3, SLASH_ToggleCurrency4, SLASH_ToggleCurrency5, SLASH_ToggleCurrency6 =
'/currency', '/curr', '/cur', '/money', '/tokens', '/token';
function SlashCmdList.ToggleCurrency(msg, editbox)
 printMsgDebug("Toggling currency frame.")
 ToggleCharacter("TokenFrame")
 clearChatbox()
end

-- SPELLBOOK
SLASH_ToggleSpellbook1, SLASH_ToggleSpellbook2, SLASH_ToggleSpellbook3, SLASH_ToggleSpellbook4, SLASH_ToggleSpellbook5 =
'/spells', '/spellbook', '/actionbook', '/actions', '/abilities';
function SlashCmdList.ToggleSpellbook(msg, editbox)
 printMsgDebug("Toggling spellbook frame.")
 ToggleSpellBook(BOOKTYPE_SPELL)
 clearChatbox()
end

-- SPELLBOOK (PROFESSION)
SLASH_ToggleSpellbookProf1, SLASH_ToggleSpellbookProf2, SLASH_ToggleSpellbookProf3, SLASH_ToggleSpellbookProf4, SLASH_ToggleSpellbookProf5, SLASH_ToggleSpellbookProf6, SLASH_ToggleSpellbookProf7, SLASH_ToggleSpellbookProf8 =
'/profs', '/profession', '/professions', '/profspells', '/profspellbook', '/professionspellbook', '/professionspells', '/prof';
function SlashCmdList.ToggleSpellbookProf(msg, editbox)
 printMsgDebug("Toggling profession spellbook frame.")
 ToggleSpellBook(BOOKTYPE_PROFESSION)
 clearChatbox()
end

-- SPELLBOOK (PETS)
SLASH_ToggleSpellbookPets1, SLASH_ToggleSpellbookPets2, SLASH_ToggleSpellbookPets3, SLASH_ToggleSpellbookPets4, SLASH_ToggleSpellbookPets5, SLASH_ToggleSpellbookPets6 =
'/pets', '/petbook', '/spellbookpets', '/spellpets', '/petsspellbook', '/petsbook';
function SlashCmdList.ToggleSpellbookPets(msg, editbox)
 printMsgDebug("Toggling profession spellbook frame.")
 ToggleSpellBook(BOOKTYPE_PET)
 clearChatbox()
end

-- WORLD MAP
SLASH_ToggleWorldMap1, SLASH_ToggleWorldMap2 =
'/map', '/worldmap';
function SlashCmdList.ToggleWorldMap(msg, editbox)
 printMsgDebug("Toggling world map frame.")
 OpenWorldMap()
 -- OpenWorldMap(mapID)
 -- obtainable through /dump GetInstanceInfo()
 -- ATM this can't get the current map so it can bug when trying to go into other maps. Still opens it.
 clearChatbox()
end

-- TALENTS
SLASH_ToggleTalents1, SLASH_ToggleTalents2 =
'/talents', '/talent';
function SlashCmdList.ToggleTalents(msg, editbox)
 printMsgDebug("Toggling talents frame.")
 ToggleTalentFrame()
 clearChatbox()
end

-- VAULT
SLASH_ToggleVault1, SLASH_ToggleVault2, SLASH_ToggleVault3 =
'/vault','/mythicvault','/mythicrewards';
function SlashCmdList.ToggleVault(msg, editbox)
 printMsgDebug("Toggling vault frame.")
 C_AddOns.LoadAddOn("Blizzard_WeeklyRewards");
 WeeklyRewardsFrame:Show()
 clearChatbox()
end

-- GUILD
SLASH_ToggleGuild1,SLASH_ToggleGuild2 =
'/guild', '/guilds';
function SlashCmdList.ToggleGuild(msg, editbox)
 printMsgDebug("Toggling guild frame.")
 ToggleGuildFrame()
 clearChatbox()
end

-- COMMUNITY (same as guild)
SLASH_ToggleCommunity1, SLASH_ToggleCommunity2, SLASH_ToggleCommunity3, SLASH_ToggleCommunity4, SLASH_ToggleCommunity5 =
'/community','/communities','/communitys','/communs','/commun';
function SlashCmdList.ToggleCommunity(msg, editbox)
 printMsgDebug("Toggling community frame.")
 ToggleCommunitiesFrame()
 clearChatbox()
end

-- GUILD INFO
SLASH_ToggleGuildInfo1, SLASH_ToggleGuildInfo2, SLASH_ToggleGuildInfo3, SLASH_ToggleGuildInfo4, SLASH_ToggleGuildInfo5, SLASH_ToggleGuildInfo6 =
'/guildinfo','/guildinf','/ginfo','/guildinformation','/guildsinfo','/ginf';
function SlashCmdList.ToggleGuildInfo(msg, editbox)
 printMsgDebug("Toggling guild information frame.")
 ToggleGuildFrame()
 CommunitiesFrame.GuildInfoTab:GetScript("OnClick")(CommunitiesFrame.GuildInfoTab)
 clearChatbox()
end

-- GAME MENU
SLASH_ToggleGameMenu1, SLASH_ToggleGameMenu2, SLASH_ToggleGameMenu3 =
'/menu','/gamemenu','/gmenu';
function SlashCmdList.ToggleGameMenu(msg, editbox)
 printMsgDebug("Toggling game menu frame.")
 GameMenuFrame:SetShown(not GameMenuFrame:IsShown())
 clearChatbox()
end

-- PVP FRAME
SLASH_TogglePVPFrame1,SLASH_TogglePVPFrame2=
'/pvpframe','/pvpmenu';
function SlashCmdList.TogglePVPFrame(msg, editbox)
 printMsgDebug("Toggling PvP frame.")
 TogglePVPFrame();
 clearChatbox()
end

-- BAGS
SLASH_ToggleBags1,SLASH_ToggleBags2,SLASH_ToggleBags3=
'/bags','/bag','/inventory';
function SlashCmdList.ToggleBags(msg, editbox)
 printMsgDebug("Toggling bag frame.")
 OpenAllBags()
 clearChatbox()
end

-- FRIENDS
SLASH_ToggleFriends1,SLASH_ToggleFriends2=
'/friends','/social';
function SlashCmdList.ToggleFriends(msg, editbox)
 printMsgDebug("Toggling friends frame.")
 ToggleFriendsFrame()
 clearChatbox()
end

-- WHO
SLASH_ToggleWho1,SLASH_ToggleWho2,SLASH_ToggleWho3=
'/whois','/people','/players';
function SlashCmdList.ToggleWho(msg, editbox)
 printMsgDebug("Toggling who frame.")
 ToggleFriendsFrame(2)
 clearChatbox()
end

-- RAID LIST
SLASH_ToggleRaidlist1,SLASH_ToggleRaidlist2,SLASH_ToggleRaidlist3=
'/raidlist','/rlist','raidl';
function SlashCmdList.ToggleRaidlist(msg, editbox)
 printMsgDebug("Toggling raid list frame.")
 ToggleFriendsFrame(2)
 clearChatbox()
end

-- CUSTOMER SUPPORT
SLASH_ToggleSupport1,SLASH_ToggleSupport2,SLASH_ToggleSupport3,SLASH_ToggleSupport4,SLASH_ToggleSupport5,SLASH_ToggleSupport6=
'/customersupport','/csupport','customers','customer','support','helpmeimdying';
function SlashCmdList.ToggleSupport(msg, editbox)
 printMsgDebug("Toggling support frame.")
 ToggleHelpFrame()
 clearChatbox()
end

-- FRAMERATE
SLASH_ToggleFPS1,SLASH_ToggleFPS2=
'/framerate','/fps';
function SlashCmdList.ToggleFPS(msg, editbox)
 printMsgDebug("Toggling FPS frame.")
 ToggleFramerate()
 clearChatbox()
end

-- KEYRING
SLASH_ToggleKeyringFrame1,SLASH_ToggleKeyringFrame2=
'/keyring','/keyrings';
function SlashCmdList.ToggleKeyringFrame(msg, editbox)
 printMsgDebug("Toggling keyring frame.")
 ToggleKeyRing()
 clearChatbox()
end


-- ACHIEVEMENTS
SLASH_ToggleAchievements1,SLASH_ToggleAchievements2=
'/achieve','/achiv';
-- /achievements already exists
function SlashCmdList.ToggleAchievements(msg, editbox)
 printMsgDebug("Toggling achievement frame.")
 ToggleAchievements()
 clearChatbox()
end

-- BLIZZ INTERFACE NUMBER
SLASH_ShowInterfaceVersion1,SLASH_ShowInterfaceVersion2,SLASH_ShowInterfaceVersion3,SLASH_ShowInterfaceVersion4,SLASH_ShowInterfaceVersion5,SLASH_ShowInterfaceVersion6,SLASH_ShowInterfaceVersion7,SLASH_ShowInterfaceVersion8,SLASH_ShowInterfaceVersion9,SLASH_ShowInterfaceVersion10,SLASH_ShowInterfaceVersion11,SLASH_ShowInterfaceVersion12,SLASH_ShowInterfaceVersion13=
'/interfaceversion','/interfacever','/interfacenumber','/interfacenum','/uinum','/uinumber','/uiversion','/wowversion','/wowver','/wownum','/wownumber','/gameversion','/gamever';
function SlashCmdList.ShowInterfaceVersion(msg, editbox)
 printMsgDebug("Showing WoW interface version.")
 local WoWVersion1 = select(1, GetBuildInfo()) -- Readable version number
 -- local WoWVersion2 = select(2, GetBuildInfo()) -- idk, not used
 local WoWVersion3 = select(3, GetBuildInfo()) -- Date
 local WoWVersion4 = select(4, GetBuildInfo()) -- Interface number
 printMsg("WoW version is patch \"".. WoWVersion1 .. "\", released on \"" .. WoWVersion3 .. "\", with an addon interface number of \"".. WoWVersion4 .."\".")
 ShowInterfaceVersion()
 clearChatbox()
end

-- CLEAR HOTBARS
SLASH_ClearHotbars1,SLASH_ClearHotbars2,SLASH_ClearHotbars3,SLASH_ClearHotbars4,SLASH_ClearHotbars5,SLASH_ClearHotbars6,SLASH_ClearHotbars7,SLASH_ClearHotbars8=
'/clearbars','/clearbar','/clearhotbar','/clearhotbars','/clearhb','/wipehotbar','/wipehb','/wipebars';
function SlashCmdList.ClearHotbars(msg, editbox)
 printMsgDebug("Clearing hotbars.")
 for i = 1,120 do
    PickupAction(i)
    PutItemInBackpack()
    ClearCursor()
 end
 ClearHotbars()
 clearChatbox()
end

-- BLACKSMITHING
SLASH_ProfessionBlacksmithing1,SLASH_ProfessionBlacksmithing2,SLASH_ProfessionBlacksmithing3,SLASH_ProfessionBlacksmithing4=
'/blacksmithing','/blacksmith','/bsmith','/bsmithing';
function SlashCmdList.ProfessionBlacksmithing(msg, editbox)
 printMsgDebug("Opening Blacksmithing profession.")
 C_TradeSkillUI.OpenTradeSkill(C_TradeSkillUI.GetProfessionSkillLineID(Enum.Profession.Blacksmithing))
 clearChatbox()
 ProfessionBlacksmithing()
end

-- ENCHANTING
SLASH_ProfessionEnchanting1,SLASH_ProfessionEnchanting2,SLASH_ProfessionEnchanting3=
'/enchanting','/ench','/enchant';
function SlashCmdList.ProfessionEnchanting(msg, editbox)
 printMsgDebug("Opening Enchanting profession.")
 C_TradeSkillUI.OpenTradeSkill(C_TradeSkillUI.GetProfessionSkillLineID(Enum.Profession.Enchanting))
 clearChatbox()
 ProfessionEnchantingy()
end

-- ENGINEERING
SLASH_ProfessionEngineering1,SLASH_ProfessionEngineering2,SLASH_ProfessionEngineering3=
'/engineering','/engineer','/engineers';
function SlashCmdList.ProfessionEngineering(msg, editbox)
 printMsgDebug("Opening Engineering profession.")
 C_TradeSkillUI.OpenTradeSkill(C_TradeSkillUI.GetProfessionSkillLineID(Enum.Profession.Engineering))
 clearChatbox()
 ProfessionEngineering()
end

-- HERBALISM
SLASH_ProfessionHerbalism1,SLASH_ProfessionHerbalism2,SLASH_ProfessionHerbalism3,SLASH_ProfessionHerbalism4=
'/herbalism','/herbalist','/herbing','/herbs';
function SlashCmdList.ProfessionHerbalism(msg, editbox)
 printMsgDebug("Opening Herbalism profession.")
 C_TradeSkillUI.OpenTradeSkill(C_TradeSkillUI.GetProfessionSkillLineID(Enum.Profession.Herbalism))
 clearChatbox()
 ProfessionHerbalism()
end

-- INSCRIPTION
SLASH_ProfessionInscription1,SLASH_ProfessionInscription2,SLASH_ProfessionInscription3=
'/inscription','/insc','/inscrip';
function SlashCmdList.ProfessionInscription(msg, editbox)
 printMsgDebug("Opening Inscription profession.")
 C_TradeSkillUI.OpenTradeSkill(C_TradeSkillUI.GetProfessionSkillLineID(Enum.Profession.Inscription))
 clearChatbox()
 ProfessionInscription()
end

-- JEWELCRAFTING
SLASH_ProfessionJewelcrafting1,SLASH_ProfessionJewelcrafting2,SLASH_ProfessionJewelcrafting3=
'/jewelcrafting','/jewelc','/jeweling';
function SlashCmdList.ProfessionJewelcrafting(msg, editbox)
 printMsgDebug("Opening Jewelcrafting profession.")
 C_TradeSkillUI.OpenTradeSkill(C_TradeSkillUI.GetProfessionSkillLineID(Enum.Profession.Jewelcrafting))
 clearChatbox()
 ProfessionJewelcrafting()
end

-- LEATHERWORKING
SLASH_ProfessionLeathworking1,SLASH_ProfessionLeathworking2,SLASH_ProfessionLeathworking3=
'/leatherworking','/leatherwork','/leatherw';
function SlashCmdList.ProfessionLeathworking(msg, editbox)
 printMsgDebug("Opening Leathworking profession.")
 C_TradeSkillUI.OpenTradeSkill(C_TradeSkillUI.GetProfessionSkillLineID(Enum.Profession.Leatherworking))
 clearChatbox()
 ProfessionLeathworking()
end

-- MINING
SLASH_ProfessionMining1,SLASH_ProfessionMining2,SLASH_ProfessionMining3=
'/mining','/miner','/mine';
function SlashCmdList.ProfessionMining(msg, editbox)
 printMsgDebug("Opening Mining profession.")
 C_TradeSkillUI.OpenTradeSkill(C_TradeSkillUI.GetProfessionSkillLineID(Enum.Profession.Mining))
 clearChatbox()
 ProfessionMining()
end

-- SKINNING
SLASH_ProfessionSkinning1,SLASH_ProfessionSkinning2,SLASH_ProfessionSkinning3=
'/skinning','/skinnin','/skinner';
function SlashCmdList.ProfessionSkinning(msg, editbox)
 printMsgDebug("Opening Skinning profession.")
 C_TradeSkillUI.OpenTradeSkill(C_TradeSkillUI.GetProfessionSkillLineID(Enum.Profession.Skinning))
 clearChatbox()
 ProfessionSkinning()
end

-- TAILORING
SLASH_ProfessionTailoring1,SLASH_ProfessionTailoring2,SLASH_ProfessionTailoring3=
'/tailoring','/tailor','/sewing';
function SlashCmdList.ProfessionTailoring(msg, editbox)
 printMsgDebug("Opening Tailoring profession.")
 C_TradeSkillUI.OpenTradeSkill(C_TradeSkillUI.GetProfessionSkillLineID(Enum.Profession.Tailoring))
 clearChatbox()
 ProfessionTailoring()
end

-- ALCHEMY
SLASH_ProfessionAlchemy1,SLASH_ProfessionAlchemy2,SLASH_ProfessionAlchemy3=
'/alchemy','/alc','/alch';
function SlashCmdList.ProfessionAlchemy(msg, editbox)
 printMsgDebug("Opening Alchemy profession.")
 C_TradeSkillUI.OpenTradeSkill(C_TradeSkillUI.GetProfessionSkillLineID(Enum.Profession.Alchemy))
 ProfessionAlchemy()
 clearChatbox()
end

-- COOKING
SLASH_ProfessionCooking1,SLASH_ProfessionCooking2,SLASH_ProfessionCooking3=
'/cooking','/cook','/baking';
function SlashCmdList.ProfessionCooking(msg, editbox)
 printMsgDebug("Opening Cooking profession.")
 C_TradeSkillUI.OpenTradeSkill(C_TradeSkillUI.GetProfessionSkillLineID(Enum.Profession.Cooking))
 clearChatbox()
 ProfessionCooking()
end

-- FISHING
SLASH_ProfessionFishing1,SLASH_ProfessionFishing2,SLASH_ProfessionFishing3=
'/fishing','/fishin','/fish';
function SlashCmdList.ProfessionFishing(msg, editbox)
 printMsgDebug("Opening Fishing profession.")
 C_TradeSkillUI.OpenTradeSkill(C_TradeSkillUI.GetProfessionSkillLineID(Enum.Profession.Fishing))
 clearChatbox()
 ProfessionFishing()
end

-- HEARTHSTONE
SLASH_Hearthstone1, SLASH_Hearthstone2, SLASH_Hearthstone3, SLASH_Hearthstone4=
'/hearthstone', '/hs', '/hearth', '/hearths';
function SlashCmdList.Hearthstone(msg, editbox) -- Use a random hearthstone that the player has obtained, listing here
    local hearthstoneToys = {
        6948,    -- Default Hearthstone
        286353,  -- Brewfest Reveler's Hearthstone (166747)
        93672,   -- Dark Portal
        188952,  -- Dominated Hearthstone
        420418,  -- Deepdweller's Earthen Hearthstone (208704)
        190169,  -- Enlightened Hearthstone
        172179,  -- Eternal Traveler's Hearthstone
        54452,   -- Ethereal Portal
        166746,  -- Fire Eater's Hearthstone
        162973,  -- Greatfather Winter's Hearthstone
        278559,  -- Headless Horseman's Hearthstone (163045)
        209035,  -- Hearthstone of the Flame
        168907,  -- Holographic Digitalization Hearthstone
        64488,   -- The Innkeeper's Daughter
        184343,  -- Kyrian Hearthstone
        165669,  -- Lunar Elder's Hearthstone
        166746,  -- Noble Gardener's Hearthstone
        182773,  -- Necrolord Hearthstone
        180290,  -- Night Fae Hearthstone
        165802,  -- Noble Gardener's Hearthstone
        200630,  -- Ohn'ir Windsage's Hearthstone
        165670,  -- Peddlefeet's Lovely Hearthstone
        212337,  -- Stone of the Hearth
        193588,  -- Timewalker's Hearthstone
        142542,  -- Tome of Town Portal
        193589,  -- Venthyr Sinstone
    }
    printMsgDebug("Attempting to use a Hearthstone from your available collection.")
    local availableHearthstones = {} -- Filter for collected & usable toys.
    for _, toyID in ipairs(hearthstoneToys) do
        if PlayerHasToy(toyID) then -- Filter for collected
            local start, duration, enable = C_Item.GetItemCooldown(toyID)
            if enable == 1 then -- Filter for usable
                if start + duration <= GetTime() then -- Filter for off cooldown, else tell the player how long it's off cooldown for.
                    table.insert(availableHearthstones, toyID)
                else
                    local remaining = start + duration - GetTime()
                    local minutes = math.floor(remaining / 60)
                    local seconds = math.floor(remaining % 60)
                    printMsg("Your Hearthstone will be off cooldown in " .. minutes .. "m " .. seconds .. "s.")
                end
            end
        end
    end
    if #availableHearthstones > 0 then -- If the player has any usable hearthstone toys, use one at random
        local randomIndex = math.random(#availableHearthstones)
        UseToy(availableHearthstones[randomIndex])
    else
        printMsg("You do not have any usable hearthstones in your collection! Visit an Innkeeper in any major city and use the Hearthstone item in your bags to obtain one for your collection.")
    end
    clearChatbox()
end

-- GARRISON HEARTHSTONE
SLASH_UseGarrisonHearthstone1, SLASH_UseGarrisonHearthstone2, SLASH_UseGarrisonHearthstone3, SLASH_UseGarrisonHearthstone4, SLASH_UseGarrisonHearthstone5, SLASH_UseGarrisonHearthstone6=
'/garrisonhearth', '/ghs', '/garrison', '/garris', '/garrisonhearthstone', '/garrishs'
function SlashCmdList.UseGarrisonHearthstone(msg, editbox)
    local garrisonHearthstoneID = 110560
    printMsgDebug("Using Garrison hearthstone.")
    if PlayerHasToy(garrisonHearthstoneID) then
        UseToy(garrisonHearthstoneID)
    else
        printMsg("You do not have the Garrison Hearthstone in your collection! Go to your capital city and pick up the quests to start Warlords of Draenor and establish your garrison before you can use this.")
    end
    clearChatbox()
end

-- DALARAN HEARTHSTONE
SLASH_UseGarrisonHearthstone1, SLASH_UseGarrisonHearthstone2, SLASH_UseGarrisonHearthstone3, SLASH_UseGarrisonHearthstone4=
'/dalaranhearth', '/dalaran', '/dalaranhs', '/dalaranhearthstone'
function SlashCmdList.UseDalaranHearthstone(msg, editbox)
    local dalaranHearthstoneID = 140192
    printMsgDebug("Using Dalaran hearthstone.")
    if PlayerHasToy(dalaranHearthstoneID) then
        UseToy(dalaranHearthstoneID)
    else
        printMsg("You do not have the Dalaran Hearthstone in your collection! Go to your capital city and pick up the quests to start Legion and get to Legion's Dalaran manually before you can use this. If you have lost your Dalaran Hearthstone, you can talk with Amisi Azuregaze at the Legerdemain Lounge of Dalaran to replace it and turn it into a toy.")
    end
    clearChatbox()
end
