----- pkgconf.lspconf -----
local L = {}
---@diagnostic disable-next-line
local api = vim.api
---------------------------

L.sumneko_settings = {
    Lua = {
        completion = {
            displayContext = 50,
            enable = true,
        },
        semantic = {
            enable = true,
            annotation = true,
            variable = true,
        },
        hint = {
            enable = true,
            setType = true,
            arrayIndex = "Enable",
            paramType = true,
        },
        hover = {
            enable = true,
            enumsLimit = 10,
            previewFields = 250,
        },
        misc = {
            -- parameters = {
                -- [[-E]],
                -- [[C:/Users/jonat/scoop/apps/lua-language-server/current/main.lua]]
            -- },
        },
        window = {
            progressBar = true,
            statusBar = true,
        },
        runtime = {
            ---@type 
            ---| 'Lua 5.1'
            ---| 'Lua 5.2'
            ---| 'Lua 5.3'
            ---| 'Lua 5.4'
            ---| 'LuaJIT'
            --- version = [[LuaJIT]],
            version = [[Lua 5.1]],
            builtin = {
                library = {
                    [[basic]],
                    [[builtin]],
                    [[coroutine]],
                    [[debug]],
                    [[io]],
                    [[math]],
                    [[os]],
                    [[package]],
                    [[string]],
                    [[table]],
                },
                status = [[default]],
            }
        },
        diagnostics = {
            enable = true,
            globals = {[[vim]]},
            --- workspaceRate = 75,
            --- globals = (function()
            ---     local usrglbl = {
            ---         [[vim]]
            ---     }
            ---     local fglbl = vim.tbl_extend('keep', usrglbl, {})
            ---     for g,_ in pairs(_G) do
            ---         table.insert(fglbl, g)
            ---     end
            ---     return fglbl
            --- end)(),
        },
        workspace = {
            checkThirdParty = true,
            --- maxPreload = 1000,
            library = (function()
                --- local rtpaths = vim.api.nvim_get_runtime_file("", true)
                --- local rtpaths = {}
                --- local fpths = vim.tbl_extend('keep',rtpaths,{})
                --- local sitestart = [[C:\Users\jonat\.local\share\nvim-data\]]..
                ---                   [[site\pack\packer\start\]]
                local fpths = {
                    --- sitestart..[[auto-session\lua]],
                    --- sitestart..[[coq.artifacts\lua]],
                    --- sitestart..[[coq.thirdparty\lua]],
                    --- sitestart..[[lualine.nvim\lua]],
                    --- sitestart..[[nightfox.nvim\lua]],
                    --- sitestart..[[nvim-align\lua]],
                    --- sitestart..[[nvim-lspconfig\lua]],
                    --- sitestart..[[nvim-notify\lua]],
                    --- sitestart..[[nvim-treesitter\lua]],
                    --- sitestart..[[packer.nvim\lua]],
                    --- sitestart..[[plenary.nvim\lua]],
                    --- sitestart..[[session-lens\lua]],
                    --- sitestart..[[telescope.nvim\lua]],
                    --- sitestart..[[venn.nvim\lua]],
                    --- sitestart..[[coq_nvim\lua]],
                    --- [[C:\Users\jonat\.local\share\nvim-data\site]],
                    [[C:\Users\jonat\.config\nvim]],
                    [[C:\Users\jonat\.config\nvim\after]],
                    [[C:\Program Files\Neovim\lib\nvim]],
                    [[C:\Program Files\Neovim\share\nvim\runtime]],
                    [[C:\Program Files\Neovim\share\nvim\runtime\pack\dist\opt\matchit]],
                }
                local builtins = {
                    [[basic]]    ,
                    [[builtin]]  ,
                    [[coroutine]],
                    [[debug]]    ,
                    [[io]]       ,
                    [[math]]     ,
                    [[os]]       ,
                    [[package]]  ,
                    [[string]]   ,
                    [[table]]    ,
                }
                for _, bltn in ipairs(builtins) do
                    table.insert(
                        fpths,
                        [[C:\Users\jonat\scoop\apps\lua-language-server]]..
                        [[\3.6.11\meta\Lua 5.1 en-us utf8\]]..bltn..[[.lua]]
                    )
                end
                for pth in package.path:gmatch[=[[^;]+]=] do
                    table.insert(fpths, pth)
                end
                --- for _, pth in ipairs(upths) do
                ---     table.insert(fpths, pth)
                --- end
                return fpths
            end)(),
        },
        telemetry = {
            enable = false
        },
    },
}


