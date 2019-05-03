
r = 10

local p = 50
_ENV.s = 5
local q = 40

for k, v in pairs(_ENV) do
    print(k,v)
end

------------------------------------

r = 10
local r = 1
print(r)
print(_ENV.r)

--------------------------------------
--To delete all environment variable
--------------------------------------
-- use _ENV = {}
--------------------------------------

_ENV = {g = _G}
r = 10
local r = 20
for k,v in g.pairs(_ENV) do
    g.print(k,v)
end

----------------------------------

a = 10
print(a)

local function f()
    local _ENV = {print = print, a = 50}
    print(a)
end

f()
print(a)

------------------------------------

x = 10
local env = {}
load("x=20",_,"bt",env)()

for k, v in pairs(env) do
    _ENV[k] = v
end
print(x)
print(env.x)
