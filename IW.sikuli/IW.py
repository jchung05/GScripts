def checkGame():
   if(Region(817,520,233,198).exists(Pattern("Error.png").similar(0.80)) or Region(754,439,381,276).exists("Error2.png")):
        type(Key.F5)
        wait(10)
        if(Region(513,595,328,120).exists("StartName.png")):
            click("StartName.png")
            click("StartName.png")
            wait(5)       

def clickMyPage():
    if(Region(310,142,107,98).exists(Pattern("MyPage.png").similar(0.90),5)):
            Region(310,142,107,98).click(Pattern("MyPage.png").similar(0.90))
            wait(2)
    
#Press Shift+Alt+C to escape
while True:
    #checkGame()
    #Look for new co-ops
    if(Region(441,400,81,76).exists(Pattern("NewComboCoOp.png").similar(0.80),2)):
        Region(441,400,81,76).click("NewComboCoOp.png")
        if(Region(595,325,246,362).exists(Pattern("New.png").similar(0.95))):
            newText = find(Pattern("New.png").similar(0.95))
            newRegion = Region(newText.getX(),newText.getY(),220,155)
            #Need to make an escape case here
            if(newRegion.exists("GoHelp.png"),2):
                newRegion.click("GoHelp.png")
                if(Region(597,561,237,98).exists("Persuade.png"),2):
                    Region(597,561,237,98).click("Persuade.png")
                    if(Region(897,252,126,84).exists(Pattern("SKIP.png").similar(0.50)),3):
                        Region(897,252,126,84).click(Pattern("SKIP.png").similar(0.50))
                        wait(2)
        clickMyPage()
    #Go like a gacha and come back
    else:
        wait(.1)
        hover(Location(570,185))
        if(Region(510,226,111,90).exists("MainGacha.png",2)):
            click("MainGacha.png")
        elif(Region(325,234,62,61).exists("SideGacha.png",2)):
            click("SideGacha.png")
        wait(2)
        if(Region(416,230,92,36).exists("GachaText.png",20)):
            wait(2)
            dragDrop(Location(995,340),Location(995,515))
            if(Region(850,334,156,126).exists(Pattern("Like.png").similar(0.50),2)):
                click(Pattern("Like.png").similar(0.50))
                wait(4)
        clickMyPage()
        wait(1)