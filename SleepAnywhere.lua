-- Filename: SleepAtWill.lua
-- Author: SMI Modding Team (Nicola)
-- Date: 06/11/2024
-- version: 1.0.0.0

SleepAtWill = {}

function SleepAtWill:update(dt)
    local is_controlled = g_currentMission.playerSystem.playersByUserId[g_currentMission.playerUserId].isControlled
    if is_controlled then
        g_currentMission:addExtraPrintText(g_i18n:getText("SLEEP_ANYWHERE"))
        if Input.isKeyPressed(Input.KEY_lshift) and Input.isKeyPressed(Input.KEY_z) then
            g_sleepManager:showDialog()
        end
    end
end

addModEventListener(SleepAtWill)