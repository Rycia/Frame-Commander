-- SETTINGS
FCDebugLevel = 0
function FCDebug()
    -- Level 0: Disabled
    -- Level 1: Info
    -- Level 2: Error
    -- Level 3: Developer
    -- Some states are unused for now, but there for later if I want to add them.
	if FCDebugLevel >= 1 then -- if debug level is info
        print ("FrameCommander: loaded.")
		if FCDebugLevel >= 3 then -- if debug level is developer, warn user
			print ("FrameCommander: Developer debug mode enabled! Disable this in FrameCommander.lua.")
		end
    end
end
FCDebug()

-- COMMANDS
-- Self note: Don't change weird capitalization/caps/'_' or WoW API breaks

-- CHARECTER
SLASH_ToggleChar1, SLASH_ToggleChar2, SLASH_ToggleChar3, SLASH_ToggleChar4 =
'/character', '/char', '/charecter', '/toon';
function SlashCmdList.ToggleChar(msg, editbox)
 if FCDebugLevel >= 3 then
    print ("FrameCommander: Toggling character.")
 end
 ToggleCharacter("PaperDollFrame")
end

-- REPUTATION
SLASH_ToggleRep1, SLASH_ToggleRep2, SLASH_ToggleRep3 = 
'/reputation', '/rep', '/reput';
function SlashCmdList.ToggleRep(msg, editbox)
 if FCDebugLevel >= 3 then
    print ("FrameCommander: Toggling reputation.")
 end
 ToggleCharacter("ReputationFrame")
end

-- CURRENCY
SLASH_ToggleCurrency1, SLASH_ToggleCurrency2, SLASH_ToggleCurrency3, SLASH_ToggleCurrency4, SLASH_ToggleCurrency5, SLASH_ToggleCurrency6 = 
'/currency', '/curr', '/cur', '/money', '/tokens', '/token';
function SlashCmdList.ToggleCurrency(msg, editbox)
 if FCDebugLevel >= 3 then
    print ("FrameCommander: Toggling currency.")
 end
 ToggleCharacter("TokenFrame")
end

-- SPELLBOOK
SLASH_ToggleSpellbook1, SLASH_ToggleSpellbook2, SLASH_ToggleSpellbook3, SLASH_ToggleSpellbook4, SLASH_ToggleSpellbook5 = 
'/spells', '/spellbook', '/actionbook', '/actions', '/abilities';
function SlashCmdList.ToggleSpellbook(msg, editbox)
 if FCDebugLevel >= 3 then
    print ("FrameCommander: Toggling spellbook.")
 end
 ToggleSpellBook(BOOKTYPE_SPELL)
end

-- SPELLBOOK (PROFESSION)
SLASH_ToggleSpellbookProf1, SLASH_ToggleSpellbookProf2, SLASH_ToggleSpellbookProf3, SLASH_ToggleSpellbookProf4, SLASH_ToggleSpellbookProf5, SLASH_ToggleSpellbookProf6, SLASH_ToggleSpellbookProf7, SLASH_ToggleSpellbookProf8 = 
'/profs', '/profession', '/professions', '/profspells', '/profspellbook', '/professionspellbook', '/professionspells', '/prof';
function SlashCmdList.ToggleSpellbookProf(msg, editbox)
 if FCDebugLevel >= 3 then
    print ("FrameCommander: Toggling profession spellbook.")
 end
 ToggleSpellBook(BOOKTYPE_PROFESSION)
end

-- SPELLBOOK (PETS)
SLASH_ToggleSpellbookPets1, SLASH_ToggleSpellbookPets2, SLASH_ToggleSpellbookPets3, SLASH_ToggleSpellbookPets4, SLASH_ToggleSpellbookPets5, SLASH_ToggleSpellbookPets6 = 
'/pets', '/petbook', '/spellbookpets', '/spellpets', '/petsspellbook', '/petsbook';
function SlashCmdList.ToggleSpellbookPets(msg, editbox)
 if FCDebugLevel >= 3 then
    print ("FrameCommander: Toggling profession spellbook.")
 end
 ToggleSpellBook(BOOKTYPE_PET)
end

-- WORLD MAP
SLASH_ToggleWorldMap1, SLASH_ToggleWorldMap2 = 
'/map', '/worldmap';
function SlashCmdList.ToggleWorldMap(msg, editbox)
 if FCDebugLevel >= 3 then
    print ("FrameCommander: Toggling world map.")
 end
 OpenWorldMap()
 -- OpenWorldMap(mapID)
 -- obtainable through /dump GetInstanceInfo()
 -- ATM this can't get the current map so it can bug when trying to go into other maps. Still opens it.
end

-- TALENTS
SLASH_ToggleTalents1, SLASH_ToggleTalents2 = 
'/talents', '/talent';
function SlashCmdList.ToggleTalents(msg, editbox)
 if FCDebugLevel >= 3 then
    print ("FrameCommander: Toggling talents.")
 end
 ToggleTalentFrame()
end

-- VAULT
SLASH_ToggleVault1, SLASH_ToggleVault2, SLASH_ToggleVault3 = 
'/vault','/mythicvault','/mythicrewards';
function SlashCmdList.ToggleVault(msg, editbox)
 if FCDebugLevel >= 3 then
    print ("FrameCommander: Toggling vault.")
 end
 LoadAddOn("Blizzard_WeeklyRewards");
 WeeklyRewardsFrame:Show()
