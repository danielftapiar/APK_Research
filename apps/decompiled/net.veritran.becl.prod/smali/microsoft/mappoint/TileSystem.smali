.class public final Lmicrosoft/mappoint/TileSystem;
.super Ljava/lang/Object;
.source "TileSystem.java"


# static fields
.field private static final EarthRadius:D = 6378137.0

.field private static final MaxLatitude:D = 85.05112878

.field private static final MaxLongitude:D = 180.0

.field private static final MinLatitude:D = -85.05112878

.field private static final MinLongitude:D = -180.0

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

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

.method public static GroundResolution(DI)D
    .locals 8
    .param p0, "latitude"    # D
    .param p2, "levelOfDetail"    # I

    .prologue
    const-wide v6, 0x400921fb54442d18L    # Math.PI

    .line 74
    const-wide v2, -0x3faabcba4e5a8100L    # -85.05112878

    const-wide v4, 0x40554345b1a57f00L    # 85.05112878

    move-wide v0, p0

    invoke-static/range {v0 .. v5}, Lmicrosoft/mappoint/TileSystem;->Clip(DDD)D

    move-result-wide p0

    .line 75
    mul-double v0, p0, v6

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    mul-double/2addr v0, v6

    const-wide v2, 0x415854a640000000L    # 6378137.0

    mul-double/2addr v0, v2

    invoke-static {p2}, Lmicrosoft/mappoint/TileSystem;->MapSize(I)I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

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

    move-result-wide p2

    .line 116
    const-wide v0, 0x4066800000000000L    # 180.0

    add-double v0, v0, p2

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
    invoke-static/range {p4 .. p4}, Lmicrosoft/mappoint/TileSystem;->MapSize(I)I

    move-result v6

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

.method public static MapScale(DII)D
    .locals 4
    .param p0, "latitude"    # D
    .param p2, "levelOfDetail"    # I
    .param p3, "screenDpi"    # I

    .prologue
    .line 92
    invoke-static {p0, p1, p2}, Lmicrosoft/mappoint/TileSystem;->GroundResolution(DI)D

    move-result-wide v0

    int-to-double v2, p3

    mul-double/2addr v0, v2

    const-wide v2, 0x3f9a027525460aa6L    # 0.0254

    div-double/2addr v0, v2

    return-wide v0
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

.method public static PixelXYToLatLong(IIILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/util/GeoPoint;
    .locals 22
    .param p0, "pixelX"    # I
    .param p1, "pixelY"    # I
    .param p2, "levelOfDetail"    # I
    .param p3, "reuse"    # Lorg/osmdroid/util/GeoPoint;

    .prologue
    .line 142
    if-nez p3, :cond_0

    new-instance v14, Lorg/osmdroid/util/GeoPoint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v14, v2, v3}, Lorg/osmdroid/util/GeoPoint;-><init>(II)V

    .line 144
    .local v14, "out":Lorg/osmdroid/util/GeoPoint;
    :goto_0
    invoke-static/range {p2 .. p2}, Lmicrosoft/mappoint/TileSystem;->MapSize(I)I

    move-result v2

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

    sub-double v16, v2, v4

    .line 146
    .local v16, "x":D
    const-wide/high16 v20, 0x3fe0000000000000L    # 0.5

    move/from16 v0, p1

    int-to-double v2, v0

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v6, v12, v6

    invoke-static/range {v2 .. v7}, Lmicrosoft/mappoint/TileSystem;->Clip(DDD)D

    move-result-wide v2

    div-double/2addr v2, v12

    sub-double v18, v20, v2

    .line 148
    .local v18, "y":D
    const-wide v2, 0x4056800000000000L    # 90.0

    const-wide v4, 0x4076800000000000L    # 360.0

    move-wide/from16 v0, v18

    neg-double v6, v0

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    mul-double v6, v6, v20

    const-wide v20, 0x400921fb54442d18L    # Math.PI

    mul-double v6, v6, v20

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

    mul-double v10, v2, v16

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

    .end local v8    # "latitude":D
    .end local v10    # "longitude":D
    .end local v12    # "mapSize":D
    .end local v14    # "out":Lorg/osmdroid/util/GeoPoint;
    .end local v16    # "x":D
    .end local v18    # "y":D
    :cond_0
    move-object/from16 v14, p3

    .line 142
    goto :goto_0
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

