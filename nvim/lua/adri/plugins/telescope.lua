local tel_setup, telescope = pcall(require, "telescope")
if not setup then
    return
end

local act_setup, actions = pcall(require, "telescope.actions")
if not act_setup then
    return
end

telescope.setup({})

telescope.load_extension("fzf")
