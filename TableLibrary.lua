
t = {1, 2, 3}
table.insert(t,4)
table.insert(t, 1, 0)

for k, v in ipairs(t) do
    print(k,v)
end

x = table.remove(t,5)
print(x)

------------------------------

t = {1, 2, 3}
table.sort(t)
for k, v in ipairs(t) do
    print(k,v)
end

-------------------------------

t = {1, 2, 3}
table.sort(t,function(a,b) return a > b; end )
for k, v in ipairs(t) do
    print(k,v)
end

--------------------------------

ta = {"ron", "mortal", "garbaoo", "alpha", 9}
s = table.concat(ta)
print(s)
r = table.concat(ta, ",")
print(r)