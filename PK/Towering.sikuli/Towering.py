bossSymbolPir = "1402015901213.png"
bossSymbolDem = "1402617720982.png"
bossSymbolDra = "1402481227272.png"
closeAnn = "1402015879685.png"

#Tower
####Need to get bottom 0-9 cases on x/9999
courage = []
####Priority item
####Take into account non-bottom boss occurrences (first, second, etc)
bossFound = "1402015046105.png"
awakening = "1402973174225.png"
####
towerB = Pattern("1402408725845.png").exact()
bossB = Pattern("1402412252025.png").exact()
towerEnterPir = Pattern("1402015543995.png").exact()
ltowerEnterPir = Pattern("1402015506642.png").exact()
towerEnterDem = Pattern("1402617055670.png").similar(0.96)
ltowerEnterDem = Pattern("1402617649871.png").similar(0.96)
towerEnterDra = Pattern("1402481277557.png").exact()
ltowerEnterDra = Pattern("1402481305938.png").exact() #Not the correct image
upArrow = "1402410409562.png"
downArrow = "1402410395661.png"
bottomOfList = "1402619971804.png"
bottomItem = "1402620075368.png"
enterB = "1402409064929.png"
fightB = "1402015628795.png"
autoplayB = "1402015677228.png"
startB = "1402015694324.png"
endB = "1402015743352.png"
bossEnter = "1402413051829.png"
myBoss = Pattern("1402412986501.png").similar(0.84)
zeroCD = Pattern("1402412100345.png").exact()
challengeB = "1402421039795.png"
skipB = Pattern("1402421067527.png").similar(0.60)
confirmB = "1402421142394.png"
claimB = "1402421174901.png"

#Boss
####How will you find active Bosses? <Friend>
bossEnter = []
skip = []
claim = []
confirm = []

def clickBoss( ):
    try:
        find(bossSymbolDem)
        click(bossSymbolDem)
        sleep(2)
    except FindFailed:
        pass

def attackMyBoss( ):
    try:
        wait(zeroCD,300)
        tempReg = Region(find(myBoss))
        tempReg.click(enterB)
        sleep(1)

    except FindFailed:
        pass

def findMyBoss( ):
    try:
        wait(bossFound,600)
        click(endB)
        sleep(1)
        click(closeAnn)
        click(closeAnn)
        sleep(1)
        click(bossB)
    except FindFailed:
        pass

def clickAuto( ):
    try:
        click(fightB)
        sleep(1)
        click(autoplayB)
        sleep(.5)
        click(startB)
    except FindFailed:
        pass

def hitBoss( ):
    try:
        wait(challengeB,300)
        click(challengeB)
        sleep(4)
        click(skipB)
        sleep(1)
        click(confirmB)
        sleep(2)
    except FindFailed:
        pass
    try:
        wait(claimB,600)
        click(claimB)
        sleep(1)
    except FindFailed:
        pass

def climbTow( ):
    try:
        find(towerB)
        click(towerB)
        sleep(1)
    except FindFailed:
        pass
    if(exists(ltowerEnterDem)):
        try:
            tempReg = Region(find(ltowerEnterDem))
            tempReg.click(enterB)
            dragDrop(downArrow,upArrow)
            sleep(.5)
            try:
                tempReg = Region(find(bottomOfList))
                tempReg.click(bottomItem)
            except FindFailed:
                pass
#Check for Floor 15 here
            clickAuto( )
            findMyBoss( )
            attackMyBoss( )
            hitBoss( )
        except FindFailed:
            pass
    else:
        try:
            tempReg = Region(find(towerEnterDem))
            tempReg.click(enterB)
            dragDrop(downArrow,upArrow)
            sleep(.5)
            try:
                tempReg = Region(find(bottomOfList))
                tempReg.click(bottomItem)
            except FindFailed:
                pass
#Check for Floor 30 here
            clickAuto( )
            findMyBoss( )
            attackMyBoss( )
            hitBoss( )
        except FindFailed:
            pass

while(1):
    clickBoss( )
    climbTow( )
    try:
        click(closeAnn)
        click(closeAnn)
    except FindFailed:
        pass