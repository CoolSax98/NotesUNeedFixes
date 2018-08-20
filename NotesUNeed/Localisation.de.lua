-- Thanks to Eike and Leftaf for the following translations, and guidance with the required program changes :)


if ( GetLocale() == "deDE" ) then

	-- Text Inserts

	NUN_SAVE = "Speichern";
	NUN_CANCEL = "Abbruch";
	NUN_DELETE = "L\195\182schen";
	NUN_WHO = "Wer Info";
	NUN_TARGET = "Ziel Info";
	NUN_NPC_TARGET = "NPC Info";
	NUN_CLASS = "Klasse";
	NUN_RACE = "Rasse";
	NUN_SEX = "Geschlecht";
	NUN_PROF1 = "Prim\195\164rberuf";
	NUN_PROF2 = "Sekund\195\164rberuf";
	NUN_CURR_RANK = "Arena Rang";
	NUN_HIGH_RANK = "H\195\182chster PvP Rang";
	NUN_EDIT_DETAIL = "Detail Bearbeiten";
	NUN_SAVE_DETAIL = "Speichern";
	NUN_CANCEL_DETAIL = "Abbruch";
	NUN_CONFIRM = "Best\195\164tigen";
	NUN_RESTORE_DETAIL = "Standardwert";
	NUN_OPTIONS = "Optionen";
	NUN_OPTIONS_HEADER = "NotesUNeed Optionen";
	NUN_IMPORT = "Importiere Freunde & Ignorierte aus Notizen";
	NUN_EXPORT = "Erstelle Notizen aus Freundes- & Ignoriertenliste";
	NUN_AUTO_GUILD = "Gildenmitglieder auch in Freundesliste aufnehmen";
--	NUN_AUTO_ADD = "";			-- ??
	NUN_AUTO_AA = "Automatische Notizen f\195\188r Freunde/Ignorierte";
	NUN_AUTO_DELETE = "L\195\182sche Auto-Notiz wenn Freund/Ignorierter entfernt wird";
	NUN_AUTO_DELETE2 = "(Manuell erstellte Notizen werden nicht gel\195\182scht)";
	NUN_AUTO_IGNORE = "Ignoriert. Auto-Notiz vom : ";
	NUN_AUTO_FRIEND = "Freund. Auto-Notiz vom : ";
	NUN_AUTO_PARTIED = "Gruppe. Auto-Notiz vom : ";
	NUN_RESET = "R\195\188cksetzen ";	
	NUN_SEARCH = "Suche";
	NUN_CLOSE = "Schlie\195\159en";
	NUN_SEARCH_CRITERIA = "Suche nach : ";
	NUN_GOBACK = "Zur\195\188ck";
	NUN_NOTE_NAME = "<Kontakt-/Notizname>";		-- must be Capitalised when searching for Contacts, else use given case for General Note search
	NUN_NOTE = "-g <Notiztitel>";
	NUN_CC = "-ca <Kontaktname>  OR  -ch <Kontaktname>";			-- must Capitalise
	NUN_EXECUTE = "-x <Notiztitel>";
	NUN_FINISHED_PROCESSING = "NotesUNeed hat die Verarbeitung beendet";
	NUN_STAMP = "Zeitmarke";
	NUN_LOC = "Ortsangabe";
	NUN_LVL_REACHED = "\nErreichte Level ";
	NUN_QLVL = "Quest Stufe : ";
	NUN_CLRDD = "DropdownLeeren";
