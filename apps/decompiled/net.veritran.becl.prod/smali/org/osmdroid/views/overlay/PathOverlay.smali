.class public Lorg/osmdroid/views/overlay/PathOverlay;
.super Lorg/osmdroid/views/overlay/Overlay;
.source "PathOverlay.java"


# instance fields
.field private final mLineBounds:Landroid/graphics/Rect;

.field protected mPaint:Landroid/graphics/Paint;

.field private final mPath:Landroid/graphics/Path;

.field private mPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private mPointsPrecomputed:I

.field private final mTempPoint1:Landroid/graphics/Point;

.field private final mTempPoint2:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(IFLorg/osmdroid/ResourceProxy;)V
    .locals 2
    .param p1, "color"    # I
    .param p2, "width"    # F
    .param p3, "resourceProxy"    # Lorg/osmdroid/ResourceProxy;

    .prologue
    .line 73
    invoke-direct {p0, p3}, Lorg/osmdroid/views/overlay/Overlay;-><init>(Lorg/osmdroid/ResourceProxy;)V

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mPaint:Landroid/graphics/Paint;

    .line 52
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mPath:Landroid/graphics/Path;

    .line 54
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mTempPoint1:Landroid/graphics/Point;

    .line 55
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mTempPoint2:Landroid/graphics/Point;

    .line 58
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mLineBounds:Landroid/graphics/Rect;

    .line 74
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 76
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 78
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/PathOverlay;->clearPath()V

    .line 79
    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;)V
    .locals 2
    .param p1, "color"    # I
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    .line 65
    const/high16 v0, 0x40000000    # 2.0f

    new-instance v1, Lorg/osmdroid/DefaultResourceProxyImpl;

    invoke-direct {v1, p2}, Lorg/osmdroid/DefaultResourceProxyImpl;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, v1}, Lorg/osmdroid/views/overlay/PathOverlay;-><init>(IFLorg/osmdroid/ResourceProxy;)V

    .line 66
    return-void
.end method

.method public constructor <init>(ILorg/osmdroid/ResourceProxy;)V
    .locals 1
    .param p1, "color"    # I
    .param p2, "resourceProxy"    # Lorg/osmdroid/ResourceProxy;

    .prologue
    .line 69
    const/high16 v0, 0x40000000    # 2.0f

    invoke-direct {p0, p1, v0, p2}, Lorg/osmdroid/views/overlay/PathOverlay;-><init>(IFLorg/osmdroid/ResourceProxy;)V

    .line 70
    return-void
.end method


# virtual methods
.method public addGreatCircle(Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;)V
    .locals 3
    .param p1, "startPoint"    # Lorg/osmdroid/util/GeoPoint;
    .param p2, "endPoint"    # Lorg/osmdroid/util/GeoPoint;

    .prologue
    .line 101
    invoke-virtual {p1, p2}, Lorg/osmdroid/util/GeoPoint;->distanceTo(Lorg/osmdroid/api/IGeoPoint;)I

    move-result v0

    .line 104
    .local v0, "greatCircleLength":I
    const v2, 0x186a0

    div-int v1, v0, v2

    .line 106
    .local v1, "numberOfPoints":I
    invoke-virtual {p0, p1, p2, v1}, Lorg/osmdroid/views/overlay/PathOverlay;->addGreatCircle(Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;I)V

    .line 107
    return-void
.end method

