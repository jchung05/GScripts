; Manually switch into focus of Chrome
Sleep(5000)

Global $Paused
HotKeySet("{ESC}", "Terminate")
HotKeySet("q", "Pause") 
HotKeySet("z", "SkipLoop")

While 1
	MouseClick("left", 780, 402, 1) ;Continue
	Sleep(5000)
	MouseClick("left", 945, 595, 2) ;More
	Sleep(3000)
	MouseClick("left", 945, 594, 2) ;More
	Sleep(3000)
	MouseClick("left", 945, 595, 2) ;More Backup
	Sleep(2000)
	MouseClick("left", 1045, 437, 1) ;More
	Sleep(2000)
	MouseClick("left", 945, 595, 1) ;Fight!
	Sleep(5000)
	
	MouseClick("left", 760, 322, 1) ;Start Battle
	Sleep(7500)
	MouseClick("left", 760, 452, 1) ;Item
	Sleep(2000)
	MouseClick("left", 975, 532, 1) ;Sword Master Emblem
	Sleep(4000)
	
	$loopskip = 0
	For $i = 18 To 1 Step -1
		MouseClick("left", 760, 322, 1) ;Attack
		Sleep(7500)
		MouseClick("left", 760, 322, 1) ;Attack
		Sleep(500)
		If $loopskip == 1 Then
			ExitLoop
		EndIf
	Next
	MouseClick("left", 772, 566, 2) ;Next??
	Sleep(1000)
	MouseClick("left", 772, 565, 2) ;Z-Tokens??
	Sleep(1000)
	MouseClick("left", 770, 442, 1) ;Level Up??
	Sleep(2000)
	
	MouseClick("left", 865, 550, 1) ;Victory!
	Sleep(2000)
	MouseClick("left", 950, 595, 1) ;More
	Sleep(2000)
	MouseClick("left", 1030, 470, 1) ;More
	Sleep(2000)
	MouseClick("left", 990, 445, 1) ;More
	Sleep(2000)
	MouseClick("left", 850, 565, 1) ;More
	Sleep(2000)
	MouseClick("left", 995, 450, 1) ;More
	Sleep(2000)
	MouseClick("left", 870, 550, 1) ;Yay!
	Sleep(2000)
	MouseClick("left", 1025, 550, 1) ;Battle Tyrant King Again
	Sleep(5000)
Wend

Func Pause()
    $Paused = NOT $Paused
    While $Paused
        sleep(100)
        ToolTip('Script is "Paused"',500,500)
    WEnd
    ToolTip("")
EndFunc

Func SkipLoop()
	$loopskip = 1
EndFunc

Func Terminate()
	Exit
EndFunc