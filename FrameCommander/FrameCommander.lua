-------------------------------------------------------
--- Debug & Message Control
local function printMsg(message)
    print("[Frame Commander] "..message)
end

local debug = true
local function printMsgDebug(message)
	if debug == true then
		printMsg(message)
	end
end
printMsgDebug("Debug mode is enabled. Please disable this in FrameCommander.lua to stop these messages.")
-------------------------------------------------------
-- CHARACTER
SLASH_ToggleChar1, SLASH_ToggleChar2, SLASH_ToggleChar3, SLASH_ToggleChar4 =
'/character', '/char', '/charecter', '/toon';
function SlashCmdList.ToggleChar(msg, editbox)
 printMsgDebug("Toggling character frame.")
 ToggleCharacter("PaperDollFrame")
end

-- REPUTATION
SLASH_ToggleRep1, SLASH_ToggleRep2, SLASH_ToggleRep3 =
'/reputation', '/rep', '/reput';
function SlashCmdList.ToggleRep(msg, editbox)
 printMsgDebug("Toggling reputation frame.")
 ToggleCharacter("ReputationFrame")
end

-- CURRENCY
SLASH_ToggleCurrency1, SLASH_ToggleCurrency2, SLASH_ToggleCurrency3, SLASH_ToggleCurrency4, SLASH_ToggleCurrency5, SLASH_ToggleCurrency6 =
'/currency', '/curr', '/cur', '/money', '/tokens', '/token';
function SlashCmdList.ToggleCurrency(msg, editbox)
 printMsgDebug("Toggling currency frame.")
 ToggleCharacter("TokenFrame")
end

-- SPELLBOOK
SLASH_ToggleSpellbook1, SLASH_ToggleSpellbook2, SLASH_ToggleSpellbook3, SLASH_ToggleSpellbook4, SLASH_ToggleSpellbook5 =
'/spells', '/spellbook', '/actionbook', '/actions', '/abilities';
function SlashCmdList.ToggleSpellbook(msg, editbox)
 printMsgDebug("Toggling spellbook frame.")
 ToggleSpellBook(BOOKTYPE_SPELL)
end

-- SPELLBOOK (PROFESSION)
SLASH_ToggleSpellbookProf1, SLASH_ToggleSpellbookProf2, SLASH_ToggleSpellbookProf3, SLASH_ToggleSpellbookProf4, SLASH_ToggleSpellbookProf5, SLASH_ToggleSpellbookProf6, SLASH_ToggleSpellbookProf7, SLASH_ToggleSpellbookProf8 =
'/profs', '/profession', '/professions', '/profspells', '/profspellbook', '/professionspellbook', '/professionspells', '/prof';
function SlashCmdList.ToggleSpellbookProf(msg, editbox)
 printMsgDebug("Toggling profession spellbook frame.")
 ToggleSpellBook(BOOKTYPE_PROFESSION)
end

-- SPELLBOOK (PETS)
SLASH_ToggleSpellbookPets1, SLASH_ToggleSpellbookPets2, SLASH_ToggleSpellbookPets3, SLASH_ToggleSpellbookPets4, SLASH_ToggleSpellbookPets5, SLASH_ToggleSpellbookPets6 =
'/pets', '/petbook', '/spellbookpets', '/spellpets', '/petsspellbook', '/petsbook';
function SlashCmdList.ToggleSpellbookPets(msg, editbox)
 printMsgDebug("Toggling profession spellbook frame.")
 ToggleSpellBook(BOOKTYPE_PET)
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
end

-- TALENTS
SLASH_ToggleTalents1, SLASH_ToggleTalents2 =
'/talents', '/talent';
function SlashCmdList.ToggleTalents(msg, editbox)
 printMsgDebug("Toggling talents frame.")
 ToggleTalentFrame()
end

-- VAULT
SLASH_ToggleVault1, SLASH_ToggleVault2, SLASH_ToggleVault3 =
'/vault','/mythicvault','/mythicrewards';
function SlashCmdList.ToggleVault(msg, editbox)
 printMsgDebug("Toggling vault frame.")
 C_AddOns.LoadAddOn("Blizzard_WeeklyRewards");
 WeeklyRewardsFrame:Show()
end

-- GUILD
SLASH_ToggleGuild1,SLASH_ToggleGuild2 =
'/guild', '/guilds';
function SlashCmdList.ToggleGuild(msg, editbox)
 printMsgDebug("Toggling guild frame.")
 ToggleGuildFrame()
end

-- COMMUNITY (same as guild)
SLASH_ToggleCommunity1, SLASH_ToggleCommunity2, SLASH_ToggleCommunity3, SLASH_ToggleCommunity4, SLASH_ToggleCommunity5 =
'/community','/communities','/communitys','/communs','/commun';
function SlashCmdList.ToggleCommunity(msg, editbox)
 printMsgDebug("Toggling community frame.")
 ToggleCommunitiesFrame()
end

