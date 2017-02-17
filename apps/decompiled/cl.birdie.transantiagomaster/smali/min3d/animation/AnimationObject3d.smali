.class public final Lmin3d/animation/AnimationObject3d;
.super Lmin3d/core/Object3d;
.source "AnimationObject3d.java"


# instance fields
.field private currentFrameIndex:I

.field private currentFrameName:Ljava/lang/String;

.field private currentTime:J

.field private fps:F

.field private frames:[Lmin3d/animation/KeyFrame;

.field private interpolation:F

.field private isPlaying:Z

.field private loop:Z

.field private loopStartIndex:I

.field private numFrames:I

.field private startTime:J

.field private updateVertices:Z


# virtual methods
.method public final update()V
    .locals 17

    .prologue
    .line 89
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lmin3d/animation/AnimationObject3d;->isPlaying:Z

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lmin3d/animation/AnimationObject3d;->updateVertices:Z

    if-nez v11, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    move-object/from16 v0, p0

    iput-wide v11, v0, Lmin3d/animation/AnimationObject3d;->currentTime:J

    .line 92
    move-object/from16 v0, p0

    iget-object v11, v0, Lmin3d/animation/AnimationObject3d;->frames:[Lmin3d/animation/KeyFrame;

    move-object/from16 v0, p0

    iget v12, v0, Lmin3d/animation/AnimationObject3d;->currentFrameIndex:I

    aget-object v1, v11, v12

    .line 93
    .local v1, "currentFrame":Lmin3d/animation/KeyFrame;
    move-object/from16 v0, p0

    iget-object v11, v0, Lmin3d/animation/AnimationObject3d;->frames:[Lmin3d/animation/KeyFrame;

    move-object/from16 v0, p0

    iget v12, v0, Lmin3d/animation/AnimationObject3d;->currentFrameIndex:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iget v13, v0, Lmin3d/animation/AnimationObject3d;->numFrames:I

    rem-int/2addr v12, v13

    aget-object v7, v11, v12

    .line 95
    .local v7, "nextFrame":Lmin3d/animation/KeyFrame;
    move-object/from16 v0, p0

    iget-object v11, v0, Lmin3d/animation/AnimationObject3d;->currentFrameName:Ljava/lang/String;

    if-eqz v11, :cond_3

    move-object/from16 v0, p0

    iget-object v11, v0, Lmin3d/animation/AnimationObject3d;->currentFrameName:Ljava/lang/String;

    invoke-virtual {v1}, Lmin3d/animation/KeyFrame;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 97
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lmin3d/animation/AnimationObject3d;->loop:Z

    if-nez v11, :cond_2

    .line 98
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lmin3d/animation/AnimationObject3d;->isPlaying:Z

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lmin3d/animation/AnimationObject3d;->currentFrameIndex:I

    goto :goto_0

    .line 100
    :cond_2
    move-object/from16 v0, p0

    iget v11, v0, Lmin3d/animation/AnimationObject3d;->loopStartIndex:I

    move-object/from16 v0, p0

    iput v11, v0, Lmin3d/animation/AnimationObject3d;->currentFrameIndex:I

    goto :goto_0

    .line 104
    :cond_3
    invoke-virtual {v1}, Lmin3d/animation/KeyFrame;->getVertices()[F

    move-result-object v3

    .line 105
    .local v3, "currentVerts":[F
    invoke-virtual {v7}, Lmin3d/animation/KeyFrame;->getVertices()[F

    move-result-object v9

    .line 106
    .local v9, "nextVerts":[F
    invoke-virtual {v1}, Lmin3d/animation/KeyFrame;->getNormals()[F

    move-result-object v2

    .line 107
    .local v2, "currentNormals":[F
    invoke-virtual {v7}, Lmin3d/animation/KeyFrame;->getNormals()[F

    move-result-object v8

    .line 108
    .local v8, "nextNormals":[F
    array-length v10, v3

    .line 110
    .local v10, "numVerts":I
    new-array v6, v10, [F

    .line 111
    .local v6, "interPolatedVerts":[F
    new-array v5, v10, [F

    .line 113
    .local v5, "interPolatedNormals":[F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-lt v4, v10, :cond_5

    .line 122
    move-object/from16 v0, p0

    iget v11, v0, Lmin3d/animation/AnimationObject3d;->interpolation:F

    move-object/from16 v0, p0

    iget v12, v0, Lmin3d/animation/AnimationObject3d;->fps:F

    move-object/from16 v0, p0

    iget-wide v13, v0, Lmin3d/animation/AnimationObject3d;->currentTime:J

    move-object/from16 v0, p0

    iget-wide v15, v0, Lmin3d/animation/AnimationObject3d;->startTime:J

    sub-long/2addr v13, v15

    long-to-float v13, v13

    mul-float/2addr v12, v13

    const/high16 v13, 0x447a0000    # 1000.0f

    div-float/2addr v12, v13

    add-float/2addr v11, v12

    move-object/from16 v0, p0

    iput v11, v0, Lmin3d/animation/AnimationObject3d;->interpolation:F

    .line 124
    invoke-virtual/range {p0 .. p0}, Lmin3d/animation/AnimationObject3d;->vertices()Lmin3d/core/Vertices;

    move-result-object v11

    invoke-virtual {v11, v5}, Lmin3d/core/Vertices;->overwriteNormals([F)V

    .line 125
    invoke-virtual/range {p0 .. p0}, Lmin3d/animation/AnimationObject3d;->vertices()Lmin3d/core/Vertices;

    move-result-object v11

    invoke-virtual {v11, v6}, Lmin3d/core/Vertices;->overwriteVerts([F)V

    .line 127
    move-object/from16 v0, p0

    iget v11, v0, Lmin3d/animation/AnimationObject3d;->interpolation:F

    const/high16 v12, 0x3f800000    # 1.0f

    cmpl-float v11, v11, v12

    if-lez v11, :cond_4

    .line 128
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lmin3d/animation/AnimationObject3d;->interpolation:F

    .line 129
    move-object/from16 v0, p0

    iget v11, v0, Lmin3d/animation/AnimationObject3d;->currentFrameIndex:I

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    iput v11, v0, Lmin3d/animation/AnimationObject3d;->currentFrameIndex:I

    .line 131
    move-object/from16 v0, p0

    iget v11, v0, Lmin3d/animation/AnimationObject3d;->currentFrameIndex:I

    move-object/from16 v0, p0

    iget v12, v0, Lmin3d/animation/AnimationObject3d;->numFrames:I

    if-lt v11, v12, :cond_4

    .line 132
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lmin3d/animation/AnimationObject3d;->currentFrameIndex:I

    .line 135
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    move-object/from16 v0, p0

    iput-wide v11, v0, Lmin3d/animation/AnimationObject3d;->startTime:J

    goto/16 :goto_0

    .line 114
    :cond_5
    aget v11, v3, v4

    move-object/from16 v0, p0

    iget v12, v0, Lmin3d/animation/AnimationObject3d;->interpolation:F

    aget v13, v9, v4

    aget v14, v3, v4

    sub-float/2addr v13, v14

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    aput v11, v6, v4

    .line 115
    add-int/lit8 v11, v4, 0x1

    add-int/lit8 v12, v4, 0x1

    aget v12, v3, v12

    move-object/from16 v0, p0

    iget v13, v0, Lmin3d/animation/AnimationObject3d;->interpolation:F

    add-int/lit8 v14, v4, 0x1

    aget v14, v9, v14

    add-int/lit8 v15, v4, 0x1

    aget v15, v3, v15

    sub-float/2addr v14, v15

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    aput v12, v6, v11

    .line 116
    add-int/lit8 v11, v4, 0x2

    add-int/lit8 v12, v4, 0x2

    aget v12, v3, v12

    move-object/from16 v0, p0

    iget v13, v0, Lmin3d/animation/AnimationObject3d;->interpolation:F

    add-int/lit8 v14, v4, 0x2

    aget v14, v9, v14

    add-int/lit8 v15, v4, 0x2

    aget v15, v3, v15

    sub-float/2addr v14, v15

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    aput v12, v6, v11

    .line 117
    aget v11, v2, v4

    move-object/from16 v0, p0

    iget v12, v0, Lmin3d/animation/AnimationObject3d;->interpolation:F

    aget v13, v8, v4

    aget v14, v2, v4

    sub-float/2addr v13, v14

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    aput v11, v5, v4

    .line 118
    add-int/lit8 v11, v4, 0x1

    add-int/lit8 v12, v4, 0x1

    aget v12, v2, v12

    move-object/from16 v0, p0

    iget v13, v0, Lmin3d/animation/AnimationObject3d;->interpolation:F

    add-int/lit8 v14, v4, 0x1

    aget v14, v8, v14

    add-int/lit8 v15, v4, 0x1

    aget v15, v2, v15

    sub-float/2addr v14, v15

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    aput v12, v5, v11

    .line 119
    add-int/lit8 v11, v4, 0x2

    add-int/lit8 v12, v4, 0x2

    aget v12, v2, v12

    move-object/from16 v0, p0

    iget v13, v0, Lmin3d/animation/AnimationObject3d;->interpolation:F

    add-int/lit8 v14, v4, 0x2

    aget v14, v8, v14

    add-int/lit8 v15, v4, 0x2

    aget v15, v2, v15

    sub-float/2addr v14, v15

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    aput v12, v5, v11

    .line 113
    add-int/lit8 v4, v4, 0x3

    goto/16 :goto_1
.end method
