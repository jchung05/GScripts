#Press Shift+Alt+C to escape
while True:
    if(Region(817,520,233,198).exists(Pattern("Error.png").similar(0.80)) or Region(754,439,381,276).exists("Error2.png")):
        type(Key.F5)
        wait(10)
        if(Region(513,595,328,120).exists("StartName.png")):
            click("StartName.png")
            wait(5)            
    #Look for new co-ops
    if(Region(441,400,81,76).exists(Pattern("NewComboCoOp.png").similar(0.80))):
        wait(.1)
        Region(441,400,81,76).click("NewComboCoOp.png")
        if(Region(595,325,246,362).exists(Pattern("New.png").similar(0.95))):
            newText = find(Pattern("New.png").similar(0.95))
            newRegion = Region(newText.getX(),newText.getY(),220,155)
            #Need to make an escape case here
            if(newRegion.exists("GoHelp.png")):
                newRegion.click("GoHelp.png")
                if(Region(597,561,237,98).exists("Persuade.png")):
                    Region(597,561,237,98).click("Persuade.png")
                    wait(3)
                    if(Region(897,252,126,84).exists(Pattern("SKIP.png").similar(0.50))):
                        Region(897,252,126,84).click(Pattern("SKIP.png").similar(0.50))
            wait(2)
        Region(310,142,107,98).click(Pattern("MyPage.png").similar(0.90))
        wait(2)
    #Go like a gacha and come back
    else:
        wait(.1)
        hover(Location(570,185))
        if(Region(510,226,111,90).exists("MainGacha.png")):
            click("MainGacha.png")
        else:
            Region(325,234,62,61).click("SideGacha.png")
        wait(5)
        Region(547,310,228,220).onVanish(Pattern("Connecting.png").similar(0.85),wait(.1))
        dragDrop(Location(995,340),Location(995,515))
        wait(2)
        if(Region(850,334,156,126).exists("Like.png")):
            click("Like.png")
        wait(2)
        Region(547,310,228,220).onVanish(Pattern("Connecting.png").similar(0.85))
        Region(310,142,107,98).click(Pattern("MyPage.png").similar(0.90))
        wait(1)