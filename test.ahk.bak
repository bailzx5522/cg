
;test()
;mission()
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
                    dm.moveto(50,5)
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
                ;item1 = C:\Users\Administrator\Desktop\ml_ahk\cook_mumian.bmp
				item1 = C:\Users\Administrator\Desktop\ml_ahk\mineral_copper.bmp
                ;item1 = C:\Users\Administrator\Desktop\ml_ahk\cook_nmc_.bmp
                ;item1 = C:\Users\Administrator\Desktop\ml_ahk\cook_taomu.bmp
                ;item1 = C:\Users\Administrator\Desktop\ml_ahk\cook_cong_.bmp
                ;item1 = C:\Users\Administrator\Desktop\ml_ahk\cook_xm.bmp
                ;item1 = C:\Users\Administrator\Desktop\ml_ahk\cook_xixian.bmp
                ;item1 = C:\Users\Administrator\Desktop\ml_ahk\cook_lajiao.bmp
                ret := dm_find_pic(dm, item1, item1x, item1y, 2)
                if(!ret)
                {
                    MsgBox no item1
                    continue
                }
                ; select 2
				item2 = C:\Users\Administrator\Desktop\ml_ahk\cook_qm.bmp
                ;item2 = C:\Users\Administrator\Desktop\ml_ahk\fabric_mb.bmp
                ;item2 = C:\Users\Administrator\Desktop\ml_ahk\cook_guoli.bmp
                ;item2 = C:\Users\Administrator\Desktop\ml_ahk\cook_fanqie.bmp
                ;item2 = C:\Users\Administrator\Desktop\ml_ahk\cook_jiangyou.bmp
                ;item2 = C:\Users\Administrator\Desktop\ml_ahk\cook_milk.bmp
                ;item2 = C:\Users\Administrator\Desktop\ml_ahk\cook_dami.bmp
                ret := dm_find_pic(dm, item2, item2x, item2y, 2)
                if(!ret)
                {
                    MsgBox no item2
                    continue
                }
                
                ; select 3
				;item3 = C:\Users\Administrator\Desktop\ml_ahk\fabric_mb.bmp
                ;item3 = C:\Users\Administrator\Desktop\ml_ahk\cook_lupi.bmp
                ;item3 = C:\Users\Administrator\Desktop\ml_ahk\cook_hudie.bmp
                ;item3 = C:\Users\Administrator\Desktop\ml_ahk\cook_egg_.bmp
                ;item3 = C:\Users\Administrator\Desktop\ml_ahk\cook_salt.bmp
                ;item3 = C:\Users\Administrator\Desktop\ml_ahk\cook_fanhong.bmp
                ;item3 = C:\Users\Administrator\Desktop\ml_ahk\cook_cotton.bmp
                ;item3 = C:\Users\Administrator\Desktop\ml_ahk\mineral_tie.bmp
                item3 = C:\Users\Administrator\Desktop\ml_ahk\mu_cong.bmp
                ret := dm_find_pic(dm, item3, item3x, item3y, 2)
                if(!ret)
                {
                    MsgBox no item3
                    continue
                }
                
                /*
                ; select 4
				;item4 = C:\Users\Administrator\Desktop\ml_ahk\cook_maozhan.bmp
                item4 = C:\Users\Administrator\Desktop\ml_ahk\cook_beef_.bmp
                ;item4 = C:\Users\Administrator\Desktop\ml_ahk\mu_cong.bmp
                ret := dm_find_pic(dm, item4, item4x, item4y, 2)
                if (!ret)
                {
                    MsgBox no item4
                    continue
                }
                
                
                ; select 5
                item5 = C:\Users\Administrator\Desktop\ml_ahk\fabric_mb.bmp
				;item5 = C:\Users\Administrator\Desktop\ml_ahk\mineral_tie.bmp
                ;item5 = C:\Users\Administrator\Desktop\ml_ahk\cook_sugar.bmp
                item5 = C:\Users\Administrator\Desktop\ml_ahk\cook_egg_.bmp
                ret := dm_find_pic(dm, item5, item5x, item5y, 2)
                if (!ret)
                {
                    MsgBox no item5
                    continue
                }
                */
                
                dm.moveto(50,5)
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
                dm.moveto(50,5)
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
        
        inBattle := dm_find_digit(dm, x, y)
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
                        logout(dm)
                        while(true)
                        {
                            Sleep 500
                            dm_find_digit(dm, x, y)
                            ;MsgBox %x%/%y%
                            Sleep 200
                            if (x == 242)
                            {
                                gogo(dm, 230, 82)
                                break
                            }
                            else if (x == 141)
                                dm_go_target(dm, 141, 148, 141, 146, true)
                            else if (x == 162)
                                dm_go_target(dm, 162, 130, 163, 130, true)
                            else if (x == 233)
                            {
                                gogo(dm, 230, 82)
                                break
                            }
                            else if (x == 63)
                            {
                                gogo(dm, 71, 84)
                                break
                            }
                            else if (x == 72)
                                dm_go_target(dm, 72, 123, 73, 123, true)
                        }
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

