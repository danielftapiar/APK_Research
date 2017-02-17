.class public final Lorg/mapsforge/android/maps/inputhandling/SingleTouchHandler;
.super Lorg/mapsforge/android/maps/inputhandling/TouchEventHandler;
.source "SingleTouchHandler.java"


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/mapsforge/android/maps/MapView;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mapView"    # Lorg/mapsforge/android/maps/MapView;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lorg/mapsforge/android/maps/inputhandling/TouchEventHandler;-><init>(Landroid/content/Context;Lorg/mapsforge/android/maps/MapView;)V

    .line 30
    return-void
.end method

.method private onActionUp(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 80
    iget-object v5, p0, Lorg/mapsforge/android/maps/inputhandling/SingleTouchHandler;->longPressDetector:Lorg/mapsforge/android/maps/inputhandling/LongPressDetector;

    invoke-virtual {v5}, Lorg/mapsforge/android/maps/inputhandling/LongPressDetector;->pressStop()V

    .line 81
    iget-boolean v5, p0, Lorg/mapsforge/android/maps/inputhandling/SingleTouchHandler;->moveThresholdReached:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lorg/mapsforge/android/maps/inputhandling/SingleTouchHandler;->longPressDetector:Lorg/mapsforge/android/maps/inputhandling/LongPressDetector;

    invoke-virtual {v5}, Lorg/mapsforge/android/maps/inputhandling/LongPressDetector;->isEventHandled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 82
    :cond_0
    iput-boolean v10, p0, Lorg/mapsforge/android/maps/inputhandling/SingleTouchHandler;->previousEventTap:Z

    .line 120
    :goto_0
    return v9

    .line 84
    :cond_1
    iget-boolean v5, p0, Lorg/mapsforge/android/maps/inputhandling/SingleTouchHandler;->previousEventTap:Z

    if-eqz v5, :cond_2

    .line 86
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget v6, p0, Lorg/mapsforge/android/maps/inputhandling/SingleTouchHandler;->previousTapX:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 87
    .local v3, "tapDiffX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget v6, p0, Lorg/mapsforge/android/maps/inputhandling/SingleTouchHandler;->previousTapY:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 88
    .local v4, "tapDiffY":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    iget-wide v7, p0, Lorg/mapsforge/android/maps/inputhandling/SingleTouchHandler;->previousTapTime:J

    sub-long v1, v5, v7

    .line 91
    .local v1, "tapDiffTime":J
    iget v5, p0, Lorg/mapsforge/android/maps/inputhandling/SingleTouchHandler;->doubleTapDelta:F

    cmpg-float v5, v3, v5

    if-gez v5, :cond_3

    iget v5, p0, Lorg/mapsforge/android/maps/inputhandling/SingleTouchHandler;->doubleTapDelta:F

    cmpg-float v5, v4, v5

    if-gez v5, :cond_3

    iget v5, p0, Lorg/mapsforge/android/maps/inputhandling/SingleTouchHandler;->doubleTapTimeout:I

    int-to-long v5, v5

    cmp-long v5, v1, v5

    if-gez v5, :cond_3

    .line 94
    iput-boolean v10, p0, Lorg/mapsforge/android/maps/inputhandling/SingleTouchHandler;->previousEventTap:Z

    .line 95
    iget-object v5, p0, Lorg/mapsforge/android/maps/inputhandling/SingleTouchHandler;->mapView:Lorg/mapsforge/android/maps/MapView;

    iget-object v6, p0, Lorg/mapsforge/android/maps/inputhandling/SingleTouchHandler;->mapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v6}, Lorg/mapsforge/android/maps/MapView;->getProjection()Lorg/mapsforge/android/maps/Projection;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    invoke-interface {v6, v7, v8}, Lorg/mapsforge/android/maps/Projection;->fromPixels(II)Lorg/mapsforge/core/GeoPoint;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/mapsforge/android/maps/MapView;->setCenter(Lorg/mapsforge/core/GeoPoint;)V

    .line 97
    iget-object v5, p0, Lorg/mapsforge/android/maps/inputhandling/SingleTouchHandler;->mapView:Lorg/mapsforge/android/maps/MapView;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v9, v6}, Lorg/mapsforge/android/maps/MapView;->zoom(BF)Z

    goto :goto_0

    .line 101
    .end local v1    # "tapDiffTime":J
    .end local v3    # "tapDiffX":F
    .end local v4    # "tapDiffY":F
    :cond_2
    iput-boolean v9, p0, Lorg/mapsforge/android/maps/inputhandling/SingleTouchHandler;->previousEventTap:Z

    .line 105
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lorg/mapsforge/android/maps/inputhandling/SingleTouchHandler;->previousTapX:F

    .line 106
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lorg/mapsforge/android/maps/inputhandling/SingleTouchHandler;->previousTapY:F

    .line 107
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    iput-wide v5, p0, Lorg/mapsforge/android/maps/inputhandling/SingleTouchHandler;->previousTapTime:J

    .line 109
    iget-object v5, p0, Lorg/mapsforge/android/maps/inputhandling/SingleTouchHandler;->mapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v5}, Lorg/mapsforge/android/maps/MapView;->getProjection()Lorg/mapsforge/android/maps/Projection;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    invoke-interface {v5, v6, v7}, Lorg/mapsforge/android/maps/Projection;->fromPixels(II)Lorg/mapsforge/core/GeoPoint;

    .line 111
    iget-object v5, p0, Lorg/mapsforge/android/maps/inputhandling/SingleTouchHandler;->mapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v5}, Lorg/mapsforge/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v6

    monitor-enter v6

    .line 112
    :try_start_0
    iget-object v5, p0, Lorg/mapsforge/android/maps/inputhandling/SingleTouchHandler;->mapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v5}, Lorg/mapsforge/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_4

    .line 113
    iget-object v5, p0, Lorg/mapsforge/android/maps/inputhandling/SingleTouchHandler;->mapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v5}, Lorg/mapsforge/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    iget-object v5, p0, Lorg/mapsforge/android/maps/inputhandling/SingleTouchHandler;->mapView:Lorg/mapsforge/android/maps/MapView;

    invoke-static {}, Lorg/mapsforge/android/maps/overlay/Overlay;->onTap$5cb38ae7()Z

    .line 115
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 118
    :cond_4
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .end local v0    # "i":I
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method


