
-- Exported Data
NuNDataExport = {};
local NuNDataExport = NuNDataExport;
local string = string;


-- Local Data
local searchFor = NUN_SEARCHFOR;
local Notes = "notes~";
local exportName = "";

local strformat = string.format
local function nun_msgf(str, ...)
--[===[@debug@
	NuN_Message(strformat(str, ...));
--@end-debug@]===]
end

-- Confirmations
StaticPopupDialogs["NUN_CONFIRM_EXPORT"] = {
	text = TEXT(NUN_CONFIRM),
	button1 = TEXT(NUN_DB_EXPORT),
	button2 = TEXT(CANCEL),
	hasEditBox = 1,
--	showAlert = 0,
	timeout = 0,
	exclusive = 1,
	hideOnEscape = 1,
	whileDead = 1,
    enterClicksFirstButton = 1,
	OnShow = function(frame)
		local lExportName;
		for category, data in pairs(NuNDataExport) do
			lExportName = category;
			break;
		end
		if ( lExportName ) then
			_G[frame:GetName() .. "EditBox"]:SetText(lExportName);
			exportName = lExportName;
		else
			_G[frame:GetName() .. "EditBox"]:SetText("");
		end

		local numToExport = 0;
		local totalFound = getn(NuNSearchFrame.foundNuN);
		local n = NuNGet_CommandID(searchFor, "Notes");
		local notesTxt = searchFor[n].Display;
		for i=1, totalFound, 1 do
			local noteType = string.sub( NuNSearchFrame.foundNuN[i], 1, 1 );
			if ( ( noteType == NuNC.NUN_HORD_C ) or ( noteType == NuNC.NUN_ALLI_C ) ) then
                -- don't export contact notes.. ?   but why not?
			else
				numToExport = numToExport + 1;
			end
		end
		_G[frame:GetName() .. "Text"]:SetText(NUN_DB_EXPORT.." : "..numToExport.." "..notesTxt);
		
		frame.nextHideFunc = frame:GetScript("OnHide");
		frame:SetScript("OnHide", function(self)
			self.editBox.nextEditFocusedGain = nil;
			
			self.editBox:SetScript("OnEditFocusLost", self.editBox.nextEditFocusLost);
			self.editBox.nextEditFocusLost = nil;
			
			local nextHideFunc = self.nextHideFunc;
			self.nextHideFunc = nil;
			
			self:SetScript("OnHide", nextHideFunc);
			if nextHideFunc then nextHideFunc(self) end
		end);
		frame.editBox:SetFocus();
	end,
	OnAccept = function(frame)
		local numExported = 0;
		local n = NuNGet_CommandID(searchFor, "Notes");
		local notesTxt = searchFor[n].Display;
		local checkName = _G[frame:GetName().."EditBox"]:GetText();
		if ( exportName == "" ) then
			exportName = checkName;
		end
		if ( ( not checkName ) or ( checkName == "" ) or ( checkName ~= exportName ) ) then
            -- return true to tell the StaticPopup code to not automatically hide the dialog
			return true;
		else
			exportName = checkName;
			local toExport = NuNSearchFrame.foundNuN;
			local exports = getn(toExport);
			local pKey = NuNSearchFrame.pKey;

			if ( not NuNDataExport ) then
				NuNDataExport = {};
			end
			if ( not NuNDataExport[exportName] ) then
				NuNDataExport[exportName] = {};
			end

			for i=1, exports, 1 do
				local noteType = string.sub( toExport[i], 1, 1 );
				local noteName = string.sub( toExport[i], 2 );

				if ( ( noteType == NuNC.NUN_HORD_C ) or ( noteType == NuNC.NUN_ALLI_C ) ) then
					-- Don't allow the export of contacts

				else
					if ( ( NuNData ) and ( NuNData[Notes] ) and ( NuNData[Notes][noteName] ) ) then		-- 20200
						NuNDataExport[exportName][noteName] = NuNData[Notes][noteName];
						numExported = numExported + 1;

					elseif ( ( NuNData ) and ( pKey ) and ( NuNData[pKey] ) and ( NuNData[pKey][Notes] ) and ( NuNData[pKey][Notes][noteName] ) ) then		-- 20200
						NuNDataExport[exportName][noteName] = NuNData[pKey][Notes][noteName];
						numExported = numExported + 1;
					end
				end
			end
		end

		if ( NuNSearchFrame:IsVisible() ) then
			NuNSearchFrame:Hide();
		end

		NuN_Message( NUN_FINISHED_PROCESSING.." - "..NUN_DB_EXPORT.." : "..numExported.." "..notesTxt .. ". (" .. NUN_LOGOFF_TO_APPLY_CHANGES .. ")");
	end,
	EditBoxOnEscapePressed = function(editBox, data)
		local dialog = editBox:GetParent();
		local info = StaticPopupDialogs["NUN_CONFIRM_EXPORT"];
		if (not info.OnCancel) or (info.OnCancel(dialog, data, "escaped")) then
			dialog:Hide();
		end
	end,
--	OnCancel = function() end,
	
--[[	EditBoxOnEnterPressed = function(editBox)
		local dialog = editBox:GetParent();
		local info = StaticPopupDialogs["NUN_CONFIRM_EXPORT"];
		if info.OnAccept and (not info.OnAccept(dialog)) then
			dialog:Hide();
		end
	end,
--]]
};
