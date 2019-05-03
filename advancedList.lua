vector = {
    x = 0, y=0,
    mt={},

    new = function()
        local vac = {}
        setmetatable(vac,vector.mt)
        vac.x=vector.x
        vac.y=vector.y
        vac.mt=vector.mt
        vac.translate=vector.translate
        return vac
    end,

    translate = function(self, dx, dy)
        self.x=self.x + dx
        self.y=self.y + dy
    end

}
vector.mt.__add = function(v1,v2)
    local vac = vector.new()
    
    vac.x = v1.x + v2.x
    vac.y = v1.y + v2.y
    
    return vac
end

vector.mt.__eq = function (v1,v2)
    return v1.x==v2.x and v1.y==v2.y
end


v1=vector.new()
v1.x = 10
v1.y = 10

v2 = vector.new()
v2.x = 20
v2.y = 10

v3 = v1 + v2
print(v3.x,v3.y)
print(v1==v2)
