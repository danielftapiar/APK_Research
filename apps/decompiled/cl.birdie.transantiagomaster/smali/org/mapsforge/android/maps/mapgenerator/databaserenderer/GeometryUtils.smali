.class final Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/GeometryUtils;
.super Ljava/lang/Object;
.source "GeometryUtils.java"


# direct methods
.method static calculateCenterOfBoundingBox([F)[F
    .locals 10
    .param p0, "coordinates"    # [F

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 26
    aget v4, p0, v7

    .line 27
    .local v4, "longitudeMin":F
    aget v3, p0, v7

    .line 28
    .local v3, "longitudeMax":F
    aget v1, p0, v8

    .line 29
    .local v1, "latitudeMax":F
    aget v2, p0, v8

    .line 31
    .local v2, "latitudeMin":F
    const/4 v0, 0x2

    .local v0, "i":I
    :goto_0
    array-length v5, p0

    if-ge v0, v5, :cond_4

    .line 32
    aget v5, p0, v0

    cmpg-float v5, v5, v4

    if-gez v5, :cond_2

    .line 33
    aget v4, p0, v0

    .line 38
    :cond_0
    :goto_1
    add-int/lit8 v5, v0, 0x1

    aget v5, p0, v5

    cmpg-float v5, v5, v2

    if-gez v5, :cond_3

    .line 39
    add-int/lit8 v5, v0, 0x1

    aget v2, p0, v5

    .line 31
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 34
    :cond_2
    aget v5, p0, v0

    cmpl-float v5, v5, v3

    if-lez v5, :cond_0

    .line 35
    aget v3, p0, v0

    goto :goto_1

    .line 40
    :cond_3
    add-int/lit8 v5, v0, 0x1

    aget v5, p0, v5

    cmpl-float v5, v5, v1

    if-lez v5, :cond_1

    .line 41
    add-int/lit8 v5, v0, 0x1

    aget v1, p0, v5

    goto :goto_2

    .line 45
    :cond_4
    const/4 v5, 0x2

    new-array v5, v5, [F

    add-float v6, v4, v3

    div-float/2addr v6, v9

    aput v6, v5, v7

    add-float v6, v1, v2

    div-float/2addr v6, v9

    aput v6, v5, v8

    return-object v5
.end method