NUN_INCLUDE_IN_TOOLTIP="Include In Tooltip";
	NUN_SAVE_AS_DEFAULT = "Als Standard speichern";

	NUN_OBJECTIVES = "Gegenst\195\164nde";

	NUN_MAPNOTED = "Notiz auf der Karte von |cFFFFD100%s|r hinzugef\195\188gt.";

	NUN_NEW = "Neu";
	NUN_PLAYER = "Ich";
	NUN_AUTO = "Auto";
	NUN_SELF = "Alt";
	NUN_MANU = "Manuell";
	NUN_PARTY = "Gruppe";
	NUN_SENT = "Gesendet";

	NUN_GUILD			= "Gilde";							-- 5.60
	NUN_MEMBER			= "Mitglieder";						-- 5.60
	NUN_NEW_GUILDMATE 	= "Neue Mitglieder der Gilde ";		-- 5.60
	NUN_X_GUILDMATE 	= "X Mitglieder der Gilde ";		-- 5.60

	NUN_HIT_POINTS	= "Hit Points  ";
	NUN_MANA	= "Mana/Energy ";
	NUN_STRENGTH	= "Strength    ";
	NUN_AGILITY	= "Agility     ";
	NUN_STAMINA	= "Stamina     ";
	NUN_INTELLECT	= "Intellect   ";
	NUN_SPIRIT	= "Spirit      ";
	NUN_LOGOFF_TO_APPLY_CHANGES = "Will not be saved to disk until you logout."


	NUN_DFLTHEADINGS = {};		-- Should fix a Game-Hanging Issue that occurs on some German Client Installations

	NUN_DFLTHEADINGS = {
		"Gilde : ",
		"Gilden Rang  : ",
		"Echter Name : ",
		"e-mail : ",
		"WWW : "
	};

	NUN_HRACES = {};		-- Should fix a Game-Hanging Issue that occurs on some German Client Installations

	NUN_HRACES = {
		"Orc",
		"Taure",
		"Troll",
		"Untoter",
		"Blutelf",
		"Goblin",
	};

	NUN_ARACES = {};		-- Should fix a Game-Hanging Issue that occurs on some German Client Installations

	NUN_ARACES = {
		"Gnom",
		"Mensch",
		"Nachtelf",
		"Zwerg",
		"Draenei",
		"Worgen",
	};

	NUN_ALLCLASSES = {};		-- Should fix a Game-Hanging Issue that occurs on some German Client Installations

	NUN_ALLCLASSES = {
		"Druide",
		"Hexenmeister",
		"J\195\164ger",
		"Krieger",
		"Magier",
		"Paladin",
		"Priester",
		"Schamane",
		"Schurke",
		"Todesritter",
	};

	NUN_HCLASSES = {};		-- Should fix a Game-Hanging Issue that occurs on some German Client Installations

	NUN_HCLASSES = {
		"Druide",
		"Hexenmeister",
		"J\195\164ger",
		"Krieger",
		"Magier",
		"Priester",
		"Schamane",
		"Schurke",
		"Paladin",
		"Todesritter",
	};

	NUN_ACLASSES = {};		-- Should fix a Game-Hanging Issue that occurs on some German Client Installations

	NUN_ACLASSES = {
		"Druide",
		"Hexenmeister",
		"J\195\164ger",
		"Krieger",
		"Magier",
		"Paladin",
		"Priester",
		"Schurke",
		"Schamane",
		"Todesritter",
	};
	
	NUN_ARENAR = {};
	
	NUN_ARENAR = {
		"Herausforderer",
		"Rivale",
		"Duellant",
		"Gladiator"
	};

	NUN_HRANKS = {};		-- Should fix a Game-Hanging Issue that occurs on some German Client Installations

	NUN_HRANKS = {
		"Sp\195\164her",
		"Grunzer",
		"Waffentr\195\164ger",
		"Schlachtrufer",
		"Rottenmeister",
		"Steingardist",
		"Blutgardist",
		"Zornbringer",
		"Klinge der Horde",
		"Feldherr",
		"Sturmreiter",
		"Kriegsherr",
		"Kriegsf\195\188rst",
		"Oberster Kriegsf\195\188rst"
	};

	NUN_ARANKS = {};		-- Should fix a Game-Hanging Issue that occurs on some German Client Installations

	NUN_ARANKS = {
		"Gefreiter",
		"Fu\195\159knecht",
		"Landsknecht",
		"Feldwebel",
		"F\195\164hnrich",
		"Leutnant",
		"Hauptmann",
		"K\195\188rassier",
		"Ritter der Allianz",
		"Feldkommandant",
		"Rittmeister",
		"Marschall",
		"Feldmarschall",
		"Gro\195\159marschall"
	};

	NUN_PROFESSIONS = {};		-- Should fix a Game-Hanging Issue that occurs on some German Client Installations

	NUN_PROFESSIONS = {
		"Alchimie",
		"Bergbau",
		"Ingenieurskunsth",
		"Ingenieurskunst: Gnomisch",
		"Ingenieurskunst: Goblin",
		"Kr\195\164uterkunde",
		"K\195\188rschnerei",
		"Lederverarbeitung",
		"Lederverarbeitung: Elementar",
		"Lederverarbeitung: Drachenschuppen",
		"Lederverarbeitung: Stammesleder",
		"Schmiedekunst",
		"Schmiedekunst:R\195\188stungsschmied",
		"Schmiedekunst:\195\132xte",
		"Schmiedekunst:H\195\164mmer",
		"Schmiedekunst:Schwerter",
		"Schneiderei",
		"Verzauberkunst",
		"Juwelenschleifer",
		"Inschriftenkunde",
	};


	-- The following array can be rearranged and sorted by the Translated Display values, BUT the Command Values must NOT be Translated

	NUN_SEARCHFOR = {};		-- Should fix a Game-Hanging Issue that occurs on some German Client Installations

	NUN_SEARCHFOR = {
		{	Display = "Alles",				-- Only translate Display
			Command = "All"},
		{	Display = "Beruf",				-- Only translate Display
			Command = "Profession"},
--		{	Display = "Datum-Zeit",				-- Only translate Display
--			Command = "Date"},
		{	Display = "Klasse",				-- Only translate Display
			Command = "Class"},
		{	Display = "Notizen",				-- Only translate Display
			Command = "Notes"},
		{	Display = "Notizen:Generisch",			-- Only translate Display
			Command = "Notes:Generic"},
		{	Display = "Notizen:Gegenst\195\164nde",		-- Only translate Display
			Command = "Notes:Items"},
		{	Display = "Notizen:Logs",			-- Only translate Display
			Command = "Notes:Logs"},
		{	Display = "Notizen:LUA",			-- Only translate Display
			Command = "Notes:LUA"},
		{	Display = "Notizen:NPCs",			-- Only translate Display
			Command = "Notes:NPCs"},
		{	Display = "Notizen:Quests",			-- Only translate Display
			Command = "Notes:Quests"},
--		{	Display = "Quest-Logbuch",			-- Only translate Display
--			Command = "Quest History"},
		{	Display = "Text",				-- Only translate Display
			Command = "Text"}
	};

	NUN_SEXES = {};		-- Should fix a Game-Hanging Issue that occurs on some German Client Installations

	NUN_SEXES = {
		"M\195\164nnlich",
		"Weiblich"
	};


	-- The following array can be rearranged and sorted by the Translated Display values, BUT the Command Values must NOT be Translated

	NUN_TRANSMITTO = {};		-- Should fix a Game-Hanging Issue that occurs on some German Client Installations

	NUN_TRANSMITTO = {
		{ 	Display = "Gilde",				-- Only translate Display
			Command = "GUILD" },
		{ 	Display = "Officers",			-- Only translate Display
			Command = "OFFICER" },
		{ 	Display = "Gruppe",				-- Only translate Display
			Command = "PARTY" },
		{	Display = "Schlachtzug",			-- Only translate Display
			Command = "RAID" },
		{	Display = "Raid Warning",		-- Only translate Display
			Command = "RAID_WARNING" },
		{	Display = "Battleground",		-- Only translate Display
			Command = "BATTLEGROUND" },
		{	Display = "Sagen",				-- Only translate Display
			Command = "SAY" },
		{	Display = "Selbst",				-- Only translate Display
			Command = "SELF" },
		{	Display = "Fl\195\188stern",			-- Only translate Display
			Command = "WHISPER" },
		{	Display = "Channel",			-- Only translate Display
			Command = "CHANNEL" }
	};



	-- The following array can be rearranged and sorted by the Translated Display values, BUT the Command Values must NOT be Translated
	-- Keep Blank Entry at the top.

	NUN_NOTETYPES = {};		-- Should fix a Game-Hanging Issue that occurs on some German Client Installations

	NUN_NOTETYPES = {
		{	Display = "   ",				-- Keep first
			Command = "   "},
		{	Display = "ITM",				-- Only translate Display
			Command = "ITM"},
		{	Display = "LOG",				-- Only translate Display
			Command = "LOG"},
		{	Display = "NPC",				-- Only translate Display
			Command = "NPC"},
		{	Display = "QST",				-- Only translate Display
			Command = "QST"},
		{	Display = "LUA",
			Command = "LUA"}
	};




	NUN_MALE = "M\195\164nnlich";
	NUN_FEMALE = "Weiblich";


	NUN_NOTESUNEED_INFO = "NotesUNeed Notiz";

	NUN_TT_PIN_TXT = "Pin Up Tooltip";

	NUN_LEVEL_TXT = "Account-Ebene";

	NUN_CHAT_HEADER = "Sende Notiz";
	NUN_CHAT_NOTETITLE_LABEL = "Notiztitel : ";
	NUN_CHAT_DROPDOWN_LABEL = "Sende Notiz an...";
	NUN_CHAT_SEND = "Senden";
	NUN_CHATCHECKBOX_LABEL = "Nur Hauptfenstertext senden";
	NUN_CHATFORMATCHECKBOX_LABEL = "Schicke Formatierte Notiz";
	NUN_TRANSMISSION_PREFIX1 = "NotesUNeed NOTIZ\195\156BERTRAGUNG VON : ";
	NUN_TRANSMISSION_PREFIX2 = "NotesUNeed NOTIZANFANG : ";
	NUN_TRANSMISSION_POSTFIX = "NotesUNeed NOTIZENDE   : ";


	NUN_TRANSMISSION_ERROR = "Ein Fehler trat bei der Erstellung der zu sendenden NotesUNeed Notiz auf : ";
	NUN_TRANSMISSION_MISSING = "Notiz nicht gefunden !";
	NUN_COLOUR_ERROR_REPORT = "Falsch formattierte Farbcodes im Haupttext : Senden \195\188ber den Chat w\195\188rde wahrscheinlich zu einem Verbindungsverlust f\195\188hren !";
	NUN_NONCRITICAL_ERROR = "Unkritische(r) Fehler trat(en) auf. Beachte \195\156bertragungsaufzeichnung in Notiz : ";
	NUN_LINEERROR_TEXT = "Fehler in Zeile ";

	NUN_CONFLICT_LABEL1 = "Speichern dieser Notiz auf Account-Ebene wird Server-Ebenen Notizen";
	NUN_CONFLICT_LABEL2 = "  Auf folgeneden Realms \195\188berschreiben :";


	NUN_FRAME_SCALE_TXT = "Rahmen";
	NUN_FONT_SCALE_TXT = "Tooltips";
	NUN_MAPNOTES_TXT = "Kartennotiz";					
	NUN_NOMAPNOTES = "|cffff0000MapNotes Add-On  NICHT  vorhanden|r";
	
	NUN_QUEST = "Quest : ";

	NUN_DUPLICATE = "Eine NotesUNeed Notiz existiert bereits\nmit diesem Namen";
	NUN_TEXTLIM1 = "NotesUNeed Text Limit von ";
	NUN_TEXTLIM2 = " \195\188berschritten Teile\ndes Texts k\195\182nnten in der gespeicherten Version fehlen.\n";


	NUN_TTLENGTH_TEXTBOX_LABEL = "Gib die maximale Zahl von Buchstaben in den Tooltips an : ";
	NUN_DEFAULTLEVEL_CHECKBOX_LABEL = "Speichere standardm\195\164\195\159ig allgemeine Notizen auf der Account-Ebene";
	NUN_SHOWHELPTT_CHECKBOX_LABEL = "Zeige NotesUNeed Tooltips";
	NUN_MINOVERTT_CHECKBOX_LABEL = "Unterdr\195\188cke MouseOver Ziel Tooltip";
	NUN_CHAT_CHECKBOX_LABEL = "Show Chat Tags";
	NUN_AUTONOTE_CHECKBOX_LABEL = "Automatisch eine Notiz f\195\188r aktuellen Charakter verwalten";
	NUN_QUESTNOTE_CHECKBOX_LABEL = "Automatisch eine Notiz \195\188ber Questlog und Verlauf verwalten";
	NUN_AUTOPARTY_CHECKBOX_LABEL = "Automatisch eine Notiz \195\188ber Gruppenmitglieder verwalten";
	NUN_BEHAVE_CHECKBOX_LABEL = "Alternatives Verhalten des Notiz Editierungsfensters";
	NUN_TTTOTAL_LABEL = "Gesamt";	-- This Translation is DELIBERATELY prefixed with extra Spaces for Frame Positioning of Label
	NUN_TTLINEL_LABEL = "~Pro Zeile";
	NUN_AUTOMAP_CHECKBOX_LABEL = "Auto-MapNote NPCs";
	NUN_FONT_CHECKBOX_LABEL = "NuN Schriftart";

	NUN_QUESTS_TEXT = "Quests";
	NUN_STAGE_TEXT = "Queststatus ";
	NUN_QUEST_GIVER = "Questgeber";

	BINDING_HEADER_NUN = "NotesUNeed";
	BINDING_NAME_NUN_OPTIONS = "NotesUNeed Optionen anzeigen/schlie\195\159en";
	BINDING_NAME_NUN_TARGET = "Erzeuge Notiz zum Ziel ohne sie zu \195\182ffnen";
	BINDING_NAME_NUN_MICRO = "NotesUNeed MicroButtons an-/ausschalten";
	BINDING_NAME_NUN_LAST = "\195\150ffne letzte Notiz";
	BINDING_NAME_NUN_SRCH = "Anklicken um ALLE Notizen zu sehen";
	BINDING_NAME_NUN_PINUP = "Toggle PinUp Tooltip";

	NUN_AUTONOTED = " : Notiert von NotesUNeed";
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

	-- WoW Tooltip Text Search Patterns : Care should be taken to ensure that Translation of the following words
	--   is equivalent to the words used in-game by WoW. For example there may be several translations for the
	--   word "Damage", but the word required is the one that appears in Tooltips to indicate the amount of damage
	--   that a weapon does. Or a given translation might not use the plural for "Legs", but equal "Leg" instead.
	--   These words are used to search the WoW in-game tooltip text and must be based on the
	--   words Blizzard uses in that translation. Therefore correct translations MUST be taken from the tooltip
	--   text that appears when hovering over the corresponding slots in the character sheet, or over weapons/armour.

	NUN_HEAD = "Kopf";
	NUN_NECK = "Hals";
	NUN_SHOULDER = "Schulter";
	NUN_SHIRT = "Hemd";
	NUN_CHEST = "Brust";
	NUN_WAIST = "Taille";
	NUN_LEGS = "Beine";
	NUN_FEET = "F\195\188\195\159e";
	NUN_WRIST = "Handgelenke";
	NUN_HANDS = "H\195\164nde";			-- The text for the Hands Character Slot i.e. what gloves they are wearing
	NUN_FINGER = "Finger";
	NUN_TRINKET = "Schmuck";
	NUN_BACK = "R\195\188cken";
	NUN_HAND = "hand";				-- The text associated with the equipped weapon and shield slots
	NUN_HAND2 = "h\195\164ndig";
	NUN_GUN = "Schusswaffe";
	NUN_BOW_U = "Bogen";
	NUN_BOW_L = "bogen";
	NUN_WAND = "Zauberstab";
	NUN_THROWN = "Geworfen";
	NUN_TABARD = "Wappenrock";
	NUN_DAMAGE = "Schaden";
	NUN_RANGED = "Distanz";				-- Fernwaffe / Distanz / Distanzwaffe ??



	NUN_SLOWSERVER = "Hohe Latenz. Quest Text konnte nicht geladen werden. Bitte noch mal versuchen. ";
	NUN_NOROOM = "Kein Platz mehr im \195\156bertragungs Log";

	NUN_LEVEL = "Stufe";
	NUN_PROF = "Beruf";
	NUN_CONTACT_TXT = "Kontakt-Notiz";
	NUN_GENERAL_TXT = "Allgemeine Notiz";

	NUN_LIMITED = "(Limiterter Bestand)";

	NUN_PARTIED_WITH = "Gruppen :";

	NUN_LINKFAILURE = "Unbekannter Notiztyp : Kann HyperLinks nicht verarbeiten";	
	NUN_NOLINKS = "Keine HyperLinks in Notiz gefunden";				

	NUN_POPUP_TITLE = "NotesUNeed";				
	NUN_MERGING = "Verbinde...";						

	NUN_LOADED = "Geladen";								
	NUN_MAX_MERGED = "Maximum von 5 Notizverbindungen erreicht!";				

	NUN_RUN = "Skript starten";		

	NUN_SAVED_NOTIFY1 = "Die folgende Notiz :";			
	NUN_SAVED_NOTIFY2 = " wurde gespeichert und geschlossen." 	
	NUN_SAVED_NOTIFY3 = "Um eine neue Notiz zu empfangen : " 	
	NUN_RECEIPT_TRUNCATION_WARNING = "Eine Notiz, die euch geschickt wurde war zu lang um sie richtig zu speichern und musste gek\195\188rzt werden.";   
	NUN_RECEIVING_START = "Eine Notiz wurde euch geschickt von : ";		
	NUN_RECEIPT_EXPIRED = "Zeit\195\188berschreitung beim Empfang einer Notiz von : ";		

	NUN_REPLACE = "Ersetzen\n(Alt-Click to Merge)";	
	NUN_RECEIPT_PENDING = "Kann keine weiteren NotesUNeed Notizen annehmen w\195\164hrend die Annahme fr\195\188herer Notizen erwartet wird.";	
	NUN_SENDING_NOTE = "\195\156bertrage formatierte Notiz";	

	NUN_MODIFIERS = {
		["Control"]			= "Ctrl",
		["Alt"]				= "Alt",
		["Shift"]			= "Shift",
		["LeftControl"]		= "L-Ctrl",
		["RightControl"]	= "R-Ctrl",
		["LeftAlt"]			= "L-Alt",
		["RightAlt"]		= "R-Alt",
		["LeftShift"]		= "L-Shift",
		["RightShift"]		= "R-Shift",
	};
	
	NUN_PRATING = "Spieler Sch\195\164tzung";	

	NUN_PR_TP = "Team Spieler";
	NUN_PR_MB = "Der Ungeduldige";
	NUN_PR_AO = "Der Bettler";
	NUN_PR_RB = "Rambo";
	NUN_PR_SA = "Der Geheimagent";
	NUN_PR_LW = "Einzelgänger";
	NUN_PR_RR = "Roadrunner";
	NUN_PR_MG = "Der Leidende";
	NUN_PR_DJ = "Entzauberungs Junky";
	NUN_PR_NJ = "Ninja";
	NUN_PR_SW = "Schafs Tank";
	NUN_PR_NG = "Nizza";
	NUN_PR_FG = "Komisch";
	NUN_PR_AV = "Vermeiden";
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

	NUN_ORATINGS_TEXT = {
		"Team Spieler so wie man es braucht",
		"Irrt immer herum und holt von \195\188berall Adds dazu",
		"Bettelt um jeden Schatz weil er einen Alt/Verwandten hat, der ihn WIRKLICH braucht...",
		"Hat einen unaufhaltsamen Drang loszuziehen und Monster zu t\195\182ten gest\195\188tzt vom glauben an seine gottgegebene unverwundbarkeit. Nach jedem Toten laufen sie sofort los das n\195\164chste Monster zu suchen, egal was der Rest der Gruppe macht. Normalerweise endet das mit ihrem Tod und dem der Gruppe gefolgt von der Frage wo seine Heilung blieb.",
		"Legt st\195\164ndig Zigarettenpausen ein und ist dann minutenlang weg. Kompensiert dies oft, indem er bei seiner R\195\188ckkehr sofort zum n\195\164chsten Gegner rennt ohne die Gruppe zu warnen",
		"Du weisst nicht mal, wie der Spieler wirklich aussieht da sein Punkt auf der Karte immer eine halbe Zone weg ist",
		"Rennt immer mit H\195\182chstgeschwindigkeit zur n\195\164chsten Truhe, Aufgabenzielort oder gl\195\164nzendem Kram, was meistens Adds, eine verstreute Gruppe und deren Tod zur Folge hat.",
		"St\195\182hnt bei jeder Gelegenheit. Normalerweise \195\188ber jeden, der es wagt f\195\188r Gegenst\195\164nde zu w\195\188rfeln, die sie wollen.",
		"Bettelt um jeden magischen Gegenstand, um ihn entzaubern zu k\195\182nnen. Versteht nicht das Konzept von Geld.",
		"Dieser Trottel ist verwandt mit dem Rennfahrer aber er würfelt auch noch beim aufheben gebundene Gegenstände, die er nicht benutzen kann.",
		"Wenn sie keine Schafe aufs Korn nehmen hauen sie Gegner, die in einer Falle, KO oder am Schlafen sind.",
		"",
		"",
		"",
		"",
		"",
	}					

	NUN_DAY_LIST = {
	  "Montag",
	  "Dienstag",
	  "Mittwoch",
	  "Donnerstag",
	  "Freitag",
	  "Samstag",
	  "Sonntag"
	};

	NUN_MONTH_LIST = {
	  "Januar",
	  "Februar",
	  "M\195\164rz",
	  "April",
	  "Mai",
	  "Juni",
	  "Juli",
	  "August",
	  "September",
	  "Oktober",
	  "November",
	  "Dezember"
	};



	-- Remove some from Global Scope
	-- (Some need to remain Global (e.g. XML referenced constants), and I'm not rewriting it ALL ;p )
	NuNC.NUN_NEW_NOTE = "Neue Notiz";
	NuNC.NUN_SAVED_NOTE = "Gespeicherte Notiz";
	NuNC.NUN_QUEST_NOTE = "Quest Logbuch Detail";
	NuNC.NUN_HELP_TEXT0  = "|cffffff00NotesUNeed Befehlshilfe :|r";
	NuNC.NUN_HELP_TEXT1  = "|cff00ff00Verwende |r|cffffffff/nun|r|cff00ff00 ohne Argumente um das Optionenfenster an und auszustellen.|r";
	NuNC.NUN_HELP_TEXT2  = "|cff00ff00Verwende |r|cffffffff/nun <Befehl>|r|cff00ff00 um folgende Befehle auszuf\195\188hren:|r";
	NuNC.NUN_HELP_TEXT3  = " |cffffffff-h|r|cff00ff00: zeigt diese Hilfe an.|r";
	NuNC.NUN_HELP_TEXT4  = " |cffffffff-a|r|cff00ff00: zeigt eine Liste aller Kontakte und anderer Notizen an.|r";
	NuNC.NUN_HELP_TEXT5  = " |cffffffff"..NUN_NOTE_NAME.."|r|cff00ff00: Eingeben eines Spielernamens zeigt seine Notiz an falls eine gespeichert wurde. Bei Eingabe eines Notiznamens wird diese Notiz angezeigt sofern sie existiert.|r";
	NuNC.NUN_HELP_TEXT6  = " |cffffffff-t|r|cff00ff00: legt eine Notiz f\195\188r das aktuelle Ziel an, wenn man einen zul\195\164ssigen Spielergesteuerten Charakter angew\195\164hlt hat.|r";
	NuNC.NUN_HELP_TEXT7  = " |cffffffff"..NUN_NOTE.."|r|cff00ff00: erstellt eine Notiz mit dem angegebenen Titel oder zeigt sie an, wenn eine Notiz mit diesem Titel bereits existiert.|r";
	NuNC.NUN_HELP_TEXT8 = " |cffffffff-tt|r|cff00ff00: schaltet NotesUNeed ToolTips an/aus.|r";
	NuNC.NUN_HELP_TEXT9 = " |cffffffff"..NUN_CC.."|r|cff00ff00: erstellt eine Alliance oder Horden Kontaktnotiz passend zu benutzten Namen, ohne Pr\195\188fung !r";
	NuNC.NUN_HELP_TEXT10 = " |cffffffff-micro|r|cff00ff00: schaltet die NotesUNeed MicroButtons an/aus.|r";
	NuNC.NUN_HELP_TEXT11 = " |cffffffff"..NUN_EXECUTE.."|r|cff00ff00: notiz als Lua Skript ausf\195\188hren|r";
	NuNC.NUN_MICROOPTIONS_TOOLTIP_TXT1 = "NotesUNeed Optionen";
	NuNC.NUN_MICROOPTIONS_TOOLTIP_TXT2 = "  Anklicken um die NotesUNeed Optionen zu \195\182ffnen/schlie\195\159en";
	NuNC.NUN_MICROBROWSEA_TOOLTIP_TXT1 = "NotesUNeed Browser";
	NuNC.NUN_MICROBROWSEA_TOOLTIP_TXT2 = "  Anklicken um ALLE Notizen zu sehen";
	NuNC.NUN_MICROCONTACT_TOOLTIP_TXT1 = "NotesUNeed Kontakt";
	NuNC.NUN_MICROCONTACT_TOOLTIP_TXT2 = "  Anklicken um f\195\188r das Ziel eine Notiz anzulegen";
	NuNC.NUN_MICROCONTACT_TOOLTIP_TXT3 = "   oder ohne Ziel seine eigene Notiz anzusehen.";
	NuNC.NUN_MICROGENNOTE_TOOLTIP_TXT1 = "NotesUNeed allgemeine Notiz";
	NuNC.NUN_MICROGENNOTE_TOOLTIP_TXT2 = "  Anklicken, um eine leere allgemeine Notiz anzulegen";
	NuNC.NUN_RESETBUTTON_TOOLTIP_TXT1 = "Kontakt Detail\195\188berschriften zur\195\188cksetzen auf :";
	NuNC.NUN_RESETBUTTON_TOOLTIP_TXT2 = "  Gilde, Gildenrang, Echter Name, e-mail, WWW.";
	NuNC.NUN_LOCBUTTON_TOOLTIP_TXT1 = "Aktuellen Ort eintragen";
	NuNC.NUN_LOCBUTTON_TOOLTIP_TXT2 = "  Eure aktuelle Position wird im Haupttextfeld eingef\195\188gt";
	NuNC.NUN_GNOTETITLE_TOOLTIP_TXT1 = "Ein Notiztitel muss angegeben werden";
	NuNC.NUN_GNOTETITLE_TOOLTIP_TXT2 = " Dr\195\188cke <Enter> um den Titel zu \195\188bernehmen und die Notiz zu editieren";
NuNC.NUN_INCLUDEINTOOLTIP_TOOLTIP_TXT1="Tooltip Include"
NuNC.NUN_INCLUDEINTOOLTIP_TOOLTIP_TXT2="Add this value to the tooltip that appears when mousing over the note's name in the note search dialog.";

	NuNC.NUN_SAVEDEF_TOOLTIP_TXT1 = "Ausw\195\164hlen, um eine neue Standard\195\188berschrift zu speichern";
	NuNC.NUN_SAVEDEF_TOOLTIP_TXT2 = "  \195\132nderung wird sofort wirksam.";
	NuNC.NUN_RESTOREDEF_TOOLTIP_TXT1 = "Anklicken, um derzeitigen Text durch Standard\195\188berschrift zu ersetzen";
	NuNC.NUN_RESTOREDEF_TOOLTIP_TXT2 = "  Um die NotesUNeed Original\195\188berschrifen wiederherzustellen benutze";
	NuNC.NUN_RESTOREDEF_TOOLTIP_TXT3 = "  den 'Werte Zur\195\188cksetzen'  Knopf im Optionsfenster";
	NuNC.NUN_RESTOREDEF_TOOLTIP_TXT4 = "  \195\132nderung wird sofort wirksam.";
	NuNC.NUN_TARGETBUTTON_TOOLTIP_TXT1 = "Informationen zur Ausr\195\188stung des Kontakts einf\195\188gen";
	NuNC.NUN_TARGETBUTTON_TOOLTIP_TXT2 = "  Distanz zum Ziel schr\195\164nkt die Informationen ein. Falls der";
	NuNC.NUN_TARGETBUTTON_TOOLTIP_TXT3 = "  der derzeitige Kontakt nicht das Ziel ist, versucht NotesUNeed ";
	NuNC.NUN_TARGETBUTTON_TOOLTIP_TXT4 = "  ihn als Ziel zu w\195\164hlen.";
	NuNC.NUN_NPCTARGETBUTTON_TOOLTIP_TXT1 = "Ziel Informationen einholen";
	NuNC.NUN_NPCTARGETBUTTON_TOOLTIP_TXT2 = "  Muss NPC als Ziel haben";
	NuNC.NUN_WHOBUTTON_TOOLTIP_TXT1 = "Wer-Information abrufen";
	NuNC.NUN_WHOBUTTON_TOOLTIP_TXT2 = "  Der Kontakt muss online sein, damit der /wer Befehl funktioniert";
	NuNC.NUN_WHOBUTTON_TOOLTIP_TXT3 = "  Mehrere klicks k\195\182nnen notwendig sein w\195\164hrend der /wer Befehl abklingt";
	NuNC.NUN_USERBUTTON_TOOLTIP_TXT1 = "Benutzerdefinierbare \195\156berschriften & Details";
	NuNC.NUN_USERBUTTON_TOOLTIP_TXT2 = "  Anklicken zum \195\132ndern. \195\156berschriften k\195\182nnen f\195\188r einzelne Spieler";
	NuNC.NUN_USERBUTTON_TOOLTIP_TXT3 = "  angepasst werden oder als neue Standardwerte gespeichert werden.";
	NuNC.NUN_CLEARDD_TOOLTIP_TXT1 = "Drop-down Liste leeren";
	NuNC.NUN_CLEARDD_TOOLTIP_TXT2 = " Leert die zuletzt ver\195\164nderte Drop-down Liste";
	NuNC.NUN_FFBUTTON_TOOLTIP_TXT1 = "Editiert NotesUNeed Notiz";
	NuNC.NUN_FFBUTTON_TOOLTIP_TXT2 = " Ein Kontakt muss makiert sein";
	NuNC.NUN_TT_PIN_TOOLTIP_TXT1 = "NotesUNeed Tooltip anpinnen";
	NuNC.NUN_TT_PIN_TOOLTIP_TXT2 = " Anklicken, um einen verschiebbaren";
	NuNC.NUN_TT_PIN_TOOLTIP_TXT3 = " Tooltip der aktuellen Notiz zu erstellen";
	NuNC.NUN_TT_PIN_EDIT_TXT1 = "Notiz Editieren";
	NuNC.NUN_TT_PIN_EDIT_TXT2 = " Editiere die Details dieser Tooltipnotiz";
	NuNC.NUN_TT_OPENCHAT_TXT1 = "Notiz Senden";
	NuNC.NUN_TT_OPENCHAT_TXT2 = " Sende Notiz mittels Fl\195\188stern, Gruppenchat,";
	NuNC.NUN_TT_OPENCHAT_TXT3 = " Gildenchat, etc.";
	NuNC.NUN_TT_CHATCHECK_TXT1 = "Sende nur Haupftfenstertext";
	NuNC.NUN_TT_CHATCHECK_TXT2 = " Ausw\195\164hlen um die Informationen in den DropDown Listen";
	NuNC.NUN_TT_CHATCHECK_TXT3 = " und den Spielerdetail-Feldern zu \195\188berspringen.";
	NuNC.NUN_TT_CHATFORMATCHECK_TXT1 = "Formatiere Notiz for NotesUNeed Benutzer";				
	NuNC.NUN_TT_CHATFORMATCHECK_TXT2 = "  Formatieren erlaubt es dem Empf\195\164nger die Notiz";		
	NuNC.NUN_TT_CHATFORMATCHECK_TXT3 = "  zu seiner NotesUNeed Datenbank hinzuzuf\195\188gen";
	NuNC.NUN_TT_LEVEL_TXT1 = "Speichere auf Account-Ebene";
	NuNC.NUN_TT_LEVEL_TXT2 = " Ausw\195\164hlen um diese Notiz auch auf anderen Realms(Servern)";
	NuNC.NUN_TT_LEVEL_TXT3 = " lesen zu k\195\182nnen.";
	NuNC.NUN_TT_GTYPE_TXT1 = "W\195\164hle allgemeinen Notiztyp";
	NuNC.NUN_TT_GTYPE_TXT2 = "  Den Notiztyp zu \195\164ndern kann helfen eine Notiz wiederzufinden.";
	NuNC.NUN_TT_GTYPE_TXT3 = "  Kann leer gelassen oder nachtr\195\164glich geleert werden.";
	NuNC.NUN_TT_SCALE_TXT1 = "\195\132ndere Fenstergr\195\182\195\159e";
	NuNC.NUN_TT_SCALE_TXT2 = "  Benutzen, um die Fenster und/oder die NotesUNeed Tooltips zu";
	NuNC.NUN_TT_SCALE_TXT3 = "  vergr\195\182\195\159ern und zu verkleinern um sie den Bed\195\188rfnissen anzupassen";
	NuNC.NUN_TT_GDELETE_TXT1 = "!! BITTE BEACHTEN !!";
	NuNC.NUN_TT_GDELETE_TXT2 = "  Derzeit l\195\182scht dieser Knopf NICHT die";
	NuNC.NUN_TT_GDELETE_TXT3 = "  Quest Notiz - sondern er l\195\182scht nur den";
	NuNC.NUN_TT_GDELETE_TXT4 = "  Eintrag im Questverlauf dieses Charakters";
	NuNC.NUN_TT_PDOWN_TXT1 = "Verringern des Gruppenz\195\132hlers";
	NuNC.NUN_TT_PDOWN_TXT2 = "  Anklicken um den Gruppenz\195\164hler manuell";
	NuNC.NUN_TT_PDOWN_TXT3 = "  zu reduzieren. (Wie oft zusammen gespielt wurde)";
	NuNC.NUN_TT_BHAVE_TXT1 = "\195\132ndere Verhalten des Notizeditierungsfensters";
	NuNC.NUN_TT_BHAVE_TXT2 = "Unmarkiert lassen, damit das Editierungsfenster sich so verh\195\164lt,";
	NuNC.NUN_TT_BHAVE_TXT3 = "  wie in fr\195\188heren Versionen. Markieren, um zu verhindern,";
	NuNC.NUN_TT_BHAVE_TXT4 = "  da\195\159 die Textbox automatisch angew\195\164hlt wird,";
	NuNC.NUN_TT_BHAVE_TXT5 = "  und durch einmaliges Dr\195\188cken von ESC geschlossen wird.";
	NuNC.NUN_TT_MAPNOTES_TXT1 = "MapNotes Notiz Erstellen";					
	NuNC.NUN_TT_MAPNOTES_TXT2 = "  Anklicken, um eine KartenNotiz an DEINER aktuellen";		
	NuNC.NUN_TT_MAPNOTES_TXT3 = "  Position mit diesem Notiznamen zu erstellen.";		
	NuNC.NUN_TT_MAPCHECK_TXT1 = "Automatisch NPC Kartennotizen erstellen";			
	NuNC.NUN_TT_MAPCHECK_TXT2 = "  Ben\195\182tigt das MapNotes Add-On.";
	NuNC.NUN_TT_MAPCHECK_TXT3 = "  Ausw\195\164hlen um automatisch MapNote";
	NuNC.NUN_TT_MAPCHECK_TXT4 = "  Symbole auf der Karte zu erstellen wenn man NPC-Notizen";
	NuNC.NUN_TT_MAPCHECK_TXT5 = "  anlegt. Markiert zus\195\164tzlich Questgeber.";		
	NuNC.NUN_TT_HYPERLINKS_TXT1 = "Notiz Hyperlinks";						
	NuNC.NUN_TT_HYPERLINKS_TXT2 = "  Gibt HyperLinks der Notiz im Chat-Fenster";		
	NuNC.NUN_TT_HYPERLINKS_TXT3 = "  aus, um leicht auf sie zuzugreifen.";
	NuNC.NUN_TT_RUN_TXT1 = "Skript starten";			
	NuNC.NUN_TT_RUN_TXT2 = " Notiz als Lua Skript ausf\195\188hren";
	NuNC.NUN_REWARDS = "Quest Belohnungen : ";
	NuNC.NUN_CHOICES = "Belohnung ausw\195\164hlen : ";
	NuNC.NUN_CREATED = "ERSTELLT";
	NuNC.NUN_COMPLETE = "ABGESCHLOSSEN";
	NuNC.NUN_FINISHED = "ABGEGEBEN";
NuNC.NUN_CONFIRM_RELOADUI = "Performing this action requires the UI to be reloaded - do you wish to continue?"

------------------------- DO NOT TRANSLATE THE FOLLOWING ------------------------------

	NUN_CLIENT = "German";

end
