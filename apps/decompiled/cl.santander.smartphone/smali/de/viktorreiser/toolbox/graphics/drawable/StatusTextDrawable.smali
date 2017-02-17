.class public Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "StatusTextDrawable.java"


# instance fields
.field private mCornerRadius:F

.field private mFillPaint:Landroid/graphics/Paint;

.field private mFillPath:Landroid/graphics/Path;

.field private mSquare:Z

.field private mStrokePaint:Landroid/graphics/Paint;

.field private mStrokePath:Landroid/graphics/Path;

.field private mStrokeWidth:F

.field private mText:Ljava/lang/String;

.field private mTextHalfHeight:F

.field private mTextPadding:F

.field private mTextPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mSquare:Z

    .line 40
    const v0, 0x3d6147ae    # 0.055f

    iput v0, p0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mStrokeWidth:F

    .line 41
    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mCornerRadius:F

    .line 42
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mTextPadding:F

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mTextPaint:Landroid/graphics/Paint;

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mStrokePaint:Landroid/graphics/Paint;

    .line 46
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mFillPaint:Landroid/graphics/Paint;

    .line 48
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mStrokePath:Landroid/graphics/Path;

    .line 49
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mFillPath:Landroid/graphics/Path;

    .line 55
    iget-object v0, p0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 56
    iget-object v0, p0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mTextPaint:Landroid/graphics/Paint;

    const v1, -0x33000001    # -1.3421772E8f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    iget-object v0, p0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mFillPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x56000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    iget-object v0, p0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mStrokePaint:Landroid/graphics/Paint;

    const/high16 v1, -0x55010000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    return-void
.end method

