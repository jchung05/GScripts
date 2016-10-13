#Start at home page 

def clickThis(someReg,img):
    if someReg.exists(img,7):
        someReg.click(img)
    else:
        exit()


def noExit(someReg,img):
    if someReg.exists(img,7):
        someReg.click(img)

def check(img):
    clickThis(Region(342,236,108,81),"WhatsNew.png")
    wait(2)
    clickThis(Region(338,284,295,185),img)

def skip():
    if Region(864,239,190,114).exists("Skip.png",5):
        Region(864,239,190,114).click("Skip.png")

def unclaimedMacro():
    while(1):
        check("Unclaimed.png")
        noExit(Region(864,239,190,114),"Skip.png")
        #A breakaway click in case Skip doesn't load in time
        click(Location(715,470))
        sleep(1)
        clickThis(Region(308,140,105,91),"MyPage.png")

def receiveGifts():
    check("1476388799525.png")
    noExit(Region(619,306,195,55),"1476388895704.png")
    while(1):
        clickThis(Region(612,340,210,65),"1476389190498.png")
    
unclaimedMacro()
#receiveGifts()