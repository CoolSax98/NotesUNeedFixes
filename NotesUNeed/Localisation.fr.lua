

if ( GetLocale() == "frFR" ) then

	NUN_GUILD = "Guilde";

	NUN_DFLTHEADINGS = {};

	NUN_DFLTHEADINGS = {
		"Guilde : ",
		"Grade de Guilde : ",
		"Vrai Nom : ",
		"e-mail : ",
		"WWW : "
	};

	NUN_HRACES = {};

	NUN_HRACES = {
		"Orc",
		"Tauren",
		"Troll",
		"Mort-vivant",
		"Elfe de sang",
		"Goblin",
	};

	NUN_ARACES = {};

	NUN_ARACES = {
		"Nain",
		"Gnome",
		"Humain",
		"Elfes de la nuit",
		"Draene\195\175",
		"Worgen",
	};

	NUN_ALLCLASSES = {};

	NUN_ALLCLASSES = {
		"Druide",
		"Chasseur",
		"Mage",
		"Paladin",
		"Pr\195\170tre",
		"Voleur",
		"Chaman",
		"D\195\169moniste",
		"Guerrier",
		"Chevalier de la mort",
	};

	NUN_HCLASSES = {};

	NUN_HCLASSES = {
		"Druide",
		"Chasseur",
		"Mage",
		"Pr\195\170tre",
		"Voleur",
		"Chaman",
		"D\195\169moniste",
		"Guerrier",
		"Paladin",
		"Chevalier de la mort",
	};

	NUN_ACLASSES = {};

	NUN_ACLASSES = {
		"Druide",
		"Chasseur",
		"Mage",
		"Paladin",
		"Pr\195\170tre",
		"Voleur",
		"D\195\169moniste",
		"Guerrier",
		"Chaman",
		"Chevalier de la mort",
	};

	NUN_ARENAR = {};
	
	NUN_ARENAR = {
		"Comp\195\169titeur",
		"Rival",
		"Duelliste",
		"Gladiateur"
	};


	NUN_HRANKS = {};

	NUN_HRANKS = {
		"\195\137claireur",
		"Grunt",
		"Sergent",
		"Sergent-chef",
		"Adjudant",
		"Garde de pierre",
		"Garde de sang",
		"L\195\169gionnaire",
		"Centurion",
		"Champion",
		"Lieutenant-g\195\169n\195\169ral",
		"G\195\169n\195\169ral",
		"Seigneur de guerre",
		"Grand seigneur de guerre"
	};

	NUN_ARANKS = {};

	NUN_ARANKS = {
		"Soldat",
		"Caporal",
		"Sergent",
		"Sergent-chef",
		"Sergent-Major",
		"Chevalier",
		"Chevalier-lieutenant",
		"Chevalier-capitaine",
		"Chevalier-champion",
		"Lieutenant-commandant",
		"Commandant",
		"Mar\195\169chal",
		"Grand Mar\195\169chal",
		"Conn\195\169table"
	};

	NUN_PROFESSIONS = {};

	NUN_PROFESSIONS = {
		"Alchimiste",
		"Forgeron",
		"Forgeron:Forge d'armures",
		"Forgeron:Forge d'armes:Hache",
		"Forgeron:Forge d'armes:Macis",
		"Forgeron:Forge d'armes:\195\137p\195\169e",
		"Enchanteur",
		"Ing\195\169nieur",
		"Ing\195\169nieur: Gnome",
		"Ing\195\169nieur: Gobeline",
		"Herboriste",
		"Artisan du cuir",
		"Artisan du cuir: \195\137l\195\169mentaire",
		"Artisan du cuir: Dragon",
		"Artisan du cuir: Tribale",
		"Mineur",
		"D\195\169peceur",
		"Tailleur",
		"Joaillier",
		"Calligraphie",
	};

	NUN_SEARCHFOR = {};

	NUN_SEARCHFOR = {
		{	Display = "Tous",			-- Only translate Display
			Command = "All"},
		{	Display = "Classe",			-- Only translate Display
			Command = "Class"},
	--	{	Display = "Date-Time",			-- Only translate Display
	--		Command = "Date"},
		{	Display = "Notes",			-- Only translate Display
			Command = "Notes"},
		{	Display = "Notes:G\195\169n\195\169rique",		-- Only translate Display
			Command = "Notes:Generic"},
		{	Display = "Notes:Objets",		-- Only translate Display
			Command = "Notes:Items"},
		{	Display = "Notes:Registres",			-- Only translate Display
			Command = "Notes:Logs"},
		{	Display = "Notes:LUA",			-- Only translate Display
			Command = "Notes:LUA"},
		{	Display = "Notes:PNJs",			-- Only translate Display
			Command = "Notes:NPCs"},
		{	Display = "Notes:Qu\195\170tes",		-- Only translate Display
			Command = "Notes:Qu\195\170tes"},
		{	Display = "M\195\169tier",			-- Only translate Display
			Command = "Profession"},
--		{	Display = "Qu\195\170te Histoire",		-- Only translate Display
--			Command = "Qu\195\170te History"},
		{	Display = "Texte",			-- Only translate Display
			Command = "Text"}
	};

	-- The following array can be rearranged and sorted by the Translated Display values, BUT the Command Values must NOT be Translated

	NUN_TRANSMITTO = {};

	NUN_TRANSMITTO = {
		{ 	Display = "Guilde",			-- Only translate Display
			Command = "GUILD" },
		{ 	Display = "Officers",			-- Only translate Display
			Command = "OFFICER" },
		{ 	Display = "Partie",			-- Only translate Display
			Command = "PARTY" },
		{	Display = "Raid",			-- Only translate Display
			Command = "RAID" },
		{	Display = "Raid Warning",		-- Only translate Display
			Command = "RAID_WARNING" },
		{	Display = "Battleground",		-- Only translate Display
			Command = "BATTLEGROUND" },
		{	Display = "Dire",			-- Only translate Display
			Command = "SAY" },
		{	Display = "Je",			-- Only translate Display
			Command = "SELF" },
		{	Display = "Chuchoter",			-- Only translate Display
			Command = "WHISPER" },
		{	Display = "Canal",			-- Only translate Display
			Command = "CHANNEL" }
	};


	NUN_MALE = "M\195\162le";
	NUN_FEMALE = "Femelle";


	NUN_TRANSMISSION_PREFIX1 = "NotesUNeed NOTE TRANSMISSION FROM : ";
	NUN_TRANSMISSION_PREFIX2 = "NotesUNeed NOTE BEGINS : ";
	NUN_TRANSMISSION_POSTFIX = "NotesUNeed NOTE ENDS   : ";

	NUN_LEVEL = "Niveau";
	NUN_PROF = "Profession";

	NUN_PRATING = "Joueur classement";

	NUN_PR_TP = "Associer";
	NUN_PR_MB = "Mr. Bean";
	NUN_PR_AO = "Alt Outfitter";
	NUN_PR_RB = "Rambo";
	NUN_PR_SA = "Agent Secret";
	NUN_PR_LW = "Solitaire";
	NUN_PR_RR = "Roadrunner";
	NUN_PR_MG = "Grincheux";
	NUN_PR_DJ = "Disenchant Junky";
	NUN_PR_NJ = "Ninja";
	NUN_PR_SW = "Sheep Worrier";
	NUN_PR_NG = "Bon";
	NUN_PR_FG = "Dr\195\180le";
	NUN_PR_AV = "\195\137viter";
	NUN_PR_KS = "KoS";
	NUN_PR_TENSTAR = "***** *****";
	NUN_PR_NINESTAR = "***** ****";
	NUN_PR_EIGHTSTAR = "***** ***";
	NUN_PR_SEVENSTAR = "***** **";
	NUN_PR_SIXSTAR = "***** *";
	NUN_PR_FIVESTAR = "*****";
	NUN_PR_FOURSTAR = "****";
	NUN_PR_THREESTAR = "***";
	NUN_PR_TWOSTAR = "**";
	NUN_PR_ONESTAR = "*";
	NUN_PR___ = "";

	NUN_DAY_LIST = {
	  "Lundi",
	  "Mardi",
	  "Mercredi",
	  "Jeudi",
	  "Vendredi",
	  "Samedi",
	  "Dimanche"
	};

	NUN_MONTH_LIST = {
	  "Janvier",
	  "F\195\169vrier",
	  "Mars",
	  "Avril",
	  "Mai",
	  "Juin",
	  "Juillet",
	  "Ao\195\187t",
	  "Septembre",
	  "Octobre",
	  "Novembre",
	  "D\195\169cembre"
	};


