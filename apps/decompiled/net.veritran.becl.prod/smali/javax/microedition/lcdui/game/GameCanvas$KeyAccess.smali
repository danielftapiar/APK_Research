.class Ljavax/microedition/lcdui/game/GameCanvas$KeyAccess;
.super Ljava/lang/Object;
.source "GameCanvas.java"

# interfaces
.implements Lorg/microemu/GameCanvasKeyAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/microedition/lcdui/game/GameCanvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyAccess"
.end annotation


# instance fields
.field private final this$0:Ljavax/microedition/lcdui/game/GameCanvas;


# direct methods
.method private constructor <init>(Ljavax/microedition/lcdui/game/GameCanvas;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Ljavax/microedition/lcdui/game/GameCanvas$KeyAccess;->this$0:Ljavax/microedition/lcdui/game/GameCanvas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Ljavax/microedition/lcdui/game/GameCanvas;Ljavax/microedition/lcdui/game/GameCanvas$1;)V
    .locals 0
    .param p1, "x0"    # Ljavax/microedition/lcdui/game/GameCanvas;
    .param p2, "x1"    # Ljavax/microedition/lcdui/game/GameCanvas$1;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Ljavax/microedition/lcdui/game/GameCanvas$KeyAccess;-><init>(Ljavax/microedition/lcdui/game/GameCanvas;)V

    return-void
.end method


# virtual methods
.method public initBuffer()V
    .locals 6

    .prologue
    .line 87
    iget-object v0, p0, Ljavax/microedition/lcdui/game/GameCanvas$KeyAccess;->this$0:Ljavax/microedition/lcdui/game/GameCanvas;

    invoke-static {}, Lorg/microemu/device/DeviceFactory;->getDevice()Lorg/microemu/device/Device;

    move-result-object v1

    invoke-interface {v1}, Lorg/microemu/device/Device;->getDeviceDisplay()Lorg/microemu/device/DeviceDisplay;

    move-result-object v1

    iget-object v2, p0, Ljavax/microedition/lcdui/game/GameCanvas$KeyAccess;->this$0:Ljavax/microedition/lcdui/game/GameCanvas;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/game/GameCanvas;->getWidth()I

    move-result v2

    iget-object v3, p0, Ljavax/microedition/lcdui/game/GameCanvas$KeyAccess;->this$0:Ljavax/microedition/lcdui/game/GameCanvas;

    invoke-virtual {v3}, Ljavax/microedition/lcdui/game/GameCanvas;->getHeight()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/microemu/device/DeviceDisplay;->createImage(IIZI)Ljavax/microedition/lcdui/Image;

    move-result-object v1

    iput-object v1, v0, Ljavax/microedition/lcdui/game/GameCanvas;->offscreenBuffer:Ljavax/microedition/lcdui/Image;

    .line 89
    return-void
.end method

.method public recordKeyPressed(Ljavax/microedition/lcdui/game/GameCanvas;I)V
    .locals 2
    .param p1, "canvas"    # Ljavax/microedition/lcdui/game/GameCanvas;
    .param p2, "gameCode"    # I

    .prologue
    .line 66
    const/4 v1, 0x1

    shl-int v0, v1, p2

    .line 67
    .local v0, "bit":I
    monitor-enter p1

    .line 68
    :try_start_0
    iget-object v1, p0, Ljavax/microedition/lcdui/game/GameCanvas$KeyAccess;->this$0:Ljavax/microedition/lcdui/game/GameCanvas;

    invoke-static {v1, v0}, Ljavax/microedition/lcdui/game/GameCanvas;->access$176(Ljavax/microedition/lcdui/game/GameCanvas;I)I

    .line 69
    iget-object v1, p0, Ljavax/microedition/lcdui/game/GameCanvas$KeyAccess;->this$0:Ljavax/microedition/lcdui/game/GameCanvas;

    invoke-static {v1, v0}, Ljavax/microedition/lcdui/game/GameCanvas;->access$276(Ljavax/microedition/lcdui/game/GameCanvas;I)I

    .line 70
    monitor-exit p1

    .line 71
    return-void

    .line 70
    :catchall_0
    move-exception v1

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public recordKeyReleased(Ljavax/microedition/lcdui/game/GameCanvas;I)V
    .locals 3
    .param p1, "canvas"    # Ljavax/microedition/lcdui/game/GameCanvas;
    .param p2, "gameCode"    # I

    .prologue
    .line 74
    const/4 v1, 0x1

    shl-int v0, v1, p2

    .line 75
    .local v0, "bit":I
    monitor-enter p1

    .line 76
    :try_start_0
    iget-object v1, p0, Ljavax/microedition/lcdui/game/GameCanvas$KeyAccess;->this$0:Ljavax/microedition/lcdui/game/GameCanvas;

    xor-int/lit8 v2, v0, -0x1

    invoke-static {v1, v2}, Ljavax/microedition/lcdui/game/GameCanvas;->access$272(Ljavax/microedition/lcdui/game/GameCanvas;I)I

    .line 77
    monitor-exit p1

    .line 78
    return-void

    .line 77
    :catchall_0
    move-exception v1

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setActualKeyState(Ljavax/microedition/lcdui/game/GameCanvas;I)V
    .locals 1
    .param p1, "canvas"    # Ljavax/microedition/lcdui/game/GameCanvas;
    .param p2, "keyState"    # I

    .prologue
    .line 81
    monitor-enter p1

    .line 82
    :try_start_0
    iget-object v0, p0, Ljavax/microedition/lcdui/game/GameCanvas$KeyAccess;->this$0:Ljavax/microedition/lcdui/game/GameCanvas;

    invoke-static {v0, p2}, Ljavax/microedition/lcdui/game/GameCanvas;->access$202(Ljavax/microedition/lcdui/game/GameCanvas;I)I

    .line 83
    monitor-exit p1

    .line 84
    return-void

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public suppressedKeyEvents(Ljavax/microedition/lcdui/game/GameCanvas;)Z
    .locals 1
    .param p1, "canvas"    # Ljavax/microedition/lcdui/game/GameCanvas;

    .prologue
    .line 63
    invoke-static {p1}, Ljavax/microedition/lcdui/game/GameCanvas;->access$000(Ljavax/microedition/lcdui/game/GameCanvas;)Z

    move-result v0

    return v0
.end method
