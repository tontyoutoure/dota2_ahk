

t::
{
    Send "{q}"
    Loop 
    {
        
        test := PixelGetColor(1639, 1921)+0
        r:=test/65536
        ; g:=Mod(test/256,256)
        ; b:=Mod(test, 256)
        ; FileAppend Format("Color of 1639, 1921 is {:d} {:d} {:d} {:d}`n",test, r,g,b), "D:\Games\DOTA2_related\ahks\test.txt"
        if (r < 150)
            break
    }
    ; sleep 200
    ; SoundBeep(1000, 300)
    Send "{r}"
}

y::
{
    SoundBeep(1000, 300)
    Reload
}

bloop:=0

z::
{
    global bloop
    if (bloop)
    {
        bloop:=0
        SoundBeep(1000, 300)
    }
    else
    {
        bloop:=1
        SoundBeep(1000, 300)
    }
}

loopgetcolor(interval)
{
    global bloop
    while (1)
    {
        sleep(interval)
        if (bloop)
            {
                test := PixelGetColor(1639, 1921)+0
                r:=test/65536
                g:=Mod(test/256,256)
                b:=Mod(test, 256)
                FileAppend Format("Color of 1639, 1921 is {:d} {:d} {:d} {:d}`n",test, r,g,b), "D:\Games\DOTA2_related\ahks\test.txt"
            }
    }
}
loopgetcolor(1)
; 1639,1921