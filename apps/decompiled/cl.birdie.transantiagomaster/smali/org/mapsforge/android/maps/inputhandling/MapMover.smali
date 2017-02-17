.class public final Lorg/mapsforge/android/maps/inputhandling/MapMover;
.super Lorg/mapsforge/android/maps/PausableThread;
.source "MapMover.java"

# interfaces
.implements Landroid/view/KeyEvent$Callback;


# instance fields
.field private final mapView:Lorg/mapsforge/android/maps/MapView;

.field private moveSpeedFactor:F

.field private moveX:F

.field private moveY:F

.field private timePrevious:J


# direct methods
.method public constructor <init>(Lorg/mapsforge/android/maps/MapView;)V
    .locals 1
    .param p1, "mapView"    # Lorg/mapsforge/android/maps/MapView;

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/mapsforge/android/maps/PausableThread;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/mapsforge/android/maps/inputhandling/MapMover;->mapView:Lorg/mapsforge/android/maps/MapView;

    .line 49
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lorg/mapsforge/android/maps/inputhandling/MapMover;->moveSpeedFactor:F

    .line 50
    return-void
.end method


# virtual methods
.method protected final afterPause()V
    .locals 2

    .prologue
    .line 210
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/mapsforge/android/maps/inputhandling/MapMover;->timePrevious:J

    .line 211
    return-void
.end method

.method protected final doWork()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 216
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 217
    .local v0, "timeCurrent":J
    iget-wide v4, p0, Lorg/mapsforge/android/maps/inputhandling/MapMover;->timePrevious:J

    sub-long v2, v0, v4

    .line 218
    .local v2, "timeElapsed":J
    iput-wide v0, p0, Lorg/mapsforge/android/maps/inputhandling/MapMover;->timePrevious:J

    .line 221
    iget-object v4, p0, Lorg/mapsforge/android/maps/inputhandling/MapMover;->mapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v4}, Lorg/mapsforge/android/maps/MapView;->getFrameBuffer()Lorg/mapsforge/android/maps/FrameBuffer;

    move-result-object v4

    long-to-float v5, v2

    iget v6, p0, Lorg/mapsforge/android/maps/inputhandling/MapMover;->moveX:F

    mul-float/2addr v5, v6

    long-to-float v6, v2

    iget v7, p0, Lorg/mapsforge/android/maps/inputhandling/MapMover;->moveY:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lorg/mapsforge/android/maps/FrameBuffer;->matrixPostTranslate(FF)V

    .line 224
    iget-object v4, p0, Lorg/mapsforge/android/maps/inputhandling/MapMover;->mapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v4}, Lorg/mapsforge/android/maps/MapView;->getMapPosition()Lorg/mapsforge/android/maps/MapViewPosition;

    move-result-object v4

    long-to-float v5, v2

    iget v6, p0, Lorg/mapsforge/android/maps/inputhandling/MapMover;->moveX:F

    mul-float/2addr v5, v6

    long-to-float v6, v2

    iget v7, p0, Lorg/mapsforge/android/maps/inputhandling/MapMover;->moveY:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lorg/mapsforge/android/maps/MapViewPosition;->moveMap(FF)V

    .line 225
    iget-object v4, p0, Lorg/mapsforge/android/maps/inputhandling/MapMover;->mapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v4}, Lorg/mapsforge/android/maps/MapView;->redrawTiles()V

    .line 226
    const-wide/16 v4, 0xf

    invoke-static {v4, v5}, Lorg/mapsforge/android/maps/inputhandling/MapMover;->sleep(J)V

    .line 227
    return-void
.end method

.method protected final getThreadName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    const-string v0, "MapMover"

    return-object v0
.end method

