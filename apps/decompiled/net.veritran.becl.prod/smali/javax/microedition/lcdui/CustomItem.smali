.class public abstract Ljavax/microedition/lcdui/CustomItem;
.super Ljavax/microedition/lcdui/Item;
.source "CustomItem.java"


# static fields
.field protected static final KEY_PRESS:I = 0x4

.field protected static final KEY_RELEASE:I = 0x8

.field protected static final KEY_REPEAT:I = 0x10

.field protected static final NONE:I = 0x0

.field protected static final POINTER_DRAG:I = 0x80

.field protected static final POINTER_PRESS:I = 0x20

.field protected static final POINTER_RELEASE:I = 0x40

.field protected static final TRAVERSE_HORIZONTAL:I = 0x1

.field protected static final TRAVERSE_VERTICAL:I = 0x2


# instance fields
.field height:I

.field width:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1}, Ljavax/microedition/lcdui/Item;-><init>(Ljava/lang/String;)V

    .line 164
    iput v0, p0, Ljavax/microedition/lcdui/CustomItem;->width:I

    iput v0, p0, Ljavax/microedition/lcdui/CustomItem;->height:I

    .line 39
    invoke-static {}, Lorg/microemu/device/DeviceFactory;->getDevice()Lorg/microemu/device/Device;

    move-result-object v0

    invoke-interface {v0}, Lorg/microemu/device/Device;->getUIFactory()Lorg/microemu/device/ui/UIFactory;

    move-result-object v0

    new-instance v1, Ljavax/microedition/lcdui/CustomItem$1;

    invoke-direct {v1, p0}, Ljavax/microedition/lcdui/CustomItem$1;-><init>(Ljavax/microedition/lcdui/CustomItem;)V

    invoke-interface {v0, v1}, Lorg/microemu/device/ui/UIFactory;->createCustomItemUI(Lorg/microemu/CustomItemAccess;)Lorg/microemu/device/ui/CustomItemUI;

    move-result-object v0

    invoke-super {p0, v0}, Ljavax/microedition/lcdui/Item;->setUI(Lorg/microemu/device/ui/ItemUI;)V

    .line 58
    return-void
.end method


# virtual methods
.method public getGameAction(I)I
    .locals 1
    .param p1, "keycode"    # I

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method getHeight()I
    .locals 2

    .prologue
    .line 182
    invoke-super {p0}, Ljavax/microedition/lcdui/Item;->getHeight()I

    move-result v0

    iget v1, p0, Ljavax/microedition/lcdui/CustomItem;->height:I

    add-int/2addr v0, v1

    return v0
.end method

.method protected final getInteractionModes()I
    .locals 1

    .prologue
    .line 66
    const/16 v0, 0xfc

    return v0
.end method

.method protected abstract getMinContentHeight()I
.end method

.method protected abstract getMinContentWidth()I
.end method

.method protected abstract getPrefContentHeight(I)I
.end method

.method protected abstract getPrefContentWidth(I)I
.end method

.method protected hideNotify()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method protected final invalidate()V
    .locals 0

    .prologue
    .line 83
    invoke-virtual {p0}, Ljavax/microedition/lcdui/CustomItem;->repaintOwner()V

    .line 84
    return-void
.end method

.method protected keyPressed(I)V
    .locals 0
    .param p1, "keyCode"    # I

    .prologue
    .line 89
    return-void
.end method

.method protected keyReleased(I)V
    .locals 0
    .param p1, "keyCode"    # I

    .prologue
    .line 94
    return-void
.end method

.method protected keyRepeated(I)V
    .locals 0
    .param p1, "keyCode"    # I

    .prologue
    .line 99
    return-void
.end method

