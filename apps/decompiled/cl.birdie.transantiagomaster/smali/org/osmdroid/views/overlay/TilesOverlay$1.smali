.class final Lorg/osmdroid/views/overlay/TilesOverlay$1;
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
    .line 160
    iput-object p1, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-direct {p0}, Lorg/osmdroid/util/TileLooper;-><init>()V

    return-void
.end method


# virtual methods
.method public final finaliseLoop()V
    .locals 0

    .prologue
    .line 194
    return-void
.end method

.method public final handleTile(Landroid/graphics/Canvas;ILorg/osmdroid/tileprovider/MapTile;II)V
    .locals 6
    .param p1, "pCanvas"    # Landroid/graphics/Canvas;
    .param p2, "pTileSizePx"    # I
    .param p3, "pTile"    # Lorg/osmdroid/tileprovider/MapTile;
    .param p4, "pX"    # I
    .param p5, "pY"    # I

    .prologue
    .line 169
    iget-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    iget-object v1, v1, Lorg/osmdroid/views/overlay/TilesOverlay;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {v1, p3}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->getMapTile(Lorg/osmdroid/tileprovider/MapTile;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 170
    .local v0, "currentMapTile":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 171
    iget-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    # invokes: Lorg/osmdroid/views/overlay/TilesOverlay;->getLoadingTile()Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$100(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 174
    :cond_0
    if-eqz v0, :cond_1

    .line 175
    iget-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    # getter for: Lorg/osmdroid/views/overlay/TilesOverlay;->mTileRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$200(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Rect;

    move-result-object v1

    mul-int v2, p4, p2

    mul-int v3, p5, p2

    mul-int v4, p4, p2

    add-int/2addr v4, p2

    mul-int v5, p5, p2

    add-int/2addr v5, p2

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 177
    iget-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    iget-object v2, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    # getter for: Lorg/osmdroid/views/overlay/TilesOverlay;->mTileRect:Landroid/graphics/Rect;
    invoke-static {v2}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$200(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lorg/osmdroid/views/overlay/TilesOverlay;->onTileReadyToDraw(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 191
    :cond_1
    return-void
.end method

.method public final initialiseLoop(II)V
    .locals 4
    .param p1, "pZoomLevel"    # I
    .param p2, "pTileSizePx"    # I

    .prologue
    .line 164
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

    .line 165
    .local v0, "numNeeded":I
    iget-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    iget-object v1, v1, Lorg/osmdroid/views/overlay/TilesOverlay;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    iget-object v2, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    # getter for: Lorg/osmdroid/views/overlay/TilesOverlay;->mOvershootTileCache:I
    invoke-static {v2}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$000(Lorg/osmdroid/views/overlay/TilesOverlay;)I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->ensureCapacity(I)V

    .line 166
    return-void
.end method
