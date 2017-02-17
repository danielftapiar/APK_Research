.class public final Lorg/mapsforge/core/MercatorProjection;
.super Ljava/lang/Object;
.source "MercatorProjection.java"


# direct methods
.method public static latitudeToPixelY(DB)D
    .locals 8
    .param p0, "latitude"    # D
    .param p2, "zoomLevel"    # B

    .prologue
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 69
    const-wide v2, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    .line 70
    .local v0, "sinLatitude":D
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double v4, v6, v0

    sub-double/2addr v6, v0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    const-wide v6, 0x402921fb54442d18L    # 12.566370614359172

    div-double/2addr v4, v6

    sub-double/2addr v2, v4

    const-wide/16 v4, 0x100

    shl-long/2addr v4, p2

    long-to-double v4, v4

    mul-double/2addr v2, v4

    return-wide v2
.end method

.method public static latitudeToTileY(DB)J
    .locals 2
    .param p0, "latitude"    # D
    .param p2, "zoomLevel"    # B

    .prologue
    .line 84
    invoke-static {p0, p1, p2}, Lorg/mapsforge/core/MercatorProjection;->latitudeToPixelY(DB)D

    move-result-wide v0

    invoke-static {v0, v1, p2}, Lorg/mapsforge/core/MercatorProjection;->pixelYToTileY(DB)J

    move-result-wide v0

    return-wide v0
.end method

.method public static limitLatitude(D)D
    .locals 4
    .param p0, "latitude"    # D

    .prologue
    .line 93
    const-wide v0, 0x40554345b1a549d6L    # 85.05112877980659

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    const-wide v2, -0x3faabcba4e5ab62aL    # -85.05112877980659

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static limitLongitude(D)D
    .locals 4
    .param p0, "longitude"    # D

    .prologue
    .line 102
    const-wide v0, 0x4066800000000000L    # 180.0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    const-wide v2, -0x3f99800000000000L    # -180.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static longitudeToPixelX(DB)D
    .locals 4
    .param p0, "longitude"    # D
    .param p2, "zoomLevel"    # B

    .prologue
    .line 115
    const-wide v0, 0x4066800000000000L    # 180.0

    add-double/2addr v0, p0

    const-wide v2, 0x4076800000000000L    # 360.0

    div-double/2addr v0, v2

    const-wide/16 v2, 0x100

    shl-long/2addr v2, p2

    long-to-double v2, v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static longitudeToTileX(DB)J
    .locals 2
    .param p0, "longitude"    # D
    .param p2, "zoomLevel"    # B

    .prologue
    .line 128
    invoke-static {p0, p1, p2}, Lorg/mapsforge/core/MercatorProjection;->longitudeToPixelX(DB)D

    move-result-wide v0

    invoke-static {v0, v1, p2}, Lorg/mapsforge/core/MercatorProjection;->pixelXToTileX(DB)J

    move-result-wide v0

    return-wide v0
.end method

.method public static pixelXToLongitude(DB)D
    .locals 6
    .param p0, "pixelX"    # D
    .param p2, "zoomLevel"    # B

    .prologue
    .line 141
    const-wide v0, 0x4076800000000000L    # 360.0

    const-wide/16 v2, 0x100

    shl-long/2addr v2, p2

    long-to-double v2, v2

    div-double v2, p0, v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v2, v4

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static pixelXToTileX(DB)J
    .locals 6
    .param p0, "pixelX"    # D
    .param p2, "zoomLevel"    # B

    .prologue
    .line 154
    const-wide/high16 v0, 0x4070000000000000L    # 256.0

    div-double v0, p0, v0

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    int-to-double v4, p2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0
.end method

.method public static pixelYToLatitude(DB)D
    .locals 10
    .param p0, "pixelY"    # D
    .param p2, "zoomLevel"    # B

    .prologue
    .line 167
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    const-wide/16 v4, 0x100

    shl-long/2addr v4, p2

    long-to-double v4, v4

    div-double v4, p0, v4

    sub-double v0, v2, v4

    .line 168
    .local v0, "y":D
    const-wide v2, 0x4056800000000000L    # 90.0

    const-wide v4, 0x4076800000000000L    # 360.0

    neg-double v6, v0

    const-wide v8, 0x401921fb54442d18L    # 6.283185307179586

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->atan(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v4, v6

    sub-double/2addr v2, v4

    return-wide v2
.end method

.method public static pixelYToTileY(DB)J
    .locals 6
    .param p0, "pixelY"    # D
    .param p2, "zoomLevel"    # B

    .prologue
    .line 181
    const-wide/high16 v0, 0x4070000000000000L    # 256.0

    div-double v0, p0, v0

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    int-to-double v4, p2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0
.end method
