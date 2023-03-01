----- usrglobals.init.lua -----
local U = {}
-------------------------------


---@alias JKConfHasUpdate
---| fun(self:JKConfHas,_paths:string[])

---@class JKConfHas
---@field update JKConfHasUpdate


_G.jk = {
    db = {
        timing = {
            default = {
                max_gap = 0.5,
                max_dur = 0.5,
            }
        },
    },
    conf = {
        keys = {
            comment = {
                langs = {}
            }
        }
    },
    use_cmp = false,
    use_coq = false,
    ---@class JKConfHas : { [string]: boolean } 
    flat = {},
}


function jk.flat:update(_paths)
    for _, _source in ipairs(_paths) do ---@cast _source string
        local _srch_obj = _G.jk ---@type table | false
        for _spl in _source:gmatch[=[[^%.]+]=] do ---@cast _spl string
            _srch_obj = (_srch_obj and _srch_obj[_spl]) or false
            self[_spl] = _srch_obj
        end
    end
    return self
end

function _G.jk.db.timing:new(name, listnames, max_gap, max_dur)
    local _t = {}
    listnames = listnames or { 'gaps', 'durations', 'marks' }
    _t.max_gap = max_gap or self.default.max_gap
    _t.max_dur = max_dur or self.default.max_dur
    for _, lstnm in ipairs(listnames) do
        _t[lstnm] = {}
        _t[lstnm].add = table.insert
        _t[lstnm].avg = function(_self)
            local sum = 0
            for _, val in ipairs(_self) do
                sum = sum + val
            end
            return (sum / #_self)
        end
    end
    _t.marks.new = function(_self)
        _self:add(os.clock())
    end
    _t.start = function(_self)
        _self.started = os.clock()
        local elapsed = _self.started - (_self.stopped or 0)
        if ((_self.stopped or 0) ~= 0) and (elapsed <= (_self.max_gap or 2)) then
            table.insert(_self.gaps, elapsed)
        end
    end
    _t.stop = function(_self)
        _self.stopped = os.clock()
        local elapsed = _self.stopped - (_self.started or 0)
        if ((_self.started or 0) ~= 0) and (elapsed <= (_self.max_dur or 5)) then
            table.insert(_self.durations, elapsed)
        end
    end
    self[name] = _t
end

--- local tbl_avg = function(_self)
    --- local sum = 0
    --- for _, val in ipairs(_self) do
    ---     sum = sum + val
    --- end
    --- return (sum / #_self)
--- end

--- local start_tbl_clock = function(_self)
   ---  _self.started = os.clock()
   ---  local elapsed = _self.started - (_self.stopped or 0)
   ---  if ((_self.stopped or 0) ~= 0) and (elapsed <= (_self.max_gap or 2)) then
   ---     table.insert(_self.gaps, elapsed)
   --- end
--- end

--- local stop_tbl_clock = function(_self)
    --- _self.stopped = os.clock()
    --- local elapsed = _self.stopped - (_self.started or 0)
    --- if ((_self.started or 0) ~= 0) and (elapsed <= (_self.max_dur or 5)) then
    ---     table.insert(_self.durations, elapsed)
    --- end
--- end

--- function _G.jk.db.timing:new(name, listnames, max_gap, max_dur)
    --- local _t = {}
    --- listnames = listnames or { 'gaps', 'durations', 'marks' }
    --- _t.max_gap = max_gap or self.default.max_gap
    --- _t.max_dur = max_dur or self.default.max_dur
    --- for _, lstnm in ipairs(listnames) do
    ---     _t[lstnm] = {}
    ---     _t[lstnm].add = table.insert
    ---     _t[lstnm].avg = tbl_avg
    --- end
    --- _t.marks.new = function(_self)
    ---     _self:add(os.clock())
    --- end
    --- _t.start = start_tbl_clock
    --- _t.stop = stop_tbl_clock
    --- self[name] = _t
--- end

_G.pp = vim.pretty_print

_G.tb = {}

_G.tb.get  = vim.tbl_get
_G.tb.map  = vim.tbl_map
_G.tb.keys = vim.tbl_keys
_G.tb.count  = vim.tbl_count
_G.tb.extend = vim.tbl_extend
_G.tb.filter = vim.tbl_filter
_G.tb.islist = vim.tbl_islist
_G.tb.values = vim.tbl_values
_G.tb.flatten  = vim.tbl_flatten
_G.tb.isempty  = vim.tbl_isempty
_G.tb.contains = vim.tbl_contains
_G.tb.deep_extend = vim.tbl_deep_extend
_G.tb.add_reverse_lookup = vim.tbl_add_reverse_lookup


_G.tb.foreachi = table.foreachi ---@diagnostic disable-line
_G.tb.foreach = table.foreach ---@diagnostic disable-line
_G.tb.getn = table.getn ---@diagnostic disable-line
_G.tb.maxn = table.maxn
_G.tb.insert = table.insert
_G.tb.remove = table.remove
_G.tb.move = table.move ---@diagnostic disable-line
_G.tb.concat = table.concat
_G.tb.sort  = table.sort


-------------------------------
return U
-------------------------------
