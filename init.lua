---- init.lua -----------------------------------------------------------------
-------------------------------------------------------------------------------

require'usrglobals'


jk.conf.keys.comment.langs = {
    lua        = { char = [[-]], thresh = 2, newlen = 3, suffix = [[ ]]  },
    json       = { char = [[\]], thresh = 2, newlen = 2, suffix = [[ ]]  },
    ps1        = { char = [[#]], thresh = 1, newlen = 1, suffix = [[ ]]  },
    autohotkey = { char = [[;]], thresh = 1, newlen = 1, suffix = [[--- ]] },
}

_G.jk.use_cmp = false
_G.jk.use_coq = true

-- ┌────────────────┐
-- │ User Variables │
-- └────────────────┘
---------------------

local mscroll = {} ---@type VimOptsMousescroll
mscroll.x = 6
mscroll.y = 4

-- ┌───────────────┐
-- │ vim.xxx = ... │
-- └───────────────┘
-----------------------||{{{
-----------------------||
local opt = vim.opt  --||
local g = vim.g      --||
local wo = vim.wo    --||
-----------------------||
g.python3_host_prog = [[C:/Program Files/Python310/.aliases/python310.exe]]
g.mapleader = [[ ]]
g.coq_settings = {
    auto_start = true,
    display = {
        pum = {
            y_ratio = 0.5,
        },
    },
}
----
opt.number = true
opt.relativenumber = true
opt.numberwidth = 3
opt.signcolumn = 'number'
----
opt.expandtab = true
opt.tabstop = 4
opt.smarttab = true
opt.softtabstop = -1
opt.shiftwidth = 0
opt.shiftround = true
opt.cpoptions = 'eFsInaAcBXy_'
vim.cmd[[filetype plugin indent on]]
---- 
opt.clipboard:append { 'unnamedplus' }
opt.listchars:append 'space:⋅'
opt.list = true
opt.showbreak = '==<'
opt.linebreak = true
----
opt.hlsearch = true
opt.cursorline = true
opt.termguicolors = true
----
opt.wildmenu = true
opt.cmdheight = 1
----
opt.mouse = 'nvicr'
opt.mousescroll = [[ver:]]..mscroll.y..[[,hor:]]..mscroll.x
opt.keymodel = ''
opt.selectmode = 'mouse'
----
opt.keywordprg = ':help'
opt.grepprg = [[rg --vimgrep]]
opt.grepformat = [[%f:%l:%c:%m]]
opt.shellxescape = '('
----
opt.foldlevelstart = 1
wo.foldmethod = [[marker]]
wo.foldmarker = [[{{{,}}}]]
-----------------------||}}}

---@diagnostic disable unused_local: disable_next_line
local packer = require'pkgs'

-- local cmpconf = require'pkgconf.cmpconf' --- before lspconfig

-- cmpconf.setup()

jk.keys = require'keys'

-- ┌────────┐
-- │ Notify │
-- └────────┘
local notifyconf = require'pkgconf.notifyconf'
jk.notify = notifyconf.setup()

-- ┌────────────┐
-- │ LSP Config │
-- └────────────┘
local lspconfig = require'pkgconf.lspconf'
lspconfig.setup {
    'sumneko',
    'powershell',
    'pylsp',
    'ahk2'
}

vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics,
    { virtual_text = true }
)

-- ┌────────────┐
-- │ Treesitter │
-- └────────────┘
local tsconf = require'pkgconf.tsconf'

-- ┌──────────────┐
-- │ Session-Lens │
-- └──────────────┘
local seshlensconf = require'pkgconf.sessionlensconf'
seshlensconf.setup('dropdown', {
    layout_config = {
        width = 0.9,
    },
    prompt_prefix = [[● ]],
    -- borderchars = {
        -- prompt = {'▀', '▐', '▄', '▌', '▛', '▜', '▟', '▙' },
        -- results = {'▀', '▐', '▄', '▌', '▛', '▜', '▟', '▙' },
        -- preview = {'▀', '▐', '▄', '▌', '▛', '▜', '▟', '▙' },
    -- }
}, true)

-- ┌─────────┐
-- │ Lualine │
-- └─────────┘
local lualineconf = require'pkgconf.lualineconf'
lualineconf.setup()

-- ┌───────────┐
-- │ Telescope │
-- └───────────┘
local tscope = require'pkgconf.telescopeconf'
tscope.setup()

-- ┌──────────┐
-- │ Nightfox │
-- └──────────┘
local nfconf = require'pkgconf.nfconf'
nfconf.groups.duskfox = nfconf.groups.all
nfconf.setup()

-- ┌──────┐
-- │ Keys │
-- └──────┘
jk.keys.win()
jk.keys.lsp()
jk.keys.tscope()
jk.keys.misc()
jk.keys.buf()
jk.keys.term()

vim.cmd[[colorscheme duskfox]]


local plugin_colors = {
    TelescopeNormal = {
        bg = '#3a1d2a'
    },
    TelescopeBorder = {
        fg = '#53252f',
        bg = '#3a1d2a'
    },
    TelescopePromptNormal = {
        bg = '#3a1d2a'
    },
    TelescopePromptBorder = {
        fg = '#53252f',
        bg = '#3a1d2a'
    },
    TelescopeTitle = {
        fg = '#a33f4f'
    }
}

for grp, cols in pairs(plugin_colors) do
    vim.api.nvim_set_hl(0, grp, cols)
end

-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