L.powershell_settings = {
    cmd = {
        [[pwsh]],
        [[-NoLogo]],
        [[-NoProfile]],
        -- [[-NonInteractive]],
        [[-ExecutionPolicy]],
            [[Bypass]],
        [[-Command]],
        [[C:/Users/jonat/.cache/pses/PowerShellEditorServices/Start-EditorServices.ps1]],
        [[-BundledModulesPath]],
            [[C:/Users/jonat/.cache/pses]],
        [[-LogPath]],
            [[C:/Users/jonat/.cache/tmp/pses/pses-nvim.log]],
        [[-LogLevel]],
            [[Diagnostic]],
        [[-SessionDetailsPath]],
            [[C:/Users/jonat/.cache/tmp/pses/session-nvim.json]],
        [[-FeatureFlags]],
            [[@()]],
        [[-HostName]],
            [['nvim']],
        [[-HostProfileId]],
            [['0']],
        [[-HostVersion]],
            [[1.0.0]],
        [[-AdditionalModules]],
            [[@()]],
        [[-EnableConsoleRepl]],
        [[-Stdio]],
    }
}

L.pylsp_settings = {
    pylsp = {
        plugins = {
            autopep8 = {
                enabled = true,
            },
            flake8 = {
                enabled = true,
                hangClosing = nil,
                maxLineLength = nil,
                indentSize = nil,
                ignore = {},
            },
            jedi_completion = {
                enabled = true,
                --- Auto-completes methods and classes with tabstops for each parameter
                include_params = true,              --- true
                --- Adds class objects as a separate completion item
                include_class_objects = false,      --- false
                --- Adds function objects as a separate completion item
                include_function_objects = false,   --- false
                --- Enable fuzzy when requesting autocomplete
                fuzzy = true,                       --- false
                --- Resolve documentation and detail eagerly
                eager = false,                      --- false
                --- How many labels and snippets (at most) should be resolved
                resolve_at_most = 25,               --- 25
                --- Modules for which labels and snippets should be cached
                --- {'pandas', 'numpy', 'tensorflow', 'matplotlib'}
                -- cache_for = {'pandas', 'numpy', 'tensorflow', 'matplotlib'},
            },
            jedi_definition = {
                enabled = true,
                --- The goto call will follow imports
                follow_imports = true,              --- true
                --- If follow_imports is True will decide if it follow builtin imports
                follow_builtin_imports = true,      --- true
                --- Follow builtin and extension definitions to stubs
                follow_builtin_definitions = true,  --- true
            },
            jedi_hover = {
                enabled = true,
            },
            jedi_references = {
                enabled = true,
            },
            jedi_signature_help = {
                enabled = true,
            },
            jedi_symbols = {
                enabled = true,
                --- If True lists the names of all scopes instead of only 
                --- the module namespace
                all_scopes = true,                  --- true
                --- If True includes symbols imported from other libraries
                include_import_symbols = true,      --- true
            },
            mccabe = {
                enabled = true,
                --- The minimum threshold that triggers warnings about 
                --- cyclomatic complexity
                threshold = 15,                     --- 15
            },
            preload = {
                enabled = true,
                --- List of modules to import on startup
                modules = {},                       --- {}
            },
            pycodestyle = {
                enabled = true,
                exclude = {},                       --- {}
                filename = {},                      --- {}
                select = nil,                       --- nil
                ignore = {},                        --- {}
                hangClosing = nil,                  --- nil
                maxLineLength = 91,                 --- nil
                indentSize = 4,                     --- nil
            },
            pydocstyle = {
                enabled = true,
                convention = nil,
                addIgnore = {},
                addSelect = {},
                ignore = {},
                select = nil,
                match = "(?!test_).*\\.py",
                matchDir = "[^\\.].*",
            },
            pyflakes = {
                enabled = true,
            },
            pylint = {
                enabled = true,
                args = {},
                executable = nil,
            },
            yapf = {
                enabled = true
            },
        }
    }
}

