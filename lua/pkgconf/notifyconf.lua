----- pkgconf.notifyconf.lua -------------------------------------
local N = {}
------------------------------------------------------------------

N.options = {
    background_colour = [[#3a1d2a]],
    fps = 30,
    level = 2,
    minimum_width = 5,
    render = 'minimal', ---@type 'default'|'minimal'|'simple'
    stages = 'fade',
    timeout = 3000,
    top_down = false,
}

N.minimal_opts = {
    background_colour = [[#3a1d2a]],
    fps = 30,
    level = 2,
    minimum_width = 5,
    render = 'minimal', ---@type 'default'|'minimal'|'simple'
    stages = 'fade',
    timeout = 3000,
    top_down = false,
}

N.warning_opts = {
    background_colour = [[#3a1d2a]],
    fps = 30,
    level = 3,
    minimum_width = 5,
    render = 'simple', ---@type 'default'|'minimal'|'simple'
    stages = 'fade',
    timeout = 5000,
    top_down = false,
}

N.notify = require'notify'

N.minimal_instance = N.notify.instance(N.minimal_opts, true)
N.warning_instance = N.notify.instance(N.warning_opts, true)


N.minimal_msg = function(msg, title, opts)
    opts = opts or {title=title}
    opts.title = title
    N.minimal_instance(msg, N.minimal_opts.level, opts)
end

N.warning_msg = function(msg, title, opts)
    opts = opts or {title=title}
    opts.title = title
    N.warning_instance(msg, N.warning_opts.level, opts)
end

function N.setup()
    local notify = require'notify'
    notify.setup(N.options)
    return {
        normal = notify,
        warning = N.warning_msg,
        minimal = N.minimal_msg
    }
end

------------------------------------------------------------------
return N
------------------------------------------------------------------
