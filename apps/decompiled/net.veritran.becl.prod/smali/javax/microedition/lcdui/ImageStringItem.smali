.class Ljavax/microedition/lcdui/ImageStringItem;
.super Ljavax/microedition/lcdui/Item;
.source "ImageStringItem.java"


# instance fields
.field img:Ljavax/microedition/lcdui/Image;

.field stringComponent:Ljavax/microedition/lcdui/StringComponent;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljavax/microedition/lcdui/Image;Ljava/lang/String;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "img"    # Ljavax/microedition/lcdui/Image;
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Ljavax/microedition/lcdui/Item;-><init>(Ljava/lang/String;)V

    .line 38
    new-instance v0, Ljavax/microedition/lcdui/StringComponent;

    invoke-direct {v0, p3}, Ljavax/microedition/lcdui/StringComponent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljavax/microedition/lcdui/ImageStringItem;->stringComponent:Ljavax/microedition/lcdui/StringComponent;

    .line 39
    invoke-virtual {p0, p2}, Ljavax/microedition/lcdui/ImageStringItem;->setImage(Ljavax/microedition/lcdui/Image;)V

    .line 40
    return-void
.end method


# virtual methods
.method getHeight()I
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Ljavax/microedition/lcdui/ImageStringItem;->img:Ljavax/microedition/lcdui/Image;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/microedition/lcdui/ImageStringItem;->img:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v0

    iget-object v1, p0, Ljavax/microedition/lcdui/ImageStringItem;->stringComponent:Ljavax/microedition/lcdui/StringComponent;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/StringComponent;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 73
    iget-object v0, p0, Ljavax/microedition/lcdui/ImageStringItem;->img:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v0

    .line 75
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljavax/microedition/lcdui/ImageStringItem;->stringComponent:Ljavax/microedition/lcdui/StringComponent;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/StringComponent;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getImage()Ljavax/microedition/lcdui/Image;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Ljavax/microedition/lcdui/ImageStringItem;->img:Ljavax/microedition/lcdui/Image;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Ljavax/microedition/lcdui/ImageStringItem;->stringComponent:Ljavax/microedition/lcdui/StringComponent;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/StringComponent;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method invertPaint(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 82
    iget-object v0, p0, Ljavax/microedition/lcdui/ImageStringItem;->stringComponent:Ljavax/microedition/lcdui/StringComponent;

    invoke-virtual {v0, p1}, Ljavax/microedition/lcdui/StringComponent;->invertPaint(Z)V

    .line 83
    return-void
.end method

.method paint(Ljavax/microedition/lcdui/Graphics;)I
    .locals 4
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    const/4 v1, 0x0

    .line 88
    iget-object v2, p0, Ljavax/microedition/lcdui/ImageStringItem;->stringComponent:Ljavax/microedition/lcdui/StringComponent;

    if-nez v2, :cond_1

    move v0, v1

    .line 103
    :cond_0
    :goto_0
    return v0

    .line 92
    :cond_1
    iget-object v2, p0, Ljavax/microedition/lcdui/ImageStringItem;->img:Ljavax/microedition/lcdui/Image;

    if-eqz v2, :cond_2

    .line 93
    iget-object v2, p0, Ljavax/microedition/lcdui/ImageStringItem;->img:Ljavax/microedition/lcdui/Image;

    const/16 v3, 0x14

    invoke-virtual {p1, v2, v1, v1, v3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    .line 94
    iget-object v2, p0, Ljavax/microedition/lcdui/ImageStringItem;->img:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {p1, v2, v1}, Ljavax/microedition/lcdui/Graphics;->translate(II)V

    .line 97
    :cond_2
    iget-object v2, p0, Ljavax/microedition/lcdui/ImageStringItem;->stringComponent:Ljavax/microedition/lcdui/StringComponent;

    invoke-virtual {v2, p1}, Ljavax/microedition/lcdui/StringComponent;->paint(Ljavax/microedition/lcdui/Graphics;)I

    move-result v0

    .line 99
    .local v0, "y":I
    iget-object v2, p0, Ljavax/microedition/lcdui/ImageStringItem;->img:Ljavax/microedition/lcdui/Image;

    if-eqz v2, :cond_0

    .line 100
    iget-object v2, p0, Ljavax/microedition/lcdui/ImageStringItem;->img:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v2

    neg-int v2, v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p1, v2, v1}, Ljavax/microedition/lcdui/Graphics;->translate(II)V

    goto :goto_0
.end method

.method public setImage(Ljavax/microedition/lcdui/Image;)V
    .locals 2
    .param p1, "img"    # Ljavax/microedition/lcdui/Image;

    .prologue
    .line 51
    iput-object p1, p0, Ljavax/microedition/lcdui/ImageStringItem;->img:Ljavax/microedition/lcdui/Image;

    .line 52
    iget-object v0, p0, Ljavax/microedition/lcdui/ImageStringItem;->img:Ljavax/microedition/lcdui/Image;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Ljavax/microedition/lcdui/ImageStringItem;->stringComponent:Ljavax/microedition/lcdui/StringComponent;

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/StringComponent;->setWidthDecreaser(I)V

    .line 55
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 66
    iget-object v0, p0, Ljavax/microedition/lcdui/ImageStringItem;->stringComponent:Ljavax/microedition/lcdui/StringComponent;

    invoke-virtual {v0, p1}, Ljavax/microedition/lcdui/StringComponent;->setText(Ljava/lang/String;)V

    .line 67
    return-void
.end method
