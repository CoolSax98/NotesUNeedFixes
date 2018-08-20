NUN_ADDON_NAME = "NotesUNeed";
NUN_VERSION = "v" .. GetAddOnMetadata(NUN_ADDON_NAME, "Version");
NuNC = {};

local NuNC = NuNC;
local string = string;

NuNC.NUN_AUTO_C = "A";
NuNC.NUN_SELF_C = "S";
NuNC.NUN_MANU_C = "M";
NuNC.NUN_HORD_C = "H";
NuNC.NUN_ALLI_C = "A";
NuNC.NUN_NOTE_C = "N";
NuNC.NUN_QUEST_C = "Q";
NuNC.NUN_PARTY_C = "P";
NuNC.NUN_GUILD_C = "G";
NuNC.NUN_MAX_ADD_TXT = 9;
NuNC.NUN_MAX_TXT_CHR = 1001;
NuNC.NUN_MAX_TXT_LIM = (NuNC.NUN_MAX_ADD_TXT + 1) * NuNC.NUN_MAX_TXT_CHR;
NuNC.NUN_MAX_TXT_C = tostring(NuNC.NUN_MAX_TXT_LIM);
NuNC.NUN_MAX_TXT_BUF = NuNC.NUN_MAX_TXT_LIM - 225;
NuNC.NUN_OFF = "Offline";
NuNC.NUN_TT_HDNG = "tooltip";
NuNC.NUN_TT_MAX = 1012;
NuNC.NUN_TT_KEYPHRASE = "TT::";
NuNC.NUN_TT_END = "::";
NuNC.NUN_TT_LINES_TRIGGER = 6;
NuNC.NUN_TT_Y_SHIFT = 12;
NuNC.NUN_TT_KEYPHRASE_LEN = string.len(NuNC.NUN_TT_KEYPHRASE);
NuNC.NUN_TT_ETC = " .....";
NuNC.NUN_TXT_LABEL = "0 / "..NuNC.NUN_MAX_TXT_LIM;
NuNC.NUN_SPEED = "Speed";
NuNC.NUN_GOLD = "|cffffB300|h";
NuNC.NUN_GREEN = "|cff00ee00|h";
NuNC.NUN_WHITE = "|cffffffff|h";
NuNC.NUN_C_END = "|h|r";
NuNC.NUN_PINNED_TT_PADDING = "           ";
NuNC.NUN_PLACE_HOLDER = "<Place Holder>";
NuNC.NUN_CHAT_LIMIT = 180;
NuNC.NUN_FRAMESCALE_MIN = 0.75;
NuNC.NUN_FRAMESCALE_MAX = 1.75;
NuNC.NUN_FRAMESCALE_STEP = 0.01;
NuNC.NUN_TT_FONTSCALE_MIN = 0.90;
NuNC.NUN_TT_FONTSCALE_MAX = 2.00;
NuNC.NUN_TT_MAPFONTSCALE_MIN = 0.25;
NuNC.NUN_TT_MAPFONTSCALE_MAX = 1.75;
NuNC.NUN_FRAMESCALE_MIN_TXT = tostring( NuNC.NUN_FRAMESCALE_MIN * 100 ) .. "%";
NuNC.NUN_FRAMESCALE_MAX_TXT = tostring( NuNC.NUN_FRAMESCALE_MAX * 100 ) .. "%";
NuNC.NUN_TT_FONTSCALE_MIN_TXT = tostring ( NuNC.NUN_TT_FONTSCALE_MIN * 100 ) .. "%";
NuNC.NUN_TT_FONTSCALE_MAX_TXT = tostring ( NuNC.NUN_TT_FONTSCALE_MAX * 100 ) .. "%";
NuNC.NUN_TT_MAPFONTSCALE_MIN_TXT = tostring ( NuNC.NUN_TT_MAPFONTSCALE_MIN * 100 ) .. "%";
NuNC.NUN_TT_MAPFONTSCALE_MAX_TXT = tostring ( NuNC.NUN_TT_MAPFONTSCALE_MAX * 100 ) .. "%";
NuNC.NUN_SOURCE = "NotesUNeed Source:";
NuNC.NUN_SOURCE_LEN = string.len(NuNC.NUN_SOURCE);
NuNC.NUN_WHO_TIMELIMIT = 3;						-- 5.60 Three seconds, and try again
NuNC.NUN_QUESTLOG_BUTTONS = 6;					-- 6 is the default value. Can be changed if Extended Quest Log AddOn is loaded
NuNC.NUN_NOTE_HEIGHT = 16;
NuNC.NUN_SHOWN = 23;
NuNC.NUN_TT_LEN = 80;
NuNC.NUN_PARTIES = "parties~";
NuNC.hArray = { 	["0"] = 0,
					["1"] = 1,
					["2"] = 2,
					["3"] = 3,
					["4"] = 4,
					["5"] = 5,
					["6"] = 6,
					["7"] = 7,
					["8"] = 8,
					["9"] = 9,
					["a"] = 10,
					["b"] = 11,
					["c"] = 12,
					["d"] = 13,
					["e"] = 14,
					["f"] = 15,
				};
NuNC.NUN_CPRESETS = {	"|c0000ff00",
						"|c000000ff",
						"|c00a335ed",
						"|c00ff7f3f",
						"|c00ff0000",
					};
NuNC.NUN_FONT1 = "Interface\\AddOns\\NotesUNeed\\Artwork\\NuN.ttf";

NuNC.GUILDFRAME_NAME		= "GuildFrame";
NuNC.GUILDFRAME_SUMMARY		= "GuildMain";
NuNC.GUILDFRAME_ROSTER		= "GuildRoster";
NuNC.GUILDFRAME_NEWS		= "GuildNews";
NuNC.GUILDFRAME_REWARDS		= "GuildRewards"
NuNC.GUILDFRAME_INFO_EVENTS	= "GuildInfoEvents";

NuNC.GUILDFRAME_BUTTONNAME	= "ContainerButton";

NuNC.MAX_GUILDROSTER_ROWS = 16;
NuNC.DEFAULT_GUILDROSTERVIEW = "playerStatus";

NuNC.UPDATETAG_ANY			= "A";
NuNC.UPDATETAG_FRIEND		= "F";
NuNC.UPDATETAG_IGNORE		= "I";
NuNC.UPDATETAG_GUILD_SUMMARY= "G";			-- Guild Tab
NuNC.UPDATETAG_GUILD_ROSTER	= "GROSTER";	-- Guild Roster Tab (Has 4 different views)		(used to be "GS")
NuNC.UPDATETAG_GUILD_NEWS	= "GNEWS";		-- Guild News Tab
NuNC.UPDATETAB_GUILD_PERKS	= "GPERKS";		-- Guild Perks/Rewards
NuNC.UPDATETAG_GUILD_INFO	= "GINFO";		-- Guild Info
NuNC.UPDATETAG_WHO			= "W";
NuNC.UPDATETAG_QUEST		= "Q";
NuNC.UPDATETAG_LOOK_DUNG	= "LFD";
NuNC.UPDATETAG_LOOK_RAID	= "LFR";