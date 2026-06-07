return {
  {
    'folke/snacks.nvim',
    priority = 1000,
    lazy = false,
    keys = {
      { '<leader>dd', function() Snacks.dashboard() end, desc = 'Dashboard' },
      { '<leader>gg', function() Snacks.lazygit() end, desc = 'LazyGit' }
    },
    opts = function()
      return {
        lazygit = {},
        scroll = {
          enabled = true,
        },
        image = {
          enabled = true,
          formats = {
            'png',
            'jpg',
            'jpeg',
            'gif',
            'bmp',
            'webp',
            'tiff',
            'heic',
            'avif',
            'mp4',
            'mov',
            'avi',
            'mkv',
            'webm',
            'pdf',
            'icns',
            'svg',
          },
          convert = {
            notify = true,
          },
        },
        dashboard = {
          pane_gap = 12,
          sections = {
            { section = 'keys', gap = 1, padding = 1 },
            { pane = 2, icon = ' ', title = 'Recent Files', section = 'recent_files', indent = 2, padding = 1 },
            { pane = 2, icon = ' ', title = 'Projects', section = 'projects', indent = 2, padding = 1 },
            {
              pane = 2,
              icon = ' ',
              title = 'Git Status',
              section = 'terminal',
              enabled = function() return Snacks.git.get_root() ~= nil end,
              cmd = 'git status --short --branch --renames',
              height = 5,
              padding = 1,
              ttl = 5 * 60,
              indent = 3,
            },
            { section = 'startup' },
          },
        },
      }
    end,
    config = function(_, opts)
      require('snacks').setup(opts)
    end,
  },
}