.method private updateGeometry(ZZ)V
    .locals 38
    .param p1, "pathGeometry"    # Z
    .param p2, "textGeometry"    # Z

    .prologue
    .line 283
    invoke-virtual/range {p0 .. p0}, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 285
    .local v6, "bounds":Landroid/graphics/Rect;
    if-eqz p1, :cond_0

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mStrokePath:Landroid/graphics/Path;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/graphics/Path;->reset()V

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mFillPath:Landroid/graphics/Path;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/graphics/Path;->reset()V

    .line 290
    :cond_0
    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v34

    if-eqz v34, :cond_2

    .line 431
    :cond_1
    :goto_0
    return-void

    .line 294
    :cond_2
    iget v0, v6, Landroid/graphics/Rect;->right:I

    move/from16 v34, v0

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v24, v0

    .line 295
    .local v24, "r":F
    iget v0, v6, Landroid/graphics/Rect;->left:I

    move/from16 v34, v0

    move/from16 v0, v34

    int-to-float v12, v0

    .line 296
    .local v12, "l":F
    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v34, v0

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v29, v0

    .line 297
    .local v29, "t":F
    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    move/from16 v34, v0

    move/from16 v0, v34

    int-to-float v5, v0

    .line 299
    .local v5, "b":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mSquare:Z

    move/from16 v34, v0

    if-eqz v34, :cond_3

    .line 300
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v34

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v35

    move/from16 v0, v34

    move/from16 v1, v35

    if-le v0, v1, :cond_8

    .line 301
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    const/high16 v35, 0x40000000    # 2.0f

    div-float v34, v34, v35

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    const/high16 v36, 0x40000000    # 2.0f

    div-float v35, v35, v36

    sub-float v7, v34, v35

    .line 302
    .local v7, "diff":F
    add-float/2addr v12, v7

    .line 303
    sub-float v24, v24, v7

    .line 311
    .end local v7    # "diff":F
    :cond_3
    :goto_1
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v34

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v35

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->min(II)I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mStrokeWidth:F

    move/from16 v35, v0

    mul-float v28, v34, v35

    .line 312
    .local v28, "strokeWidth":F
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v34

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v35

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->min(II)I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mCornerRadius:F

    move/from16 v35, v0

    mul-float v21, v34, v35

    .line 313
    .local v21, "outerCornerWidth":F
    sub-float v9, v21, v28

    .line 314
    .local v9, "innerCornerWidth":F
    new-instance v23, Landroid/graphics/RectF;

    move-object/from16 v0, v23

    move/from16 v1, v29

    move/from16 v2, v24

    invoke-direct {v0, v12, v1, v2, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 315
    .local v23, "outerRect":Landroid/graphics/RectF;
    new-instance v11, Landroid/graphics/RectF;

    .line 316
    add-float v34, v12, v28

    add-float v35, v29, v28

    sub-float v36, v24, v28

    sub-float v37, v5, v28

    .line 315
    move/from16 v0, v34

    move/from16 v1, v35

    move/from16 v2, v36

    move/from16 v3, v37

    invoke-direct {v11, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 318
    .local v11, "innerRect":Landroid/graphics/RectF;
    if-eqz p1, :cond_6

    .line 319
    move-object/from16 v0, p0

    iget v0, v0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mCornerRadius:F

    move/from16 v34, v0

    const/16 v35, 0x0

    cmpg-float v34, v34, v35

    if-ltz v34, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mSquare:Z

    move/from16 v34, v0

    if-eqz v34, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mCornerRadius:F

    move/from16 v34, v0

    move/from16 v0, v34

    float-to-double v0, v0

    move-wide/from16 v34, v0

    const-wide v36, 0x3fdf5c28f5c28f5cL    # 0.49

    cmpl-double v34, v34, v36

    if-ltz v34, :cond_9

    .line 321
    :cond_4
    const/high16 v34, 0x3f800000    # 1.0f

    cmpl-float v34, v28, v34

    if-ltz v34, :cond_5

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mStrokePath:Landroid/graphics/Path;

    move-object/from16 v34, v0

    sget-object v35, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v34

    move-object/from16 v1, v23

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mStrokePath:Landroid/graphics/Path;

    move-object/from16 v34, v0

    sget-object v35, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v0, v11, v1}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 326
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mFillPath:Landroid/graphics/Path;

    move-object/from16 v34, v0

    sget-object v35, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v0, v11, v1}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 365
    :cond_6
    :goto_2
    if-nez p1, :cond_7

    if-eqz p2, :cond_1

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mText:Ljava/lang/String;

    move-object/from16 v34, v0

    if-eqz v34, :cond_1

    .line 367
    new-instance v30, Landroid/graphics/Rect;

    invoke-direct/range {v30 .. v30}, Landroid/graphics/Rect;-><init>()V

    .line 368
    .local v30, "tb":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mText:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->length()I

    move-result v31

    .line 372
    .local v31, "textLength":I
    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v17

    .line 373
    .local v17, "maxWidth":F
    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v16

    .line 374
    .local v16, "maxHeight":F
    move/from16 v0, v17

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v19

    .line 375
    .local v19, "minForPadding":F
    move-object/from16 v0, p0

    iget v0, v0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mTextPadding:F

    move/from16 v34, v0

    mul-float v34, v34, v19

    const/high16 v35, 0x40000000    # 2.0f

    mul-float v34, v34, v35

    sub-float v17, v17, v34

    .line 376
    move-object/from16 v0, p0

    iget v0, v0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mTextPadding:F

    move/from16 v34, v0

    mul-float v34, v34, v19

    const/high16 v35, 0x40000000    # 2.0f

    mul-float v34, v34, v35

    sub-float v16, v16, v34

    .line 379
    mul-float v34, v17, v17

    const/high16 v35, 0x40800000    # 4.0f

    div-float v14, v34, v35

    .line 380
    .local v14, "maxEllipseX":F
    mul-float v34, v16, v16

    const/high16 v35, 0x40800000    # 4.0f

    div-float v15, v34, v35

    .line 381
    .local v15, "maxEllipseY":F
    move-object/from16 v0, p0

    iget v0, v0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mTextPadding:F

    move/from16 v34, v0

    mul-float v34, v34, v19

    sub-float v9, v9, v34

    .line 386
    mul-float v26, v9, v9

    .line 389
    .local v26, "roundRectRadius":F
    const v13, 0x459c4000    # 5000.0f

    .line 390
    .local v13, "left":F
    const v18, 0x451c4000    # 2500.0f

    .line 391
    .local v18, "middle":F
    const/16 v25, 0x0

    .line 392
    .local v25, "right":F
    const/16 v27, 0x0

    .line 393
    .local v27, "runs":F
    const/4 v8, 0x0

    .line 395
    .local v8, "doesntFit":Z
    :goto_3
    const/high16 v34, 0x41700000    # 15.0f

    cmpg-float v34, v27, v34

    if-ltz v34, :cond_10

    .line 429
    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Math;->abs(I)I

    move-result v34

    div-int/lit8 v34, v34, 0x2

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mTextHalfHeight:F

    goto/16 :goto_0

    .line 304
    .end local v8    # "doesntFit":Z
    .end local v9    # "innerCornerWidth":F
    .end local v11    # "innerRect":Landroid/graphics/RectF;
    .end local v13    # "left":F
    .end local v14    # "maxEllipseX":F
    .end local v15    # "maxEllipseY":F
    .end local v16    # "maxHeight":F
    .end local v17    # "maxWidth":F
    .end local v18    # "middle":F
    .end local v19    # "minForPadding":F
    .end local v21    # "outerCornerWidth":F
    .end local v23    # "outerRect":Landroid/graphics/RectF;
    .end local v25    # "right":F
    .end local v26    # "roundRectRadius":F
    .end local v27    # "runs":F
    .end local v28    # "strokeWidth":F
    .end local v30    # "tb":Landroid/graphics/Rect;
    .end local v31    # "textLength":I
    :cond_8
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v34

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v35

    move/from16 v0, v34

    move/from16 v1, v35

    if-le v0, v1, :cond_3

    .line 305
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    const/high16 v35, 0x40000000    # 2.0f

    div-float v34, v34, v35

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    const/high16 v36, 0x40000000    # 2.0f

    div-float v35, v35, v36

    sub-float v7, v34, v35

    .line 306
    .restart local v7    # "diff":F
    add-float v29, v29, v7

    .line 307
    sub-float/2addr v5, v7

    goto/16 :goto_1

    .line 327
    .end local v7    # "diff":F
    .restart local v9    # "innerCornerWidth":F
    .restart local v11    # "innerRect":Landroid/graphics/RectF;
    .restart local v21    # "outerCornerWidth":F
    .restart local v23    # "outerRect":Landroid/graphics/RectF;
    .restart local v28    # "strokeWidth":F
    :cond_9
    const/high16 v34, 0x3f800000    # 1.0f

    cmpg-float v34, v21, v34

    if-gez v34, :cond_b

    .line 329
    const/high16 v34, 0x3f800000    # 1.0f

    cmpl-float v34, v28, v34

    if-ltz v34, :cond_a

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mStrokePath:Landroid/graphics/Path;

    move-object/from16 v34, v0

    sget-object v35, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v34

    move-object/from16 v1, v23

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mStrokePath:Landroid/graphics/Path;

    move-object/from16 v34, v0

    sget-object v35, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v0, v11, v1}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 334
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mFillPath:Landroid/graphics/Path;

    move-object/from16 v34, v0

    sget-object v35, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v0, v11, v1}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    goto/16 :goto_2

    .line 337
    :cond_b
    const/16 v34, 0x8

    move/from16 v0, v34

    new-array v0, v0, [F

    move-object/from16 v22, v0

    .line 338
    .local v22, "outerRadius":[F
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 340
    const/high16 v34, 0x3f800000    # 1.0f

    cmpl-float v34, v28, v34

    if-ltz v34, :cond_c

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mStrokePath:Landroid/graphics/Path;

    move-object/from16 v34, v0

    sget-object v35, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v34

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    move-object/from16 v3, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 344
    :cond_c
    const/high16 v34, 0x3f800000    # 1.0f

    cmpl-float v34, v9, v34

    if-lez v34, :cond_e

    .line 346
    const/16 v34, 0x8

    move/from16 v0, v34

    new-array v10, v0, [F

    .line 347
    .local v10, "innerRadius":[F
    invoke-static {v10, v9}, Ljava/util/Arrays;->fill([FF)V

    .line 349
    const/high16 v34, 0x3f800000    # 1.0f

    cmpl-float v34, v28, v34

    if-ltz v34, :cond_d

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mStrokePath:Landroid/graphics/Path;

    move-object/from16 v34, v0

    sget-object v35, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v0, v11, v10, v1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 353
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mFillPath:Landroid/graphics/Path;

    move-object/from16 v34, v0

    sget-object v35, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v0, v11, v10, v1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    goto/16 :goto_2

    .line 356
    .end local v10    # "innerRadius":[F
    :cond_e
    const/high16 v34, 0x3f800000    # 1.0f

    cmpl-float v34, v28, v34

    if-ltz v34, :cond_f

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mStrokePath:Landroid/graphics/Path;

    move-object/from16 v34, v0

    sget-object v35, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v0, v11, v1}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 360
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mFillPath:Landroid/graphics/Path;

    move-object/from16 v34, v0

    sget-object v35, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v0, v11, v1}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    goto/16 :goto_2

    .line 396
    .end local v22    # "outerRadius":[F
    .restart local v8    # "doesntFit":Z
    .restart local v13    # "left":F
    .restart local v14    # "maxEllipseX":F
    .restart local v15    # "maxEllipseY":F
    .restart local v16    # "maxHeight":F
    .restart local v17    # "maxWidth":F
    .restart local v18    # "middle":F
    .restart local v19    # "minForPadding":F
    .restart local v25    # "right":F
    .restart local v26    # "roundRectRadius":F
    .restart local v27    # "runs":F
    .restart local v30    # "tb":Landroid/graphics/Rect;
    .restart local v31    # "textLength":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mText:Ljava/lang/String;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move/from16 v2, v36

    move/from16 v3, v31

    move-object/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 398
    move/from16 v20, v18

    .line 400
    .local v20, "oldMiddle":F
    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Math;->abs(I)I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    cmpl-float v34, v34, v16

    if-gtz v34, :cond_11

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Math;->abs(I)I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    cmpl-float v34, v34, v17

    if-lez v34, :cond_12

    .line 401
    :cond_11
    const/4 v8, 0x1

    .line 418
    :goto_4
    if-eqz v8, :cond_18

    .line 419
    add-float v34, v18, v25

    const/high16 v35, 0x40000000    # 2.0f

    div-float v18, v34, v35

    .line 420
    move/from16 v13, v20

    .line 426
    :goto_5
    const/high16 v34, 0x3f800000    # 1.0f

    add-float v27, v27, v34

    goto/16 :goto_3

    .line 402
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mCornerRadius:F

    move/from16 v34, v0

    const/16 v35, 0x0

    cmpg-float v34, v34, v35

    if-ltz v34, :cond_13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mSquare:Z

    move/from16 v34, v0

    if-eqz v34, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mCornerRadius:F

    move/from16 v34, v0

    move/from16 v0, v34

    float-to-double v0, v0

    move-wide/from16 v34, v0

    const-wide v36, 0x3fdf5c28f5c28f5cL    # 0.49

    cmpl-double v34, v34, v36

    if-ltz v34, :cond_15

    .line 403
    :cond_13
    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v34, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v35, v0

    mul-int v34, v34, v35

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    const/high16 v35, 0x40800000    # 4.0f

    div-float v34, v34, v35

    div-float v34, v34, v14

    .line 404
    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v35, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v36, v0

    mul-int v35, v35, v36

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    const/high16 v36, 0x40800000    # 4.0f

    div-float v35, v35, v36

    div-float v35, v35, v15

    .line 403
    add-float v34, v34, v35

    .line 404
    const/high16 v35, 0x3f800000    # 1.0f

    cmpl-float v34, v34, v35

    if-lez v34, :cond_14

    .line 403
    const/4 v8, 0x1

    :goto_6
    goto :goto_4

    :cond_14
    const/4 v8, 0x0

    goto :goto_6

    .line 405
    :cond_15
    const/high16 v34, 0x3f800000    # 1.0f

    cmpl-float v34, v9, v34

    if-ltz v34, :cond_17

    .line 406
    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Math;->abs(I)I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    const/high16 v35, 0x40000000    # 2.0f

    mul-float v35, v35, v9

    add-float v34, v34, v35

    cmpl-float v34, v34, v16

    if-lez v34, :cond_17

    .line 407
    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Math;->abs(I)I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    const/high16 v35, 0x40000000    # 2.0f

    mul-float v35, v35, v9

    add-float v34, v34, v35

    cmpl-float v34, v34, v17

    if-lez v34, :cond_17

    .line 410
    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Math;->abs(I)I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    const/high16 v35, 0x40000000    # 2.0f

    mul-float v35, v35, v9

    add-float v34, v34, v35

    sub-float v34, v34, v17

    const/high16 v35, 0x40000000    # 2.0f

    div-float v32, v34, v35

    .line 411
    .local v32, "x":F
    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Math;->abs(I)I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    const/high16 v35, 0x40000000    # 2.0f

    mul-float v35, v35, v9

    add-float v34, v34, v35

    sub-float v34, v34, v16

    const/high16 v35, 0x40000000    # 2.0f

    div-float v33, v34, v35

    .line 413
    .local v33, "y":F
    mul-float v34, v32, v32

    mul-float v35, v33, v33

    add-float v34, v34, v35

    div-float v34, v34, v26

    const/high16 v35, 0x3f800000    # 1.0f

    cmpl-float v34, v34, v35

    if-ltz v34, :cond_16

    const/4 v8, 0x1

    :goto_7
    goto/16 :goto_4

    :cond_16
    const/4 v8, 0x0

    goto :goto_7

    .line 415
    .end local v32    # "x":F
    .end local v33    # "y":F
    :cond_17
    const/4 v8, 0x0

    goto/16 :goto_4

    .line 422
    :cond_18
    add-float v34, v18, v13

    const/high16 v35, 0x40000000    # 2.0f

    div-float v18, v34, v35

    .line 423
    move/from16 v25, v20

    goto/16 :goto_5
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 254
    iget-object v1, p0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mFillPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    iget-object v1, p0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mStrokePath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 259
    iget-object v1, p0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mStrokePath:Landroid/graphics/Path;

    iget-object v2, p0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 262
    :cond_2
    iget-object v1, p0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mFillPath:Landroid/graphics/Path;

    iget-object v2, p0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 264
    iget-object v1, p0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mText:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 265
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 266
    .local v0, "b":Landroid/graphics/Rect;
    iget-object v1, p0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mTextPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setLinearText(Z)V

    .line 267
    iget-object v1, p0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    iget v4, p0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mTextHalfHeight:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 6

    .prologue
    const/4 v3, -0x1

    const/16 v5, 0xff

    .line 215
    iget-object v4, p0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mFillPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 229
    :cond_0
    :goto_0
    return v3

    .line 219
    :cond_1
    iget-object v4, p0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    .line 220
    .local v1, "stroke":I
    iget-object v4, p0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 221
    .local v0, "fill":I
    iget-object v4, p0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    .line 223
    .local v2, "text":I
    iget-object v4, p0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mStrokePath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    if-nez v1, :cond_4

    :cond_2
    if-nez v0, :cond_4

    iget-object v4, p0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mText:Ljava/lang/String;

    if-eqz v4, :cond_3

    if-nez v2, :cond_4

    .line 224
    :cond_3
    const/4 v3, -0x2

    goto :goto_0

    .line 225
    :cond_4
    iget-object v4, p0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mStrokePath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    if-ne v1, v5, :cond_6

    :cond_5
    if-ne v0, v5, :cond_6

    .line 226
    iget-object v4, p0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mText:Ljava/lang/String;

    if-eqz v4, :cond_0

    if-eq v2, v5, :cond_0

    .line 229
    :cond_6
    const/4 v3, -0x3

    goto :goto_0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v0, 0x1

    .line 246
    invoke-direct {p0, v0, v0}, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->updateGeometry(ZZ)V

    .line 247
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 205
    iget-object v0, p0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 206
    iget-object v0, p0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 207
    iget-object v0, p0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 208
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 239
    return-void
.end method

.method public setCornerRadius(F)V
    .locals 3
    .param p1, "radius"    # F

    .prologue
    const/4 v1, 0x1

    .line 165
    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {p1, v2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 166
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 167
    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p1, v2

    .line 169
    iget v2, p0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mCornerRadius:F

    cmpl-float v2, v2, p1

    if-eqz v2, :cond_1

    move v0, v1

    .line 170
    .local v0, "changed":Z
    :goto_0
    iput p1, p0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mCornerRadius:F

    .line 172
    if-eqz v0, :cond_0

    .line 173
    invoke-direct {p0, v1, v1}, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->updateGeometry(ZZ)V

    .line 174
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->invalidateSelf()V

    .line 176
    :cond_0
    return-void

    .line 169
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFillColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 109
    return-void
.end method

.method public setSquare(Z)V
    .locals 3
    .param p1, "square"    # Z

    .prologue
    const/4 v2, 0x1

    .line 186
    iget-boolean v1, p0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mSquare:Z

    xor-int v0, v1, p1

    .line 187
    .local v0, "changed":Z
    iput-boolean p1, p0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mSquare:Z

    .line 189
    if-eqz v0, :cond_0

    .line 190
    invoke-direct {p0, v2, v2}, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->updateGeometry(ZZ)V

    .line 191
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->invalidateSelf()V

    .line 193
    :cond_0
    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 3
    .param p1, "width"    # F

    .prologue
    const/4 v1, 0x1

    .line 142
    const/4 v2, 0x0

    invoke-static {p1, v2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 143
    const v2, 0x3f4ccccd    # 0.8f

    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 144
    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p1, v2

    .line 146
    iget v2, p0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mStrokeWidth:F

    cmpl-float v2, v2, p1

    if-eqz v2, :cond_1

    move v0, v1

    .line 147
    .local v0, "changed":Z
    :goto_0
    iput p1, p0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mStrokeWidth:F

    .line 149
    if-eqz v0, :cond_0

    .line 150
    invoke-direct {p0, v1, v1}, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->updateGeometry(ZZ)V

    .line 151
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->invalidateSelf()V

    .line 153
    :cond_0
    return-void

    .line 146
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 68
    iget-object v3, p0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mText:Ljava/lang/String;

    if-eq p1, v3, :cond_3

    if-eqz p1, :cond_0

    iget-object v3, p0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mText:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_0
    move v0, v1

    .line 69
    .local v0, "changed":Z
    :goto_0
    iput-object p1, p0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mText:Ljava/lang/String;

    .line 71
    if-eqz p1, :cond_1

    .line 72
    iget-object v3, p0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mText:Ljava/lang/String;

    .line 75
    :cond_1
    if-eqz v0, :cond_2

    .line 76
    invoke-direct {p0, v1, v2}, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->updateGeometry(ZZ)V

    .line 77
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->invalidateSelf()V

    .line 79
    :cond_2
    return-void

    .end local v0    # "changed":Z
    :cond_3
    move v0, v2

    .line 68
    goto :goto_0
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 88
    iget-object v0, p0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    return-void
.end method

.method public setTextPadding(F)V
    .locals 3
    .param p1, "padding"    # F

    .prologue
    const/4 v1, 0x1

    .line 120
    const/4 v2, 0x0

    invoke-static {p1, v2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 121
    const v2, 0x3f4ccccd    # 0.8f

    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 122
    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p1, v2

    .line 124
    iget v2, p0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mTextPadding:F

    cmpl-float v2, v2, p1

    if-eqz v2, :cond_1

    move v0, v1

    .line 125
    .local v0, "changed":Z
    :goto_0
    iput p1, p0, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->mTextPadding:F

    .line 127
    if-eqz v0, :cond_0

    .line 128
    invoke-direct {p0, v1, v1}, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->updateGeometry(ZZ)V

    .line 129
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/graphics/drawable/StatusTextDrawable;->invalidateSelf()V

    .line 131
    :cond_0
    return-void

    .line 124
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
