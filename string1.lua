s = "Hello"
print(s:len()) -- print(string.len(s))
print(#s)
print(s:rep(2^4)) 

print(s:lower())   -- print(string.lower(s))
print(s:upper())

print(s:sub(2,-2))
print(s:sub(2))
print(s:sub(-2))

-- to modify original string --

s = s:sub(2,-1)
print(s)

--------------------------------
print(string.char(97, 98, 99))
print(string.byte("abcd",1)) -- print(s:byte(2)) >> 101
print(string.byte("abcd",2))
print(string.byte("abcd",3))

---------------------------------

print(string.format("hello my name is %s. I am %d year old. %.2f","Don",8,3.567))