.class public abstract Ljavax/microedition/lcdui/Canvas;
.super Ljavax/microedition/lcdui/Displayable;
.source "Canvas.java"


# static fields
.field public static final DOWN:I = 0x6

.field public static final FIRE:I = 0x8

.field public static final GAME_A:I = 0x9

.field public static final GAME_B:I = 0xa

.field public static final GAME_C:I = 0xb

.field public static final GAME_D:I = 0xc

.field public static final KEY_NUM0:I = 0x30

.field public static final KEY_NUM1:I = 0x31

.field public static final KEY_NUM2:I = 0x32

.field public static final KEY_NUM3:I = 0x33

.field public static final KEY_NUM4:I = 0x34

.field public static final KEY_NUM5:I = 0x35

.field public static final KEY_NUM6:I = 0x36

.field public static final KEY_NUM7:I = 0x37

.field public static final KEY_NUM8:I = 0x38

.field public static final KEY_NUM9:I = 0x39

.field public static final KEY_POUND:I = 0x23

.field public static final KEY_STAR:I = 0x2a

.field public static final LEFT:I = 0x2

.field public static final RIGHT:I = 0x5

.field public static final UP:I = 0x1


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljavax/microedition/lcdui/Displayable;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-static {}, Lorg/microemu/device/DeviceFactory;->getDevice()Lorg/microemu/device/Device;

    move-result-object v0

    invoke-interface {v0}, Lorg/microemu/device/Device;->getUIFactory()Lorg/microemu/device/ui/UIFactory;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/microemu/device/ui/UIFactory;->createCanvasUI(Ljavax/microedition/lcdui/Canvas;)Lorg/microemu/device/ui/CanvasUI;

    move-result-object v0

    invoke-super {p0, v0}, Ljavax/microedition/lcdui/Displayable;->setUI(Lorg/microemu/device/ui/DisplayableUI;)V

    .line 69
    return-void
.end method


# virtual methods
.method public getGameAction(I)I
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 74
    invoke-static {p1}, Ljavax/microedition/lcdui/Display;->getGameAction(I)I

    move-result v0

    return v0
.end method

.method public getKeyCode(I)I
    .locals 1
    .param p1, "gameAction"    # I

    .prologue
    .line 80
    invoke-static {p1}, Ljavax/microedition/lcdui/Display;->getKeyCode(I)I

    move-result v0

    return v0
.end method

.method public getKeyName(I)Ljava/lang/String;
    .locals 1
    .param p1, "keyCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-static {p1}, Ljavax/microedition/lcdui/Display;->getKeyName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasPointerEvents()Z
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Ljavax/microedition/lcdui/Canvas;->device:Lorg/microemu/device/Device;

    invoke-interface {v0}, Lorg/microemu/device/Device;->hasPointerEvents()Z

    move-result v0

    return v0
.end method

.method public hasPointerMotionEvents()Z
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Ljavax/microedition/lcdui/Canvas;->device:Lorg/microemu/device/Device;

    invoke-interface {v0}, Lorg/microemu/device/Device;->hasPointerMotionEvents()Z

    move-result v0

    return v0
.end method

.method public hasRepeatEvents()Z
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Ljavax/microedition/lcdui/Canvas;->device:Lorg/microemu/device/Device;

    invoke-interface {v0}, Lorg/microemu/device/Device;->hasRepeatEvents()Z

    move-result v0

    return v0
.end method

.method protected hideNotify()V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.method public isDoubleBuffered()Z
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method protected keyPressed(I)V
    .locals 0
    .param p1, "keyCode"    # I

    .prologue
    .line 121
    return-void
.end method

.method protected keyReleased(I)V
    .locals 0
    .param p1, "keyCode"    # I

    .prologue
    .line 131
    return-void
.end method

.method protected keyRepeated(I)V
    .locals 0
    .param p1, "keyCode"    # I

    .prologue
    .line 126
    return-void
.end method

.method protected abstract paint(Ljavax/microedition/lcdui/Graphics;)V
.end method

.method protected pointerDragged(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 149
    return-void
.end method

.method protected pointerPressed(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 139
    return-void
.end method

.method protected pointerReleased(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 144
    return-void
.end method

.method public final repaint()V
    .locals 0

    .prologue
    .line 154
    invoke-super {p0}, Ljavax/microedition/lcdui/Displayable;->repaint()V

    .line 155
    return-void
.end method

.method public final repaint(IIII)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 160
    invoke-super {p0, p1, p2, p3, p4}, Ljavax/microedition/lcdui/Displayable;->repaint(IIII)V

    .line 161
    return-void
.end method

.method public final serviceRepaints()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Ljavax/microedition/lcdui/Canvas;->currentDisplay:Ljavax/microedition/lcdui/Display;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Ljavax/microedition/lcdui/Canvas;->currentDisplay:Ljavax/microedition/lcdui/Display;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Display;->serviceRepaints()V

    .line 169
    :cond_0
    return-void
.end method

.method public setFullScreenMode(Z)V
    .locals 3
    .param p1, "mode"    # Z

    .prologue
    const/4 v2, -0x1

    .line 173
    iget-boolean v1, p0, Ljavax/microedition/lcdui/Canvas;->fullScreenMode:Z

    if-eq v1, p1, :cond_1

    .line 174
    iput-boolean p1, p0, Ljavax/microedition/lcdui/Canvas;->fullScreenMode:Z

    .line 176
    instance-of v1, p0, Ljavax/microedition/lcdui/game/GameCanvas;

    if-eqz v1, :cond_0

    .line 177
    iput v2, p0, Ljavax/microedition/lcdui/Canvas;->width:I

    .line 178
    iput v2, p0, Ljavax/microedition/lcdui/Canvas;->height:I

    move-object v1, p0

    .line 179
    check-cast v1, Ljavax/microedition/lcdui/game/GameCanvas;

    invoke-static {v1}, Lorg/microemu/MIDletBridge;->getGameCanvasKeyAccess(Ljavax/microedition/lcdui/game/GameCanvas;)Lorg/microemu/GameCanvasKeyAccess;

    move-result-object v0

    .line 180
    .local v0, "access":Lorg/microemu/GameCanvasKeyAccess;
    invoke-interface {v0}, Lorg/microemu/GameCanvasKeyAccess;->initBuffer()V

    .line 183
    .end local v0    # "access":Lorg/microemu/GameCanvasKeyAccess;
    :cond_0
    iget-object v1, p0, Ljavax/microedition/lcdui/Canvas;->currentDisplay:Ljavax/microedition/lcdui/Display;

    if-eqz v1, :cond_1

    .line 184
    iget-object v1, p0, Ljavax/microedition/lcdui/Canvas;->currentDisplay:Ljavax/microedition/lcdui/Display;

    invoke-virtual {p0, v1}, Ljavax/microedition/lcdui/Canvas;->sizeChanged(Ljavax/microedition/lcdui/Display;)V

    .line 187
    :cond_1
    return-void
.end method

.method protected showNotify()V
    .locals 0

    .prologue
    .line 197
    return-void
.end method

.method protected sizeChanged(II)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 192
    return-void
.end method
