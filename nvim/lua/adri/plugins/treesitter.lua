local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
    return
end

treesitter.setup({ -- better highlighting and indentation
    highlight = {
        enable = true
    },
    indent = { enable = true },
    ensure_installed = {
        "json",
        "lua",
        "rust",
        "python",
        "go",
        "julia",
        "toml",
        "bash",
        "yaml",
        "vim",
        "dockerfile",
        "latex"
    },
    auto_install = true,
})
