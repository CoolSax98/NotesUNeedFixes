--[[ ---------------------------------------------------------------------------
Created:		12/31/2010 3:31:24 AM
Last Modified:	2011-01-01T01:24:11Z
Author:			orgevo
Version:		NotesUNeed_6.70

NUN_TitanIntegrationModule:
	TitanPanel integration module. 
	Registers and updates a plug-in object that can be consumed by the TitanPanel addon.
	http://wow.curse.com/downloads/wow-addons/details/titan-panel.aspx

NUN_TitanIntegrationModule is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

NUN_TitanIntegrationModule is distributed WITHOUT ANY WARRANTY; without even the 
implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  
See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with NUN_TitanIntegrationModule.	If not, see <http://www.gnu.org/licenses/>.

----------------------------------------------------------------------------- ]]

-->> MOVE TO AceLocale
NotesUNeed.Titan	= NotesUNeed.Titan or {}
NUN_TITANID			= "NuN";
TITAN_NUN_VERSION	= NUN_VERSION;

local TitanNUN		= NotesUNeed.Titan;
TitanNUN.id			= NUN_TITANID;
TitanNUN.addon		= NotesUNeed;
TitanNUN.version	= NUN_VERSION;
TitanNUN.authors	= "Telic, Organized Evolution, Adrill"

local locals = NotesUNeed.locals;
local notesDB = NuNData;
realmNotesDB = nil;
local currentRealmName;


local function tablesize(tbl,min,ignorecount)
	local cnt = 0;
	if tbl then
		for _, _ in pairs(tbl) do
			cnt = cnt + 1;
		end
	end
	if ignorecount and type(ignorecount) == "number" then
		cnt = cnt - ignorecount;
	end
	if min and type(min) == "number" and cnt < min then
		cnt = min;
	end
	return cnt;
end

-- **************************************************************************
-- NAME : NotesUNeed.Titan.OnLoad()
-- DESC : Registers the plugin upon it loading
-- **************************************************************************
function NotesUNeed.Titan.OnLoad(frame)

	-- initialize table of options to feed into Titan, as well as settings we want to remember
	frame.registry = {
		-- SDK : "id" MUST be unique to all the Titan specific addons
		-- Last addon loaded with same name wins...
		id					= TitanNUN.id,
		-- "version" the version of your addon that Titan displays
		version				= TitanNUN.version,
		-- "category" is where the user will find your addon when right clicking
		-- on the Titan bar.
		-- Currently: General, Combat, Information, Interfacem, Profession - These may change!
		category			= "Information",
		-- "menuText" is the text Titan displays when the user finds your addon by right clicking
		-- on the Titan bar.
		menuText			= BINDING_HEADER_NUN,
		-- "buttonTextFunction" is in the global name space due to the way Titan uses the routine.
		-- This routine is called to set (or update) the button text on the Titan bar.
		buttonTextFunction	= "TitanPanelNuN_GetButtonText",
		-- "tooltipTitle" will be used as the first line in the tooltip.
		tooltipTitle		= TITAN_NUN_TOOLTIP,
		-- "tooltipTextFunction" is in the global name space due to the way Titan uses the routine.
		-- This routine is called to fill in the tooltip of the button on the Titan bar.
		-- It is a typical tooltip and is drawn when the cursor is over the button.
		tooltipTextFunction	= "TitanPanelNuN_GetTooltipText",
		-- "icon" needs the path to the icon to display. Blizzard uses the default extension of .tga
		-- If not needed make nil.
		icon				= "Interface\\AddOns\\NotesUNeed\\Artwork\\tNote",
		-- "iconWidth" leave at 16 unless you need a smaller/larger icon
		iconWidth			= 16,
		-- "controlVariables" will be placed on a submenu of this plugin's menu entry in the main Titan Panel context menu.
		controlVariables = {
			ShowIcon = true,
			ShowLabelText = true,
			ShowRegularText = false,
			ShowColoredText = true,
			DisplayOnRightSide = false
		},
		-- "savedVariables" are variables saved by character across logins.
		--   Get - TitanGetVar (id, name)
		--   Set - TitanSetVar (id, name, value)
		savedVariables		= {
--			nunVar_Icon		= true,
--			nunVar_Text		= true,
--			nunVar_TT		= true,
--			nunVar_Menu		= true,
--			nunVar_Extended	= true,
			ShowIcon		= true,
			ShowLabelText	= true,
			ShowColoredText	= true,               
		},
	};
	
	
	--- Configuration
	
	
	--- Events
	frame:RegisterEvent("PLAYER_ENTERING_WORLD");
	frame:RegisterEvent("VARIABLES_LOADED");
