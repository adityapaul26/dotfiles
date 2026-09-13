-- Fyzenor Lua Plugin Example
fyzenor.set_status('Lua Plugin Engine Loaded Successfully!')

-- Custom keybinding example (Press Ctrl+X to run)
fyzenor.add_keymap('Ctrl+X', function()
    local f = fyzenor.get_current_file()
    if f then
        fyzenor.set_status('Plugin: Current item is ' .. f.name)
    end
end)
