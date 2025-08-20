-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  lazy = false,
  keys = {
    { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
    { '<leader>r', ':Neotree reveal<CR>', desc = '[r]eveal Curr File in NeoTree', silent = true },
  },
  opts = {
    buffers = { follow_current_file = { enable = true } },
    filesystem = {
      filtered_items = {
        visible = true,
        show_hidden_count = true,
        -- hide_dotfiles = false,
        -- hide_gitignored = false,
      },
      follow_current_file = {
        enabled = true,
        leave_dirs_open = false,
      },
      window = {
        mappings = {
          ['\\'] = 'close_window',
          ['/'] = 'none',
          ['?'] = 'none',
          ['g?'] = 'show_help',
          ['Z'] = 'expand_all_nodes',
        },
      },
    },
  },
}
