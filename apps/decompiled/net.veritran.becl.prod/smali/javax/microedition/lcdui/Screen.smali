.class public abstract Ljavax/microedition/lcdui/Screen;
.super Ljavax/microedition/lcdui/Displayable;
.source "Screen.java"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Ljavax/microedition/lcdui/Displayable;-><init>(Ljava/lang/String;)V

    .line 35
    return-void
.end method


# virtual methods
.method hideNotify()V
    .locals 0

    .prologue
    .line 60
    invoke-super {p0}, Ljavax/microedition/lcdui/Displayable;->hideNotify()V

    .line 61
    return-void
.end method

.method keyPressed(I)V
    .locals 5
    .param p1, "keyCode"    # I

    .prologue
    .line 49
    invoke-static {p1}, Ljavax/microedition/lcdui/Display;->getGameAction(I)I

    move-result v0

    .line 51
    .local v0, "gameKeyCode":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 52
    :cond_0
    iget v1, p0, Ljavax/microedition/lcdui/Screen;->viewPortY:I

    iget v2, p0, Ljavax/microedition/lcdui/Screen;->viewPortY:I

    iget v3, p0, Ljavax/microedition/lcdui/Screen;->viewPortY:I

    iget v4, p0, Ljavax/microedition/lcdui/Screen;->viewPortHeight:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v0, v2, v3}, Ljavax/microedition/lcdui/Screen;->traverse(III)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Ljavax/microedition/lcdui/Screen;->viewPortY:I

    .line 53
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Screen;->repaint()V

    .line 55
    :cond_1
    return-void
.end method

.method keyRepeated(I)V
    .locals 0
    .param p1, "keyCode"    # I

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Ljavax/microedition/lcdui/Screen;->keyPressed(I)V

    .line 67
    return-void
.end method

