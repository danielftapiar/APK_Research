.class public Lorg/osmdroid/bonuspack/overlays/ItemizedOverlayWithBubble;
.super Lorg/osmdroid/views/overlay/ItemizedIconOverlay;
.source "ItemizedOverlayWithBubble.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item:",
        "Lorg/osmdroid/views/overlay/OverlayItem;",
        ">",
        "Lorg/osmdroid/views/overlay/ItemizedIconOverlay",
        "<TItem;>;"
    }
.end annotation


# static fields
.field static layoutResId:I


# instance fields
.field protected mBubble:Lorg/osmdroid/bonuspack/overlays/InfoWindow;

.field protected mItemWithBubble:Lorg/osmdroid/views/overlay/OverlayItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput v0, Lorg/osmdroid/bonuspack/overlays/ItemizedOverlayWithBubble;->layoutResId:I

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lorg/osmdroid/views/MapView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "mapView"    # Lorg/osmdroid/views/MapView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<TItem;>;",
            "Lorg/osmdroid/views/MapView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lorg/osmdroid/bonuspack/overlays/ItemizedOverlayWithBubble;, "Lorg/osmdroid/bonuspack/overlays/ItemizedOverlayWithBubble<TItem;>;"
    .local p2, "aList":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/osmdroid/bonuspack/overlays/ItemizedOverlayWithBubble;-><init>(Landroid/content/Context;Ljava/util/List;Lorg/osmdroid/views/MapView;Lorg/osmdroid/bonuspack/overlays/InfoWindow;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lorg/osmdroid/views/MapView;Lorg/osmdroid/bonuspack/overlays/InfoWindow;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "mapView"    # Lorg/osmdroid/views/MapView;
    .param p4, "bubble"    # Lorg/osmdroid/bonuspack/overlays/InfoWindow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<TItem;>;",
            "Lorg/osmdroid/views/MapView;",
            "Lorg/osmdroid/bonuspack/overlays/InfoWindow;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/osmdroid/bonuspack/overlays/ItemizedOverlayWithBubble;, "Lorg/osmdroid/bonuspack/overlays/ItemizedOverlayWithBubble<TItem;>;"
    .local p2, "aList":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    const/4 v4, 0x0

    .line 34
    new-instance v1, Lorg/osmdroid/bonuspack/overlays/ItemizedOverlayWithBubble$1;

    invoke-direct {v1}, Lorg/osmdroid/bonuspack/overlays/ItemizedOverlayWithBubble$1;-><init>()V

    invoke-direct {p0, p1, p2, v1}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;-><init>(Landroid/content/Context;Ljava/util/List;Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;)V

    .line 43
    if-eqz p4, :cond_0

    .line 44
    iput-object p4, p0, Lorg/osmdroid/bonuspack/overlays/ItemizedOverlayWithBubble;->mBubble:Lorg/osmdroid/bonuspack/overlays/InfoWindow;

    .line 55
    :goto_0
    iput-object v4, p0, Lorg/osmdroid/bonuspack/overlays/ItemizedOverlayWithBubble;->mItemWithBubble:Lorg/osmdroid/views/overlay/OverlayItem;

    .line 56
    return-void

    .line 47
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "packageName":Ljava/lang/String;
    sget v1, Lorg/osmdroid/bonuspack/overlays/ItemizedOverlayWithBubble;->layoutResId:I

    if-nez v1, :cond_1

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "layout/bonuspack_bubble"

    invoke-virtual {v1, v2, v4, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 50
    sput v1, Lorg/osmdroid/bonuspack/overlays/ItemizedOverlayWithBubble;->layoutResId:I

    if-nez v1, :cond_1

    .line 51
    const-string v1, "BONUSPACK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ItemizedOverlayWithBubble: layout/bonuspack_bubble not found in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_1
    new-instance v1, Lorg/osmdroid/bonuspack/overlays/DefaultInfoWindow;

    sget v2, Lorg/osmdroid/bonuspack/overlays/ItemizedOverlayWithBubble;->layoutResId:I

    invoke-direct {v1, v2, p3}, Lorg/osmdroid/bonuspack/overlays/DefaultInfoWindow;-><init>(ILorg/osmdroid/views/MapView;)V

    iput-object v1, p0, Lorg/osmdroid/bonuspack/overlays/ItemizedOverlayWithBubble;->mBubble:Lorg/osmdroid/bonuspack/overlays/InfoWindow;

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;
    .param p3, "shadow"    # Z

    .prologue
    .line 139
    .local p0, "this":Lorg/osmdroid/bonuspack/overlays/ItemizedOverlayWithBubble;, "Lorg/osmdroid/bonuspack/overlays/ItemizedOverlayWithBubble<TItem;>;"
    monitor-enter p0

    if-eqz p3, :cond_1

    .line 159
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 142
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/MapView$Projection;

    move-result-object v3

    .line 143
    .local v3, "pj":Lorg/osmdroid/views/MapView$Projection;
    iget-object v5, p0, Lorg/osmdroid/bonuspack/overlays/ItemizedOverlayWithBubble;->mItemList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .line 144
    .local v4, "size":I
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 147
    .local v2, "mCurScreenCoords":Landroid/graphics/Point;
    move v0, v4

    .local v0, "i":I
    :goto_1
    if-gez v0, :cond_2

    .line 155
    iget-object v5, p0, Lorg/osmdroid/bonuspack/overlays/ItemizedOverlayWithBubble;->mItemWithBubble:Lorg/osmdroid/views/overlay/OverlayItem;

    if-eqz v5, :cond_0

    .line 156
    iget-object v5, p0, Lorg/osmdroid/bonuspack/overlays/ItemizedOverlayWithBubble;->mItemWithBubble:Lorg/osmdroid/views/overlay/OverlayItem;

    iget-object v5, v5, Lorg/osmdroid/views/overlay/OverlayItem;->mGeoPoint:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v3, v5, v2}, Lorg/osmdroid/views/MapView$Projection;->toMapPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 157
    iget-object v5, p0, Lorg/osmdroid/bonuspack/overlays/ItemizedOverlayWithBubble;->mItemWithBubble:Lorg/osmdroid/views/overlay/OverlayItem;

    invoke-virtual {p0, p1, v5, v2}, Lorg/osmdroid/bonuspack/overlays/ItemizedOverlayWithBubble;->onDrawItem(Landroid/graphics/Canvas;Lorg/osmdroid/views/overlay/OverlayItem;Landroid/graphics/Point;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 139
    .end local v0    # "i":I
    .end local v2    # "mCurScreenCoords":Landroid/graphics/Point;
    .end local v3    # "pj":Lorg/osmdroid/views/MapView$Projection;
    .end local v4    # "size":I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 148
    .restart local v0    # "i":I
    .restart local v2    # "mCurScreenCoords":Landroid/graphics/Point;
    .restart local v3    # "pj":Lorg/osmdroid/views/MapView$Projection;
    .restart local v4    # "size":I
    :cond_2
    :try_start_1
    invoke-virtual {p0, v0}, Lorg/osmdroid/bonuspack/overlays/ItemizedOverlayWithBubble;->getItem(I)Lorg/osmdroid/views/overlay/OverlayItem;

    move-result-object v1

    .line 149
    .local v1, "item":Lorg/osmdroid/views/overlay/OverlayItem;, "TItem;"
    iget-object v5, p0, Lorg/osmdroid/bonuspack/overlays/ItemizedOverlayWithBubble;->mItemWithBubble:Lorg/osmdroid/views/overlay/OverlayItem;

    if-eq v1, v5, :cond_3

    .line 150
    iget-object v5, v1, Lorg/osmdroid/views/overlay/OverlayItem;->mGeoPoint:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v3, v5, v2}, Lorg/osmdroid/views/MapView$Projection;->toMapPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 151
    invoke-virtual {p0, p1, v1, v2}, Lorg/osmdroid/bonuspack/overlays/ItemizedOverlayWithBubble;->onDrawItem(Landroid/graphics/Canvas;Lorg/osmdroid/views/overlay/OverlayItem;Landroid/graphics/Point;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method protected final onSingleTapUpHelper$7a6768ef(ILorg/osmdroid/views/MapView;)Z
    .locals 2
    .param p1, "index"    # I
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/osmdroid/views/MapView;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "this":Lorg/osmdroid/bonuspack/overlays/ItemizedOverlayWithBubble;, "Lorg/osmdroid/bonuspack/overlays/ItemizedOverlayWithBubble<TItem;>;"
    invoke-virtual {p0, p1}, Lorg/osmdroid/bonuspack/overlays/ItemizedOverlayWithBubble;->getItem(I)Lorg/osmdroid/views/overlay/OverlayItem;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/bonuspack/overlays/ExtendedOverlayItem;

    iput-object v0, p0, Lorg/osmdroid/bonuspack/overlays/ItemizedOverlayWithBubble;->mItemWithBubble:Lorg/osmdroid/views/overlay/OverlayItem;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/osmdroid/bonuspack/overlays/ItemizedOverlayWithBubble;->mBubble:Lorg/osmdroid/bonuspack/overlays/InfoWindow;

    invoke-virtual {v0, v1, p2}, Lorg/osmdroid/bonuspack/overlays/ExtendedOverlayItem;->showBubble$6cd97dd2(Lorg/osmdroid/bonuspack/overlays/InfoWindow;Lorg/osmdroid/views/MapView;)V

    .line 95
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final declared-synchronized removeAllItems()V
    .locals 1

    .prologue
    .line 132
    .local p0, "this":Lorg/osmdroid/bonuspack/overlays/ItemizedOverlayWithBubble;, "Lorg/osmdroid/bonuspack/overlays/ItemizedOverlayWithBubble<TItem;>;"
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->removeAllItems()V

    .line 133
    iget-object v0, p0, Lorg/osmdroid/bonuspack/overlays/ItemizedOverlayWithBubble;->mBubble:Lorg/osmdroid/bonuspack/overlays/InfoWindow;

    invoke-virtual {v0}, Lorg/osmdroid/bonuspack/overlays/InfoWindow;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/bonuspack/overlays/ItemizedOverlayWithBubble;->mItemWithBubble:Lorg/osmdroid/views/overlay/OverlayItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    monitor-exit p0

    return-void

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
