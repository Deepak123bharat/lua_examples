-----------coroutine-------------------

corout = coroutine.create(function()
    for i=1, 5 do
        print(i)
        coroutine.yield()
    end
end)

coroutine.resume(corout)
coroutine.resume(corout)
coroutine.resume(corout)
coroutine.resume(corout)
coroutine.resume(corout)
coroutine.resume(corout)

print(coroutine.resume(corout))

--------------------OR-----------------

corout = coroutine.create(function()
    for i=1, 5 do
        print(i)
        print(coroutine.status(corout))
        coroutine.yield()
    end
end)

coroutine.resume(corout)
coroutine.resume(corout)
coroutine.resume(corout)
coroutine.resume(corout)
coroutine.resume(corout)
coroutine.resume(corout)

print(coroutine.resume(corout))
print(coroutine.status(corout))

--------------OR----------------

corout = coroutine.create(function()
    for i=1, 5 do
        print(coroutine.yield(i))
    end
end)

print(coroutine.resume(corout,1,2))
print(coroutine.resume(corout,3,4))
print(coroutine.resume(corout,5,6))
print(coroutine.resume(corout,7,8))
print(coroutine.resume(corout,9,10))
print(coroutine.resume(corout,11,12))
print(coroutine.resume(corout,13,14))

--------------OR-------------------

corout = coroutine.wrap(function()
    for i = 1, 5 do
        print(i)
        coroutine.yield(i)
    end
end)

coroute()
coroute()
coroute()
coroute()
coroute()
coroute()
coroute()  -- you get error enstad of   <cannot resume dead coroutine>