.class public Lcom/a/a/a/d;
.super Lcom/a/a/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/a/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Lcom/a/a/a/c;",
        ">",
        "Lcom/a/a/a/a",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private b:Lcom/a/a/a/d$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/a/d",
            "<TE;>.a;"
        }
    .end annotation
.end field

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/Path;

.field private f:Landroid/graphics/Path;

.field private g:Landroid/graphics/Paint;

.field private h:Z

.field private i:D

.field private j:J

.field private k:Landroid/view/animation/AccelerateInterpolator;

.field private l:I

.field private m:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/a/a/a/a;-><init>()V

    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    iput-wide v0, p0, Lcom/a/a/a/d;->i:D

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/a/a/d;->m:Z

    invoke-virtual {p0}, Lcom/a/a/a/d;->i()V

    return-void
.end method

.method public constructor <init>([Lcom/a/a/a/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/a/a/a/a;-><init>([Lcom/a/a/a/c;)V

    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    iput-wide v0, p0, Lcom/a/a/a/d;->i:D

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/a/a/d;->m:Z

    invoke-virtual {p0}, Lcom/a/a/a/d;->i()V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;[FLandroid/graphics/Paint;)V
    .locals 0

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    return-void
.end method

.method private j()Z
    .locals 6

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/a/a/a/d;->h:Z

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/a/a/a/d;->j:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x14d

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public a(Lcom/a/a/a/c;ZIZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZIZ)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/a/a/a/d;->j()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/a/a/a/d;->j:J

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/a/a/a/a;->a(Lcom/a/a/a/c;ZIZ)V

    return-void
.end method

.method public a(Lcom/a/a/b;Landroid/graphics/Canvas;Z)V
    .locals 48

    invoke-virtual/range {p0 .. p0}, Lcom/a/a/a/d;->g()V

    invoke-virtual/range {p1 .. p1}, Lcom/a/a/b;->getViewport()Lcom/a/a/h;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/a/a/h;->c(Z)D

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Lcom/a/a/b;->getViewport()Lcom/a/a/h;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/a/a/h;->b(Z)D

    move-result-wide v32

    if-eqz p3, :cond_f

    invoke-virtual/range {p1 .. p1}, Lcom/a/a/b;->getSecondScale()Lcom/a/a/g;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/a/a/g;->b(Z)D

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Lcom/a/a/b;->getSecondScale()Lcom/a/a/g;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/a/a/g;->a(Z)D

    move-result-wide v4

    move-wide/from16 v46, v4

    move-wide v4, v6

    move-wide/from16 v6, v46

    :goto_0
    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2, v10, v11}, Lcom/a/a/a/d;->a(DD)Ljava/util/Iterator;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/a/a/a/d;->c:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/a/a/a/d;->b:Lcom/a/a/a/d$a;

    invoke-static {v9}, Lcom/a/a/a/d$a;->a(Lcom/a/a/a/d$a;)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/a/a/a/d;->c:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/a/a/a/d;->f()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/a/a/a/d;->d:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/a/a/a/d;->b:Lcom/a/a/a/d$a;

    invoke-static {v9}, Lcom/a/a/a/d$a;->b(Lcom/a/a/a/d$a;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/a/a/a/d;->g:Landroid/graphics/Paint;

    if-eqz v8, :cond_10

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/a/a/a/d;->g:Landroid/graphics/Paint;

    :goto_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/a/a/a/d;->f:Landroid/graphics/Path;

    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/a/a/a/d;->b:Lcom/a/a/a/d$a;

    invoke-static {v9}, Lcom/a/a/a/d$a;->c(Lcom/a/a/a/d$a;)Z

    move-result v9

    if-eqz v9, :cond_0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/a/a/a/d;->e:Landroid/graphics/Path;

    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    :cond_0
    sub-double v36, v4, v6

    sub-double v38, v10, v32

    invoke-virtual/range {p1 .. p1}, Lcom/a/a/b;->getGraphContentHeight()I

    move-result v4

    int-to-float v0, v4

    move/from16 v35, v0

    invoke-virtual/range {p1 .. p1}, Lcom/a/a/b;->getGraphContentWidth()I

    move-result v4

    int-to-float v0, v4

    move/from16 v40, v0

    invoke-virtual/range {p1 .. p1}, Lcom/a/a/b;->getGraphContentLeft()I

    move-result v4

    int-to-float v9, v4

    invoke-virtual/range {p1 .. p1}, Lcom/a/a/b;->getGraphContentTop()I

    move-result v4

    int-to-float v0, v4

    move/from16 v41, v0

    const-wide/16 v18, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v12, 0x0

    const/high16 v11, -0x40800000    # -1.0f

    const/high16 v10, -0x40800000    # -1.0f

    const/4 v5, 0x0

    const/4 v4, 0x0

    move-wide/from16 v22, v18

    move-wide/from16 v18, v16

    move-wide/from16 v16, v14

    move-wide v14, v12

    move v13, v11

    move v12, v10

    move v11, v5

    move v10, v4

    move v5, v9

    :goto_2
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/a/a/a/c;

    invoke-interface {v4}, Lcom/a/a/a/c;->b()D

    move-result-wide v20

    sub-double v20, v20, v6

    div-double v20, v20, v36

    move/from16 v0, v35

    float-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v24, v24, v20

    invoke-interface {v4}, Lcom/a/a/a/c;->a()D

    move-result-wide v42

    sub-double v20, v42, v32

    div-double v20, v20, v38

    move/from16 v0, v40

    float-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v20, v20, v26

    if-lez v10, :cond_17

    const/16 v26, 0x0

    const/4 v15, 0x0

    const/4 v14, 0x0

    move/from16 v0, v40

    float-to-double v0, v0

    move-wide/from16 v16, v0

    cmpl-double v16, v20, v16

    if-lez v16, :cond_28

    move/from16 v0, v40

    float-to-double v0, v0

    move-wide/from16 v16, v0

    sub-double v16, v16, v18

    sub-double v28, v24, v22

    mul-double v16, v16, v28

    sub-double v28, v20, v18

    div-double v16, v16, v28

    add-double v28, v22, v16

    move/from16 v0, v40

    float-to-double v0, v0

    move-wide/from16 v16, v0

    const/4 v15, 0x1

    :goto_3
    const-wide/16 v30, 0x0

    cmpg-double v27, v28, v30

    if-gez v27, :cond_1

    const-wide/16 v26, 0x0

    cmpg-double v15, v22, v26

    if-gez v15, :cond_11

    const/4 v14, 0x1

    :goto_4
    const-wide/16 v28, 0x0

    const/4 v15, 0x1

    move/from16 v26, v15

    :cond_1
    move/from16 v0, v35

    float-to-double v0, v0

    move-wide/from16 v30, v0

    cmpl-double v27, v28, v30

    if-lez v27, :cond_27

    move/from16 v0, v35

    float-to-double v0, v0

    move-wide/from16 v26, v0

    cmpl-double v15, v22, v26

    if-lez v15, :cond_12

    const/4 v14, 0x1

    :goto_5
    move/from16 v0, v35

    float-to-double v0, v0

    move-wide/from16 v26, v0

    const/4 v15, 0x1

    move-wide/from16 v28, v16

    move-wide/from16 v30, v26

    move/from16 v17, v15

    move/from16 v16, v14

    move/from16 v26, v15

    :goto_6
    const-wide/16 v14, 0x0

    cmpg-double v14, v18, v14

    if-gez v14, :cond_26

    const-wide/16 v14, 0x0

    sub-double v14, v14, v28

    sub-double v22, v30, v22

    mul-double v14, v14, v22

    sub-double v18, v18, v28

    div-double v14, v14, v18

    sub-double v22, v30, v14

    const-wide/16 v14, 0x0

    :goto_7
    double-to-float v0, v14

    move/from16 v18, v0

    const/high16 v19, 0x3f800000    # 1.0f

    add-float v19, v19, v9

    add-float v18, v18, v19

    const-wide/16 v44, 0x0

    cmpg-double v19, v22, v44

    if-gez v19, :cond_3

    if-nez v16, :cond_2

    const-wide/16 v44, 0x0

    sub-double v44, v44, v30

    sub-double v14, v28, v14

    mul-double v14, v14, v44

    sub-double v22, v22, v30

    div-double v14, v14, v22

    sub-double v14, v28, v14

    :cond_2
    const-wide/16 v22, 0x0

    const/16 v17, 0x1

    :cond_3
    move/from16 v0, v35

    float-to-double v0, v0

    move-wide/from16 v44, v0

    cmpl-double v19, v22, v44

    if-lez v19, :cond_25

    if-nez v16, :cond_4

    move/from16 v0, v35

    float-to-double v0, v0

    move-wide/from16 v44, v0

    sub-double v44, v44, v30

    sub-double v14, v28, v14

    mul-double v14, v14, v44

    sub-double v22, v22, v30

    div-double v14, v14, v22

    sub-double v14, v28, v14

    :cond_4
    move/from16 v0, v35

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const/16 v17, 0x1

    move/from16 v19, v17

    :goto_8
    double-to-float v14, v14

    const/high16 v15, 0x3f800000    # 1.0f

    add-float/2addr v15, v9

    add-float/2addr v14, v15

    move/from16 v0, v41

    float-to-double v0, v0

    move-wide/from16 v44, v0

    sub-double v22, v44, v22

    move-wide/from16 v0, v22

    double-to-float v15, v0

    add-float v17, v15, v35

    move-wide/from16 v0, v28

    double-to-float v15, v0

    const/high16 v22, 0x3f800000    # 1.0f

    add-float v22, v22, v9

    add-float v15, v15, v22

    move/from16 v0, v41

    float-to-double v0, v0

    move-wide/from16 v22, v0

    sub-double v22, v22, v30

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v22, v0

    add-float v22, v22, v35

    cmpg-float v23, v15, v14

    if-gez v23, :cond_5

    const/16 v16, 0x1

    :cond_5
    if-nez v16, :cond_b

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->isNaN(F)Z

    move-result v16

    if-nez v16, :cond_b

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->isNaN(F)Z

    move-result v16

    if-nez v16, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/a/a/a/d;->h:Z

    move/from16 v16, v0

    if-eqz v16, :cond_24

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/a/a/a/d;->i:D

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Double;->isNaN(D)Z

    move-result v16

    if-nez v16, :cond_6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/a/a/a/d;->i:D

    move-wide/from16 v28, v0

    cmpg-double v16, v28, v42

    if-gez v16, :cond_15

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/a/a/a/d;->j:J

    move-wide/from16 v30, v0

    const-wide/16 v44, 0x0

    cmp-long v16, v30, v44

    if-nez v16, :cond_13

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/a/a/a/d;->j:J

    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/a/a/a/d;->l:I

    :cond_7
    :goto_9
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/a/a/a/d;->j:J

    move-wide/from16 v30, v0

    sub-long v28, v28, v30

    move-wide/from16 v0, v28

    long-to-float v0, v0

    move/from16 v16, v0

    const v23, 0x43a68000    # 333.0f

    div-float v16, v16, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/a/a/a/d;->k:Landroid/view/animation/AccelerateInterpolator;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v23

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v28, v0

    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    cmpg-double v16, v28, v30

    if-gtz v16, :cond_14

    sub-float/2addr v14, v5

    mul-float v14, v14, v23

    add-float/2addr v14, v5

    invoke-static {v14, v5}, Ljava/lang/Math;->max(FF)F

    move-result v16

    sub-float v14, v15, v5

    mul-float v14, v14, v23

    add-float/2addr v14, v5

    invoke-static/range {p1 .. p1}, Landroid/support/v4/h/ae;->c(Landroid/view/View;)V

    :goto_a
    move/from16 v46, v14

    move/from16 v14, v16

    move/from16 v16, v5

    move/from16 v5, v46

    :goto_b
    if-nez v26, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/a/a/a/d;->b:Lcom/a/a/a/d$a;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/a/a/a/d$a;->d(Lcom/a/a/a/d$a;)Z

    move-result v23

    if-eqz v23, :cond_8

    invoke-virtual {v8}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v23

    sget-object v26, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/a/a/a/d;->b:Lcom/a/a/a/d$a;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/a/a/a/d$a;->e(Lcom/a/a/a/d$a;)F

    move-result v26

    move-object/from16 v0, p2

    move/from16 v1, v22

    move/from16 v2, v26

    invoke-virtual {v0, v5, v1, v2, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v15, v1, v4}, Lcom/a/a/a/d;->a(FFLcom/a/a/a/c;)V

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/a/a/a/d;->m:Z

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a/a/a/d;->f:Landroid/graphics/Path;

    move/from16 v0, v17

    invoke-virtual {v4, v14, v0}, Landroid/graphics/Path;->moveTo(FF)V

    :cond_a
    sub-float v4, v15, v11

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v23, 0x3e99999a    # 0.3f

    cmpl-float v4, v4, v23

    if-lez v4, :cond_23

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/a/a/a/d;->m:Z

    if-eqz v4, :cond_16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a/a/a/d;->f:Landroid/graphics/Path;

    move/from16 v0, v22

    invoke-virtual {v4, v5, v0}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_c
    move v11, v15

    move v15, v5

    move/from16 v5, v16

    :cond_b
    :goto_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a/a/a/d;->b:Lcom/a/a/a/d$a;

    invoke-static {v4}, Lcom/a/a/a/d$a;->c(Lcom/a/a/a/d$a;)Z

    move-result v4

    if-eqz v4, :cond_22

    if-eqz v19, :cond_d

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v4, v13, v4

    if-nez v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a/a/a/d;->e:Landroid/graphics/Path;

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    move/from16 v12, v17

    move/from16 v13, v18

    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a/a/a/d;->e:Landroid/graphics/Path;

    move/from16 v0, v17

    invoke-virtual {v4, v14, v0}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_d
    move v4, v12

    move v12, v13

    const/high16 v13, -0x40800000    # -1.0f

    cmpl-float v13, v12, v13

    if-nez v13, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a/a/a/d;->e:Landroid/graphics/Path;

    move/from16 v0, v17

    invoke-virtual {v4, v14, v0}, Landroid/graphics/Path;->moveTo(FF)V

    move/from16 v4, v17

    move v12, v14

    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/a/a/a/d;->e:Landroid/graphics/Path;

    move/from16 v0, v17

    invoke-virtual {v13, v14, v0}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/a/a/a/d;->e:Landroid/graphics/Path;

    move/from16 v0, v22

    invoke-virtual {v13, v15, v0}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_e
    float-to-double v0, v15

    move-wide/from16 v16, v0

    move/from16 v0, v22

    float-to-double v14, v0

    move v13, v12

    move v12, v4

    move v4, v5

    :goto_f
    add-int/lit8 v5, v10, 0x1

    move v10, v5

    move-wide/from16 v18, v20

    move-wide/from16 v22, v24

    move v5, v4

    goto/16 :goto_2

    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/a/a/b;->getViewport()Lcom/a/a/h;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/a/a/h;->e(Z)D

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Lcom/a/a/b;->getViewport()Lcom/a/a/h;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/a/a/h;->d(Z)D

    move-result-wide v4

    move-wide/from16 v46, v4

    move-wide v4, v6

    move-wide/from16 v6, v46

    goto/16 :goto_0

    :cond_10
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/a/a/a/d;->c:Landroid/graphics/Paint;

    goto/16 :goto_1

    :cond_11
    const-wide/16 v26, 0x0

    sub-double v26, v26, v22

    sub-double v16, v16, v18

    mul-double v16, v16, v26

    sub-double v26, v28, v22

    div-double v16, v16, v26

    add-double v16, v16, v18

    goto/16 :goto_4

    :cond_12
    move/from16 v0, v35

    float-to-double v0, v0

    move-wide/from16 v26, v0

    sub-double v26, v26, v22

    sub-double v16, v16, v18

    mul-double v16, v16, v26

    sub-double v26, v28, v22

    div-double v16, v16, v26

    add-double v16, v16, v18

    goto/16 :goto_5

    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/a/a/a/d;->l:I

    move/from16 v16, v0

    const/16 v23, 0xf

    move/from16 v0, v16

    move/from16 v1, v23

    if-ge v0, v1, :cond_7

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/a/a/a/d;->j:J

    move-object/from16 v0, p0

    iget v0, v0, Lcom/a/a/a/d;->l:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/a/a/a/d;->l:I

    goto/16 :goto_9

    :cond_14
    move-wide/from16 v0, v42

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/a/a/a/d;->i:D

    move/from16 v16, v14

    move v14, v15

    goto/16 :goto_a

    :cond_15
    move v5, v15

    move/from16 v16, v15

    goto/16 :goto_b

    :cond_16
    const/4 v4, 0x4

    new-array v4, v4, [F

    const/4 v11, 0x0

    aput v14, v4, v11

    const/4 v11, 0x1

    aput v17, v4, v11

    const/4 v11, 0x2

    aput v5, v4, v11

    const/4 v11, 0x3

    aput v22, v4, v11

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v4, v8}, Lcom/a/a/a/d;->a(Landroid/graphics/Canvas;[FLandroid/graphics/Paint;)V

    goto/16 :goto_c

    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a/a/a/d;->b:Lcom/a/a/a/d$a;

    invoke-static {v4}, Lcom/a/a/a/d$a;->d(Lcom/a/a/a/d$a;)Z

    move-result v4

    if-eqz v4, :cond_1b

    move-wide/from16 v0, v20

    double-to-float v4, v0

    const/high16 v18, 0x3f800000    # 1.0f

    add-float v18, v18, v9

    add-float v4, v4, v18

    move/from16 v0, v41

    float-to-double v0, v0

    move-wide/from16 v18, v0

    sub-double v18, v18, v24

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    add-float v18, v18, v35

    cmpl-float v19, v4, v9

    if-ltz v19, :cond_1b

    add-float v19, v41, v35

    cmpg-float v19, v18, v19

    if-gtz v19, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/a/a/a/d;->h:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1a

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/a/a/a/d;->i:D

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->isNaN(D)Z

    move-result v19

    if-nez v19, :cond_18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/a/a/a/d;->i:D

    move-wide/from16 v22, v0

    cmpg-double v19, v22, v42

    if-gez v19, :cond_1a

    :cond_18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/a/a/a/d;->j:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x0

    cmp-long v19, v26, v28

    if-nez v19, :cond_19

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/a/a/a/d;->j:J

    :cond_19
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/a/a/a/d;->j:J

    move-wide/from16 v26, v0

    sub-long v22, v22, v26

    move-wide/from16 v0, v22

    long-to-float v0, v0

    move/from16 v19, v0

    const v22, 0x43a68000    # 333.0f

    div-float v19, v19, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/a/a/a/d;->k:Landroid/view/animation/AccelerateInterpolator;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v22

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    cmpg-double v19, v26, v28

    if-gtz v19, :cond_1c

    sub-float/2addr v4, v5

    mul-float v4, v4, v22

    add-float/2addr v4, v5

    invoke-static/range {p1 .. p1}, Landroid/support/v4/h/ae;->c(Landroid/view/View;)V

    :cond_1a
    :goto_10
    invoke-virtual {v8}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v19

    sget-object v22, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/a/a/a/d;->b:Lcom/a/a/a/d$a;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/a/a/a/d$a;->e(Lcom/a/a/a/d$a;)F

    move-result v22

    move-object/from16 v0, p2

    move/from16 v1, v18

    move/from16 v2, v22

    invoke-virtual {v0, v4, v1, v2, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_1b
    move v4, v5

    goto/16 :goto_f

    :cond_1c
    move-wide/from16 v0, v42

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/a/a/a/d;->i:D

    goto :goto_10

    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/a/a/a/d;->m:Z

    if-eqz v4, :cond_1e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a/a/a/d;->f:Landroid/graphics/Path;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a/a/a/d;->b:Lcom/a/a/a/d$a;

    invoke-static {v4}, Lcom/a/a/a/d$a;->c(Lcom/a/a/a/d$a;)Z

    move-result v4

    if-eqz v4, :cond_21

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v4, v13, v4

    if-eqz v4, :cond_21

    add-float v4, v35, v41

    float-to-double v4, v4

    cmpl-double v4, v14, v4

    if-eqz v4, :cond_1f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a/a/a/d;->e:Landroid/graphics/Path;

    move-wide/from16 v0, v16

    double-to-float v5, v0

    add-float v6, v35, v41

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a/a/a/d;->e:Landroid/graphics/Path;

    add-float v5, v35, v41

    invoke-virtual {v4, v13, v5}, Landroid/graphics/Path;->lineTo(FF)V

    add-float v4, v35, v41

    cmpl-float v4, v12, v4

    if-eqz v4, :cond_20

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a/a/a/d;->e:Landroid/graphics/Path;

    invoke-virtual {v4, v13, v12}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a/a/a/d;->e:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/a/a/a/d;->d:Landroid/graphics/Paint;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_21
    return-void

    :cond_22
    move v4, v12

    move v12, v13

    goto/16 :goto_e

    :cond_23
    move v15, v5

    move/from16 v5, v16

    goto/16 :goto_d

    :cond_24
    move/from16 v16, v5

    move v5, v15

    goto/16 :goto_b

    :cond_25
    move/from16 v19, v17

    goto/16 :goto_8

    :cond_26
    move-wide/from16 v14, v18

    goto/16 :goto_7

    :cond_27
    move-wide/from16 v30, v28

    move-wide/from16 v28, v16

    move/from16 v17, v26

    move/from16 v16, v14

    move/from16 v26, v15

    goto/16 :goto_6

    :cond_28
    move-wide/from16 v16, v20

    move-wide/from16 v28, v24

    goto/16 :goto_3
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/a/a/a/d;->b:Lcom/a/a/a/d$a;

    invoke-static {v0, p1}, Lcom/a/a/a/d$a;->a(Lcom/a/a/a/d$a;Z)Z

    return-void
.end method

.method public b(I)V
    .locals 1

    iget-object v0, p0, Lcom/a/a/a/d;->b:Lcom/a/a/a/d$a;

    invoke-static {v0, p1}, Lcom/a/a/a/d$a;->a(Lcom/a/a/a/d$a;I)I

    return-void
.end method

.method protected i()V
    .locals 2

    new-instance v0, Lcom/a/a/a/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/a/a/a/d$a;-><init>(Lcom/a/a/a/d;Lcom/a/a/a/d$1;)V

    iput-object v0, p0, Lcom/a/a/a/d;->b:Lcom/a/a/a/d$a;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/d;->c:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/a/a/a/d;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/a/a/a/d;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/d;->d:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/d;->e:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/d;->f:Landroid/graphics/Path;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/a/a/a/d;->k:Landroid/view/animation/AccelerateInterpolator;

    return-void
.end method
