local config_dir = os.getenv("HOME") .. "/.config/hypr/"

local colors = dofile(config_dir .. "config_variables/variables.lua")
local output = assert(io.open(config_dir .. "config_variables/variables.conf", "w"))

for name, val in pairs(colors) do
    output:write("$" .. name .. " = " .. val .. "\n")
end

output:close()

print("Generated variables.conf")
