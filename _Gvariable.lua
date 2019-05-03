x = 10
y = 20
x = "hi"
bool = true

for key, value in pairs(_G) do
    print(key,value)
end

-------------------------------------------

_G["var"] = 50

print(var)
print(_G["var"])

-------------------------------------------

var = 20

io.write("enter variable name ")
index = io.read()
f = load("return "..index)
print(f())
---or we can use it as
var = 20

io.write("enter variable name ")
index = io.read()
print(_G[index])

--------------------------------------------

setmetatable(_G, {_index = function(_,n)
    error(n.." has not yet been declared.")
end})
x = 30
print(x)
print(csk)

--------------------------------------------



