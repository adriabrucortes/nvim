local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end
-- this ensures packer is installed
local packer_bootstrap = ensure_packer()

-- Command that autoreloads nvim when this file is saved
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

local status, packer = pcall(require, "packer")
if not status then
    return
end

return packer.startup(function(use) -- install plugins here
    use("wbthomason/packer.nvim") 

    use("nvim-lua/plenary.nvim") -- useful lua functions for other plugins

    use("tanvirtin/monokai.nvim") -- colorschemes
    use("tomasr/molokai")
    use("projekt0n/github-nvim-theme")
    use("ayu-theme/ayu-vim")
    use("navarasu/onedark.nvim")

    use("christoomey/vim-tmux-navigator") -- tmux & split window navigation

    use("szw/vim-maximizer") -- maximize toggle current split window
    
    -- essential plugins
    use("tpope/vim-surround") -- ability to "surround" word or whatever with chosen character
    use("vim-scripts/ReplaceWithRegister") -- to replace sth with what is in clipboard

    -- commenting
    use("numToStr/Comment.nvim") -- autocommenter

    use("nvim-tree/nvim-tree.lua") -- file explorer
    use("nvim-tree/nvim-web-devicons")
    
    -- lualine
    use("nvim-lualine/lualine.nvim")

    -- fuzzy finding
    use({"nvim-telescope/telescope-fzf-native.nvim", run = "make"}) -- dependency for telescope
    use({"nvim-telescope/telescope.nvim", branch = "0.1.x"})

    -- code autocompletion
    use("hrsh7th/nvim-cmp") -- recommender
    use("hrsh7th/cmp-buffer") -- source to get recommendations
    use("hrsh7th/cmp-path") -- source for path recommendations

    -- snippets
    use("L3MON4D3/LuaSnip") -- engine
    use("saadparwaiz1/cmp_luasnip") -- source
    use("rafamadriz/friendly-snippets") -- collection of useful snippets

    -- lsp servers
    use("williamboman/mason.nvim")
    use("williamboman/mason-lspconfig.nvim")

    -- configuring lsp servers
    use("neovim/nvim-lspconfig")
    use("hrsh7th/cmp-nvim-lsp")
    use({ "glepnir/lspsaga.nvim", branch = "main" })
    use("jose-elias-alvarez/typescript.nvim")
    use("onsails/lspkind.nvim")

    use("simrat39/rust-tools.nvim")

    -- autoclose brackets
    use("Raimondi/delimitMate")


    use({
        "nvim-treesitter/nvim-treesitter",
        run = function ()
            require("nvim-treesitter.install").update({ with_sync = true })
        end,
    })

    if packer_bootstrap then
        require('packer').sync()
    end
end)
