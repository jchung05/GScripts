WinActivate("BlueStacks App Player for Windows (beta-1)") ;Name of Bluestacks window
Opt("MouseCoordMode",1) ;Using absolute coordinates, otherwise try 1 for absolute
HotKeySet("{BACKSPACE}", "Terminate") ;Backspace to terminate the script when it runs
HotKeySet("{SPACE}", "TogglePause") ;Space to pause the script when it's running
Global $Paused

Global $num = 0 ;Global itr

;Please make sure you have 300 Action Points or this will fail
MouseClick("left",40,335) ;Click Demon Campus
Sleep(3000)
MouseClick("left",120,535) ;Press More to return to map 1
Sleep(2000)
MouseClickDrag("left",50,330,1019,330)
Sleep(1000)

MouseClick("left",505,430) ;Military Camp
Sleep(3000)
CollectGuild()
MouseClick("left",300,360) ;Mire
Sleep(3000)
CollectGuild()
MouseClick("left",320,240) ;Wasteland
Sleep(3000)
CollectGuild()
MouseClick("left",530,250) ;Worksite
Sleep(3000)
CollectGuild()
MouseClick("left",715,230) ;Monument
Sleep(3000)
CollectGuild()
MouseClick("left",760,145) ;Flatlands
Sleep(3000)
CollectGuild()
MouseClick("left",335,350) ;Stronghold
Sleep(3000)
CollectGuild()
MouseClick("left",705,320) ;Trail
Sleep(3000)
CollectGuild()
MouseClick("left",680,370) ;Big Bridge
Sleep(3000)
CollectGuild()
MouseClick("left",840,200) ;Mountain
Sleep(3000)
CollectGuild()

Sleep(1000)
MouseClick("left",905,530) ;Press More to return to map 2
MouseClickDrag("left",50,330,1019,330)
Sleep(1000)

MouseClick("left",500,510) ;Demon Crystal Mine
Sleep(1000)
MouseClick("left",140,470) ;CHANGE THIS TO YOUR GUILD MINE
MouseClick("left",655,570) ;Rewards
MouseClick("left",945,80) ;Close

MouseClick("left",265,470) ;Peak
Sleep(3000)
CollectGuild()
MouseClick("left",210,270) ;Campground
Sleep(3000)
CollectGuild()
MouseClick("left",445,315) ;Temple
Sleep(3000)
CollectGuild()
MouseClick("left",650,195) ;Church
Sleep(3000)
CollectGuild()
MouseClick("left",760,265) ;Tower of Death
Sleep(3000)
CollectGuild()
MouseClick("left",705,225) ;Lake
Sleep(3000)
CollectGuild()
MouseClick("left",760,170) ;Arena
Sleep(3000)
CollectGuild()
MouseClick("left",830,330) ;The Wall
Sleep(3000)
CollectGuild()

MouseClick("left",680,435) ;Castle of Green
Sleep(3000)
CollectGuild()
MouseClick("left",365,505) ;Abyss
Sleep(3000)
CollectGuild()

AutoDungeon()

Sleep(180000)
MouseClick("left",945,80) ;Close
Sleep(500)
MouseClick("left",945,80) ;Close
Sleep(500)
MouseClick("left",100,120) ;Return to Main
Sleep(5000)
Exit(1)

Func AutoDungeon()
    MouseClick("left",830,330) ;Click a dungeon (The Wall)
	Sleep(3000)
	MouseClick("left",805,85) ;Click Auto-Play
	Sleep(500)
	FiveSetClick()
	Sleep(500)
	MouseClickDrag("left",145,481,145,250) ;Scroll
	Sleep(500)
	MouseClickDrag("left",145,307,145,250)
	Sleep(500)
	FiveSetClick()
	MouseClickDrag("left",145,481,145,250) ;Scroll
	Sleep(500)
	MouseClickDrag("left",145,307,145,250)
	Sleep(500)
	FiveSetClick()
	MouseClickDrag("left",145,481,145,250) ;Scroll
	Sleep(500)
	MouseClickDrag("left",145,307,145,250)
	Sleep(500)
	FiveSetClick()
	MouseClick("left",720,570) ;Click Start Auto-Play
EndFunc

Func FiveSetClick()
    MouseClick("left",145,250) ;Click first map
	Sleep(500)
	ModFourDungeon()
	MouseClick("left",145,307) ;Click second map
	Sleep(500)
	ModFourDungeon()
	MouseClick("left",145,365) ;Click third map
	Sleep(500)
	ModFourDungeon()
	MouseClick("left",145,425) ;Click fourth map
	Sleep(500)
	ModFourDungeon()
	MouseClick("left",145,481) ;Click fifth map
	Sleep(500)
	ModFourDungeon()
EndFunc

Func ModFourDungeon()
	MouseClick("left",260,255) ;4
	Sleep(250)
	MouseClick("left",450,300) ;8
	Sleep(250)
	MouseClick("left",630,345) ;12
	Sleep(250)
	MouseClick("left",260,440) ;16
	Sleep(250)
	MouseClick("left",505,500) ;Click Add
	Sleep(250)
EndFunc

Func CollectGuild()
	MouseClick("left",340,85) ;Click Elite Dungeon
	Sleep(500)
	MouseClick("left",765,80) ;Click Claim
	Sleep(500)
	MouseClick("left",945,80) ;Close
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
