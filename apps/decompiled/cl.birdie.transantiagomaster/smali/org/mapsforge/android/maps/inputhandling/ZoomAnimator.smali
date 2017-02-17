.class public final Lorg/mapsforge/android/maps/inputhandling/ZoomAnimator;
.super Lorg/mapsforge/android/maps/PausableThread;
.source "ZoomAnimator.java"


# instance fields
.field private executeAnimation:Z

.field private final mapView:Lorg/mapsforge/android/maps/MapView;

.field private pivotX:F

.field private pivotY:F

.field private scaleFactorApplied:F

.field private timeStart:J

.field private zoomDifference:F

.field private zoomEnd:F

.field private zoomStart:F


# direct methods
.method public constructor <init>(Lorg/mapsforge/android/maps/MapView;)V
    .locals 0
    .param p1, "mapView"    # Lorg/mapsforge/android/maps/MapView;

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/mapsforge/android/maps/PausableThread;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/mapsforge/android/maps/inputhandling/ZoomAnimator;->mapView:Lorg/mapsforge/android/maps/MapView;

    .line 48
    return-void
.end method


# virtual methods
.method protected final doWork()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lorg/mapsforge/android/maps/inputhandling/ZoomAnimator;->timeStart:J

    sub-long v1, v4, v6

    .line 93
    .local v1, "timeElapsed":J
    const/high16 v4, 0x3f800000    # 1.0f

    long-to-float v5, v1

    const/high16 v6, 0x437a0000    # 250.0f

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 96
    .local v3, "timeElapsedPercent":F
    iget v4, p0, Lorg/mapsforge/android/maps/inputhandling/ZoomAnimator;->zoomStart:F

    iget v5, p0, Lorg/mapsforge/android/maps/inputhandling/ZoomAnimator;->zoomDifference:F

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    .line 97
    iget v5, p0, Lorg/mapsforge/android/maps/inputhandling/ZoomAnimator;->scaleFactorApplied:F

    div-float v0, v4, v5

    .line 98
    .local v0, "scaleFactor":F
    iget v4, p0, Lorg/mapsforge/android/maps/inputhandling/ZoomAnimator;->scaleFactorApplied:F

    mul-float/2addr v4, v0

    iput v4, p0, Lorg/mapsforge/android/maps/inputhandling/ZoomAnimator;->scaleFactorApplied:F

    .line 99
    iget-object v4, p0, Lorg/mapsforge/android/maps/inputhandling/ZoomAnimator;->mapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v4}, Lorg/mapsforge/android/maps/MapView;->getFrameBuffer()Lorg/mapsforge/android/maps/FrameBuffer;

    move-result-object v4

    iget v5, p0, Lorg/mapsforge/android/maps/inputhandling/ZoomAnimator;->pivotX:F

    iget v6, p0, Lorg/mapsforge/android/maps/inputhandling/ZoomAnimator;->pivotY:F

    invoke-virtual {v4, v0, v0, v5, v6}, Lorg/mapsforge/android/maps/FrameBuffer;->matrixPostScale(FFFF)V

    .line 102
    const-wide/16 v4, 0xfa

    cmp-long v4, v1, v4

    if-ltz v4, :cond_0

    .line 103
    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/mapsforge/android/maps/inputhandling/ZoomAnimator;->executeAnimation:Z

    .line 104
    iget-object v4, p0, Lorg/mapsforge/android/maps/inputhandling/ZoomAnimator;->mapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v4}, Lorg/mapsforge/android/maps/MapView;->redrawTiles()V

    .line 109
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v4, p0, Lorg/mapsforge/android/maps/inputhandling/ZoomAnimator;->mapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v4}, Lorg/mapsforge/android/maps/MapView;->postInvalidate()V

    .line 107
    const-wide/16 v4, 0xf

    invoke-static {v4, v5}, Lorg/mapsforge/android/maps/inputhandling/ZoomAnimator;->sleep(J)V

    goto :goto_0
.end method

.method protected final getThreadName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    const-string v0, "ZoomAnimator"

    return-object v0
.end method

.method protected final hasWork()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lorg/mapsforge/android/maps/inputhandling/ZoomAnimator;->executeAnimation:Z

    return v0
.end method

.method public final isExecuting()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lorg/mapsforge/android/maps/inputhandling/ZoomAnimator;->executeAnimation:Z

    return v0
.end method

.method public final setParameters(FFFF)V
    .locals 0
    .param p1, "zoomStart"    # F
    .param p2, "zoomEnd"    # F
    .param p3, "pivotX"    # F
    .param p4, "pivotY"    # F

    .prologue
    .line 70
    iput p1, p0, Lorg/mapsforge/android/maps/inputhandling/ZoomAnimator;->zoomStart:F

    .line 71
    iput p2, p0, Lorg/mapsforge/android/maps/inputhandling/ZoomAnimator;->zoomEnd:F

    .line 72
    iput p3, p0, Lorg/mapsforge/android/maps/inputhandling/ZoomAnimator;->pivotX:F

    .line 73
    iput p4, p0, Lorg/mapsforge/android/maps/inputhandling/ZoomAnimator;->pivotY:F

    .line 74
    return-void
.end method

.method public final startAnimation()V
    .locals 2

    .prologue
    .line 80
    iget v0, p0, Lorg/mapsforge/android/maps/inputhandling/ZoomAnimator;->zoomEnd:F

    iget v1, p0, Lorg/mapsforge/android/maps/inputhandling/ZoomAnimator;->zoomStart:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/mapsforge/android/maps/inputhandling/ZoomAnimator;->zoomDifference:F

    .line 81
    iget v0, p0, Lorg/mapsforge/android/maps/inputhandling/ZoomAnimator;->zoomStart:F

    iput v0, p0, Lorg/mapsforge/android/maps/inputhandling/ZoomAnimator;->scaleFactorApplied:F

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mapsforge/android/maps/inputhandling/ZoomAnimator;->executeAnimation:Z

    .line 83
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/mapsforge/android/maps/inputhandling/ZoomAnimator;->timeStart:J

    .line 84
    monitor-enter p0

    .line 85
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 86
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
