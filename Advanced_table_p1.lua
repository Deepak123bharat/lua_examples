player = {
    x = 0,
    y = 0,
    
    new = function()
        p = {}
        for k, v in pairs(player) do
            p[k]=v
        end
        return p
    end,

    move = function(self,mx,my)
        self.x = self.x + mx
        self.y = self.y + my
    end
}
p1 = player.new()

p1.x = 10
p1.y = 15

--print(p1.x,p1.y)

p2 = player.new()

p2.x = 20
p2.y = 25

--print(p1.x,p1.y)
--print(p2.x,p2.y)

p1:move(5,5)
p2:move(10,10)

print(p1.x,p1.y)
print(p2.x,p2.y)
