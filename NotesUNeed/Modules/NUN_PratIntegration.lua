--[[ ---------------------------------------------------------------------------
Create Date:	11/30/2010 6:30:41 AM
Last Modified:	2011-05-13T15:13:31Z
Author:			orgevo
Version:		NotesUNeed_6.70

NUN_PratIntegrationModule:
Provides integration with the Prat uber-chat addon (http://www.wowace.com/addons/prat-3-0/)

----------------------------------------------------------------------------- ]]

--[[====================================================================
	====================================================================
	STRINGS
	====================================================================
	====================================================================]]

--[[====================================================================
	====================================================================
	UPVALUES
	====================================================================
	====================================================================]]
local prat = Prat;
local nun = NotesUNeed;

-- now copy over the locals we'll need access to in this file
local locals = NotesUNeed.locals;
local local_player = locals.player;

local NuNData = nil;
local NuNSettings = nil;

NotesUNeed.NuN_Prat = {}
local nun_prat = NotesUNeed.NuN_Prat;

--[[====================================================================
	Library Functions
	====================================================================]]
local strformat, strgsub = string.format, string.gsub;

--[[====================================================================
	Blizzard API functions
	====================================================================]]

--[[====================================================================
	Consts
	====================================================================]]
local COLOR_OPEN, COLOR_CLOSE = "|cffA336ED", "|r";
local LINK_OPEN, LINK_CLOSE = "|HNuN:", "|h";
				

--[[====================================================================
	UI Objects
	====================================================================]]


local function nun_msgf(str, ...)
--[===[@debug@
	NuN_Message(strformat(str, ...));
--@end-debug@]===]
end

local function BindDynamicReferences()
	NuNSettings = _G.NuNSettings;
	NuNData = _G.NuNData;

	prat = Prat;
end

--[[	NuN_Prat:Initialize
  **
  ** Initializes the prat integration module of NotesUNeed.  Generally, this should only be called one time, once the player's stored
  ** variables have been loaded...but there shouldn't be any problems if it needs to be called more than once.
--]]
function NotesUNeed.NuN_Prat:Initialize()
	-- bind upvalues for variables that weren't initialized at startup
	BindDynamicReferences();

	-- register a group of custom anchors with Prat; this allows us to control where it will appear and what it will display, without
	-- disturbing the formatting of the rest of the chat message.	
	
	-- this determines where the icon will be displayed within the player-name section of the chat message
	-- currently, it's setup to be inserted just after the opening bracket.  
	prat.RegisterMessageItem("NUNPLAYERICON", "pP");

	-- this determines where the player rating previously set by the local player will appear in the chat message
	-- currently, it's setup to appear just before the closing bracket of the player name
	local nunPlayerRatingTag = {
		"Rnun",
		"RATINGTEXT",
		"NUN",
		"RATINGLINK",
		"nunR",
	}
	local anchorVar = "Pp";
	for i = 1, #nunPlayerRatingTag do
		prat.RegisterMessageItem(nunPlayerRatingTag[i], anchorVar, "before");
		anchorVar = nunPlayerRatingTag[i];
	end
	
	-- now register for Prat's custom chat event, so that we get the chance to fill in the values of the anchors we added, when a chat
	-- message comes through.
	prat.RegisterChatEvent(self, Prat.Events.FRAME_MESSAGE, "FrameMessage");
end


--[[	AssembleRatingIconLink
  **
  ** simple utility function for creating a chat window string that will display either a Horde or Alliance icon.
  **
  ** @param		[string]	the icon returned will be the that of the faction this player belongs to
  **
  ** @return	[string]	a string containing blizzard markup for representing a texture
--]]
local function AssembleRatingIconLink(playerName)

	-- now insert the icon
	local noteIcon = "";
	if locals.NuNDataPlayers[playerName].faction == "Horde" then
		noteIcon = "|TInterface\\AddOns\\NotesUNeed\\Artwork\\tHorde.blp:16|t";
	elseif locals.NuNDataPlayers[playerName].faction == "Alliance" then
		noteIcon = "|TInterface\\AddOns\\NotesUNeed\\Artwork\\tAlliance.blp:16|t";
	end

	return LINK_OPEN .. playerName .. LINK_CLOSE .. noteIcon .. LINK_CLOSE
end


--[[	InsertPlayerRatingTag
  **
  ** Utility function which populates the Prat anchors we're using to display the player's configured rating.
  **
  ** @param		[string]	the name of the player sending the message
  ** @param		[table]		table of Prat anchors that will be used when assembling the chat message for display.
--]]
local function InsertPlayerRatingTag(messageSender, messageData)
	-- this function is local partly so that we may make assumptions about our input values.
	-- first assumption is that the caller has verified that note data exists for messageSender
	-- second assumption is that the note data for messageSender has a valid value for prating (Player Rating)
	local playernoteData = locals.NuNDataPlayers[messageSender];
	
	local playerRatingText = NuNSettings.ratings[playernoteData.prating];
	if ( playerRatingText ~= "" and playerRatingText ~= " " ) then
		messageData.RATINGTEXT = " - {" .. playerRatingText .. "}";
		messageData.RATINGLINK = LINK_OPEN .. messageSender .. LINK_CLOSE;
	end
end

--[[	NuN_Prat:FrameMessage
  **
  ** Handler for the Prat custom chat event.  Populates the values of the anchor tokens we're using to show that
  ** the player sending this message either has note data, and/or has a player rating assigned to him.
--]]
function NotesUNeed.NuN_Prat:FrameMessage(arg, message, frame, event)
	if not frame.processingMsg then
		-- this little bool is to prevent reentrancy if we need to add logging inside this block
		frame.processingMsg = true;

		if ( message and NuNSettings and NuNSettings[local_player.realmName] and NuNSettings[local_player.realmName].chatty ) then
			-- message.ORG.PLAYER is the name of the player that sent the message, without any formatting
			local messageSender = message.ORG.PLAYER;
			
			-- shouldTagSender indicates that we have a saved note for this player
			local shouldTagSender = locals.NuNDataPlayers[messageSender] ~= nil;
			-- shouldTagRating indicates whether we have previously set a rating on this player.
			local shouldTagRating = shouldTagSender and locals.NuNDataPlayers[messageSender].prating ~= nil;
			--@non-debug@ 
			if ( messageSender == locals.player_Name ) then
				shouldTagSender = false;
			end
			--@end-non-debug@
			if ( shouldTagSender ) then
				if ( shouldTagRating ) then
					InsertPlayerRatingTag(messageSender, message);
				end
				
				message.NUNPLAYERICON = AssembleRatingIconLink(messageSender);
				message.nunR = COLOR_OPEN;
				message.Rnun = LINK_CLOSE .. COLOR_CLOSE;
			end
		end
		
		frame.processingMsg = nil;
	end
end
