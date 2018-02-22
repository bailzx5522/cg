
;dm := dm_initial(hwnd, winX, winY)
;dm_item(dm)
;return

;farm()
cook()
;tomato2xm()
return

cook()
{
    dm := dm_initial(hwnd, winX, winY)
    
    while (1=1)
    {
        ;CoordMode Pixel  ; Interprets the coordinates below as relative to the screen rather than the active window.
        ;ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, C:\Users\Administrator\Desktop\ml_ahk\cook_inprogress.bmp
        
        inpro_found := dm_find_pic(dm, "C:\Users\Administrator\Desktop\ml_ahk\cook_inprogress.bmp", retx, rety)
        if (!inpro_found)
        {
            retry_found := dm_find_pic(dm, "C:\Users\Administrator\Desktop\ml_ahk\button_retry.bmp", retryX, retryY,2)
            ;no retry
            if(!retry_found)
            {
                ;find execute
                exec_found := dm_find_pic(dm, "C:\Users\Administrator\Desktop\ml_ahk\button_exec_.bmp", execX, execY, 2)
                if(exec_found)
                {
                    ;execX += 3
                    ;execY += 2
                    ;WinActivate ahk_id %hwnd%
                    ;Sleep 100
                    ;Click %winX%,%winY%
                    ;dm.leftdown()
                    ;Click %execX%, %execY%, 1
                    ;dm.moveto(execX, execY)
                    ;Sleep 100
                    ;dm.leftdoubleclick()
                    dm.moveto(5,5)
                    Sleep 200
                }
                else
                {
                    MsgBox cannot found exec
                }
                ; zhengli
                dm_zhengli(dm)
                Sleep 100
                ; select 1
				salt_ = C:\Users\Administrator\Desktop\ml_ahk\mineral_copper.bmp
                salt_ = C:\Users\Administrator\Desktop\ml_ahk\cook_lupi.bmp
                ret := dm_find_pic(dm, salt_, saltx, salty, 2)
                if(!ret)
                    MsgBox no copper
                
                ; select 2
				;nmc_ = C:\Users\Administrator\Desktop\ml_ahk\cook_qm.bmp
                nmc_ = C:\Users\Administrator\Desktop\ml_ahk\fabric_mb.bmp
                ret := dm_find_pic(dm, nmc_, nmcx, nmcy, 2)
                if(!ret)
                    MsgBox no qingmu
                
                ; select
				;nmc_ = C:\Users\Administrator\Desktop\ml_ahk\cook_lupi.bmp
                ;ret := dm_find_pic(dm, nmc_, nmcx, nmcy, 2)
                ;if(!ret)
                ;    MsgBox no mabu
                
                ; select 3
				;xm_ = C:\Users\Administrator\Desktop\ml_ahk\cook_hujiao_.bmp
                ;dm_find_pic(dm, xm_, xmc, xmy, 2)
                
                ; select 4
				;cc_ = C:\Users\Administrator\Desktop\ml_ahk\cook_chicken_.bmp
                ;dm_find_pic(dm, cc_, ccx, ccy, 2)
                dm.moveto(5,5)
                Sleep 100
            }
            ;find retry
            else
            {

                ; press retry
                ;retryX += 3
                ;retryY += 3
                ;Sleep 100
                ;dm.moveto(retryX, retryY)
                Sleep 100
                ;dm.leftclick()
                dm.moveto(5,5)
            }
            Sleep 333
            continue
        }
        ; Inprogress
        else
        {
            Sleep 999
            ;MsgBox The icon was found at %FoundX%x%FoundY%.
        }
    }
}

