.class final Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;
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
    .line 309
    iput-object p1, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;->this$0:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    .line 310
    invoke-direct {p0, p1, p2}, Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;-><init>(Lorg/osmdroid/tileprovider/MapTileProviderBase;I)V

    .line 311
    return-void
.end method


# virtual methods
.method public final handleTile(ILorg/osmdroid/tileprovider/MapTile;II)V
    .locals 10
    .param p1, "pTileSizePx"    # I
    .param p2, "pTile"    # Lorg/osmdroid/tileprovider/MapTile;
    .param p3, "pX"    # I
    .param p4, "pY"    # I

    .prologue
    .line 316
    new-instance v3, Lorg/osmdroid/tileprovider/MapTile;

    iget v6, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;->mOldZoomLevel:I

    invoke-virtual {p2}, Lorg/osmdroid/tileprovider/MapTile;->getX()I

    move-result v7

    iget v8, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;->mDiff:I

    shr-int/2addr v7, v8

    invoke-virtual {p2}, Lorg/osmdroid/tileprovider/MapTile;->getY()I

    move-result v8

    iget v9, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;->mDiff:I

    shr-int/2addr v8, v9

    invoke-direct {v3, v6, v7, v8}, Lorg/osmdroid/tileprovider/MapTile;-><init>(III)V

    .line 317
    .local v3, "oldTile":Lorg/osmdroid/tileprovider/MapTile;
    iget-object v6, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;->this$0:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    iget-object v6, v6, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileCache:Lorg/osmdroid/tileprovider/MapTileCache;

    invoke-virtual {v6, v3}, Lorg/osmdroid/tileprovider/MapTileCache;->getMapTile(Lorg/osmdroid/tileprovider/MapTile;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 319
    .local v2, "oldDrawable":Landroid/graphics/drawable/Drawable;
    instance-of v6, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_0

    .line 320
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2    # "oldDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 321
    .local v1, "oldBitmap":Landroid/graphics/Bitmap;
    const/4 v6, 0x1

    iget v7, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;->mDiff:I

    shl-int/2addr v6, v7

    rem-int v6, p3, v6

    iget v7, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;->mTileSize_2:I

    mul-int v4, v6, v7

    .line 322
    .local v4, "xx":I
    const/4 v6, 0x1

    iget v7, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;->mDiff:I

    shl-int/2addr v6, v7

    rem-int v6, p4, v6

    iget v7, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;->mTileSize_2:I

    mul-int v5, v6, v7

    .line 323
    .local v5, "yy":I
    iget-object v6, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;->mSrcRect:Landroid/graphics/Rect;

    iget v7, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;->mTileSize_2:I

    add-int/2addr v7, v4

    iget v8, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;->mTileSize_2:I

    add-int/2addr v8, v5

    invoke-virtual {v6, v4, v5, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 324
    iget-object v6, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;->mDestRect:Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, p1, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 325
    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p1, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 326
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 327
    iget-object v7, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;->mSrcRect:Landroid/graphics/Rect;

    iget-object v8, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;->mDestRect:Landroid/graphics/Rect;

    const/4 v9, 0x0

    invoke-virtual {v6, v1, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 333
    iget-object v6, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;->mNewTiles:Ljava/util/HashMap;

    invoke-virtual {v6, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "oldBitmap":Landroid/graphics/Bitmap;
    .end local v4    # "xx":I
    .end local v5    # "yy":I
    :cond_0
    return-void
.end method
