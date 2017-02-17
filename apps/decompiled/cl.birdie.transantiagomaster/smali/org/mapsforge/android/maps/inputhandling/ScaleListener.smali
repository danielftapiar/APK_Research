.class final Lorg/mapsforge/android/maps/inputhandling/ScaleListener;
.super Ljava/lang/Object;
.source "ScaleListener.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# instance fields
.field private focusX:F

.field private focusY:F

.field private final mapView:Lorg/mapsforge/android/maps/MapView;

.field private scaleFactorApplied:F


# direct methods
.method constructor <init>(Lorg/mapsforge/android/maps/MapView;)V
    .locals 0
    .param p1, "mapView"    # Lorg/mapsforge/android/maps/MapView;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/mapsforge/android/maps/inputhandling/ScaleListener;->mapView:Lorg/mapsforge/android/maps/MapView;

    .line 35
    return-void
.end method


# virtual methods
.method public final onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 4
    .param p1, "scaleGestureDetector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 39
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    .line 40
    .local v0, "scaleFactor":F
    iget v1, p0, Lorg/mapsforge/android/maps/inputhandling/ScaleListener;->scaleFactorApplied:F

    mul-float/2addr v1, v0

    iput v1, p0, Lorg/mapsforge/android/maps/inputhandling/ScaleListener;->scaleFactorApplied:F

    .line 41
    iget-object v1, p0, Lorg/mapsforge/android/maps/inputhandling/ScaleListener;->mapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v1}, Lorg/mapsforge/android/maps/MapView;->getFrameBuffer()Lorg/mapsforge/android/maps/FrameBuffer;

    move-result-object v1

    iget v2, p0, Lorg/mapsforge/android/maps/inputhandling/ScaleListener;->focusX:F

    iget v3, p0, Lorg/mapsforge/android/maps/inputhandling/ScaleListener;->focusY:F

    invoke-virtual {v1, v0, v0, v2, v3}, Lorg/mapsforge/android/maps/FrameBuffer;->matrixPostScale(FFFF)V

    .line 42
    iget-object v1, p0, Lorg/mapsforge/android/maps/inputhandling/ScaleListener;->mapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v1}, Lorg/mapsforge/android/maps/MapView;->invalidateOnUiThread()V

    .line 43
    const/4 v1, 0x1

    return v1
.end method

.method public final onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .param p1, "scaleGestureDetector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 48
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/mapsforge/android/maps/inputhandling/ScaleListener;->scaleFactorApplied:F

    .line 49
    iget-object v0, p0, Lorg/mapsforge/android/maps/inputhandling/ScaleListener;->mapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v0}, Lorg/mapsforge/android/maps/MapView;->getWidth()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    iput v0, p0, Lorg/mapsforge/android/maps/inputhandling/ScaleListener;->focusX:F

    .line 50
    iget-object v0, p0, Lorg/mapsforge/android/maps/inputhandling/ScaleListener;->mapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v0}, Lorg/mapsforge/android/maps/MapView;->getHeight()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    iput v0, p0, Lorg/mapsforge/android/maps/inputhandling/ScaleListener;->focusY:F

    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public final onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 5
    .param p1, "scaleGestureDetector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 56
    iget v1, p0, Lorg/mapsforge/android/maps/inputhandling/ScaleListener;->scaleFactorApplied:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    int-to-byte v0, v1

    .line 57
    .local v0, "zoomLevelDiff":B
    iget-object v1, p0, Lorg/mapsforge/android/maps/inputhandling/ScaleListener;->mapView:Lorg/mapsforge/android/maps/MapView;

    iget v2, p0, Lorg/mapsforge/android/maps/inputhandling/ScaleListener;->scaleFactorApplied:F

    invoke-virtual {v1, v0, v2}, Lorg/mapsforge/android/maps/MapView;->zoom(BF)Z

    .line 58
    return-void
.end method
