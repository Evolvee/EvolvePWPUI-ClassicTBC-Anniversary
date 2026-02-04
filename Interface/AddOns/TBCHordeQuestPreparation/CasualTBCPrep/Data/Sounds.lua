CasualTBCPrep.Sounds = CasualTBCPrep.Sounds or {}

CasualTBCPrep.Sounds.SoundClickID = 808
CasualTBCPrep.Sounds.SoundRaidWarningID = 8959
CasualTBCPrep.Sounds.WhisperPing = 3081

---@param soundID number
function CasualTBCPrep.Sounds.PlaySoundSFX(soundID)
	local dbValue = CasualTBCPrep.Settings.GetSettingFromCharOrGlobal(CasualTBCPrep.Settings.EnabledSounds)
	if dbValue ~= nil and dbValue >= 1 then
		PlaySound(soundID)
	end
end

---@param soundID number
function CasualTBCPrep.Sounds.PlaySoundWarn(soundID)
	local dbValue = CasualTBCPrep.Settings.GetSettingFromCharOrGlobal(CasualTBCPrep.Settings.EnabledSounds)

	if dbValue ~= nil and dbValue >= 2 then
		PlaySound(soundID)
	end
end

function CasualTBCPrep.Sounds.PlaySound_RaidWarning()
	CasualTBCPrep.Sounds.PlaySoundWarn(CasualTBCPrep.Sounds.SoundRaidWarningID)
end

function CasualTBCPrep.Sounds.PlaySound_Click()
	CasualTBCPrep.Sounds.PlaySoundSFX(CasualTBCPrep.Sounds.SoundClickID)
end
function CasualTBCPrep.Sounds.PlaySound_WhisperPing()
	CasualTBCPrep.Sounds.PlaySoundSFX(CasualTBCPrep.Sounds.WhisperPing)
end