local status, lualine = pcall(require, "lualine")
if not status then
    return
end

-- local lualine_theme = require("lualine.themes.<theme>") to import a theme


lualine.setup({})
