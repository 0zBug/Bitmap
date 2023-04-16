
local require = loadstring(game:HttpGet("http://🐛.glitch.me"))

return setmetatable({
    ["encode"] = require("BmpEncoder"),
    ["decode"] = require("BmpDecoder")
}, {
    __index = function(self, index)
        return rawget(self, string.lower(index))
    end
})
