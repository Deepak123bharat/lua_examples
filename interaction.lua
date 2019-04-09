require "iuplua"

function btn(slef)
    iup.Message("second window:","you are in new window")
    return iup.CLOSE
end

button = iup.button{title ="ok",action = btn}

vb=iup.vbox{button}

dlg = iup.dialog{
    vb,
    title ="first window"
}
dlg:showxy(iup.CENTER,iup.CENTER)

if(iup.MainLoopLevel()==0) then 
    iup.MainLoop()
    iup.Close()
end