.method paint(Ljavax/microedition/lcdui/Graphics;)I
    .locals 2
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    const/4 v1, -0x1

    .line 168
    invoke-virtual {p0, v1}, Ljavax/microedition/lcdui/CustomItem;->getPrefContentWidth(I)I

    move-result v0

    iput v0, p0, Ljavax/microedition/lcdui/CustomItem;->width:I

    .line 169
    invoke-virtual {p0, v1}, Ljavax/microedition/lcdui/CustomItem;->getPrefContentHeight(I)I

    move-result v0

    iput v0, p0, Ljavax/microedition/lcdui/CustomItem;->height:I

    .line 171
    invoke-super {p0, p1}, Ljavax/microedition/lcdui/Item;->paintContent(Ljavax/microedition/lcdui/Graphics;)V

    .line 173
    const/4 v0, 0x0

    invoke-super {p0}, Ljavax/microedition/lcdui/Item;->getHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljavax/microedition/lcdui/Graphics;->translate(II)V

    .line 175
    iget v0, p0, Ljavax/microedition/lcdui/CustomItem;->width:I

    iget v1, p0, Ljavax/microedition/lcdui/CustomItem;->height:I

    invoke-virtual {p0, p1, v0, v1}, Ljavax/microedition/lcdui/CustomItem;->paint(Ljavax/microedition/lcdui/Graphics;II)V

    .line 177
    iget v0, p0, Ljavax/microedition/lcdui/CustomItem;->height:I

    return v0
.end method

.method protected abstract paint(Ljavax/microedition/lcdui/Graphics;II)V
.end method

.method protected pointerDragged(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 106
    return-void
.end method

.method protected pointerPressed(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 111
    return-void
.end method

.method protected pointerReleased(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 116
    return-void
.end method

.method protected final repaint()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Ljavax/microedition/lcdui/CustomItem;->ui:Lorg/microemu/device/ui/ItemUI;

    if-nez v0, :cond_0

    .line 129
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Ljavax/microedition/lcdui/CustomItem;->ui:Lorg/microemu/device/ui/ItemUI;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.microemu.android.device.ui.AndroidCustomItemUI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Ljavax/microedition/lcdui/CustomItem;->ui:Lorg/microemu/device/ui/ItemUI;

    check-cast v0, Lorg/microemu/device/ui/CustomItemUI;

    invoke-interface {v0}, Lorg/microemu/device/ui/CustomItemUI;->repaint()V

    goto :goto_0

    .line 127
    :cond_1
    invoke-super {p0}, Ljavax/microedition/lcdui/Item;->repaint()V

    goto :goto_0
.end method

.method protected final repaint(IIII)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 133
    invoke-virtual {p0}, Ljavax/microedition/lcdui/CustomItem;->repaint()V

    .line 134
    return-void
.end method

.method protected showNotify()V
    .locals 0

    .prologue
    .line 139
    return-void
.end method

.method protected sizeChanged(II)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 144
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

    .line 187
    invoke-static {}, Ljavax/microedition/lcdui/Font;->getDefaultFont()Ljavax/microedition/lcdui/Font;

    move-result-object v0

    .line 188
    .local v0, "f":Ljavax/microedition/lcdui/Font;
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 189
    if-lez p2, :cond_0

    .line 190
    invoke-virtual {v0}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v1

    rem-int v1, p2, v1

    if-nez v1, :cond_1

    .line 191
    invoke-virtual {v0}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v1

    neg-int v1, v1

    .line 211
    :cond_0
    :goto_0
    return v1

    .line 193
    :cond_1
    invoke-virtual {v0}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v1

    rem-int v1, p2, v1

    neg-int v1, v1

    goto :goto_0

    .line 199
    :cond_2
    const/4 v2, 0x6

    if-ne p1, v2, :cond_4

    .line 200
    invoke-virtual {p0}, Ljavax/microedition/lcdui/CustomItem;->getHeight()I

    move-result v2

    if-ge p3, v2, :cond_0

    .line 201
    invoke-virtual {p0}, Ljavax/microedition/lcdui/CustomItem;->getHeight()I

    move-result v1

    sub-int/2addr v1, p3

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 202
    invoke-virtual {p0}, Ljavax/microedition/lcdui/CustomItem;->getHeight()I

    move-result v1

    sub-int/2addr v1, p3

    goto :goto_0

    .line 204
    :cond_3
    invoke-virtual {v0}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v1

    goto :goto_0

    .line 211
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected traverse(III[I)Z
    .locals 1
    .param p1, "dir"    # I
    .param p2, "viewportWidth"    # I
    .param p3, "viewportHeight"    # I
    .param p4, "visRect_inout"    # [I

    .prologue
    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method protected traverseOut()V
    .locals 0

    .prologue
    .line 156
    return-void
.end method