L.pyright_settings = {
    python = {
        analysis = {
            autoSearchPaths = true,
            diagnosticMode = 'workspace',
            useLibraryCodeForTypes = true,
            autoImportCompletions = true,
            typeCheckingMode = 'basic',
        }
    }
}

L.ahk2_lsp = {
    init_options = {
        AutoLibInclude = 'All'
    },
}

function L.make_capabilities(_setup)
    if _G.jk and _G.jk.use_cmp then
        local _capabilities = vim.lsp.protocol.make_client_capabilities()
        local cmp_capabilites =
            require'cmp_nvim_lsp'.update_capabilities(_capabilities)
        _setup.capabilities = cmp_capabilites
    elseif _G.jk and _G.jk.use_coq then
        local coq_capabilities = require'coq'.lsp_ensure_capabilities(_setup)
        _setup.capabilities = coq_capabilities
    end
    return _setup
end

---@alias LSPServerList
---| `'sumneko'`
---| `'powershell'`
---| `'pyright'`
---| `'pylsp'`

L.servers = {
    sumneko = function()
        local _setup = L.make_capabilities{settings = L.sumneko_settings}
        require[[lspconfig]].lua_ls.setup(_setup)
    end,
    powershell = function()
        local _setup = L.make_capabilities(L.powershell_settings)
        require[[lspconfig]].powershell_es.setup(_setup)
    end,
    pyright = function()
        local _setup = L.make_capabilities{settings = L.pyright_settings}
        require[[lspconfig]].pylsp.setup(_setup)
    end,
    pylsp = function()
        local _setup = L.make_capabilities{settings = L.pylsp_settings}
        require[[lspconfig]].pylsp.setup(_setup)
    end,
    ahk2 = function()
        local _setup  = L.make_capabilities(L.ahk2_lsp)
        require[[lspconfig]].ahk2_ls.setup(_setup)
    end
}

---@param serverlist LSPServerList[]
function L.setup(serverlist)
    if type(serverlist) ~= 'table' then return nil end
    for _, srv in ipairs(serverlist) do
        local _fnd = nil
        for lsrv, _setup in pairs(L.servers) do
            if lsrv == srv then _fnd = _setup end
        end
        if type(_fnd) == 'function' then _fnd() end
    end
    vim.diagnostic.config{
        virtual_text = {
            source = 'always',
            prefix = [[■]],
            severity = { min = vim.diagnostic.severity.HINT },
        },
        -- virtual_text = true,
        float = {
            source = 'always',
            border = 'rounded',
        },
        signs = true,
        underline = true,
        update_in_insert = false,
        severity_sort = true
    }
    -- api.nvim_create_augroup('lsp_document_highlight', { clear = true })
    -- api.nvim_clear_autocmds{
        -- group = 'lsp_document_highlight'
    -- }
    -- api.nvim_create_autocmd('CursorHold', {
        -- callback = vim.lsp.buf.document_highlight,
        -- group = 'lsp_document_highlight',
        -- desc = 'Document Highlight',
    -- })
    -- api.nvim_create_autocmd('CursorMoved', {
        -- callback = vim.lsp.buf.clear_references,
        -- group = 'lsp_document_highlight',
        -- desc = 'Clear All References',
    -- })
    vim.opt.updatetime = 750
end

---------------------------
return L
---------------------------
