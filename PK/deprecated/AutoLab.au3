WinActivate("BlueStacks App Player for Windows (beta-1)") ;Name of Bluestacks window
Opt("MouseCoordMode",0) ;Using Bluestacks coordinates
HotKeySet("{BACKSPACE}", "Terminate") ;Backspace to terminate the script when it runs
HotKeySet("{SPACE}", "TogglePause") ;Space to pause the script when it's running
Global $Paused

Global $num = 0 ;Global itr

;Make sure to press Start for Labyrinth before beginning
;First180()
While 1
   Sleep(1700000)
   TimesOne()
WEnd
Terminate()

Func TimesOne()
   While $num < 18 ;First 180 Floors
	  MouseClick("left",200,545)
	  Sleep(500)
	  MouseClick("left",200,325)
	  Sleep(6000)
	  MouseClick("left",955,570) ;Skip button
	  Sleep(3000)
	  MouseClick("left",340,500) ;Confirm button
	  Sleep(2000)
	  $num+=1 ;Iterate by one
	WEnd
	$num = 0 ;Reset itr
	Sleep(4000)
EndFunc

Func TimesTwo()
   MouseClick("left",505,545)
   Sleep(500)
   MouseClick("left",505,325)
   Sleep(6000)
   MouseClick("left",955,570) ;Skip button
   Sleep(1000)
   MouseClick("left",955,570) ;Skip button
   Sleep(3000)
   MouseClick("left",340,500) ;Confirm button
   Sleep(2000)
EndFunc

Func First180()
   While $num < 18 ;First 180 Floors
	  MouseClick("left",520,185) ;Labyrinth Button
	  Sleep(1000)
	  MouseClick("left",865,140) ;x10 Button
	  Sleep(1000)
	  MouseClick("left",60,625) ;Android Return Button
	  Sleep(1000)
	  $num+=1 ;Iterate by one
	WEnd
	$num = 0 ;Reset itr
	Sleep(4000)
EndFunc

Func Terminate()
    Exit(1)
EndFunc

Func TogglePause()
  $Paused = NOT $Paused
  While $Paused
    sleep(100)
    ToolTip('Script is "Paused"',500,500)
  WEnd
  ToolTip("")
EndFunc
