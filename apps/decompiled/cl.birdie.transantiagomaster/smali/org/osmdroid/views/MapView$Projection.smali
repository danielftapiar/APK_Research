.class public final Lorg/osmdroid/views/MapView$Projection;
.super Ljava/lang/Object;
.source "MapView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/views/MapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Projection"
.end annotation


# instance fields
.field private final mBoundingBoxProjection:Lorg/osmdroid/util/BoundingBoxE6;

.field private final mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

.field private final mScreenRectProjection:Landroid/graphics/Rect;

.field private final mZoomLevelProjection:I

.field private final offsetX:I

.field private final offsetY:I

.field final synthetic this$0:Lorg/osmdroid/views/MapView;

.field private final viewHeight_2:I

.field private final viewWidth_2:I

.field private final worldSize_2:I


# direct methods
.method private constructor <init>(Lorg/osmdroid/views/MapView;)V
    .locals 1

    .prologue
    .line 1268
    iput-object p1, p0, Lorg/osmdroid/views/MapView$Projection;->this$0:Lorg/osmdroid/views/MapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1257
    iget-object v0, p0, Lorg/osmdroid/views/MapView$Projection;->this$0:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/osmdroid/views/MapView$Projection;->viewWidth_2:I

    .line 1258
    iget-object v0, p0, Lorg/osmdroid/views/MapView$Projection;->this$0:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/osmdroid/views/MapView$Projection;->viewHeight_2:I

    .line 1259
    iget-object v0, p0, Lorg/osmdroid/views/MapView$Projection;->this$0:Lorg/osmdroid/views/MapView;

    # getter for: Lorg/osmdroid/views/MapView;->mZoomLevel:I
    invoke-static {v0}, Lorg/osmdroid/views/MapView;->access$400(Lorg/osmdroid/views/MapView;)I

    move-result v0

    invoke-static {v0}, Lmicrosoft/mappoint/TileSystem;->MapSize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/osmdroid/views/MapView$Projection;->worldSize_2:I

    .line 1260
    iget v0, p0, Lorg/osmdroid/views/MapView$Projection;->worldSize_2:I

    neg-int v0, v0

    iput v0, p0, Lorg/osmdroid/views/MapView$Projection;->offsetX:I

    .line 1261
    iget v0, p0, Lorg/osmdroid/views/MapView$Projection;->worldSize_2:I

    neg-int v0, v0

    iput v0, p0, Lorg/osmdroid/views/MapView$Projection;->offsetY:I

    .line 1273
    # getter for: Lorg/osmdroid/views/MapView;->mZoomLevel:I
    invoke-static {p1}, Lorg/osmdroid/views/MapView;->access$400(Lorg/osmdroid/views/MapView;)I

    move-result v0

    iput v0, p0, Lorg/osmdroid/views/MapView$Projection;->mZoomLevelProjection:I

    .line 1274
    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getBoundingBox()Lorg/osmdroid/util/BoundingBoxE6;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/views/MapView$Projection;->mBoundingBoxProjection:Lorg/osmdroid/util/BoundingBoxE6;

    .line 1275
    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getScreenRect$323c19cd()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/views/MapView$Projection;->mScreenRectProjection:Landroid/graphics/Rect;

    .line 1276
    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getIntrinsicScreenRect$323c19cd()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/views/MapView$Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    .line 1277
    return-void
.end method

.method synthetic constructor <init>(Lorg/osmdroid/views/MapView;B)V
    .locals 0
    .param p1, "x0"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 1255
    invoke-direct {p0, p1}, Lorg/osmdroid/views/MapView$Projection;-><init>(Lorg/osmdroid/views/MapView;)V

    return-void
.end method


