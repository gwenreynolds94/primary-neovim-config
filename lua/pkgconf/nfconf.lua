----- pkgconf.nfconf.lua -----------------------------------------
local N = {}
------------------------------------------------------------------

N.Color = require'nightfox.lib.color'

N.options = {}
N.palettes = {}
N.specs = {}
N.groups = {
    -- ['luaComment.docField'] = {
        -- guifg = [[#aa9944]]
    -- }
}

N.options.transparent = true

---@class NFShade
---@field base string
---@field bright string
---@field dim string
---@field light boolean
---@field new fun(base:any,bright:any,dim:any,light:any):NFShade

---@class NFPalette
---@field bg0 string
---@field bg1 string
---@field bg2 string
---@field bg3 string
---@field bg4 string
---@field fg0 string
---@field fg1 string
---@field fg2 string
---@field fg3 string
---@field sel0 string
---@field sel1 string
---@field comment string
---@field black NFShade
---@field red NFShade
---@field green NFShade
---@field yellow NFShade
---@field blue NFShade
---@field magenta NFShade
---@field cyan NFShade
---@field white NFShade
---@field orange NFShade
---@field pink NFShade
---@field get_Color fun(s: NFPalette, cname: string)


---@class NFPalettes
---@field nightfox NFPalette
---@field dayfox NFPalette
---@field dawnfox NFPalette
---@field duskfox NFPalette
---@field nordfox NFPalette
---@field terafox NFPalette
---@field carbonfox NFPalette


N.palettes = require'nightfox.palette'.load()
for nm, _ in pairs(N.palettes) do
    N.palettes[nm]['get_Color'] = function(s, cname)
        local ctype = type(s[cname])
        if ctype == 'string' then
            return N.Color.from_hex(s[cname])
        elseif ctype == 'table' then
            return N.Color.from_hex(s[cname].base)
        end
    end
end

N.groups.all = {
    CursorLine = { bg = [[#331521]] },
    StatusLine = { bg = [[#331521]] },
}



function N.setup()
    require'nightfox'.setup {
        options = N.options,
        palettes = N.palettes,
        specs = N.specs,
        groups = N.groups,
    }
end

------------------------------------------------------------------
return N
------------------------------------------------------------------
