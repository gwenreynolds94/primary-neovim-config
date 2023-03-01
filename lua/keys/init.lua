---- keys.init.lua ----
local K = {}
---@diagnostic disable unused_local: disable_next_line
local api = vim.api
local ui = vim.ui
-----------------------

---@module 'keys._types'


K.funcs = {}
K.vars = {}

K.vars.matching = {}

---@enum LuaMagicChars
K.vars.matching.magics = {
    [ [[(]] ] = [[%(]], --- (
    [ [[)]] ] = [[%)]], ---   )
    [ [[.]] ] = [[%.]], --- .
    [ [[%]] ] = [[%%]], ---   %
    [ [[+]] ] = [[%+]], --- +
    [ [[-]] ] = [[%-]], ---   -
    [ [[*]] ] = [[%*]], --- *
    [ [[?]] ] = [[%?]], ---   ?
    [ [[^]] ] = [[%^]], --- ^
    [ [[$]] ] = [[%$]], ---   $
    [ [[[]] ] = [[%[]], --- [
}

local kmap = vim.keymap.set



--- ┌───────────────────┐
--- │ Utility Functions │
--- └───────────────────┘
-----
--- --[=====[
----- Utility Functions [ Active ] {{{2

function K.binder(s)
    local s_keys = tb.keys(s)
    local has_leader = tb.contains(s_keys, 'leader')
    local has_mode = tb.contains(s_keys, 'mode')
    local has_opts = tb.contains(s_keys, 'opts')
    local leader = (has_leader and s.leader) or [[]]
    local mode = (has_mode and s.mode) or { 'n' }
    local opts = (has_opts and s.opts) or {}
    for lh, rh in pairs(s) do
        local reserved = (lh == 'leader') or
                         (lh == 'mode')   or
                         (lh == 'opts')   or
                         (lh == 'bind')
        if not reserved then
            if type(rh) == 'string'   or
               type(rh) == 'function' then
                kmap(mode, leader..lh, rh, opts)
            elseif type(rh) == 'table' then
                kmap(rh.mode or mode, leader..lh, rh[1], rh.opts or opts)
            end
        end
    end
end

----- Utility Functions }}}2
--- --]=====]



--- ┌─────────────────────────┐
--- │ Miscellaneous Functions │
--- └─────────────────────────┘
-----
--- --[=====[
----- Miscellaneous Functions [ Active ] {{{2

function K.funcs.add_lua_header()
    local fname = vim.fn.expand('%:p')
    local cfgchild = fname:match[[C:\Users\jonat\.config\nvim\lua\(.*)]]
    if cfgchild then
        cfgchild = cfgchild:gsub([[\]],[[.]])
    end
    ui.input({
        prompt = [[Enter header text » ]],
        default = cfgchild or vim.fn.expand('%'),
    }, function(input)
        local dashline = string.rep('-', 66)
        local headline = dashline:gsub(
            [[^.....(.]]..string.rep('.',string.len(input))..[[.)]],
            [[----- ]]..input..[[ ]]
        )
        api.nvim_buf_set_lines(0, 0, 0, false, {headline, dashline})
        api.nvim_buf_set_lines(0,-1,-1, false, {dashline, dashline})
        vim.cmd([[echo ']]..input..[[']])
    end)
end

function K.funcs.toggle_venn()
    local venn_enabled = vim.inspect(vim.b.venn_enabled)
    if venn_enabled == 'nil' then
        vim.b.venn_enabled = true
        vim.cmd[[setlocal ve=all]]
        vim.api.nvim_buf_set_keymap(
            0, 'n', 'J', [[<C-v>j:VBox<CR>]], { noremap = true }
        )
        vim.api.nvim_buf_set_keymap(
            0, 'n', 'K', [[<C-v>k:VBox<CR>]], { noremap = true }
        )
        vim.api.nvim_buf_set_keymap(
            0, 'n', 'L', [[<C-v>l:VBox<CR>]], { noremap = true }
        )
        vim.api.nvim_buf_set_keymap(
            0, 'n', 'H', [[<C-v>h:VBox<CR>]], { noremap = true }
        )
        vim.api.nvim_buf_set_keymap(
            0, 'x', 'f', [[:VBox<CR>]], { noremap = true }
        )
    else
        vim.cmd[[setlocal ve=]]
        vim.cmd[[mapclear <buffer>]]
        vim.b.venn_enabled = nil
    end
end

----- Miscellaneous Functions }}}2
--- --]=====]



--- ┌───────────────────┐
--- │ Rearranging Lines │
--- └───────────────────┘
-----
--- --[=====[
----- Rearranging Lines {{{2

K.funcs.lines = { swap = { fast = {} }, duplicate = {} }

--- jk.db.timing:new[[lnswap]]

local function metacall_line_swap(self, prev, staycrs, range)
    if not vim.bo.modifiable then return end
    --- jk.db.timing.lnswap:start()
    local cnt1 = (prev and 0 - vim.v.count1) or vim.v.count1
    local lnnr = vim.fn.line '.'
    local lnst = (range and range.st) or (vim.fn.line'.' - 1)
    local lnen = (range and range.en) or (lnst + 1)
    local active_lines = api.nvim_buf_get_lines(0, lnst, lnen, false)
    api.nvim_buf_set_lines(0, lnst, lnen, false, {})
    local insert_pos = lnst + cnt1
    if insert_pos < 0 then insert_pos = 0 end
    api.nvim_buf_set_lines(0, insert_pos, insert_pos, false, active_lines)
    if not staycrs
        then vim.fn.cursor(insert_pos + 1, vim.fn.col'.') end
    --- jk.db.timing.lnswap:stop()
end

setmetatable(K.funcs.lines.swap, { __call = metacall_line_swap })

function K.funcs.lines.swap.range(prev, staycrs)
    vim.fn.feedkeys(
        api.nvim_replace_termcodes([[<CMD><CR>]], true, false, true)
    )
    local vlnst, vlnen = vim.fn.getpos[['<]][2] - 1, vim.fn.getpos[['>]][2]
    --- local vlines = api.nvim_buf_get_lines(0, vlnst, vlnen, false)
    --- local cnt1 = (prev and 0 - vim.v.count1) or vim.v.count1
    --- api.nvim_buf_set_lines(0, vlnst, vlnen, false, {})
    --- local ins_pos = vlnst + cnt1
    --- api.nvim_buf_set_lines(0, ins_pos, ins_pos, false, vlines)
    K.funcs.lines.swap(prev, staycrs, {st = vlnst, en = vlnen})
end


--- jk.db.timing:new[[lnswapfast]]

local function metacall_line_swap_fast(self, prev, staycrs, range)
    if not vim.bo.modifiable then return end
    --- jk.db.timing.lnswapfast:start()
    local cnt = vim.v.count1
    local ln = vim.fn.line'.'
    local lnst = (prev and (ln - 1 - cnt)) or (ln-1)
    local lnen = (prev and ln) or (ln + cnt)
    if lnst < 0 then
        lnst = 0 end
    if lnen > vim.fn.line'$' then
        lnen = vim.fn.line'$' end
    local lines = vim.api.nvim_buf_get_lines(0, lnst, lnen, false)
    local target_line = (prev and lines[#lines]) or lines[1]
    for i=1, #lines - 1 do
        local swap_this = (prev and (#lines - i + 1)) or i
        local with_this = (prev and (#lines - i)) or (i + 1)
        lines[swap_this] = lines[with_this]
    end
    local target_index = (prev and 1) or #lines
    lines[target_index] = target_line
    vim.api.nvim_buf_set_lines(0, lnst, lnen, false, lines)
    if not staycrs
        then vim.fn.cursor((prev and lnst+1) or lnen, vim.fn.col'.') end
    --- jk.db.timing.lnswapfast:stop()
end

setmetatable(K.funcs.lines.swap.fast, { __call = metacall_line_swap_fast })

function K.funcs.lines.swap.fast.range(prev, staycrs)
    print[[Not implemented: <keys> K.funcs.lines.swap.fast.range]]
end


local function metacall_line_duplicate(self, prev, staycrs, range)
    if not vim.bo.modifiable then return end
    local cnt = vim.v.count1
    local lnnr = vim.fn.line'.' - 1
    local lnst = (range and range.st) or lnnr
    local lnen = (range and range.en) or (lnnr + 1)
    local lines = api.nvim_buf_get_lines(0, lnst, lnen, false)
    local lines_new = {}
    for ci = 1, cnt do
        for i, ln in ipairs(lines) do
            lines_new[#lines_new+1] = ln
        end
    end
    vim.api.nvim_buf_set_lines(0, lnnr, lnnr, false, lines_new)
    if prev then
        vim.fn.cursor(lnnr+1, vim.fn.col'.')
    end
end

setmetatable(K.funcs.lines.duplicate, { __call = metacall_line_duplicate })

function K.funcs.lines.duplicate.range(prev, staycrs)
    vim.fn.feedkeys(
        api.nvim_replace_termcodes([[<CMD><CR>]], true, false, true)
    )
    local lnst, lnen = vim.fn.getpos[['<]][2], vim.fn.getpos[['>]][2]
    K.funcs.lines.duplicate(prev, staycrs, {st = lnst - 1, en = lnen})
end

----- Rearranging Lines }}}2
--- --]=====]



--- ┌─────────────────────────┐
--- │ Commenting/Uncommenting │
--- └─────────────────────────┘
-----
--- --[=====[
----- Comments [ Active ] {{{2

K.funcs.comment = {}

---@type table<string,{char:string,thresh:number,newlen:number,suffix:string}>
K.funcs.comment.langs_defaults = {
    lua        = { char = [[-]], thresh = 2, newlen = 3, suffix = [[< ]] },
    json       = { char = [[\]], thresh = 2, newlen = 2, suffix = [[ ]] },
    ps1        = { char = [[#]], thresh = 1, newlen = 1, suffix = [[ ]] },
    autohotkey = { char = [[;]], thresh = 1, newlen = 1, suffix = [[| ]] },
}
K.funcs.comment.langs = {}

jk.flat:update{[[conf.keys.comment.langs]]}

if (jk.flat.langs) then
    for lang, settings in pairs(K.funcs.comment.langs_defaults) do
        if tb.contains(tb.keys(jk.flat.langs), lang) then
            K.funcs.comment.langs[lang] = jk.flat.langs[lang]
        else K.funcs.comment.langs[lang] = settings end
    end
else 
    K.funcs.comment.langs = K.funcs.comment.langs_defaults
end


function K.funcs.comment.escape_lang(_lang)
    if not (tb.contains(tb.keys(K.funcs.comment.langs), _lang)) then return 0 end
    local ftc = K.funcs.comment.langs[_lang]
    if (tb.contains(tb.keys(ftc), 'esc')) then return 2 end
    local ftc = K.funcs.comment.langs[_lang]
    local eschars = tb.keys(K.vars.matching.magics)
    ftc.esc = { char = [[]], suffix = [[]] }
    if tb.contains(eschars, ftc.char) then
        ftc.esc.char = K.vars.matching.magics[ftc.char]
    else ftc.esc.char = ftc.char end
    for sufch in ftc.suffix:gmatch[[.]] do
        if tb.contains(eschars, sufch) then
            ftc.esc.suffix = ftc.esc.suffix..K.vars.matching.magics[sufch]
        else ftc.esc.suffix = ftc.esc.suffix..sufch end
    end
    return 1
end

function K.funcs.comment.get_line_parts(line, ftc, undo)
    local lp = {} ---@type CommentLineParts
    lp.wslf = line:match[[^%s*]]
    lp.wslflen = (lp.wslf and #lp.wslf) or 0
    lp.chrt = line:sub(lp.wslflen + 1, #line)
    if undo then
        lp.comm = lp.chrt:match('^'..ftc.esc.char:rep(ftc.thresh)..'+')
        lp.commlen = (lp.comm and (#lp.comm)) or 0
        lp.chrtnc = lp.chrt:sub(lp.commlen + 1, #lp.chrt)
        lp.suff = lp.chrtnc:match('^'..ftc.esc.suffix)
        lp.chrtns = lp.suff and lp.chrtnc:sub(#lp.suff + 1, #lp.chrtnc)
    end
    return lp
end

function K.funcs.comment.parse_lines(lines, ftc, undo, align)
    local line_parts = {} ---@type CommentLineParts
    local lines_new = {}
    local lines_changed = 0
    local mindent = 666666666
    local prev_wslflen, ws_isdiff = #(lines[1]:match[[^%s*]]), false
    for i, ln in ipairs(lines) do ---@cast ln string
        local lp = K.funcs.comment.get_line_parts(ln, ftc, undo)
        line_parts[i] = lp
        mindent = math.min(mindent, lp.wslflen)
        lines_changed = lines_changed + ((not undo or lp.comm) and 1  or 0)
        ws_isdiff = ws_isdiff or (lp.wslflen ~= prev_wslflen)
        prev_wslflen = lp.wslflen
    end
    local mindent_str = ([[ ]]):rep(mindent)
    for i, lp in ipairs(line_parts) do
        if not undo then
            if align and ws_isdiff then
                local ws_offset = lp.wslflen - mindent
                lp.wslf = mindent_str
                lp.chrt = ([[ ]]):rep(ws_offset)..lp.chrt
            end
            lines_new[i] = lp.wslf..ftc.char:rep(ftc.newlen)..ftc.suffix..lp.chrt
        else
            lines_new[i] = (not lp.comm and lines[i]) or
                           (lp.wslf..(lp.chrtns or lp.chrtnc))
        end
    end
    return lines_new, lines_changed
end

local function metacall_comment(self, undo, align, staycrs, range)
    if (not vim.bo.modifiable) then return end
    local ft = vim.bo.filetype
    local ftc = K.funcs.comment.langs[ft]
    if not ftc then return false end
    K.funcs.comment.escape_lang(ft)
    local cnt = vim.v.count
    local cntpositive = cnt >= 1
    local lnnr = vim.fn.line'.'
    local clnr = vim.fn.col'.'
    local lnst = (range and range.st) or (lnnr - 1)
    local lnen = (range and range.en) or (lnnr + cnt)
    local lnmx = vim.fn.line'$'
    if lnst < 0 then lnst = 0 end
    if lnen > lnmx then lnen = lnmx end
    local lines = api.nvim_buf_get_lines(0, lnst, lnen, false)
    local parsed, changed = K.funcs.comment.parse_lines(lines, ftc, undo, align)
    if changed > 0 then
        api.nvim_buf_set_lines(0, lnst, lnen, false, parsed)
    end
    if not staycrs then
        vim.fn.cursor((range and lnen) or (lnen + 1), clnr)
    end
end

setmetatable(K.funcs.comment, { __call = metacall_comment })

function K.funcs.comment.range(undo, align, staycrs)
    vim.fn.feedkeys(
        api.nvim_replace_termcodes([[<CMD><CR>]], true, false, true)
    )
    local lnst, lnen = vim.fn.getpos[['<]][2], vim.fn.getpos[['>]][2]
    K.funcs.comment(undo, align, staycrs, {st = lnst - 1, en = lnen})
end

----- Comments }}}2
--- --]=====]



--- ┌─────────┐
--- │ Keymaps │
--- └─────────┘
-----
--- --[=====[
----- Keymaps [ Active ] {{{2

K.win = {
    bind = K.binder,
    leader = [[<Leader>w]],
    mode = { 'n' },
    ['<PageUp>']   = [[<C-w>K]],
    ['<PageDown>'] = [[<C-w>J]],
    ['<Home>']     = [[<C-w>H]],
    ['<End>']      = [[<C-w>L]],
    ['<C-Left>']  = [[<C-w><]],
    ['<C-Right>'] = [[<C-w>>]],
    ['<C-Down>']  = [[<C-w>-]],
    ['<C-Up>']    = [[<C-w>+]],
    ['<Left>']  = [[<CMD>spl<CR><C-w>H]],
    ['<Right>'] = [[<CMD>spl<CR><C-w>L]],
    ['<Down>']  = [[<CMD>spl<CR><C-w>J]],
    ['<Up>']    = [[<CMD>spl<CR><C-w>K]],
    ['='] = [[<C-w>=]],
    ww = [[<CMD>w<CR>]],
    wq = [[<CMD>wq<CR>]],
    qq = [[<CMD>q<CR>]],
    qa = [[<CMD>qa<CR>]],
    v  = [[<C-w>_]],
    h  = [[<C-w>|]],
    p  = [[<C-w><C-w>]],
    c  = [[<CMD>q<CR>]],
    ea = [[<C-w>^]],
}

K.buf = {
    bind = K.binder,
    leader = [[<Leader>b]],
    mode = { 'n' },
    bd = [[<CMD>bd<CR>]],
}

K.term = {
    bind = K.binder,
    mode = { 't' },
    ['<C-[>'] = [[<C-\><C-n>]],
}

K.lsp = {
    bind = K.binder,
    ['<Leader>.'] = function() vim.lsp.buf.hover() end,
    ['<C-a>'] = function() vim.lsp.buf.hover() end,
    ['<Leader>lhd'] = K.funcs.add_lua_header,
}

local tsb = require'telescope.builtin'
K.tscope = {
    bind = K.binder,
    leader = [[<Leader>t]],
    he = tsb.help_tags,
    bi = tsb.builtin,
    cm = tsb.commands,
    ch = tsb.command_history,
    sh = tsb.search_history,
    vo = tsb.vim_options,
    bf = tsb.buffers,
    cs = tsb.colorscheme,
    mk = tsb.marks,
    rg = tsb.registers,
    km = tsb.keymaps,
    ft = tsb.filetypes,
    au = tsb.autocommands,
    hl = tsb.highlights,
    rf = tsb.lsp_references,
    df = tsb.lsp_definitions,
    td = tsb.lsp_type_definitions,
    im = tsb.lsp_implementations,
    sm = tsb.lsp_document_symbols,
    di = tsb.diagnostics,
}

K.misc = {
    bind = function(s)
        for i, v in ipairs(s) do
            v:bind()
        end
    end,
    {
        bind = K.binder,
        leader = [[<leader>]],
        ss = function() require'session-lens'.search_session() end,
        vv = K.funcs.toggle_venn,
        nh = [[<CMD>nohl<CR>]],
        undoall = [[<CMD>u0<CR>]],
    },
    {
        bind = K.binder,
        mode = { 'i', 'c' },
        ['<M-BS>'] = [[<C-w>]],
    },
    {
        bind = K.binder,
        mode = { 'n', 'i' },
         ['<M-Up>'] = function() K.funcs.lines.swap.fast(true) end,
         ['<M-Down>'] = function() K.funcs.lines.swap.fast(false) end,
         --- ['<M-S-Up>'] = function() K.funcs.lines.swap(true) end,
         --- ['<M-S-Down>'] = function() K.funcs.lines.swap(false) end,
         ['<M-S-Up>'] = function() K.funcs.lines.duplicate(true) end,
         ['<M-S-Down>'] = function() K.funcs.lines.duplicate(false) end,
         ['<M-S-Left>'] = function() K.funcs.comment(true, true) end,
         ['<M-S-Right>'] = function() K.funcs.comment(false, true) end,
         ['<C-M-Left>'] = function() K.funcs.comment(true, true, true) end,
         ['<C-M-Right>'] = function() K.funcs.comment(false, true, true) end,
    },
    {
        bind = K.binder,
        mode = { 'x' },
        ['<M-Up>'] = [[:lua jk.keys.funcs.lines.swap.range(true)<CR>]],
        ['<M-Down>'] = [[:lua jk.keys.funcs.lines.swap.range(false)<CR>]],
        ['<M-S-Up>'] = [[:lua jk.keys.funcs.lines.duplicate.range(true)<CR>]],
        ['<M-S-Down>'] = [[:lua jk.keys.funcs.lines.duplicate.range(false)<CR>]],
        ['<M-S-Left>'] = [[:lua jk.keys.funcs.comment.range(true, true)<CR>]],
        ['<M-S-Right>'] = [[:lua jk.keys.funcs.comment.range(false, true)<CR>]],
        ['<C-M-Left>'] = [[:lua jk.keys.funcs.comment.range(true, true, true)<CR>]],
        ['<c-M-Right>'] = [[:lua jk.keys.funcs.comment.range(false, true, true)<CR>]],
    },
    {
        bind = K.binder,
        [',,'] = [[@@]],
    },
    {
        bind = K.binder,
        mode = { 'n' },
        ['<M-BS>'] = [[a<C-w><C-[>]],
    },
}

for i, tblnm in ipairs({ 'win', 'buf', 'term', 'lsp', 'tscope', 'misc' }) do
    setmetatable(K[tblnm], {
        __call = function(self) self:bind() end
    })
end


----- Keymaps }}}2
--- --]=====]

-----------------------
return K
-----------------------
