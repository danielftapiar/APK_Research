.class Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;
.super Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;
.source "MapTileProviderBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/tileprovider/MapTileProviderBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomInTileLooper"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/osmdroid/tileprovider/MapTileProviderBase;


# direct methods
.method public constructor <init>(Lorg/osmdroid/tileprovider/MapTileProviderBase;I)V
    .locals 0
    .param p2, "pOldZoomLevel"    # I

    .prologue
    .line 322
    iput-object p1, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;->this$0:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    .line 323
    invoke-direct {p0, p1, p2}, Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;-><init>(Lorg/osmdroid/tileprovider/MapTileProviderBase;I)V

    .line 324
    return-void
.end method


# virtual methods
.method public handleTile(ILorg/osmdroid/tileprovider/MapTile;II)V
    .locals 17
    .param p1, "pTileSizePx"    # I
    .param p2, "pTile"    # Lorg/osmdroid/tileprovider/MapTile;
    .param p3, "pX"    # I
    .param p4, "pY"    # I

    .prologue
    .line 329
    new-instance v8, Lorg/osmdroid/tileprovider/MapTile;

    move-object/from16 v0, p0

    iget v13, v0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;->mOldZoomLevel:I

    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/tileprovider/MapTile;->getX()I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;->mDiff:I

    shr-int/2addr v14, v15

    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/tileprovider/MapTile;->getY()I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;->mDiff:I

    move/from16 v16, v0

    shr-int v15, v15, v16

    invoke-direct {v8, v13, v14, v15}, Lorg/osmdroid/tileprovider/MapTile;-><init>(III)V

    .line 330
    .local v8, "oldTile":Lorg/osmdroid/tileprovider/MapTile;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;->this$0:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    iget-object v13, v13, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileCache:Lorg/osmdroid/tileprovider/MapTileCache;

    invoke-virtual {v13, v8}, Lorg/osmdroid/tileprovider/MapTileCache;->getMapTile(Lorg/osmdroid/tileprovider/MapTile;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 332
    .local v7, "oldDrawable":Landroid/graphics/drawable/Drawable;
    instance-of v13, v7, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v13, :cond_5

    .line 333
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;->mDiff:I

    shl-int/2addr v13, v14

    rem-int v13, p3, v13

    move-object/from16 v0, p0

    iget v14, v0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;->mTileSize_2:I

    mul-int v11, v13, v14

    .line 334
    .local v11, "xx":I
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;->mDiff:I

    shl-int/2addr v13, v14

    rem-int v13, p4, v13

    move-object/from16 v0, p0

    iget v14, v0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;->mTileSize_2:I

    mul-int v12, v13, v14

    .line 335
    .local v12, "yy":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;->mSrcRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v14, v0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;->mTileSize_2:I

    add-int/2addr v14, v11

    move-object/from16 v0, p0

    iget v15, v0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;->mTileSize_2:I

    add-int/2addr v15, v12

    invoke-virtual {v13, v11, v12, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    .line 336
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;->mDestRect:Landroid/graphics/Rect;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v0, p1

    move/from16 v1, p1

    invoke-virtual {v13, v14, v15, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 339
    invoke-static {}, Lorg/osmdroid/tileprovider/BitmapPool;->getInstance()Lorg/osmdroid/tileprovider/BitmapPool;

    move-result-object v13

    move/from16 v0, p1

    move/from16 v1, p1

    invoke-virtual {v13, v0, v1}, Lorg/osmdroid/tileprovider/BitmapPool;->obtainSizedBitmapFromPool(II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 341
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    if-nez v2, :cond_0

    .line 342
    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p1

    move/from16 v1, p1

    invoke-static {v0, v1, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 344
    :cond_0
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 345
    .local v4, "canvas":Landroid/graphics/Canvas;
    instance-of v5, v7, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;

    .line 346
    .local v5, "isReusable":Z
    if-eqz v5, :cond_6

    move-object v13, v7

    check-cast v13, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;

    move-object v9, v13

    .line 348
    .local v9, "reusableBitmapDrawable":Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;
    :goto_0
    const/4 v10, 0x0

    .line 349
    .local v10, "success":Z
    if-eqz v5, :cond_1

    .line 350
    invoke-virtual {v9}, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;->beginUsingDrawable()V

    .line 352
    :cond_1
    if-eqz v5, :cond_2

    :try_start_0
    invoke-virtual {v9}, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;->isBitmapValid()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 353
    :cond_2
    move-object v0, v7

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v3, v0

    .line 354
    .local v3, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 355
    .local v6, "oldBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;->mSrcRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;->mDestRect:Landroid/graphics/Rect;

    const/4 v15, 0x0

    invoke-virtual {v4, v6, v13, v14, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    const/4 v10, 0x1

    .line 364
    .end local v3    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v6    # "oldBitmap":Landroid/graphics/Bitmap;
    :cond_3
    if-eqz v5, :cond_4

    .line 365
    invoke-virtual {v9}, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;->finishUsingDrawable()V

    .line 367
    :cond_4
    if-eqz v10, :cond_5

    .line 368
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;->mNewTiles:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v13, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "canvas":Landroid/graphics/Canvas;
    .end local v5    # "isReusable":Z
    .end local v9    # "reusableBitmapDrawable":Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;
    .end local v10    # "success":Z
    .end local v11    # "xx":I
    .end local v12    # "yy":I
    :cond_5
    return-void

    .line 346
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "canvas":Landroid/graphics/Canvas;
    .restart local v5    # "isReusable":Z
    .restart local v11    # "xx":I
    .restart local v12    # "yy":I
    :cond_6
    const/4 v9, 0x0

    goto :goto_0

    .line 364
    .restart local v9    # "reusableBitmapDrawable":Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;
    .restart local v10    # "success":Z
    :catchall_0
    move-exception v13

    if-eqz v5, :cond_7

    .line 365
    invoke-virtual {v9}, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;->finishUsingDrawable()V

    :cond_7
    throw v13
.end method
