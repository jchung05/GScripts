WinActivate("BlueStacks App Player for Windows (beta-1)") ;Name of bluestacks window
Opt("MouseCoordMode",1) ;Using absolute coordinates, otherwise try 1 for absolute
HotKeySet("{BACKSPACE}", "Terminate") ;Backspace to terminate the script when it runs
HotKeySet("{SPACE}", "TogglePause") ;Space to pause the script when it's running
Global $Paused

;Sleep(3000000)
;PieTime() ;One-time function call
CloseTV() ;10 seconds
Sleep(1000)
While 1 ;Infinite loop
    TowerTraverse() ;9 seconds
 	BossScroll() ;Unknown amount of time
	;GuildBoss() ;20 seconds @@@@@@@@@@@@DOESN'T WORK
	;Sleep(1730000) ;Subtract the current action time. Sum >= 1800 seconds
WEnd

;TeamViewer's annoying pop-up
Func CloseTV()
    Sleep(30000)
    MouseClick("left",872,443) ;Globally Press 'OK'
	Sleep(5000)
	MouseClick("left",1030,55) ;Close Announcements/Click Event button & reset the top
	Sleep(3000)
EndFunc

Func PieTime()
    MouseClick("left",890,220) ;Click Event Hall
	Sleep(1000)
	MouseClickDrag("left",70,70,980,70) ;Scroll across the top menu
	Sleep(1000)
    MouseClick("left",455,80) ;Click Pie Time
    Sleep(1000)
	MouseClick("left",915,490) ;Click Claim
	Sleep(1000)
	MouseClick("left",1030,55) ;Close Announcements/Click Event button & reset the top
	Sleep(3000)
EndFunc

;Make sure Tower Floor Limits are unchecked
Func TowerTraverse()
   ;Click Boss button
	MouseClick("left",910,120)
    Sleep(2000)
   ;Click Event Tower
    MouseClick("left",215,75)
    Sleep(4000)
   ;Click Regular Enter button
    MouseClick("left",625,330)
   ;Click Limited Enter button
    ;MouseClick("left",625,545)
    Sleep(1000)
   ;Drag bottom to top to scroll floor select down
    MouseClickDrag("left",335,460,335,155)
   ;Click bottom-most position
    MouseClick("left",335,460)
    Sleep(1000)

   ;Click Fight
    MouseClick("left",785,490)
    Sleep(1000)
   ;Click Auto-play
    MouseClick("left",905,75)
    Sleep(1000)
   ;Click Start
    MouseClick("left",810,540)
    Sleep( 240000 )
   ;Click End
    MouseClick("left",560,510)
   ;Click Exit twice
    MouseClick("left",1050,78)
	Sleep(1000)
    MouseClick("left",1050,78)
    Sleep(1000)
   ;Click Boss Battle
    MouseClick("left",435,80)
    Sleep(1000) ;9 seconds total

EndFunc

Func BossScroll()

	MouseClick("left",925,210) ;Press Enter/Attack
	Sleep(1000)
	AutoAttack()
	MouseClick("left",1050,78) ;Close Announcements/Click Event button
	Sleep(3000)
	MouseClick("left",1050,78) ;Close Announcements/Click Event button & reset the top
	Sleep(3000)
 EndFunc

 Func AutoAttack() ;14 seconds
	$timcount = 0
	While $timcount < 60
	   MouseClick("left",620,560,50) ;Press Challenge
	   Sleep(500)
	   $timcount += 1
	WEnd
	Sleep(3000)
	MouseClick("left",1035,570) ;Skip button
	Sleep(4000)
	MouseClick("left",420,500) ;Confirm button
	Sleep(2000)
	$timcount = 0
	While $timcount < 60
	   MouseClick("left",820,560,50) ;Press Claim (if needed)
	   Sleep(500)
	   $timcount += 1
	WEnd

 EndFunc

 ;20 seconds
 Func GuildBoss()
    MouseClick("left",655,555) ;Press Guild
	Sleep(5000)
	MouseClick("left",550,90) ;Press Guild Events
	Sleep(5000)
	MouseClick("left",965,490) ;Press Enter
	Sleep(1000)
	MouseClick("left",930,520) ;Press Challenge####
	Sleep(4000)
	MouseClick("left",665,400) ;Press Cancel if the CD is not done####
	Sleep(1000)
	MouseClick("left",1000,550) ;Skip button
	Sleep(4000)
	MouseClick("left",400,485) ;Confirm button
	Sleep(2000)
	MouseClick("left",1050,78) ;Close Announcements
	Sleep(3000)
	MouseClick("left",1050,78) ;Close Announcements
	Sleep(3000)
 EndFunc

 Func Terminate()
    Exit(1)
 EndFunc

 Func TogglePause()
    $Paused = NOT $Paused
    While $Paused
	  sleep(100)
	  ToolTip('Script is "Paused"',500,300)
    WEnd
    ToolTip("")
 EndFunc
