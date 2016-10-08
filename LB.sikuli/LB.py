def replaceRinka():
    #Replace Rinka with NSeira
    return -1

def selectChar(img):
    match = selectRegion.find(img)
    miniRegion = Region(match.x,match.y,match.w,match.h+40)
    wait(1)
    miniRegion.click("SmallChangeBtn.png")

    
#"LargeChangeBtn.png""NSeira.png""Rinka.png"Pattern("DeleteBtn.png").similar(0.88)"FrontTab.png""RearTab.png""SmallChangeBtn.png"
front = ["DivaMomona.png","SukuMomona.png","1475924352569.png","Fuka.png"]
rear = ["Urara.png","Chiyo.png","Ryoko.png","Masumi.png"]
selectRegion = Region(426,283,576,264)
for char in front:
    #Move the mouse away from the tooltips
    hover(Location(570,185))
    wait(3)
#    hover(char)
    if selectRegion.exists(char):
        selectChar(char)
    wait(3)