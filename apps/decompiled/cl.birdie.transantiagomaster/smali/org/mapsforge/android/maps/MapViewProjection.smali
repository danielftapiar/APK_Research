.class final Lorg/mapsforge/android/maps/MapViewProjection;
.super Ljava/lang/Object;
.source "MapViewProjection.java"

# interfaces
.implements Lorg/mapsforge/android/maps/Projection;


# instance fields
.field private final mapView:Lorg/mapsforge/android/maps/MapView;


# direct methods
.method constructor <init>(Lorg/mapsforge/android/maps/MapView;)V
    .locals 0
    .param p1, "mapView"    # Lorg/mapsforge/android/maps/MapView;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/mapsforge/android/maps/MapViewProjection;->mapView:Lorg/mapsforge/android/maps/MapView;

    .line 30
    return-void
.end method


# virtual methods
.method public final fromPixels(II)Lorg/mapsforge/core/GeoPoint;
    .locals 12
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 34
    iget-object v6, p0, Lorg/mapsforge/android/maps/MapViewProjection;->mapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v6}, Lorg/mapsforge/android/maps/MapView;->getWidth()I

    move-result v6

    if-lez v6, :cond_0

    iget-object v6, p0, Lorg/mapsforge/android/maps/MapViewProjection;->mapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v6}, Lorg/mapsforge/android/maps/MapView;->getHeight()I

    move-result v6

    if-gtz v6, :cond_1

    .line 35
    :cond_0
    const/4 v6, 0x0

    .line 48
    :goto_0
    return-object v6

    .line 38
    :cond_1
    iget-object v6, p0, Lorg/mapsforge/android/maps/MapViewProjection;->mapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v6}, Lorg/mapsforge/android/maps/MapView;->getMapPosition()Lorg/mapsforge/android/maps/MapViewPosition;

    move-result-object v6

    invoke-virtual {v6}, Lorg/mapsforge/android/maps/MapViewPosition;->getMapPosition()Lorg/mapsforge/core/MapPosition;

    move-result-object v1

    .line 41
    .local v1, "mapPosition":Lorg/mapsforge/core/MapPosition;
    iget-object v0, v1, Lorg/mapsforge/core/MapPosition;->geoPoint:Lorg/mapsforge/core/GeoPoint;

    .line 42
    .local v0, "geoPoint":Lorg/mapsforge/core/GeoPoint;
    invoke-virtual {v0}, Lorg/mapsforge/core/GeoPoint;->getLongitude()D

    move-result-wide v6

    iget-byte v8, v1, Lorg/mapsforge/core/MapPosition;->zoomLevel:B

    invoke-static {v6, v7, v8}, Lorg/mapsforge/core/MercatorProjection;->longitudeToPixelX(DB)D

    move-result-wide v2

    .line 43
    .local v2, "pixelX":D
    invoke-virtual {v0}, Lorg/mapsforge/core/GeoPoint;->getLatitude()D

    move-result-wide v6

    iget-byte v8, v1, Lorg/mapsforge/core/MapPosition;->zoomLevel:B

    invoke-static {v6, v7, v8}, Lorg/mapsforge/core/MercatorProjection;->latitudeToPixelY(DB)D

    move-result-wide v4

    .line 44
    .local v4, "pixelY":D
    iget-object v6, p0, Lorg/mapsforge/android/maps/MapViewProjection;->mapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v6}, Lorg/mapsforge/android/maps/MapView;->getWidth()I

    move-result v6

    shr-int/lit8 v6, v6, 0x1

    int-to-double v6, v6

    sub-double/2addr v2, v6

    .line 45
    iget-object v6, p0, Lorg/mapsforge/android/maps/MapViewProjection;->mapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v6}, Lorg/mapsforge/android/maps/MapView;->getHeight()I

    move-result v6

    shr-int/lit8 v6, v6, 0x1

    int-to-double v6, v6

    sub-double/2addr v4, v6

    .line 48
    new-instance v6, Lorg/mapsforge/core/GeoPoint;

    int-to-double v7, p2

    add-double/2addr v7, v4

    iget-byte v9, v1, Lorg/mapsforge/core/MapPosition;->zoomLevel:B

    invoke-static {v7, v8, v9}, Lorg/mapsforge/core/MercatorProjection;->pixelYToLatitude(DB)D

    move-result-wide v7

    int-to-double v9, p1

    add-double/2addr v9, v2

    iget-byte v11, v1, Lorg/mapsforge/core/MapPosition;->zoomLevel:B

    invoke-static {v9, v10, v11}, Lorg/mapsforge/core/MercatorProjection;->pixelXToLongitude(DB)D

    move-result-wide v9

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/mapsforge/core/GeoPoint;-><init>(DD)V

    goto :goto_0
.end method