test()
{
    dm := dm_initial(hwnd, winX, winY)
    Sleep 2000
    Loop % 80000
    {
        ;dm.moveto(300,400)
        dm.leftclick()
        ;dm.rightclick()
        Sleep 20
    }
    return
    mission()
    
    dm_go_target(dm, 9, 9, 9, 7, true)
    Sleep 300
    conversation(dm, "yes")
    Sleep 300
    conversation(dm, "confirm")
    Sleep 3000
    logout(dm)
    return
    
    dm_ret := dm.SetDict(0,"dm_chinese.txt")
    s := dm.Ocr(0,0,700,700,"ffffff-000000", 1.0)
    ;s := dm.Ocr(0,74, 634,691,"ffffff-000000",1.0)
    ;s := dm.FindStr(484,187,577,210,"","ffffff-000000",1.0,intX,intY)
    ;s := dm.FindStr(0,0,700,700,"法兰城","ffffff-000000",0.8,intX,intY)
    
    MsgBox %s%,%intX%,%intY%
    return
    
}

logout(dm)
{
    ; esc
    dm.keypress(27)
    Sleep 100
    ret := dm_find_pic(dm, "C:\Users\Administrator\Desktop\ml_ahk\button_logout.bmp", retx, rety, 1)
    if(!ret)
        MsgBox cannot find button_logout
    Sleep 100
    ret := dm_find_pic(dm, "C:\Users\Administrator\Desktop\ml_ahk\button_logoutcity.bmp", retx, rety, 1)
    if(!ret)
        MsgBox cannot find button_logoutcity
}

mission()
{
    dm := dm_initial(hwnd, winX, winY)
    map1 := [[[153,100],[41,91]]]
    map2 := [[52,93],[48,89], [[47,85],[3,8]]]
    map3 := [[8,17],[27,15], [[27,8],[44,15]]]
    map4 := [[10,6],[8,27],[23,26], [[23,19],[31,48]]]
    map5 := [[27,52],[21,46],[14,37],[8,30],[9,9]]

    maps := [map1, map2, map3, map4, map5]
    
    Loop % maps.Length()
    {
        ar := maps[A_Index]
        Loop % ar.Length()
        {
            nextx := 0
            nexty := 0
            x := ar[A_Index][1]
            y := ar[A_Index][2]
            if (ar[A_Index][1].Length() == 2)
            {
                tarx := ar[A_Index][1][1]
                tary := ar[A_Index][1][2]
                nextx := ar[A_Index][2][1]
                nexty := ar[A_Index][2][2]
            }
            else
            {
                tarx := ar[A_Index][1]
                tary := ar[A_Index][2]
            }
            ret := gogo(dm, tarx, tary, nextx, nexty)
            if(ret)
            {
                ;MsgBox Got %tarx%/%tary%
                continue
            }
            else
            {
                MsgBox error to %tarx%/%tary%
            }
        }
    }
}

