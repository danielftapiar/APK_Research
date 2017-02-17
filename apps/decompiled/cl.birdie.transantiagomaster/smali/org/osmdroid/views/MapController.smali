.class public final Lorg/osmdroid/views/MapController;
.super Ljava/lang/Object;
.source "MapController.java"


# instance fields
.field private final mOsmv:Lorg/osmdroid/views/MapView;


# direct methods
.method public constructor <init>(Lorg/osmdroid/views/MapView;)V
    .locals 0
    .param p1, "osmv"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/osmdroid/views/MapController;->mOsmv:Lorg/osmdroid/views/MapView;

    .line 39
    return-void
.end method


# virtual methods
.method public final animateTo(DD)V
    .locals 10
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .prologue
    .line 95
    iget-object v0, p0, Lorg/osmdroid/views/MapController;->mOsmv:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getScrollX()I

    move-result v8

    .line 96
    .local v8, "x":I
    iget-object v0, p0, Lorg/osmdroid/views/MapController;->mOsmv:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getScrollY()I

    move-result v9

    .line 97
    .local v9, "y":I
    iget-object v0, p0, Lorg/osmdroid/views/MapController;->mOsmv:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getZoomLevel()I

    move-result v4

    const/4 v5, 0x0

    move-wide v0, p1

    move-wide v2, p3

    invoke-static/range {v0 .. v5}, Lmicrosoft/mappoint/TileSystem;->LatLongToPixelXY(DDILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v6

    .line 98
    .local v6, "p":Landroid/graphics/Point;
    iget-object v0, p0, Lorg/osmdroid/views/MapController;->mOsmv:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getZoomLevel()I

    move-result v0

    invoke-static {v0}, Lmicrosoft/mappoint/TileSystem;->MapSize(I)I

    move-result v0

    div-int/lit8 v7, v0, 0x2

    .line 99
    .local v7, "worldSize_2":I
    iget-object v0, p0, Lorg/osmdroid/views/MapController;->mOsmv:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getScroller()Landroid/widget/Scroller;

    move-result-object v0

    iget v1, v6, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v7

    sub-int v3, v1, v8

    iget v1, v6, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v7

    sub-int v4, v1, v9

    const/16 v5, 0x3e8

    move v1, v8

    move v2, v9

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 101
    iget-object v0, p0, Lorg/osmdroid/views/MapController;->mOsmv:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->postInvalidate()V

    .line 102
    return-void
.end method

.method public final setCenter(Lorg/osmdroid/api/IGeoPoint;)V
    .locals 8
    .param p1, "point"    # Lorg/osmdroid/api/IGeoPoint;

    .prologue
    const-wide v4, 0x412e848000000000L    # 1000000.0

    .line 203
    invoke-interface {p1}, Lorg/osmdroid/api/IGeoPoint;->getLatitudeE6()I

    move-result v0

    int-to-double v0, v0

    div-double/2addr v0, v4

    invoke-interface {p1}, Lorg/osmdroid/api/IGeoPoint;->getLongitudeE6()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v2, v4

    iget-object v4, p0, Lorg/osmdroid/views/MapController;->mOsmv:Lorg/osmdroid/views/MapView;

    invoke-virtual {v4}, Lorg/osmdroid/views/MapView;->getZoomLevel()I

    move-result v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lmicrosoft/mappoint/TileSystem;->LatLongToPixelXY(DDILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v6

    .line 205
    .local v6, "p":Landroid/graphics/Point;
    iget-object v0, p0, Lorg/osmdroid/views/MapController;->mOsmv:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getZoomLevel()I

    move-result v0

    invoke-static {v0}, Lmicrosoft/mappoint/TileSystem;->MapSize(I)I

    move-result v0

    div-int/lit8 v7, v0, 0x2

    .line 206
    .local v7, "worldSize_2":I
    iget-object v0, p0, Lorg/osmdroid/views/MapController;->mOsmv:Lorg/osmdroid/views/MapView;

    iget v1, v6, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v7

    iget v2, v6, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v7

    invoke-virtual {v0, v1, v2}, Lorg/osmdroid/views/MapView;->scrollTo(II)V

    .line 207
    return-void
.end method

.method public final setZoom(I)I
    .locals 1
    .param p1, "zoomlevel"    # I

    .prologue
    .line 228
    iget-object v0, p0, Lorg/osmdroid/views/MapController;->mOsmv:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/MapView;->setZoomLevel(I)I

    move-result v0

    return v0
.end method

.method public final zoomIn()Z
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lorg/osmdroid/views/MapController;->mOsmv:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->zoomIn()Z

    move-result v0

    return v0
.end method

.method public final zoomOut()Z
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lorg/osmdroid/views/MapController;->mOsmv:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->zoomOut()Z

    move-result v0

    return v0
.end method
