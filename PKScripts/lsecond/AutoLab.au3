WinActivate("BlueStacks App Player for Windows (beta-1)") ;Name of Bluestacks window
Opt("MouseCoordMode",0) ;Using Bluestacks coordinates
HotKeySet("{BACKSPACE}", "Terminate") ;Backspace to terminate the script when it runs
HotKeySet("{SPACE}", "TogglePause") ;Space to pause the script when it's running
Global $Paused


Func TimesOne()

EndFunc

Func TimesTwo()

EndFunc

Func TimesTen()

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
