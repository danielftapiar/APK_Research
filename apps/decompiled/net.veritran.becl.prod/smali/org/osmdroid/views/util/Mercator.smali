.class public Lorg/osmdroid/views/util/Mercator;
.super Ljava/lang/Object;
.source "Mercator.java"

# interfaces
.implements Lorg/osmdroid/views/util/constants/MapViewConstants;


# static fields
.field static final DEG2RAD:D = 0.017453292519943295


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static getBoundingBoxFromCoords(IIIII)Lorg/osmdroid/util/BoundingBoxE6;
    .locals 10
    .param p0, "left"    # I
    .param p1, "top"    # I
    .param p2, "right"    # I
    .param p3, "bottom"    # I
    .param p4, "zoom"    # I

    .prologue
    .line 122
    new-instance v1, Lorg/osmdroid/util/BoundingBoxE6;

    invoke-static {p1, p4}, Lorg/osmdroid/views/util/Mercator;->tile2lat(II)D

    move-result-wide v2

    invoke-static {p2, p4}, Lorg/osmdroid/views/util/Mercator;->tile2lon(II)D

    move-result-wide v4

    invoke-static {p3, p4}, Lorg/osmdroid/views/util/Mercator;->tile2lat(II)D

    move-result-wide v6

    invoke-static {p0, p4}, Lorg/osmdroid/views/util/Mercator;->tile2lon(II)D

    move-result-wide v8

    invoke-direct/range {v1 .. v9}, Lorg/osmdroid/util/BoundingBoxE6;-><init>(DDDD)V

    return-object v1
.end method

.method public static getBoundingBoxFromPointInMapTile(Landroid/graphics/Point;I)Lorg/osmdroid/util/BoundingBoxE6;
    .locals 10
    .param p0, "aMapTile"    # Landroid/graphics/Point;
    .param p1, "aZoom"    # I

    .prologue
    .line 135
    new-instance v1, Lorg/osmdroid/util/BoundingBoxE6;

    iget v0, p0, Landroid/graphics/Point;->y:I

    invoke-static {v0, p1}, Lorg/osmdroid/views/util/Mercator;->tile2lat(II)D

    move-result-wide v2

    iget v0, p0, Landroid/graphics/Point;->x:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, p1}, Lorg/osmdroid/views/util/Mercator;->tile2lon(II)D

    move-result-wide v4

    iget v0, p0, Landroid/graphics/Point;->y:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, p1}, Lorg/osmdroid/views/util/Mercator;->tile2lat(II)D

    move-result-wide v6

    iget v0, p0, Landroid/graphics/Point;->x:I

    invoke-static {v0, p1}, Lorg/osmdroid/views/util/Mercator;->tile2lon(II)D

    move-result-wide v8

    invoke-direct/range {v1 .. v9}, Lorg/osmdroid/util/BoundingBoxE6;-><init>(DDDD)V

    return-object v1
.end method

.method public static projectGeoPoint(DDILandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 10
    .param p0, "aLat"    # D
    .param p2, "aLon"    # D
    .param p4, "aZoom"    # I
    .param p5, "aReuse"    # Landroid/graphics/Point;

    .prologue
    .line 99
    if-eqz p5, :cond_0

    move-object v0, p5

    .line 101
    .local v0, "p":Landroid/graphics/Point;
    :goto_0
    const-wide v2, 0x4066800000000000L    # 180.0

    add-double/2addr v2, p2

    const-wide v4, 0x4076800000000000L    # 360.0

    div-double/2addr v2, v4

    const/4 v1, 0x1

    shl-int/2addr v1, p4

    int-to-double v4, v1

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 102
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide v4, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v4, p0

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide v8, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v8, p0

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    div-double/2addr v6, v8

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v4, v6

    sub-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    const/4 v1, 0x1

    shl-int/2addr v1, p4

    int-to-double v4, v1

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 107
    return-object v0

    .line 99
    .end local v0    # "p":Landroid/graphics/Point;
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_0
.end method

.method public static projectGeoPoint(IIILandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 6
    .param p0, "aLatE6"    # I
    .param p1, "aLonE6"    # I
    .param p2, "aZoom"    # I
    .param p3, "aReuse"    # Landroid/graphics/Point;

    .prologue
    const-wide v4, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    .line 67
    int-to-double v0, p0

    mul-double/2addr v0, v4

    int-to-double v2, p1

    mul-double/2addr v2, v4

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lorg/osmdroid/views/util/Mercator;->projectGeoPoint(DDILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public static projectGeoPoint(Lorg/osmdroid/api/IGeoPoint;ILandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 6
    .param p0, "aGeoPoint"    # Lorg/osmdroid/api/IGeoPoint;
    .param p1, "aZoom"    # I
    .param p2, "aReuse"    # Landroid/graphics/Point;

    .prologue
    const-wide v4, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    .line 81
    invoke-interface {p0}, Lorg/osmdroid/api/IGeoPoint;->getLatitudeE6()I

    move-result v0

    int-to-double v0, v0

    mul-double/2addr v0, v4

    invoke-interface {p0}, Lorg/osmdroid/api/IGeoPoint;->getLongitudeE6()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v4

    move v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lorg/osmdroid/views/util/Mercator;->projectGeoPoint(DDILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public static projectPoint(III)Lorg/osmdroid/util/GeoPoint;
    .locals 6
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "aZoom"    # I

    .prologue
    const-wide v4, 0x412e848000000000L    # 1000000.0

    .line 144
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    invoke-static {p1, p2}, Lorg/osmdroid/views/util/Mercator;->tile2lat(II)D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-int v1, v2

    invoke-static {p0, p2}, Lorg/osmdroid/views/util/Mercator;->tile2lon(II)D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/util/GeoPoint;-><init>(II)V

    return-object v0
.end method

.method public static tile2lat(II)D
    .locals 10
    .param p0, "y"    # I
    .param p1, "aZoom"    # I

    .prologue
    .line 152
    const-wide v2, 0x400921fb54442d18L    # Math.PI

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v6, p0

    mul-double/2addr v4, v6

    const/4 v6, 0x1

    shl-int/2addr v6, p1

    int-to-double v6, v6

    div-double/2addr v4, v6

    sub-double v0, v2, v4

    .line 153
    .local v0, "n":D
    const-wide v2, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    neg-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->exp(D)D

    move-result-wide v8

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->atan(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    return-wide v2
.end method

.method public static tile2lon(II)D
    .locals 4
    .param p0, "x"    # I
    .param p1, "aZoom"    # I

    .prologue
    .line 148
    int-to-double v0, p0

    const/4 v2, 0x1

    shl-int/2addr v2, p1

    int-to-double v2, v2

    div-double/2addr v0, v2

    const-wide v2, 0x4076800000000000L    # 360.0

    mul-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    sub-double/2addr v0, v2

    return-wide v0
.end method
