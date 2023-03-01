---- pkgconf.tsconf.lua 
local tsinstall = require'nvim-treesitter.install'
tsinstall.compilers = { 'clang' }

---@class SOMECLASS
---@field SOMEFIELD string

local tsconfigs = require'nvim-treesitter.configs'
tsconfigs.setup{
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = true,
    },
}

--[===[
vim.cmd[[
augroup syntax_user_events
    autocmd Syntax * syntax match ufield /@field/ containedin=.*Comment
augroup END

augroup highlight_user_events
    autocmd ColorScheme * highlight ufield term=italic cterm=italic gui=italic guifg=red
augroup END
]]
--]===]

----------------------------
