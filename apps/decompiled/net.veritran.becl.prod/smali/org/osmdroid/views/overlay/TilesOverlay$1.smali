.class Lorg/osmdroid/views/overlay/TilesOverlay$1;
.super Lorg/osmdroid/util/TileLooper;
.source "TilesOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/views/overlay/TilesOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/osmdroid/views/overlay/TilesOverlay;


# direct methods
.method constructor <init>(Lorg/osmdroid/views/overlay/TilesOverlay;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-direct {p0}, Lorg/osmdroid/util/TileLooper;-><init>()V

    return-void
.end method


# virtual methods
.method public finaliseLoop()V
    .locals 0

    .prologue
    .line 210
    return-void
.end method

.method public handleTile(Landroid/graphics/Canvas;ILorg/osmdroid/tileprovider/MapTile;II)V
    .locals 9
    .param p1, "pCanvas"    # Landroid/graphics/Canvas;
    .param p2, "pTileSizePx"    # I
    .param p3, "pTile"    # Lorg/osmdroid/tileprovider/MapTile;
    .param p4, "pX"    # I
    .param p5, "pY"    # I

    .prologue
    .line 170
    iget-object v4, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    iget-object v4, v4, Lorg/osmdroid/views/overlay/TilesOverlay;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {v4, p3}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->getMapTile(Lorg/osmdroid/tileprovider/MapTile;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 171
    .local v1, "currentMapTile":Landroid/graphics/drawable/Drawable;
    instance-of v2, v1, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;

    .line 172
    .local v2, "isReusable":Z
    if-eqz v2, :cond_4

    move-object v4, v1

    check-cast v4, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;

    move-object v3, v4

    .line 174
    .local v3, "reusableBitmapDrawable":Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;
    :goto_0
    if-nez v1, :cond_0

    .line 175
    iget-object v4, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    # invokes: Lorg/osmdroid/views/overlay/TilesOverlay;->getLoadingTile()Landroid/graphics/drawable/Drawable;
    invoke-static {v4}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$100(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 178
    :cond_0
    if-eqz v1, :cond_3

    .line 179
    iget-object v4, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    # getter for: Lorg/osmdroid/views/overlay/TilesOverlay;->mTilePoint:Landroid/graphics/Point;
    invoke-static {v4}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$200(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Point;

    move-result-object v4

    mul-int v5, p4, p2

    mul-int v6, p5, p2

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Point;->set(II)V

    .line 180
    iget-object v4, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    # getter for: Lorg/osmdroid/views/overlay/TilesOverlay;->mTileRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$300(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Rect;

    move-result-object v4

    iget-object v5, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    # getter for: Lorg/osmdroid/views/overlay/TilesOverlay;->mTilePoint:Landroid/graphics/Point;
    invoke-static {v5}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$200(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    # getter for: Lorg/osmdroid/views/overlay/TilesOverlay;->mTilePoint:Landroid/graphics/Point;
    invoke-static {v6}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$200(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->y:I

    iget-object v7, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    # getter for: Lorg/osmdroid/views/overlay/TilesOverlay;->mTilePoint:Landroid/graphics/Point;
    invoke-static {v7}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$200(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Point;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Point;->x:I

    add-int/2addr v7, p2

    iget-object v8, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    # getter for: Lorg/osmdroid/views/overlay/TilesOverlay;->mTilePoint:Landroid/graphics/Point;
    invoke-static {v8}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$200(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Point;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Point;->y:I

    add-int/2addr v8, p2

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 182
    if-eqz v2, :cond_1

    .line 183
    invoke-virtual {v3}, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;->beginUsingDrawable()V

    .line 186
    :cond_1
    if-eqz v2, :cond_2

    :try_start_0
    move-object v0, v1

    check-cast v0, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;

    move-object v4, v0

    invoke-virtual {v4}, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;->isBitmapValid()Z

    move-result v4

    if-nez v4, :cond_2

    .line 187
    iget-object v4, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    # invokes: Lorg/osmdroid/views/overlay/TilesOverlay;->getLoadingTile()Landroid/graphics/drawable/Drawable;
    invoke-static {v4}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$100(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 188
    const/4 v2, 0x0

    .line 190
    :cond_2
    iget-object v4, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    iget-object v5, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    # getter for: Lorg/osmdroid/views/overlay/TilesOverlay;->mTileRect:Landroid/graphics/Rect;
    invoke-static {v5}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$300(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, p1, v1, v5}, Lorg/osmdroid/views/overlay/TilesOverlay;->onTileReadyToDraw(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    if-eqz v2, :cond_3

    .line 193
    invoke-virtual {v3}, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;->finishUsingDrawable()V

    .line 207
    :cond_3
    return-void

    .line 172
    .end local v3    # "reusableBitmapDrawable":Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .line 192
    .restart local v3    # "reusableBitmapDrawable":Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_5

    .line 193
    invoke-virtual {v3}, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;->finishUsingDrawable()V

    :cond_5
    throw v4
.end method

.method public initialiseLoop(II)V
    .locals 4
    .param p1, "pZoomLevel"    # I
    .param p2, "pTileSizePx"    # I

    .prologue
    .line 165
    iget-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->mLowerRight:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->mUpperLeft:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->mLowerRight:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->mUpperLeft:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    mul-int v0, v1, v2

    .line 166
    .local v0, "numNeeded":I
    iget-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    iget-object v1, v1, Lorg/osmdroid/views/overlay/TilesOverlay;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    iget-object v2, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    # getter for: Lorg/osmdroid/views/overlay/TilesOverlay;->mOvershootTileCache:I
    invoke-static {v2}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$000(Lorg/osmdroid/views/overlay/TilesOverlay;)I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->ensureCapacity(I)V

    .line 167
    return-void
.end method
