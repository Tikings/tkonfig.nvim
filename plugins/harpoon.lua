return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  config = function()
    local harpoon = require 'harpoon'

    harpoon:setup()

    vim.keymap.set('n', '<leader>A', function()
      harpoon:list():add()
    end, { desc = 'Add the file to harpoon' })

    vim.keymap.set('n', '<C-e>', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = 'Show the harpoon list of files' })

    vim.keymap.set('n', '<C-&>', function()
      harpoon:list():select(1)
    end, { desc = '1st element of the harpoon list' })

    vim.keymap.set('n', '<C-é>', function()
      harpoon:list():select(2)
    end, { desc = '2nd element of the harpoon list ' })

    vim.keymap.set('n', '<C-">', function()
      harpoon:list():select(3)
    end, { desc = '3rd element of the harpoon list' })

    -- Toggle previous & next buffers stored within Harpoon list

    vim.keymap.set('n', '<C-S-P>', function()
      harpoon:list():prev()
    end, { desc = 'Toggle previous buffers stored within Harpoon list' })

    vim.keymap.set('n', '<C-S-N>', function()
      harpoon:list():next()
    end, { desc = 'Toggle next buffers stored within Harpoon list' })

    -- vim.keymap.set('n', '<C-S-N>', function()
    --   harpoon:list():
    -- end, { desc = 'Toggle next buffers stored within Harpoon list' })

    vim.keymap.set('n', '<leader><C-&>', function()
      harpoon:list():replace_at(1)
    end)

    vim.keymap.set('n', '<leader><C-é>', function()
      harpoon:list():replace_at(2)
    end)

    vim.keymap.set('n', '<leader><C-">', function()
      harpoon:list():replace_at(3)
    end)
  end,
}