.method final paint(Ljavax/microedition/lcdui/Graphics;)V
    .locals 8
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 72
    const/4 v0, 0x0

    .line 75
    .local v0, "contentHeight":I
    iget v3, p0, Ljavax/microedition/lcdui/Screen;->viewPortY:I

    if-nez v3, :cond_1

    .line 76
    iget-object v3, p0, Ljavax/microedition/lcdui/Screen;->currentDisplay:Ljavax/microedition/lcdui/Display;

    invoke-virtual {v3, v6}, Ljavax/microedition/lcdui/Display;->setScrollUp(Z)V

    .line 81
    :goto_0
    const/16 v3, 0xff

    invoke-virtual {p1, v3}, Ljavax/microedition/lcdui/Graphics;->setGrayScale(I)V

    .line 82
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Screen;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Ljavax/microedition/lcdui/Screen;->getHeight()I

    move-result v4

    invoke-virtual {p1, v6, v6, v3, v4}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    .line 84
    invoke-virtual {p1, v6}, Ljavax/microedition/lcdui/Graphics;->setGrayScale(I)V

    .line 87
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Screen;->getTicker()Ljavax/microedition/lcdui/Ticker;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 88
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Screen;->getTicker()Ljavax/microedition/lcdui/Ticker;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljavax/microedition/lcdui/Ticker;->paintContent(Ljavax/microedition/lcdui/Graphics;)I

    move-result v3

    add-int/2addr v0, v3

    .line 91
    :cond_0
    invoke-virtual {p1, v6, v0}, Ljavax/microedition/lcdui/Graphics;->translate(II)V

    .line 92
    move v2, v0

    .line 96
    .local v2, "translatedY":I
    new-instance v1, Ljavax/microedition/lcdui/StringComponent;

    invoke-virtual {p0}, Ljavax/microedition/lcdui/Screen;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljavax/microedition/lcdui/StringComponent;-><init>(Ljava/lang/String;)V

    .line 97
    .local v1, "title":Ljavax/microedition/lcdui/StringComponent;
    invoke-virtual {v1, p1}, Ljavax/microedition/lcdui/StringComponent;->paint(Ljavax/microedition/lcdui/Graphics;)I

    move-result v3

    add-int/2addr v0, v3

    .line 98
    invoke-virtual {v1}, Ljavax/microedition/lcdui/StringComponent;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Ljavax/microedition/lcdui/Screen;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Ljavax/microedition/lcdui/StringComponent;->getHeight()I

    move-result v5

    invoke-virtual {p1, v6, v3, v4, v5}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    .line 99
    add-int/lit8 v0, v0, 0x1

    .line 101
    sub-int v3, v0, v2

    invoke-virtual {p1, v6, v3}, Ljavax/microedition/lcdui/Graphics;->translate(II)V

    .line 102
    move v2, v0

    .line 104
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Screen;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Ljavax/microedition/lcdui/Screen;->getHeight()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-virtual {p1, v6, v6, v3, v4}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    .line 105
    iget v3, p0, Ljavax/microedition/lcdui/Screen;->viewPortY:I

    neg-int v3, v3

    invoke-virtual {p1, v6, v3}, Ljavax/microedition/lcdui/Graphics;->translate(II)V

    .line 106
    invoke-virtual {p0, p1}, Ljavax/microedition/lcdui/Screen;->paintContent(Ljavax/microedition/lcdui/Graphics;)I

    move-result v3

    add-int/2addr v0, v3

    .line 107
    iget v3, p0, Ljavax/microedition/lcdui/Screen;->viewPortY:I

    invoke-virtual {p1, v6, v3}, Ljavax/microedition/lcdui/Graphics;->translate(II)V

    .line 109
    iget v3, p0, Ljavax/microedition/lcdui/Screen;->viewPortY:I

    sub-int v3, v0, v3

    invoke-virtual {p0}, Ljavax/microedition/lcdui/Screen;->getHeight()I

    move-result v4

    if-le v3, v4, :cond_2

    .line 110
    iget-object v3, p0, Ljavax/microedition/lcdui/Screen;->currentDisplay:Ljavax/microedition/lcdui/Display;

    invoke-virtual {v3, v7}, Ljavax/microedition/lcdui/Display;->setScrollDown(Z)V

    .line 114
    :goto_1
    neg-int v3, v2

    invoke-virtual {p1, v6, v3}, Ljavax/microedition/lcdui/Graphics;->translate(II)V

    .line 115
    return-void

    .line 78
    .end local v1    # "title":Ljavax/microedition/lcdui/StringComponent;
    .end local v2    # "translatedY":I
    :cond_1
    iget-object v3, p0, Ljavax/microedition/lcdui/Screen;->currentDisplay:Ljavax/microedition/lcdui/Display;

    invoke-virtual {v3, v7}, Ljavax/microedition/lcdui/Display;->setScrollUp(Z)V

    goto :goto_0

    .line 112
    .restart local v1    # "title":Ljavax/microedition/lcdui/StringComponent;
    .restart local v2    # "translatedY":I
    :cond_2
    iget-object v3, p0, Ljavax/microedition/lcdui/Screen;->currentDisplay:Ljavax/microedition/lcdui/Display;

    invoke-virtual {v3, v6}, Ljavax/microedition/lcdui/Display;->setScrollDown(Z)V

    goto :goto_1
.end method

.method abstract paintContent(Ljavax/microedition/lcdui/Graphics;)I
.end method

.method repaint()V
    .locals 0

    .prologue
    .line 123
    invoke-super {p0}, Ljavax/microedition/lcdui/Displayable;->repaint()V

    .line 124
    return-void
.end method

.method scroll(I)V
    .locals 4
    .param p1, "gameKeyCode"    # I

    .prologue
    .line 39
    iget v0, p0, Ljavax/microedition/lcdui/Screen;->viewPortY:I

    iget v1, p0, Ljavax/microedition/lcdui/Screen;->viewPortY:I

    iget v2, p0, Ljavax/microedition/lcdui/Screen;->viewPortY:I

    iget v3, p0, Ljavax/microedition/lcdui/Screen;->viewPortHeight:I

    add-int/2addr v2, v3

    invoke-virtual {p0, p1, v1, v2}, Ljavax/microedition/lcdui/Screen;->traverse(III)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Ljavax/microedition/lcdui/Screen;->viewPortY:I

    .line 40
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Screen;->repaint()V

    .line 41
    return-void
.end method

.method showNotify()V
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    iput v0, p0, Ljavax/microedition/lcdui/Screen;->viewPortY:I

    .line 131
    invoke-super {p0}, Ljavax/microedition/lcdui/Displayable;->showNotify()V

    .line 132
    return-void
.end method

.method abstract traverse(III)I
.end method