end

-- GUILD
SLASH_ToggleGuild1,SLASH_ToggleGuild2 = 
'/guild', '/guilds';
function SlashCmdList.ToggleGuild(msg, editbox)
 if FCDebugLevel >= 3 then
    print ("FrameCommander: Toggling guild.")
 end
 ToggleGuildFrame()
end

-- COMMUNITY (same as guild)
SLASH_ToggleCommunity1, SLASH_ToggleCommunity2, SLASH_ToggleCommunity3, SLASH_ToggleCommunity4, SLASH_ToggleCommunity5 = 
'/community','/communities','/communitys','/communs','/commun';
function SlashCmdList.ToggleCommunity(msg, editbox)
 if FCDebugLevel >= 3 then
    print ("FrameCommander: Toggling community.")
 end
 ToggleCommunitiesFrame()
end

-- GUILD INFO
SLASH_ToggleGuildInfo1, SLASH_ToggleGuildInfo2, SLASH_ToggleGuildInfo3, SLASH_ToggleGuildInfo4, SLASH_ToggleGuildInfo5, SLASH_ToggleGuildInfo6 = 
'/guildinfo','/guildinf','/ginfo','/guildinformation','/guildsinfo','/ginf';
function SlashCmdList.ToggleGuildInfo(msg, editbox)
 if FCDebugLevel >= 3 then
    print ("FrameCommander: Toggling guild information.")
 end
 ToggleGuildFrame() 
 CommunitiesFrame.GuildInfoTab:GetScript("OnClick")(CommunitiesFrame.GuildInfoTab)
end

-- GAME MENU
SLASH_ToggleGameMenu1, SLASH_ToggleGameMenu2, SLASH_ToggleGameMenu3 = 
'/menu','/gamemenu','/gmenu';
function SlashCmdList.ToggleGameMenu(msg, editbox)
 if FCDebugLevel >= 3 then
    print ("FrameCommander: Toggling game menu.")
 end
 GameMenuFrame:SetShown(not GameMenuFrame:IsShown())
end

-- PVP FRAME
SLASH_TogglePVPFrame1,SLASH_TogglePVPFrame2= 
'/pvpframe','/pvpmenu';
function SlashCmdList.TogglePVPFrame(msg, editbox)
 if FCDebugLevel >= 3 then
    print ("FrameCommander: Toggling PVP frame.")
 end
 TogglePVPFrame();
end

-- BAGS
SLASH_ToggleBags1,SLASH_ToggleBags2,SLASH_ToggleBags3= 
'/bags','/bag','/inventory';
function SlashCmdList.ToggleBags(msg, editbox)
 if FCDebugLevel >= 3 then
    print ("FrameCommander: Toggling bags.")
 end
 OpenAllBags()
end

-- FRIENDS
SLASH_ToggleFriends1,SLASH_ToggleFriends2= 
'/friends','/social';
function SlashCmdList.ToggleFriends(msg, editbox)
 if FCDebugLevel >= 3 then
    print ("FrameCommander: Toggling friends.")
 end
 ToggleFriendsFrame()
end

-- WHO
SLASH_ToggleWho1,SLASH_ToggleWho2,SLASH_ToggleWho3= 
'/whois','/people','/players';
function SlashCmdList.ToggleWho(msg, editbox)
 if FCDebugLevel >= 3 then
    print ("FrameCommander: Toggling who.")
 end
 ToggleFriendsFrame(2)
end

-- RAID LIST
SLASH_ToggleRaidlist1,SLASH_ToggleRaidlist2,SLASH_ToggleRaidlist3= 
'/raidlist','/rlist','raidl';
function SlashCmdList.ToggleRaidlist(msg, editbox)
 if FCDebugLevel >= 3 then
    print ("FrameCommander: Toggling raid list.")
 end
 ToggleFriendsFrame(2)
end

-- CUSTOMER SUPPORT
SLASH_ToggleSupport1,SLASH_ToggleSupport2,SLASH_ToggleSupport3,SLASH_ToggleSupport4,SLASH_ToggleSupport5,SLASH_ToggleSupport6= 
'/customersupport','/csupport','customers','customer','support','helpmeimdying';
function SlashCmdList.ToggleSupport(msg, editbox)
 if FCDebugLevel >= 3 then
    print ("FrameCommander: Toggling support.")
 end
 ToggleHelpFrame()
end

-- FRAMERATE
SLASH_ToggleFPS1,SLASH_ToggleFPS2= 
'/framerate','/fps';
function SlashCmdList.ToggleFPS(msg, editbox)
 if FCDebugLevel >= 3 then
    print ("FrameCommander: Toggling FPS.")
 end
 ToggleFramerate()
end

-- KEYRING
SLASH_ToggleKeyringFrame1,SLASH_ToggleKeyringFrame2= 
'/keyring','/keyrings';
function SlashCmdList.ToggleKeyringFrame(msg, editbox)
 if FCDebugLevel >= 3 then
    print ("FrameCommander: Toggling Keyring.")
 end
 ToggleKeyRing()
end


-- ACHIEVEMENTS
SLASH_ToggleAchievements1,SLASH_ToggleAchievements2= 
'/achieve','/achiv';
-- /achievements already exists
function SlashCmdList.ToggleAchievements(msg, editbox)
 if FCDebugLevel >= 3 then
    print ("FrameCommander: Toggling Keyring.")
 end
 ToggleKeyRing()
end