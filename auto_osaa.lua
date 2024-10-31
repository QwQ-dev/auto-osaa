---@diagnostic disable: undefined-global


--- Get ui.
local dt = ui.reference('Rage', 'Aimbot','Double tap')
local osaa = ui.reference('AA', 'Other','On shot anti-aim')

--- Create ui.
local auto_osaa = ui.new_hotkey('AA', 'Other', 'Auto OSAA', false)

--- If auto osaa and osaa is enabled, then set dt disabled
client.set_event_callback("setup_command", function()
    if ui.get(auto_osaa) and ui.get(osaa) then
        ui.set(dt, false)
    end
end)