# virtual methods
.method public final fromMapPixels(IILandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "reuse"    # Landroid/graphics/Point;

    .prologue
    .line 1339
    if-eqz p3, :cond_0

    move-object v0, p3

    .line 1340
    .local v0, "out":Landroid/graphics/Point;
    :goto_0
    iget v1, p0, Lorg/osmdroid/views/MapView$Projection;->viewWidth_2:I

    sub-int v1, p1, v1

    iget v2, p0, Lorg/osmdroid/views/MapView$Projection;->viewHeight_2:I

    sub-int v2, p2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 1341
    iget-object v1, p0, Lorg/osmdroid/views/MapView$Projection;->this$0:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->getScrollX()I

    move-result v1

    iget-object v2, p0, Lorg/osmdroid/views/MapView$Projection;->this$0:Lorg/osmdroid/views/MapView;

    invoke-virtual {v2}, Lorg/osmdroid/views/MapView;->getScrollY()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->offset(II)V

    .line 1342
    return-object v0

    .line 1339
    .end local v0    # "out":Landroid/graphics/Point;
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    goto :goto_0
.end method

.method public final fromPixels(FF)Lorg/osmdroid/api/IGeoPoint;
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1333
    iget-object v0, p0, Lorg/osmdroid/views/MapView$Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    .line 1334
    .local v0, "screenRect":Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    float-to-int v2, p1

    add-int/2addr v1, v2

    iget v2, p0, Lorg/osmdroid/views/MapView$Projection;->worldSize_2:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    float-to-int v3, p2

    add-int/2addr v2, v3

    iget v3, p0, Lorg/osmdroid/views/MapView$Projection;->worldSize_2:I

    add-int/2addr v2, v3

    iget v3, p0, Lorg/osmdroid/views/MapView$Projection;->mZoomLevelProjection:I

    invoke-static {v1, v2, v3}, Lmicrosoft/mappoint/TileSystem;->PixelXYToLatLong$1ef21a48(III)Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    return-object v1
.end method

.method public final getIntrinsicScreenRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1292
    iget-object v0, p0, Lorg/osmdroid/views/MapView$Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    return-object v0
.end method

.method public final getScreenRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1288
    iget-object v0, p0, Lorg/osmdroid/views/MapView$Projection;->mScreenRectProjection:Landroid/graphics/Rect;

    return-object v0
.end method

.method public final getZoomLevel()I
    .locals 1

    .prologue
    .line 1280
    iget v0, p0, Lorg/osmdroid/views/MapView$Projection;->mZoomLevelProjection:I

    return v0
.end method

.method public final toMapPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 8
    .param p1, "in"    # Lorg/osmdroid/api/IGeoPoint;
    .param p2, "reuse"    # Landroid/graphics/Point;

    .prologue
    const-wide v6, 0x412e848000000000L    # 1000000.0

    .line 1355
    if-eqz p2, :cond_2

    move-object v5, p2

    .line 1356
    .local v5, "out":Landroid/graphics/Point;
    :goto_0
    invoke-interface {p1}, Lorg/osmdroid/api/IGeoPoint;->getLatitudeE6()I

    move-result v0

    int-to-double v0, v0

    div-double/2addr v0, v6

    invoke-interface {p1}, Lorg/osmdroid/api/IGeoPoint;->getLongitudeE6()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v2, v6

    iget v4, p0, Lorg/osmdroid/views/MapView$Projection;->mZoomLevelProjection:I

    invoke-static/range {v0 .. v5}, Lmicrosoft/mappoint/TileSystem;->LatLongToPixelXY(DDILandroid/graphics/Point;)Landroid/graphics/Point;

    .line 1360
    iget v0, p0, Lorg/osmdroid/views/MapView$Projection;->offsetX:I

    iget v1, p0, Lorg/osmdroid/views/MapView$Projection;->offsetY:I

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Point;->offset(II)V

    .line 1361
    iget v0, v5, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lorg/osmdroid/views/MapView$Projection;->this$0:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, v5, Landroid/graphics/Point;->x:I

    iget v2, p0, Lorg/osmdroid/views/MapView$Projection;->mZoomLevelProjection:I

    invoke-static {v2}, Lmicrosoft/mappoint/TileSystem;->MapSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lorg/osmdroid/views/MapView$Projection;->this$0:Lorg/osmdroid/views/MapView;

    invoke-virtual {v2}, Lorg/osmdroid/views/MapView;->getScrollX()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 1363
    iget v0, v5, Landroid/graphics/Point;->x:I

    iget v1, p0, Lorg/osmdroid/views/MapView$Projection;->mZoomLevelProjection:I

    invoke-static {v1}, Lmicrosoft/mappoint/TileSystem;->MapSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, v5, Landroid/graphics/Point;->x:I

    .line 1365
    :cond_0
    iget v0, v5, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lorg/osmdroid/views/MapView$Projection;->this$0:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->getScrollY()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, v5, Landroid/graphics/Point;->y:I

    iget v2, p0, Lorg/osmdroid/views/MapView$Projection;->mZoomLevelProjection:I

    invoke-static {v2}, Lmicrosoft/mappoint/TileSystem;->MapSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lorg/osmdroid/views/MapView$Projection;->this$0:Lorg/osmdroid/views/MapView;

    invoke-virtual {v2}, Lorg/osmdroid/views/MapView;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v0, v1, :cond_1

    .line 1367
    iget v0, v5, Landroid/graphics/Point;->y:I

    iget v1, p0, Lorg/osmdroid/views/MapView$Projection;->mZoomLevelProjection:I

    invoke-static {v1}, Lmicrosoft/mappoint/TileSystem;->MapSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, v5, Landroid/graphics/Point;->y:I

    .line 1369
    :cond_1
    return-object v5

    .line 1355
    .end local v5    # "out":Landroid/graphics/Point;
    :cond_2
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    goto :goto_0
.end method

.method public final toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 1
    .param p1, "in"    # Lorg/osmdroid/api/IGeoPoint;
    .param p2, "out"    # Landroid/graphics/Point;

    .prologue
    .line 1477
    invoke-virtual {p0, p1, p2}, Lorg/osmdroid/views/MapView$Projection;->toMapPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method