.method public static QuadKeyToTileXY(Ljava/lang/String;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 8
    .param p0, "quadKey"    # Ljava/lang/String;
    .param p1, "reuse"    # Landroid/graphics/Point;

    .prologue
    .line 234
    if-nez p1, :cond_0

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 235
    .local v3, "out":Landroid/graphics/Point;
    :goto_0
    const/4 v4, 0x0

    .line 236
    .local v4, "tileX":I
    const/4 v5, 0x0

    .line 238
    .local v5, "tileY":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 239
    .local v1, "levelOfDetail":I
    move v0, v1

    .local v0, "i":I
    :goto_1
    if-lez v0, :cond_1

    .line 240
    const/4 v6, 0x1

    add-int/lit8 v7, v0, -0x1

    shl-int v2, v6, v7

    .line 241
    .local v2, "mask":I
    sub-int v6, v1, v0

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 259
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Invalid QuadKey digit sequence."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .end local v0    # "i":I
    .end local v1    # "levelOfDetail":I
    .end local v2    # "mask":I
    .end local v3    # "out":Landroid/graphics/Point;
    .end local v4    # "tileX":I
    .end local v5    # "tileY":I
    :cond_0
    move-object v3, p1

    .line 234
    goto :goto_0

    .line 246
    .restart local v0    # "i":I
    .restart local v1    # "levelOfDetail":I
    .restart local v2    # "mask":I
    .restart local v3    # "out":Landroid/graphics/Point;
    .restart local v4    # "tileX":I
    .restart local v5    # "tileY":I
    :pswitch_0
    or-int/2addr v4, v2

    .line 239
    :goto_2
    :pswitch_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 250
    :pswitch_2
    or-int/2addr v5, v2

    .line 251
    goto :goto_2

    .line 254
    :pswitch_3
    or-int/2addr v4, v2

    .line 255
    or-int/2addr v5, v2

    .line 256
    goto :goto_2

    .line 262
    .end local v2    # "mask":I
    :cond_1
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Point;->set(II)V

    .line 263
    return-object v3

    .line 241
    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static TileXYToPixelXY(IILandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 2
    .param p0, "tileX"    # I
    .param p1, "tileY"    # I
    .param p2, "reuse"    # Landroid/graphics/Point;

    .prologue
    .line 189
    if-nez p2, :cond_0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 191
    .local v0, "out":Landroid/graphics/Point;
    :goto_0
    sget v1, Lmicrosoft/mappoint/TileSystem;->mTileSize:I

    mul-int/2addr v1, p0

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 192
    sget v1, Lmicrosoft/mappoint/TileSystem;->mTileSize:I

    mul-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 193
    return-object v0

    .end local v0    # "out":Landroid/graphics/Point;
    :cond_0
    move-object v0, p2

    .line 189
    goto :goto_0
.end method

.method public static TileXYToQuadKey(III)Ljava/lang/String;
    .locals 6
    .param p0, "tileX"    # I
    .param p1, "tileY"    # I
    .param p2, "levelOfDetail"    # I

    .prologue
    .line 208
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    .local v3, "quadKey":Ljava/lang/StringBuilder;
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_2

    .line 210
    const/16 v0, 0x30

    .line 211
    .local v0, "digit":C
    const/4 v4, 0x1

    add-int/lit8 v5, v1, -0x1

    shl-int v2, v4, v5

    .line 212
    .local v2, "mask":I
    and-int v4, p0, v2

    if-eqz v4, :cond_0

    .line 213
    const/16 v4, 0x31

    int-to-char v0, v4

    .line 215
    :cond_0
    and-int v4, p1, v2

    if-eqz v4, :cond_1

    .line 216
    add-int/lit8 v4, v0, 0x1

    int-to-char v0, v4

    .line 217
    add-int/lit8 v4, v0, 0x1

    int-to-char v0, v4

    .line 219
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 209
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 221
    .end local v0    # "digit":C
    .end local v2    # "mask":I
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
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