.method public addGreatCircle(Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;I)V
    .locals 44
    .param p1, "startPoint"    # Lorg/osmdroid/util/GeoPoint;
    .param p2, "endPoint"    # Lorg/osmdroid/util/GeoPoint;
    .param p3, "numberOfPoints"    # I

    .prologue
    .line 120
    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v34

    const-wide v36, 0x400921fb54442d18L    # Math.PI

    mul-double v34, v34, v36

    const-wide v36, 0x4066800000000000L    # 180.0

    div-double v16, v34, v36

    .line 121
    .local v16, "lat1":D
    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v34

    const-wide v36, 0x400921fb54442d18L    # Math.PI

    mul-double v34, v34, v36

    const-wide v36, 0x4066800000000000L    # 180.0

    div-double v22, v34, v36

    .line 122
    .local v22, "lon1":D
    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v34

    const-wide v36, 0x400921fb54442d18L    # Math.PI

    mul-double v34, v34, v36

    const-wide v36, 0x4066800000000000L    # 180.0

    div-double v18, v34, v36

    .line 123
    .local v18, "lat2":D
    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v34

    const-wide v36, 0x400921fb54442d18L    # Math.PI

    mul-double v34, v34, v36

    const-wide v36, 0x4066800000000000L    # 180.0

    div-double v24, v34, v36

    .line 125
    .local v24, "lon2":D
    const-wide/high16 v34, 0x4000000000000000L    # 2.0

    sub-double v36, v16, v18

    const-wide/high16 v38, 0x4000000000000000L    # 2.0

    div-double v36, v36, v38

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->sin(D)D

    move-result-wide v36

    const-wide/high16 v38, 0x4000000000000000L    # 2.0

    invoke-static/range {v36 .. v39}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v36

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v38

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v40

    mul-double v38, v38, v40

    sub-double v40, v22, v24

    const-wide/high16 v42, 0x4000000000000000L    # 2.0

    div-double v40, v40, v42

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->sin(D)D

    move-result-wide v40

    const-wide/high16 v42, 0x4000000000000000L    # 2.0

    invoke-static/range {v40 .. v43}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v40

    mul-double v38, v38, v40

    add-double v36, v36, v38

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v36

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->asin(D)D

    move-result-wide v36

    mul-double v10, v34, v36

    .line 127
    .local v10, "d":D
    sub-double v34, v22, v24

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->sin(D)D

    move-result-wide v34

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v36

    mul-double v34, v34, v36

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v36

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v38

    mul-double v36, v36, v38

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v38

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v40

    mul-double v38, v38, v40

    sub-double v40, v22, v24

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->cos(D)D

    move-result-wide v40

    mul-double v38, v38, v40

    sub-double v36, v36, v38

    invoke-static/range {v34 .. v37}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v34

    const-wide v36, -0x406e20b95dad62c7L    # -0.017453292519943295

    div-double v8, v34, v36

    .line 130
    .local v8, "bearing":D
    const-wide/16 v34, 0x0

    cmpg-double v34, v8, v34

    if-gez v34, :cond_0

    const-wide v34, 0x4076800000000000L    # 360.0

    add-double v8, v8, v34

    .line 132
    :cond_0
    const/4 v14, 0x0

    .local v14, "i":I
    add-int/lit8 v15, p3, 0x1

    .local v15, "j":I
    :goto_0
    if-ge v14, v15, :cond_1

    .line 133
    const-wide/high16 v34, 0x3ff0000000000000L    # 1.0

    move/from16 v0, p3

    int-to-double v0, v0

    move-wide/from16 v36, v0

    div-double v34, v34, v36

    int-to-double v0, v14

    move-wide/from16 v36, v0

    mul-double v12, v34, v36

    .line 134
    .local v12, "f":D
    const-wide/high16 v34, 0x3ff0000000000000L    # 1.0

    sub-double v34, v34, v12

    mul-double v34, v34, v10

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->sin(D)D

    move-result-wide v34

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v36

    div-double v4, v34, v36

    .line 135
    .local v4, "A":D
    mul-double v34, v12, v10

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->sin(D)D

    move-result-wide v34

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v36

    div-double v6, v34, v36

    .line 136
    .local v6, "B":D
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v34

    mul-double v34, v34, v4

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    move-result-wide v36

    mul-double v34, v34, v36

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v36

    mul-double v36, v36, v6

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->cos(D)D

    move-result-wide v38

    mul-double v36, v36, v38

    add-double v28, v34, v36

    .line 137
    .local v28, "x":D
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v34

    mul-double v34, v34, v4

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v36

    mul-double v34, v34, v36

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v36

    mul-double v36, v36, v6

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D

    move-result-wide v38

    mul-double v36, v36, v38

    add-double v30, v34, v36

    .line 138
    .local v30, "y":D
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v34

    mul-double v34, v34, v4

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v36

    mul-double v36, v36, v6

    add-double v32, v34, v36

    .line 140
    .local v32, "z":D
    const-wide/high16 v34, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, v28

    move-wide/from16 v2, v34

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v34

    const-wide/high16 v36, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, v30

    move-wide/from16 v2, v36

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v36

    add-double v34, v34, v36

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v34

    invoke-static/range {v32 .. v35}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v20

    .line 141
    .local v20, "latN":D
    move-wide/from16 v0, v30

    move-wide/from16 v2, v28

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v26

    .line 142
    .local v26, "lonN":D
    const-wide v34, 0x3f91df46a2529d39L    # 0.017453292519943295

    div-double v34, v20, v34

    const-wide v36, 0x412e848000000000L    # 1000000.0

    mul-double v34, v34, v36

    move-wide/from16 v0, v34

    double-to-int v0, v0

    move/from16 v34, v0

    const-wide v36, 0x3f91df46a2529d39L    # 0.017453292519943295

    div-double v36, v26, v36

    const-wide v38, 0x412e848000000000L    # 1000000.0

    mul-double v36, v36, v38

    move-wide/from16 v0, v36

    double-to-int v0, v0

    move/from16 v35, v0

    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lorg/osmdroid/views/overlay/PathOverlay;->addPoint(II)V

    .line 132
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 144
    .end local v4    # "A":D
    .end local v6    # "B":D
    .end local v12    # "f":D
    .end local v20    # "latN":D
    .end local v26    # "lonN":D
    .end local v28    # "x":D
    .end local v30    # "y":D
    .end local v32    # "z":D
    :cond_1
    return-void
