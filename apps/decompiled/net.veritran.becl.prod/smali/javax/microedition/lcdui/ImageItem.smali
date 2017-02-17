.class public Ljavax/microedition/lcdui/ImageItem;
.super Ljavax/microedition/lcdui/Item;
.source "ImageItem.java"


# static fields
.field public static final LAYOUT_CENTER:I = 0x3

.field public static final LAYOUT_DEFAULT:I = 0x0

.field public static final LAYOUT_LEFT:I = 0x1

.field public static final LAYOUT_NEWLINE_AFTER:I = 0x200

.field public static final LAYOUT_NEWLINE_BEFORE:I = 0x100

.field public static final LAYOUT_RIGHT:I = 0x2


# instance fields
.field altText:Ljava/lang/String;

.field private appearanceMode:I

.field img:Ljavax/microedition/lcdui/Image;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljavax/microedition/lcdui/Image;ILjava/lang/String;)V
    .locals 6
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "img"    # Ljavax/microedition/lcdui/Image;
    .param p3, "layout"    # I
    .param p4, "altText"    # Ljava/lang/String;

    .prologue
    .line 47
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Ljavax/microedition/lcdui/ImageItem;-><init>(Ljava/lang/String;Ljavax/microedition/lcdui/Image;ILjava/lang/String;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/microedition/lcdui/Image;ILjava/lang/String;I)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "img"    # Ljavax/microedition/lcdui/Image;
    .param p3, "layout"    # I
    .param p4, "altText"    # Ljava/lang/String;
    .param p5, "appearanceMode"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1}, Ljavax/microedition/lcdui/Item;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lorg/microemu/device/DeviceFactory;->getDevice()Lorg/microemu/device/Device;

    move-result-object v0

    invoke-interface {v0}, Lorg/microemu/device/Device;->getUIFactory()Lorg/microemu/device/ui/UIFactory;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/microemu/device/ui/UIFactory;->createImageStringItemUI(Ljavax/microedition/lcdui/Item;)Lorg/microemu/device/ui/ImageStringItemUI;

    move-result-object v0

    invoke-super {p0, v0}, Ljavax/microedition/lcdui/Item;->setUI(Lorg/microemu/device/ui/ItemUI;)V

    .line 56
    invoke-virtual {p0, p3}, Ljavax/microedition/lcdui/ImageItem;->setLayout(I)V

    .line 57
    if-eqz p5, :cond_0

    const/4 v0, 0x1

    if-eq p5, v0, :cond_0

    const/4 v0, 0x2

    if-eq p5, v0, :cond_0

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 62
    :cond_0
    invoke-virtual {p0, p2}, Ljavax/microedition/lcdui/ImageItem;->setImage(Ljavax/microedition/lcdui/Image;)V

    .line 63
    iput-object p4, p0, Ljavax/microedition/lcdui/ImageItem;->altText:Ljava/lang/String;

    .line 64
    iput p5, p0, Ljavax/microedition/lcdui/ImageItem;->appearanceMode:I

    .line 65
    return-void
.end method


# virtual methods
.method public getAltText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Ljavax/microedition/lcdui/ImageItem;->altText:Ljava/lang/String;

    return-object v0
.end method

.method public getAppearanceMode()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Ljavax/microedition/lcdui/ImageItem;->appearanceMode:I

    return v0
.end method

.method getHeight()I
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Ljavax/microedition/lcdui/ImageItem;->img:Ljavax/microedition/lcdui/Image;

    if-nez v0, :cond_0

    .line 103
    invoke-super {p0}, Ljavax/microedition/lcdui/Item;->getHeight()I

    move-result v0

    .line 105
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Ljavax/microedition/lcdui/Item;->getHeight()I

    move-result v0

    iget-object v1, p0, Ljavax/microedition/lcdui/ImageItem;->img:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getImage()Ljavax/microedition/lcdui/Image;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Ljavax/microedition/lcdui/ImageItem;->img:Ljavax/microedition/lcdui/Image;

    return-object v0
.end method

.method public getLayout()I
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Ljavax/microedition/lcdui/Item;->getLayout()I

    move-result v0

    return v0
.end method

