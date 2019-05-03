
k=load("return ".."10+1-3/1.5")
print(k())

---------------or---------------


--load function use global variable instead of local variable

x = 10
local x = 20
function f()
    x = x + 1
    print(x)
end

g=load("x = x + 1;print(x)")

f()
g()
