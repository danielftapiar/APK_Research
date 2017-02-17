.class public Ljavax/microedition/lcdui/game/TiledLayer;
.super Ljavax/microedition/lcdui/game/Layer;
.source "TiledLayer.java"


# instance fields
.field animatedTiles:[I

.field private final cols:I

.field img:Ljavax/microedition/lcdui/Image;

.field numAnimatedTiles:I

.field private numStaticTiles:I

.field private final rows:I

.field private tileHeight:I

.field private tileWidth:I

.field private tiles:[[I


# direct methods
.method public constructor <init>(IILjavax/microedition/lcdui/Image;II)V
    .locals 6
    .param p1, "cols"    # I
    .param p2, "rows"    # I
    .param p3, "img"    # Ljavax/microedition/lcdui/Image;
    .param p4, "tileWidth"    # I
    .param p5, "tileHeight"    # I

    .prologue
    const/4 v1, 0x0

    .line 64
    mul-int v3, p1, p4

    mul-int v4, p2, p5

    const/4 v5, 0x1

    move-object v0, p0

    move v2, v1

    invoke-direct/range {v0 .. v5}, Ljavax/microedition/lcdui/game/Layer;-><init>(IIIIZ)V

    .line 66
    if-nez p3, :cond_0

    .line 67
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 68
    :cond_0
    if-lez p1, :cond_1

    if-lez p2, :cond_1

    if-lez p5, :cond_1

    if-gtz p4, :cond_2

    .line 69
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 70
    :cond_2
    invoke-virtual {p3}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    rem-int/2addr v0, p4

    if-nez v0, :cond_3

    invoke-virtual {p3}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v0

    rem-int/2addr v0, p5

    if-eqz v0, :cond_4

    .line 71
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 73
    :cond_4
    iput-object p3, p0, Ljavax/microedition/lcdui/game/TiledLayer;->img:Ljavax/microedition/lcdui/Image;

    .line 74
    iput p1, p0, Ljavax/microedition/lcdui/game/TiledLayer;->cols:I

    .line 75
    iput p2, p0, Ljavax/microedition/lcdui/game/TiledLayer;->rows:I

    .line 76
    iput p4, p0, Ljavax/microedition/lcdui/game/TiledLayer;->tileWidth:I

    .line 77
    iput p5, p0, Ljavax/microedition/lcdui/game/TiledLayer;->tileHeight:I

    .line 78
    invoke-virtual {p3}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    div-int/2addr v0, p4

    invoke-virtual {p3}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v2

    div-int/2addr v2, p5

    mul-int/2addr v0, v2

    iput v0, p0, Ljavax/microedition/lcdui/game/TiledLayer;->numStaticTiles:I

    .line 79
    filled-new-array {p2, p1}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Ljavax/microedition/lcdui/game/TiledLayer;->tiles:[[I

    .line 80
    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Ljavax/microedition/lcdui/game/TiledLayer;->animatedTiles:[I

    .line 81
    iput v1, p0, Ljavax/microedition/lcdui/game/TiledLayer;->numAnimatedTiles:I

    .line 82
    return-void
.end method


# virtual methods
.method public createAnimatedTile(I)I
    .locals 5
    .param p1, "staticTileIndex"    # I

    .prologue
    .line 86
    monitor-enter p0

    .line 87
    if-ltz p1, :cond_0

    :try_start_0
    iget v1, p0, Ljavax/microedition/lcdui/game/TiledLayer;->numStaticTiles:I

    if-le p1, v1, :cond_1

    .line 88
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 99
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 90
    :cond_1
    :try_start_1
    iget v1, p0, Ljavax/microedition/lcdui/game/TiledLayer;->numAnimatedTiles:I

    iget-object v2, p0, Ljavax/microedition/lcdui/game/TiledLayer;->animatedTiles:[I

    array-length v2, v2

    if-ne v1, v2, :cond_2

    .line 91
    iget v1, p0, Ljavax/microedition/lcdui/game/TiledLayer;->numAnimatedTiles:I

    add-int/lit8 v1, v1, 0x6

    new-array v0, v1, [I

    .line 92
    .local v0, "temp":[I
    iget-object v1, p0, Ljavax/microedition/lcdui/game/TiledLayer;->animatedTiles:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Ljavax/microedition/lcdui/game/TiledLayer;->numAnimatedTiles:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    iput-object v0, p0, Ljavax/microedition/lcdui/game/TiledLayer;->animatedTiles:[I

    .line 96
    .end local v0    # "temp":[I
    :cond_2
    iget-object v1, p0, Ljavax/microedition/lcdui/game/TiledLayer;->animatedTiles:[I

    iget v2, p0, Ljavax/microedition/lcdui/game/TiledLayer;->numAnimatedTiles:I

    aput p1, v1, v2

    .line 97
    iget v1, p0, Ljavax/microedition/lcdui/game/TiledLayer;->numAnimatedTiles:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljavax/microedition/lcdui/game/TiledLayer;->numAnimatedTiles:I

    .line 98
    iget v1, p0, Ljavax/microedition/lcdui/game/TiledLayer;->numAnimatedTiles:I

    neg-int v1, v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1
.end method

.method public fillCells(IIIII)V
    .locals 6
    .param p1, "col"    # I
    .param p2, "row"    # I
    .param p3, "numCols"    # I
    .param p4, "numRows"    # I
    .param p5, "index"    # I

    .prologue
    .line 174
    monitor-enter p0

    .line 175
    if-ltz p3, :cond_0

    if-gez p4, :cond_1

    .line 176
    :cond_0
    :try_start_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 189
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 177
    :cond_1
    if-ltz p2, :cond_2

    if-ltz p1, :cond_2

    add-int v4, p1, p3

    :try_start_1
    iget v5, p0, Ljavax/microedition/lcdui/game/TiledLayer;->cols:I

    if-gt v4, v5, :cond_2

    add-int v4, p2, p4

    iget v5, p0, Ljavax/microedition/lcdui/game/TiledLayer;->rows:I

    if-le v4, v5, :cond_3

    .line 178
    :cond_2
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    .line 179
    :cond_3
    neg-int v4, p5

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Ljavax/microedition/lcdui/game/TiledLayer;->numAnimatedTiles:I

    if-ge v4, v5, :cond_4

    iget v4, p0, Ljavax/microedition/lcdui/game/TiledLayer;->numStaticTiles:I

    if-le p5, v4, :cond_5

    .line 180
    :cond_4
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    .line 182
    :cond_5
    add-int v3, p2, p4

    .line 183
    .local v3, "rMax":I
    add-int v1, p1, p3

    .line 184
    .local v1, "cMax":I
    move v2, p2

    .local v2, "r":I
    :goto_0
    if-ge v2, v3, :cond_7

    .line 185
    move v0, p1

    .local v0, "c":I
    :goto_1
    if-ge v0, v1, :cond_6

    .line 186
    iget-object v4, p0, Ljavax/microedition/lcdui/game/TiledLayer;->tiles:[[I

    aget-object v4, v4, v2

    aput p5, v4, v0

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 184
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 189
    .end local v0    # "c":I
    :cond_7
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    return-void
.end method

.method public getAnimatedTile(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 103
    monitor-enter p0

    .line 104
    neg-int v0, p1

    add-int/lit8 p1, v0, -0x1

    .line 105
    if-ltz p1, :cond_0

    :try_start_0
    iget v0, p0, Ljavax/microedition/lcdui/game/TiledLayer;->numAnimatedTiles:I

    if-lt p1, v0, :cond_1

    .line 106
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 107
    :cond_1
    :try_start_1
    iget-object v0, p0, Ljavax/microedition/lcdui/game/TiledLayer;->animatedTiles:[I

    aget v0, v0, p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0
.end method

.method public getCell(II)I
    .locals 1
    .param p1, "col"    # I
    .param p2, "row"    # I

    .prologue
    .line 124
    iget-object v0, p0, Ljavax/microedition/lcdui/game/TiledLayer;->tiles:[[I

    aget-object v0, v0, p2

    aget v0, v0, p1

    return v0
.end method

.method public final getCellHeight()I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Ljavax/microedition/lcdui/game/TiledLayer;->tileHeight:I

    return v0
.end method

.method public final getCellWidth()I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Ljavax/microedition/lcdui/game/TiledLayer;->tileWidth:I

    return v0
.end method

.method public final getColumns()I
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Ljavax/microedition/lcdui/game/TiledLayer;->cols:I

    return v0
.end method

.method public final getRows()I
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Ljavax/microedition/lcdui/game/TiledLayer;->rows:I

    return v0
.end method

.method public final paint(Ljavax/microedition/lcdui/Graphics;)V
    .locals 26
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 213
    monitor-enter p0

    .line 214
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljavax/microedition/lcdui/game/TiledLayer;->isVisible()Z

    move-result v2

    if-nez v2, :cond_0

    .line 215
    monitor-exit p0

    .line 276
    :goto_0
    return-void

    .line 217
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljavax/microedition/lcdui/game/TiledLayer;->getX()I

    move-result v9

    .line 218
    .local v9, "x":I
    invoke-virtual/range {p0 .. p0}, Ljavax/microedition/lcdui/game/TiledLayer;->getY()I

    move-result v10

    .line 220
    .local v10, "y":I
    const/4 v13, 0x0

    .line 221
    .local v13, "c0":I
    const/16 v22, 0x0

    .line 222
    .local v22, "r0":I
    invoke-virtual/range {p0 .. p0}, Ljavax/microedition/lcdui/game/TiledLayer;->getColumns()I

    move-result v15

    .line 223
    .local v15, "cMax":I
    invoke-virtual/range {p0 .. p0}, Ljavax/microedition/lcdui/game/TiledLayer;->getRows()I

    move-result v23

    .line 225
    .local v23, "rMax":I
    invoke-virtual/range {p0 .. p0}, Ljavax/microedition/lcdui/game/TiledLayer;->getCellWidth()I

    move-result v6

    .line 226
    .local v6, "tW":I
    invoke-virtual/range {p0 .. p0}, Ljavax/microedition/lcdui/game/TiledLayer;->getCellHeight()I

    move-result v7

    .line 228
    .local v7, "tH":I
    invoke-virtual/range {p1 .. p1}, Ljavax/microedition/lcdui/Graphics;->getClipX()I

    move-result v17

    .line 229
    .local v17, "cX":I
    invoke-virtual/range {p1 .. p1}, Ljavax/microedition/lcdui/Graphics;->getClipY()I

    move-result v18

    .line 230
    .local v18, "cY":I
    invoke-virtual/range {p1 .. p1}, Ljavax/microedition/lcdui/Graphics;->getClipWidth()I

    move-result v16

    .line 231
    .local v16, "cW":I
    invoke-virtual/range {p1 .. p1}, Ljavax/microedition/lcdui/Graphics;->getClipHeight()I

    move-result v14

    .line 252
    .local v14, "cH":I
    move/from16 v25, v9

    .line 253
    .local v25, "x0":I
    const/16 v11, 0x14

    .line 255
    .local v11, "anchor":I
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavax/microedition/lcdui/game/TiledLayer;->img:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v2

    div-int v19, v2, v6

    .line 256
    .local v19, "imgCols":I
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavax/microedition/lcdui/game/TiledLayer;->img:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v2

    div-int v20, v2, v7

    .line 258
    .local v20, "imgRows":I
    move/from16 v21, v22

    .local v21, "r":I
    :goto_1
    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_4

    .line 259
    move/from16 v9, v25

    .line 260
    move v12, v13

    .local v12, "c":I
    :goto_2
    if-ge v12, v15, :cond_3

    .line 261
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v12, v1}, Ljavax/microedition/lcdui/game/TiledLayer;->getCell(II)I

    move-result v24

    .line 262
    .local v24, "tile":I
    if-gez v24, :cond_1

    .line 263
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/game/TiledLayer;->getAnimatedTile(I)I

    move-result v24

    .line 264
    :cond_1
    if-nez v24, :cond_2

    .line 260
    :goto_3
    add-int/lit8 v12, v12, 0x1

    add-int/2addr v9, v6

    goto :goto_2

    .line 267
    :cond_2
    add-int/lit8 v24, v24, -0x1

    .line 269
    rem-int v2, v24, v19

    mul-int v4, v6, v2

    .line 270
    .local v4, "xSrc":I
    div-int v2, v24, v19

    mul-int v5, v2, v7

    .line 272
    .local v5, "ySrc":I
    move-object/from16 v0, p0

    iget-object v3, v0, Ljavax/microedition/lcdui/game/TiledLayer;->img:Ljavax/microedition/lcdui/Image;

    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v11}, Ljavax/microedition/lcdui/Graphics;->drawRegion(Ljavax/microedition/lcdui/Image;IIIIIIII)V

    goto :goto_3

    .line 275
    .end local v4    # "xSrc":I
    .end local v5    # "ySrc":I
    .end local v6    # "tW":I
    .end local v7    # "tH":I
    .end local v9    # "x":I
    .end local v10    # "y":I
    .end local v11    # "anchor":I
    .end local v12    # "c":I
    .end local v13    # "c0":I
    .end local v14    # "cH":I
    .end local v15    # "cMax":I
    .end local v16    # "cW":I
    .end local v17    # "cX":I
    .end local v18    # "cY":I
    .end local v19    # "imgCols":I
    .end local v20    # "imgRows":I
    .end local v21    # "r":I
    .end local v22    # "r0":I
    .end local v23    # "rMax":I
    .end local v24    # "tile":I
    .end local v25    # "x0":I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 258
    .restart local v6    # "tW":I
    .restart local v7    # "tH":I
    .restart local v9    # "x":I
    .restart local v10    # "y":I
    .restart local v11    # "anchor":I
    .restart local v12    # "c":I
    .restart local v13    # "c0":I
    .restart local v14    # "cH":I
    .restart local v15    # "cMax":I
    .restart local v16    # "cW":I
    .restart local v17    # "cX":I
    .restart local v18    # "cY":I
    .restart local v19    # "imgCols":I
    .restart local v20    # "imgRows":I
    .restart local v21    # "r":I
    .restart local v22    # "r0":I
    .restart local v23    # "rMax":I
    .restart local v25    # "x0":I
    :cond_3
    add-int/lit8 v21, v21, 0x1

    add-int/2addr v10, v7

    goto :goto_1

    .line 275
    .end local v12    # "c":I
    :cond_4
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public setAnimatedTile(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "staticTileIndex"    # I

    .prologue
    .line 112
    monitor-enter p0

    .line 113
    neg-int v0, p1

    add-int/lit8 p1, v0, -0x1

    .line 114
    if-ltz p1, :cond_0

    :try_start_0
    iget v0, p0, Ljavax/microedition/lcdui/game/TiledLayer;->numAnimatedTiles:I

    if-lt p1, v0, :cond_1

    .line 115
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 116
    :cond_1
    if-ltz p2, :cond_2

    :try_start_1
    iget v0, p0, Ljavax/microedition/lcdui/game/TiledLayer;->numStaticTiles:I

    if-le p2, v0, :cond_3

    .line 117
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 119
    :cond_3
    iget-object v0, p0, Ljavax/microedition/lcdui/game/TiledLayer;->animatedTiles:[I

    aput p2, v0, p1

    .line 120
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    return-void
.end method

.method public setCell(III)V
    .locals 2
    .param p1, "col"    # I
    .param p2, "row"    # I
    .param p3, "index"    # I

    .prologue
    .line 128
    monitor-enter p0

    .line 129
    neg-int v0, p3

    add-int/lit8 v0, v0, -0x1

    :try_start_0
    iget v1, p0, Ljavax/microedition/lcdui/game/TiledLayer;->numAnimatedTiles:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Ljavax/microedition/lcdui/game/TiledLayer;->numStaticTiles:I

    if-le p3, v0, :cond_1

    .line 130
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 131
    :cond_1
    :try_start_1
    iget-object v0, p0, Ljavax/microedition/lcdui/game/TiledLayer;->tiles:[[I

    aget-object v0, v0, p2

    aput p3, v0, p1

    .line 132
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    return-void
.end method

.method public setStaticTileSet(Ljavax/microedition/lcdui/Image;II)V
    .locals 9
    .param p1, "image"    # Ljavax/microedition/lcdui/Image;
    .param p2, "tileWidth"    # I
    .param p3, "tileHeight"    # I

    .prologue
    .line 136
    monitor-enter p0

    .line 137
    :try_start_0
    iget-object v0, p0, Ljavax/microedition/lcdui/game/TiledLayer;->img:Ljavax/microedition/lcdui/Image;

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 139
    :cond_0
    if-lez p3, :cond_1

    if-gtz p2, :cond_2

    .line 140
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 141
    :cond_2
    iget-object v0, p0, Ljavax/microedition/lcdui/game/TiledLayer;->img:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    rem-int/2addr v0, p2

    if-nez v0, :cond_3

    iget-object v0, p0, Ljavax/microedition/lcdui/game/TiledLayer;->img:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v0

    rem-int/2addr v0, p3

    if-eqz v0, :cond_4

    .line 142
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 144
    :cond_4
    iget-object v0, p0, Ljavax/microedition/lcdui/game/TiledLayer;->img:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Ljavax/microedition/lcdui/game/TiledLayer;->getCellWidth()I

    move-result v1

    div-int/2addr v0, v1

    iget-object v1, p0, Ljavax/microedition/lcdui/game/TiledLayer;->img:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Ljavax/microedition/lcdui/game/TiledLayer;->getCellHeight()I

    move-result v2

    div-int/2addr v1, v2

    mul-int v7, v0, v1

    .line 149
    .local v7, "newNumStaticTiles":I
    iget v0, p0, Ljavax/microedition/lcdui/game/TiledLayer;->cols:I

    mul-int v8, v0, p2

    .line 150
    .local v8, "w":I
    iget v0, p0, Ljavax/microedition/lcdui/game/TiledLayer;->rows:I

    mul-int v6, v0, p3

    .line 152
    .local v6, "h":I
    invoke-virtual {p0, v8, v6}, Ljavax/microedition/lcdui/game/TiledLayer;->setSize(II)V

    .line 154
    iget-object v0, p0, Ljavax/microedition/lcdui/game/TiledLayer;->img:Ljavax/microedition/lcdui/Image;

    iput-object v0, p0, Ljavax/microedition/lcdui/game/TiledLayer;->img:Ljavax/microedition/lcdui/Image;

    .line 155
    iput p2, p0, Ljavax/microedition/lcdui/game/TiledLayer;->tileWidth:I

    .line 156
    iput p3, p0, Ljavax/microedition/lcdui/game/TiledLayer;->tileHeight:I

    .line 158
    iget v0, p0, Ljavax/microedition/lcdui/game/TiledLayer;->numStaticTiles:I

    if-lt v7, v0, :cond_5

    .line 159
    iput v7, p0, Ljavax/microedition/lcdui/game/TiledLayer;->numStaticTiles:I

    .line 160
    monitor-exit p0

    .line 171
    :goto_0
    return-void

    .line 166
    :cond_5
    iput v7, p0, Ljavax/microedition/lcdui/game/TiledLayer;->numStaticTiles:I

    .line 167
    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Ljavax/microedition/lcdui/game/TiledLayer;->animatedTiles:[I

    .line 168
    const/4 v0, 0x0

    iput v0, p0, Ljavax/microedition/lcdui/game/TiledLayer;->numAnimatedTiles:I

    .line 169
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljavax/microedition/lcdui/game/TiledLayer;->getColumns()I

    move-result v3

    invoke-virtual {p0}, Ljavax/microedition/lcdui/game/TiledLayer;->getRows()I

    move-result v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljavax/microedition/lcdui/game/TiledLayer;->fillCells(IIIII)V

    .line 170
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
