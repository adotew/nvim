return {
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    keys = {
      { '<C-\\>', '<cmd>ToggleTerm direction=float<cr>', desc = 'Toggle floating terminal' },
      { '<C-\\>', '<cmd>ToggleTerm direction=float<cr>', mode = 't', desc = 'Toggle floating terminal' },
    },
    opts = {
      size = function(term)
        if term.direction == 'horizontal' then
          return 15
        elseif term.direction == 'vertical' then
          return vim.o.columns * 0.4
        end
      end,
      float_opts = {
        border = 'rounded',
      },
    },
  },
}
