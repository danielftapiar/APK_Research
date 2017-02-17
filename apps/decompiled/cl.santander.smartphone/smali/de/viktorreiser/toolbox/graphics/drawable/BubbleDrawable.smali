.class public Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "BubbleDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$de$viktorreiser$toolbox$graphics$drawable$BubbleDrawable$IndicatorDirection:[I


# instance fields
.field private mCornerRadius:I

.field private mFillPaint:Landroid/graphics/Paint;

.field private mFillPath:Landroid/graphics/Path;

.field private mIndicatorDirection:Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;

.field private mIndicatorFillPath:Landroid/graphics/Path;

.field private mIndicatorHeight:I

.field private mIndicatorHorizontalStrokeWidth:F

.field private mIndicatorPosition:F

.field private mIndicatorStrokePath:Landroid/graphics/Path;

.field private mIndicatorVerticalInnerStrokeOffset:F

.field private mIndicatorVerticalStrokeWidth:F

.field private mIndicatorWidth:I

.field private mStrokePaint:Landroid/graphics/Paint;

.field private mStrokePath:Landroid/graphics/Path;

.field private mStrokeWidth:I


# direct methods
.method static synthetic $SWITCH_TABLE$de$viktorreiser$toolbox$graphics$drawable$BubbleDrawable$IndicatorDirection()[I
    .locals 3

    .prologue
    .line 16
    sget-object v0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->$SWITCH_TABLE$de$viktorreiser$toolbox$graphics$drawable$BubbleDrawable$IndicatorDirection:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;->values()[Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;->BOTTOM:Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;

    invoke-virtual {v1}, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;->LEFT:Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;

    invoke-virtual {v1}, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;->RIGHT:Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;

    invoke-virtual {v1}, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;->TOP:Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;

    invoke-virtual {v1}, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->$SWITCH_TABLE$de$viktorreiser$toolbox$graphics$drawable$BubbleDrawable$IndicatorDirection:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x32

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 20
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mStrokePaint:Landroid/graphics/Paint;

    .line 21
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mFillPaint:Landroid/graphics/Paint;

    .line 23
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mStrokePath:Landroid/graphics/Path;

    .line 24
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mFillPath:Landroid/graphics/Path;

    .line 25
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mIndicatorStrokePath:Landroid/graphics/Path;

    .line 26
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mIndicatorFillPath:Landroid/graphics/Path;

    .line 28
    iput v2, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mCornerRadius:I

    .line 29
    const/16 v0, 0xa

    iput v0, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mStrokeWidth:I

    .line 30
    iput v2, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mIndicatorWidth:I

    .line 31
    const/16 v0, 0x50

    iput v0, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mIndicatorHeight:I

    .line 32
    sget-object v0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;->LEFT:Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;

    iput-object v0, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mIndicatorDirection:Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;

    .line 33
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mIndicatorPosition:F

    .line 34
    iput v1, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mIndicatorVerticalStrokeWidth:F

    .line 35
    iput v1, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mIndicatorHorizontalStrokeWidth:F

    .line 36
    iput v1, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mIndicatorVerticalInnerStrokeOffset:F

    .line 46
    iget-object v0, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mStrokePaint:Landroid/graphics/Paint;

    const v1, -0x55555556

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 47
    iget-object v0, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mFillPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x56000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    return-void
.end method

.method private updateGeometry()V
    .locals 24

    .prologue
    .line 286
    invoke-virtual/range {p0 .. p0}, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 288
    .local v6, "b":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mStrokePath:Landroid/graphics/Path;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Path;->reset()V

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mFillPath:Landroid/graphics/Path;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Path;->reset()V

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mIndicatorFillPath:Landroid/graphics/Path;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Path;->reset()V

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mIndicatorStrokePath:Landroid/graphics/Path;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Path;->reset()V

    .line 293
    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 439
    :goto_0
    return-void

    .line 297
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mIndicatorDirection:Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;

    move-object/from16 v20, v0

    sget-object v21, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;->TOP:Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_7

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mIndicatorDirection:Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;

    move-object/from16 v20, v0

    sget-object v21, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;->BOTTOM:Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_7

    const/4 v15, 0x0

    .line 299
    .local v15, "isHorizontal":Z
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mCornerRadius:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mStrokeWidth:I

    move/from16 v21, v0

    sub-int v12, v20, v21

    .line 300
    .local v12, "innerCornerWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mStrokeWidth:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v19, v0

    .line 301
    .local v19, "sW":F
    move-object/from16 v0, p0

    iget v0, v0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mIndicatorWidth:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v11, v0

    .line 302
    .local v11, "iW":F
    move-object/from16 v0, p0

    iget v0, v0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mCornerRadius:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v7, v0

    .line 303
    .local v7, "cR":F
    move-object/from16 v0, p0

    iget v0, v0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mIndicatorHeight:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v8, v0

    .line 304
    .local v8, "iH":F
    add-float v20, v8, v19

    mul-float v20, v20, v11

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    div-float v20, v20, v8

    const/high16 v21, 0x40000000    # 2.0f

    div-float v21, v11, v21

    sub-float v9, v20, v21

    .line 306
    .local v9, "iVISO":F
    move-object/from16 v0, p0

    iput v9, v0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mIndicatorVerticalInnerStrokeOffset:F

    .line 308
    move-object/from16 v0, p0

    iget v0, v0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mIndicatorHeight:I

    move/from16 v20, v0

    if-lez v20, :cond_1

    .line 309
    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v20, v0

    const/high16 v22, 0x40000000    # 2.0f

    div-float v22, v11, v22

    div-float v22, v22, v8

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->atan(D)D

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    div-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mIndicatorVerticalStrokeWidth:F

    .line 312
    :cond_1
    move-object/from16 v0, p0

    iget v10, v0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mIndicatorVerticalStrokeWidth:F

    .line 314
    .local v10, "iVSW":F
    new-instance v18, Landroid/graphics/RectF;

    iget v0, v6, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    iget v0, v6, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 315
    .local v18, "outerRect":Landroid/graphics/RectF;
    new-instance v14, Landroid/graphics/RectF;

    iget v0, v6, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    add-float v20, v20, v19

    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    add-float v21, v21, v19

    iget v0, v6, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v22, v22, v19

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v23, v23, v19

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v14, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 316
    .local v14, "innerRect":Landroid/graphics/RectF;
    move/from16 v0, v19

    invoke-static {v0, v7}, Ljava/lang/Math;->max(FF)F

    move-result v20

    add-float v20, v20, v9

    add-float v21, v10, v7

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(FF)F

    move-result v20

    const/high16 v21, 0x40000000    # 2.0f

    mul-float v20, v20, v21

    add-float v16, v11, v20

    .line 319
    .local v16, "neededSpace":F
    move-object/from16 v0, p0

    iget v0, v0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mIndicatorWidth:I

    move/from16 v20, v0

    if-lez v20, :cond_2

    .line 320
    const/high16 v20, 0x40000000    # 2.0f

    mul-float v20, v20, v10

    mul-float v20, v20, v8

    div-float v20, v20, v11

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mIndicatorHorizontalStrokeWidth:F

    .line 321
    move-object/from16 v0, p0

    iget v0, v0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mIndicatorHorizontalStrokeWidth:F

    move/from16 v20, v0

    add-float v5, v8, v20

    .line 323
    .local v5, "addOffset":F
    invoke-static {}, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->$SWITCH_TABLE$de$viktorreiser$toolbox$graphics$drawable$BubbleDrawable$IndicatorDirection()[I

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mIndicatorDirection:Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;->ordinal()I

    move-result v21

    aget v20, v20, v21

    packed-switch v20, :pswitch_data_0

    .line 348
    .end local v5    # "addOffset":F
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mIndicatorHeight:I

    move/from16 v20, v0

    if-lez v20, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mIndicatorWidth:I

    move/from16 v20, v0

    if-lez v20, :cond_5

    .line 349
    if-nez v15, :cond_3

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    cmpl-float v20, v20, v16

    if-gez v20, :cond_4

    .line 350
    :cond_3
    if-eqz v15, :cond_5

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    cmpl-float v20, v20, v16

    if-ltz v20, :cond_5

    .line 355
    :cond_4
    invoke-static {}, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->$SWITCH_TABLE$de$viktorreiser$toolbox$graphics$drawable$BubbleDrawable$IndicatorDirection()[I

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mIndicatorDirection:Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;->ordinal()I

    move-result v21

    aget v20, v20, v21

    packed-switch v20, :pswitch_data_1

    .line 407
    :cond_5
    :goto_3
    :pswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mCornerRadius:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_a

    .line 409
    const/16 v20, 0x8

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v17, v0

    .line 410
    .local v17, "outerRadius":[F
    move-object/from16 v0, p0

    iget v0, v0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mCornerRadius:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mStrokePath:Landroid/graphics/Path;

    move-object/from16 v20, v0

    sget-object v21, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 414
    const/16 v20, 0x1

    move/from16 v0, v20

    if-lt v12, v0, :cond_8

    .line 415
    const/16 v20, 0x8

    move/from16 v0, v20

    new-array v13, v0, [F

    .line 416
    .local v13, "innerRadius":[F
    int-to-float v0, v12

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-static {v13, v0}, Ljava/util/Arrays;->fill([FF)V

    .line 418
    move-object/from16 v0, p0

    iget v0, v0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mStrokeWidth:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_6

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mStrokePath:Landroid/graphics/Path;

    move-object/from16 v20, v0

    sget-object v21, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v14, v13, v1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 422
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mFillPath:Landroid/graphics/Path;

    move-object/from16 v20, v0

    sget-object v21, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v14, v13, v1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    goto/16 :goto_0

    .line 298
    .end local v7    # "cR":F
    .end local v8    # "iH":F
    .end local v9    # "iVISO":F
    .end local v10    # "iVSW":F
    .end local v11    # "iW":F
    .end local v12    # "innerCornerWidth":I
    .end local v13    # "innerRadius":[F
    .end local v14    # "innerRect":Landroid/graphics/RectF;
    .end local v15    # "isHorizontal":Z
    .end local v16    # "neededSpace":F
    .end local v17    # "outerRadius":[F
    .end local v18    # "outerRect":Landroid/graphics/RectF;
    .end local v19    # "sW":F
    :cond_7
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 325
    .restart local v5    # "addOffset":F
    .restart local v7    # "cR":F
    .restart local v8    # "iH":F
    .restart local v9    # "iVISO":F
    .restart local v10    # "iVSW":F
    .restart local v11    # "iW":F
    .restart local v12    # "innerCornerWidth":I
    .restart local v14    # "innerRect":Landroid/graphics/RectF;
    .restart local v15    # "isHorizontal":Z
    .restart local v16    # "neededSpace":F
    .restart local v18    # "outerRect":Landroid/graphics/RectF;
    .restart local v19    # "sW":F
    :pswitch_1
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v20, v0

    add-float v20, v20, v5

    move/from16 v0, v20

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 326
    iget v0, v14, Landroid/graphics/RectF;->left:F

    move/from16 v20, v0

    add-float v20, v20, v5

    move/from16 v0, v20

    iput v0, v14, Landroid/graphics/RectF;->left:F

    goto/16 :goto_2

    .line 330
    :pswitch_2
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v20, v0

    sub-float v20, v20, v5

    move/from16 v0, v20

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 331
    iget v0, v14, Landroid/graphics/RectF;->right:F

    move/from16 v20, v0

    sub-float v20, v20, v5

    move/from16 v0, v20

    iput v0, v14, Landroid/graphics/RectF;->right:F

    goto/16 :goto_2

    .line 335
    :pswitch_3
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v20, v0

    add-float v20, v20, v5

    move/from16 v0, v20

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 336
    iget v0, v14, Landroid/graphics/RectF;->top:F

    move/from16 v20, v0

    add-float v20, v20, v5

    move/from16 v0, v20

    iput v0, v14, Landroid/graphics/RectF;->top:F

    goto/16 :goto_2

    .line 340
    :pswitch_4
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v20, v0

    sub-float v20, v20, v5

    move/from16 v0, v20

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    .line 341
    iget v0, v14, Landroid/graphics/RectF;->bottom:F

    move/from16 v20, v0

    sub-float v20, v20, v5

    move/from16 v0, v20

    iput v0, v14, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_2

    .line 357
    .end local v5    # "addOffset":F
    :pswitch_5
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v14}, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->updateLeftIndicator(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto/16 :goto_3

    .line 424
    .restart local v17    # "outerRadius":[F
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mStrokeWidth:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_9

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mStrokePath:Landroid/graphics/Path;

    move-object/from16 v20, v0

    sget-object v21, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v14, v1}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 428
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mFillPath:Landroid/graphics/Path;

    move-object/from16 v20, v0

    sget-object v21, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v14, v1}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    goto/16 :goto_0

    .line 432
    .end local v17    # "outerRadius":[F
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mStrokeWidth:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_b

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mStrokePath:Landroid/graphics/Path;

    move-object/from16 v20, v0

    sget-object v21, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mStrokePath:Landroid/graphics/Path;

    move-object/from16 v20, v0

    sget-object v21, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v14, v1}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 437
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mFillPath:Landroid/graphics/Path;

    move-object/from16 v20, v0

    sget-object v21, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v14, v1}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    goto/16 :goto_0

    .line 323
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch

    .line 355
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updateLeftIndicator(Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 12
    .param p1, "outerRect"    # Landroid/graphics/RectF;
    .param p2, "innerRect"    # Landroid/graphics/RectF;

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    .line 442
    move-object v6, p1

    .line 443
    .local v6, "oR":Landroid/graphics/RectF;
    move-object v2, p2

    .line 444
    .local v2, "iR":Landroid/graphics/RectF;
    iget v7, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mIndicatorHeight:I

    int-to-float v0, v7

    .line 445
    .local v0, "iH":F
    iget v7, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mIndicatorWidth:I

    int-to-float v5, v7

    .line 446
    .local v5, "iW":F
    iget v4, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mIndicatorVerticalStrokeWidth:F

    .line 447
    .local v4, "iVSW":F
    iget v1, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mIndicatorHorizontalStrokeWidth:F

    .line 448
    .local v1, "iHSW":F
    iget v3, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mIndicatorVerticalInnerStrokeOffset:F

    .line 452
    .local v3, "iVISO":F
    iget-object v7, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mIndicatorFillPath:Landroid/graphics/Path;

    iget v8, v2, Landroid/graphics/RectF;->left:F

    iget v9, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v9, v4

    sub-float/2addr v9, v3

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 453
    iget-object v7, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mIndicatorFillPath:Landroid/graphics/Path;

    iget v8, v6, Landroid/graphics/RectF;->left:F

    sub-float/2addr v8, v0

    iget v9, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v9, v4

    div-float v10, v5, v11

    add-float/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 454
    iget-object v7, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mIndicatorFillPath:Landroid/graphics/Path;

    iget v8, v2, Landroid/graphics/RectF;->left:F

    iget v9, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v9, v4

    add-float/2addr v9, v5

    add-float/2addr v9, v3

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 455
    iget-object v7, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mIndicatorFillPath:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->close()V

    .line 457
    iget v7, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mStrokeWidth:I

    const/4 v8, 0x1

    if-lt v7, v8, :cond_0

    .line 461
    iget-object v7, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mIndicatorStrokePath:Landroid/graphics/Path;

    iget v8, v6, Landroid/graphics/RectF;->left:F

    iget v9, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 462
    iget-object v7, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mIndicatorStrokePath:Landroid/graphics/Path;

    iget v8, v6, Landroid/graphics/RectF;->left:F

    sub-float/2addr v8, v0

    sub-float/2addr v8, v1

    iget v9, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v9, v4

    div-float v10, v5, v11

    add-float/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 463
    iget-object v7, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mIndicatorStrokePath:Landroid/graphics/Path;

    iget v8, v6, Landroid/graphics/RectF;->left:F

    iget v9, v6, Landroid/graphics/RectF;->top:F

    mul-float v10, v4, v11

    add-float/2addr v9, v10

    add-float/2addr v9, v5

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 464
    iget-object v7, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mIndicatorStrokePath:Landroid/graphics/Path;

    iget v8, v6, Landroid/graphics/RectF;->left:F

    iget v9, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v9, v4

    add-float/2addr v9, v5

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 465
    iget-object v7, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mIndicatorStrokePath:Landroid/graphics/Path;

    iget v8, v6, Landroid/graphics/RectF;->left:F

    sub-float/2addr v8, v0

    iget v9, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v9, v4

    div-float v10, v5, v11

    add-float/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 466
    iget-object v7, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mIndicatorStrokePath:Landroid/graphics/Path;

    iget v8, v6, Landroid/graphics/RectF;->left:F

    iget v9, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v9, v4

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 467
    iget-object v7, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mIndicatorStrokePath:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->close()V

    .line 469
    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v12, 0x40000000    # 2.0f

    const/4 v10, 0x0

    .line 131
    iget-object v9, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mFillPath:Landroid/graphics/Path;

    invoke-virtual {v9}, Landroid/graphics/Path;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    iget-object v9, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mFillPath:Landroid/graphics/Path;

    iget-object v11, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v11}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 138
    iget-object v9, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mIndicatorFillPath:Landroid/graphics/Path;

    invoke-virtual {v9}, Landroid/graphics/Path;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 139
    iget v9, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mStrokeWidth:I

    if-lez v9, :cond_0

    .line 140
    iget-object v9, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mStrokePath:Landroid/graphics/Path;

    iget-object v10, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 146
    :cond_2
    iget v2, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mIndicatorPosition:F

    .line 147
    .local v2, "iP":F
    iget v9, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mIndicatorWidth:I

    int-to-float v4, v9

    .line 148
    .local v4, "iW":F
    iget v9, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mCornerRadius:I

    int-to-float v0, v9

    .line 149
    .local v0, "cR":F
    iget v9, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mStrokeWidth:I

    int-to-float v7, v9

    .line 150
    .local v7, "sW":F
    iget v3, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mIndicatorVerticalStrokeWidth:F

    .line 153
    .local v3, "iVSW":F
    iget-object v9, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mIndicatorDirection:Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;

    sget-object v11, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;->TOP:Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;

    if-eq v9, v11, :cond_4

    .line 154
    iget-object v9, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mIndicatorDirection:Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;

    sget-object v11, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;->BOTTOM:Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;

    if-eq v9, v11, :cond_4

    const/4 v5, 0x0

    .line 157
    .local v5, "isHorizontal":Z
    :goto_1
    if-eqz v5, :cond_5

    .line 158
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v8, v9

    .line 160
    .local v8, "w":F
    mul-float v9, v8, v2

    sub-float/2addr v9, v3

    div-float v11, v4, v12

    sub-float/2addr v9, v11

    invoke-static {v0, v7}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 159
    invoke-static {v9, v11}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 160
    sub-float v11, v8, v0

    mul-float/2addr v12, v3

    sub-float/2addr v11, v12

    sub-float/2addr v11, v4

    .line 159
    invoke-static {v9, v11}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 169
    .end local v8    # "w":F
    .local v6, "offset":F
    :goto_2
    iget v9, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mStrokeWidth:I

    if-gez v9, :cond_3

    .line 170
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 171
    if-eqz v5, :cond_6

    move v11, v6

    :goto_3
    if-eqz v5, :cond_7

    move v9, v10

    :goto_4
    invoke-virtual {p1, v11, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 172
    iget-object v9, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mIndicatorFillPath:Landroid/graphics/Path;

    iget-object v11, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v11}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 173
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 176
    :cond_3
    iget v9, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mStrokeWidth:I

    if-ltz v9, :cond_0

    .line 179
    iget-object v9, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mIndicatorFillPath:Landroid/graphics/Path;

    invoke-virtual {v9}, Landroid/graphics/Path;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 180
    iget-object v9, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mStrokePath:Landroid/graphics/Path;

    iget-object v10, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 154
    .end local v5    # "isHorizontal":Z
    .end local v6    # "offset":F
    :cond_4
    const/4 v5, 0x1

    goto :goto_1

    .line 162
    .restart local v5    # "isHorizontal":Z
    :cond_5
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v1, v9

    .line 164
    .local v1, "h":F
    mul-float v9, v1, v2

    sub-float/2addr v9, v3

    div-float v11, v4, v12

    sub-float/2addr v9, v11

    invoke-static {v0, v7}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 163
    invoke-static {v9, v11}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 164
    sub-float v11, v1, v0

    mul-float/2addr v12, v3

    sub-float/2addr v11, v12

    sub-float/2addr v11, v4

    .line 163
    invoke-static {v9, v11}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .restart local v6    # "offset":F
    goto :goto_2

    .end local v1    # "h":F
    :cond_6
    move v11, v10

    .line 171
    goto :goto_3

    :cond_7
    move v9, v6

    goto :goto_4

    .line 184
    :cond_8
    if-eqz v5, :cond_9

    move v11, v6

    :goto_5
    if-eqz v5, :cond_a

    move v9, v10

    :goto_6
    invoke-virtual {p1, v11, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 185
    iget-object v9, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mIndicatorFillPath:Landroid/graphics/Path;

    sget-object v11, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v9, v11}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 186
    if-eqz v5, :cond_b

    neg-float v9, v6

    move v11, v9

    :goto_7
    if-eqz v5, :cond_c

    move v9, v10

    :goto_8
    invoke-virtual {p1, v11, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 187
    iget-object v9, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mStrokePath:Landroid/graphics/Path;

    iget-object v11, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v11}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 188
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    sget-object v11, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v9, v11}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 189
    if-eqz v5, :cond_d

    move v9, v6

    :goto_9
    if-eqz v5, :cond_e

    :goto_a
    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 190
    iget-object v9, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mIndicatorFillPath:Landroid/graphics/Path;

    iget-object v10, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 191
    iget-object v9, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mIndicatorStrokePath:Landroid/graphics/Path;

    iget-object v10, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 193
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    :cond_9
    move v11, v10

    .line 184
    goto :goto_5

    :cond_a
    move v9, v6

    goto :goto_6

    :cond_b
    move v11, v10

    .line 186
    goto :goto_7

    :cond_c
    neg-float v9, v6

    goto :goto_8

    :cond_d
    move v9, v10

    .line 189
    goto :goto_9

    :cond_e
    move v10, v6

    goto :goto_a
.end method

.method public getOpacity()I
    .locals 4

    .prologue
    const/16 v3, 0xff

    .line 254
    iget-object v2, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 255
    .local v0, "fill":I
    iget-object v2, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    .line 257
    .local v1, "stroke":I
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 258
    const/4 v2, -0x2

    .line 262
    :goto_0
    return v2

    .line 259
    :cond_0
    if-ne v0, v3, :cond_1

    if-ne v1, v3, :cond_1

    .line 260
    const/4 v2, -0x1

    goto :goto_0

    .line 262
    :cond_1
    const/4 v2, -0x3

    goto :goto_0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 6
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 203
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 238
    :goto_0
    return v1

    .line 207
    :cond_0
    iget v3, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mStrokeWidth:I

    add-int/lit8 v3, v3, 0xa

    iget v4, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mCornerRadius:I

    iget v5, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mStrokeWidth:I

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0xa

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int v0, v3, v1

    .line 209
    .local v0, "offset":I
    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 210
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 211
    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 212
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 214
    iget-object v1, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mIndicatorFillPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    .line 215
    goto :goto_0

    .line 218
    :cond_1
    iget v1, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mIndicatorHeight:I

    int-to-float v1, v1

    iget v3, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mIndicatorHorizontalStrokeWidth:F

    add-float/2addr v1, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v1, v3

    float-to-int v0, v1

    .line 220
    invoke-static {}, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->$SWITCH_TABLE$de$viktorreiser$toolbox$graphics$drawable$BubbleDrawable$IndicatorDirection()[I

    move-result-object v1

    iget-object v3, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mIndicatorDirection:Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;

    invoke-virtual {v3}, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    :goto_1
    move v1, v2

    .line 238
    goto :goto_0

    .line 222
    :pswitch_0
    iget v1, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->left:I

    goto :goto_1

    .line 226
    :pswitch_1
    iget v1, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 230
    :pswitch_2
    iget v1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->top:I

    goto :goto_1

    .line 234
    :pswitch_3
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 220
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 246
    invoke-direct {p0}, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->updateGeometry()V

    .line 247
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 271
    iget-object v0, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 272
    iget-object v0, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 273
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 281
    return-void
.end method

.method public setCornerRadius(I)V
    .locals 2
    .param p1, "radius"    # I

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 53
    iget v1, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mCornerRadius:I

    if-eq p1, v1, :cond_0

    const/4 v0, 0x1

    .line 54
    .local v0, "changed":Z
    :cond_0
    iput p1, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mCornerRadius:I

    .line 56
    if-eqz v0, :cond_1

    .line 57
    invoke-direct {p0}, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->updateGeometry()V

    .line 58
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->invalidateSelf()V

    .line 60
    :cond_1
    return-void
.end method

.method public setFillColor(I)V
    .locals 2
    .param p1, "fillColor"    # I

    .prologue
    .line 116
    iget-object v1, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    if-eq p1, v1, :cond_1

    const/4 v0, 0x1

    .line 117
    .local v0, "changed":Z
    :goto_0
    iget-object v1, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 119
    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->invalidateSelf()V

    .line 122
    :cond_0
    return-void

    .line 116
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIndicatorDimensions(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v0, 0x0

    .line 93
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 94
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 96
    iget v1, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mIndicatorWidth:I

    if-ne p1, v1, :cond_1

    iget v1, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mIndicatorHeight:I

    if-ne p2, v1, :cond_1

    .line 97
    .local v0, "changed":Z
    :goto_0
    iput p1, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mIndicatorWidth:I

    .line 98
    iput p2, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mIndicatorHeight:I

    .line 100
    if-eqz v0, :cond_0

    .line 101
    invoke-direct {p0}, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->updateGeometry()V

    .line 102
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->invalidateSelf()V

    .line 104
    :cond_0
    return-void

    .line 96
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setIndicatorPosition(Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;F)V
    .locals 6
    .param p1, "direction"    # Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;
    .param p2, "position"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 74
    if-nez p1, :cond_0

    .line 75
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 78
    :cond_0
    const/4 v4, 0x0

    invoke-static {p2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 79
    iget-object v4, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mIndicatorDirection:Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;

    if-eq p1, v4, :cond_2

    move v0, v2

    .line 80
    .local v0, "directionChanged":Z
    :goto_0
    iget v4, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mIndicatorPosition:F

    cmpl-float v4, p2, v4

    if-eqz v4, :cond_3

    move v1, v2

    .line 81
    .local v1, "positionChanged":Z
    :goto_1
    iput-object p1, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mIndicatorDirection:Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;

    .line 82
    iput p2, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mIndicatorPosition:F

    .line 84
    if-eqz v0, :cond_4

    .line 85
    invoke-direct {p0}, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->updateGeometry()V

    .line 86
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->invalidateSelf()V

    .line 90
    :cond_1
    :goto_2
    return-void

    .end local v0    # "directionChanged":Z
    .end local v1    # "positionChanged":Z
    :cond_2
    move v0, v3

    .line 79
    goto :goto_0

    .restart local v0    # "directionChanged":Z
    :cond_3
    move v1, v3

    .line 80
    goto :goto_1

    .line 87
    .restart local v1    # "positionChanged":Z
    :cond_4
    if-eqz v1, :cond_1

    .line 88
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->invalidateSelf()V

    goto :goto_2
.end method

.method public setStrokeColor(I)V
    .locals 2
    .param p1, "strokeColor"    # I

    .prologue
    .line 107
    iget-object v1, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    if-eq p1, v1, :cond_1

    const/4 v0, 0x1

    .line 108
    .local v0, "changed":Z
    :goto_0
    iget-object v1, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 110
    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->invalidateSelf()V

    .line 113
    :cond_0
    return-void

    .line 107
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setStrokeWidth(I)V
    .locals 2
    .param p1, "width"    # I

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 64
    iget v1, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mStrokeWidth:I

    if-eq p1, v1, :cond_0

    const/4 v0, 0x1

    .line 65
    .local v0, "changed":Z
    :cond_0
    iput p1, p0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->mStrokeWidth:I

    .line 67
    if-eqz v0, :cond_1

    .line 68
    invoke-direct {p0}, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->updateGeometry()V

    .line 69
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;->invalidateSelf()V

    .line 71
    :cond_1
    return-void
.end method
