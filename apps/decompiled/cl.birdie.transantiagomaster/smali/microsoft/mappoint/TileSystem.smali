.class public final Lmicrosoft/mappoint/TileSystem;
.super Ljava/lang/Object;
.source "TileSystem.java"


# static fields
.field protected static mTileSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/16 v0, 0x100

    sput v0, Lmicrosoft/mappoint/TileSystem;->mTileSize:I

    return-void
.end method

.method private static Clip(DDD)D
    .locals 2
    .param p0, "n"    # D
    .param p2, "minValue"    # D
    .param p4, "maxValue"    # D

    .prologue
    .line 48
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static LatLongToPixelXY(DDILandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 14
    .param p0, "latitude"    # D
    .param p2, "longitude"    # D
    .param p4, "levelOfDetail"    # I
    .param p5, "reuse"    # Landroid/graphics/Point;

    .prologue
    .line 111
    if-nez p5, :cond_0

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 113
    .local v7, "out":Landroid/graphics/Point;
    :goto_0
    const-wide v2, -0x3faabcba4e5a8100L    # -85.05112878

    const-wide v4, 0x40554345b1a57f00L    # 85.05112878

    move-wide v0, p0

    invoke-static/range {v0 .. v5}, Lmicrosoft/mappoint/TileSystem;->Clip(DDD)D

    move-result-wide p0

    .line 114
    const-wide v2, -0x3f99800000000000L    # -180.0

    const-wide v4, 0x4066800000000000L    # 180.0

    move-wide/from16 v0, p2

    invoke-static/range {v0 .. v5}, Lmicrosoft/mappoint/TileSystem;->Clip(DDD)D

    move-result-wide v0

    .line 116
    const-wide v2, 0x4066800000000000L    # 180.0

    add-double/2addr v0, v2

    const-wide v2, 0x4076800000000000L    # 360.0

    div-double v10, v0, v2

    .line 117
    .local v10, "x":D
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, p0

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    .line 118
    .local v8, "sinLatitude":D
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v8

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v8

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    const-wide v4, 0x402921fb54442d18L    # 12.566370614359172

    div-double/2addr v2, v4

    sub-double v12, v0, v2

    .line 120
    .local v12, "y":D
    sget v0, Lmicrosoft/mappoint/TileSystem;->mTileSize:I

    shl-int v6, v0, p4

    .line 121
    .local v6, "mapSize":I
    int-to-double v0, v6

    mul-double/2addr v0, v10

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    const-wide/16 v2, 0x0

    add-int/lit8 v4, v6, -0x1

    int-to-double v4, v4

    invoke-static/range {v0 .. v5}, Lmicrosoft/mappoint/TileSystem;->Clip(DDD)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, v7, Landroid/graphics/Point;->x:I

    .line 122
    int-to-double v0, v6

    mul-double/2addr v0, v12

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    const-wide/16 v2, 0x0

    add-int/lit8 v4, v6, -0x1

    int-to-double v4, v4

    invoke-static/range {v0 .. v5}, Lmicrosoft/mappoint/TileSystem;->Clip(DDD)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, v7, Landroid/graphics/Point;->y:I

    .line 123
    return-object v7

    .end local v6    # "mapSize":I
    .end local v7    # "out":Landroid/graphics/Point;
    .end local v8    # "sinLatitude":D
    .end local v10    # "x":D
    .end local v12    # "y":D
    :cond_0
    move-object/from16 v7, p5

    .line 111
    goto :goto_0
.end method

.method public static MapSize(I)I
    .locals 1
    .param p0, "levelOfDetail"    # I

    .prologue
    .line 60
    sget v0, Lmicrosoft/mappoint/TileSystem;->mTileSize:I

    shl-int/2addr v0, p0

    return v0
.end method

.method public static PixelXYToLatLong$1ef21a48(III)Lorg/osmdroid/util/GeoPoint;
    .locals 21
    .param p0, "pixelX"    # I
    .param p1, "pixelY"    # I
    .param p2, "levelOfDetail"    # I

    .prologue
    .line 142
    new-instance v14, Lorg/osmdroid/util/GeoPoint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v14, v2, v3}, Lorg/osmdroid/util/GeoPoint;-><init>(II)V

    .line 144
    .local v14, "out":Lorg/osmdroid/util/GeoPoint;
    sget v2, Lmicrosoft/mappoint/TileSystem;->mTileSize:I

    shl-int v2, v2, p2

    int-to-double v12, v2

    .line 145
    .local v12, "mapSize":D
    move/from16 v0, p0

    int-to-double v2, v0

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v6, v12, v6

    invoke-static/range {v2 .. v7}, Lmicrosoft/mappoint/TileSystem;->Clip(DDD)D

    move-result-wide v2

    div-double/2addr v2, v12

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    sub-double v15, v2, v4

    .line 146
    .local v15, "x":D
    const-wide/high16 v19, 0x3fe0000000000000L    # 0.5

    move/from16 v0, p1

    int-to-double v2, v0

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v6, v12, v6

    invoke-static/range {v2 .. v7}, Lmicrosoft/mappoint/TileSystem;->Clip(DDD)D

    move-result-wide v2

    div-double/2addr v2, v12

    sub-double v17, v19, v2

    .line 148
    .local v17, "y":D
    const-wide v2, 0x4056800000000000L    # 90.0

    const-wide v4, 0x4076800000000000L    # 360.0

    move-wide/from16 v0, v17

    neg-double v6, v0

    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    mul-double v6, v6, v19

    const-wide v19, 0x400921fb54442d18L    # Math.PI

    mul-double v6, v6, v19

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->atan(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v4, v6

    sub-double v8, v2, v4

    .line 149
    .local v8, "latitude":D
    const-wide v2, 0x4076800000000000L    # 360.0

    mul-double v10, v2, v15

    .line 151
    .local v10, "longitude":D
    const-wide v2, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v2, v8

    double-to-int v2, v2

    invoke-virtual {v14, v2}, Lorg/osmdroid/util/GeoPoint;->setLatitudeE6(I)V

    .line 152
    const-wide v2, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v2, v10

    double-to-int v2, v2

    invoke-virtual {v14, v2}, Lorg/osmdroid/util/GeoPoint;->setLongitudeE6(I)V

    .line 153
    return-object v14
.end method

.method public static PixelXYToTileXY(IILandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 2
    .param p0, "pixelX"    # I
    .param p1, "pixelY"    # I
    .param p2, "reuse"    # Landroid/graphics/Point;

    .prologue
    .line 169
    if-nez p2, :cond_0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 171
    .local v0, "out":Landroid/graphics/Point;
    :goto_0
    sget v1, Lmicrosoft/mappoint/TileSystem;->mTileSize:I

    div-int v1, p0, v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 172
    sget v1, Lmicrosoft/mappoint/TileSystem;->mTileSize:I

    div-int v1, p1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 173
    return-object v0

    .end local v0    # "out":Landroid/graphics/Point;
    :cond_0
    move-object v0, p2

    .line 169
    goto :goto_0
.end method

.method public static getTileSize()I
    .locals 1

    .prologue
    .line 33
    sget v0, Lmicrosoft/mappoint/TileSystem;->mTileSize:I

    return v0
.end method

.method public static setTileSize(I)V
    .locals 0
    .param p0, "tileSize"    # I

    .prologue
    .line 29
    sput p0, Lmicrosoft/mappoint/TileSystem;->mTileSize:I

    .line 30
    return-void
.end method
