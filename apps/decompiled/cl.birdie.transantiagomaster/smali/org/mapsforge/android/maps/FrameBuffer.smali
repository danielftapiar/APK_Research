.class public final Lorg/mapsforge/android/maps/FrameBuffer;
.super Ljava/lang/Object;
.source "FrameBuffer.java"


# static fields
.field static final MAP_VIEW_BACKGROUND:I


# instance fields
.field private height:I

.field private final mapView:Lorg/mapsforge/android/maps/MapView;

.field private mapViewBitmap1:Landroid/graphics/Bitmap;

.field private mapViewBitmap2:Landroid/graphics/Bitmap;

.field private final mapViewCanvas:Landroid/graphics/Canvas;

.field private final matrix:Landroid/graphics/Matrix;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0xee

    .line 34
    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lorg/mapsforge/android/maps/FrameBuffer;->MAP_VIEW_BACKGROUND:I

    return-void
.end method

.method constructor <init>(Lorg/mapsforge/android/maps/MapView;)V
    .locals 1
    .param p1, "mapView"    # Lorg/mapsforge/android/maps/MapView;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/mapsforge/android/maps/FrameBuffer;->mapView:Lorg/mapsforge/android/maps/MapView;

    .line 46
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/android/maps/FrameBuffer;->mapViewCanvas:Landroid/graphics/Canvas;

    .line 47
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/android/maps/FrameBuffer;->matrix:Landroid/graphics/Matrix;

    .line 48
    return-void
.end method


