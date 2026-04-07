---@module 'lazy'
---@type LazySpec

return {
  {
    'folke/noice.nvim',
    event = 'VeryLazy',
    dependencies = {
      'MunifTanjim/nui.nvim',
      'rcarriga/nvim-notify',
    },
    keys = {
      { '<leader>nd', '<cmd>NoiceDismiss<cr>', desc = 'Dismiss Noice' },
    },
    ---@module 'noice'
    ---@type NoiceConfig
    opts = {
      cmdline = {
        enabled = true,
        view = 'cmdline_popup',
      },
      messages = { enabled = false },
      popupmenu = {
        enabled = true,
        backend = 'nui',
      },
      notify = { enabled = false },
      lsp = {
        progress = { enabled = false },
        override = {
          ['vim.lsp.util.convert_input_to_markdown_lines'] = false,
          ['vim.lsp.util.stylize_markdown'] = false,
          ['cmp.entry.get_documentation'] = false,
        },
        hover = { enabled = false },
        signature = { enabled = false },
        message = { enabled = false },
      },
      presets = {
        bottom_search = false,
        command_palette = false,
        long_message_to_split = false,
        inc_rename = false,
        lsp_doc_border = false,
      },
      views = {
        cmdline_popup = {
          position = { row = '50%', col = '50%' },
          size = { width = 60, height = 'auto' },
          border = {
            style = 'rounded',
            padding = { 0, 1 },
          },
          win_options = {
            winhighlight = {
              Normal = 'NormalFloat',
              FloatBorder = 'FloatBorder',
            },
          },
        },
        popupmenu = {
          relative = 'editor',
          position = { row = 8, col = '50%' },
          size = { width = 60, height = 10 },
          border = {
            style = 'rounded',
            padding = { 0, 1 },
          },
          win_options = {
            winhighlight = {
              Normal = 'NormalFloat',
              FloatBorder = 'FloatBorder',
            },
          },
        },
      },
    },
  },
}
