.class public final Lcl/birdie/toolkit/GoogleProjection;
.super Ljava/lang/Object;
.source "GoogleProjection.java"


# static fields
.field static Bc:Ljava/util/Vector;

.field static Cc:Ljava/util/Vector;

.field static zc:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 34
    const/16 v0, 0x100

    .line 35
    .local v0, "c":I
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    sput-object v3, Lcl/birdie/toolkit/GoogleProjection;->Bc:Ljava/util/Vector;

    .line 36
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    sput-object v3, Lcl/birdie/toolkit/GoogleProjection;->Cc:Ljava/util/Vector;

    .line 37
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    sput-object v3, Lcl/birdie/toolkit/GoogleProjection;->zc:Ljava/util/Vector;

    .line 39
    const/4 v1, 0x0

    .local v1, "d":I
    :goto_0
    const/16 v3, 0x12

    if-le v1, v3, :cond_0

    .line 46
    return-void

    .line 40
    :cond_0
    div-int/lit8 v2, v0, 0x2

    .line 41
    .local v2, "e":I
    sget-object v3, Lcl/birdie/toolkit/GoogleProjection;->Bc:Ljava/util/Vector;

    int-to-double v4, v0

    const-wide v6, 0x4076800000000000L    # 360.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 42
    sget-object v3, Lcl/birdie/toolkit/GoogleProjection;->Cc:Ljava/util/Vector;

    int-to-double v4, v0

    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 43
    sget-object v3, Lcl/birdie/toolkit/GoogleProjection;->zc:Ljava/util/Vector;

    new-instance v4, Lcl/birdie/toolkit/PixelPair;

    invoke-direct {v4, v2, v2}, Lcl/birdie/toolkit/PixelPair;-><init>(II)V

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 44
    mul-int/lit8 v0, v0, 0x2

    .line 39
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static fromLLtoPixel(Lcl/birdie/toolkit/LatLng;I)Lcl/birdie/toolkit/PixelPair;
    .locals 14
    .param p0, "ll"    # Lcl/birdie/toolkit/LatLng;
    .param p1, "zoom"    # I

    .prologue
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    .line 64
    sget-object v5, Lcl/birdie/toolkit/GoogleProjection;->zc:Ljava/util/Vector;

    invoke-virtual {v5, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/birdie/toolkit/PixelPair;

    .line 65
    .local v0, "d":Lcl/birdie/toolkit/PixelPair;
    iget v5, v0, Lcl/birdie/toolkit/PixelPair;->x:I

    int-to-double v6, v5

    iget-wide v8, p0, Lcl/birdie/toolkit/LatLng;->lng:D

    sget-object v5, Lcl/birdie/toolkit/GoogleProjection;->Bc:Ljava/util/Vector;

    invoke-virtual {v5, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double v5, v6, v8

    invoke-static {v5, v6}, Lcl/birdie/toolkit/GoogleProjection;->round(D)D

    move-result-wide v5

    double-to-int v1, v5

    .line 66
    .local v1, "e":I
    const-wide v5, 0x3f91df46a2529d39L    # 0.017453292519943295

    iget-wide v7, p0, Lcl/birdie/toolkit/LatLng;->lat:D

    mul-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    const-wide v7, -0x401000d1b71758e2L    # -0.9999

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(DD)D

    const-wide v7, 0x3fefff2e48e8a71eL    # 0.9999

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 67
    .local v2, "f":D
    iget v5, v0, Lcl/birdie/toolkit/PixelPair;->y:I

    int-to-double v6, v5

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    add-double v10, v12, v2

    sub-double/2addr v12, v2

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Lcl/birdie/toolkit/Float11;->log(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    sget-object v5, Lcl/birdie/toolkit/GoogleProjection;->Cc:Ljava/util/Vector;

    invoke-virtual {v5, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    neg-double v10, v10

    mul-double/2addr v8, v10

    add-double v5, v6, v8

    invoke-static {v5, v6}, Lcl/birdie/toolkit/GoogleProjection;->round(D)D

    move-result-wide v5

    double-to-int v4, v5

    .line 68
    .local v4, "g":I
    new-instance v5, Lcl/birdie/toolkit/PixelPair;

    invoke-direct {v5, v1, v4}, Lcl/birdie/toolkit/PixelPair;-><init>(II)V

    return-object v5
.end method

.method public static fromPixelToLL(Lcl/birdie/toolkit/PixelPair;I)Lcl/birdie/toolkit/LatLng;
    .locals 28
    .param p0, "px"    # Lcl/birdie/toolkit/PixelPair;
    .param p1, "zoom"    # I

    .prologue
    .line 72
    sget-object v8, Lcl/birdie/toolkit/GoogleProjection;->zc:Ljava/util/Vector;

    move/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcl/birdie/toolkit/PixelPair;

    .line 73
    .local v1, "e":Lcl/birdie/toolkit/PixelPair;
    move-object/from16 v0, p0

    iget v8, v0, Lcl/birdie/toolkit/PixelPair;->x:I

    iget v9, v1, Lcl/birdie/toolkit/PixelPair;->x:I

    sub-int/2addr v8, v9

    int-to-double v9, v8

    sget-object v8, Lcl/birdie/toolkit/GoogleProjection;->Bc:Ljava/util/Vector;

    move/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    div-double v2, v9, v11

    .line 74
    .local v2, "f":D
    move-object/from16 v0, p0

    iget v8, v0, Lcl/birdie/toolkit/PixelPair;->y:I

    iget v9, v1, Lcl/birdie/toolkit/PixelPair;->y:I

    sub-int/2addr v8, v9

    int-to-double v9, v8

    sget-object v8, Lcl/birdie/toolkit/GoogleProjection;->Cc:Ljava/util/Vector;

    move/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    neg-double v11, v11

    div-double v4, v9, v11

    .line 75
    .local v4, "g":D
    const-wide v18, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    const-wide/16 v8, 0x0

    cmpl-double v8, v4, v8

    if-nez v8, :cond_3

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    .end local v4    # "g":D
    :cond_0
    :goto_0
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    cmpg-double v13, v11, v13

    if-gez v13, :cond_a

    neg-double v11, v11

    const/4 v9, 0x1

    move v13, v9

    :goto_1
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpl-double v9, v11, v14

    if-lez v9, :cond_9

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    div-double v11, v8, v11

    const/4 v8, 0x1

    move/from16 v24, v8

    move-wide v8, v11

    move/from16 v11, v24

    :goto_2
    const-wide v14, 0x3fd0c152382d7365L    # 0.2617993877991494

    cmpl-double v12, v8, v14

    if-gtz v12, :cond_7

    mul-double v14, v8, v8

    const-wide v16, 0x3ff68a5e27d383a0L    # 1.4087812

    add-double v16, v16, v14

    const-wide v22, 0x3fe1e4737770fabfL    # 0.55913709

    div-double v16, v22, v16

    const-wide v22, 0x3fe34ca4838280f9L    # 0.60310579

    add-double v16, v16, v22

    const-wide v22, 0x3faa6be90740103bL    # 0.05160454

    mul-double v14, v14, v22

    sub-double v14, v16, v14

    mul-double/2addr v8, v14

    :goto_3
    if-gtz v10, :cond_8

    if-eqz v11, :cond_1

    const-wide v10, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double v8, v10, v8

    :cond_1
    if-eqz v13, :cond_2

    neg-double v8, v8

    :cond_2
    mul-double v8, v8, v20

    const-wide v10, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v8, v10

    mul-double v6, v18, v8

    .line 76
    .local v6, "h":D
    new-instance v8, Lcl/birdie/toolkit/LatLng;

    invoke-direct {v8, v6, v7, v2, v3}, Lcl/birdie/toolkit/LatLng;-><init>(DD)V

    return-object v8

    .line 75
    .end local v6    # "h":D
    .restart local v4    # "g":D
    :cond_3
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    const-wide/16 v8, 0x0

    cmpg-double v8, v4, v8

    if-gez v8, :cond_5

    const/4 v8, 0x1

    move/from16 v17, v8

    :goto_4
    if-eqz v17, :cond_4

    neg-double v4, v4

    .end local v4    # "g":D
    :cond_4
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    div-double v10, v4, v8

    const-wide/16 v8, 0x2

    move-wide/from16 v24, v10

    move-wide/from16 v26, v12

    move-wide/from16 v11, v26

    move-wide/from16 v13, v24

    :goto_5
    const-wide/16 v15, 0x32

    cmp-long v10, v8, v15

    if-ltz v10, :cond_6

    if-eqz v17, :cond_0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    div-double v11, v8, v11

    goto/16 :goto_0

    .restart local v4    # "g":D
    :cond_5
    const/4 v8, 0x0

    move/from16 v17, v8

    goto :goto_4

    .end local v4    # "g":D
    :cond_6
    add-double v15, v11, v13

    mul-double v10, v13, v4

    long-to-double v12, v8

    div-double/2addr v10, v12

    const-wide/16 v12, 0x1

    add-long/2addr v8, v12

    move-wide v13, v10

    move-wide v11, v15

    goto :goto_5

    :cond_7
    add-int/lit8 v10, v10, 0x1

    const-wide v14, 0x3ffbb67ae8584caaL    # 1.7320508075688772

    add-double/2addr v14, v8

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    div-double v14, v16, v14

    const-wide v16, 0x3ffbb67ae8584caaL    # 1.7320508075688772

    mul-double v8, v8, v16

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    sub-double v8, v8, v16

    mul-double/2addr v8, v14

    goto/16 :goto_2

    :cond_8
    const-wide v14, 0x3fe0c152382d7365L    # 0.5235987755982988

    add-double/2addr v8, v14

    add-int/lit8 v10, v10, -0x1

    goto :goto_3

    :cond_9
    move/from16 v24, v8

    move-wide v8, v11

    move/from16 v11, v24

    goto/16 :goto_2

    :cond_a
    move v13, v9

    goto/16 :goto_1
.end method

.method private static round(D)D
    .locals 6
    .param p0, "x"    # D

    .prologue
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 14
    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-lez v0, :cond_1

    .line 15
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    cmpg-double v0, v0, v4

    if-gez v0, :cond_0

    .line 16
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    .line 23
    :goto_0
    return-wide v0

    .line 18
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    goto :goto_0

    .line 20
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    cmpg-double v0, v0, v4

    if-gtz v0, :cond_2

    .line 21
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    goto :goto_0

    .line 23
    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    goto :goto_0
.end method
