notBS = Pattern("1402407466836.png").exact()
isBS = Pattern("1402407620203.png").exact()
homeB = "1402405041463.png"
pkImg = "1402404135367.png"
facebook = "1402404797913.png"
confirm = "1402405121748.png"
enterLog = "1402405153715.png"
announceX = "1402405693411.png"
vipX = "1402419765089.png"
bossSymbolPir = "1402015901213.png"
bossSymbolDem = []
bossSymbolDra = "1402481227272.png"
closeAnn = "1402015879685.png"
activeBoss = Pattern("1402420923794.png").similar(0.93)
zeroCD = Pattern("1402412100345.png").exact()
enterB = "1402409064929.png"
challengeB = "1402421039795.png"
skipB = Pattern("1402421067527.png").similar(0.60)
confirmB = "1402421142394.png"
claimB = "1402421174901.png"

def checkToolBar( ):
    hover(Location(20,767))
    sleep(2)
    try:
        if(exists(notBS)):
            click(notBS)
            sleep(1)
    except FindFailed:
        pass

def findStuff( item ):
    try:
        find(item)
        click(item)
        sleep(1)
    except FindFailed:
        pass

def OpenPK( ):
    click(pkImg)
    try:
        wait(facebook,30)
        click(facebook)
        sleep(2)
    except FindFailed:
        pass
    findStuff(confirm)
    try:
        find(enterLog)
        click(enterLog)
        sleep(5)
    except FindFailed:
        pass
    findStuff(announceX)
    findStuff(vipX)

def clickSymbol( ):
    try:
        find(bossSymbolDra)
        click(bossSymbolDra)
        sleep(2)
    except FindFailed:
        pass

def clickBoss( ):
    try:
        wait(zeroCD,300)
        wait(activeBoss,30000)
        tempReg = Region(find(activeBoss))
        tempReg.click(enterB)
        sleep(1)

    except FindFailed:
        pass

def attackBoss( ):
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

while(1):
   # checkToolBar( )
    #try:
        #find(pkImg)
        #OpenPK( )
   # except FindFailed:
        #Error here if other windows are open
        #click(homeB)
        #OpenPK( )  
    clickSymbol( )
    clickBoss( )
    attackBoss( )
    try:
        click(closeAnn)
        click(closeAnn)
    except FindFailed:
        pass