.class public Lcom/a/a/a/g;
.super Lcom/a/a/a/a;


# annotations
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
.field private final b:Landroid/graphics/Paint;

.field private final c:Landroid/text/TextPaint;

.field private final d:Landroid/graphics/Paint;

.field private final e:Landroid/graphics/Path;

.field private final f:Landroid/graphics/Path;

.field private g:I

.field private h:Z

.field private i:I


# direct methods
.method public constructor <init>([Lcom/a/a/a/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/a/a/a/a;-><init>([Lcom/a/a/a/c;)V

    const/4 v0, 0x5

    iput v0, p0, Lcom/a/a/a/g;->g:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/a/a/g;->h:Z

    const/16 v0, 0x64

    const/16 v1, 0xac

    const/16 v2, 0xda

    const/16 v3, 0xff

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/a/a/a/g;->i:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/g;->b:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/a/a/a/g;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/a/a/a/g;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/g;->c:Landroid/text/TextPaint;

    iget-object v0, p0, Lcom/a/a/a/g;->c:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/g;->d:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/g;->e:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/g;->f:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public a(Lcom/a/a/b;Landroid/graphics/Canvas;Z)V
    .locals 41

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/a/a/a/g;->b:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/a/a/a/g;->f()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/a/a/a/g;->b:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/a/a/a/g;->g:I

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/a/a/a/g;->d:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/a/a/a/g;->i:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/a/a/a/g;->f:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    invoke-virtual/range {p0 .. p0}, Lcom/a/a/a/g;->g()V

    invoke-virtual/range {p1 .. p1}, Lcom/a/a/b;->getViewport()Lcom/a/a/h;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/a/a/h;->c(Z)D

    move-result-wide v18

    invoke-virtual/range {p1 .. p1}, Lcom/a/a/b;->getViewport()Lcom/a/a/h;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/a/a/h;->b(Z)D

    move-result-wide v28

    if-eqz p3, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/a/a/b;->getSecondScale()Lcom/a/a/g;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/a/a/g;->b(Z)D

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Lcom/a/a/b;->getSecondScale()Lcom/a/a/g;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/a/a/g;->a(Z)D

    move-result-wide v6

    move-wide/from16 v39, v6

    move-wide v6, v8

    move-wide/from16 v8, v39

    :goto_0
    sub-double v30, v6, v8

    sub-double v32, v18, v28

    invoke-virtual/range {p1 .. p1}, Lcom/a/a/b;->getGraphContentHeight()I

    move-result v6

    int-to-float v0, v6

    move/from16 v34, v0

    invoke-virtual/range {p1 .. p1}, Lcom/a/a/b;->getGraphContentWidth()I

    move-result v6

    int-to-float v0, v6

    move/from16 v35, v0

    invoke-virtual/range {p1 .. p1}, Lcom/a/a/b;->getGraphContentLeft()I

    move-result v6

    int-to-float v0, v6

    move/from16 v36, v0

    invoke-virtual/range {p1 .. p1}, Lcom/a/a/b;->getGraphContentTop()I

    move-result v6

    int-to-float v0, v6

    move/from16 v37, v0

    const-wide/16 v16, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v10, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    move-wide/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/a/a/a/g;->a(DD)Ljava/util/Iterator;

    move-result-object v38

    move-wide/from16 v20, v16

    move-wide/from16 v16, v14

    move-wide v14, v12

    move-wide v12, v10

    move v10, v7

    move v7, v6

    :goto_1
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/a/a/a/c;

    invoke-interface {v6}, Lcom/a/a/a/c;->b()D

    move-result-wide v18

    sub-double v18, v18, v8

    div-double v18, v18, v30

    move/from16 v0, v34

    float-to-double v0, v0

    move-wide/from16 v22, v0

    mul-double v22, v22, v18

    invoke-interface {v6}, Lcom/a/a/a/c;->a()D

    move-result-wide v18

    sub-double v18, v18, v28

    div-double v18, v18, v32

    move/from16 v0, v35

    float-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v18, v18, v24

    if-lez v7, :cond_4

    move/from16 v0, v35

    float-to-double v12, v0

    cmpl-double v11, v18, v12

    if-lez v11, :cond_a

    move/from16 v0, v35

    float-to-double v12, v0

    sub-double v12, v12, v16

    sub-double v24, v22, v20

    mul-double v12, v12, v24

    sub-double v24, v18, v16

    div-double v12, v12, v24

    add-double v24, v20, v12

    move/from16 v0, v35

    float-to-double v12, v0

    :goto_2
    const-wide/16 v26, 0x0

    cmpg-double v11, v24, v26

    if-gez v11, :cond_0

    const-wide/16 v26, 0x0

    sub-double v26, v26, v20

    sub-double v12, v12, v16

    mul-double v12, v12, v26

    sub-double v24, v24, v20

    div-double v12, v12, v24

    add-double v12, v12, v16

    const-wide/16 v24, 0x0

    :cond_0
    move/from16 v0, v34

    float-to-double v0, v0

    move-wide/from16 v26, v0

    cmpl-double v11, v24, v26

    if-lez v11, :cond_9

    move/from16 v0, v34

    float-to-double v0, v0

    move-wide/from16 v26, v0

    sub-double v26, v26, v20

    sub-double v12, v12, v16

    mul-double v12, v12, v26

    sub-double v24, v24, v20

    div-double v12, v12, v24

    add-double v12, v12, v16

    move/from16 v0, v34

    float-to-double v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v26, v24

    move-wide/from16 v24, v12

    :goto_3
    const-wide/16 v12, 0x0

    cmpg-double v11, v20, v12

    if-gez v11, :cond_8

    const-wide/16 v12, 0x0

    sub-double v12, v12, v26

    sub-double v16, v24, v16

    mul-double v12, v12, v16

    sub-double v16, v20, v26

    div-double v12, v12, v16

    sub-double v12, v24, v12

    const-wide/16 v16, 0x0

    :goto_4
    const-wide/16 v20, 0x0

    cmpg-double v11, v12, v20

    if-gez v11, :cond_1

    const-wide/16 v20, 0x0

    sub-double v20, v20, v24

    sub-double v16, v26, v16

    mul-double v16, v16, v20

    sub-double v12, v12, v24

    div-double v12, v16, v12

    sub-double v16, v26, v12

    const-wide/16 v12, 0x0

    :cond_1
    move/from16 v0, v34

    float-to-double v0, v0

    move-wide/from16 v20, v0

    cmpl-double v11, v16, v20

    if-lez v11, :cond_2

    move/from16 v0, v34

    float-to-double v0, v0

    move-wide/from16 v20, v0

    sub-double v20, v20, v26

    sub-double v12, v24, v12

    mul-double v12, v12, v20

    sub-double v16, v16, v26

    div-double v12, v12, v16

    sub-double v12, v24, v12

    move/from16 v0, v34

    float-to-double v0, v0

    move-wide/from16 v16, v0

    :cond_2
    double-to-float v11, v12

    const/high16 v12, 0x3f800000    # 1.0f

    add-float v12, v12, v36

    add-float/2addr v11, v12

    move/from16 v0, v37

    float-to-double v12, v0

    sub-double v12, v12, v16

    double-to-float v12, v12

    add-float v12, v12, v34

    move-wide/from16 v0, v24

    double-to-float v13, v0

    const/high16 v16, 0x3f800000    # 1.0f

    add-float v16, v16, v36

    add-float v13, v13, v16

    move/from16 v0, v37

    float-to-double v0, v0

    move-wide/from16 v16, v0

    sub-double v16, v16, v26

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    add-float v16, v16, v34

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v13, v1, v6}, Lcom/a/a/a/g;->a(FFLcom/a/a/a/c;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/a/a/a/g;->e:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/a/a/a/g;->e:Landroid/graphics/Path;

    invoke-virtual {v6, v11, v12}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/a/a/a/g;->e:Landroid/graphics/Path;

    move/from16 v0, v16

    invoke-virtual {v6, v13, v0}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/a/a/a/g;->e:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/a/a/a/g;->b:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v6, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/4 v6, 0x1

    if-ne v7, v6, :cond_3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/a/a/a/g;->f:Landroid/graphics/Path;

    invoke-virtual {v6, v11, v12}, Landroid/graphics/Path;->moveTo(FF)V

    move v10, v11

    :cond_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/a/a/a/g;->f:Landroid/graphics/Path;

    move/from16 v0, v16

    invoke-virtual {v6, v13, v0}, Landroid/graphics/Path;->lineTo(FF)V

    float-to-double v12, v13

    :cond_4
    move-wide/from16 v0, v22

    invoke-static {v14, v15, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    add-int/lit8 v6, v7, 0x1

    move v7, v6

    move-wide/from16 v16, v18

    move-wide/from16 v20, v22

    goto/16 :goto_1

    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/a/a/b;->getViewport()Lcom/a/a/h;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/a/a/h;->e(Z)D

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Lcom/a/a/b;->getViewport()Lcom/a/a/h;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/a/a/h;->d(Z)D

    move-result-wide v6

    move-wide/from16 v39, v6

    move-wide v6, v8

    move-wide/from16 v8, v39

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/a/a/a/g;->f:Landroid/graphics/Path;

    double-to-float v7, v12

    add-float v8, v34, v37

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/a/a/a/g;->f:Landroid/graphics/Path;

    add-float v7, v34, v37

    invoke-virtual {v6, v10, v7}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/a/a/a/g;->f:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/a/a/a/g;->f:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/a/a/a/g;->d:Landroid/graphics/Paint;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual/range {p0 .. p0}, Lcom/a/a/a/g;->e()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, La/a/a/a/e;->d(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-wide/16 v6, 0x0

    cmpl-double v6, v12, v6

    if-lez v6, :cond_7

    float-to-double v6, v10

    add-double/2addr v6, v12

    double-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    move/from16 v0, v37

    float-to-double v8, v0

    sub-double/2addr v8, v14

    double-to-float v7, v8

    add-float v7, v7, v34

    const/high16 v8, 0x41200000    # 10.0f

    sub-float/2addr v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/a/a/a/g;->c:Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Lcom/a/a/a/g;->f()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/text/TextPaint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/a/a/a/g;->c:Landroid/text/TextPaint;

    invoke-virtual/range {p1 .. p1}, Lcom/a/a/b;->getLegendRenderer()Lcom/a/a/e;

    move-result-object v9

    invoke-virtual {v9}, Lcom/a/a/e;->b()F

    move-result v9

    invoke-virtual {v8, v9}, Landroid/text/TextPaint;->setTextSize(F)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/a/a/a/g;->c:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/a/a/a/g;->h:Z

    invoke-virtual {v8, v9}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/a/a/a/g;->e()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/a/a/a/g;->c:Landroid/text/TextPaint;

    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v6, v7, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_7
    return-void

    :cond_8
    move-wide/from16 v12, v16

    move-wide/from16 v16, v20

    goto/16 :goto_4

    :cond_9
    move-wide/from16 v26, v24

    move-wide/from16 v24, v12

    goto/16 :goto_3

    :cond_a
    move-wide/from16 v12, v18

    move-wide/from16 v24, v22

    goto/16 :goto_2
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/a/a/a/g;->h:Z

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/a/a/a/g;->i:I

    return-void
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/a/a/a/g;->g:I

    return-void
.end method
