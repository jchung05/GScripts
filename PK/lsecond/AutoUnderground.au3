WinActivate("BlueStacks App Player for Windows (beta-1)") ;Name of Bluestacks window
Opt("MouseCoordMode",1) ;Using absolute coordinates, otherwise try 1 for absolute
HotKeySet("{BACKSPACE}", "Terminate") ;Backspace to terminate the script when it runs
HotKeySet("{SPACE}", "TogglePause") ;Space to pause the script when it's running
Global $Paused

Global $num = 0 ;Global itr

MouseClick("left",735,115) ;Click Underground
Sleep(1000)
Beast()
Human()
Terminate()

;Beast World
Func Beast()
    MouseClick("left",160,225) ;Beast Battle
    Sleep(2000)
    MouseClick("left",865,555) ;Enter
    Sleep(500)
    MouseClick("left",755,565) ;Enter
    Sleep(500)
	TeamSelect()
	MouseClick("left",730,565) ;Battle
	Sleep(10000)
	MouseClick("left",340,500) ;Confirm button
	Sleep(2000)
	While $num < 5
	   SmallBattle()
	   $num += 1
	WEnd
	While $num < 10
	   LargeBattle()
	   $num += 1
	WEnd
	$num = 0
	MouseClick("left",945,78) ;Close
	Sleep(2000)
EndFunc

Func Human()
    MouseClick("left",388,225) ;Human Battle
    Sleep(2000)
    MouseClick("left",865,555) ;Unlock
    Sleep(500)
	MouseClick("left",410,425) ;Confirm
	Sleep(500)
	MouseClick("left",865,555) ;Enter
	Sleep(500)
	While $num < 6
	   SmallBattle()
	   $num += 1
	WEnd
	While $num < 11
	   LargeBattle()
	   $num += 1
	WEnd
	$num = 0
	MouseClick("left",945,78) ;Close
	Sleep(2000)
EndFunc

Func SmallBattle()
    MouseClick("left",755,565) ;Enter
	Sleep(500)
	MouseClick("left",730,565) ;Battle
	Sleep(7000)
	MouseClick("left",505,350) ;Speed up the battle
	Sleep(23000)
	MouseClick("left",340,500) ;Confirm button
	Sleep(2000)
EndFunc

Func LargeBattle()
    MouseClick("left",755,565) ;Enter
	Sleep(500)
	MouseClick("left",730,565) ;Battle
	Sleep(7000)
	MouseClick("left",505,350) ;Speed up the battle
	Sleep(53000)
	MouseClick("left",340,500) ;Confirm button
	Sleep(2000)
EndFunc

;This function is unique to the user. DIY coordinates
Func TeamSelect()
    MouseClickDrag("left",730,510,730,145)
	Sleep(500)
	MouseClick("left",900,475) ;First member
	Sleep(500)
	MouseClick("left",900,365) ;Second member
	Sleep(500)
	MouseClick("left",900,155) ;Third member
    Sleep(500)
	MouseClick("left",900,260) ;Fourth member
	MouseClickDrag("left",730,145,730,510)
	Sleep(500)
	MouseClick("left",900,290) ;Fifth member
	Sleep(500)
	MouseClick("left",900,400) ;Sixth member
	Sleep(500)
EndFunc

Func Terminate()
    Exit(1)
EndFunc

Func TogglePause()
  $Paused = NOT $Paused
  While $Paused
    sleep(100)
    ToolTip('Script is "Paused"',0,0)
  WEnd
  ToolTip("")
EndFunc