.method protected final hasWork()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 236
    iget v0, p0, Lorg/mapsforge/android/maps/inputhandling/MapMover;->moveX:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/mapsforge/android/maps/inputhandling/MapMover;->moveY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    const v5, 0x3e4ccccd    # 0.2f

    const v4, -0x41b33333    # -0.2f

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 61
    iget-object v2, p0, Lorg/mapsforge/android/maps/inputhandling/MapMover;->mapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v2}, Lorg/mapsforge/android/maps/MapView;->isClickable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 78
    :cond_0
    :goto_0
    return v0

    .line 65
    :cond_1
    const/16 v2, 0x15

    if-ne p1, v2, :cond_4

    .line 66
    iget v0, p0, Lorg/mapsforge/android/maps/inputhandling/MapMover;->moveX:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_3

    iput v3, p0, Lorg/mapsforge/android/maps/inputhandling/MapMover;->moveX:F

    :cond_2
    :goto_1
    move v0, v1

    .line 67
    goto :goto_0

    .line 66
    :cond_3
    iget v0, p0, Lorg/mapsforge/android/maps/inputhandling/MapMover;->moveX:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    iget v0, p0, Lorg/mapsforge/android/maps/inputhandling/MapMover;->moveSpeedFactor:F

    mul-float/2addr v0, v5

    iput v0, p0, Lorg/mapsforge/android/maps/inputhandling/MapMover;->moveX:F

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/mapsforge/android/maps/inputhandling/MapMover;->timePrevious:J

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 68
    :cond_4
    const/16 v2, 0x16

    if-ne p1, v2, :cond_7

    .line 69
    iget v0, p0, Lorg/mapsforge/android/maps/inputhandling/MapMover;->moveX:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_6

    iput v3, p0, Lorg/mapsforge/android/maps/inputhandling/MapMover;->moveX:F

    :cond_5
    :goto_2
    move v0, v1

    .line 70
    goto :goto_0

    .line 69
    :cond_6
    iget v0, p0, Lorg/mapsforge/android/maps/inputhandling/MapMover;->moveX:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_5

    iget v0, p0, Lorg/mapsforge/android/maps/inputhandling/MapMover;->moveSpeedFactor:F

    mul-float/2addr v0, v4

    iput v0, p0, Lorg/mapsforge/android/maps/inputhandling/MapMover;->moveX:F

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/mapsforge/android/maps/inputhandling/MapMover;->timePrevious:J

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 71
    :cond_7
    const/16 v2, 0x13

    if-ne p1, v2, :cond_a

    .line 72
    iget v0, p0, Lorg/mapsforge/android/maps/inputhandling/MapMover;->moveY:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_9

    iput v3, p0, Lorg/mapsforge/android/maps/inputhandling/MapMover;->moveY:F

    :cond_8
    :goto_3
    move v0, v1

    .line 73
    goto :goto_0

    .line 72
    :cond_9
    iget v0, p0, Lorg/mapsforge/android/maps/inputhandling/MapMover;->moveY:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_8

    iget v0, p0, Lorg/mapsforge/android/maps/inputhandling/MapMover;->moveSpeedFactor:F

    mul-float/2addr v0, v5

    iput v0, p0, Lorg/mapsforge/android/maps/inputhandling/MapMover;->moveY:F

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/mapsforge/android/maps/inputhandling/MapMover;->timePrevious:J

    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0

    .line 74
    :cond_a
    const/16 v2, 0x14

    if-ne p1, v2, :cond_0

    .line 75
    iget v0, p0, Lorg/mapsforge/android/maps/inputhandling/MapMover;->moveY:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_c

    iput v3, p0, Lorg/mapsforge/android/maps/inputhandling/MapMover;->moveY:F

    :cond_b
    :goto_4
    move v0, v1

    .line 76
    goto/16 :goto_0

    .line 75
    :cond_c
    iget v0, p0, Lorg/mapsforge/android/maps/inputhandling/MapMover;->moveY:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_b

    iget v0, p0, Lorg/mapsforge/android/maps/inputhandling/MapMover;->moveSpeedFactor:F

    mul-float/2addr v0, v4

    iput v0, p0, Lorg/mapsforge/android/maps/inputhandling/MapMover;->moveY:F

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/mapsforge/android/maps/inputhandling/MapMover;->timePrevious:J

    monitor-enter p0

    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public final onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 93
    iget-object v2, p0, Lorg/mapsforge/android/maps/inputhandling/MapMover;->mapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v2}, Lorg/mapsforge/android/maps/MapView;->isClickable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v0

    .line 97
    :cond_1
    const/16 v2, 0x15

    if-eq p1, v2, :cond_2

    const/16 v2, 0x16

    if-ne p1, v2, :cond_3

    .line 98
    :cond_2
    iput v3, p0, Lorg/mapsforge/android/maps/inputhandling/MapMover;->moveX:F

    move v0, v1

    .line 99
    goto :goto_0

    .line 100
    :cond_3
    const/16 v2, 0x13

    if-eq p1, v2, :cond_4

    const/16 v2, 0x14

    if-ne p1, v2, :cond_0

    .line 101
    :cond_4
    iput v3, p0, Lorg/mapsforge/android/maps/inputhandling/MapMover;->moveY:F

    move v0, v1

    .line 102
    goto :goto_0
.end method

.method public final onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    const/high16 v5, 0x42200000    # 40.0f

    .line 113
    iget-object v3, p0, Lorg/mapsforge/android/maps/inputhandling/MapMover;->mapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v3}, Lorg/mapsforge/android/maps/MapView;->isClickable()Z

    move-result v3

    if-nez v3, :cond_1

    .line 126
    :cond_0
    :goto_0
    return v2

    .line 117
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 118
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    mul-float/2addr v2, v5

    iget v3, p0, Lorg/mapsforge/android/maps/inputhandling/MapMover;->moveSpeedFactor:F

    mul-float v0, v2, v3

    .line 119
    .local v0, "mapMoveX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    mul-float/2addr v2, v5

    iget v3, p0, Lorg/mapsforge/android/maps/inputhandling/MapMover;->moveSpeedFactor:F

    mul-float v1, v2, v3

    .line 121
    .local v1, "mapMoveY":F
    iget-object v2, p0, Lorg/mapsforge/android/maps/inputhandling/MapMover;->mapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v2}, Lorg/mapsforge/android/maps/MapView;->getFrameBuffer()Lorg/mapsforge/android/maps/FrameBuffer;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/mapsforge/android/maps/FrameBuffer;->matrixPostTranslate(FF)V

    .line 122
    iget-object v2, p0, Lorg/mapsforge/android/maps/inputhandling/MapMover;->mapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v2}, Lorg/mapsforge/android/maps/MapView;->getMapPosition()Lorg/mapsforge/android/maps/MapViewPosition;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/mapsforge/android/maps/MapViewPosition;->moveMap(FF)V

    .line 123
    iget-object v2, p0, Lorg/mapsforge/android/maps/inputhandling/MapMover;->mapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v2}, Lorg/mapsforge/android/maps/MapView;->redrawTiles()V

    .line 124
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public final stopMove()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 148
    iput v0, p0, Lorg/mapsforge/android/maps/inputhandling/MapMover;->moveX:F

    .line 149
    iput v0, p0, Lorg/mapsforge/android/maps/inputhandling/MapMover;->moveY:F

    .line 150
    return-void
.end method
