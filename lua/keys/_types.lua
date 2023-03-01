----- keys._types.lua --------------------------------------------
------------------------------------------------------------------

---@class KeymapOpts
---@field silent           boolean
---@field nowait           boolean
---@field expr             boolean
---@field buffer           boolean | number
---@field script           boolean
---@field unique           boolean
---@field noremap          boolean
---@field remap            boolean
---@field replace_keycodes boolean

---@alias VimMode
---| `'i'`
---| `'n'`
---| `'c'`
---| `'v'`
---| `'V'`
---| `'x'`
---| `'r'`
---| `'R'`
---| `'t'`

---@class CommentLineParts
---@field wslf string | nil lefthand whitespace characters
---@field wslflen number length of lefthand whitespace string
---@field chrt string righthand non-whitespace characters (including comment)
---@field comm string | nil matched comment characters
---@field commlen number | nil length of matched comment string
---@field chrtnc string | nil righthand non-whitespace sans-comment
---@field suff string | nil matched suffix characters
---@field chrtns string | nil righthand non-whitespace sans-comment/sans-suffix

--- ---@alias LeaderBinder
--- ---| fun(lfs:string,rhs:string|function,mode?:VimMode|VimMode[],defopts?:KeymapOpts)
--- 
--- ---@alias LeaderFactory
--- ---| fun(leaders:string,defmode?:VimMode|VimMode[],defopts?:KeymapOpts):LeaderBinder

------------------------------------------------------------------
------------------------------------------------------------------
