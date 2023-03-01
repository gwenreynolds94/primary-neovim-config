----- pkgconf.telescopeconf.lua ----------------------------------
local T = {}
------------------------------------------------------------------

local t = {}
t.scope      = require'telescope'
t.sorters    = require'telescope.sorters'
t.previewers = require'telescope.previewers'
t.resolve    = require'telescope.config.resolve'
t.scope_actions        = require'telescope.actions'
t.scope_layout_actions = require'telescope.actions.layout'

-- local tprompt = {
    -- TelescopeNormal = {
        -- bg = '#3a1d2a'
    -- },
    -- TelescopeBorder = {
        -- bg = '#3a1d2a'
    -- },
    -- TelescopePromptNormal = {
        -- bg = '#3a1d2a'
    -- },
    -- TelescopePromptBorder = {
        -- bg = '#3a1d2a'
    -- },
    -- TelescopePromptTitle = {
        -- bg = '#331521',
        -- fg = '#331521'
    -- },
    -- TelescopePreviewTitle = {
        -- bg = '#451521',
        -- fg = '#451521'
    -- },
    -- TelescopeResultsTitle = {
        -- bg = '#451521',
        -- fg = '#451521'
    -- },
-- }
-- for hl,col in pairs(tprompt) do
    -- vim.api.nvim_set_hl(0,hl,col)
-- end


T.mappings = {
    i = {
        ['<Tab>q'] = {
            t.scope_actions.close,
            type = [[action]],
            opts = { nowait = false, noremap = true }
        }
    }
}

T.layout_config = {
    bottom_pane = {
        height       = 30,
        scroll_speed = 5,
    },
    center = {
        width          = 0.8,
        height         = 0.8,
        scroll_speed   = 5,
        preview_cutoff = 90,
    },
    cursor = {
        width        = 0.85,
        height       = 50,
        scroll_speed = 5,
    },
    flex = {
        width        = 0.85,
        height       = 0.85,
        scroll_speed = 5,
        flip_columns = 100,
        preview_cutoff = 70,
        preview_width = 0.6,
    },
    horizontal = {
        width          = 0.9,
        height         = 0.9,
        scroll_speed   = 5,
        preview_width  = 0.6,
        preview_cutoff = 60,
    },
    vertical = {
        width          = 0.8,
        height         = 0.9,
        scroll_speed   = 5,
        preview_cutoff = 30,
    },
}

T.preview = {
    timeout         = 1000,
    treesitter      = true,
    msg_bg_fillchar = true,
}

T.options = {
    defaults = {
        layout_strategy = 'flex',
        layout_config = {},
        mappings      = {},
        preview       = {},
        previewer = true,
        file_sorter      = t.sorters.get_fuzzy_file,
        generic_sorter   = t.sorters.get_fzy_sorter,
        file_previewer   = t.previewers.cat.new,
        grep_previewer   = t.previewers.vimgrep.new,
        qflist_previewer = t.previewers.qflist.new,
    },
    pickers    = {},
    extensions = {},
}

function T.setup()
    local tscope = require'telescope'
    T.options.defaults.mappings      = T.mappings
    T.options.defaults.layout_config = T.layout_config
    T.options.defaults.preview       = T.preview
    tscope.setup(T.options)
end

------------------------------------------------------------------
return T
------------------------------------------------------------------
