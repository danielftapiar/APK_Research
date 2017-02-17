.class public final Lorg/osmdroid/util/GeometryMath;
.super Ljava/lang/Object;
.source "GeometryMath.java"


# direct methods
.method private static Max4(DDDD)D
    .locals 4
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "c"    # D
    .param p6, "d"    # D

    .prologue
    .line 61
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {p4, p5, p6, p7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private static Min4(DDDD)D
    .locals 4
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "c"    # D
    .param p6, "d"    # D

    .prologue
    .line 57
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-static {p4, p5, p6, p7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static final getBoundingBoxForRotatatedRectangle(Landroid/graphics/Rect;IIFLandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 48
    .param p0, "rect"    # Landroid/graphics/Rect;
    .param p1, "centerX"    # I
    .param p2, "centerY"    # I
    .param p3, "angle"    # F
    .param p4, "reuse"    # Landroid/graphics/Rect;

    .prologue
    .line 28
    if-nez p4, :cond_0

    .line 29
    new-instance p4, Landroid/graphics/Rect;

    .end local p4    # "reuse":Landroid/graphics/Rect;
    invoke-direct/range {p4 .. p4}, Landroid/graphics/Rect;-><init>()V

    .line 31
    .restart local p4    # "reuse":Landroid/graphics/Rect;
    :cond_0
    move/from16 v0, p3

    float-to-double v0, v0

    move-wide/from16 v43, v0

    const-wide v45, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double v41, v43, v45

    .line 32
    .local v41, "theta":D
    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->sin(D)D

    move-result-wide v39

    .line 33
    .local v39, "sinTheta":D
    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->cos(D)D

    move-result-wide v21

    .line 34
    .local v21, "cosTheta":D
    move-object/from16 v0, p0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v43, v0

    sub-int v43, v43, p1

    move/from16 v0, v43

    int-to-double v0, v0

    move-wide/from16 v23, v0

    .line 35
    .local v23, "dx1":D
    move-object/from16 v0, p0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v43, v0

    sub-int v43, v43, p2

    move/from16 v0, v43

    int-to-double v0, v0

    move-wide/from16 v31, v0

    .line 36
    .local v31, "dy1":D
    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v43, v0

    mul-double v45, v23, v21

    sub-double v43, v43, v45

    mul-double v45, v31, v39

    add-double v5, v43, v45

    .line 37
    .local v5, "newX1":D
    move/from16 v0, p2

    int-to-double v0, v0

    move-wide/from16 v43, v0

    mul-double v45, v23, v39

    sub-double v43, v43, v45

    mul-double v45, v31, v21

    sub-double v13, v43, v45

    .line 38
    .local v13, "newY1":D
    move-object/from16 v0, p0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v43, v0

    sub-int v43, v43, p1

    move/from16 v0, v43

    int-to-double v0, v0

    move-wide/from16 v25, v0

    .line 39
    .local v25, "dx2":D
    move-object/from16 v0, p0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v43, v0

    sub-int v43, v43, p2

    move/from16 v0, v43

    int-to-double v0, v0

    move-wide/from16 v33, v0

    .line 40
    .local v33, "dy2":D
    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v43, v0

    mul-double v45, v25, v21

    sub-double v43, v43, v45

    mul-double v45, v33, v39

    add-double v7, v43, v45

    .line 41
    .local v7, "newX2":D
    move/from16 v0, p2

    int-to-double v0, v0

    move-wide/from16 v43, v0

    mul-double v45, v25, v39

    sub-double v43, v43, v45

    mul-double v45, v33, v21

    sub-double v15, v43, v45

    .line 42
    .local v15, "newY2":D
    move-object/from16 v0, p0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v43, v0

    sub-int v43, v43, p1

    move/from16 v0, v43

    int-to-double v0, v0

    move-wide/from16 v27, v0

    .line 43
    .local v27, "dx3":D
    move-object/from16 v0, p0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v43, v0

    sub-int v43, v43, p2

    move/from16 v0, v43

    int-to-double v0, v0

    move-wide/from16 v35, v0

    .line 44
    .local v35, "dy3":D
    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v43, v0

    mul-double v45, v27, v21

    sub-double v43, v43, v45

    mul-double v45, v35, v39

    add-double v9, v43, v45

    .line 45
    .local v9, "newX3":D
    move/from16 v0, p2

    int-to-double v0, v0

    move-wide/from16 v43, v0

    mul-double v45, v27, v39

    sub-double v43, v43, v45

    mul-double v45, v35, v21

    sub-double v17, v43, v45

    .line 46
    .local v17, "newY3":D
    move-object/from16 v0, p0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v43, v0

    sub-int v43, v43, p1

    move/from16 v0, v43

    int-to-double v0, v0

    move-wide/from16 v29, v0

    .line 47
    .local v29, "dx4":D
    move-object/from16 v0, p0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v43, v0

    sub-int v43, v43, p2

    move/from16 v0, v43

    int-to-double v0, v0

    move-wide/from16 v37, v0

    .line 48
    .local v37, "dy4":D
    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v43, v0

    mul-double v45, v29, v21

    sub-double v43, v43, v45

    mul-double v45, v37, v39

    add-double v11, v43, v45

    .line 49
    .local v11, "newX4":D
    move/from16 v0, p2

    int-to-double v0, v0

    move-wide/from16 v43, v0

    mul-double v45, v29, v39

    sub-double v43, v43, v45

    mul-double v45, v37, v21

    sub-double v19, v43, v45

    .line 50
    .local v19, "newY4":D
    invoke-static/range {v5 .. v12}, Lorg/osmdroid/util/GeometryMath;->Min4(DDDD)D

    move-result-wide v43

    move-wide/from16 v0, v43

    double-to-int v0, v0

    move/from16 v43, v0

    invoke-static/range {v13 .. v20}, Lorg/osmdroid/util/GeometryMath;->Min4(DDDD)D

    move-result-wide v44

    move-wide/from16 v0, v44

    double-to-int v0, v0

    move/from16 v44, v0

    invoke-static/range {v5 .. v12}, Lorg/osmdroid/util/GeometryMath;->Max4(DDDD)D

    move-result-wide v45

    move-wide/from16 v0, v45

    double-to-int v0, v0

    move/from16 v45, v0

    invoke-static/range {v13 .. v20}, Lorg/osmdroid/util/GeometryMath;->Max4(DDDD)D

    move-result-wide v46

    move-wide/from16 v0, v46

    double-to-int v0, v0

    move/from16 v46, v0

    move-object/from16 v0, p4

    move/from16 v1, v43

    move/from16 v2, v44

    move/from16 v3, v45

    move/from16 v4, v46

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 53
    return-object p4
.end method
