#Start at home page 

def clickThis(someReg,img):
    if someReg.exists(img,5):
        someReg.click(img)
    else:
        exit()

def check():
    clickThis(Region(342,236,108,81),"WhatsNew.png")
    wait(2)
    clickThis(Region(338,284,295,185),"1476356492241.png")

def skip():
    if Region(864,239,190,114).exists("Skip.png",5):
        Region(864,239,190,114).click("Skip.png")
        
while(1):
    check()
    skip()
    #A breakaway click in case Skip doesn't load in time
    click(Location(715,470))
    sleep(1)
    clickThis(Region(308,140,105,91),"MyPage.png")