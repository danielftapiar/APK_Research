.class public final Lmin3d/animation/KeyFrame;
.super Ljava/lang/Object;
.source "KeyFrame.java"


# instance fields
.field private indices:[I

.field private name:Ljava/lang/String;

.field private normals:[F

.field private vertices:[F


# direct methods
.method public constructor <init>(Ljava/lang/String;[F)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "vertices"    # [F

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lmin3d/animation/KeyFrame;->name:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lmin3d/animation/KeyFrame;->vertices:[F

    .line 16
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;[F[F)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "vertices"    # [F
    .param p3, "normals"    # [F

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lmin3d/animation/KeyFrame;-><init>(Ljava/lang/String;[F)V

    .line 21
    iput-object p3, p0, Lmin3d/animation/KeyFrame;->normals:[F

    .line 22
    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    new-instance v2, Lmin3d/animation/KeyFrame;

    iget-object v3, p0, Lmin3d/animation/KeyFrame;->name:Ljava/lang/String;

    iget-object v0, p0, Lmin3d/animation/KeyFrame;->vertices:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iget-object v1, p0, Lmin3d/animation/KeyFrame;->normals:[F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    invoke-direct {v2, v3, v0, v1}, Lmin3d/animation/KeyFrame;-><init>(Ljava/lang/String;[F[F)V

    return-object v2
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lmin3d/animation/KeyFrame;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getNormals()[F
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lmin3d/animation/KeyFrame;->normals:[F

    return-object v0
.end method

.method public final getVertices()[F
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lmin3d/animation/KeyFrame;->vertices:[F

    return-object v0
.end method

.method public final setIndices([I)V
    .locals 19
    .param p1, "indices"    # [I

    .prologue
    .line 41
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lmin3d/animation/KeyFrame;->indices:[I

    .line 42
    move-object/from16 v0, p0

    iget-object v2, v0, Lmin3d/animation/KeyFrame;->vertices:[F

    .line 43
    .local v2, "compressed":[F
    move-object/from16 v0, p1

    array-length v12, v0

    mul-int/lit8 v12, v12, 0x3

    new-array v12, v12, [F

    move-object/from16 v0, p0

    iput-object v12, v0, Lmin3d/animation/KeyFrame;->vertices:[F

    .line 44
    move-object/from16 v0, p1

    array-length v5, v0

    .line 45
    .local v5, "len":I
    const/4 v10, 0x0

    .line 46
    .local v10, "vi":I
    const/4 v4, 0x0

    .line 47
    .local v4, "ii":I
    const/4 v7, 0x0

    .line 49
    .local v7, "normalIndex":I
    const/4 v3, 0x0

    .local v3, "i":I
    move v11, v10

    .end local v10    # "vi":I
    .local v11, "vi":I
    :goto_0
    if-lt v3, v5, :cond_0

    .line 57
    move-object/from16 v0, p0

    iget-object v12, v0, Lmin3d/animation/KeyFrame;->vertices:[F

    array-length v12, v12

    new-array v12, v12, [F

    move-object/from16 v0, p0

    iput-object v12, v0, Lmin3d/animation/KeyFrame;->normals:[F

    .line 58
    move-object/from16 v0, p0

    iget-object v12, v0, Lmin3d/animation/KeyFrame;->vertices:[F

    array-length v9, v12

    .line 60
    .local v9, "vertLen":I
    const/4 v3, 0x0

    move v8, v7

    .end local v7    # "normalIndex":I
    .local v8, "normalIndex":I
    :goto_1
    if-lt v3, v9, :cond_1

    .line 77
    return-void

    .line 51
    .end local v8    # "normalIndex":I
    .end local v9    # "vertLen":I
    .restart local v7    # "normalIndex":I
    :cond_0
    aget v12, p1, v3

    mul-int/lit8 v4, v12, 0x3

    .line 52
    move-object/from16 v0, p0

    iget-object v12, v0, Lmin3d/animation/KeyFrame;->vertices:[F

    add-int/lit8 v10, v11, 0x1

    .end local v11    # "vi":I
    .restart local v10    # "vi":I
    aget v13, v2, v4

    aput v13, v12, v11

    .line 53
    move-object/from16 v0, p0

    iget-object v12, v0, Lmin3d/animation/KeyFrame;->vertices:[F

    add-int/lit8 v11, v10, 0x1

    .end local v10    # "vi":I
    .restart local v11    # "vi":I
    add-int/lit8 v13, v4, 0x1

    aget v13, v2, v13

    aput v13, v12, v10

    .line 54
    move-object/from16 v0, p0

    iget-object v12, v0, Lmin3d/animation/KeyFrame;->vertices:[F

    add-int/lit8 v10, v11, 0x1

    .end local v11    # "vi":I
    .restart local v10    # "vi":I
    add-int/lit8 v13, v4, 0x2

    aget v13, v2, v13

    aput v13, v12, v11

    .line 49
    add-int/lit8 v3, v3, 0x1

    move v11, v10

    .end local v10    # "vi":I
    .restart local v11    # "vi":I
    goto :goto_0

    .line 62
    .end local v7    # "normalIndex":I
    .restart local v8    # "normalIndex":I
    .restart local v9    # "vertLen":I
    :cond_1
    new-instance v12, Lmin3d/vos/Number3d;

    move-object/from16 v0, p0

    iget-object v13, v0, Lmin3d/animation/KeyFrame;->vertices:[F

    aget v13, v13, v3

    move-object/from16 v0, p0

    iget-object v14, v0, Lmin3d/animation/KeyFrame;->vertices:[F

    add-int/lit8 v15, v3, 0x1

    aget v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lmin3d/animation/KeyFrame;->vertices:[F

    add-int/lit8 v16, v3, 0x2

    aget v15, v15, v16

    invoke-direct {v12, v13, v14, v15}, Lmin3d/vos/Number3d;-><init>(FFF)V

    .line 64
    new-instance v13, Lmin3d/vos/Number3d;

    move-object/from16 v0, p0

    iget-object v14, v0, Lmin3d/animation/KeyFrame;->vertices:[F

    add-int/lit8 v15, v3, 0x3

    aget v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lmin3d/animation/KeyFrame;->vertices:[F

    add-int/lit8 v16, v3, 0x4

    aget v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lmin3d/animation/KeyFrame;->vertices:[F

    move-object/from16 v16, v0

    add-int/lit8 v17, v3, 0x5

    aget v16, v16, v17

    invoke-direct/range {v13 .. v16}, Lmin3d/vos/Number3d;-><init>(FFF)V

    .line 65
    new-instance v14, Lmin3d/vos/Number3d;

    move-object/from16 v0, p0

    iget-object v15, v0, Lmin3d/animation/KeyFrame;->vertices:[F

    add-int/lit8 v16, v3, 0x6

    aget v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lmin3d/animation/KeyFrame;->vertices:[F

    move-object/from16 v16, v0

    add-int/lit8 v17, v3, 0x7

    aget v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lmin3d/animation/KeyFrame;->vertices:[F

    move-object/from16 v17, v0

    add-int/lit8 v18, v3, 0x8

    aget v17, v17, v18

    invoke-direct/range {v14 .. v17}, Lmin3d/vos/Number3d;-><init>(FFF)V

    .line 62
    invoke-static {v13, v12}, Lmin3d/vos/Number3d;->subtract(Lmin3d/vos/Number3d;Lmin3d/vos/Number3d;)Lmin3d/vos/Number3d;

    move-result-object v13

    invoke-static {v14, v12}, Lmin3d/vos/Number3d;->subtract(Lmin3d/vos/Number3d;Lmin3d/vos/Number3d;)Lmin3d/vos/Number3d;

    move-result-object v12

    new-instance v6, Lmin3d/vos/Number3d;

    invoke-direct {v6}, Lmin3d/vos/Number3d;-><init>()V

    iget v14, v13, Lmin3d/vos/Number3d;->y:F

    iget v15, v12, Lmin3d/vos/Number3d;->z:F

    mul-float/2addr v14, v15

    iget v15, v13, Lmin3d/vos/Number3d;->z:F

    iget v0, v12, Lmin3d/vos/Number3d;->y:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    sub-float/2addr v14, v15

    iput v14, v6, Lmin3d/vos/Number3d;->x:F

    iget v14, v12, Lmin3d/vos/Number3d;->z:F

    iget v15, v13, Lmin3d/vos/Number3d;->x:F

    mul-float/2addr v14, v15

    iget v15, v12, Lmin3d/vos/Number3d;->x:F

    iget v0, v13, Lmin3d/vos/Number3d;->z:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    sub-float/2addr v14, v15

    neg-float v14, v14

    iput v14, v6, Lmin3d/vos/Number3d;->y:F

    iget v14, v13, Lmin3d/vos/Number3d;->x:F

    iget v15, v12, Lmin3d/vos/Number3d;->y:F

    mul-float/2addr v14, v15

    iget v13, v13, Lmin3d/vos/Number3d;->y:F

    iget v12, v12, Lmin3d/vos/Number3d;->x:F

    mul-float/2addr v12, v13

    sub-float v12, v14, v12

    iput v12, v6, Lmin3d/vos/Number3d;->z:F

    iget v12, v6, Lmin3d/vos/Number3d;->x:F

    iget v13, v6, Lmin3d/vos/Number3d;->x:F

    mul-float/2addr v12, v13

    iget v13, v6, Lmin3d/vos/Number3d;->y:F

    iget v14, v6, Lmin3d/vos/Number3d;->y:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    iget v13, v6, Lmin3d/vos/Number3d;->z:F

    iget v14, v6, Lmin3d/vos/Number3d;->z:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    iget v14, v6, Lmin3d/vos/Number3d;->x:F

    float-to-double v14, v14

    div-double/2addr v14, v12

    double-to-float v14, v14

    iput v14, v6, Lmin3d/vos/Number3d;->x:F

    iget v14, v6, Lmin3d/vos/Number3d;->y:F

    float-to-double v14, v14

    div-double/2addr v14, v12

    double-to-float v14, v14

    iput v14, v6, Lmin3d/vos/Number3d;->y:F

    iget v14, v6, Lmin3d/vos/Number3d;->z:F

    float-to-double v14, v14

    div-double v12, v14, v12

    double-to-float v12, v12

    iput v12, v6, Lmin3d/vos/Number3d;->z:F

    .line 67
    .local v6, "normal":Lmin3d/vos/Number3d;
    move-object/from16 v0, p0

    iget-object v12, v0, Lmin3d/animation/KeyFrame;->normals:[F

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "normalIndex":I
    .restart local v7    # "normalIndex":I
    iget v13, v6, Lmin3d/vos/Number3d;->x:F

    aput v13, v12, v8

    .line 68
    move-object/from16 v0, p0

    iget-object v12, v0, Lmin3d/animation/KeyFrame;->normals:[F

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "normalIndex":I
    .restart local v8    # "normalIndex":I
    iget v13, v6, Lmin3d/vos/Number3d;->y:F

    aput v13, v12, v7

    .line 69
    move-object/from16 v0, p0

    iget-object v12, v0, Lmin3d/animation/KeyFrame;->normals:[F

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "normalIndex":I
    .restart local v7    # "normalIndex":I
    iget v13, v6, Lmin3d/vos/Number3d;->z:F

    aput v13, v12, v8

    .line 70
    move-object/from16 v0, p0

    iget-object v12, v0, Lmin3d/animation/KeyFrame;->normals:[F

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "normalIndex":I
    .restart local v8    # "normalIndex":I
    iget v13, v6, Lmin3d/vos/Number3d;->x:F

    aput v13, v12, v7

    .line 71
    move-object/from16 v0, p0

    iget-object v12, v0, Lmin3d/animation/KeyFrame;->normals:[F

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "normalIndex":I
    .restart local v7    # "normalIndex":I
    iget v13, v6, Lmin3d/vos/Number3d;->y:F

    aput v13, v12, v8

    .line 72
    move-object/from16 v0, p0

    iget-object v12, v0, Lmin3d/animation/KeyFrame;->normals:[F

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "normalIndex":I
    .restart local v8    # "normalIndex":I
    iget v13, v6, Lmin3d/vos/Number3d;->z:F

    aput v13, v12, v7

    .line 73
    move-object/from16 v0, p0

    iget-object v12, v0, Lmin3d/animation/KeyFrame;->normals:[F

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "normalIndex":I
    .restart local v7    # "normalIndex":I
    iget v13, v6, Lmin3d/vos/Number3d;->x:F

    aput v13, v12, v8

    .line 74
    move-object/from16 v0, p0

    iget-object v12, v0, Lmin3d/animation/KeyFrame;->normals:[F

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "normalIndex":I
    .restart local v8    # "normalIndex":I
    iget v13, v6, Lmin3d/vos/Number3d;->y:F

    aput v13, v12, v7

    .line 75
    move-object/from16 v0, p0

    iget-object v12, v0, Lmin3d/animation/KeyFrame;->normals:[F

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "normalIndex":I
    .restart local v7    # "normalIndex":I
    iget v13, v6, Lmin3d/vos/Number3d;->z:F

    aput v13, v12, v8

    .line 60
    add-int/lit8 v3, v3, 0x9

    move v8, v7

    .end local v7    # "normalIndex":I
    .restart local v8    # "normalIndex":I
    goto/16 :goto_1
.end method
