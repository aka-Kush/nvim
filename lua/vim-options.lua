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
vim.o.autochdir = true      -- Change working directory to the open file's directory

-- keymaps
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")
vim.keymap.set('n', 'J', "mzJ`z")

-- Better window navigation with Ctrl + h/j/k/l
vim.keymap.set('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
vim.keymap.set('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })
vim.keymap.set('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })
vim.keymap.set('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })

-- buffers 
vim.api.nvim_set_keymap('n', '<leader>bn', ':bnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>bp', ':bprevious<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>bd', ':bd<CR>', { noremap = true, silent = true })

-- terminal
vim.keymap.set('t', '<Esc><Esc>', [[<C-\><C-n>]],
  { noremap = true, silent = true, desc = "Exit terminal mode with Esc Esc" })
vim.keymap.set('n', '<leader>tt', function()
  -- Check for existing terminal buffer in the current tab
  local term_buf = nil
  for _, win in ipairs(vim.api.nvim_tabpage_list_wins(0)) do
    local buf = vim.api.nvim_win_get_buf(win)
    if vim.bo[buf].buftype == 'terminal' then
      term_buf = buf
      vim.api.nvim_win_close(win, true) -- Close the terminal window
      return
    end
  end
  -- Open terminal in a horizontal split if not found
  vim.cmd('split | terminal')
end, { noremap = true, silent = true, desc = "Toggle terminal" })