zhengli()
{
    SendRaw /0
    Send {Enter}
    return
    
    ImageSearch, zlX, zlY, 0, 0, A_ScreenWidth, A_ScreenHeight, *128 C:\Users\Administrator\Desktop\ml_ahk\button_zl.bmp
    if ErrorLevel = 2
    {
        MsgBox 123
        return
    }
    else if ErrorLevel = 1
    {
        ;没有整理，ctrl E ， 整理
        SendRaw /0
        Send {Enter}
        Sleep 100
        ;zhengli()
        ImageSearch, zlX2, zlY2, 0, 0, A_ScreenWidth, A_ScreenHeight, *128 C:\Users\Administrator\Desktop\ml_ahk\button_zhengli.bmp
        zlX2 += 3
        zlY2 += 1
        Click %zlX2%, %zlY2%, 1
    }
    else
    {
        ;有整理，整理
        ;MsgBox %eggX%, %eggY%
        zlX += 3
        zlY += 1
        Click %zlX%, %zlY%, 1
    }
    
    Sleep 500
    SendRaw /0
    Send {Enter}
    Sleep 100
    return
}

tomato2xm()
{
    while(1=1)
    {
        Send 0{Enter}
        Sleep 555
        ImageSearch, yesX, yesY, 0, 0, 500, 600, *2 C:\Users\Administrator\Desktop\ml_ahk\button_yes.bmp
        if(ErrorLevel = 0)
        {
            Click %yesX%, %yesY%, 1
            MouseMove 50,50
        }
        else
        {
            ;MsgBox cannot found yes
        }
        Sleep 777
        zhengli()
    }
}

findPic(pic_path, iClick = 0)
{
	;retry 3 times
	loop 3
	{
		;ImageSearch, posX, posY, 0, 0, A_ScreenWidth, A_ScreenHeight, *128 C:\Users\Administrator\Desktop\ml_ahk\cook_t_b.bmp
		ImageSearch, posX, posY, 0, 0, 500, 600, *128 %pic_path%
		if ErrorLevel = 2
		{
			;Error
			return false
		}
		else if ErrorLevel = 1
		{
			;not found
			;MsgBox pic not found
			MouseMove 50,50
			continue
		}
		else
		{
			posX += 3
			posY += 2
			if iClick = 1
				Click %posX%, %posY%, 1
			else if iClick = 2
				Click %posX%, %posY%, 2
			return true
		}
	}
	MsgBox 没材料了...
	return false
}

farm()
{
    dm := dm_initial(hwnd, winX, winY)
    outBattle := false
    rounds := 0
    while(1=1)
    {
        ; 1.判断在哪
        ; 1.1灵堂
        ; 1.2判断满了？
        ; 1.2.1 满了，回城卖
        ; 1.2.2 没满，来回遇敌
        
        inBattle := dm_find_digit(dm)
        if (!inBattle)
        {
            if (outBattle)
            {
                rounds += 1
                dm.moveto(320, 250)
                Sleep 100
                dm.leftdoubleclick()
                Sleep 100
                if(mod(rounds, 3) = 0)
                {
                    dm_item(dm)
                    Sleep 100
                    isEmpty := is_pack_empty(dm)
                    if(isEmpty)
                    {
                        dm_item(dm)
                        Sleep 100
                    }
                    else
                    {
                        Pause
                    }
                }
                Sleep 1000
            }
            ;640,500
            ;dm.moveto(320, 250)
            ;dm.leftDoubleClick()
            ;dm.leftdown()
            ;Sleep 1000

            dm.moveto(510, 415)
            dm.leftdown()
            Sleep 2000
            ;dm.leftup()
            dm.moveto(160, 375)
            Sleep 2000
            dm.moveto(160, 125)
            Sleep 2000
            dm.moveto(480, 125)
            Sleep 2000
            outBattle := false
        }
        else
        {
            ;MsgBox InBattle
            outBattle := true
            Sleep 2000
            
        }
        
        ; 1.2城里
        ; 1.2.1去灵堂
        ;
        
        ; 1.3 在战斗
        ; 进入battle
    }
    
}

