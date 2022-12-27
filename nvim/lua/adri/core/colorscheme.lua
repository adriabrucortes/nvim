local status, _ = pcall(vim.cmd, "colorscheme ayu") -- "colorscheme <name-of-colorscheme>"
if not status then
    print("Colorscheme not found!")
    return
end
