.class public abstract Lorg/mapsforge/android/maps/overlay/Overlay;
.super Ljava/lang/Thread;
.source "Overlay.java"


# instance fields
.field private changedSize:Z

.field private hasValidDimensions:Z

.field protected internalMapView:Lorg/mapsforge/android/maps/MapView;

.field private final matrix:Landroid/graphics/Matrix;

.field private matrixScaleFactor:F

.field private overlayBitmap1:Landroid/graphics/Bitmap;

.field private overlayBitmap2:Landroid/graphics/Bitmap;

.field private final overlayCanvas:Landroid/graphics/Canvas;

.field private final point:Landroid/graphics/Point;

.field private positionAfterDraw:Landroid/graphics/Point;

.field private positionBeforeDraw:Landroid/graphics/Point;

.field private redraw:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 123
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->overlayCanvas:Landroid/graphics/Canvas;

    .line 124
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->matrix:Landroid/graphics/Matrix;

    .line 125
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->point:Landroid/graphics/Point;

    .line 126
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->positionBeforeDraw:Landroid/graphics/Point;

    .line 127
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->positionAfterDraw:Landroid/graphics/Point;

    .line 128
    return-void
.end method

.method public static onLongPress$5cb38ae7()Z
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public static onTap$5cb38ae7()Z
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 137
    iget-object v1, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->matrix:Landroid/graphics/Matrix;

    monitor-enter v1

    .line 138
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->overlayBitmap1:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->overlayBitmap1:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->matrix:Landroid/graphics/Matrix;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 141
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final matrixPostScale(FFFF)V
    .locals 2
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F
    .param p3, "pivotX"    # F
    .param p4, "pivotY"    # F

    .prologue
    .line 155
    iget-object v1, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->matrix:Landroid/graphics/Matrix;

    monitor-enter v1

    .line 156
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 157
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final matrixPostTranslate(FF)V
    .locals 2
    .param p1, "translateX"    # F
    .param p2, "translateY"    # F

    .prologue
    .line 167
    iget-object v1, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->matrix:Landroid/graphics/Matrix;

    monitor-enter v1

    .line 168
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 169
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final onSizeChanged()V
    .locals 1

    .prologue
    .line 192
    monitor-enter p0

    .line 193
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->changedSize:Z

    .line 194
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 195
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final requestRedraw()V
    .locals 1

    .prologue
    .line 219
    monitor-enter p0

    .line 220
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->redraw:Z

    .line 221
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 222
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 227
    const-string v0, "Overlay"

    invoke-virtual {p0, v0}, Lorg/mapsforge/android/maps/overlay/Overlay;->setName(Ljava/lang/String;)V

    .line 229
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/mapsforge/android/maps/overlay/Overlay;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_8

    .line 230
    monitor-enter p0

    .line 231
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lorg/mapsforge/android/maps/overlay/Overlay;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->changedSize:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->redraw:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 233
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 236
    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {p0}, Lorg/mapsforge/android/maps/overlay/Overlay;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 239
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 241
    invoke-virtual {p0}, Lorg/mapsforge/android/maps/overlay/Overlay;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_8

    .line 242
    iget-boolean v0, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->changedSize:Z

    if-eqz v0, :cond_4

    .line 246
    iput-boolean v7, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->changedSize:Z

    iget-object v0, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->overlayBitmap1:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->overlayBitmap1:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    iget-object v0, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->overlayBitmap2:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->overlayBitmap2:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    iget-object v0, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->internalMapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v0}, Lorg/mapsforge/android/maps/MapView;->getWidth()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->internalMapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v0}, Lorg/mapsforge/android/maps/MapView;->getHeight()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->internalMapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v0}, Lorg/mapsforge/android/maps/MapView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->internalMapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v1}, Lorg/mapsforge/android/maps/MapView;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->overlayBitmap1:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->internalMapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v0}, Lorg/mapsforge/android/maps/MapView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->internalMapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v1}, Lorg/mapsforge/android/maps/MapView;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->overlayBitmap2:Landroid/graphics/Bitmap;

    iput-boolean v8, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->redraw:Z

    iput-boolean v8, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->hasValidDimensions:Z

    .line 249
    :cond_4
    :goto_2
    iget-boolean v0, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->redraw:Z

    if-eqz v0, :cond_0

    .line 250
    iput-boolean v7, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->redraw:Z

    iget-boolean v0, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->hasValidDimensions:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->internalMapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v0}, Lorg/mapsforge/android/maps/MapView;->getProjection()Lorg/mapsforge/android/maps/Projection;

    move-result-object v0

    iget-object v1, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->overlayBitmap2:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v7}, Landroid/graphics/Bitmap;->eraseColor(I)V

    iget-object v1, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->overlayCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->overlayBitmap2:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->overlayCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->overlayCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->internalMapView:Lorg/mapsforge/android/maps/MapView;

    monitor-enter v1

    :try_start_4
    iget-object v2, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->internalMapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v2}, Lorg/mapsforge/android/maps/MapView;->getMapPosition()Lorg/mapsforge/android/maps/MapViewPosition;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mapsforge/android/maps/MapViewPosition;->getZoomLevel()B

    move-result v2

    iget-object v3, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->internalMapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v3}, Lorg/mapsforge/android/maps/MapView;->getMapPosition()Lorg/mapsforge/android/maps/MapViewPosition;

    move-result-object v3

    invoke-virtual {v3}, Lorg/mapsforge/android/maps/MapViewPosition;->getMapCenter()Lorg/mapsforge/core/GeoPoint;

    move-result-object v3

    iget-object v4, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->positionBeforeDraw:Landroid/graphics/Point;

    invoke-interface {v0, v3, v4, v2}, Lorg/mapsforge/android/maps/Projection;->toPoint(Lorg/mapsforge/core/GeoPoint;Landroid/graphics/Point;B)Landroid/graphics/Point;

    move-result-object v3

    iput-object v3, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->positionBeforeDraw:Landroid/graphics/Point;

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object v1, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->point:Landroid/graphics/Point;

    iget-object v3, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->positionBeforeDraw:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->overlayCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v4}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    shr-int/lit8 v4, v4, 0x1

    sub-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->point:Landroid/graphics/Point;

    iget-object v3, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->positionBeforeDraw:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget-object v4, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->overlayCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v4}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    shr-int/lit8 v4, v4, 0x1

    sub-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lorg/mapsforge/android/maps/overlay/Overlay;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->changedSize:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->overlayCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->point:Landroid/graphics/Point;

    invoke-virtual {p0}, Lorg/mapsforge/android/maps/overlay/Overlay;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->changedSize:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->internalMapView:Lorg/mapsforge/android/maps/MapView;

    monitor-enter v1

    :try_start_5
    iget-object v3, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->internalMapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v3}, Lorg/mapsforge/android/maps/MapView;->getMapPosition()Lorg/mapsforge/android/maps/MapViewPosition;

    move-result-object v3

    invoke-virtual {v3}, Lorg/mapsforge/android/maps/MapViewPosition;->getZoomLevel()B

    move-result v3

    iget-object v4, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->internalMapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v4}, Lorg/mapsforge/android/maps/MapView;->getMapPosition()Lorg/mapsforge/android/maps/MapViewPosition;

    move-result-object v4

    invoke-virtual {v4}, Lorg/mapsforge/android/maps/MapViewPosition;->getMapCenter()Lorg/mapsforge/core/GeoPoint;

    move-result-object v4

    iget-object v5, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->positionAfterDraw:Landroid/graphics/Point;

    invoke-interface {v0, v4, v5, v2}, Lorg/mapsforge/android/maps/Projection;->toPoint(Lorg/mapsforge/core/GeoPoint;Landroid/graphics/Point;B)Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->positionAfterDraw:Landroid/graphics/Point;

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    iget-object v0, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->internalMapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v0}, Lorg/mapsforge/android/maps/MapView;->isZoomAnimatorRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->matrix:Landroid/graphics/Matrix;

    monitor-enter v1

    :try_start_6
    iget-object v0, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->matrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->positionBeforeDraw:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->positionAfterDraw:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->positionBeforeDraw:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    iget-object v6, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->positionAfterDraw:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    sub-int v0, v3, v2

    int-to-byte v0, v0

    if-lez v0, :cond_7

    shl-int v0, v8, v0

    int-to-float v0, v0

    iput v0, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->matrixScaleFactor:F

    iget-object v0, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->matrix:Landroid/graphics/Matrix;

    iget v2, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->matrixScaleFactor:F

    iget v3, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->matrixScaleFactor:F

    iget-object v4, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->overlayCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v4}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    shr-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    iget-object v5, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->overlayCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v5}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    shr-int/lit8 v5, v5, 0x1

    int-to-float v5, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    :cond_5
    :goto_3
    iget-object v0, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->overlayBitmap1:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->overlayBitmap2:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->overlayBitmap1:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->overlayBitmap2:Landroid/graphics/Bitmap;

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    invoke-virtual {p0}, Lorg/mapsforge/android/maps/overlay/Overlay;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->changedSize:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->internalMapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v0}, Lorg/mapsforge/android/maps/MapView;->postInvalidate()V

    goto/16 :goto_0

    .line 246
    :cond_6
    iput-boolean v7, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->hasValidDimensions:Z

    goto/16 :goto_2

    .line 250
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_7
    if-gez v0, :cond_5

    const/high16 v2, 0x3f800000    # 1.0f

    neg-int v0, v0

    shl-int v0, v8, v0

    int-to-float v0, v0

    div-float v0, v2, v0

    :try_start_7
    iput v0, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->matrixScaleFactor:F

    iget-object v0, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->matrix:Landroid/graphics/Matrix;

    iget v2, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->matrixScaleFactor:F

    iget v3, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->matrixScaleFactor:F

    iget-object v4, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->overlayCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v4}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    shr-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    iget-object v5, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->overlayCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v5}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    shr-int/lit8 v5, v5, 0x1

    int-to-float v5, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    monitor-exit v1

    throw v0

    .line 255
    :cond_8
    iget-object v0, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->overlayBitmap1:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_9

    .line 256
    iget-object v0, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->overlayBitmap1:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 259
    :cond_9
    iget-object v0, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->overlayBitmap2:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_a

    .line 260
    iget-object v0, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->overlayBitmap2:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 262
    :cond_a
    return-void
.end method

.method public final setupOverlay(Lorg/mapsforge/android/maps/MapView;)V
    .locals 2
    .param p1, "mapView"    # Lorg/mapsforge/android/maps/MapView;

    .prologue
    .line 271
    invoke-virtual {p0}, Lorg/mapsforge/android/maps/overlay/Overlay;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/mapsforge/android/maps/overlay/Overlay;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 272
    :cond_0
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string v1, "overlay thread already destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_1
    iput-object p1, p0, Lorg/mapsforge/android/maps/overlay/Overlay;->internalMapView:Lorg/mapsforge/android/maps/MapView;

    .line 275
    invoke-virtual {p0}, Lorg/mapsforge/android/maps/overlay/Overlay;->onSizeChanged()V

    .line 276
    return-void
.end method
