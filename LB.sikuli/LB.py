def changeLine(arr):
    changeX = 607
    changeY = 643
    for char in arr:
        unitFormReg.wait("UnitFormation.png",20)
        click(Location(changeX,changeY))
        changeX += 109
        textReg.wait("ChangeIdols.png",20)
        if selectReg.exists(char):
            selectChar(char)

def selectChar(img):
    #Move the mouse away from the tooltips
    textReg.wait("ChangeIdols.png",20)
    hover(Location(570,185))
    match = selectReg.find(img)
    miniReg = Region(match.x,match.y,match.w,match.h+40)
    wait(1)
    miniReg.click("SmallChangeBtn.png")

def selectSlot():
    #Deprecated to reduce computation power
    #changeLine() sequentially changes all units in a Line
    return -1

def deleteRow():
    deleteX = 626
    deleteY = 643
    for i in range(4):
        unitFormReg.wait("UnitFormation.png",20)
        click(Location(deleteX,deleteY))
        deleteX += 109
        wait(2)

def replaceRinka():
    #Replace Rinka with NSeira
    
    #Go to Last section
    click(769,672)
    selectChar("NSeira.png")

def replaceNSeira():
    #Replace NSeira with Rinka
    return -1
#"LargeChangeBtn.png""Rinka.png"Pattern("DeleteBtn.png").similar(0.88)"FrontTab.png""RearTab.png""SmallChangeBtn.png""EmptySlot.png"
front = ["DivaMomona.png","SukuMomona.png","Nanami.png","Fuka.png"]
rear = ["Urara.png","Chiyo.png","Ryoko.png","Masumi.png"]
selectReg = Region(426,283,576,264)
unitFormReg = Region(415,434,136,38)
textReg = Region(532,236,126,26)

deleteRow()
changeLine(front)