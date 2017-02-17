.class public abstract Ljavax/microedition/lcdui/game/Layer;
.super Ljava/lang/Object;
.source "Layer.java"


# instance fields
.field private height:I

.field private visible:Z

.field private width:I

.field private x:I

.field private y:I


# direct methods
.method constructor <init>(IIIIZ)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "visible"    # Z

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p0, p3, p4}, Ljavax/microedition/lcdui/game/Layer;->setSize(II)V

    .line 39
    invoke-virtual {p0, p1, p2}, Ljavax/microedition/lcdui/game/Layer;->setPosition(II)V

    .line 40
    invoke-virtual {p0, p5}, Ljavax/microedition/lcdui/game/Layer;->setVisible(Z)V

    .line 41
    return-void
.end method


# virtual methods
.method public final getHeight()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Ljavax/microedition/lcdui/game/Layer;->height:I

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Ljavax/microedition/lcdui/game/Layer;->width:I

    return v0
.end method

.method public final getX()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Ljavax/microedition/lcdui/game/Layer;->x:I

    return v0
.end method

.method public final getY()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Ljavax/microedition/lcdui/game/Layer;->y:I

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Ljavax/microedition/lcdui/game/Layer;->visible:Z

    return v0
.end method

.method public move(II)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 73
    monitor-enter p0

    .line 74
    :try_start_0
    iget v0, p0, Ljavax/microedition/lcdui/game/Layer;->x:I

    add-int/2addr v0, p1

    iput v0, p0, Ljavax/microedition/lcdui/game/Layer;->x:I

    .line 75
    iget v0, p0, Ljavax/microedition/lcdui/game/Layer;->y:I

    add-int/2addr v0, p2

    iput v0, p0, Ljavax/microedition/lcdui/game/Layer;->y:I

    .line 76
    monitor-exit p0

    .line 77
    return-void

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public abstract paint(Ljavax/microedition/lcdui/Graphics;)V
.end method

.method public setPosition(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 82
    monitor-enter p0

    .line 83
    :try_start_0
    iput p1, p0, Ljavax/microedition/lcdui/game/Layer;->x:I

    .line 84
    iput p2, p0, Ljavax/microedition/lcdui/game/Layer;->y:I

    .line 85
    monitor-exit p0

    .line 86
    return-void

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setSize(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v0, 0x1

    .line 45
    if-lt p1, v0, :cond_0

    if-ge p2, v0, :cond_1

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 48
    :cond_1
    iput p1, p0, Ljavax/microedition/lcdui/game/Layer;->width:I

    .line 49
    iput p2, p0, Ljavax/microedition/lcdui/game/Layer;->height:I

    .line 50
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Ljavax/microedition/lcdui/game/Layer;->visible:Z

    .line 90
    return-void
.end method
