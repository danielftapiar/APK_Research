.class public Lorg/osmdroid/views/MapControllerOld;
.super Ljava/lang/Object;
.source "MapControllerOld.java"

# interfaces
.implements Lorg/osmdroid/api/IMapController;
.implements Lorg/osmdroid/views/util/constants/MapViewConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/views/MapControllerOld$1;,
        Lorg/osmdroid/views/MapControllerOld$MiddlePeakSpeedAnimationRunner;,
        Lorg/osmdroid/views/MapControllerOld$HalfCosinusalDeceleratingAnimationRunner;,
        Lorg/osmdroid/views/MapControllerOld$QuarterCosinusalDeceleratingAnimationRunner;,
        Lorg/osmdroid/views/MapControllerOld$CosinusalBasedAnimationRunner;,
        Lorg/osmdroid/views/MapControllerOld$ExponentialDeceleratingAnimationRunner;,
        Lorg/osmdroid/views/MapControllerOld$LinearAnimationRunner;,
        Lorg/osmdroid/views/MapControllerOld$AbstractAnimationRunner;,
        Lorg/osmdroid/views/MapControllerOld$AnimationType;
    }
.end annotation


# instance fields
.field private mCurrentAnimationRunner:Lorg/osmdroid/views/MapControllerOld$AbstractAnimationRunner;

.field private final mOsmv:Lorg/osmdroid/views/MapView;


# direct methods
.method public constructor <init>(Lorg/osmdroid/views/MapView;)V
    .locals 0
    .param p1, "osmv"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/osmdroid/views/MapControllerOld;->mOsmv:Lorg/osmdroid/views/MapView;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lorg/osmdroid/views/MapControllerOld;)Lorg/osmdroid/views/MapView;
    .locals 1
    .param p0, "x0"    # Lorg/osmdroid/views/MapControllerOld;

    .prologue
    .line 22
    iget-object v0, p0, Lorg/osmdroid/views/MapControllerOld;->mOsmv:Lorg/osmdroid/views/MapView;

    return-object v0
.end method


