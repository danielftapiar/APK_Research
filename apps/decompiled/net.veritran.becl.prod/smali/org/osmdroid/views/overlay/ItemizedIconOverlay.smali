.class public Lorg/osmdroid/views/overlay/ItemizedIconOverlay;
.super Lorg/osmdroid/views/overlay/ItemizedOverlay;
.source "ItemizedIconOverlay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/views/overlay/ItemizedIconOverlay$ActiveItem;,
        Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item:",
        "Lorg/osmdroid/views/overlay/OverlayItem;",
        ">",
        "Lorg/osmdroid/views/overlay/ItemizedOverlay",
        "<TItem;>;"
    }
.end annotation


# instance fields
.field private mDrawnItemsLimit:I

.field protected final mItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TItem;>;"
        }
    .end annotation
.end field

.field private final mItemPoint:Landroid/graphics/Point;

.field protected mOnItemGestureListener:Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener",
            "<TItem;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;)V
    .locals 2
    .param p1, "pContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<TItem;>;",
            "Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener",
            "<TItem;>;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedIconOverlay;, "Lorg/osmdroid/views/overlay/ItemizedIconOverlay<TItem;>;"
    .local p2, "pList":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    .local p3, "pOnItemGestureListener":Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;, "Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener<TItem;>;"
    new-instance v0, Lorg/osmdroid/DefaultResourceProxyImpl;

    invoke-direct {v0, p1}, Lorg/osmdroid/DefaultResourceProxyImpl;-><init>(Landroid/content/Context;)V

    sget-object v1, Lorg/osmdroid/ResourceProxy$bitmap;->marker_default:Lorg/osmdroid/ResourceProxy$bitmap;

    invoke-virtual {v0, v1}, Lorg/osmdroid/DefaultResourceProxyImpl;->getDrawable(Lorg/osmdroid/ResourceProxy$bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Lorg/osmdroid/DefaultResourceProxyImpl;

    invoke-direct {v1, p1}, Lorg/osmdroid/DefaultResourceProxyImpl;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p2, v0, p3, v1}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;-><init>(Ljava/util/List;Landroid/graphics/drawable/Drawable;Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;Lorg/osmdroid/ResourceProxy;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroid/graphics/drawable/Drawable;Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;Lorg/osmdroid/ResourceProxy;)V
    .locals 1
    .param p2, "pDefaultMarker"    # Landroid/graphics/drawable/Drawable;
    .param p4, "pResourceProxy"    # Lorg/osmdroid/ResourceProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TItem;>;",
            "Landroid/graphics/drawable/Drawable;",
            "Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener",
            "<TItem;>;",
            "Lorg/osmdroid/ResourceProxy;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedIconOverlay;, "Lorg/osmdroid/views/overlay/ItemizedIconOverlay<TItem;>;"
    .local p1, "pList":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    .local p3, "pOnItemGestureListener":Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;, "Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener<TItem;>;"
    invoke-direct {p0, p2, p4}, Lorg/osmdroid/views/overlay/ItemizedOverlay;-><init>(Landroid/graphics/drawable/Drawable;Lorg/osmdroid/ResourceProxy;)V

    .line 21
    const v0, 0x7fffffff

    iput v0, p0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mDrawnItemsLimit:I

    .line 22
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mItemPoint:Landroid/graphics/Point;

    .line 31
    iput-object p1, p0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mItemList:Ljava/util/List;

    .line 32
    iput-object p3, p0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mOnItemGestureListener:Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;

    .line 33
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->populate()V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;Lorg/osmdroid/ResourceProxy;)V
    .locals 1
    .param p3, "pResourceProxy"    # Lorg/osmdroid/ResourceProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TItem;>;",
            "Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener",
            "<TItem;>;",
            "Lorg/osmdroid/ResourceProxy;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedIconOverlay;, "Lorg/osmdroid/views/overlay/ItemizedIconOverlay<TItem;>;"
    .local p1, "pList":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    .local p2, "pOnItemGestureListener":Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;, "Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener<TItem;>;"
    sget-object v0, Lorg/osmdroid/ResourceProxy$bitmap;->marker_default:Lorg/osmdroid/ResourceProxy$bitmap;

    invoke-interface {p3, v0}, Lorg/osmdroid/ResourceProxy;->getDrawable(Lorg/osmdroid/ResourceProxy$bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;-><init>(Ljava/util/List;Landroid/graphics/drawable/Drawable;Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;Lorg/osmdroid/ResourceProxy;)V

    .line 42
    return-void
.end method

.method private activateSelectedItems(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;Lorg/osmdroid/views/overlay/ItemizedIconOverlay$ActiveItem;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;
    .param p3, "task"    # Lorg/osmdroid/views/overlay/ItemizedIconOverlay$ActiveItem;

    .prologue
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedIconOverlay;, "Lorg/osmdroid/views/overlay/ItemizedIconOverlay<TItem;>;"
    const/4 v6, 0x0

    .line 162
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v5

    .line 163
    .local v5, "pj":Lorg/osmdroid/views/Projection;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v0, v7

    .line 164
    .local v0, "eventX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v1, v7

    .line 166
    .local v1, "eventY":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v7, p0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mItemList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_0

    .line 167
    invoke-virtual {p0, v2}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->getItem(I)Lorg/osmdroid/views/overlay/OverlayItem;

    move-result-object v3

    .line 168
    .local v3, "item":Lorg/osmdroid/views/overlay/OverlayItem;, "TItem;"
    invoke-virtual {v3, v6}, Lorg/osmdroid/views/overlay/OverlayItem;->getMarker(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-nez v7, :cond_1

    iget-object v4, p0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mDefaultMarker:Landroid/graphics/drawable/Drawable;

    .line 171
    .local v4, "marker":Landroid/graphics/drawable/Drawable;
    :goto_1
    invoke-virtual {v3}, Lorg/osmdroid/views/overlay/OverlayItem;->getPoint()Lorg/osmdroid/util/GeoPoint;

    move-result-object v7

    iget-object v8, p0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mItemPoint:Landroid/graphics/Point;

    invoke-virtual {v5, v7, v8}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 173
    iget-object v7, p0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mItemPoint:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    sub-int v7, v0, v7

    iget-object v8, p0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mItemPoint:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    sub-int v8, v1, v8

    invoke-virtual {p0, v3, v4, v7, v8}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->hitTest(Lorg/osmdroid/views/overlay/OverlayItem;Landroid/graphics/drawable/Drawable;II)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 174
    invoke-interface {p3, v2}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay$ActiveItem;->run(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 175
    const/4 v6, 0x1

    .line 179
    .end local v3    # "item":Lorg/osmdroid/views/overlay/OverlayItem;, "TItem;"
    .end local v4    # "marker":Landroid/graphics/drawable/Drawable;
    :cond_0
    return v6

    .line 168
    .restart local v3    # "item":Lorg/osmdroid/views/overlay/OverlayItem;, "TItem;"
    :cond_1
    invoke-virtual {v3, v6}, Lorg/osmdroid/views/overlay/OverlayItem;->getMarker(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_1

    .line 166
    .restart local v4    # "marker":Landroid/graphics/drawable/Drawable;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addItem(ILorg/osmdroid/views/overlay/OverlayItem;)V
    .locals 1
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITItem;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedIconOverlay;, "Lorg/osmdroid/views/overlay/ItemizedIconOverlay<TItem;>;"
    .local p2, "item":Lorg/osmdroid/views/overlay/OverlayItem;, "TItem;"
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mItemList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 76
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->populate()V

    .line 77
    return-void
.end method

.method public addItem(Lorg/osmdroid/views/overlay/OverlayItem;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;)Z"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedIconOverlay;, "Lorg/osmdroid/views/overlay/ItemizedIconOverlay<TItem;>;"
    .local p1, "item":Lorg/osmdroid/views/overlay/OverlayItem;, "TItem;"
    iget-object v1, p0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mItemList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 70
    .local v0, "result":Z
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->populate()V

    .line 71
    return v0
.end method

.method public addItems(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TItem;>;)Z"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedIconOverlay;, "Lorg/osmdroid/views/overlay/ItemizedIconOverlay<TItem;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    iget-object v1, p0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mItemList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v0

    .line 81
    .local v0, "result":Z
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->populate()V

    .line 82
    return v0
.end method

.method protected createItem(I)Lorg/osmdroid/views/overlay/OverlayItem;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TItem;"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedIconOverlay;, "Lorg/osmdroid/views/overlay/ItemizedIconOverlay<TItem;>;"
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/OverlayItem;

    return-object v0
.end method

.method public getDrawnItemsLimit()I
    .locals 1

    .prologue
    .line 187
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedIconOverlay;, "Lorg/osmdroid/views/overlay/ItemizedIconOverlay<TItem;>;"
    iget v0, p0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mDrawnItemsLimit:I

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 135
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedIconOverlay;, "Lorg/osmdroid/views/overlay/ItemizedIconOverlay<TItem;>;"
    new-instance v0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay$2;

    invoke-direct {v0, p0}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay$2;-><init>(Lorg/osmdroid/views/overlay/ItemizedIconOverlay;)V

    invoke-direct {p0, p1, p2, v0}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->activateSelectedItems(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;Lorg/osmdroid/views/overlay/ItemizedIconOverlay$ActiveItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/osmdroid/views/overlay/ItemizedOverlay;->onLongPress(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLongPressHelper(ILorg/osmdroid/views/overlay/OverlayItem;)Z
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITItem;)Z"
        }
    .end annotation

    .prologue
    .line 148
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedIconOverlay;, "Lorg/osmdroid/views/overlay/ItemizedIconOverlay<TItem;>;"
    .local p2, "item":Lorg/osmdroid/views/overlay/OverlayItem;, "TItem;"
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mOnItemGestureListener:Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;

    invoke-interface {v0, p1, p2}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;->onItemLongPress(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 117
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedIconOverlay;, "Lorg/osmdroid/views/overlay/ItemizedIconOverlay<TItem;>;"
    new-instance v0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay$1;

    invoke-direct {v0, p0, p2}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay$1;-><init>(Lorg/osmdroid/views/overlay/ItemizedIconOverlay;Lorg/osmdroid/views/MapView;)V

    invoke-direct {p0, p1, p2, v0}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->activateSelectedItems(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;Lorg/osmdroid/views/overlay/ItemizedIconOverlay$ActiveItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/osmdroid/views/overlay/ItemizedOverlay;->onSingleTapConfirmed(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onSingleTapUpHelper(ILorg/osmdroid/views/overlay/OverlayItem;Lorg/osmdroid/views/MapView;)Z
    .locals 1
    .param p1, "index"    # I
    .param p3, "mapView"    # Lorg/osmdroid/views/MapView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITItem;",
            "Lorg/osmdroid/views/MapView;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedIconOverlay;, "Lorg/osmdroid/views/overlay/ItemizedIconOverlay<TItem;>;"
    .local p2, "item":Lorg/osmdroid/views/overlay/OverlayItem;, "TItem;"
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mOnItemGestureListener:Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;

    invoke-interface {v0, p1, p2}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;->onItemSingleTapUp(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onSnapToItem(IILandroid/graphics/Point;Lorg/osmdroid/api/IMapView;)Z
    .locals 1
    .param p1, "pX"    # I
    .param p2, "pY"    # I
    .param p3, "pSnapPoint"    # Landroid/graphics/Point;
    .param p4, "pMapView"    # Lorg/osmdroid/api/IMapView;

    .prologue
    .line 55
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedIconOverlay;, "Lorg/osmdroid/views/overlay/ItemizedIconOverlay<TItem;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public removeAllItems()V
    .locals 1

    .prologue
    .line 86
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedIconOverlay;, "Lorg/osmdroid/views/overlay/ItemizedIconOverlay<TItem;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->removeAllItems(Z)V

    .line 87
    return-void
.end method

.method public removeAllItems(Z)V
    .locals 1
    .param p1, "withPopulate"    # Z

    .prologue
    .line 90
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedIconOverlay;, "Lorg/osmdroid/views/overlay/ItemizedIconOverlay<TItem;>;"
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 91
    if-eqz p1, :cond_0

    .line 92
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->populate()V

    .line 94
    :cond_0
    return-void
.end method

.method public removeItem(I)Lorg/osmdroid/views/overlay/OverlayItem;
    .locals 2
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TItem;"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedIconOverlay;, "Lorg/osmdroid/views/overlay/ItemizedIconOverlay<TItem;>;"
    iget-object v1, p0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mItemList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/OverlayItem;

    .line 104
    .local v0, "result":Lorg/osmdroid/views/overlay/OverlayItem;, "TItem;"
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->populate()V

    .line 105
    return-object v0
.end method

.method public removeItem(Lorg/osmdroid/views/overlay/OverlayItem;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;)Z"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedIconOverlay;, "Lorg/osmdroid/views/overlay/ItemizedIconOverlay<TItem;>;"
    .local p1, "item":Lorg/osmdroid/views/overlay/OverlayItem;, "TItem;"
    iget-object v1, p0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mItemList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 98
    .local v0, "result":Z
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->populate()V

    .line 99
    return v0
.end method

.method public setDrawnItemsLimit(I)V
    .locals 0
    .param p1, "aLimit"    # I

    .prologue
    .line 191
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedIconOverlay;, "Lorg/osmdroid/views/overlay/ItemizedIconOverlay<TItem;>;"
    iput p1, p0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mDrawnItemsLimit:I

    .line 192
    return-void
.end method

.method public size()I
    .locals 2

    .prologue
    .line 65
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedIconOverlay;, "Lorg/osmdroid/views/overlay/ItemizedIconOverlay<TItem;>;"
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mDrawnItemsLimit:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method
