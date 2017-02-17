.class public abstract Ljavax/microedition/lcdui/game/GameCanvas;
.super Ljavax/microedition/lcdui/Canvas;
.source "GameCanvas.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/microedition/lcdui/game/GameCanvas$1;,
        Ljavax/microedition/lcdui/game/GameCanvas$KeyAccess;
    }
.end annotation


# static fields
.field public static final DOWN_PRESSED:I = 0x40

.field public static final FIRE_PRESSED:I = 0x100

.field public static final GAME_A_PRESSED:I = 0x200

.field public static final GAME_B_PRESSED:I = 0x400

.field public static final GAME_C_PRESSED:I = 0x800

.field public static final GAME_D_PRESSED:I = 0x1000

.field public static final LEFT_PRESSED:I = 0x4

.field public static final RIGHT_PRESSED:I = 0x20

.field public static final UP_PRESSED:I = 0x2


# instance fields
.field private actualKeyState:I

.field private latchedKeyState:I

.field offscreenBuffer:Ljavax/microedition/lcdui/Image;

.field private suppressKeyEvents:Z


# direct methods
.method protected constructor <init>(Z)V
    .locals 5
    .param p1, "suppressKeyEvents"    # Z

    .prologue
    .line 94
    invoke-direct {p0}, Ljavax/microedition/lcdui/Canvas;-><init>()V

    .line 95
    new-instance v0, Ljavax/microedition/lcdui/game/GameCanvas$KeyAccess;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljavax/microedition/lcdui/game/GameCanvas$KeyAccess;-><init>(Ljavax/microedition/lcdui/game/GameCanvas;Ljavax/microedition/lcdui/game/GameCanvas$1;)V

    invoke-static {p0, v0}, Lorg/microemu/MIDletBridge;->registerGameCanvasKeyAccess(Ljavax/microedition/lcdui/game/GameCanvas;Lorg/microemu/GameCanvasKeyAccess;)V

    .line 97
    iput-boolean p1, p0, Ljavax/microedition/lcdui/game/GameCanvas;->suppressKeyEvents:Z

    .line 102
    invoke-static {}, Lorg/microemu/device/DeviceFactory;->getDevice()Lorg/microemu/device/Device;

    move-result-object v0

    invoke-interface {v0}, Lorg/microemu/device/Device;->getDeviceDisplay()Lorg/microemu/device/DeviceDisplay;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/microedition/lcdui/game/GameCanvas;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Ljavax/microedition/lcdui/game/GameCanvas;->getHeight()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/microemu/device/DeviceDisplay;->createImage(IIZI)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Ljavax/microedition/lcdui/game/GameCanvas;->offscreenBuffer:Ljavax/microedition/lcdui/Image;

    .line 104
    return-void
.end method

.method static access$000(Ljavax/microedition/lcdui/game/GameCanvas;)Z
    .locals 1
    .param p0, "x0"    # Ljavax/microedition/lcdui/game/GameCanvas;

    .prologue
    .line 36
    iget-boolean v0, p0, Ljavax/microedition/lcdui/game/GameCanvas;->suppressKeyEvents:Z

    return v0
.end method

.method static access$176(Ljavax/microedition/lcdui/game/GameCanvas;I)I
    .locals 1
    .param p0, "x0"    # Ljavax/microedition/lcdui/game/GameCanvas;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iget v0, p0, Ljavax/microedition/lcdui/game/GameCanvas;->latchedKeyState:I

    or-int/2addr v0, p1

    iput v0, p0, Ljavax/microedition/lcdui/game/GameCanvas;->latchedKeyState:I

    return v0
.end method

.method static access$202(Ljavax/microedition/lcdui/game/GameCanvas;I)I
    .locals 0
    .param p0, "x0"    # Ljavax/microedition/lcdui/game/GameCanvas;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Ljavax/microedition/lcdui/game/GameCanvas;->actualKeyState:I

    return p1
.end method

.method static access$272(Ljavax/microedition/lcdui/game/GameCanvas;I)I
    .locals 1
    .param p0, "x0"    # Ljavax/microedition/lcdui/game/GameCanvas;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iget v0, p0, Ljavax/microedition/lcdui/game/GameCanvas;->actualKeyState:I

    and-int/2addr v0, p1

    iput v0, p0, Ljavax/microedition/lcdui/game/GameCanvas;->actualKeyState:I

    return v0
.end method

.method static access$276(Ljavax/microedition/lcdui/game/GameCanvas;I)I
    .locals 1
    .param p0, "x0"    # Ljavax/microedition/lcdui/game/GameCanvas;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iget v0, p0, Ljavax/microedition/lcdui/game/GameCanvas;->actualKeyState:I

    or-int/2addr v0, p1

    iput v0, p0, Ljavax/microedition/lcdui/game/GameCanvas;->actualKeyState:I

    return v0
.end method


# virtual methods
.method public flushGraphics()V
    .locals 0

    .prologue
    .line 126
    invoke-virtual {p0}, Ljavax/microedition/lcdui/game/GameCanvas;->repaint()V

    .line 127
    invoke-virtual {p0}, Ljavax/microedition/lcdui/game/GameCanvas;->serviceRepaints()V

    .line 128
    return-void
.end method

.method public flushGraphics(IIII)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 119
    invoke-virtual {p0, p1, p2, p3, p4}, Ljavax/microedition/lcdui/game/GameCanvas;->repaint(IIII)V

    .line 120
    invoke-virtual {p0}, Ljavax/microedition/lcdui/game/GameCanvas;->serviceRepaints()V

    .line 121
    return-void
.end method

.method protected getGraphics()Ljavax/microedition/lcdui/Graphics;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Ljavax/microedition/lcdui/game/GameCanvas;->offscreenBuffer:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getGraphics()Ljavax/microedition/lcdui/Graphics;

    move-result-object v0

    return-object v0
.end method

.method public getKeyStates()I
    .locals 2

    .prologue
    .line 131
    monitor-enter p0

    .line 132
    :try_start_0
    iget v0, p0, Ljavax/microedition/lcdui/game/GameCanvas;->latchedKeyState:I

    .line 133
    .local v0, "ret":I
    iget v1, p0, Ljavax/microedition/lcdui/game/GameCanvas;->actualKeyState:I

    iput v1, p0, Ljavax/microedition/lcdui/game/GameCanvas;->latchedKeyState:I

    .line 134
    monitor-exit p0

    return v0

    .line 135
    .end local v0    # "ret":I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public paint(Ljavax/microedition/lcdui/Graphics;)V
    .locals 3
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    const/4 v2, 0x0

    .line 111
    iget-object v0, p0, Ljavax/microedition/lcdui/game/GameCanvas;->offscreenBuffer:Ljavax/microedition/lcdui/Image;

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v2, v2, v1}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    .line 112
    return-void
.end method
