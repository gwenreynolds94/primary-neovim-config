----- pkgconf.lualineconf.lua ------------------------------------
local L = {}
------------------------------------------------------------------

---@alias LuaLineBufMode
---| `0` # Buffer Name
---| `1` # Buffer Index
---| `2` # Buffer Name+Index
---| `3` # Buffer Number
---| `4` # Buffer Name+Number


L.buffers = {
    'buffers',
    mode = 4, ---@type LuaLineBufMode
    filetype_names = {
        TelescopePrompt = 'Telescope',
        dashboard = 'Dashboard',
        packer = 'Packer',
        fzf = 'FZF',
    },
    separator = {
        left = '',
        right = '',
    },
    left_padding = 2,
    buffers_color = {
        inactive = { bg = [[#361521]] },
        active = { bg = [[#4a2030]] },
    },
}

L.filetype = {
    'filetype',
    colored = true,
    icon_only = false,
    icon = { align = 'right' },
}


L.diagnostics = {
    'diagnostics',
    sources = {'nvim_lsp', 'nvim_diagnostic'},
    colored = true,
    update_in_insert = false,
    always_visible = true,
}

L.mode = {
    'mode',
    separator = {
        left = '',
        right = '',
    },
    right_padding = 2,
}

L.location = {
    'location',
    separator = {
        left = '',
        right = '',
    },
    left_padding = 2
}

-- L.custom_filename = require'lualine.components.filename':extend()
-- L.highlight = require'lualine.highlight'
-- L.default_status_colors = { saved = '', modified = '' }

L.configs = {
    options = {
        icons_enabled = true,
        theme = 'auto',
        -- component_separators = { left = '', right = '' },
        -- section_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
        component_separators = { left = '', right = '' },
        disabled_filetypes = {
            statusline = {},
            winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = false,
        globalstatus = true,
        refresh = {
            statusline = 3000,
            tabline = 3000,
            winbar = 3000,
        }
    },
    sections = {
        lualine_a = { L.mode },
        lualine_b = { 'branch', 'diff', 'filename' },
        lualine_c = { L.diagnostics },
        lualine_x = {  },
        lualine_y = { 'fileformat', 'encoding', L.filetype },
        lualine_z = { 'progress', L.location },
    },
    inactive_sections = {
        lualine_a = {  },
        lualine_b = {  },
        lualine_c = { 'filename' },
        lualine_x = {  },
        lualine_y = {  },
        lualine_z = { L.location },
    },
    tabline = {},
    winbar = {
        lualine_b = { L.buffers },
        lualine_z = { 'searchcount' },
    },
    inactive_winbar = {},
    extensions = {},
}

function L.setup()
    require'lualine'.setup(L.configs)
end

------------------------------------------------------------------
return L
------------------------------------------------------------------
