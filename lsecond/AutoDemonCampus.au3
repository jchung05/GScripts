WinActivate("BlueStacks App Player for Windows (beta-1)") ;Name of Bluestacks window
Opt("MouseCoordMode",1) ;Using absolute coordinates, otherwise try 1 for absolute
HotKeySet("{BACKSPACE}", "Terminate") ;Backspace to terminate the script when it runs
HotKeySet("{SPACE}", "TogglePause") ;Space to pause the script when it's running
Global $Paused

Global $num = 0 ;Global itr

;Please make sure you have 200 Action Points or this will fail
MouseClickDrag("left",170,395,750,395) ;Open the World Map
Sleep(3000)
MouseClick("left",110,340) ;Click Demon Campus
Sleep(3000)
MouseClick("left",120,535) ;Press More to return to map 1
Sleep(2000)
MouseClickDrag("left",50,330,1019,330)
Sleep(1000)

MouseClick("left",505,430) ;Military Camp
Sleep(3000)
;ModFourDungeon()
StandardDungeon()
MouseClick("left",300,360) ;Mire
Sleep(3000)
;ModFourDungeon()
StandardDungeon()
MouseClick("left",320,240) ;Wasteland
Sleep(3000)
;ModFourDungeon()
StandardDungeon()
MouseClick("left",530,250) ;Worksite
Sleep(3000)
;ModFourDungeon()
StandardDungeon()
MouseClick("left",715,230) ;Monument
Sleep(3000)
;ModFourDungeon()
StandardDungeon()
MouseClick("left",760,145) ;Flatlands
Sleep(3000)
;ModFourDungeon()
StandardDungeon()
MouseClick("left",335,350) ;Stronghold
Sleep(3000)
;ModFourDungeon()
StandardDungeon()
MouseClick("left",705,320) ;Trail
Sleep(3000)
;ModFourDungeon()
StandardDungeon()
MouseClick("left",680,370) ;Big Bridge
Sleep(3000)
;ModFourDungeon()
StandardDungeon()
MouseClick("left",840,200) ;Mountain
Sleep(3000)
;ModFourDungeon()
StandardDungeon()

MouseClick("left",905,530) ;Press More to return to map 2

Sleep(5000)
MouseClick("left",100,120) ;Return to Main
Sleep(5000)
Exit(1)

;These coordinates no longer work because Windows 8.1 is fucking gay
;16%4 = 0 count Dungeons
Func ModFourDungeon()
    Sleep(1000)
	FourthDungeon()
	While $num < 4 ;Iterate n-1 times
	    MouseClickDrag("left",800,480,570,480) ;Drag 1 stage across
		Sleep(500)
		MouseClick("left",800,500) ;Click sequential stage
		Sleep(500)
		MouseClick("left",800,555) ;Click sequential stage battle
		Sleep(7000)
	    MouseClick("left",955,570) ;Skip button
		Sleep(2500)
		MouseClick("left",340,500) ;Confirm button
		Sleep(2500)
		$num+=1 ;Iterate by one
	WEnd
	$num = 0 ;Reset itr
	MouseClick("left",970,78) ;Close the window
	Sleep(4000)
EndFunc

Func FourthDungeon()
    MouseClick("left",800,500) ;Click fourth stage
	Sleep(500)
	MouseClick("left",800,555) ;Click fourth stage battle
	Sleep(7000)
    MouseClick("left",955,570) ;Skip button
	Sleep(2500)
    MouseClick("left",340,500) ;Confirm button
	Sleep(2500)
EndFunc

;16 count Dungeons
Func StandardDungeon()
    Sleep(1000)
	FirstDungeon()
	While $num < 16 ;Iterate n-1 times
		MouseClick("left",400,480) ;Click sequential stage
		Sleep(500)
		MouseClick("left",400,565) ;Click Battle
		Sleep(7000)
	    MouseClick("left",955,570) ;Skip button
	    Sleep(3000)
	    MouseClick("left",340,500) ;Confirm button
	    Sleep(2000)
		$num+=1 ;Iterate by one
	WEnd
	$num = 0 ;Reset itr
	MouseClick("left",970,78) ;Close the window
	Sleep(4000)
EndFunc

Func FirstDungeon()
	;MouseClick("left",420,60) ;Click Elite Dungeon
	;Sleep(500)
	MouseClick("left",205,500) ;Click first stage battle
	Sleep(2000)
	MouseClick("left",205,565) ;Click Battle
	Sleep(7000)
	MouseClick("left",955,570) ;Skip button
	Sleep(3000)
	MouseClick("left",340,500) ;Confirm button
	Sleep(2000)
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
