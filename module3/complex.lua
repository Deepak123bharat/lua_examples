local M = {}

local mabs = math.abs
local sqrt = math.sqrt

_ENV = M

new  = function (real, imag)
     return { r = real, i = imag}
end

i = new(0,1)

add = function(c1,c2)
  return {r = c1.r + c2.r , i = c1.i + c2.i}
end

sub = function (c1,c2)
    return {r = c1.r - c2.r, i = c1.i - c2.i}
end

mul = function(c1,c2)
    return {r = c1.r * c2.r - c1.i * c2.i, i = c1.r * c2.i + c2.r * c1.i}
end

abs = function(c1)
    return mabs(sqrt(c1.r * c1.r + c1.i * c1.i))
end

return M