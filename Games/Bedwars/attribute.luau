-- bedwars and its garbage 😔✌️ (why, why?)

local realmetatable = setmetatable({}, {
    __tostring = function(self)
        return 'Attribute'
    end
})
realmetatable.__index = realmetatable
realmetatable.constructor = function(self, name, guard)
    self.name = name
    self.guard = guard
end

realmetatable.new = function(...)
    return setmetatable({}, realmetatable):constructor(...) or setmetatable({}, realmetatable)
end

return realmetatable
