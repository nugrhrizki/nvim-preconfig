local g = vim.g
local tree_cb = require('nvim-tree.config').nvim_tree_callback

require'nvim-tree'.setup {
  disable_netrw       = true,
  hijack_netrw        = true,
  open_on_setup       = false,
  ignore_ft_on_setup  = {},
  auto_close          = true,
  open_on_tab         = false,
  update_to_buf_dir   = {
    enable = true,
    auto_open = true,
  },
  hijack_cursor       = true,
  update_cwd          = true,
  lsp_diagnostics     = false,
  update_focused_file = {
    enable      = true,
    update_cwd  = true,
    ignore_list = {'.git', 'node_modules', '.cache'}
  },
  system_open = {
    cmd  = nil,
    args = {}
  },

  view = {
    width = 30,
    side = 'left',
    auto_resize = true,
    mappings = {
      custom_only = false,
      list = {
        { key = {"l", "o"},  cb = tree_cb("edit") },
        { key = "h",         cb = tree_cb("close_node") },
        { key = "<CR>",      cb = tree_cb("cd") },
        { key = "<BS>",      cb = tree_cb("dir_up") },
        { key = "<C-v>",     cb = tree_cb("vsplit") },
        { key = "<C-s>",     cb = tree_cb("split") },
        { key = "<C-t>",     cb = tree_cb("tabnew") },
        { key = "<",         cb = tree_cb("prev_sibling") },
        { key = ">",         cb = tree_cb("next_sibling") },
        { key = "P",         cb = tree_cb("parent_node") },
        { key = "<S-CR>",    cb = tree_cb("close_node") },
        { key = "<Tab>",     cb = tree_cb("preview") },
        { key = "gg",        cb = tree_cb("first_sibling") },
        { key = "<S-G>",     cb = tree_cb("last_sibling") },
        { key = "I",         cb = tree_cb("toggle_ignored") },
        { key = "H",         cb = tree_cb("toggle_dotfiles") },
        { key = "R",         cb = tree_cb("refresh") },
        { key = "a",         cb = tree_cb("create") },
        { key = "d",         cb = tree_cb("remove") },
        { key = "r",         cb = tree_cb("rename") },
        { key = "<C-r>",     cb = tree_cb("full_rename") },
        { key = "x",         cb = tree_cb("cut") },
        { key = "c",         cb = tree_cb("copy") },
        { key = "p",         cb = tree_cb("paste") },
        { key = "y",         cb = tree_cb("copy_name") },
        { key = "Y",         cb = tree_cb("copy_path") },
        { key = "gy",        cb = tree_cb("copy_absolute_path") },
        { key = "[c",        cb = tree_cb("prev_git_item") },
        { key = "]c",        cb = tree_cb("next_git_item") },
        { key = "s",         cb = tree_cb("system_open") },
        { key = "q",         cb = tree_cb("close") },
        { key = "g?",        cb = tree_cb("toggle_help") },
      }
    }
  }
}

g.nvim_tree_icons = {
	default = '', --'???',
	symlink = '???',
	git = {
		unstaged = "???",
		staged = "???",
		unmerged = "???",
		renamed = "???",
		untracked = "???",
		deleted = "???",
		ignored = "???"
	},
	folder = {
		arrow_open = "???",
		arrow_closed = "???",
		default = "???",
		open = "???", -- "???",
		empty = "???",
		empty_open = "???",
		symlink = "???",
		symlink_open = "???" --"???",
	},
	lsp = {
		hint = "???",
		info = "???",
		warning = "???",
		error = "???",
	}
}