end

-- **************************************************************************
-- NAME : NotesUNeed.Titan.OnEvent()
-- DESC : Parse events registered to plugin and act on them
-- USE  : _OnEvent handler from the XML file
-- **************************************************************************
locals.bPlayerEnteredWorld = nil;
locals.bVariablesLoaded = nil;
function NotesUNeed.Titan.OnEvent(frame, event, ...)
	if ( event == "PLAYER_ENTERING_WORLD" ) then
		if locals.bVariablesLoaded then
			currentRealmName = GetCVar("realmName");
			realmNotesDB = NuNData[currentRealmName];
		end
		locals.bPlayerEnteredWorld = true;
		frame:UnregisterEvent("PLAYER_ENTERING_WORLD");
		
	elseif ( event == "VARIABLES_LOADED" ) then
		if locals.bPlayerEnteredWorld then
			currentRealmName = GetCVar("realmName");
			realmNotesDB = NuNData[currentRealmName];
		end
		locals.bVariablesLoaded = true;
		frame:UnregisterEvent("VARIABLES_LOADED");
	end
end

-- **************************************************************************
-- NAME : NotesUNeed.Titan.OnClick(button)
-- DESC : Opens the note that the player last had open.
-- **************************************************************************
function NotesUNeed.Titan.OnClick(frame, button)
	if ( button == "LeftButton" ) then
		-- reopen the most recently viewed note.
		if not NuN_ReOpen() then
			print(ERROR_CANNOT_REOPEN_NOHISTORY);
		end
	end
end

-- **************************************************************************
-- NAME : TitanPanelNuN_GetButtonText(id)
-- DESC : Calculate number of notes in the realm database.
-- **************************************************************************
function TitanPanelNuN_GetButtonText(id)
--	local button, id = TitanUtils_GetButton(id, true);
	local numRealmNotes = tablesize(realmNotesDB,0,2);
	
	local labelName, labelText = BINDING_HEADER_NUN, "  (" .. tablesize(realmNotesDB,0,2) .. ")";
	
	return labelName, labelText;
end

local function GetNotesDatabaseRecordCount()
	local total_records = 0;
	for realmName, realmDatabase in pairs(NuNData) do
		local realmDatabaseCount = tablesize(realmDatabase,0,2);
		if ( realmDatabaseCount < 0 ) then realmDatabaseCount = 0; end
		
		total_records = total_records + realmDatabaseCount;
	end
	
	return total_records;
end

-- **************************************************************************
-- NAME : TitanPanelNuNButton_GetTooltipText()
-- DESC : Display tooltip text
-- **************************************************************************
function TitanPanelNuN_GetTooltipText()
	--- name and version of addon
	local NL = "\n";
	local str =
		NUN_VERSION_CAPTION .. NUN_VERSION .. NL ..
		NUN_AUTHORS_CAPTION .. TitanNUN.authors .. NL ..
		TOTAL_NOTES_CAPTION .. GetNotesDatabaseRecordCount() .. NL ..
		REALM_NOTES_CAPTION .. tablesize(realmNotesDB,0,2) .. NL ..
		TITAN_NUN_TOOLTIP_HINT;

		-- date of last backup [todo]		

	return str;
end

