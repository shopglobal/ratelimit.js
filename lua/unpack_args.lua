-- Credit: http://www.dr-josiah.com/2014/11/introduction-to-rate-limiting-with_26.html
local limits = cjson.decode(ARGV[1])
local now = tonumber(ARGV[2])
local weight = tonumber(ARGV[3] or '1')
local longest_duration = limits[1][1] or 0
local saved_keys = {}

-- Data for whitelist and blacklist
local is_whitelisted = false
local is_blacklisted = false
