local M = {}
setmetatable(M, {__index = _G})  ---local G = _G
_ENV = M
printHello = function()
    print("hello")               ---G.print("hello")
    -- we can't use 'math = 10' if we use then we will loose all the math function 
end
pi=3.1415
t = {1,2,3}
return M