WinActivate("BlueStacks App Player for Windows (beta-1)") ;Name of Bluestacks window
Opt("MouseCoordMode",1) ;Using absolute coordinates, otherwise try 1 for absolute
HotKeySet("{BACKSPACE}", "Terminate") ;Backspace to terminate the script when it runs
HotKeySet("{SPACE}", "TogglePause") ;Space to pause the script when it's running
Global $Paused

Global $num = 0 ;Global itr

;Please make sure you have 200 Action Points or this will fail
MouseClickDrag("left",170,395,750,395) ;Open the World Map
Sleep(3000)
MouseClick("left",115,340) ;Click Demon Campus
Sleep(3000)
MouseClickDrag("left",50,330,1019,330)
Sleep(1000)

MouseClick("left",555,430) ;Military Camp
Sleep(3000)
ModFourDungeon()
MouseClick("left",340,360) ;Mire
Sleep(3000)
ModFourDungeon()
MouseClick("left",350,240) ;Wasteland
Sleep(3000)
ModFourDungeon()
MouseClick("left",595,250) ;Worksite
Sleep(3000)
ModFourDungeon()
MouseClick("left",790,230) ;Monument
Sleep(3000)
ModFourDungeon()
MouseClick("left",840,145) ;Flatlands
Sleep(3000)
ModFourDungeon()
MouseClick("left",370,350) ;Stronghold
Sleep(3000)
ModFourDungeon()
MouseClick("left",780,320) ;Trail
Sleep(3000)
ModFourDungeon()
MouseClick("left",750,370) ;Big Bridge
Sleep(3000)
ModFourDungeon()
MouseClick("left",935,200) ;Mountain
Sleep(3000)
ModFourDungeon()
Sleep(5000)

MouseClick("left",100,120) ;Return to Main
Sleep(5000)
Exit(1)

;16%4 = 0 count Dungeons
Func ModFourDungeon()
    Sleep(1000)
	FourthDungeon()
	While $num < 4 ;Iterate n-1 times
	    MouseClickDrag("left",890,480,660,480) ;Drag 1 stage across
		Sleep(500)
		MouseClick("left",890,500) ;Click sequential stage
		Sleep(500)
		MouseClick("left",890,555) ;Click sequential stage battle
		Sleep(4000)
		MouseClick("left",1000,550) ;Skip button
		Sleep(2500)
		;MouseClick("left",1000,400) ;Just in case a Chest pop-up appears
		;Sleep(4000)
		MouseClick("left",400,500) ;Confirm button
		Sleep(2500)
		$num+=1 ;Iterate by one
	WEnd
	$num = 0 ;Reset itr
	MouseClick("left",1030,55) ;Close the window
	Sleep(4000)
EndFunc

Func FourthDungeon()
    MouseClick("left",890,500) ;Click fourth stage
	Sleep(500)
	MouseClick("left",890,555) ;Click fourth stage battle
	Sleep(4000)
	MouseClick("left",1000,550) ;Skip button
	Sleep(2500)
	;MouseClick("left",1000,400) ;Just in case a Chest pop-up appears
	;Sleep(4000)
	MouseClick("left",400,500) ;Confirm button
	Sleep(2500)
EndFunc

Func CollectGuild()
	MouseClick("left",380,75) ;Click Elite Dungeon
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
