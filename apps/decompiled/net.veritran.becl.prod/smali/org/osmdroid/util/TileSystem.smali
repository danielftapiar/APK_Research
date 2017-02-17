.class public final Lorg/osmdroid/util/TileSystem;
.super Ljava/lang/Object;
.source "TileSystem.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GroundResolution(DI)D
    .locals 8
    .param p0, "latitude"    # D
    .param p2, "levelOfDetail"    # I

    .prologue
    .line 35
    const-wide v2, -0x3fa9800000000000L    # -90.0

    const-wide v4, 0x4056800000000000L    # 90.0

    const-wide v6, 0x4066800000000000L    # 180.0

    move-wide v0, p0

    invoke-static/range {v0 .. v7}, Lorg/osmdroid/util/TileSystem;->wrap(DDDD)D

    move-result-wide v0

    invoke-static {v0, v1, p2}, Lmicrosoft/mappoint/TileSystem;->GroundResolution(DI)D

    move-result-wide v0

    return-wide v0
.end method

.method public static LatLongToPixelXY(DDILandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 10
    .param p0, "latitude"    # D
    .param p2, "longitude"    # D
    .param p4, "levelOfDetail"    # I
    .param p5, "reuse"    # Landroid/graphics/Point;

    .prologue
    const-wide v6, 0x4066800000000000L    # 180.0

    .line 46
    const-wide v2, -0x3fa9800000000000L    # -90.0

    const-wide v4, 0x4056800000000000L    # 90.0

    move-wide v0, p0

    invoke-static/range {v0 .. v7}, Lorg/osmdroid/util/TileSystem;->wrap(DDDD)D

    move-result-wide v0

    const-wide v4, -0x3f99800000000000L    # -180.0

    const-wide v8, 0x4076800000000000L    # 360.0

    move-wide v2, p2

    invoke-static/range {v2 .. v9}, Lorg/osmdroid/util/TileSystem;->wrap(DDDD)D

    move-result-wide v2

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lmicrosoft/mappoint/TileSystem;->LatLongToPixelXY(DDILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public static MapScale(DII)D
    .locals 2
    .param p0, "latitude"    # D
    .param p2, "levelOfDetail"    # I
    .param p3, "screenDpi"    # I

    .prologue
    .line 40
    invoke-static {p0, p1, p2, p3}, Lmicrosoft/mappoint/TileSystem;->MapScale(DII)D

    move-result-wide v0

    return-wide v0
.end method

.method public static MapSize(I)I
    .locals 1
    .param p0, "levelOfDetail"    # I

    .prologue
    .line 30
    invoke-static {p0}, Lmicrosoft/mappoint/TileSystem;->MapSize(I)I

    move-result v0

    return v0
.end method

.method public static PixelXYToLatLong(IIILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/util/GeoPoint;
    .locals 10
    .param p0, "pixelX"    # I
    .param p1, "pixelY"    # I
    .param p2, "levelOfDetail"    # I
    .param p3, "reuse"    # Lorg/osmdroid/util/GeoPoint;

    .prologue
    const-wide/16 v2, 0x0

    .line 55
    invoke-static {p2}, Lorg/osmdroid/util/TileSystem;->MapSize(I)I

    move-result v8

    .line 56
    .local v8, "mapSize":I
    int-to-double v0, p0

    add-int/lit8 v4, v8, -0x1

    int-to-double v4, v4

    int-to-double v6, v8

    invoke-static/range {v0 .. v7}, Lorg/osmdroid/util/TileSystem;->wrap(DDDD)D

    move-result-wide v0

    double-to-int v9, v0

    int-to-double v0, p1

    add-int/lit8 v4, v8, -0x1

    int-to-double v4, v4

    int-to-double v6, v8

    invoke-static/range {v0 .. v7}, Lorg/osmdroid/util/TileSystem;->wrap(DDDD)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {v9, v0, p2, p3}, Lmicrosoft/mappoint/TileSystem;->PixelXYToLatLong(IIILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public static PixelXYToTileXY(IILandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 1
    .param p0, "pixelX"    # I
    .param p1, "pixelY"    # I
    .param p2, "reuse"    # Landroid/graphics/Point;

    .prologue
    .line 64
    invoke-static {p0, p1, p2}, Lmicrosoft/mappoint/TileSystem;->PixelXYToTileXY(IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public static QuadKeyToTileXY(Ljava/lang/String;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 1
    .param p0, "quadKey"    # Ljava/lang/String;
    .param p1, "reuse"    # Landroid/graphics/Point;

    .prologue
    .line 79
    invoke-static {p0, p1}, Lmicrosoft/mappoint/TileSystem;->QuadKeyToTileXY(Ljava/lang/String;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public static TileXYToPixelXY(IILandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 1
    .param p0, "tileX"    # I
    .param p1, "tileY"    # I
    .param p2, "reuse"    # Landroid/graphics/Point;

    .prologue
    .line 69
    invoke-static {p0, p1, p2}, Lmicrosoft/mappoint/TileSystem;->TileXYToPixelXY(IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public static TileXYToQuadKey(III)Ljava/lang/String;
    .locals 1
    .param p0, "tileX"    # I
    .param p1, "tileY"    # I
    .param p2, "levelOfDetail"    # I

    .prologue
    .line 74
    invoke-static {p0, p1, p2}, Lmicrosoft/mappoint/TileSystem;->TileXYToQuadKey(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTileSize()I
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lmicrosoft/mappoint/TileSystem;->getTileSize()I

    move-result v0

    return v0
.end method

.method public static setTileSize(I)V
    .locals 0
    .param p0, "tileSize"    # I

    .prologue
    .line 20
    invoke-static {p0}, Lmicrosoft/mappoint/TileSystem;->setTileSize(I)V

    .line 21
    return-void
.end method

.method private static wrap(DDDD)D
    .locals 4
    .param p0, "n"    # D
    .param p2, "minValue"    # D
    .param p4, "maxValue"    # D
    .param p6, "interval"    # D

    .prologue
    .line 98
    cmpl-double v0, p2, p4

    if-lez v0, :cond_0

    .line 99
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "minValue must be smaller than maxValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_0
    sub-double v0, p4, p2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    cmpl-double v0, p6, v0

    if-lez v0, :cond_1

    .line 103
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interval must be equal or smaller than maxValue-minValue: min: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " max:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " int:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6, p7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_1
    :goto_0
    cmpg-double v0, p0, p2

    if-gez v0, :cond_2

    .line 108
    add-double/2addr p0, p6

    goto :goto_0

    .line 110
    :cond_2
    :goto_1
    cmpl-double v0, p0, p4

    if-lez v0, :cond_3

    .line 111
    sub-double/2addr p0, p6

    goto :goto_1

    .line 113
    :cond_3
    return-wide p0
.end method