# virtual methods
.method public final getAction(Landroid/view/MotionEvent;)I
    .locals 1
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 34
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    return v0
.end method

.method final handleMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 125
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    .line 126
    iget-object v2, p0, Lorg/mapsforge/android/maps/inputhandling/SingleTouchHandler;->longPressDetector:Lorg/mapsforge/android/maps/inputhandling/LongPressDetector;

    invoke-virtual {v2}, Lorg/mapsforge/android/maps/inputhandling/LongPressDetector;->pressStart()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lorg/mapsforge/android/maps/inputhandling/SingleTouchHandler;->previousPositionX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lorg/mapsforge/android/maps/inputhandling/SingleTouchHandler;->previousPositionY:F

    iput-boolean v1, p0, Lorg/mapsforge/android/maps/inputhandling/SingleTouchHandler;->moveThresholdReached:Z

    .line 136
    :cond_0
    :goto_0
    return v0

    .line 127
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 128
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lorg/mapsforge/android/maps/inputhandling/SingleTouchHandler;->previousPositionX:F

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lorg/mapsforge/android/maps/inputhandling/SingleTouchHandler;->previousPositionY:F

    sub-float/2addr v2, v3

    iget-boolean v3, p0, Lorg/mapsforge/android/maps/inputhandling/SingleTouchHandler;->moveThresholdReached:Z

    if-nez v3, :cond_3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v3, p0, Lorg/mapsforge/android/maps/inputhandling/SingleTouchHandler;->mapMoveDelta:F

    cmpl-float v1, v1, v3

    if-gtz v1, :cond_2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lorg/mapsforge/android/maps/inputhandling/SingleTouchHandler;->mapMoveDelta:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    :cond_2
    iget-object v1, p0, Lorg/mapsforge/android/maps/inputhandling/SingleTouchHandler;->longPressDetector:Lorg/mapsforge/android/maps/inputhandling/LongPressDetector;

    invoke-virtual {v1}, Lorg/mapsforge/android/maps/inputhandling/LongPressDetector;->pressStop()V

    iput-boolean v0, p0, Lorg/mapsforge/android/maps/inputhandling/SingleTouchHandler;->moveThresholdReached:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lorg/mapsforge/android/maps/inputhandling/SingleTouchHandler;->previousPositionX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lorg/mapsforge/android/maps/inputhandling/SingleTouchHandler;->previousPositionY:F

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lorg/mapsforge/android/maps/inputhandling/SingleTouchHandler;->previousPositionX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lorg/mapsforge/android/maps/inputhandling/SingleTouchHandler;->previousPositionY:F

    iget-object v3, p0, Lorg/mapsforge/android/maps/inputhandling/SingleTouchHandler;->mapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v3}, Lorg/mapsforge/android/maps/MapView;->getFrameBuffer()Lorg/mapsforge/android/maps/FrameBuffer;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lorg/mapsforge/android/maps/FrameBuffer;->matrixPostTranslate(FF)V

    iget-object v3, p0, Lorg/mapsforge/android/maps/inputhandling/SingleTouchHandler;->mapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v3}, Lorg/mapsforge/android/maps/MapView;->getMapPosition()Lorg/mapsforge/android/maps/MapViewPosition;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lorg/mapsforge/android/maps/MapViewPosition;->moveMap(FF)V

    iget-object v1, p0, Lorg/mapsforge/android/maps/inputhandling/SingleTouchHandler;->mapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v1}, Lorg/mapsforge/android/maps/MapView;->redrawTiles()V

    goto :goto_0

    .line 129
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_5

    .line 130
    invoke-direct {p0, p1}, Lorg/mapsforge/android/maps/inputhandling/SingleTouchHandler;->onActionUp(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 131
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    .line 132
    iget-object v1, p0, Lorg/mapsforge/android/maps/inputhandling/SingleTouchHandler;->longPressDetector:Lorg/mapsforge/android/maps/inputhandling/LongPressDetector;

    invoke-virtual {v1}, Lorg/mapsforge/android/maps/inputhandling/LongPressDetector;->pressStop()V

    goto :goto_0

    :cond_6
    move v0, v1

    .line 136
    goto :goto_0
.end method
