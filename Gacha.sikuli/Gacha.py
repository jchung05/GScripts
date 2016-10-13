#The first draw 10 will need to be manually done
#Then this script will loop until it cannot draw anymore

def skipAndClick():
    Region(864,239,190,114).wait("Skip.png",20)
    Region(864,239,190,114).click("Skip.png")
    wait(3)
    click(Location(715,470))
    Region(813,620,184,77).wait("DrawAgain.png",20)

def drawAgain():
    click("DrawAgain.png")
    if Region(614,434,207,78).exists("Draw10.png",3):
        Region(614,434,207,78).click("Draw10.png")
    else:
        exit()

def firstDraw():
    Region(527,232,79,83).click("MainGacha.png")
    Region(414,264,605,48).wait("Normal.png",20)
    Region(414,264,605,48).click("Normal.png")
    Region(414,264,605,48).wait("NormalSelected.png",20)
    if Region(717,456,262,69).exists("Draw10.png",3):
        Region(717,456,262,69).click("Draw10.png")
    else:
        exit()

firstDraw()
skipAndClick()
wait(5)
while(Region(813,620,184,77).exists("DrawAgain.png")):
    drawAgain()
    skipAndClick()