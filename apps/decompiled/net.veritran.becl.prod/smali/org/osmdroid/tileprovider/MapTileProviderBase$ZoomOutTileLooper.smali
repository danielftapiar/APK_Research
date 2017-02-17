.class Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomOutTileLooper;
.super Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;
.source "MapTileProviderBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/tileprovider/MapTileProviderBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomOutTileLooper"
.end annotation


# static fields
.field private static final MAX_ZOOM_OUT_DIFF:I = 0x4


# instance fields
.field final synthetic this$0:Lorg/osmdroid/tileprovider/MapTileProviderBase;


# direct methods
.method public constructor <init>(Lorg/osmdroid/tileprovider/MapTileProviderBase;I)V
    .locals 0
    .param p2, "pOldZoomLevel"    # I

    .prologue
    .line 375
    iput-object p1, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomOutTileLooper;->this$0:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    .line 376
    invoke-direct {p0, p1, p2}, Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;-><init>(Lorg/osmdroid/tileprovider/MapTileProviderBase;I)V

    .line 377
    return-void
.end method


# virtual methods
.method protected handleTile(ILorg/osmdroid/tileprovider/MapTile;II)V
    .locals 18
    .param p1, "pTileSizePx"    # I
    .param p2, "pTile"    # Lorg/osmdroid/tileprovider/MapTile;
    .param p3, "pX"    # I
    .param p4, "pY"    # I

    .prologue
    .line 381
    move-object/from16 v0, p0

    iget v12, v0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomOutTileLooper;->mDiff:I

    const/4 v13, 0x4

    if-lt v12, v13, :cond_1

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/tileprovider/MapTile;->getX()I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomOutTileLooper;->mDiff:I

    shl-int v9, v12, v13

    .line 387
    .local v9, "xx":I
    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/tileprovider/MapTile;->getY()I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomOutTileLooper;->mDiff:I

    shl-int v11, v12, v13

    .line 388
    .local v11, "yy":I
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget v13, v0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomOutTileLooper;->mDiff:I

    shl-int v4, v12, v13

    .line 389
    .local v4, "numTiles":I
    const/4 v2, 0x0

    .line 390
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 391
    .local v3, "canvas":Landroid/graphics/Canvas;
    const/4 v8, 0x0

    .local v8, "x":I
    :goto_1
    if-ge v8, v4, :cond_6

    .line 392
    const/4 v10, 0x0

    .local v10, "y":I
    :goto_2
    if-ge v10, v4, :cond_5

    .line 393
    new-instance v7, Lorg/osmdroid/tileprovider/MapTile;

    move-object/from16 v0, p0

    iget v12, v0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomOutTileLooper;->mOldZoomLevel:I

    add-int v13, v9, v8

    add-int v14, v11, v10

    invoke-direct {v7, v12, v13, v14}, Lorg/osmdroid/tileprovider/MapTile;-><init>(III)V

    .line 394
    .local v7, "oldTile":Lorg/osmdroid/tileprovider/MapTile;
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomOutTileLooper;->this$0:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    iget-object v12, v12, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileCache:Lorg/osmdroid/tileprovider/MapTileCache;

    invoke-virtual {v12, v7}, Lorg/osmdroid/tileprovider/MapTileCache;->getMapTile(Lorg/osmdroid/tileprovider/MapTile;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 395
    .local v6, "oldDrawable":Landroid/graphics/drawable/Drawable;
    instance-of v12, v6, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v12, :cond_4

    .line 396
    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    .end local v6    # "oldDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 397
    .local v5, "oldBitmap":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_4

    .line 398
    if-nez v2, :cond_3

    .line 400
    invoke-static {}, Lorg/osmdroid/tileprovider/BitmapPool;->getInstance()Lorg/osmdroid/tileprovider/BitmapPool;

    move-result-object v12

    move/from16 v0, p1

    move/from16 v1, p1

    invoke-virtual {v12, v0, v1}, Lorg/osmdroid/tileprovider/BitmapPool;->obtainSizedBitmapFromPool(II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 402
    if-nez v2, :cond_2

    .line 403
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p1

    move/from16 v1, p1

    invoke-static {v0, v1, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 405
    :cond_2
    new-instance v3, Landroid/graphics/Canvas;

    .end local v3    # "canvas":Landroid/graphics/Canvas;
    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 406
    .restart local v3    # "canvas":Landroid/graphics/Canvas;
    const v12, -0x333334

    invoke-virtual {v3, v12}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 408
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomOutTileLooper;->mDestRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v13, v0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomOutTileLooper;->mTileSize_2:I

    mul-int/2addr v13, v8

    move-object/from16 v0, p0

    iget v14, v0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomOutTileLooper;->mTileSize_2:I

    mul-int/2addr v14, v10

    add-int/lit8 v15, v8, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomOutTileLooper;->mTileSize_2:I

    move/from16 v16, v0

    mul-int v15, v15, v16

    add-int/lit8 v16, v10, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomOutTileLooper;->mTileSize_2:I

    move/from16 v17, v0

    mul-int v16, v16, v17

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/Rect;->set(IIII)V

    .line 411
    if-eqz v5, :cond_4

    .line 412
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomOutTileLooper;->mDestRect:Landroid/graphics/Rect;

    const/4 v14, 0x0

    invoke-virtual {v3, v5, v12, v13, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 413
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomOutTileLooper;->this$0:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    iget-object v12, v12, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileCache:Lorg/osmdroid/tileprovider/MapTileCache;

    iget-object v12, v12, Lorg/osmdroid/tileprovider/MapTileCache;->mCachedTiles:Lorg/osmdroid/tileprovider/LRUMapTileCache;

    invoke-virtual {v12, v5}, Lorg/osmdroid/tileprovider/LRUMapTileCache;->remove(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    .line 392
    .end local v5    # "oldBitmap":Landroid/graphics/Bitmap;
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 391
    .end local v7    # "oldTile":Lorg/osmdroid/tileprovider/MapTile;
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 420
    .end local v10    # "y":I
    :cond_6
    if-eqz v2, :cond_0

    .line 421
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomOutTileLooper;->mNewTiles:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v12, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method