.method paint(Ljavax/microedition/lcdui/Graphics;)I
    .locals 4
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    const/16 v2, 0x14

    const/4 v3, 0x0

    .line 110
    invoke-super {p0, p1}, Ljavax/microedition/lcdui/Item;->paintContent(Ljavax/microedition/lcdui/Graphics;)V

    .line 112
    iget-object v0, p0, Ljavax/microedition/lcdui/ImageItem;->img:Ljavax/microedition/lcdui/Image;

    if-eqz v0, :cond_1

    .line 113
    invoke-super {p0}, Ljavax/microedition/lcdui/Item;->getHeight()I

    move-result v0

    invoke-virtual {p1, v3, v0}, Ljavax/microedition/lcdui/Graphics;->translate(II)V

    .line 114
    iget v0, p0, Ljavax/microedition/lcdui/ImageItem;->layout:I

    if-eqz v0, :cond_0

    iget v0, p0, Ljavax/microedition/lcdui/ImageItem;->layout:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 115
    :cond_0
    iget-object v0, p0, Ljavax/microedition/lcdui/ImageItem;->img:Ljavax/microedition/lcdui/Image;

    invoke-virtual {p1, v0, v3, v3, v2}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    .line 123
    :goto_0
    invoke-super {p0}, Ljavax/microedition/lcdui/Item;->getHeight()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p1, v3, v0}, Ljavax/microedition/lcdui/Graphics;->translate(II)V

    .line 126
    :cond_1
    invoke-virtual {p0}, Ljavax/microedition/lcdui/ImageItem;->getHeight()I

    move-result v0

    return v0

    .line 116
    :cond_2
    iget v0, p0, Ljavax/microedition/lcdui/ImageItem;->layout:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 117
    iget-object v0, p0, Ljavax/microedition/lcdui/ImageItem;->img:Ljavax/microedition/lcdui/Image;

    iget-object v1, p0, Ljavax/microedition/lcdui/ImageItem;->owner:Ljavax/microedition/lcdui/Screen;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Screen;->getWidth()I

    move-result v1

    const/16 v2, 0x18

    invoke-virtual {p1, v0, v1, v3, v2}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    goto :goto_0

    .line 118
    :cond_3
    iget v0, p0, Ljavax/microedition/lcdui/ImageItem;->layout:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 119
    iget-object v0, p0, Ljavax/microedition/lcdui/ImageItem;->img:Ljavax/microedition/lcdui/Image;

    iget-object v1, p0, Ljavax/microedition/lcdui/ImageItem;->owner:Ljavax/microedition/lcdui/Screen;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Screen;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    const/16 v2, 0x11

    invoke-virtual {p1, v0, v1, v3, v2}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    goto :goto_0

    .line 121
    :cond_4
    iget-object v0, p0, Ljavax/microedition/lcdui/ImageItem;->img:Ljavax/microedition/lcdui/Image;

    invoke-virtual {p1, v0, v3, v3, v2}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    goto :goto_0
.end method

.method public setAltText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Ljavax/microedition/lcdui/ImageItem;->altText:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setImage(Ljavax/microedition/lcdui/Image;)V
    .locals 1
    .param p1, "img"    # Ljavax/microedition/lcdui/Image;

    .prologue
    .line 88
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-static {p1}, Ljavax/microedition/lcdui/Image;->createImage(Ljavax/microedition/lcdui/Image;)Ljavax/microedition/lcdui/Image;

    move-result-object p1

    .line 91
    :cond_0
    iput-object p1, p0, Ljavax/microedition/lcdui/ImageItem;->img:Ljavax/microedition/lcdui/Image;

    .line 92
    invoke-virtual {p0}, Ljavax/microedition/lcdui/ImageItem;->repaint()V

    .line 94
    iget-object v0, p0, Ljavax/microedition/lcdui/ImageItem;->ui:Lorg/microemu/device/ui/ItemUI;

    check-cast v0, Lorg/microemu/device/ui/ImageStringItemUI;

    invoke-interface {v0, p1}, Lorg/microemu/device/ui/ImageStringItemUI;->setImage(Ljavax/microedition/lcdui/Image;)V

    .line 95
    return-void
.end method

.method public setLayout(I)V
    .locals 0
    .param p1, "layout"    # I

    .prologue
    .line 98
    invoke-super {p0, p1}, Ljavax/microedition/lcdui/Item;->setLayout(I)V

    .line 99
    return-void
.end method

.method traverse(IIIZ)I
    .locals 3
    .param p1, "gameKeyCode"    # I
    .param p2, "top"    # I
    .param p3, "bottom"    # I
    .param p4, "action"    # Z

    .prologue
    const v1, 0x7fffffff

    .line 130
    invoke-static {}, Ljavax/microedition/lcdui/Font;->getDefaultFont()Ljavax/microedition/lcdui/Font;

    move-result-object v0

    .line 132
    .local v0, "f":Ljavax/microedition/lcdui/Font;
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 133
    if-lez p2, :cond_0

    .line 134
    invoke-virtual {v0}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v1

    rem-int v1, p2, v1

    if-nez v1, :cond_1

    .line 135
    invoke-virtual {v0}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v1

    neg-int v1, v1

    .line 155
    :cond_0
    :goto_0
    return v1

    .line 137
    :cond_1
    invoke-virtual {v0}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v1

    rem-int v1, p2, v1

    neg-int v1, v1

    goto :goto_0

    .line 143
    :cond_2
    const/4 v2, 0x6

    if-ne p1, v2, :cond_4

    .line 144
    invoke-virtual {p0}, Ljavax/microedition/lcdui/ImageItem;->getHeight()I

    move-result v2

    if-ge p3, v2, :cond_0

    .line 145
    invoke-virtual {p0}, Ljavax/microedition/lcdui/ImageItem;->getHeight()I

    move-result v1

    sub-int/2addr v1, p3

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 146
    invoke-virtual {p0}, Ljavax/microedition/lcdui/ImageItem;->getHeight()I

    move-result v1

    sub-int/2addr v1, p3

    goto :goto_0

    .line 148
    :cond_3
    invoke-virtual {v0}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v1

    goto :goto_0

    .line 155
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method
