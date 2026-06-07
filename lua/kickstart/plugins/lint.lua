return {
  'mfussenegger/nvim-lint',
  event = { 'BufReadPre', 'BufNewFile' },
  config = function()
    local lint = require 'lint'
    lint.linters_by_ft = {
      markdown = { 'markdownlint' },
      typescript = { 'eslint_d' },
      typescriptreact = { 'eslint_d' },
      javascript = { 'eslint_d' },
      python = { 'ruff' },
    }

    local lint_augroup = vim.api.nvim_create_augroup('lint', { clear = true })
    vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWritePost', 'InsertLeave' }, {
      group = lint_augroup,
      callback = function()
        vim.schedule(function()
          if not vim.bo.modifiable then return end
          local ft_linters = lint.linters_by_ft[vim.bo.filetype] or {}
          local available = vim.tbl_filter(function(name)
            local linter = lint.linters[name]
            if type(linter) == 'function' then linter = linter() end
            local cmd = linter and linter.cmd
            return type(cmd) == 'string' and vim.fn.executable(cmd) == 1
          end, ft_linters)
          if #available > 0 then lint.try_lint(available) end
        end)
      end,
    })
  end,
}
