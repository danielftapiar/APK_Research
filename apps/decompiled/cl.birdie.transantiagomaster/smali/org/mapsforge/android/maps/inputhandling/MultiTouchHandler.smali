.class public final Lorg/mapsforge/android/maps/inputhandling/MultiTouchHandler;
.super Lorg/mapsforge/android/maps/inputhandling/TouchEventHandler;
.source "MultiTouchHandler.java"


# instance fields
.field private activePointerId:I

.field private multiTouchDownTime:J

.field private final scaleGestureDetector:Landroid/view/ScaleGestureDetector;


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/mapsforge/android/maps/MapView;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mapView"    # Lorg/mapsforge/android/maps/MapView;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lorg/mapsforge/android/maps/inputhandling/TouchEventHandler;-><init>(Landroid/content/Context;Lorg/mapsforge/android/maps/MapView;)V

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lorg/mapsforge/android/maps/inputhandling/MultiTouchHandler;->activePointerId:I

    .line 37
    new-instance v0, Landroid/view/ScaleGestureDetector;

    new-instance v1, Lorg/mapsforge/android/maps/inputhandling/ScaleListener;

    iget-object v2, p0, Lorg/mapsforge/android/maps/inputhandling/MultiTouchHandler;->mapView:Lorg/mapsforge/android/maps/MapView;

    invoke-direct {v1, v2}, Lorg/mapsforge/android/maps/inputhandling/ScaleListener;-><init>(Lorg/mapsforge/android/maps/MapView;)V

    invoke-direct {v0, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lorg/mapsforge/android/maps/inputhandling/MultiTouchHandler;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 38
    return-void
.end method

.method private onActionUp(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 129
    iget-object v6, p0, Lorg/mapsforge/android/maps/inputhandling/MultiTouchHandler;->longPressDetector:Lorg/mapsforge/android/maps/inputhandling/LongPressDetector;

    invoke-virtual {v6}, Lorg/mapsforge/android/maps/inputhandling/LongPressDetector;->pressStop()V

    .line 130
    iget v6, p0, Lorg/mapsforge/android/maps/inputhandling/MultiTouchHandler;->activePointerId:I

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 131
    .local v1, "pointerIndex":I
    const/4 v6, -0x1

    iput v6, p0, Lorg/mapsforge/android/maps/inputhandling/MultiTouchHandler;->activePointerId:I

    .line 132
    iget-boolean v6, p0, Lorg/mapsforge/android/maps/inputhandling/MultiTouchHandler;->moveThresholdReached:Z

    if-nez v6, :cond_0

    iget-object v6, p0, Lorg/mapsforge/android/maps/inputhandling/MultiTouchHandler;->longPressDetector:Lorg/mapsforge/android/maps/inputhandling/LongPressDetector;

    invoke-virtual {v6}, Lorg/mapsforge/android/maps/inputhandling/LongPressDetector;->isEventHandled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 133
    :cond_0
    iput-boolean v11, p0, Lorg/mapsforge/android/maps/inputhandling/MultiTouchHandler;->previousEventTap:Z

    .line 171
    :goto_0
    return v10

    .line 135
    :cond_1
    iget-boolean v6, p0, Lorg/mapsforge/android/maps/inputhandling/MultiTouchHandler;->previousEventTap:Z

    if-eqz v6, :cond_2

    .line 137
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    iget v7, p0, Lorg/mapsforge/android/maps/inputhandling/MultiTouchHandler;->previousTapX:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 138
    .local v4, "tapDiffX":F
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    iget v7, p0, Lorg/mapsforge/android/maps/inputhandling/MultiTouchHandler;->previousTapY:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 139
    .local v5, "tapDiffY":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    iget-wide v8, p0, Lorg/mapsforge/android/maps/inputhandling/MultiTouchHandler;->previousTapTime:J

    sub-long v2, v6, v8

    .line 142
    .local v2, "tapDiffTime":J
    iget v6, p0, Lorg/mapsforge/android/maps/inputhandling/MultiTouchHandler;->doubleTapDelta:F

    cmpg-float v6, v4, v6

    if-gez v6, :cond_3

    iget v6, p0, Lorg/mapsforge/android/maps/inputhandling/MultiTouchHandler;->doubleTapDelta:F

    cmpg-float v6, v5, v6

    if-gez v6, :cond_3

    iget v6, p0, Lorg/mapsforge/android/maps/inputhandling/MultiTouchHandler;->doubleTapTimeout:I

    int-to-long v6, v6

    cmp-long v6, v2, v6

    if-gez v6, :cond_3

    .line 145
    iput-boolean v11, p0, Lorg/mapsforge/android/maps/inputhandling/MultiTouchHandler;->previousEventTap:Z

    .line 146
    iget-object v6, p0, Lorg/mapsforge/android/maps/inputhandling/MultiTouchHandler;->mapView:Lorg/mapsforge/android/maps/MapView;

    iget-object v7, p0, Lorg/mapsforge/android/maps/inputhandling/MultiTouchHandler;->mapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v7}, Lorg/mapsforge/android/maps/MapView;->getProjection()Lorg/mapsforge/android/maps/Projection;

    move-result-object v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v9, v9

    invoke-interface {v7, v8, v9}, Lorg/mapsforge/android/maps/Projection;->fromPixels(II)Lorg/mapsforge/core/GeoPoint;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/mapsforge/android/maps/MapView;->setCenter(Lorg/mapsforge/core/GeoPoint;)V

    .line 148
    iget-object v6, p0, Lorg/mapsforge/android/maps/inputhandling/MultiTouchHandler;->mapView:Lorg/mapsforge/android/maps/MapView;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v10, v7}, Lorg/mapsforge/android/maps/MapView;->zoom(BF)Z

    goto :goto_0

    .line 152
    .end local v2    # "tapDiffTime":J
    .end local v4    # "tapDiffX":F
    .end local v5    # "tapDiffY":F
    :cond_2
    iput-boolean v10, p0, Lorg/mapsforge/android/maps/inputhandling/MultiTouchHandler;->previousEventTap:Z

    .line 156
    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    iput v6, p0, Lorg/mapsforge/android/maps/inputhandling/MultiTouchHandler;->previousTapX:F

    .line 157
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    iput v6, p0, Lorg/mapsforge/android/maps/inputhandling/MultiTouchHandler;->previousTapY:F

    .line 158
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    iput-wide v6, p0, Lorg/mapsforge/android/maps/inputhandling/MultiTouchHandler;->previousTapTime:J

    .line 160
    iget-object v6, p0, Lorg/mapsforge/android/maps/inputhandling/MultiTouchHandler;->mapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v6}, Lorg/mapsforge/android/maps/MapView;->getProjection()Lorg/mapsforge/android/maps/Projection;

    move-result-object v6

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    float-to-int v8, v8

    invoke-interface {v6, v7, v8}, Lorg/mapsforge/android/maps/Projection;->fromPixels(II)Lorg/mapsforge/core/GeoPoint;

    .line 162
    iget-object v6, p0, Lorg/mapsforge/android/maps/inputhandling/MultiTouchHandler;->mapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v6}, Lorg/mapsforge/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v7

    monitor-enter v7

    .line 163
    :try_start_0
    iget-object v6, p0, Lorg/mapsforge/android/maps/inputhandling/MultiTouchHandler;->mapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v6}, Lorg/mapsforge/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_4

    .line 164
    iget-object v6, p0, Lorg/mapsforge/android/maps/inputhandling/MultiTouchHandler;->mapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v6}, Lorg/mapsforge/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    iget-object v6, p0, Lorg/mapsforge/android/maps/inputhandling/MultiTouchHandler;->mapView:Lorg/mapsforge/android/maps/MapView;

    invoke-static {}, Lorg/mapsforge/android/maps/overlay/Overlay;->onTap$5cb38ae7()Z

    .line 166
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 169
    :cond_4
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .end local v0    # "i":I
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method


