return {
  {
    'mrjones2014/smart-splits.nvim',
    event = 'VeryLazy',
    opts = {},
    keys = {
      -- Resizing splits
      { '<A-h>', function() require('smart-splits').resize_left() end, desc = 'Resize split left' },
      { '<A-j>', function() require('smart-splits').resize_down() end, desc = 'Resize split down' },
      { '<A-k>', function() require('smart-splits').resize_up() end, desc = 'Resize split up' },
      { '<A-l>', function() require('smart-splits').resize_right() end, desc = 'Resize split right' },
      -- Swapping buffers between splits
      { '<leader>wh', function() require('smart-splits').swap_buf_left() end, desc = 'Swap buffer left' },
      { '<leader>wj', function() require('smart-splits').swap_buf_down() end, desc = 'Swap buffer down' },
      { '<leader>wk', function() require('smart-splits').swap_buf_up() end, desc = 'Swap buffer up' },
      { '<leader>wl', function() require('smart-splits').swap_buf_right() end, desc = 'Swap buffer right' },
    },
  },
}
