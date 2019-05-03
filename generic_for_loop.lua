t = {1,2,3,4,5,6,7}
t[4]=nil
function generic(t,start)
    i = start

    return function()
        i=i+1
        if t[i-1] then 
            return i-1,t[i-1]
        else
            return nil, nil    -- or return nil
        end
    end
end

for k, v in generic(t,1) do
    print(k,v)
end

-- for k, v in pairs(t) do      -- ipairs
-- print(k,v)
-- end