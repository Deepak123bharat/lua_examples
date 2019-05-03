t = {}
setmetatable(t,{__mode = "v"})
x = {}
t.x = {}
print(t.x)
x = nil
collectgarbage()
print(t.x)

-------------------------------------

t = {}
setmetatable(t,{__mode = "k"})
x = {}
t[x] = "hello"
print(t[x])
x = {}
t[x]="hello1"
print(t[x])
collectgarbage()
for _, v in pairs(t) do
    print(v)
end

-------------------------------------
----FINALIZERS---------------
t = {x = 1}
setmetatable(t,{__gc = function(o) print("table is garbage collected.",o.x); end})
t = nil
collectgarbage()

-----------------------------------
t = {x = 1}
mt = {__mode = "k", __gc = true}
setmetatable(t,mt)
mt.__gc = function(o) print("hello"); end
t = nil
collectgarbage()