WinActivate("BlueStacks App Player for Windows (beta-1)") ;Name of bluestacks window
Opt("MouseCoordMode",1) ;Using absolute coordinates, otherwise try 1 for absolute
HotKeySet("{BACKSPACE}", "Terminate") ;Backspace to terminate the script when it runs
HotKeySet("{SPACE}", "TogglePause") ;Space to pause the script when it's running
Global $Paused

Sleep(1000)
While 1 ;Infinite loop
    MouseClick("left",670,420) ;Click Warehouse
	Sleep(1000)
	MouseClick("left",670,405) ;Enter
	Sleep(3000)
	;RELATIVE TO YOUR PEARLS
	MouseClickDrag("left",955,353,205,353)
	MouseClick("left",705,245)
	Sleep(500)
	MouseClick("left",395,535)
	Sleep(500)
	MouseClick("left",695,300)
	Sleep(500)
	MouseClick("left",570,360)
	Sleep(500)
	MouseClick("left",955,355)
	Sleep(500)
	MouseClick("left",1050,77) ;Close
	Sleep(1000)
	MouseClick("left",485,555) ;Fortify Button
	Sleep(1000)
	MouseClick("left",640,80) ;Adv Functions tab
	Sleep(500)
	MouseClick("left",595,40) ;Refine Gear tab
	Sleep(500)
	MouseClick("left",450,550) ;Select Card
	Sleep(500)
	MouseClick("left",635,560) ;Select All Pearl Cards
	Sleep(500)
	MouseClick("left",950,560) ;Confirm
	Sleep(500)
	MouseClick("left",950,560) ;Refine
	Sleep(500)
	MouseClick("left",1050,77) ;Close
	Sleep(1000)
WEnd

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
