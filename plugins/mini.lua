return { -- Collection of various small independent plugins/modules
  'echasnovski/mini.nvim',
  config = function()
    -- Add/delete/replace surroundings (brackets, quotes, etc.)
    --
    -- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
    -- - sd'   - [S]urround [D]elete [']quotes
    -- - sr)'  - [S]urround [R]eplace [)] [']
    require('mini.surround').setup {
      -- replaced the 's' at the beginning of each mapping to a <leader>a for "autour" in french
      mappings = {
        add = '<leader>aa', -- Add surrounding in Normal and Visual modes
        delete = '<leader>ad', -- Delete surrounding
        find = '<leader>af', -- Find surrounding (to the right)
        find_left = '<leader>aF', -- Find surrounding (to the left)
        highlight = '<leader>ah', -- Highlight surrounding
        replace = '<leader>ar', -- Replace surrounding
        update_n_lines = '<leader>an', -- Update `n_lines`

        suffix_last = 'l', -- Suffix to search with "prev" method
        suffix_next = 'n', -- Suffix to search with "next" method
      },
    }

    -- Simple and easy statusline.
    local statusline = require 'mini.statusline'
    -- set use_icons to true if you have a Nerd Font
    statusline.setup { use_icons = true }

    -- You can configure sections in the statusline by overriding their
    -- default behavior. For example, here we set the section for
    -- cursor location to LINE:COLUMN
    ---@diagnostic disable-next-line: duplicate-set-field
    statusline.section_location = function()
      return '%2l:%-2v'
    end

    -- Betters a/i functionalities
    require('mini.ai').setup()

    -- comments managements (gc, gcc, dans gc in visual mode
    require('mini.comment').setup()
  end,
}
