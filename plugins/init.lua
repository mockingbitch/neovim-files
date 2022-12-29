
require("bufferline").setup{}

-- examples for your init.lua

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

require'nvim-material-icon'.setup {
  -- your personnal icons can go here (to override)
  -- you can specify color or cterm_color instead of specifying both of them
  -- DevIcon will be appended to `name`
  override = {
    zsh = {
      icon = "",
      color = "#428850",
      cterm_color = "65",
      name = "Zsh"
    }
  };
  -- globally enable different highlight colors per icon (default to true)
  -- if set to false all icons will have the default icon's color
  color_icons = true;
  -- globally enable default icons (default to false)
  -- will get overriden by `get_icons` option
  default = true;
}
--require'nvim-material-icon'.get_icon(filename, extension, options)
--require'nvim-material-icon'.get_icon(filename, extension, { default = true })
require'nvim-material-icon'.has_loaded()
local icon, color = require'nvim-material-icon'.get_icon_color("init.lua", "lua")
assert(icon == "")
assert(color == "#51a0cf")
require'nvim-material-icon'.get_icons()
require("nvim-material-icon").set_icon {
  zsh = {
    icon = "",
    color = "#428850",
    cterm_color = "65",
    name = "Zsh"
  }
}
require("nvim-material-icon").set_default_icon('', '#6d8086')
require("nvim-material-icon").get_icon_by_filetype(filetype, opts)
require("nvim-material-icon").get_icon_colors_by_filetype(filetype, opts)
require("nvim-material-icon").get_icon_color_by_filetype(filetype, opts)
require("nvim-material-icon").get_icon_cterm_color_by_filetype(filetype, opts)

--TABNINE
require'cmp'.setup {
 sources = {
 	{ name = 'cmp_tabnine' },
 },
}

local tabnine = require('cmp_tabnine.config')

tabnine:setup({
	max_lines = 1000,
	max_num_results = 20,
	sort = true,
	run_on_every_keystroke = true,
	snippet_placeholder = '..',
	ignored_file_types = {
		-- default is not to ignore
		-- uncomment to ignore in lua:
		-- lua = true
	},


show_prediction_strength = false
})