NUN_OPT_IMPORT_TOOLTIP = "This option allows you to import NotesUNeed data from another user.  They must first use the \"Export\" feature to generate the file." 
NUN_OPT_EXPORT_TOOLTIP = "Select this option to export all non-personal notes to a seperate file which you can then email to a friend."
NUN_OPT_RESTORE_TOOLTIP = "Select this option to begin the process of rebuilding your notes database using an existing backup."
NUN_OPT_BACKUP_TOOLTIP = "Select this option to open the backup wizard, which will help you save a backup of your notes database."
NUN_OPT_CREATE_TARGET_NOTE_SILENT = "Creates/updates a note for the current target, but does not open the note for viewing.";
NUN_OPENLASTNOTE_HELPTEXT = "Reopen your most recently viewed note."
--@fixme ronp - make this a dialog that asks them if they'd like to open a new note instead.
ERROR_CANNOT_REOPEN_NOHISTORY = "No previously opened notes were found for this realm."
TITAN_NUN_TOOLTIP = "NotesUNeed Data Summary"
NUN_VERSION_CAPTION = "Version: ";
TITAN_NUN_TOOLTIP_HINT = "Hint: Click to reopen your most recently viewed note.";
NUNHEADER_OPTIONS = "Options"
NUNHEADER_MAINTENANCE = "Maintenance";
NUN_AUTHORS_CAPTION = "Authors: ";
TOTAL_NOTES_CAPTION = "Notes (total): ";
REALM_NOTES_CAPTION = "Notes (realm): ";
NUN_LOGOFF_TO_APPLY_CHANGES = "Will not be saved to disk until you logout."
NuNC.NUN_CONFIRM_RELOADUI = "Performing this action requires the UI to be reloaded - do you wish to continue?"

NUN_INCLUDE_IN_TOOLTIP="Include In Tooltip";
NuNC.NUN_INCLUDEINTOOLTIP_TOOLTIP_TXT1="Tooltip Include"
NuNC.NUN_INCLUDEINTOOLTIP_TOOLTIP_TXT2="Add this value to the tooltip that appears when mousing over the note's name in the note search dialog.";


	------------------------- DO NOT TRANSLATE THE FOLLOWING ------------------------------

	NUN_CLIENT = "French";

end