.class public Ljavax/microedition/lcdui/StringItem;
.super Ljavax/microedition/lcdui/Item;
.source "StringItem.java"


# instance fields
.field private stringComponent:Ljavax/microedition/lcdui/StringComponent;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljavax/microedition/lcdui/StringItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "appearanceMode"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1}, Ljavax/microedition/lcdui/Item;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-static {}, Lorg/microemu/device/DeviceFactory;->getDevice()Lorg/microemu/device/Device;

    move-result-object v0

    invoke-interface {v0}, Lorg/microemu/device/Device;->getUIFactory()Lorg/microemu/device/ui/UIFactory;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/microemu/device/ui/UIFactory;->createImageStringItemUI(Ljavax/microedition/lcdui/Item;)Lorg/microemu/device/ui/ImageStringItemUI;

    move-result-object v0

    invoke-super {p0, v0}, Ljavax/microedition/lcdui/Item;->setUI(Lorg/microemu/device/ui/ItemUI;)V

    .line 42
    new-instance v0, Ljavax/microedition/lcdui/StringComponent;

    invoke-direct {v0}, Ljavax/microedition/lcdui/StringComponent;-><init>()V

    iput-object v0, p0, Ljavax/microedition/lcdui/StringItem;->stringComponent:Ljavax/microedition/lcdui/StringComponent;

    .line 43
    invoke-virtual {p0, p2}, Ljavax/microedition/lcdui/StringItem;->setText(Ljava/lang/String;)V

    .line 45
    return-void
.end method


# virtual methods
.method public getAppearanceMode()I
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public getFont()Ljavax/microedition/lcdui/Font;
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Ljavax/microedition/lcdui/Font;->getDefaultFont()Ljavax/microedition/lcdui/Font;

    move-result-object v0

    return-object v0
.end method

.method getHeight()I
    .locals 2

    .prologue
    .line 79
    invoke-super {p0}, Ljavax/microedition/lcdui/Item;->getHeight()I

    move-result v0

    iget-object v1, p0, Ljavax/microedition/lcdui/StringItem;->stringComponent:Ljavax/microedition/lcdui/StringComponent;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/StringComponent;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Ljavax/microedition/lcdui/StringItem;->stringComponent:Ljavax/microedition/lcdui/StringComponent;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/StringComponent;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method paint(Ljavax/microedition/lcdui/Graphics;)I
    .locals 2
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-super {p0, p1}, Ljavax/microedition/lcdui/Item;->paintContent(Ljavax/microedition/lcdui/Graphics;)V

    .line 85
    invoke-super {p0}, Ljavax/microedition/lcdui/Item;->getHeight()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljavax/microedition/lcdui/Graphics;->translate(II)V

    .line 86
    iget-object v0, p0, Ljavax/microedition/lcdui/StringItem;->stringComponent:Ljavax/microedition/lcdui/StringComponent;

    invoke-virtual {v0, p1}, Ljavax/microedition/lcdui/StringComponent;->paint(Ljavax/microedition/lcdui/Graphics;)I

    .line 87
    invoke-super {p0}, Ljavax/microedition/lcdui/Item;->getHeight()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p1, v1, v0}, Ljavax/microedition/lcdui/Graphics;->translate(II)V

    .line 89
    invoke-virtual {p0}, Ljavax/microedition/lcdui/StringItem;->getHeight()I

    move-result v0

    return v0
.end method

.method public setFont(Ljavax/microedition/lcdui/Font;)V
    .locals 0
    .param p1, "font"    # Ljavax/microedition/lcdui/Font;

    .prologue
    .line 59
    return-void
.end method

.method public setPreferredSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 63
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 70
    iget-object v0, p0, Ljavax/microedition/lcdui/StringItem;->ui:Lorg/microemu/device/ui/ItemUI;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.microemu.android.device.ui.AndroidImageStringItemUI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Ljavax/microedition/lcdui/StringItem;->ui:Lorg/microemu/device/ui/ItemUI;

    check-cast v0, Lorg/microemu/device/ui/ImageStringItemUI;

    invoke-interface {v0, p1}, Lorg/microemu/device/ui/ImageStringItemUI;->setText(Ljava/lang/String;)V

    .line 74
    :cond_0
    iget-object v0, p0, Ljavax/microedition/lcdui/StringItem;->stringComponent:Ljavax/microedition/lcdui/StringComponent;

    invoke-virtual {v0, p1}, Ljavax/microedition/lcdui/StringComponent;->setText(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Ljavax/microedition/lcdui/StringItem;->repaint()V

    .line 76
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

    .line 93
    invoke-static {}, Ljavax/microedition/lcdui/Font;->getDefaultFont()Ljavax/microedition/lcdui/Font;

    move-result-object v0

    .line 95
    .local v0, "f":Ljavax/microedition/lcdui/Font;
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 96
    if-lez p2, :cond_0

    .line 97
    invoke-virtual {v0}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v1

    rem-int v1, p2, v1

    if-nez v1, :cond_1

    .line 98
    invoke-virtual {v0}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v1

    neg-int v1, v1

    .line 118
    :cond_0
    :goto_0
    return v1

    .line 100
    :cond_1
    invoke-virtual {v0}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v1

    rem-int v1, p2, v1

    neg-int v1, v1

    goto :goto_0

    .line 106
    :cond_2
    const/4 v2, 0x6

    if-ne p1, v2, :cond_4

    .line 107
    invoke-virtual {p0}, Ljavax/microedition/lcdui/StringItem;->getHeight()I

    move-result v2

    if-ge p3, v2, :cond_0

    .line 108
    invoke-virtual {p0}, Ljavax/microedition/lcdui/StringItem;->getHeight()I

    move-result v1

    sub-int/2addr v1, p3

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 109
    invoke-virtual {p0}, Ljavax/microedition/lcdui/StringItem;->getHeight()I

    move-result v1

    sub-int/2addr v1, p3

    goto :goto_0

    .line 111
    :cond_3
    invoke-virtual {v0}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v1

    goto :goto_0

    .line 118
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method