gogo(dm, tarx, tary, nextx=0, nexty=0)
{
    nowx := 0
    nowy := 0
    while(true)
    {
        found_ret := dm_find_digit(dm, nowx, nowy)
        if (!found_ret)
        {
            ; in battle
            Sleep 3000
            continue
        }
        ; Got target
        if (tarx == nowx && tary == nowy)
        {
            ;MsgBox Get %nowx%/%nowy%
            return true
        }
        
        ; Change to next map
        if (nowx == nextx && nowy == nexty)
            return true
        
        transfer_target(tarx, tary, nowx, nowy, t_tarx, t_tary)
        ;MsgBox Go %t_tarx%/%t_tary%
        dm_go_target(dm, nowx, nowy, t_tarx, t_tary)
        Sleep 2000
    }
    return false
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

conversation(dm, name)
{
    path = C:\Users\Administrator\Desktop\ml_ahk\button_%name%.bmp
    ret := dm_find_pic(dm, path, retx, rety, 1)
    if(!ret)
        MsgBox cannot find buttonyes
    return
}

transfer_target(tarx, tary, nowx, nowy, ByRef t_tarx, ByRef t_tary)
{
    ;in screen or not
    xmax = 6
    ymax = 7
    abs_tarx := Abs(tarx - nowx)
    abs_tary := abs(tary - nowy)
    x_symbol := tarx > nowx ? 1 : -1 
    y_symbol := tary > nowy ? 1 : -1
    if (abs_tarx <= xmax && abs_tary <= ymax)
    {
        t_tarx := tarx
        t_tary := tary
    }
    else if (abs_tarx == 0)
    {
        t_tarx := tarx
        t_tary := nowy + y_symbol * ymax

    }
    else if (abs_tary == 0)
    {
        t_tary := tary
        t_tarx := nowx + x_symbol * xmax
    }
    else
    {
        tant := abs_tary/abs_tarx
        if (tant > 1)
        {
            
            t_tary := nowy + y_symbol * ymax
            t_tarx := nowx + Floor(x_symbol * ymax / tant)
        }
        else
        {
            t_tarx := nowx + x_symbol * xmax
            t_tary := nowy + Floor(y_symbol * xmax * tant)
        }
    }
}

dm_go_target(dm, nowx, nowy, tarx, tary, talk=false)
{
    ; height=480,10steps => 48px/step
    ; width=640,10steps  => 64px/step
    ; cross=400, 20steps => 20px/step
    ; 0,0              640,0
    ;
    ;       320,240
    ;
    ; 0,480            640,480
    
    ; 走路逻辑
    ; 1. 目标的都大，往右摁
    ; 2. 都小，往左摁
    ; 3. 目标的x大，往右上摁，反之左下摁
    ; 4. 目标的y大，往右下摁，反之右上摁
    movx := 320
    movy := 240
    xstep := 32
    ystep := 24
    
    abs_tarx := Abs(tarx - nowx)
    abs_tary := abs(tary - nowy)
    ; judge direction
    if (tarx > nowx)
    {
        movx += xstep*abs_tarx
        movy -= ystep*abs_tarx
    }
    else
    {
        movx -= xstep*abs_tarx
        movy += ystep*abs_tarx
        
    }
    if (tary > nowy)
    {
        movx += xstep*abs_tary
        movy += ystep*abs_tary
    }
    else
    {
        movx -= xstep*abs_tary
        movy -= ystep*abs_tary
    }
    ;TODO
    ; In some cases x,y will over the screen.So reset the max value
    if (movx<=0)
        movx := 20
    else if (movx >= 640)
        movx := 620
    if (movy <= 0)
        movy := 20
    else if (movy >= 480)
        movy := 460
    
    dm.moveto(movx, movy)
    if (talk)
    {
        dm.rightdown()
        dm.rightup()
    }
    else{
        dm.leftclick()
        ;dm.leftdoubleclick()
        dm.leftup()
    }
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

dm_find_digit(dm, ByRef x, ByRef y)
{
    ;dm.FindStr(0,0,0,0,"这里填写需要找的数字","333333-008087",1.0,intX,intY)
    ;s := dm.Ocr(0,74, 634,691,"ffffff-000000",1.0)
    s := dm.getwords(500,0,640,200,"ffffff-000000",1.0)
    n := dm.GetWordResultCount(s)
    if (n != 2)
        return false
    if (s = "")
    {
        ;MsgBox nothing found!
        return false
    }
    pos := StrSplit(s, "|")
    xs := StrSplit(pos[1], ",")
    ys := StrSplit(pos[2], ",")
    eastX := xs[1]
    eastY := ys[1]
    northX := xs[2]
    northY := ys[2]
    east := pos[3]
    north := pos[4]
    
    ;dm.moveto(eastX, eastY)
    x := east
    y := north
    return true
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
            dm.moveto(50,5)
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
        dm.moveto(50,5)
        sleep 100
        return true
    }
    return false
}