# virtual methods
.method public animateTo(DD)V
    .locals 11
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .prologue
    .line 97
    iget-object v0, p0, Lorg/osmdroid/views/MapControllerOld;->mOsmv:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getScrollX()I

    move-result v8

    .line 98
    .local v8, "x":I
    iget-object v0, p0, Lorg/osmdroid/views/MapControllerOld;->mOsmv:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getScrollY()I

    move-result v9

    .line 99
    .local v9, "y":I
    iget-object v0, p0, Lorg/osmdroid/views/MapControllerOld;->mOsmv:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getZoomLevel()I

    move-result v4

    const/4 v5, 0x0

    move-wide v0, p1

    move-wide v2, p3

    invoke-static/range {v0 .. v5}, Lmicrosoft/mappoint/TileSystem;->LatLongToPixelXY(DDILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v6

    .line 100
    .local v6, "p":Landroid/graphics/Point;
    iget-object v0, p0, Lorg/osmdroid/views/MapControllerOld;->mOsmv:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getZoomLevel()I

    move-result v0

    invoke-static {v0}, Lmicrosoft/mappoint/TileSystem;->MapSize(I)I

    move-result v0

    div-int/lit8 v7, v0, 0x2

    .line 101
    .local v7, "worldSize_2":I
    iget-object v0, p0, Lorg/osmdroid/views/MapControllerOld;->mOsmv:Lorg/osmdroid/views/MapView;

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

    .line 103
    iget-object v0, p0, Lorg/osmdroid/views/MapControllerOld;->mOsmv:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->postInvalidate()V

    .line 104
    return-void
.end method

.method public animateTo(IILorg/osmdroid/views/MapControllerOld$AnimationType;)V
    .locals 6
    .param p1, "aLatitudeE6"    # I
    .param p2, "aLongitudeE6"    # I
    .param p3, "aAnimationType"    # Lorg/osmdroid/views/MapControllerOld$AnimationType;

    .prologue
    .line 148
    const/16 v4, 0xa

    const/16 v5, 0x3e8

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/osmdroid/views/MapControllerOld;->animateTo(IILorg/osmdroid/views/MapControllerOld$AnimationType;II)V

    .line 150
    return-void
.end method

.method public animateTo(IILorg/osmdroid/views/MapControllerOld$AnimationType;II)V
    .locals 6
    .param p1, "aLatitudeE6"    # I
    .param p2, "aLongitudeE6"    # I
    .param p3, "aAnimationType"    # Lorg/osmdroid/views/MapControllerOld$AnimationType;
    .param p4, "aSmoothness"    # I
    .param p5, "aDuration"    # I

    .prologue
    .line 168
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/MapControllerOld;->stopAnimation(Z)V

    .line 170
    sget-object v0, Lorg/osmdroid/views/MapControllerOld$1;->$SwitchMap$org$osmdroid$views$MapControllerOld$AnimationType:[I

    invoke-virtual {p3}, Lorg/osmdroid/views/MapControllerOld$AnimationType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 193
    :goto_0
    iget-object v0, p0, Lorg/osmdroid/views/MapControllerOld;->mCurrentAnimationRunner:Lorg/osmdroid/views/MapControllerOld$AbstractAnimationRunner;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapControllerOld$AbstractAnimationRunner;->start()V

    .line 194
    return-void

    .line 172
    :pswitch_0
    new-instance v0, Lorg/osmdroid/views/MapControllerOld$LinearAnimationRunner;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/views/MapControllerOld$LinearAnimationRunner;-><init>(Lorg/osmdroid/views/MapControllerOld;IIII)V

    iput-object v0, p0, Lorg/osmdroid/views/MapControllerOld;->mCurrentAnimationRunner:Lorg/osmdroid/views/MapControllerOld$AbstractAnimationRunner;

    goto :goto_0

    .line 176
    :pswitch_1
    new-instance v0, Lorg/osmdroid/views/MapControllerOld$ExponentialDeceleratingAnimationRunner;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/views/MapControllerOld$ExponentialDeceleratingAnimationRunner;-><init>(Lorg/osmdroid/views/MapControllerOld;IIII)V

    iput-object v0, p0, Lorg/osmdroid/views/MapControllerOld;->mCurrentAnimationRunner:Lorg/osmdroid/views/MapControllerOld$AbstractAnimationRunner;

    goto :goto_0

    .line 180
    :pswitch_2
    new-instance v0, Lorg/osmdroid/views/MapControllerOld$QuarterCosinusalDeceleratingAnimationRunner;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/views/MapControllerOld$QuarterCosinusalDeceleratingAnimationRunner;-><init>(Lorg/osmdroid/views/MapControllerOld;IIII)V

    iput-object v0, p0, Lorg/osmdroid/views/MapControllerOld;->mCurrentAnimationRunner:Lorg/osmdroid/views/MapControllerOld$AbstractAnimationRunner;

    goto :goto_0

    .line 184
    :pswitch_3
    new-instance v0, Lorg/osmdroid/views/MapControllerOld$HalfCosinusalDeceleratingAnimationRunner;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/views/MapControllerOld$HalfCosinusalDeceleratingAnimationRunner;-><init>(Lorg/osmdroid/views/MapControllerOld;IIII)V

    iput-object v0, p0, Lorg/osmdroid/views/MapControllerOld;->mCurrentAnimationRunner:Lorg/osmdroid/views/MapControllerOld$AbstractAnimationRunner;

    goto :goto_0

    .line 188
    :pswitch_4
    new-instance v0, Lorg/osmdroid/views/MapControllerOld$MiddlePeakSpeedAnimationRunner;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/views/MapControllerOld$MiddlePeakSpeedAnimationRunner;-><init>(Lorg/osmdroid/views/MapControllerOld;IIII)V

    iput-object v0, p0, Lorg/osmdroid/views/MapControllerOld;->mCurrentAnimationRunner:Lorg/osmdroid/views/MapControllerOld$AbstractAnimationRunner;

    goto :goto_0

    .line 170
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public animateTo(Lorg/osmdroid/api/IGeoPoint;)V
    .locals 6
    .param p1, "point"    # Lorg/osmdroid/api/IGeoPoint;

    .prologue
    const-wide v4, 0x412e848000000000L    # 1000000.0

    .line 90
    invoke-interface {p1}, Lorg/osmdroid/api/IGeoPoint;->getLatitudeE6()I

    move-result v0

    int-to-double v0, v0

    div-double/2addr v0, v4

    invoke-interface {p1}, Lorg/osmdroid/api/IGeoPoint;->getLongitudeE6()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v2, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/osmdroid/views/MapControllerOld;->animateTo(DD)V

    .line 91
    return-void
.end method

.method public animateTo(Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/views/MapControllerOld$AnimationType;)V
    .locals 6
    .param p1, "gp"    # Lorg/osmdroid/util/GeoPoint;
    .param p2, "aAnimationType"    # Lorg/osmdroid/views/MapControllerOld$AnimationType;

    .prologue
    .line 114
    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLatitudeE6()I

    move-result v1

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLongitudeE6()I

    move-result v2

    const/16 v4, 0x3e8

    const/16 v5, 0xa

    move-object v0, p0

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lorg/osmdroid/views/MapControllerOld;->animateTo(IILorg/osmdroid/views/MapControllerOld$AnimationType;II)V

    .line 116
    return-void
.end method

.method public animateTo(Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/views/MapControllerOld$AnimationType;II)V
    .locals 6
    .param p1, "gp"    # Lorg/osmdroid/util/GeoPoint;
    .param p2, "aAnimationType"    # Lorg/osmdroid/views/MapControllerOld$AnimationType;
    .param p3, "aSmoothness"    # I
    .param p4, "aDuration"    # I

    .prologue
    .line 135
    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLatitudeE6()I

    move-result v1

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLongitudeE6()I

    move-result v2

    move-object v0, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/osmdroid/views/MapControllerOld;->animateTo(IILorg/osmdroid/views/MapControllerOld$AnimationType;II)V

    .line 136
    return-void
.end method

.method public scrollBy(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 197
    iget-object v0, p0, Lorg/osmdroid/views/MapControllerOld;->mOsmv:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0, p1, p2}, Lorg/osmdroid/views/MapView;->scrollBy(II)V

    .line 198
    return-void
.end method

.method public setCenter(Lorg/osmdroid/api/IGeoPoint;)V
    .locals 8
    .param p1, "point"    # Lorg/osmdroid/api/IGeoPoint;

    .prologue
    const-wide v4, 0x412e848000000000L    # 1000000.0

    .line 205
    invoke-interface {p1}, Lorg/osmdroid/api/IGeoPoint;->getLatitudeE6()I

    move-result v0

    int-to-double v0, v0

    div-double/2addr v0, v4

    invoke-interface {p1}, Lorg/osmdroid/api/IGeoPoint;->getLongitudeE6()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v2, v4

    iget-object v4, p0, Lorg/osmdroid/views/MapControllerOld;->mOsmv:Lorg/osmdroid/views/MapView;

    invoke-virtual {v4}, Lorg/osmdroid/views/MapView;->getZoomLevel()I

    move-result v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lmicrosoft/mappoint/TileSystem;->LatLongToPixelXY(DDILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v6

    .line 207
    .local v6, "p":Landroid/graphics/Point;
    iget-object v0, p0, Lorg/osmdroid/views/MapControllerOld;->mOsmv:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getZoomLevel()I

    move-result v0

    invoke-static {v0}, Lmicrosoft/mappoint/TileSystem;->MapSize(I)I

    move-result v0

    div-int/lit8 v7, v0, 0x2

    .line 208
    .local v7, "worldSize_2":I
    iget-object v0, p0, Lorg/osmdroid/views/MapControllerOld;->mOsmv:Lorg/osmdroid/views/MapView;

    iget v1, v6, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v7

    iget v2, v6, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v7

    invoke-virtual {v0, v1, v2}, Lorg/osmdroid/views/MapView;->scrollTo(II)V

    .line 209
    return-void
.end method

.method public setZoom(I)I
    .locals 1
    .param p1, "zoomlevel"    # I

    .prologue
    .line 235
    iget-object v0, p0, Lorg/osmdroid/views/MapControllerOld;->mOsmv:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/MapView;->setZoomLevel(I)I

    move-result v0

    return v0
.end method

.method public stopAnimation(Z)V
    .locals 4
    .param p1, "jumpToTarget"    # Z

    .prologue
    .line 217
    iget-object v0, p0, Lorg/osmdroid/views/MapControllerOld;->mCurrentAnimationRunner:Lorg/osmdroid/views/MapControllerOld$AbstractAnimationRunner;

    .line 219
    .local v0, "currentAnimationRunner":Lorg/osmdroid/views/MapControllerOld$AbstractAnimationRunner;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/osmdroid/views/MapControllerOld$AbstractAnimationRunner;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    .line 220
    invoke-virtual {v0}, Lorg/osmdroid/views/MapControllerOld$AbstractAnimationRunner;->interrupt()V

    .line 221
    if-eqz p1, :cond_0

    .line 222
    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    iget v2, v0, Lorg/osmdroid/views/MapControllerOld$AbstractAnimationRunner;->mTargetLatitudeE6:I

    iget v3, v0, Lorg/osmdroid/views/MapControllerOld$AbstractAnimationRunner;->mTargetLongitudeE6:I

    invoke-direct {v1, v2, v3}, Lorg/osmdroid/util/GeoPoint;-><init>(II)V

    invoke-virtual {p0, v1}, Lorg/osmdroid/views/MapControllerOld;->setCenter(Lorg/osmdroid/api/IGeoPoint;)V

    .line 226
    :cond_0
    return-void
.end method

.method public stopPanning()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lorg/osmdroid/views/MapControllerOld;->mOsmv:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getScroller()Landroid/widget/Scroller;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 231
    return-void
.end method

.method public zoomIn()Z
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lorg/osmdroid/views/MapControllerOld;->mOsmv:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->zoomIn()Z

    move-result v0

    return v0
.end method

.method public zoomInFixing(II)Z
    .locals 1
    .param p1, "xPixel"    # I
    .param p2, "yPixel"    # I

    .prologue
    .line 252
    iget-object v0, p0, Lorg/osmdroid/views/MapControllerOld;->mOsmv:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0, p1, p2}, Lorg/osmdroid/views/MapView;->zoomInFixing(II)Z

    move-result v0

    return v0
.end method

.method public zoomInFixing(Lorg/osmdroid/util/GeoPoint;)Z
    .locals 1
    .param p1, "point"    # Lorg/osmdroid/util/GeoPoint;

    .prologue
    .line 247
    iget-object v0, p0, Lorg/osmdroid/views/MapControllerOld;->mOsmv:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/MapView;->zoomInFixing(Lorg/osmdroid/api/IGeoPoint;)Z

    move-result v0

    return v0
.end method

.method public zoomOut()Z
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lorg/osmdroid/views/MapControllerOld;->mOsmv:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->zoomOut()Z

    move-result v0

    return v0
.end method

.method public zoomOutFixing(II)Z
    .locals 1
    .param p1, "xPixel"    # I
    .param p2, "yPixel"    # I

    .prologue
    .line 269
    iget-object v0, p0, Lorg/osmdroid/views/MapControllerOld;->mOsmv:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0, p1, p2}, Lorg/osmdroid/views/MapView;->zoomOutFixing(II)Z

    move-result v0

    return v0
.end method

.method public zoomOutFixing(Lorg/osmdroid/util/GeoPoint;)Z
    .locals 1
    .param p1, "point"    # Lorg/osmdroid/util/GeoPoint;

    .prologue
    .line 264
    iget-object v0, p0, Lorg/osmdroid/views/MapControllerOld;->mOsmv:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/MapView;->zoomOutFixing(Lorg/osmdroid/api/IGeoPoint;)Z

    move-result v0

    return v0
.end method

.method public zoomToSpan(II)V
    .locals 13
    .param p1, "reqLatSpan"    # I
    .param p2, "reqLonSpan"    # I

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    .line 62
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v7, p0, Lorg/osmdroid/views/MapControllerOld;->mOsmv:Lorg/osmdroid/views/MapView;

    invoke-virtual {v7}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v7

    invoke-virtual {v7}, Lorg/osmdroid/views/Projection;->getBoundingBox()Lorg/osmdroid/util/BoundingBoxE6;

    move-result-object v0

    .line 67
    .local v0, "bb":Lorg/osmdroid/util/BoundingBoxE6;
    iget-object v7, p0, Lorg/osmdroid/views/MapControllerOld;->mOsmv:Lorg/osmdroid/views/MapView;

    invoke-virtual {v7}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v7

    invoke-virtual {v7}, Lorg/osmdroid/views/Projection;->getZoomLevel()I

    move-result v3

    .line 69
    .local v3, "curZoomLevel":I
    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBoxE6;->getLatitudeSpanE6()I

    move-result v1

    .line 70
    .local v1, "curLatSpan":I
    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBoxE6;->getLongitudeSpanE6()I

    move-result v2

    .line 72
    .local v2, "curLonSpan":I
    int-to-float v7, p1

    int-to-float v8, v1

    div-float v5, v7, v8

    .line 73
    .local v5, "diffNeededLat":F
    int-to-float v7, p2

    int-to-float v8, v2

    div-float v6, v7, v8

    .line 75
    .local v6, "diffNeededLon":F
    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 77
    .local v4, "diffNeeded":F
    cmpl-float v7, v4, v12

    if-lez v7, :cond_2

    .line 78
    iget-object v7, p0, Lorg/osmdroid/views/MapControllerOld;->mOsmv:Lorg/osmdroid/views/MapView;

    invoke-static {v4}, Lorg/osmdroid/views/util/MyMath;->getNextSquareNumberAbove(F)I

    move-result v8

    sub-int v8, v3, v8

    invoke-virtual {v7, v8}, Lorg/osmdroid/views/MapView;->setZoomLevel(I)I

    goto :goto_0

    .line 79
    :cond_2
    float-to-double v8, v4

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    cmpg-double v7, v8, v10

    if-gez v7, :cond_0

    .line 80
    iget-object v7, p0, Lorg/osmdroid/views/MapControllerOld;->mOsmv:Lorg/osmdroid/views/MapView;

    div-float v8, v12, v4

    invoke-static {v8}, Lorg/osmdroid/views/util/MyMath;->getNextSquareNumberAbove(F)I

    move-result v8

    add-int/2addr v8, v3

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Lorg/osmdroid/views/MapView;->setZoomLevel(I)I

    goto :goto_0
.end method

.method public zoomToSpan(Lorg/osmdroid/util/BoundingBoxE6;)V
    .locals 2
    .param p1, "bb"    # Lorg/osmdroid/util/BoundingBoxE6;

    .prologue
    .line 56
    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBoxE6;->getLatitudeSpanE6()I

    move-result v0

    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBoxE6;->getLongitudeSpanE6()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/osmdroid/views/MapControllerOld;->zoomToSpan(II)V

    .line 57
    return-void
.end method
