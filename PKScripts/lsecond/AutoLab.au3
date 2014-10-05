WinActivate("BlueStacks App Player for Windows (beta-1)") ;Name of Bluestacks window
Opt("MouseCoordMode",0) ;Using Bluestacks coordinates
HotKeySet("{BACKSPACE}", "Terminate") ;Backspace to terminate the script when it runs
HotKeySet("{SPACE}", "TogglePause") ;Space to pause the script when it's running
Global $Paused

MouseClick("left",575,185) ;Labyrinth Button
Sleep(1000)
MouseClick("left",560,530) ;Start Button for Labyrinth
TimesTen()
TimesTen()
TimesTen()
TimesTen()
TimesTen()
TimesTen()

TimesTen()
TimesTen()
TimesTen()
TimesTen()
TimesTen()
TimesTen()

TimesTen()
TimesTen()
TimesTen()
TimesTen()
TimesTen()
TimesTen() ;Floor 180

Terminate()

Func TimesOne()
   MouseClick("left",220,545)
   Sleep(500)
   MouseClick("left",220,330)
   Sleep(2500)
   ;Need to pull in attack function from other scripts
EndFunc

Func TimesTwo()
   MouseClick("left",555,545)
   Sleep(500)
   MouseClick("left",555,330)
   Sleep(2500)
   ;Need to pull in attack function from other scripts
   ;Two Skips
EndFunc

Func TimesTen()
   MouseClick("left",560,170) ;Labyrinth Button
   Sleep(1000)
   MouseClick("left",945,125) ;x10 Button
   Sleep(1000)
   MouseClick("left",55,615) ;Android Return Button
   Sleep(1000)
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