-- GUILD INFO
SLASH_ToggleGuildInfo1, SLASH_ToggleGuildInfo2, SLASH_ToggleGuildInfo3, SLASH_ToggleGuildInfo4, SLASH_ToggleGuildInfo5, SLASH_ToggleGuildInfo6 =
'/guildinfo','/guildinf','/ginfo','/guildinformation','/guildsinfo','/ginf';
function SlashCmdList.ToggleGuildInfo(msg, editbox)
 printMsgDebug("Toggling guild information frame.")
 ToggleGuildFrame()
 CommunitiesFrame.GuildInfoTab:GetScript("OnClick")(CommunitiesFrame.GuildInfoTab)
end

-- GAME MENU
SLASH_ToggleGameMenu1, SLASH_ToggleGameMenu2, SLASH_ToggleGameMenu3 =
'/menu','/gamemenu','/gmenu';
function SlashCmdList.ToggleGameMenu(msg, editbox)
 printMsgDebug("Toggling game menu frame.")
 GameMenuFrame:SetShown(not GameMenuFrame:IsShown())
end

-- PVP FRAME
SLASH_TogglePVPFrame1,SLASH_TogglePVPFrame2=
'/pvpframe','/pvpmenu';
function SlashCmdList.TogglePVPFrame(msg, editbox)
 printMsgDebug("Toggling PvP frame.")
 TogglePVPFrame();
end

-- BAGS
SLASH_ToggleBags1,SLASH_ToggleBags2,SLASH_ToggleBags3=
'/bags','/bag','/inventory';
function SlashCmdList.ToggleBags(msg, editbox)
 printMsgDebug("Toggling bag frame.")
 OpenAllBags()
end

-- FRIENDS
SLASH_ToggleFriends1,SLASH_ToggleFriends2=
'/friends','/social';
function SlashCmdList.ToggleFriends(msg, editbox)
 printMsgDebug("Toggling friends frame.")
 ToggleFriendsFrame()
end

-- WHO
SLASH_ToggleWho1,SLASH_ToggleWho2,SLASH_ToggleWho3=
'/whois','/people','/players';
function SlashCmdList.ToggleWho(msg, editbox)
 printMsgDebug("Toggling who frame.")
 ToggleFriendsFrame(2)
end

-- RAID LIST
SLASH_ToggleRaidlist1,SLASH_ToggleRaidlist2,SLASH_ToggleRaidlist3=
'/raidlist','/rlist','raidl';
function SlashCmdList.ToggleRaidlist(msg, editbox)
 printMsgDebug("Toggling raid list frame.")
 ToggleFriendsFrame(2)
end

-- CUSTOMER SUPPORT
SLASH_ToggleSupport1,SLASH_ToggleSupport2,SLASH_ToggleSupport3,SLASH_ToggleSupport4,SLASH_ToggleSupport5,SLASH_ToggleSupport6=
'/customersupport','/csupport','customers','customer','support','helpmeimdying';
function SlashCmdList.ToggleSupport(msg, editbox)
 printMsgDebug("Toggling support frame.")
 ToggleHelpFrame()
end

-- FRAMERATE
SLASH_ToggleFPS1,SLASH_ToggleFPS2=
'/framerate','/fps';
function SlashCmdList.ToggleFPS(msg, editbox)
 printMsgDebug("Toggling FPS frame.")
 ToggleFramerate()
end

-- KEYRING
SLASH_ToggleKeyringFrame1,SLASH_ToggleKeyringFrame2=
'/keyring','/keyrings';
function SlashCmdList.ToggleKeyringFrame(msg, editbox)
 printMsgDebug("Toggling keyring frame.")
 ToggleKeyRing()
end


-- ACHIEVEMENTS
SLASH_ToggleAchievements1,SLASH_ToggleAchievements2=
'/achieve','/achiv';
-- /achievements already exists
function SlashCmdList.ToggleAchievements(msg, editbox)
 printMsgDebug("Toggling achievement frame.")
 ToggleAchievements()
end

-- BLIZZ INTERFACE NUMBER
SLASH_ShowInterfaceVersion1,SLASH_ShowInterfaceVersion2,SLASH_ShowInterfaceVersion3,SLASH_ShowInterfaceVersion4,SLASH_ShowInterfaceVersion5,SLASH_ShowInterfaceVersion6,SLASH_ShowInterfaceVersion7,SLASH_ShowInterfaceVersion8,SLASH_ShowInterfaceVersion9,SLASH_ShowInterfaceVersion10,SLASH_ShowInterfaceVersion11,SLASH_ShowInterfaceVersion12,SLASH_ShowInterfaceVersion13=
'/interfaceversion','/interfacever','/interfacenumber','/interfacenum','/uinum','/uinumber','/uiversion','/wowversion','/wowver','/wownum','/wownumber','/gameversion','/gamever';
function SlashCmdList.ShowInterfaceVersion(msg, editbox)
 printMsgDebug("Showing WoW interface version.")
 printMsg("WoW version is \"", GetBuildInfo(),"\".")
 ShowInterfaceVersion()
end
