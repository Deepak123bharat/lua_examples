c = require("complex")

c1 = c.new(2,5)
c2 = c.i
c3 = c.new(4,8)

r1 = c.add(c1,c2)
print(r1.r,r1.i)

r2 = c.sub(c1,c2)
print(r2.r,r2.i)

r3 = c.mul(c1,c3)
print(r3.r, r3.i)

r4 = c.abs(c1)
print(r4)