# virtual methods
.method public final getAction(Landroid/view/MotionEvent;)I
    .locals 1
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 42
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method final handleMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x2

    const/4 v8, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 177
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v4, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-le v1, v2, :cond_1

    .line 178
    :cond_0
    iget-object v1, p0, Lorg/mapsforge/android/maps/inputhandling/MultiTouchHandler;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 181
    :cond_1
    invoke-virtual {p0, p1}, Lorg/mapsforge/android/maps/inputhandling/MultiTouchHandler;->getAction(Landroid/view/MotionEvent;)I

    move-result v0

    .line 183
    .local v0, "action":I
    if-nez v0, :cond_3

    .line 184
    iget-object v1, p0, Lorg/mapsforge/android/maps/inputhandling/MultiTouchHandler;->longPressDetector:Lorg/mapsforge/android/maps/inputhandling/LongPressDetector;

    invoke-virtual {v1}, Lorg/mapsforge/android/maps/inputhandling/LongPressDetector;->pressStart()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lorg/mapsforge/android/maps/inputhandling/MultiTouchHandler;->previousPositionX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lorg/mapsforge/android/maps/inputhandling/MultiTouchHandler;->previousPositionY:F

    iput-boolean v3, p0, Lorg/mapsforge/android/maps/inputhandling/MultiTouchHandler;->moveThresholdReached:Z

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lorg/mapsforge/android/maps/inputhandling/MultiTouchHandler;->activePointerId:I

    .line 198
    :cond_2
    :goto_0
    return v2

    .line 185
    :cond_3
    if-ne v0, v4, :cond_6

    .line 186
    iget v1, p0, Lorg/mapsforge/android/maps/inputhandling/MultiTouchHandler;->activePointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    iget-object v3, p0, Lorg/mapsforge/android/maps/inputhandling/MultiTouchHandler;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v3}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget v4, p0, Lorg/mapsforge/android/maps/inputhandling/MultiTouchHandler;->previousPositionX:F

    sub-float/2addr v3, v4

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iget v5, p0, Lorg/mapsforge/android/maps/inputhandling/MultiTouchHandler;->previousPositionY:F

    sub-float/2addr v4, v5

    iget-boolean v5, p0, Lorg/mapsforge/android/maps/inputhandling/MultiTouchHandler;->moveThresholdReached:Z

    if-nez v5, :cond_5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v5, p0, Lorg/mapsforge/android/maps/inputhandling/MultiTouchHandler;->mapMoveDelta:F

    cmpl-float v3, v3, v5

    if-gtz v3, :cond_4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lorg/mapsforge/android/maps/inputhandling/MultiTouchHandler;->mapMoveDelta:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    :cond_4
    iget-object v3, p0, Lorg/mapsforge/android/maps/inputhandling/MultiTouchHandler;->longPressDetector:Lorg/mapsforge/android/maps/inputhandling/LongPressDetector;

    invoke-virtual {v3}, Lorg/mapsforge/android/maps/inputhandling/LongPressDetector;->pressStop()V

    iput-boolean v2, p0, Lorg/mapsforge/android/maps/inputhandling/MultiTouchHandler;->moveThresholdReached:Z

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lorg/mapsforge/android/maps/inputhandling/MultiTouchHandler;->previousPositionX:F

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, p0, Lorg/mapsforge/android/maps/inputhandling/MultiTouchHandler;->previousPositionY:F

    goto :goto_0

    :cond_5
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    iput v5, p0, Lorg/mapsforge/android/maps/inputhandling/MultiTouchHandler;->previousPositionX:F

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, p0, Lorg/mapsforge/android/maps/inputhandling/MultiTouchHandler;->previousPositionY:F

    iget-object v1, p0, Lorg/mapsforge/android/maps/inputhandling/MultiTouchHandler;->mapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v1}, Lorg/mapsforge/android/maps/MapView;->getFrameBuffer()Lorg/mapsforge/android/maps/FrameBuffer;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Lorg/mapsforge/android/maps/FrameBuffer;->matrixPostTranslate(FF)V

    iget-object v1, p0, Lorg/mapsforge/android/maps/inputhandling/MultiTouchHandler;->mapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v1}, Lorg/mapsforge/android/maps/MapView;->getMapPosition()Lorg/mapsforge/android/maps/MapViewPosition;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Lorg/mapsforge/android/maps/MapViewPosition;->moveMap(FF)V

    iget-object v1, p0, Lorg/mapsforge/android/maps/inputhandling/MultiTouchHandler;->mapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v1}, Lorg/mapsforge/android/maps/MapView;->redrawTiles()V

    goto :goto_0

    .line 187
    :cond_6
    if-ne v0, v2, :cond_7

    .line 188
    invoke-direct {p0, p1}, Lorg/mapsforge/android/maps/inputhandling/MultiTouchHandler;->onActionUp(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 189
    :cond_7
    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    .line 190
    iget-object v1, p0, Lorg/mapsforge/android/maps/inputhandling/MultiTouchHandler;->longPressDetector:Lorg/mapsforge/android/maps/inputhandling/LongPressDetector;

    invoke-virtual {v1}, Lorg/mapsforge/android/maps/inputhandling/LongPressDetector;->pressStop()V

    iput v8, p0, Lorg/mapsforge/android/maps/inputhandling/MultiTouchHandler;->activePointerId:I

    goto :goto_0

    .line 191
    :cond_8
    const/4 v1, 0x5

    if-ne v0, v1, :cond_9

    .line 192
    iget-object v1, p0, Lorg/mapsforge/android/maps/inputhandling/MultiTouchHandler;->longPressDetector:Lorg/mapsforge/android/maps/inputhandling/LongPressDetector;

    invoke-virtual {v1}, Lorg/mapsforge/android/maps/inputhandling/LongPressDetector;->pressStop()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    iput-wide v3, p0, Lorg/mapsforge/android/maps/inputhandling/MultiTouchHandler;->multiTouchDownTime:J

    goto/16 :goto_0

    .line 193
    :cond_9
    const/4 v1, 0x6

    if-ne v0, v1, :cond_c

    .line 194
    iget-object v1, p0, Lorg/mapsforge/android/maps/inputhandling/MultiTouchHandler;->longPressDetector:Lorg/mapsforge/android/maps/inputhandling/LongPressDetector;

    invoke-virtual {v1}, Lorg/mapsforge/android/maps/inputhandling/LongPressDetector;->pressStop()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const v4, 0xff00

    and-int/2addr v1, v4

    shr-int/lit8 v1, v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iget v5, p0, Lorg/mapsforge/android/maps/inputhandling/MultiTouchHandler;->activePointerId:I

    if-ne v4, v5, :cond_a

    if-nez v1, :cond_b

    move v1, v2

    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    iput v4, p0, Lorg/mapsforge/android/maps/inputhandling/MultiTouchHandler;->previousPositionX:F

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iput v4, p0, Lorg/mapsforge/android/maps/inputhandling/MultiTouchHandler;->previousPositionY:F

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lorg/mapsforge/android/maps/inputhandling/MultiTouchHandler;->activePointerId:I

    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iget-wide v6, p0, Lorg/mapsforge/android/maps/inputhandling/MultiTouchHandler;->multiTouchDownTime:J

    sub-long/2addr v4, v6

    iget v1, p0, Lorg/mapsforge/android/maps/inputhandling/MultiTouchHandler;->doubleTapTimeout:I

    int-to-long v6, v1

    cmp-long v1, v4, v6

    if-gez v1, :cond_2

    iput-boolean v3, p0, Lorg/mapsforge/android/maps/inputhandling/MultiTouchHandler;->previousEventTap:Z

    iget-object v1, p0, Lorg/mapsforge/android/maps/inputhandling/MultiTouchHandler;->mapView:Lorg/mapsforge/android/maps/MapView;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v8, v3}, Lorg/mapsforge/android/maps/MapView;->zoom(BF)Z

    goto/16 :goto_0

    :cond_b
    move v1, v3

    goto :goto_1

    :cond_c
    move v2, v3

    .line 198
    goto/16 :goto_0
.end method
