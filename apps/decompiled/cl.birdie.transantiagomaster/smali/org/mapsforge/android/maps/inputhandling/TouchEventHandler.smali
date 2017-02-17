.class public abstract Lorg/mapsforge/android/maps/inputhandling/TouchEventHandler;
.super Ljava/lang/Object;
.source "TouchEventHandler.java"


# instance fields
.field final doubleTapDelta:F

.field final doubleTapTimeout:I

.field final longPressDetector:Lorg/mapsforge/android/maps/inputhandling/LongPressDetector;

.field final longPressTimeout:I

.field final mapMoveDelta:F

.field final mapView:Lorg/mapsforge/android/maps/MapView;

.field moveThresholdReached:Z

.field previousEventTap:Z

.field previousPositionX:F

.field previousPositionY:F

.field previousTapTime:J

.field previousTapX:F

.field previousTapY:F


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/mapsforge/android/maps/MapView;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mapView"    # Lorg/mapsforge/android/maps/MapView;

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p2, p0, Lorg/mapsforge/android/maps/inputhandling/TouchEventHandler;->mapView:Lorg/mapsforge/android/maps/MapView;

    .line 111
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 112
    .local v0, "viewConfiguration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lorg/mapsforge/android/maps/inputhandling/TouchEventHandler;->mapMoveDelta:F

    .line 113
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lorg/mapsforge/android/maps/inputhandling/TouchEventHandler;->doubleTapDelta:F

    .line 114
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v1

    iput v1, p0, Lorg/mapsforge/android/maps/inputhandling/TouchEventHandler;->doubleTapTimeout:I

    .line 115
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    iput v1, p0, Lorg/mapsforge/android/maps/inputhandling/TouchEventHandler;->longPressTimeout:I

    .line 116
    new-instance v1, Lorg/mapsforge/android/maps/inputhandling/LongPressDetector;

    invoke-direct {v1, p0}, Lorg/mapsforge/android/maps/inputhandling/LongPressDetector;-><init>(Lorg/mapsforge/android/maps/inputhandling/TouchEventHandler;)V

    iput-object v1, p0, Lorg/mapsforge/android/maps/inputhandling/TouchEventHandler;->longPressDetector:Lorg/mapsforge/android/maps/inputhandling/LongPressDetector;

    .line 117
    iget-object v1, p0, Lorg/mapsforge/android/maps/inputhandling/TouchEventHandler;->longPressDetector:Lorg/mapsforge/android/maps/inputhandling/LongPressDetector;

    invoke-virtual {v1}, Lorg/mapsforge/android/maps/inputhandling/LongPressDetector;->start()V

    .line 118
    return-void
.end method

.method public static getInstance(Landroid/content/Context;Lorg/mapsforge/android/maps/MapView;)Lorg/mapsforge/android/maps/inputhandling/TouchEventHandler;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mapView"    # Lorg/mapsforge/android/maps/MapView;

    .prologue
    .line 38
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 39
    new-instance v0, Lorg/mapsforge/android/maps/inputhandling/SingleTouchHandler;

    invoke-direct {v0, p0, p1}, Lorg/mapsforge/android/maps/inputhandling/SingleTouchHandler;-><init>(Landroid/content/Context;Lorg/mapsforge/android/maps/MapView;)V

    .line 41
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/mapsforge/android/maps/inputhandling/MultiTouchHandler;

    invoke-direct {v0, p0, p1}, Lorg/mapsforge/android/maps/inputhandling/MultiTouchHandler;-><init>(Landroid/content/Context;Lorg/mapsforge/android/maps/MapView;)V

    goto :goto_0
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lorg/mapsforge/android/maps/inputhandling/TouchEventHandler;->longPressDetector:Lorg/mapsforge/android/maps/inputhandling/LongPressDetector;

    invoke-virtual {v0}, Lorg/mapsforge/android/maps/inputhandling/LongPressDetector;->interrupt()V

    .line 125
    return-void
.end method

.method final forwardLongPressEvent()Z
    .locals 4

    .prologue
    .line 158
    iget-object v1, p0, Lorg/mapsforge/android/maps/inputhandling/TouchEventHandler;->mapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v1}, Lorg/mapsforge/android/maps/MapView;->getProjection()Lorg/mapsforge/android/maps/Projection;

    move-result-object v1

    iget v2, p0, Lorg/mapsforge/android/maps/inputhandling/TouchEventHandler;->previousPositionX:F

    float-to-int v2, v2

    iget v3, p0, Lorg/mapsforge/android/maps/inputhandling/TouchEventHandler;->previousPositionY:F

    float-to-int v3, v3

    invoke-interface {v1, v2, v3}, Lorg/mapsforge/android/maps/Projection;->fromPixels(II)Lorg/mapsforge/core/GeoPoint;

    move-result-object v1

    .line 160
    if-eqz v1, :cond_1

    .line 161
    iget-object v1, p0, Lorg/mapsforge/android/maps/inputhandling/TouchEventHandler;->mapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v1}, Lorg/mapsforge/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v2

    monitor-enter v2

    .line 162
    :try_start_0
    iget-object v1, p0, Lorg/mapsforge/android/maps/inputhandling/TouchEventHandler;->mapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v1}, Lorg/mapsforge/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 163
    iget-object v1, p0, Lorg/mapsforge/android/maps/inputhandling/TouchEventHandler;->mapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v1}, Lorg/mapsforge/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    iget-object v1, p0, Lorg/mapsforge/android/maps/inputhandling/TouchEventHandler;->mapView:Lorg/mapsforge/android/maps/MapView;

    invoke-static {}, Lorg/mapsforge/android/maps/overlay/Overlay;->onLongPress$5cb38ae7()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 168
    :cond_0
    monitor-exit v2

    .line 170
    .end local v0    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1

    .line 168
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public abstract getAction(Landroid/view/MotionEvent;)I
.end method

.method abstract handleMotionEvent(Landroid/view/MotionEvent;)Z
.end method

.method public final handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 142
    iget-object v0, p0, Lorg/mapsforge/android/maps/inputhandling/TouchEventHandler;->mapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v0}, Lorg/mapsforge/android/maps/MapView;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    const/4 v0, 0x1

    .line 149
    :goto_0
    return v0

    .line 147
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 149
    invoke-virtual {p0, p1}, Lorg/mapsforge/android/maps/inputhandling/TouchEventHandler;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
