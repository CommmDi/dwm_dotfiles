local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- basic configuration
vim.opt.number = true
vim.opt.expandtab = true
vim.opt.tabstop = 4

require("lazy").setup({
  spec = {
    -- plugins
    {
    "catppuccin/nvim",
    lazy = false,
    priority = 1000,
        config = function()
	        vim.cmd([[colorscheme catppuccin-mocha]])
        end,
    },
    "nvim-neo-tree/neo-tree.nvim",
    -- libs and dependencies
    "MunifTanjim/nui.nvim",
    "nvim-lua/plenary.nvim",
    "folke/snacks.nvim"
  },
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "catppuccin-macchiato" } },
  -- automatically check for plugin updates
  checker = { enabled = true },
})