# virtual methods
.method final declared-synchronized clear()V
    .locals 2

    .prologue
    .line 148
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/android/maps/FrameBuffer;->mapViewBitmap1:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lorg/mapsforge/android/maps/FrameBuffer;->mapViewBitmap1:Landroid/graphics/Bitmap;

    sget v1, Lorg/mapsforge/android/maps/FrameBuffer;->MAP_VIEW_BACKGROUND:I

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 152
    :cond_0
    iget-object v0, p0, Lorg/mapsforge/android/maps/FrameBuffer;->mapViewBitmap2:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lorg/mapsforge/android/maps/FrameBuffer;->mapViewBitmap2:Landroid/graphics/Bitmap;

    sget v1, Lorg/mapsforge/android/maps/FrameBuffer;->MAP_VIEW_BACKGROUND:I

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    :cond_1
    monitor-exit p0

    return-void

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized destroy()V
    .locals 1

    .prologue
    .line 166
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/android/maps/FrameBuffer;->mapViewBitmap1:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lorg/mapsforge/android/maps/FrameBuffer;->mapViewBitmap1:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 170
    :cond_0
    iget-object v0, p0, Lorg/mapsforge/android/maps/FrameBuffer;->mapViewBitmap2:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lorg/mapsforge/android/maps/FrameBuffer;->mapViewBitmap2:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    :cond_1
    monitor-exit p0

    return-void

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 176
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/android/maps/FrameBuffer;->mapViewBitmap1:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lorg/mapsforge/android/maps/FrameBuffer;->mapViewBitmap1:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lorg/mapsforge/android/maps/FrameBuffer;->matrix:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    :cond_0
    monitor-exit p0

    return-void

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized drawBitmap(Lorg/mapsforge/core/Tile;Landroid/graphics/Bitmap;)Z
    .locals 13
    .param p1, "tile"    # Lorg/mapsforge/core/Tile;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    iget-object v9, p0, Lorg/mapsforge/android/maps/FrameBuffer;->mapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v9}, Lorg/mapsforge/android/maps/MapView;->getMapPosition()Lorg/mapsforge/android/maps/MapViewPosition;

    move-result-object v9

    invoke-virtual {v9}, Lorg/mapsforge/android/maps/MapViewPosition;->getMapPosition()Lorg/mapsforge/core/MapPosition;

    move-result-object v2

    .line 61
    .local v2, "mapPosition":Lorg/mapsforge/core/MapPosition;
    iget-byte v9, p1, Lorg/mapsforge/core/Tile;->zoomLevel:B

    iget-byte v10, v2, Lorg/mapsforge/core/MapPosition;->zoomLevel:B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v9, v10, :cond_0

    .line 63
    const/4 v9, 0x0

    .line 102
    :goto_0
    monitor-exit p0

    return v9

    .line 64
    :cond_0
    :try_start_1
    iget-object v9, p0, Lorg/mapsforge/android/maps/FrameBuffer;->mapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v9}, Lorg/mapsforge/android/maps/MapView;->isZoomAnimatorRunning()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 66
    const/4 v9, 0x0

    goto :goto_0

    .line 69
    :cond_1
    iget-object v0, v2, Lorg/mapsforge/core/MapPosition;->geoPoint:Lorg/mapsforge/core/GeoPoint;

    .line 70
    .local v0, "geoPoint":Lorg/mapsforge/core/GeoPoint;
    invoke-virtual {v0}, Lorg/mapsforge/core/GeoPoint;->getLongitude()D

    move-result-wide v9

    iget-byte v11, v2, Lorg/mapsforge/core/MapPosition;->zoomLevel:B

    invoke-static {v9, v10, v11}, Lorg/mapsforge/core/MercatorProjection;->longitudeToPixelX(DB)D

    move-result-wide v4

    .line 71
    .local v4, "pixelLeft":D
    invoke-virtual {v0}, Lorg/mapsforge/core/GeoPoint;->getLatitude()D

    move-result-wide v9

    iget-byte v11, v2, Lorg/mapsforge/core/MapPosition;->zoomLevel:B

    invoke-static {v9, v10, v11}, Lorg/mapsforge/core/MercatorProjection;->latitudeToPixelY(DB)D

    move-result-wide v6

    .line 72
    .local v6, "pixelTop":D
    iget v9, p0, Lorg/mapsforge/android/maps/FrameBuffer;->width:I

    shr-int/lit8 v9, v9, 0x1

    int-to-double v9, v9

    sub-double/2addr v4, v9

    .line 73
    iget v9, p0, Lorg/mapsforge/android/maps/FrameBuffer;->height:I

    shr-int/lit8 v9, v9, 0x1

    int-to-double v9, v9

    sub-double/2addr v6, v9

    .line 75
    invoke-virtual {p1}, Lorg/mapsforge/core/Tile;->getPixelX()J

    move-result-wide v9

    long-to-double v9, v9

    sub-double v9, v4, v9

    const-wide/high16 v11, 0x4070000000000000L    # 256.0

    cmpl-double v9, v9, v11

    if-gtz v9, :cond_2

    iget v9, p0, Lorg/mapsforge/android/maps/FrameBuffer;->width:I

    int-to-double v9, v9

    add-double/2addr v9, v4

    invoke-virtual {p1}, Lorg/mapsforge/core/Tile;->getPixelX()J

    move-result-wide v11

    long-to-double v11, v11

    cmpg-double v9, v9, v11

    if-gez v9, :cond_3

    .line 77
    :cond_2
    const/4 v9, 0x0

    goto :goto_0

    .line 78
    :cond_3
    invoke-virtual {p1}, Lorg/mapsforge/core/Tile;->getPixelY()J

    move-result-wide v9

    long-to-double v9, v9

    sub-double v9, v6, v9

    const-wide/high16 v11, 0x4070000000000000L    # 256.0

    cmpl-double v9, v9, v11

    if-gtz v9, :cond_4

    iget v9, p0, Lorg/mapsforge/android/maps/FrameBuffer;->height:I

    int-to-double v9, v9

    add-double/2addr v9, v6

    invoke-virtual {p1}, Lorg/mapsforge/core/Tile;->getPixelY()J

    move-result-wide v11

    long-to-double v11, v11

    cmpg-double v9, v9, v11

    if-gez v9, :cond_5

    .line 80
    :cond_4
    const/4 v9, 0x0

    goto :goto_0

    .line 83
    :cond_5
    iget-object v9, p0, Lorg/mapsforge/android/maps/FrameBuffer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v9}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v9

    if-nez v9, :cond_6

    .line 85
    iget-object v9, p0, Lorg/mapsforge/android/maps/FrameBuffer;->mapViewBitmap2:Landroid/graphics/Bitmap;

    sget v10, Lorg/mapsforge/android/maps/FrameBuffer;->MAP_VIEW_BACKGROUND:I

    invoke-virtual {v9, v10}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 86
    iget-object v9, p0, Lorg/mapsforge/android/maps/FrameBuffer;->mapViewCanvas:Landroid/graphics/Canvas;

    iget-object v10, p0, Lorg/mapsforge/android/maps/FrameBuffer;->mapViewBitmap2:Landroid/graphics/Bitmap;

    invoke-virtual {v9, v10}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 89
    iget-object v9, p0, Lorg/mapsforge/android/maps/FrameBuffer;->mapViewCanvas:Landroid/graphics/Canvas;

    iget-object v10, p0, Lorg/mapsforge/android/maps/FrameBuffer;->mapViewBitmap1:Landroid/graphics/Bitmap;

    iget-object v11, p0, Lorg/mapsforge/android/maps/FrameBuffer;->matrix:Landroid/graphics/Matrix;

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 90
    iget-object v9, p0, Lorg/mapsforge/android/maps/FrameBuffer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v9}, Landroid/graphics/Matrix;->reset()V

    .line 93
    iget-object v3, p0, Lorg/mapsforge/android/maps/FrameBuffer;->mapViewBitmap1:Landroid/graphics/Bitmap;

    .line 94
    .local v3, "mapViewBitmapSwap":Landroid/graphics/Bitmap;
    iget-object v9, p0, Lorg/mapsforge/android/maps/FrameBuffer;->mapViewBitmap2:Landroid/graphics/Bitmap;

    iput-object v9, p0, Lorg/mapsforge/android/maps/FrameBuffer;->mapViewBitmap1:Landroid/graphics/Bitmap;

    .line 95
    iput-object v3, p0, Lorg/mapsforge/android/maps/FrameBuffer;->mapViewBitmap2:Landroid/graphics/Bitmap;

    .line 99
    .end local v3    # "mapViewBitmapSwap":Landroid/graphics/Bitmap;
    :cond_6
    invoke-virtual {p1}, Lorg/mapsforge/core/Tile;->getPixelX()J

    move-result-wide v9

    long-to-double v9, v9

    sub-double/2addr v9, v4

    double-to-float v1, v9

    .line 100
    .local v1, "left":F
    invoke-virtual {p1}, Lorg/mapsforge/core/Tile;->getPixelY()J

    move-result-wide v9

    long-to-double v9, v9

    sub-double/2addr v9, v6

    double-to-float v8, v9

    .line 101
    .local v8, "top":F
    iget-object v9, p0, Lorg/mapsforge/android/maps/FrameBuffer;->mapViewCanvas:Landroid/graphics/Canvas;

    const/4 v10, 0x0

    invoke-virtual {v9, p2, v1, v8, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 60
    .end local v0    # "geoPoint":Lorg/mapsforge/core/GeoPoint;
    .end local v1    # "left":F
    .end local v2    # "mapPosition":Lorg/mapsforge/core/MapPosition;
    .end local v4    # "pixelLeft":D
    .end local v6    # "pixelTop":D
    .end local v8    # "top":F
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9
.end method

.method public final matrixPostScale(FFFF)V
    .locals 4
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F
    .param p3, "pivotX"    # F
    .param p4, "pivotY"    # F

    .prologue
    .line 118
    monitor-enter p0

    .line 119
    :try_start_0
    iget-object v2, p0, Lorg/mapsforge/android/maps/FrameBuffer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 120
    iget-object v2, p0, Lorg/mapsforge/android/maps/FrameBuffer;->mapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v2}, Lorg/mapsforge/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 121
    const/4 v0, 0x0

    .local v0, "i":I
    :try_start_1
    iget-object v2, p0, Lorg/mapsforge/android/maps/FrameBuffer;->mapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v2}, Lorg/mapsforge/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 122
    iget-object v2, p0, Lorg/mapsforge/android/maps/FrameBuffer;->mapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v2}, Lorg/mapsforge/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapsforge/android/maps/overlay/Overlay;

    invoke-virtual {v2, p1, p2, p3, p4}, Lorg/mapsforge/android/maps/overlay/Overlay;->matrixPostScale(FFFF)V

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    :try_start_2
    monitor-exit p0

    return-void

    .line 124
    .end local v1    # "n":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 125
    .end local v0    # "i":I
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public final matrixPostTranslate(FF)V
    .locals 4
    .param p1, "translateX"    # F
    .param p2, "translateY"    # F

    .prologue
    .line 137
    monitor-enter p0

    .line 138
    :try_start_0
    iget-object v2, p0, Lorg/mapsforge/android/maps/FrameBuffer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 139
    iget-object v2, p0, Lorg/mapsforge/android/maps/FrameBuffer;->mapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v2}, Lorg/mapsforge/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 140
    const/4 v0, 0x0

    .local v0, "i":I
    :try_start_1
    iget-object v2, p0, Lorg/mapsforge/android/maps/FrameBuffer;->mapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v2}, Lorg/mapsforge/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 141
    iget-object v2, p0, Lorg/mapsforge/android/maps/FrameBuffer;->mapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v2}, Lorg/mapsforge/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapsforge/android/maps/overlay/Overlay;

    invoke-virtual {v2, p1, p2}, Lorg/mapsforge/android/maps/overlay/Overlay;->matrixPostTranslate(FF)V

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    :try_start_2
    monitor-exit p0

    return-void

    .line 143
    .end local v1    # "n":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 144
    .end local v0    # "i":I
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method final declared-synchronized onSizeChanged()V
    .locals 3

    .prologue
    .line 182
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/android/maps/FrameBuffer;->mapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v0}, Lorg/mapsforge/android/maps/MapView;->getWidth()I

    move-result v0

    iput v0, p0, Lorg/mapsforge/android/maps/FrameBuffer;->width:I

    .line 183
    iget-object v0, p0, Lorg/mapsforge/android/maps/FrameBuffer;->mapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v0}, Lorg/mapsforge/android/maps/MapView;->getHeight()I

    move-result v0

    iput v0, p0, Lorg/mapsforge/android/maps/FrameBuffer;->height:I

    .line 184
    iget v0, p0, Lorg/mapsforge/android/maps/FrameBuffer;->width:I

    iget v1, p0, Lorg/mapsforge/android/maps/FrameBuffer;->height:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/android/maps/FrameBuffer;->mapViewBitmap1:Landroid/graphics/Bitmap;

    .line 185
    iget v0, p0, Lorg/mapsforge/android/maps/FrameBuffer;->width:I

    iget v1, p0, Lorg/mapsforge/android/maps/FrameBuffer;->height:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/android/maps/FrameBuffer;->mapViewBitmap2:Landroid/graphics/Bitmap;

    .line 186
    invoke-virtual {p0}, Lorg/mapsforge/android/maps/FrameBuffer;->clear()V

    .line 187
    iget-object v0, p0, Lorg/mapsforge/android/maps/FrameBuffer;->mapViewCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lorg/mapsforge/android/maps/FrameBuffer;->mapViewBitmap1:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    monitor-exit p0

    return-void

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
