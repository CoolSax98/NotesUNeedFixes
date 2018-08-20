
-- Saved Data
NuNDataBackup = {};
NuNSettingsBackup = {};

-- Confirmations
StaticPopupDialogs["NUN_CONFIRM_BACKUP"] = {
	text = NuNC.NUN_CONFIRM_RELOADUI,
	button1 = TEXT(NUN_CONFIRM),
	button2 = TEXT(CANCEL),
	showAlert = 1,
	timeout = 0,
	OnAccept = function()
		NuNDataBackup = NuNData;
		NuNSettingsBackup = NuNSettings;
		NuNSettings.Restored = nil;
		NuNSettings.BackedUp = true;
		ReloadUI();
	end,
	hideOnEscape = 1,
};

StaticPopupDialogs["NUN_CONFIRM_RESTORE"] = {
	text = NuNC.NUN_CONFIRM_RELOADUI,
	button1 = TEXT(NUN_OPT_RESTORE),
	button2 = TEXT(CANCEL),
	showAlert = 1,
	timeout = 0,
	OnAccept = function()
		if ( ( NuNDataBackup ) and ( NuNSettingsBackup ) ) then
			if ( NuNFrame:IsVisible() ) then
				NuNFrame:Hide();
			end
			if ( NuNGNoteFrame:IsVisible() ) then
				NuNGNoteFrame:Hide();
			end
			if ( NuNOptionsFrame:IsVisible() ) then
				NuNOptionsFrame:Hide();
			end
			if ( NuNSearchFrame:IsVisible() ) then
				NuNSearchFrame:Hide();
			end
			NuNData = NuNDataBackup;
			NuNSettings = NuNSettingsBackup;
			NuNSettings.BackedUp = nil;
			NuNSettings.Restored = true;
			ReloadUI();
		end
	end,
	hideOnEscape = 1,
};
