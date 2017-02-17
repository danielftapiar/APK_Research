.class public final Lorg/mapsforge/android/maps/MapViewPosition;
.super Ljava/lang/Object;
.source "MapViewPosition.java"


# instance fields
.field private latitude:D

.field private longitude:D

.field private final mapView:Lorg/mapsforge/android/maps/MapView;

.field private zoomLevel:B


# direct methods
.method constructor <init>(Lorg/mapsforge/android/maps/MapView;)V
    .locals 2
    .param p1, "mapView"    # Lorg/mapsforge/android/maps/MapView;

    .prologue
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/mapsforge/android/maps/MapViewPosition;->mapView:Lorg/mapsforge/android/maps/MapView;

    .line 33
    iput-wide v0, p0, Lorg/mapsforge/android/maps/MapViewPosition;->latitude:D

    .line 34
    iput-wide v0, p0, Lorg/mapsforge/android/maps/MapViewPosition;->longitude:D

    .line 35
    const/4 v0, -0x1

    iput-byte v0, p0, Lorg/mapsforge/android/maps/MapViewPosition;->zoomLevel:B

    .line 36
    return-void
.end method


# virtual methods
.method public final declared-synchronized getMapCenter()Lorg/mapsforge/core/GeoPoint;
    .locals 5

    .prologue
    .line 42
    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/mapsforge/core/GeoPoint;

    iget-wide v1, p0, Lorg/mapsforge/android/maps/MapViewPosition;->latitude:D

    iget-wide v3, p0, Lorg/mapsforge/android/maps/MapViewPosition;->longitude:D

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/mapsforge/core/GeoPoint;-><init>(DD)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getMapPosition()Lorg/mapsforge/core/MapPosition;
    .locals 5

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/mapsforge/android/maps/MapViewPosition;->isValid()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 51
    const/4 v1, 0x0

    .line 54
    :goto_0
    monitor-exit p0

    return-object v1

    .line 53
    :cond_0
    :try_start_1
    new-instance v0, Lorg/mapsforge/core/GeoPoint;

    iget-wide v1, p0, Lorg/mapsforge/android/maps/MapViewPosition;->latitude:D

    iget-wide v3, p0, Lorg/mapsforge/android/maps/MapViewPosition;->longitude:D

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/mapsforge/core/GeoPoint;-><init>(DD)V

    .line 54
    .local v0, "geoPoint":Lorg/mapsforge/core/GeoPoint;
    new-instance v1, Lorg/mapsforge/core/MapPosition;

    iget-byte v2, p0, Lorg/mapsforge/android/maps/MapViewPosition;->zoomLevel:B

    invoke-direct {v1, v0, v2}, Lorg/mapsforge/core/MapPosition;-><init>(Lorg/mapsforge/core/GeoPoint;B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 50
    .end local v0    # "geoPoint":Lorg/mapsforge/core/GeoPoint;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final declared-synchronized getZoomLevel()B
    .locals 1

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    iget-byte v0, p0, Lorg/mapsforge/android/maps/MapViewPosition;->zoomLevel:B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized isValid()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 68
    monitor-enter p0

    :try_start_0
    iget-wide v1, p0, Lorg/mapsforge/android/maps/MapViewPosition;->latitude:D

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 70
    :cond_1
    :try_start_1
    iget-wide v1, p0, Lorg/mapsforge/android/maps/MapViewPosition;->latitude:D

    const-wide v3, -0x3faabcba4e5ab62aL    # -85.05112877980659

    cmpg-double v1, v1, v3

    if-ltz v1, :cond_0

    .line 72
    iget-wide v1, p0, Lorg/mapsforge/android/maps/MapViewPosition;->latitude:D

    const-wide v3, 0x40554345b1a549d6L    # 85.05112877980659

    cmpl-double v1, v1, v3

    if-gtz v1, :cond_0

    .line 76
    iget-wide v1, p0, Lorg/mapsforge/android/maps/MapViewPosition;->longitude:D

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_0

    .line 78
    iget-wide v1, p0, Lorg/mapsforge/android/maps/MapViewPosition;->longitude:D

    const-wide v3, -0x3f99800000000000L    # -180.0

    cmpg-double v1, v1, v3

    if-ltz v1, :cond_0

    .line 80
    iget-wide v1, p0, Lorg/mapsforge/android/maps/MapViewPosition;->longitude:D
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide v3, 0x4066800000000000L    # 180.0

    cmpl-double v1, v1, v3

    if-gtz v1, :cond_0

    .line 84
    const/4 v0, 0x1

    goto :goto_0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized moveMap(FF)V
    .locals 7
    .param p1, "moveHorizontal"    # F
    .param p2, "moveVertical"    # F

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    iget-wide v4, p0, Lorg/mapsforge/android/maps/MapViewPosition;->longitude:D

    iget-byte v6, p0, Lorg/mapsforge/android/maps/MapViewPosition;->zoomLevel:B

    invoke-static {v4, v5, v6}, Lorg/mapsforge/core/MercatorProjection;->longitudeToPixelX(DB)D

    move-result-wide v0

    .line 97
    .local v0, "pixelX":D
    iget-wide v4, p0, Lorg/mapsforge/android/maps/MapViewPosition;->latitude:D

    iget-byte v6, p0, Lorg/mapsforge/android/maps/MapViewPosition;->zoomLevel:B

    invoke-static {v4, v5, v6}, Lorg/mapsforge/core/MercatorProjection;->latitudeToPixelY(DB)D

    move-result-wide v2

    .line 99
    .local v2, "pixelY":D
    float-to-double v4, p2

    sub-double v4, v2, v4

    iget-byte v6, p0, Lorg/mapsforge/android/maps/MapViewPosition;->zoomLevel:B

    invoke-static {v4, v5, v6}, Lorg/mapsforge/core/MercatorProjection;->pixelYToLatitude(DB)D

    move-result-wide v4

    iput-wide v4, p0, Lorg/mapsforge/android/maps/MapViewPosition;->latitude:D

    .line 100
    iget-wide v4, p0, Lorg/mapsforge/android/maps/MapViewPosition;->latitude:D

    invoke-static {v4, v5}, Lorg/mapsforge/core/MercatorProjection;->limitLatitude(D)D

    move-result-wide v4

    iput-wide v4, p0, Lorg/mapsforge/android/maps/MapViewPosition;->latitude:D

    .line 102
    float-to-double v4, p1

    sub-double v4, v0, v4

    iget-byte v6, p0, Lorg/mapsforge/android/maps/MapViewPosition;->zoomLevel:B

    invoke-static {v4, v5, v6}, Lorg/mapsforge/core/MercatorProjection;->pixelXToLongitude(DB)D

    move-result-wide v4

    iput-wide v4, p0, Lorg/mapsforge/android/maps/MapViewPosition;->longitude:D

    .line 103
    iget-wide v4, p0, Lorg/mapsforge/android/maps/MapViewPosition;->longitude:D

    invoke-static {v4, v5}, Lorg/mapsforge/core/MercatorProjection;->limitLongitude(D)D

    move-result-wide v4

    iput-wide v4, p0, Lorg/mapsforge/android/maps/MapViewPosition;->longitude:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    monitor-exit p0

    return-void

    .line 96
    .end local v0    # "pixelX":D
    .end local v2    # "pixelY":D
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method final declared-synchronized setMapCenter(Lorg/mapsforge/core/GeoPoint;)V
    .locals 2
    .param p1, "geoPoint"    # Lorg/mapsforge/core/GeoPoint;

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lorg/mapsforge/core/GeoPoint;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/mapsforge/core/MercatorProjection;->limitLatitude(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/mapsforge/android/maps/MapViewPosition;->latitude:D

    .line 108
    invoke-virtual {p1}, Lorg/mapsforge/core/GeoPoint;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/mapsforge/core/MercatorProjection;->limitLongitude(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/mapsforge/android/maps/MapViewPosition;->longitude:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit p0

    return-void

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized setMapCenterAndZoomLevel(Lorg/mapsforge/core/MapPosition;)V
    .locals 3
    .param p1, "mapPosition"    # Lorg/mapsforge/core/MapPosition;

    .prologue
    .line 112
    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lorg/mapsforge/core/MapPosition;->geoPoint:Lorg/mapsforge/core/GeoPoint;

    .line 113
    .local v0, "geoPoint":Lorg/mapsforge/core/GeoPoint;
    invoke-virtual {v0}, Lorg/mapsforge/core/GeoPoint;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/mapsforge/core/MercatorProjection;->limitLatitude(D)D

    move-result-wide v1

    iput-wide v1, p0, Lorg/mapsforge/android/maps/MapViewPosition;->latitude:D

    .line 114
    invoke-virtual {v0}, Lorg/mapsforge/core/GeoPoint;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/mapsforge/core/MercatorProjection;->limitLongitude(D)D

    move-result-wide v1

    iput-wide v1, p0, Lorg/mapsforge/android/maps/MapViewPosition;->longitude:D

    .line 115
    iget-object v1, p0, Lorg/mapsforge/android/maps/MapViewPosition;->mapView:Lorg/mapsforge/android/maps/MapView;

    iget-byte v2, p1, Lorg/mapsforge/core/MapPosition;->zoomLevel:B

    invoke-virtual {v1, v2}, Lorg/mapsforge/android/maps/MapView;->limitZoomLevel(B)B

    move-result v1

    iput-byte v1, p0, Lorg/mapsforge/android/maps/MapViewPosition;->zoomLevel:B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    monitor-exit p0

    return-void

    .line 112
    .end local v0    # "geoPoint":Lorg/mapsforge/core/GeoPoint;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method final declared-synchronized setZoomLevel(B)V
    .locals 1
    .param p1, "zoomLevel"    # B

    .prologue
    .line 119
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/android/maps/MapViewPosition;->mapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v0, p1}, Lorg/mapsforge/android/maps/MapView;->limitZoomLevel(B)B

    move-result v0

    iput-byte v0, p0, Lorg/mapsforge/android/maps/MapViewPosition;->zoomLevel:B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    monitor-exit p0

    return-void

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
