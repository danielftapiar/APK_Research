.class public Ljavax/microedition/lcdui/game/LayerManager;
.super Ljava/lang/Object;
.source "LayerManager.java"


# instance fields
.field private layers:Ljava/util/Vector;

.field private viewH:I

.field private viewW:I

.field private viewX:I

.field private viewY:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljavax/microedition/lcdui/game/LayerManager;->layers:Ljava/util/Vector;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Ljavax/microedition/lcdui/game/LayerManager;->viewY:I

    iput v0, p0, Ljavax/microedition/lcdui/game/LayerManager;->viewX:I

    .line 40
    const v0, 0x7fffffff

    iput v0, p0, Ljavax/microedition/lcdui/game/LayerManager;->viewH:I

    iput v0, p0, Ljavax/microedition/lcdui/game/LayerManager;->viewW:I

    .line 41
    return-void
.end method


# virtual methods
.method public append(Ljavax/microedition/lcdui/game/Layer;)V
    .locals 1
    .param p1, "layer"    # Ljavax/microedition/lcdui/game/Layer;

    .prologue
    .line 44
    monitor-enter p0

    .line 45
    if-nez p1, :cond_0

    .line 46
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 47
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljavax/microedition/lcdui/game/LayerManager;->layers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 48
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    return-void
.end method

.method public getLayerAt(I)Ljavax/microedition/lcdui/game/Layer;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 53
    iget-object v0, p0, Ljavax/microedition/lcdui/game/LayerManager;->layers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/microedition/lcdui/game/Layer;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Ljavax/microedition/lcdui/game/LayerManager;->layers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public insert(Ljavax/microedition/lcdui/game/Layer;I)V
    .locals 1
    .param p1, "layer"    # Ljavax/microedition/lcdui/game/Layer;
    .param p2, "i"    # I

    .prologue
    .line 62
    monitor-enter p0

    .line 63
    if-nez p1, :cond_0

    .line 64
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 65
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljavax/microedition/lcdui/game/LayerManager;->layers:Ljava/util/Vector;

    invoke-virtual {v0, p1, p2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 66
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    return-void
.end method

.method public paint(Ljavax/microedition/lcdui/Graphics;II)V
    .locals 10
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 89
    monitor-enter p0

    .line 90
    if-nez p1, :cond_0

    .line 91
    :try_start_0
    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    throw v6

    .line 107
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 93
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Graphics;->getClipX()I

    move-result v2

    .line 94
    .local v2, "clipX":I
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Graphics;->getClipY()I

    move-result v3

    .line 95
    .local v3, "clipY":I
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Graphics;->getClipWidth()I

    move-result v1

    .line 96
    .local v1, "clipW":I
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Graphics;->getClipHeight()I

    move-result v0

    .line 97
    .local v0, "clipH":I
    iget v6, p0, Ljavax/microedition/lcdui/game/LayerManager;->viewX:I

    sub-int v6, p2, v6

    iget v7, p0, Ljavax/microedition/lcdui/game/LayerManager;->viewY:I

    sub-int v7, p3, v7

    invoke-virtual {p1, v6, v7}, Ljavax/microedition/lcdui/Graphics;->translate(II)V

    .line 98
    iget v6, p0, Ljavax/microedition/lcdui/game/LayerManager;->viewX:I

    iget v7, p0, Ljavax/microedition/lcdui/game/LayerManager;->viewY:I

    iget v8, p0, Ljavax/microedition/lcdui/game/LayerManager;->viewW:I

    iget v9, p0, Ljavax/microedition/lcdui/game/LayerManager;->viewH:I

    invoke-virtual {p1, v6, v7, v8, v9}, Ljavax/microedition/lcdui/Graphics;->clipRect(IIII)V

    .line 99
    invoke-virtual {p0}, Ljavax/microedition/lcdui/game/LayerManager;->getSize()I

    move-result v5

    .local v5, "i":I
    :cond_1
    :goto_0
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_2

    .line 100
    invoke-virtual {p0, v5}, Ljavax/microedition/lcdui/game/LayerManager;->getLayerAt(I)Ljavax/microedition/lcdui/game/Layer;

    move-result-object v4

    .line 101
    .local v4, "comp":Ljavax/microedition/lcdui/game/Layer;
    invoke-virtual {v4}, Ljavax/microedition/lcdui/game/Layer;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 102
    invoke-virtual {v4, p1}, Ljavax/microedition/lcdui/game/Layer;->paint(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    .line 105
    .end local v4    # "comp":Ljavax/microedition/lcdui/game/Layer;
    :cond_2
    neg-int v6, p2

    iget v7, p0, Ljavax/microedition/lcdui/game/LayerManager;->viewX:I

    add-int/2addr v6, v7

    neg-int v7, p3

    iget v8, p0, Ljavax/microedition/lcdui/game/LayerManager;->viewY:I

    add-int/2addr v7, v8

    invoke-virtual {p1, v6, v7}, Ljavax/microedition/lcdui/Graphics;->translate(II)V

    .line 106
    invoke-virtual {p1, v2, v3, v1, v0}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    .line 107
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    return-void
.end method

.method public remove(Ljavax/microedition/lcdui/game/Layer;)V
    .locals 1
    .param p1, "layer"    # Ljavax/microedition/lcdui/game/Layer;

    .prologue
    .line 70
    monitor-enter p0

    .line 71
    if-nez p1, :cond_0

    .line 72
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 73
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljavax/microedition/lcdui/game/LayerManager;->layers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 74
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    return-void
.end method

.method public setViewWindow(IIII)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 78
    monitor-enter p0

    .line 79
    if-ltz p3, :cond_0

    if-gez p4, :cond_1

    .line 80
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 81
    :cond_1
    :try_start_1
    iput p1, p0, Ljavax/microedition/lcdui/game/LayerManager;->viewX:I

    .line 82
    iput p2, p0, Ljavax/microedition/lcdui/game/LayerManager;->viewY:I

    .line 83
    iput p3, p0, Ljavax/microedition/lcdui/game/LayerManager;->viewW:I

    .line 84
    iput p4, p0, Ljavax/microedition/lcdui/game/LayerManager;->viewH:I

    .line 85
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    return-void
.end method
