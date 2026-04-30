# nvim

Personal Neovim config. Minimal, dark, keyboard-first.

## Requirements

- Neovim >= 0.10
- `git`
- `ripgrep` (telescope live grep)
- `fd` (telescope find files)
- A C compiler (treesitter)
- Node.js (some LSP servers)

### Install deps

**macOS**

```bash
brew install neovim ripgrep fd node
```

**Arch**

```bash
sudo pacman -S neovim ripgrep fd nodejs
```

## Install

```bash
git clone https://github.com/<user>/nvim.git ~/.config/nvim
nvim
```

First launch: `lazy.nvim` bootstraps and installs plugins from `lazy-lock.json`. Mason then installs LSP servers. Treesitter compiles parsers on demand.

Wait until done, quit, reopen.

## Layout

```
~/.config/nvim
├── init.lua              -- options, leader, lazy bootstrap
├── lazy-lock.json        -- pinned plugin versions
└── lua/plugins/
    ├── colorscheme.lua   -- zenwritten (pure black bg)
    ├── conform.lua       -- format on save
    ├── dashboard.lua     -- start screen
    ├── editing.lua       -- autopairs, indent, comment
    ├── lsp.lua           -- mason + lspconfig + cmp
    ├── markdown.lua      -- render-markdown
    ├── oil.lua           -- file explorer
    ├── statusline.lua    -- lualine in tabline
    ├── telescope.lua     -- fuzzy finder
    ├── toggleterm.lua    -- integrated terminal
    └── treesitter.lua    -- syntax + folds
```

## Plugins

| Plugin | Purpose |
|--------|---------|
| `lazy.nvim` | Plugin manager |
| `zenbones.nvim` | Colorscheme (zenwritten) |
| `nvim-lspconfig` + `mason.nvim` | LSP |
| `nvim-cmp` + `LuaSnip` | Completion + snippets |
| `conform.nvim` | Formatting |
| `telescope.nvim` | Fuzzy finder |
| `nvim-treesitter` | Syntax / folds |
| `oil.nvim` | File explorer |
| `dashboard-nvim` | Start screen |
| `lualine.nvim` | Statusline (in tabline) |
| `nvim-autopairs` | Auto pairs |
| `indent-blankline.nvim` | Indent guides |
| `Comment.nvim` | `gcc` / `gc` comments |
| `render-markdown.nvim` | Markdown rendering |
| `toggleterm.nvim` | Integrated terminal |

## LSP servers (auto via Mason)

`ts_ls`, `gopls`, `rust_analyzer`, `pyright`, `jdtls`, `html`, `cssls`, `bashls`, `lua_ls`

## Formatters (conform)

| Filetype | Formatter |
|----------|-----------|
| Lua | `stylua` |
| Python | `isort`, `black` |
| Rust | `rustfmt` (LSP fallback) |
| JS/TS | `prettierd`, `prettier` |
| Go | `gofmt` |

Format on save enabled.

## Keymaps

Leader = `<Space>`.

### Global

| Key | Action |
|-----|--------|
| `<leader><leader>` | Find files |
| `<leader>f` | Find files |
| `<leader>g` | Live grep |
| `<leader>b` | Buffers |
| `<leader>qq` | Quit all |
| `-` | Open parent dir (oil) |
| `<C-\>` | Toggle terminal |
| `<leader>tf` | Float terminal |
| `<leader>th` | Horizontal terminal |
| `<leader>tv` | Vertical terminal |

### LSP (on attach)

| Key | Action |
|-----|--------|
| `gd` | Go to definition |
| `K` | Hover |
| `<leader>r` | Rename |
| `<leader>a` | Code action |
| `<leader>d` | Diagnostic float |
| `[d` / `]d` | Prev / next diagnostic |

### Completion (insert)

| Key | Action |
|-----|--------|
| `<C-n>` / `<C-p>` | Next / prev item |
| `<C-Space>` | Trigger complete |
| `<CR>` | Confirm |

### Comment

| Key | Action |
|-----|--------|
| `gcc` | Toggle line (normal) |
| `gc` | Toggle (visual) |

## Update

```vim
:Lazy sync
:Mason
:TSUpdate
```

Commit `lazy-lock.json` after sync to keep versions pinned across machines.
