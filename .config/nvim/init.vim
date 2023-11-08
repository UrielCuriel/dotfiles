set runtimepath+=~/.vim,~/.vim/after
set packpath+=~/.vim
set clipboard=unnamedplus
source ~/.vimrc

" Disable ruby provider
let g:loaded_ruby_provider = 0

lua << EOF
 require('glow').setup()
 require('colorizer').setup()

 vim.opt.list = true
 vim.opt.termguicolors = true
 vim.cmd [[highlight IndentBlankNord11 guifg=#bf616a gui=nocombine]]
 vim.cmd [[highlight IndentBlankNord12 guifg=#ffca85 gui=nocombine]]
 vim.cmd [[highlight IndentBlankNord13 guifg=#f694ff gui=nocombine]]
 vim.cmd [[highlight IndentBlankNord14 guifg=#82e2ff gui=nocombine]]
 vim.cmd [[highlight IndentBlankNord15 guifg=#ff6767 gui=nocombine]]

 require("indent_blankline").setup {
    show_end_of_line = true,
    show_current_context = true,
    show_current_context_start = true,
     char_highlight_list = {
        "IndentBlankNord11",
        "IndentBlankNord12",
        "IndentBlankNord13",
        "IndentBlankNord14",
        "IndentBlankNord15",
    },
 }

 local telescope = require("telescope")
 local lga_actions = require("telescope-live-grep-args.actions")

telescope.setup {
  extensions = {
    live_grep_args = {
      auto_quoting = true, -- enable/disable auto-quoting
      -- define mappings, e.g.
      mappings = { -- extend mappings
        i = {
          ["<C-k>"] = lga_actions.quote_prompt(),
          ["<C-i>"] = lga_actions.quote_prompt({ postfix = " --iglob " }),
        },
      },
      -- ... also accepts theme settings, for example:
      -- theme = "dropdown", -- use dropdown theme
      -- theme = { }, -- use own theme spec
      -- layout_config = { mirror=true }, -- mirror preview pane
    }
  }
}
EOF