is_pack_empty(dm)
{
    empty = C:\Users\Administrator\Desktop\ml_ahk\empty.bmp
    isEmpty := dm_find_pic(dm, empty, emptyx, emptyy, 0)
    return isEmpty
}

find_path(ByRef x, ByRef y)
{
    x := 3
    y := 4
    return
}

battle()
{
    ; 1.判断战斗,goto 1 or 2
    ; 2.战斗流程
    ;   2.1 是否自动战斗
    ;       是，看戏
    ;       否，TODO
    ;   2.2 goto 1
    ; 3.非战斗流程
    ;   3.1 查看健康状态
    ;   3.2 走路遇敌
    ;   3.3 goto 1
    ; 4.stop
}

dm_item(dm)
{
    ;ctrl + e
    dm.keyDown(17)
    dm.keypress(69)
    dm.keyup(17)
    Sleep 100
}

dm_zhengli(dm)
{
    ; /0 + enter
    dm.keypress(111)
    dm.keypress(48)
    dm.keypress(13)
    Sleep 100
}

dm_find_digit(dm)
{
    ;dm := dm_initial()
    ;dm.FindStr(0,0,0,0,"这里填写需要找的数字","333333-008087",1.0,intX,intY)
    ;s := dm.Ocr(0,74, 634,691,"ffffff-000000",1.0)
    s := dm.getwords(0,0,700,700,"ffffff-000000",1.0)
    
    if (s = "")
    {
        return true
    }
    else
    {
        return false
    }
    ;MsgBox %s%
    pos := StrSplit(s, "|")
    xs := StrSplit(pos[1], ",")
    ys := StrSplit(pos[2], ",")
    eastX := xs[1]
    eastY := ys[1]
    northX := xs[2]
    northY := ys[2]
    east := pos[3]
    north := pos[4]
    ;MsgBox %eastX%, %eastY%
    dm.moveto(eastX, eastY)
    MsgBox %east%/%north%
    
    return
}

dm_initial(ByRef hwnd, ByRef winX, ByRef winY)
{
    ; register,bind
    dm := ComObjCreate("dm.dmsoft")
    path := dm.SetPath("C:\Users\Administrator\Desktop\ml_ahk")
    dm.SetDict(0,"dm_dict_digit.txt")
    MsgBox "move mouse to game window"
    Sleep 2000
    hwnd := dm.getMousePointWindow()
    ;MouseGetPos, , , , controlclassnn
    dm_ret := dm.Bindwindow(hwnd,"dx","windows","windows",0)
    Sleep 100
    dm.setKeypadDelay("windows", 200)
    
    ;WinGetTitle title, ahk_id %hwnd%
    ;WinGetPos, winX, winY, Width, Height, %title%

    return dm
}

dm_unbind(dm)
{
    dm_ret=dm.Unbindwindow()
    return
}

dm_find_pic(dm, path, ByRef retx, ByRef rety, iClick=0)
{
    Loop 3
    {
        dm_ret := dm.FindPicEx(0, 0, 700, 700, path, "000000", 0.8, 3)
        ;dm_ret := dm.FindPicEx(0, 0, 1000, 1000, "C:\Users\Administrator\Desktop\ml_ahk\test.bmp", "000000", 0.8, 0)
        if(StrLen(dm_ret) = 0)
        {
            dm.moveto(5,5)
            Sleep 100
            continue
        }
        pos := StrSplit(dm_ret, "|")
        item := pos[1]
        retx := StrSplit(item, ",")[2]
        rety := StrSplit(item, ",")[3]
        
        if(iClick=1)
        {
            retx += 3
            rety += 3
            dm.moveto(retx, rety)
            sleep 100
            dm.leftclick()
            Sleep 100
        }
        else if (iClick = 2)
        {
            retx += 3
            rety += 3
            dm.moveto(retx, rety)
            sleep 100
            dm.leftDoubleClick()
            Sleep 100
        }
        dm.moveto(5,5)
        sleep 100
        return true
    }
    return false
}