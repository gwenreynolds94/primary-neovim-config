---- pkgconf.ulticonf.lua ----
local C = {}

function C.setup()
    local cmp = require'cmp'
    cmp.setup{
        snippet = {
            expand = function(args)
                vim.fn['UltiSnips#Anon'](args.body)
            end,
        },
        mapping = cmp.mapping.preset.insert{
            ['<C-b>'] = cmp.mapping.scroll_docs(-4),
            ['<C-f>'] = cmp.mapping.scroll_docs(4),
            ['<C-a>'] = cmp.mapping.complete(),
            ['<C-e>'] = cmp.mapping.abort(),
            ['<CR>'] = cmp.mapping.confirm({ select = true }),
        },
        sources = cmp.config.sources({
            { name = 'nvim_lsp' },
            { name = 'ultisnips' },
        }, {
            { name = 'buffer' },
        })
    }
    cmp.setup.cmdline({'/','?'}, {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
            { name = 'buffer' }
        }
    })
    cmp.setup.cmdline(':',{
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources({
            { name = 'path' }
        },{
            { name = 'cmdline' }
        })
    })
end


return C
