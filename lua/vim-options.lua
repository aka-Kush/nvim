-- Leader Key space
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Line numbers
vim.opt.number = true          -- Show absolute line number
vim.opt.relativenumber = true  -- Show relative line numbers

-- Tabs & indentation
vim.opt.tabstop = 4            -- Number of spaces per tab
vim.opt.shiftwidth = 4         -- Number of spaces per indent
vim.opt.expandtab = true       -- Convert tabs to spaces
vim.opt.smartindent = true     -- Smart autoindenting

-- Line wrapping
vim.opt.wrap = false           -- Disable line wrap

-- Search settings
vim.opt.ignorecase = true      -- Ignore case in searches...
vim.opt.smartcase = true       -- ...unless there's a capital letter
vim.opt.hlsearch = true        -- Highlight search results
vim.opt.incsearch = true       -- Show matches as you type

-- Appearance
vim.opt.termguicolors = true   -- True color support
vim.opt.signcolumn = 'yes'     -- Always show the sign column
vim.opt.cursorline = true      -- Highlight the current line
vim.opt.scrolloff = 8          -- Keep cursor 8 lines from screen edge
vim.opt.sidescrolloff = 8

-- Clipboard
vim.opt.clipboard = 'unnamedplus'  -- Use system clipboard

-- Splits
vim.opt.splitright = true      -- Vertical splits to the right
vim.opt.splitbelow = true      -- Horizontal splits below

-- Mouse
vim.opt.mouse = 'a'            -- Enable mouse in all modes

-- Backups / Swap / Undo
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false
vim.opt.undofile = true        -- Persistent undo

-- Timeouts
vim.opt.timeoutlen = 500       -- Faster key sequence timeout

-- Performance
vim.opt.updatetime = 300       -- Faster completion

-- Misc
vim.opt.hidden = true          -- Allow switching buffers without saving
vim.opt.iskeyword:append('-')  -- Treat dash-separated words as a word

-- keymaps
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")
vim.keymap.set('n', 'J', "mzJ`z")

-- buffers 
vim.api.nvim_set_keymap('n', '<leader>bn', ':bnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>bp', ':bprevious<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>bd', ':bd<CR>', { noremap = true, silent = true })