.end method

.method public addPoint(II)V
    .locals 2
    .param p1, "aLatitudeE6"    # I
    .param p2, "aLongitudeE6"    # I

    .prologue
    .line 167
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mPoints:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    return-void
.end method

.method public addPoint(Lorg/osmdroid/api/IGeoPoint;)V
    .locals 2
    .param p1, "aPoint"    # Lorg/osmdroid/api/IGeoPoint;

    .prologue
    .line 163
    invoke-interface {p1}, Lorg/osmdroid/api/IGeoPoint;->getLatitudeE6()I

    move-result v0

    invoke-interface {p1}, Lorg/osmdroid/api/IGeoPoint;->getLongitudeE6()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/osmdroid/views/overlay/PathOverlay;->addPoint(II)V

    .line 164
    return-void
.end method

.method public addPoints(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/api/IGeoPoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 177
    .local p1, "aPoints":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/api/IGeoPoint;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/api/IGeoPoint;

    .line 178
    .local v1, "point":Lorg/osmdroid/api/IGeoPoint;
    invoke-virtual {p0, v1}, Lorg/osmdroid/views/overlay/PathOverlay;->addPoint(Lorg/osmdroid/api/IGeoPoint;)V

    goto :goto_0

    .line 180
    .end local v1    # "point":Lorg/osmdroid/api/IGeoPoint;
    :cond_0
    return-void
.end method

.method public varargs addPoints([Lorg/osmdroid/api/IGeoPoint;)V
    .locals 4
    .param p1, "aPoints"    # [Lorg/osmdroid/api/IGeoPoint;

    .prologue
    .line 171
    move-object v0, p1

    .local v0, "arr$":[Lorg/osmdroid/api/IGeoPoint;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 172
    .local v3, "point":Lorg/osmdroid/api/IGeoPoint;
    invoke-virtual {p0, v3}, Lorg/osmdroid/views/overlay/PathOverlay;->addPoint(Lorg/osmdroid/api/IGeoPoint;)V

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 174
    .end local v3    # "point":Lorg/osmdroid/api/IGeoPoint;
    :cond_0
    return-void
.end method

.method public clearPath()V
    .locals 1

    .prologue
    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mPoints:Ljava/util/ArrayList;

    .line 159
    const/4 v0, 0x0

    iput v0, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mPointsPrecomputed:I

    .line 160
    return-void
.end method

.method protected draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;
    .param p3, "shadow"    # Z

    .prologue
    .line 193
    if-eqz p3, :cond_1

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/osmdroid/views/overlay/PathOverlay;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 198
    .local v11, "size":I
    const/4 v13, 0x2

    if-lt v11, v13, :cond_0

    .line 203
    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v5

    .line 206
    .local v5, "pj":Lorg/osmdroid/views/Projection;
    :goto_1
    move-object/from16 v0, p0

    iget v13, v0, Lorg/osmdroid/views/overlay/PathOverlay;->mPointsPrecomputed:I

    if-ge v13, v11, :cond_2

    .line 207
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/osmdroid/views/overlay/PathOverlay;->mPoints:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v14, v0, Lorg/osmdroid/views/overlay/PathOverlay;->mPointsPrecomputed:I

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Point;

    .line 208
    .local v8, "pt":Landroid/graphics/Point;
    iget v13, v8, Landroid/graphics/Point;->x:I

    iget v14, v8, Landroid/graphics/Point;->y:I

    invoke-virtual {v5, v13, v14, v8}, Lorg/osmdroid/views/Projection;->toProjectedPixels(IILandroid/graphics/Point;)Landroid/graphics/Point;

    .line 210
    move-object/from16 v0, p0

    iget v13, v0, Lorg/osmdroid/views/overlay/PathOverlay;->mPointsPrecomputed:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lorg/osmdroid/views/overlay/PathOverlay;->mPointsPrecomputed:I

    goto :goto_1

    .line 213
    .end local v8    # "pt":Landroid/graphics/Point;
    :cond_2
    const/4 v9, 0x0

    .line 219
    .local v9, "screenPoint0":Landroid/graphics/Point;
    invoke-virtual {v5}, Lorg/osmdroid/views/Projection;->getBoundingBox()Lorg/osmdroid/util/BoundingBoxE6;

    move-result-object v2

    .line 220
    .local v2, "boundingBox":Lorg/osmdroid/util/BoundingBoxE6;
    invoke-virtual {v2}, Lorg/osmdroid/util/BoundingBoxE6;->getLatNorthE6()I

    move-result v13

    invoke-virtual {v2}, Lorg/osmdroid/util/BoundingBoxE6;->getLonWestE6()I

    move-result v14

    const/4 v15, 0x0

    invoke-virtual {v5, v13, v14, v15}, Lorg/osmdroid/views/Projection;->toProjectedPixels(IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v12

    .line 222
    .local v12, "topLeft":Landroid/graphics/Point;
    invoke-virtual {v2}, Lorg/osmdroid/util/BoundingBoxE6;->getLatSouthE6()I

    move-result v13

    invoke-virtual {v2}, Lorg/osmdroid/util/BoundingBoxE6;->getLonEastE6()I

    move-result v14

    const/4 v15, 0x0

    invoke-virtual {v5, v13, v14, v15}, Lorg/osmdroid/views/Projection;->toProjectedPixels(IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v1

    .line 224
    .local v1, "bottomRight":Landroid/graphics/Point;
    new-instance v3, Landroid/graphics/Rect;

    iget v13, v12, Landroid/graphics/Point;->x:I

    iget v14, v12, Landroid/graphics/Point;->y:I

    iget v15, v1, Landroid/graphics/Point;->x:I

    iget v0, v1, Landroid/graphics/Point;->y:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-direct {v3, v13, v14, v15, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 226
    .local v3, "clipBounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/osmdroid/views/overlay/PathOverlay;->mPath:Landroid/graphics/Path;

    invoke-virtual {v13}, Landroid/graphics/Path;->rewind()V

    .line 227
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/osmdroid/views/overlay/PathOverlay;->mPoints:Ljava/util/ArrayList;

    add-int/lit8 v14, v11, -0x1

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Point;

    .line 228
    .local v6, "projectedPoint0":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/osmdroid/views/overlay/PathOverlay;->mLineBounds:Landroid/graphics/Rect;

    iget v14, v6, Landroid/graphics/Point;->x:I

    iget v15, v6, Landroid/graphics/Point;->y:I

    iget v0, v6, Landroid/graphics/Point;->x:I

    move/from16 v16, v0

    iget v0, v6, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/Rect;->set(IIII)V

    .line 230
    add-int/lit8 v4, v11, -0x2

    .local v4, "i":I
    :goto_2
    if-ltz v4, :cond_6

    .line 232
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/osmdroid/views/overlay/PathOverlay;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Point;

    .line 233
    .local v7, "projectedPoint1":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/osmdroid/views/overlay/PathOverlay;->mLineBounds:Landroid/graphics/Rect;

    iget v14, v7, Landroid/graphics/Point;->x:I

    iget v15, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Rect;->union(II)V

    .line 235
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/osmdroid/views/overlay/PathOverlay;->mLineBounds:Landroid/graphics/Rect;

    invoke-static {v3, v13}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 237
    move-object v6, v7

    .line 238
    const/4 v9, 0x0

    .line 230
    :cond_3
    :goto_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 244
    :cond_4
    if-nez v9, :cond_5

    .line 245
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/osmdroid/views/overlay/PathOverlay;->mTempPoint1:Landroid/graphics/Point;

    invoke-virtual {v5, v6, v13}, Lorg/osmdroid/views/Projection;->toPixelsFromProjected(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v9

    .line 246
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/osmdroid/views/overlay/PathOverlay;->mPath:Landroid/graphics/Path;

    iget v14, v9, Landroid/graphics/Point;->x:I

    int-to-float v14, v14

    iget v15, v9, Landroid/graphics/Point;->y:I

    int-to-float v15, v15

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Path;->moveTo(FF)V

    .line 249
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/osmdroid/views/overlay/PathOverlay;->mTempPoint2:Landroid/graphics/Point;

    invoke-virtual {v5, v7, v13}, Lorg/osmdroid/views/Projection;->toPixelsFromProjected(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v10

    .line 252
    .local v10, "screenPoint1":Landroid/graphics/Point;
    iget v13, v10, Landroid/graphics/Point;->x:I

    iget v14, v9, Landroid/graphics/Point;->x:I

    sub-int/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    iget v14, v10, Landroid/graphics/Point;->y:I

    iget v15, v9, Landroid/graphics/Point;->y:I

    sub-int/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    add-int/2addr v13, v14

    const/4 v14, 0x1

    if-le v13, v14, :cond_3

    .line 256
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/osmdroid/views/overlay/PathOverlay;->mPath:Landroid/graphics/Path;

    iget v14, v10, Landroid/graphics/Point;->x:I

    int-to-float v14, v14

    iget v15, v10, Landroid/graphics/Point;->y:I

    int-to-float v15, v15

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 259
    move-object v6, v7

    .line 260
    iget v13, v10, Landroid/graphics/Point;->x:I

    iput v13, v9, Landroid/graphics/Point;->x:I

    .line 261
    iget v13, v10, Landroid/graphics/Point;->y:I

    iput v13, v9, Landroid/graphics/Point;->y:I

    .line 262
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/osmdroid/views/overlay/PathOverlay;->mLineBounds:Landroid/graphics/Rect;

    iget v14, v6, Landroid/graphics/Point;->x:I

    iget v15, v6, Landroid/graphics/Point;->y:I

    iget v0, v6, Landroid/graphics/Point;->x:I

    move/from16 v16, v0

    iget v0, v6, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3

    .line 265
    .end local v7    # "projectedPoint1":Landroid/graphics/Point;
    .end local v10    # "screenPoint1":Landroid/graphics/Point;
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/osmdroid/views/overlay/PathOverlay;->mPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/osmdroid/views/overlay/PathOverlay;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public getNumberOfPoints()I
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "a"    # I

    .prologue
    .line 90
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 91
    return-void
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 86
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    return-void
.end method

.method public setPaint(Landroid/graphics/Paint;)V
    .locals 2
    .param p1, "pPaint"    # Landroid/graphics/Paint;

    .prologue
    .line 151
    if-nez p1, :cond_0

    .line 152
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pPaint argument cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_0
    iput-object p1, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mPaint:Landroid/graphics/Paint;

    .line 155
    return-void
.end method