.method public final getLatitudeSpan()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 54
    iget-object v2, p0, Lorg/mapsforge/android/maps/MapViewProjection;->mapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v2}, Lorg/mapsforge/android/maps/MapView;->getWidth()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lorg/mapsforge/android/maps/MapViewProjection;->mapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v2}, Lorg/mapsforge/android/maps/MapView;->getWidth()I

    move-result v2

    if-lez v2, :cond_0

    .line 55
    invoke-virtual {p0, v3, v3}, Lorg/mapsforge/android/maps/MapViewProjection;->fromPixels(II)Lorg/mapsforge/core/GeoPoint;

    move-result-object v1

    .line 56
    .local v1, "top":Lorg/mapsforge/core/GeoPoint;
    iget-object v2, p0, Lorg/mapsforge/android/maps/MapViewProjection;->mapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v2}, Lorg/mapsforge/android/maps/MapView;->getHeight()I

    move-result v2

    invoke-virtual {p0, v3, v2}, Lorg/mapsforge/android/maps/MapViewProjection;->fromPixels(II)Lorg/mapsforge/core/GeoPoint;

    move-result-object v0

    .line 57
    .local v0, "bottom":Lorg/mapsforge/core/GeoPoint;
    iget v2, v1, Lorg/mapsforge/core/GeoPoint;->latitudeE6:I

    iget v3, v0, Lorg/mapsforge/core/GeoPoint;->latitudeE6:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    return v2

    .line 59
    .end local v0    # "bottom":Lorg/mapsforge/core/GeoPoint;
    .end local v1    # "top":Lorg/mapsforge/core/GeoPoint;
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "invalid MapView dimensions"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final getLongitudeSpan()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 64
    iget-object v2, p0, Lorg/mapsforge/android/maps/MapViewProjection;->mapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v2}, Lorg/mapsforge/android/maps/MapView;->getWidth()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lorg/mapsforge/android/maps/MapViewProjection;->mapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v2}, Lorg/mapsforge/android/maps/MapView;->getWidth()I

    move-result v2

    if-lez v2, :cond_0

    .line 65
    invoke-virtual {p0, v3, v3}, Lorg/mapsforge/android/maps/MapViewProjection;->fromPixels(II)Lorg/mapsforge/core/GeoPoint;

    move-result-object v0

    .line 66
    .local v0, "left":Lorg/mapsforge/core/GeoPoint;
    iget-object v2, p0, Lorg/mapsforge/android/maps/MapViewProjection;->mapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v2}, Lorg/mapsforge/android/maps/MapView;->getWidth()I

    move-result v2

    invoke-virtual {p0, v2, v3}, Lorg/mapsforge/android/maps/MapViewProjection;->fromPixels(II)Lorg/mapsforge/core/GeoPoint;

    move-result-object v1

    .line 67
    .local v1, "right":Lorg/mapsforge/core/GeoPoint;
    iget v2, v0, Lorg/mapsforge/core/GeoPoint;->longitudeE6:I

    iget v3, v1, Lorg/mapsforge/core/GeoPoint;->longitudeE6:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    return v2

    .line 69
    .end local v0    # "left":Lorg/mapsforge/core/GeoPoint;
    .end local v1    # "right":Lorg/mapsforge/core/GeoPoint;
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "invalid MapView dimensions"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final toPoint(Lorg/mapsforge/core/GeoPoint;Landroid/graphics/Point;B)Landroid/graphics/Point;
    .locals 3
    .param p1, "in"    # Lorg/mapsforge/core/GeoPoint;
    .param p2, "out"    # Landroid/graphics/Point;
    .param p3, "zoom"    # B

    .prologue
    .line 109
    if-nez p2, :cond_0

    .line 111
    new-instance p2, Landroid/graphics/Point;

    .end local p2    # "out":Landroid/graphics/Point;
    invoke-virtual {p1}, Lorg/mapsforge/core/GeoPoint;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1, p3}, Lorg/mapsforge/core/MercatorProjection;->longitudeToPixelX(DB)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p1}, Lorg/mapsforge/core/GeoPoint;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2, p3}, Lorg/mapsforge/core/MercatorProjection;->latitudeToPixelY(DB)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-direct {p2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 118
    :goto_0
    return-object p2

    .line 116
    .restart local p2    # "out":Landroid/graphics/Point;
    :cond_0
    invoke-virtual {p1}, Lorg/mapsforge/core/GeoPoint;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1, p3}, Lorg/mapsforge/core/MercatorProjection;->longitudeToPixelX(DB)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p2, Landroid/graphics/Point;->x:I

    .line 117
    invoke-virtual {p1}, Lorg/mapsforge/core/GeoPoint;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1, p3}, Lorg/mapsforge/core/MercatorProjection;->latitudeToPixelY(DB)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p2, Landroid/graphics/Point;->y:I

    goto :goto_0
.end method
