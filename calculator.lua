require "iuplua"
 
var1 = iup.text{expand="HORIZONTAL",bgcolor="255 128 128",multiline="yes",size="240x30",border="yes",ReadOnly="yes",}
 
var = {}
i=1
k=false

bt1 = iup.button{
size="40x35",
title="1",
action=function()
var1.value = var1.value.."1"
if k==false then
var[i]=1
i=i+1
k=true
else
    var[i-1]=var[i-1].."1"
    print(var[i-1])
end
end
}
bt2 = iup.button{
size="40x35",
title="2",
action=function()
var1.value = var1.value.."2"
if k==false then
var[i]=2
i=i+1
k=true
else
    var[i-1]=var[i-1].."2"
    
    print(var[i-1])
end
end
}
bt3 = iup.button{
size="40x35",
title="3",
action=function()
    var1.value = var1.value.."3"
if(k==false) then

var[i]=3
--print(var[i])
--print(var[i-1])
--print(i)
i=i+1
k=true
else
    var[i-1]=var[i-1].."3"
    print(var[i-1])
end
end
}
bt4 = iup.button{
size="40x35",
title="4",
action=function()
var1.value = var1.value.."4"
if(k==false) then
var[i]=4
i=i+1
k=true
else
    var[i-1]=var[i-1].."4"
    print(var[i-1])
end
--print(var[i])
--print(i)
end

}
bt5 = iup.button{
size="40x35",
title="5",
action=function()
var1.value = var1.value.."5"
if k==false then
    var[i]=5
    i=i+1
    k=true
    else
        var[i-1]=var[i-1].."5"
        print(var[i-1])
    end
end
}
bt6 = iup.button{
size="40x35",
title="6",
action=function()
var1.value = var1.value.."6"
if k==false then
    var[i]=6
    i=i+1
    k=true
    else
        var[i-1]=var[i-1].."6"
        print(var[i-1])
    end
end
}
bt7 = iup.button{
size="40x35",
title="7",
action=function()
var1.value = var1.value.."7"
if k==false then
    var[i]=7
    i=i+1
    k=true
    else
        var[i-1]=var[i-1].."7"
        print(var[i-1])
    end
end
}
bt8 = iup.button{
size="40x35",
title="8",
action=function()
var1.value = var1.value.."8"
if k==false then
    var[i]=8
    i=i+1
    k=true
    else
        var[i-1]=var[i-1].."8"
        print(var[i-1])
    end
end
}
bt9 = iup.button{
size="40x35",
title="9",
action=function()
var1.value = var1.value.."9"
if k==false then
    var[i]=9
    i=i+1
    k=true
    else
        var[i-1]=var[i-1].."9"
        print(var[i-1])
    end
end
}
bt0 = iup.button{
size="40x35",
title="0",
action=function()
var1.value = var1.value.."0"
if k==false then
    var[i]=0
    i=i+1
    k=true
    else
        var[i-1]=var[i-1].."0"
       
        print(var[i-1])
    end
end
}
dot = iup.button{
size="40x35",
title=".",
action=function()
var1.value = var1.value.."."
var[i-1]=var[i-1].."."
end
}
clear = iup.button{
size="80x35",
title="Clear",
action=function()
 var={}
 i=1
 k=false
var1.value = ""
end
}
times = iup.button{
size="40x35",
title="*",
action=function()
var1.value = var1.value.."*"
var[i]="*"
print(var[i])
i=i+1
k=false
end
}
divide = iup.button{
size="40x35",
title="/",
action=function()

var1.value = var1.value.."/"
var[i]="/"
print(var[i])
i=i+1
k=false
end
}
plus = iup.button{
size="80x35",
title="+",
action=function()

var1.value =var1.value.."+"
var[i]="+"
print(var[i])
i=i+1
k=false
end
}
minus = iup.button{
size="40x35",
title="-",
action=function()
var1.value =var1.value.."-"
var[i]="-"
print(var[i])
--print(i)
i=i+1
k=false
end
}
equal = iup.button{
size="160x35",
title="=",
action=function()
i=1

--print(var[1])


while i<=#var do
    --print(var[i])
if var[i] == "*" then
   var[i+1]=var[i-1]*var[i+1]
end
if var[i] == "/" then
    var[i+1]=var[i-1]/var[i+1]
end
if var[i] == "-" then
    var[i+1]=var[i-1]-var[i+1]
    --print(var[i+1])
end
if var[i] == "+" then
    var[i+1]=var[i-1]+var[i+1]
end





i=i+1
--elseif(temp) then
--temp=temp..manipulate..val
--end


end
var1.value=var[i-1]
end
}

sqroot = iup.button{
size="80x35",
title="sqrt",
action=function()
var1.value = math.sqrt(var1.value)
end
}
sin = iup.button{
size = "40x35",
title="sin",
action = function()
var1.value=math.sin(var1.value)
end
}

cos = iup.button{
    size = "40x35",
    title="cos",
    action = function()
    var1.value=math.cos(var1.value)
    end
}
tan = iup.button{
    size = "40x35",
    title="tan",
    action = function()
    var1.value=math.tan(var1.value)
    end
}
log = iup.button{
    size = "40x35",
    title="log",
    action = function()
    var1.value=math.log(var1.value)
    end
}
exp = iup.button{
    size = "40x35",
    title="exp",
    action = function()
    var1.value=math.exp(var1.value)
    end
}
floor = iup.button{
    size = "40x35",
    title="floor",
    action = function()
    var1.value=math.floor(var1.value)
    end
}
 
calc = iup.dialog{
title="Calculator",
size="247x219",
iup.vbox{
iup.hbox{var1,var2,var3},
iup.hbox{log,sin,bt7,bt8,bt9,divide},
iup.hbox{exp,cos,bt4,bt5,bt6,times},
iup.hbox{floor,tan,bt1,bt2,bt3,minus},
iup.hbox{sqroot,bt0,dot,plus},
iup.hbox{clear,equal}
},
}
 
calc:show()
 
if (not iup.MainLoopLevel or iup.MainLoopLevel()==0) then
  iup.MainLoop()
end