function NotesUNeed.Titan.OnUpdate(frame, elapsed)
	-- Update Titan button label and tooltip
	TitanPanelButton_UpdateButton(NUN_TITANID);	
	TitanPanelButton_UpdateTooltip(frame);
end

function NotesUNeed.Titan.OnMouseEnter()
end

-- **************************************************************************
-- NAME : TitanPanelRightClickMenu_PrepareNuNMenu()
-- DESC : Display rightclick menu options
-- **************************************************************************
function TitanPanelRightClickMenu_PrepareNuNMenu()
-- SDK : This is a routine that Titan 'assumes' will exist. The name is a specific format
--       "TitanPanelRightClickMenu_Prepare"..ID.."Menu"
--       where ID is the "id" from "registry"
	if not UIDROPDOWNMENU_MENU_LEVEL then return end;
	
	local info;
	if ( UIDROPDOWNMENU_MENU_LEVEL == 2 ) then
		if ( UIDROPDOWNMENU_MENU_VALUE == "OPTIONS" ) then
			-- reopen most recently opened note
			info = UIDropDownMenu_CreateInfo();
			info.text = BINDING_NAME_NUN_LAST;
			info.func = NuN_ReOpen;
			info.tooltipText = NUN_OPENLASTNOTE_HELPTEXT;
			info.notCheckable = 1;
			info.hasArrow = nil;
			UIDropDownMenu_AddButton(info, UIDROPDOWNMENU_MENU_LEVEL);
			
			-- Browse notes
			info.text = BINDING_NAME_NUN_SRCH;
			info.func = function() NuN_DisplayAll("LeftButton"); end--NotesUNeed.Titan.OpenNoteSearchDialog;
			info.tooltipText = NuNC.NUN_MICROBROWSEA_TOOLTIP_TXT2
			info.notCheckable = 1;
			info.hasArrow = nil;
			UIDropDownMenu_AddButton(info, UIDROPDOWNMENU_MENU_LEVEL);
			
			-----------------------------------
			TitanPanelRightClickMenu_AddSpacer(UIDROPDOWNMENU_MENU_LEVEL);
			-----------------------------------
			
			-- create new blank note
			info.text = BINDING_NAME_NUN_BLANK;
			info.func = function() NuN_FromTarget(false, true); end
			info.tooltipText = NuNC.NUN_MICROGENNOTE_TOOLTIP_TXT2;
			info.notCheckable = 1;
			info.hasArrow = nil;
			UIDropDownMenu_AddButton(info, UIDROPDOWNMENU_MENU_LEVEL);

			-- create new note from target
			info.text = BINDING_NAME_NUN_OPENTARGET;
			info.func = function() NuN_FromTarget(false); end
			info.tooltipText = NuNC.NUN_MICROCONTACT_TOOLTIP_TXT2 .. "\n" .. NuNC.NUN_MICROCONTACT_TOOLTIP_TXT3;
			info.notCheckable = 1;
			info.hasArrow = nil;
			UIDropDownMenu_AddButton(info, UIDROPDOWNMENU_MENU_LEVEL);
			
			-- silent create note from target
			info.text = BINDING_NAME_NUN_TARGET;
			info.func = function() NuN_FromTarget(true); end
			info.tooltipText = NUN_OPT_CREATE_TARGET_NOTE_SILENT
			info.notCheckable = 1;
			info.hasArrow = nil;
			UIDropDownMenu_AddButton(info, UIDROPDOWNMENU_MENU_LEVEL);
			
		elseif ( UIDROPDOWNMENU_MENU_VALUE == "TOOLS" ) then
			TitanPanelRightClickMenu_AddTitle(NUNHEADER_MAINTENANCE, UIDROPDOWNMENU_MENU_LEVEL);
			
			local info = UIDropDownMenu_CreateInfo();
			-- back-up
			info.text = NUN_OPT_BACKUP;
			info.func = NuNOptions_DBBackUp_OnClick;
			info.tooltipText = NUN_OPT_BACKUP_TOOLTIP
			info.hasArrow = nil;
			info.notCheckable = 1;
			UIDropDownMenu_AddButton(info, UIDROPDOWNMENU_MENU_LEVEL);
			
			-- restore
			info = UIDropDownMenu_CreateInfo();
			info.text = NUN_OPT_RESTORE;
			info.func = NuNOptions_DBRestore_OnClick;
			info.tooltipText = NUN_OPT_RESTORE_TOOLTIP;
			info.hasArrow = nil;
			info.notCheckable = 1;
			UIDropDownMenu_AddButton(info, UIDROPDOWNMENU_MENU_LEVEL);

			-- export
			info = UIDropDownMenu_CreateInfo();
			info.text = NUN_DB_EXPORT;
			info.func = NuNOptions_DBExport;
			info.tooltipText = NUN_OPT_EXPORT_TOOLTIP;
			info.notCheckable = 1;
			info.hasArrow = nil;
			UIDropDownMenu_AddButton(info, UIDROPDOWNMENU_MENU_LEVEL);
			
			-- import
			info = UIDropDownMenu_CreateInfo();
			info.text = NUN_OPT_IMPORT;
			info.func = NuNOptions_DBImport;
			info.tooltipText = NUN_OPT_IMPORT_TOOLTIP
			info.notCheckable = 1;
			info.hasArrow = nil;
			UIDropDownMenu_AddButton(info, UIDROPDOWNMENU_MENU_LEVEL);
		end
		return;
	end
	
	if ( UIDROPDOWNMENU_MENU_LEVEL == 1 ) then
		-----------------------------------
		TitanPanelRightClickMenu_AddTitle(TitanPlugins[TitanNUN.id].menuText);
		-----------------------------------
		
		-- Options submenu
		local info = UIDropDownMenu_CreateInfo();
		info.text = NUNHEADER_OPTIONS;
		info.value = "OPTIONS";
		info.func = NuN_Options;
		info.tooltipText = NUN_MICROOPTIONS_TOOLTIP_TXT2;
		info.hasArrow = true;
		info.notCheckable = 1;
		UIDropDownMenu_AddButton(info, UIDROPDOWNMENU_MENU_LEVEL);
	
		-- maintenance
		info = UIDropDownMenu_CreateInfo();
		info.text = NUNHEADER_MAINTENANCE;
		info.value = "TOOLS";
		info.hasArrow = true;
		info.notCheckable = 1;
		UIDropDownMenu_AddButton(info, UIDROPDOWNMENU_MENU_LEVEL);
		-- player ratings
		
		-- detailed talent information
		
		-----------------------------------
		TitanPanelRightClickMenu_AddSpacer();
		-----------------------------------
		-- SDK : "TitanPanelRightClickMenu_AddSpacer" is used to put a blank line in the menu
		TitanPanelRightClickMenu_AddToggleIcon(TitanNUN.id);
		-- SDK : "TitanPanelRightClickMenu_AddToggleIcon" is used to put a "Show icon" (localized) in the menu.
		--        registry.savedVariables.ShowIcon
		TitanPanelRightClickMenu_AddToggleLabelText(TitanNUN.id);
		-- SDK : "TitanPanelRightClickMenu_AddToggleLabelText" is used to put a "Show label text" (localized) in the menu.
		--        registry.savedVariables.ShowLabelText
		TitanPanelRightClickMenu_AddToggleColoredText(TitanNUN.id);
		-- SDK : "TitanPanelRightClickMenu_AddToggleLabelText" is used to put a "Show colored text" (localized) in the menu.
		--        registry.savedVariables.ShowColoredText		

		-----------------------------------
--		TitanPanelRightClickMenu_AddSpacer(UIDROPDOWNMENU_MENU_LEVEL);
--		TitanPanelRightClickMenu_AddCommand("Close Menu", TitanNUN.id, TITAN_PANEL_MENU_FUNC_HIDE);
		-----------------------------------
		-- SDK : The routine above is used to put a "Hide" (localized) in the menu.
	end
end
