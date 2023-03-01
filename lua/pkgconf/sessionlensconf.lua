----- pkgconf.sessionlensconf.lua --------------------------------
local S = {}
------------------------------------------------------------------



---@param theme `'ivy'`|`'dropdown'`|`'cursor'`|table
---@param theme_arg? table
---@param auto_load? boolean
function S.setup(theme, theme_arg, auto_load)
    local t_themes = require'telescope.themes'
    local use_theme = nil
    if type(theme) == 'table' then
        use_theme = theme
    elseif theme == 'ivy' then
        use_theme = (theme_arg and t_themes.get_ivy(theme_arg)) or
                                                t_themes.get_ivy()
    elseif theme == 'dropdown' then
        use_theme = (theme_arg and t_themes.get_dropdown(theme_arg)) or
                                                t_themes.get_dropdown()
    elseif theme == 'cursor' then
        use_theme = (theme_arg and t_themes.get_cursor(theme_arg)) or
                                                t_themes.get_cursor()
    end
    require'session-lens'.setup(use_theme or {})
    if auto_load then
        require'telescope'.load_extension'session-lens'
    end
end

------------------------------------------------------------------
return S
------------------------------------------------------------------
