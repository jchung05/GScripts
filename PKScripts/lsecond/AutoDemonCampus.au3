WinActivate("BlueStacks App Player for Windows (beta-1)") ;Name of Bluestacks window
Opt("MouseCoordMode",1) ;Using absolute coordinates, otherwise try 1 for absolute
HotKeySet("{BACKSPACE}", "Terminate") ;Backspace to terminate the script when it runs
HotKeySet("{SPACE}", "TogglePause") ;Space to pause the script when it's running
Global $Paused

Global $num = 0 ;Global itr

;Please make sure you have plenty of space and equipment inventory
MouseClick("left",) ;Open the World Map
Sleep(3000)
MouseClick("left",40,527)
Sleep(1000)
MouseClick("left",40,527) ;Press More button on Map 3
Sleep(1000)
Sleep(5000)
MouseClickDrag("left",50,300,1000,300) ;Swipe Map 1 to the left-most side
Sleep(3000)

MouseClick("left",270,165) ;Castor Port
Sleep(3000)
Castor()
MouseClick("left",40,527)
Sleep(1000)
MouseClick("left",40,527)
Sleep(1000)
MouseClick("left",330,385) ;The Lakebed
Sleep(3000)
Lakebed()
MouseClick("left",40,527)
Sleep(1000)
MouseClick("left",40,527)
Sleep(1000)
MouseClick("left",540,250) ;Magic Forest
Sleep(3000)
Forest()
MouseClick("left",40,527)
Sleep(1000)
MouseClick("left",40,527)
Sleep(1000)
MouseClick("left",720,440) ;Cloud City
Sleep(3000)
StandardDungeon()
MouseClick("left",40,527)
Sleep(1000)
MouseClick("left",40,527)
Sleep(1000)
MouseClick("left",680,320) ;Wastelands
Sleep(3000)
StandardDungeon()
MouseClick("left",40,527)
Sleep(1000)
MouseClick("left",40,527)
Sleep(1000)
MouseClick("left",760,360) ;Desert
Sleep(3000)
StandardDungeon()
MouseClick("left",40,527)
Sleep(1000)
MouseClick("left",40,527)
Sleep(1000)
MouseClick("left",750,145) ;Snowberg Mountain
Sleep(3000)
StandardDungeon()
MouseClick("left",40,527)
Sleep(1000)
MouseClick("left",40,527)
Sleep(1000)
MouseClick("left",690,320) ;Winter Cave
Sleep(3000)
StandardDungeon()
MouseClick("left",40,527)
Sleep(1000)
MouseClick("left",40,527)
Sleep(1000)
MouseClick("left",790,410) ;Lost City
Sleep(3000)
StandardDungeon()
MouseClick("left",40,527)
Sleep(1000)
MouseClick("left",40,527)
Sleep(1000)
MouseClick("left",930,155) ;Floating Island
Sleep(3000)
StandardDungeon()
MouseClick("left",40,527)
;MouseClick("left",990,505) ;Press More button on Map 1
Sleep(5000)

MouseClickDrag("left",50,300,1000,300) ;Swipe Map 2 to the left-most side
Sleep(3000)
MouseClick("left",315,350) ;Whirlwreck
Sleep(3000)
StandardDungeon()
MouseClick("left",40,527)
Sleep(1000)
MouseClick("left",555,310) ;Yggdras
Sleep(3000)
StandardDungeon()
MouseClick("left",40,527)
Sleep(1000)
MouseClick("left",690,205) ;Ruins
Sleep(3000)
StandardDungeon()
MouseClick("left",40,527)
Sleep(1000)
MouseClick("left",860,210) ;Dire Keep
Sleep(3000)
StandardDungeon()

MouseClick("left",100,120) ;Return to Main
Sleep(5000)
Exit(1)

;16%4 = 0 count Dungeons
Func ModFourDungeon();############################
    Sleep(1000)
	FirstDungeon()
	While $num < 16 ;Iterate n-1 times
		MouseClick("left",400,480) ;Click sequential stage
		Sleep(500)
		MouseClick("left",400,540) ;Click sequential stage battle
		Sleep(500)
		MouseClick("left",680,520) ;Click Battle
		Sleep(4000)
		MouseClick("left",1000,550) ;Skip button
		Sleep(2500)
		MouseClick("left",1000,400) ;Just in case a Chest pop-up appears
		Sleep(4000)
		MouseClick("left",400,480) ;Confirm button
		Sleep(2500)
		$num+=1 ;Iterate by one
	WEnd
	$num = 0 ;Reset itr
	MouseClick("left",1030,55) ;Close the window
	Sleep(4000)
EndFunc

Func FourthDungeon();###############################
	MouseClick("left",420,60) ;Click Elite Dungeon
	Sleep(500)
	MouseClick("left",200,540) ;Click first stage battle
	Sleep(4000)
	MouseClick("left",680,520) ;Click Battle
	Sleep(5000)
	MouseClick("left",1000,550) ;Skip button
	Sleep(2500)
	MouseClick("left",1000,400) ;Just in case a Chest pop-up appears
	Sleep(4000)
	MouseClick("left",400,480) ;Confirm button
	Sleep(2500)
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
