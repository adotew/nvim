# Neovim Configuration

A personal Neovim configuration built on top of [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim), extended with additional plugins for a productive development workflow.

## Requirements

- Neovim >= 0.10
- [Nerd Font](https://www.nerdfonts.com/) installed and enabled
- `git`, `make`, `ripgrep` for Telescope and plugin builds
- Language-specific toolchains for LSP servers (C/C++, Python, Rust, TypeScript)

## Structure

```
~/.config/nvim/
├── init.lua                            # Core config: options, keymaps, plugin specs
├── lua/
│   ├── kickstart/
│   │   ├── health.lua                  # Healthcheck
│   │   └── plugins/
│   │       ├── autopairs.lua           # Auto-close brackets and quotes
│   │       ├── debug.lua               # DAP debugging (disabled)
│   │       ├── gitsigns.lua            # Git gutter signs and hunk actions
│   │       ├── indent_line.lua         # Indentation guides
│   │       └── lint.lua                # Linting via nvim-lint
│   └── custom/
│       └── plugins/
│           ├── barbecue.lua            # VS Code-like breadcrumb navigation
│           ├── diffview.lua            # Git diff and file history viewer
│           ├── flash.lua               # Quick jump motions
│           ├── lualine.lua             # Statusline with bubble separators
│           ├── persistence.lua         # Session management
│           ├── render-markdown.lua     # Rich markdown rendering
│           ├── sidekick.lua            # AI assistant integration
│           ├── smart-splits.lua        # Split resizing and buffer swapping
│           ├── snacks.lua              # Dashboard, file explorer, LazyGit
│           ├── toggleterm.lua          # Floating terminal
│           ├── treesitter-textobjects.lua  # Syntax-aware text objects
│           ├── trouble.lua             # Pretty diagnostics list
│           └── ufo.lua                 # Modern code folding
```

## Plugin Manager

[lazy.nvim](https://github.com/folke/lazy.nvim) -- automatically bootstrapped on first launch.

## Plugins

### Core (from kickstart)

| Plugin | Purpose |
|--------|---------|
| **telescope.nvim** | Fuzzy finder for files, grep, LSP symbols, and more |
| **nvim-lspconfig** | LSP client configuration |
| **mason.nvim** | Automatic LSP / tool installation |
| **blink.cmp** | Fast autocompletion with LuaSnip snippets |
| **conform.nvim** | Auto-formatting on save |
| **nvim-treesitter** | Syntax highlighting, indentation, and code parsing |
| **which-key.nvim** | Keymap hints popup |
| **gitsigns.nvim** | Git change indicators and hunk operations |
| **mini.nvim** | Text objects (`mini.ai`), surround (`mini.surround`), comments (`mini.comment`) |
| **todo-comments.nvim** | Highlight TODO / FIXME / NOTE in comments |
| **guess-indent.nvim** | Automatic indentation detection |
| **fidget.nvim** | LSP progress indicator |

### Custom Additions

| Plugin | Purpose |
|--------|---------|
| **snacks.nvim** | Dashboard, file explorer, LazyGit integration |
| **lualine.nvim** | Statusline with bubble theme |
| **flash.nvim** | Jump anywhere with `s` / `S` motions |
| **smart-splits.nvim** | Resize splits with `Alt+hjkl`, swap buffers with `<leader>w` |
| **toggleterm.nvim** | Floating terminal with `Ctrl+\` |
| **trouble.nvim** | Diagnostics panel with `<leader>x` |
| **nvim-ufo** | LSP / indent-based code folding |
| **persistence.nvim** | Session save / restore with `<leader>q` |
| **barbecue.nvim** | Winbar breadcrumbs via LSP |
| **diffview.nvim** | Git diff viewer and file history |
| **render-markdown.nvim** | Rich markdown preview in-buffer |
| **sidekick.nvim** | AI coding assistant integration |
| **treesitter-textobjects** | `af`/`if` (function), `ac`/`ic` (class), `aa`/`ia` (argument) text objects |

## LSP Servers

Automatically installed via Mason:

| Server | Language |
|--------|----------|
| `lua_ls` | Lua |
| `pyright` | Python |
| `rust_analyzer` | Rust |
| `clangd` | C / C++ |
| `ts_ls` | TypeScript / JavaScript |

### Formatters

| Formatter | Language |
|-----------|----------|
| `stylua` | Lua |
| `prettierd` | JavaScript / TypeScript |
| `ruff_format` | Python |
| `rustfmt` | Rust |
| `clang-format` | C / C++ |

## Colorscheme

[tokyonight-night](https://github.com/folke/tokyonight.nvim)

## Key Mappings

Leader key: **Space**

### General

| Key | Action |
|-----|--------|
| `<Esc>` | Clear search highlight |
| `<C-h/j/k/l>` | Navigate between splits |
| `<leader>f` | Format buffer |
| `<leader>/` | Fuzzy search in current buffer |
| `<leader><leader>` | Find open buffers |

### Search (Telescope)

| Key | Action |
|-----|--------|
| `<leader>sf` | Find files |
| `<leader>sg` | Live grep |
| `<leader>sw` | Grep current word |
| `<leader>sh` | Search help |
| `<leader>sk` | Search keymaps |
| `<leader>sd` | Search diagnostics |
| `<leader>sr` | Resume last search |
| `<leader>s.` | Recent files |
| `<leader>sc` | Search commands |
| `<leader>sn` | Search Neovim config files |
| `<leader>s/` | Grep in open files |

### LSP

| Key | Action |
|-----|--------|
| `grd` | Go to definition |
| `grr` | Find references |
| `gri` | Go to implementation |
| `grt` | Go to type definition |
| `grn` | Rename symbol |
| `gra` | Code action |
| `grD` | Go to declaration |
| `gO` | Document symbols |
| `gW` | Workspace symbols |
| `<leader>th` | Toggle inlay hints |

### Git

| Key | Action |
|-----|--------|
| `<leader>gg` | LazyGit |
| `<leader>gd` | Diff view |
| `<leader>gh` | File history |
| `<leader>gH` | Branch history |

### Diagnostics (Trouble)

| Key | Action |
|-----|--------|
| `<leader>xx` | Toggle diagnostics |
| `<leader>xX` | Buffer diagnostics |
| `<leader>xs` | Symbols |
| `<leader>xq` | Quickfix list |

### Navigation

| Key | Action |
|-----|--------|
| `s` / `S` | Flash jump / Treesitter jump |
| `]m` / `[m` | Next / previous function |
| `]]` / `[[` | Next / previous class |

### Splits & Windows

| Key | Action |
|-----|--------|
| `<Alt-h/j/k/l>` | Resize splits |
| `<leader>wh/j/k/l` | Swap buffer between splits |

### Terminal

| Key | Action |
|-----|--------|
| `<C-\>` | Toggle floating terminal |

### Sessions

| Key | Action |
|-----|--------|
| `<leader>qs` | Restore session |
| `<leader>qS` | Select session |
| `<leader>ql` | Restore last session |
| `<leader>qd` | Stop saving session |

### AI (Sidekick)

| Key | Action |
|-----|--------|
| `<leader>aa` | Toggle Sidekick CLI |
| `<leader>ac` | Toggle Claude |
| `<leader>as` | Select CLI tool |
| `<leader>at` | Send current context |
| `<leader>af` | Send file |
| `<leader>av` | Send visual selection |
| `<C-.>` | Focus Sidekick |
| `<Tab>` | Jump to / apply next edit suggestion |

### Folding

| Key | Action |
|-----|--------|
| `zR` / `zM` | Open / close all folds |
| `zr` / `zm` | Open / close folds by level |
| `zK` | Peek folded lines |

## Installation

```sh
git clone <your-repo-url> ~/.config/nvim
nvim
```

Lazy will automatically install all plugins on first launch. Run `:Lazy` to check plugin status.
