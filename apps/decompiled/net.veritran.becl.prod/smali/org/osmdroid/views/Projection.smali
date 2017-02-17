.class public Lorg/osmdroid/views/Projection;
.super Ljava/lang/Object;
.source "Projection.java"

# interfaces
.implements Lorg/osmdroid/api/IProjection;
.implements Lorg/osmdroid/views/util/constants/MapViewConstants;


# instance fields
.field private final mBoundingBoxProjection:Lorg/osmdroid/util/BoundingBoxE6;

.field private final mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

.field private final mMapOrientation:F

.field private final mMapViewHeight:I

.field private final mMapViewWidth:I

.field protected final mMultiTouchScale:F

.field protected final mOffsetX:I

.field protected final mOffsetY:I

.field private final mRotateAndScaleMatrix:Landroid/graphics/Matrix;

.field private final mRotateScalePoints:[F

.field private final mScreenRectProjection:Landroid/graphics/Rect;

.field private final mUnrotateAndScaleMatrix:Landroid/graphics/Matrix;

.field private final mZoomLevelProjection:I


# direct methods
.method constructor <init>(Lorg/osmdroid/views/MapView;)V
    .locals 7
    .param p1, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lorg/osmdroid/views/Projection;->mRotateAndScaleMatrix:Landroid/graphics/Matrix;

    .line 39
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lorg/osmdroid/views/Projection;->mUnrotateAndScaleMatrix:Landroid/graphics/Matrix;

    .line 40
    const/4 v2, 0x2

    new-array v2, v2, [F

    iput-object v2, p0, Lorg/osmdroid/views/Projection;->mRotateScalePoints:[F

    .line 50
    invoke-virtual {p1, v5}, Lorg/osmdroid/views/MapView;->getZoomLevel(Z)I

    move-result v2

    iput v2, p0, Lorg/osmdroid/views/Projection;->mZoomLevelProjection:I

    .line 51
    invoke-virtual {p1, v4}, Lorg/osmdroid/views/MapView;->getScreenRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    iput-object v2, p0, Lorg/osmdroid/views/Projection;->mScreenRectProjection:Landroid/graphics/Rect;

    .line 52
    invoke-virtual {p1, v4}, Lorg/osmdroid/views/MapView;->getIntrinsicScreenRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    iput-object v2, p0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    .line 53
    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getMapOrientation()F

    move-result v2

    iput v2, p0, Lorg/osmdroid/views/Projection;->mMapOrientation:F

    .line 55
    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getWidth()I

    move-result v2

    iput v2, p0, Lorg/osmdroid/views/Projection;->mMapViewWidth:I

    .line 56
    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getHeight()I

    move-result v2

    iput v2, p0, Lorg/osmdroid/views/Projection;->mMapViewHeight:I

    .line 57
    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getScrollX()I

    move-result v2

    neg-int v2, v2

    iput v2, p0, Lorg/osmdroid/views/Projection;->mOffsetX:I

    .line 58
    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getScrollY()I

    move-result v2

    neg-int v2, v2

    iput v2, p0, Lorg/osmdroid/views/Projection;->mOffsetY:I

    .line 60
    iget-object v2, p0, Lorg/osmdroid/views/Projection;->mRotateAndScaleMatrix:Landroid/graphics/Matrix;

    iget-object v3, p1, Lorg/osmdroid/views/MapView;->mRotateScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 61
    iget-object v2, p0, Lorg/osmdroid/views/Projection;->mRotateAndScaleMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lorg/osmdroid/views/Projection;->mUnrotateAndScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 62
    iget v2, p1, Lorg/osmdroid/views/MapView;->mMultiTouchScale:F

    iput v2, p0, Lorg/osmdroid/views/Projection;->mMultiTouchScale:F

    .line 64
    iget v2, p0, Lorg/osmdroid/views/Projection;->mMapViewWidth:I

    invoke-virtual {p0, v2, v5, v4}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    .line 65
    .local v0, "neGeoPoint":Lorg/osmdroid/api/IGeoPoint;
    iget v2, p0, Lorg/osmdroid/views/Projection;->mMapViewHeight:I

    invoke-virtual {p0, v5, v2, v4}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v1

    .line 67
    .local v1, "swGeoPoint":Lorg/osmdroid/api/IGeoPoint;
    new-instance v2, Lorg/osmdroid/util/BoundingBoxE6;

    invoke-interface {v0}, Lorg/osmdroid/api/IGeoPoint;->getLatitudeE6()I

    move-result v3

    invoke-interface {v0}, Lorg/osmdroid/api/IGeoPoint;->getLongitudeE6()I

    move-result v4

    invoke-interface {v1}, Lorg/osmdroid/api/IGeoPoint;->getLatitudeE6()I

    move-result v5

    invoke-interface {v1}, Lorg/osmdroid/api/IGeoPoint;->getLongitudeE6()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/osmdroid/util/BoundingBoxE6;-><init>(IIII)V

    iput-object v2, p0, Lorg/osmdroid/views/Projection;->mBoundingBoxProjection:Lorg/osmdroid/util/BoundingBoxE6;

    .line 70
    return-void
.end method


# virtual methods
.method protected adjustForDateLine(IILandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "reuse"    # Landroid/graphics/Point;

    .prologue
    .line 112
    if-eqz p3, :cond_4

    move-object v3, p3

    .line 113
    .local v3, "out":Landroid/graphics/Point;
    :goto_0
    invoke-virtual {v3, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 114
    iget v4, p0, Lorg/osmdroid/views/Projection;->mMapViewWidth:I

    neg-int v4, v4

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lorg/osmdroid/views/Projection;->mMapViewHeight:I

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Point;->offset(II)V

    .line 115
    invoke-virtual {p0}, Lorg/osmdroid/views/Projection;->getZoomLevel()I

    move-result v4

    invoke-static {v4}, Lorg/osmdroid/util/TileSystem;->MapSize(I)I

    move-result v2

    .line 116
    .local v2, "mapSize":I
    iget v4, v3, Landroid/graphics/Point;->x:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 117
    .local v0, "absX":I
    iget v4, v3, Landroid/graphics/Point;->y:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 118
    .local v1, "absY":I
    iget v4, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-le v0, v4, :cond_0

    .line 119
    iget v4, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v2

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 121
    :cond_0
    iget v4, v3, Landroid/graphics/Point;->x:I

    add-int/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-le v0, v4, :cond_1

    .line 122
    iget v4, v3, Landroid/graphics/Point;->x:I

    add-int/2addr v4, v2

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 124
    :cond_1
    iget v4, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-le v1, v4, :cond_2

    .line 125
    iget v4, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v2

    iput v4, v3, Landroid/graphics/Point;->y:I

    .line 127
    :cond_2
    iget v4, v3, Landroid/graphics/Point;->y:I

    add-int/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-le v1, v4, :cond_3

    .line 128
    iget v4, v3, Landroid/graphics/Point;->y:I

    add-int/2addr v4, v2

    iput v4, v3, Landroid/graphics/Point;->y:I

    .line 130
    :cond_3
    iget v4, p0, Lorg/osmdroid/views/Projection;->mMapViewWidth:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lorg/osmdroid/views/Projection;->mMapViewHeight:I

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Point;->offset(II)V

    .line 131
    return-object v3

    .line 112
    .end local v0    # "absX":I
    .end local v1    # "absY":I
    .end local v2    # "mapSize":I
    .end local v3    # "out":Landroid/graphics/Point;
    :cond_4
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    goto :goto_0
.end method

.method public fromPixels(II)Lorg/osmdroid/api/IGeoPoint;
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "reuse"    # Lorg/osmdroid/util/GeoPoint;

    .prologue
    .line 98
    iget v0, p0, Lorg/osmdroid/views/Projection;->mOffsetX:I

    sub-int v0, p1, v0

    iget v1, p0, Lorg/osmdroid/views/Projection;->mOffsetY:I

    sub-int v1, p2, v1

    iget v2, p0, Lorg/osmdroid/views/Projection;->mZoomLevelProjection:I

    invoke-static {v0, v1, v2, p3}, Lorg/osmdroid/util/TileSystem;->PixelXYToLatLong(IIILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public getBoundingBox()Lorg/osmdroid/util/BoundingBoxE6;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mBoundingBoxProjection:Lorg/osmdroid/util/BoundingBoxE6;

    return-object v0
.end method

.method public getIntrinsicScreenRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getInvertedScaleRotateCanvasMatrix()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mUnrotateAndScaleMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getMapOrientation()F
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lorg/osmdroid/views/Projection;->mMapOrientation:F

    return v0
.end method

.method public getNorthEast()Lorg/osmdroid/api/IGeoPoint;
    .locals 3

    .prologue
    .line 216
    iget v0, p0, Lorg/osmdroid/views/Projection;->mMapViewWidth:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public getScreenRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mScreenRectProjection:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSouthWest()Lorg/osmdroid/api/IGeoPoint;
    .locals 3

    .prologue
    .line 221
    const/4 v0, 0x0

    iget v1, p0, Lorg/osmdroid/views/Projection;->mMapViewHeight:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public getZoomLevel()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lorg/osmdroid/views/Projection;->mZoomLevelProjection:I

    return v0
.end method

.method public metersToEquatorPixels(F)F
    .locals 3
    .param p1, "meters"    # F

    .prologue
    .line 196
    const-wide/16 v0, 0x0

    iget v2, p0, Lorg/osmdroid/views/Projection;->mZoomLevelProjection:I

    invoke-static {v0, v1, v2}, Lorg/osmdroid/util/TileSystem;->GroundResolution(DI)D

    move-result-wide v0

    double-to-float v0, v0

    div-float v0, p1, v0

    return v0
.end method

.method public metersToPixels(F)F
    .locals 3
    .param p1, "meters"    # F

    .prologue
    .line 209
    invoke-virtual {p0}, Lorg/osmdroid/views/Projection;->getBoundingBox()Lorg/osmdroid/util/BoundingBoxE6;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBoxE6;->getCenter()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v0

    iget v2, p0, Lorg/osmdroid/views/Projection;->mZoomLevelProjection:I

    invoke-static {v0, v1, v2}, Lorg/osmdroid/util/TileSystem;->GroundResolution(DI)D

    move-result-wide v0

    double-to-float v0, v0

    div-float v0, p1, v0

    return v0
.end method

.method public rotateAndScalePoint(IILandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "reuse"    # Landroid/graphics/Point;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 255
    if-nez p3, :cond_0

    .line 256
    new-instance p3, Landroid/graphics/Point;

    .end local p3    # "reuse":Landroid/graphics/Point;
    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    .line 258
    .restart local p3    # "reuse":Landroid/graphics/Point;
    :cond_0
    invoke-virtual {p0}, Lorg/osmdroid/views/Projection;->getMapOrientation()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lorg/osmdroid/views/Projection;->mMultiTouchScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 259
    :cond_1
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mRotateScalePoints:[F

    int-to-float v1, p1

    aput v1, v0, v2

    .line 260
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mRotateScalePoints:[F

    int-to-float v1, p2

    aput v1, v0, v3

    .line 261
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mRotateAndScaleMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lorg/osmdroid/views/Projection;->mRotateScalePoints:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 262
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mRotateScalePoints:[F

    aget v0, v0, v2

    float-to-int v0, v0

    iget-object v1, p0, Lorg/osmdroid/views/Projection;->mRotateScalePoints:[F

    aget v1, v1, v3

    float-to-int v1, v1

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 265
    :goto_0
    return-object p3

    .line 264
    :cond_2
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Point;->set(II)V

    goto :goto_0
.end method

.method public toMercatorPixels(IILandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "reuse"    # Landroid/graphics/Point;

    .prologue
    .line 188
    if-eqz p3, :cond_0

    move-object v0, p3

    .line 189
    .local v0, "out":Landroid/graphics/Point;
    :goto_0
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 190
    iget v1, p0, Lorg/osmdroid/views/Projection;->mOffsetX:I

    neg-int v1, v1

    iget v2, p0, Lorg/osmdroid/views/Projection;->mOffsetY:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->offset(II)V

    .line 191
    return-object v0

    .line 188
    .end local v0    # "out":Landroid/graphics/Point;
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    goto :goto_0
.end method

.method public toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 7
    .param p1, "in"    # Lorg/osmdroid/api/IGeoPoint;
    .param p2, "reuse"    # Landroid/graphics/Point;

    .prologue
    .line 103
    invoke-interface {p1}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v0

    invoke-interface {p1}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/osmdroid/views/Projection;->getZoomLevel()I

    move-result v4

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lorg/osmdroid/util/TileSystem;->LatLongToPixelXY(DDILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v6

    .line 106
    .local v6, "out":Landroid/graphics/Point;
    iget v0, v6, Landroid/graphics/Point;->x:I

    iget v1, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v0, v1, v6}, Lorg/osmdroid/views/Projection;->toPixelsFromMercator(IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v6

    .line 107
    iget v0, v6, Landroid/graphics/Point;->x:I

    iget v1, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v0, v1, v6}, Lorg/osmdroid/views/Projection;->adjustForDateLine(IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v6

    .line 108
    return-object v6
.end method

.method public toPixelsFromMercator(IILandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "reuse"    # Landroid/graphics/Point;

    .prologue
    .line 181
    if-eqz p3, :cond_0

    move-object v0, p3

    .line 182
    .local v0, "out":Landroid/graphics/Point;
    :goto_0
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 183
    iget v1, p0, Lorg/osmdroid/views/Projection;->mOffsetX:I

    iget v2, p0, Lorg/osmdroid/views/Projection;->mOffsetY:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->offset(II)V

    .line 184
    return-object v0

    .line 181
    .end local v0    # "out":Landroid/graphics/Point;
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    goto :goto_0
.end method

.method public toPixelsFromProjected(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 4
    .param p1, "in"    # Landroid/graphics/Point;
    .param p2, "reuse"    # Landroid/graphics/Point;

    .prologue
    .line 169
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 171
    .local v0, "out":Landroid/graphics/Point;
    :goto_0
    invoke-virtual {p0}, Lorg/osmdroid/views/Projection;->getZoomLevel()I

    move-result v2

    rsub-int/lit8 v1, v2, 0x16

    .line 172
    .local v1, "zoomDifference":I
    iget v2, p1, Landroid/graphics/Point;->x:I

    shr-int/2addr v2, v1

    iget v3, p1, Landroid/graphics/Point;->y:I

    shr-int/2addr v3, v1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 174
    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v2, v3, v0}, Lorg/osmdroid/views/Projection;->toPixelsFromMercator(IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    .line 175
    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v2, v3, v0}, Lorg/osmdroid/views/Projection;->adjustForDateLine(IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    .line 177
    return-object v0

    .line 169
    .end local v0    # "out":Landroid/graphics/Point;
    .end local v1    # "zoomDifference":I
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    goto :goto_0
.end method

.method public toProjectedPixels(IILandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 6
    .param p1, "latituteE6"    # I
    .param p2, "longitudeE6"    # I
    .param p3, "reuse"    # Landroid/graphics/Point;

    .prologue
    const-wide v4, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    .line 154
    int-to-double v0, p1

    mul-double/2addr v0, v4

    int-to-double v2, p2

    mul-double/2addr v2, v4

    const/16 v4, 0x16

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lorg/osmdroid/util/TileSystem;->LatLongToPixelXY(DDILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public toProjectedPixels(Lorg/osmdroid/util/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 2
    .param p1, "geoPoint"    # Lorg/osmdroid/util/GeoPoint;
    .param p2, "reuse"    # Landroid/graphics/Point;

    .prologue
    .line 138
    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLatitudeE6()I

    move-result v0

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLongitudeE6()I

    move-result v1

    invoke-virtual {p0, v0, v1, p2}, Lorg/osmdroid/views/Projection;->toProjectedPixels(IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public unrotateAndScalePoint(IILandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "reuse"    # Landroid/graphics/Point;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 237
    if-nez p3, :cond_0

    .line 238
    new-instance p3, Landroid/graphics/Point;

    .end local p3    # "reuse":Landroid/graphics/Point;
    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    .line 240
    .restart local p3    # "reuse":Landroid/graphics/Point;
    :cond_0
    invoke-virtual {p0}, Lorg/osmdroid/views/Projection;->getMapOrientation()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lorg/osmdroid/views/Projection;->mMultiTouchScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 241
    :cond_1
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mRotateScalePoints:[F

    int-to-float v1, p1

    aput v1, v0, v2

    .line 242
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mRotateScalePoints:[F

    int-to-float v1, p2

    aput v1, v0, v3

    .line 243
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mUnrotateAndScaleMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lorg/osmdroid/views/Projection;->mRotateScalePoints:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 244
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mRotateScalePoints:[F

    aget v0, v0, v2

    float-to-int v0, v0

    iget-object v1, p0, Lorg/osmdroid/views/Projection;->mRotateScalePoints:[F

    aget v1, v1, v3

    float-to-int v1, v1

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 247
    :goto_0
    return-object p3

    .line 246
    :cond_2
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Point;->set(II)V

    goto :goto_0
.end method
