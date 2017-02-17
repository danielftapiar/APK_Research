.class public Lcom/a/a/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/e$a;,
        Lcom/a/a/e$b;
    }
.end annotation


# instance fields
.field private a:Lcom/a/a/e$b;

.field private final b:Lcom/a/a/b;

.field private c:Z

.field private d:Landroid/graphics/Paint;

.field private e:I


# direct methods
.method public constructor <init>(Lcom/a/a/b;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/e;->b:Lcom/a/a/b;

    iput-boolean v2, p0, Lcom/a/a/e;->c:Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/a/a/e;->d:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/a/a/e;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    new-instance v0, Lcom/a/a/e$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/a/a/e$b;-><init>(Lcom/a/a/e;Lcom/a/a/e$1;)V

    iput-object v0, p0, Lcom/a/a/e;->a:Lcom/a/a/e$b;

    iput v2, p0, Lcom/a/a/e;->e:I

    invoke-virtual {p0}, Lcom/a/a/e;->a()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    const/4 v7, 0x1

    const/high16 v1, -0x1000000

    const/high16 v5, 0x40a00000    # 5.0f

    const/16 v4, 0x64

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/a/a/e;->a:Lcom/a/a/e$b;

    sget-object v2, Lcom/a/a/e$a;->b:Lcom/a/a/e$a;

    iput-object v2, v0, Lcom/a/a/e$b;->h:Lcom/a/a/e$a;

    iget-object v0, p0, Lcom/a/a/e;->a:Lcom/a/a/e$b;

    iget-object v2, p0, Lcom/a/a/e;->b:Lcom/a/a/b;

    invoke-virtual {v2}, Lcom/a/a/b;->getGridLabelRenderer()Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/c;->d()F

    move-result v2

    iput v2, v0, Lcom/a/a/e$b;->a:F

    iget-object v0, p0, Lcom/a/a/e;->a:Lcom/a/a/e$b;

    iget-object v2, p0, Lcom/a/a/e;->a:Lcom/a/a/e$b;

    iget v2, v2, Lcom/a/a/e$b;->a:F

    div-float/2addr v2, v5

    float-to-int v2, v2

    iput v2, v0, Lcom/a/a/e$b;->b:I

    iget-object v0, p0, Lcom/a/a/e;->a:Lcom/a/a/e$b;

    iget-object v2, p0, Lcom/a/a/e;->a:Lcom/a/a/e$b;

    iget v2, v2, Lcom/a/a/e$b;->a:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Lcom/a/a/e$b;->c:I

    iget-object v0, p0, Lcom/a/a/e;->a:Lcom/a/a/e$b;

    iput v6, v0, Lcom/a/a/e$b;->d:I

    iget-object v0, p0, Lcom/a/a/e;->a:Lcom/a/a/e$b;

    const/16 v2, 0xb4

    invoke-static {v2, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    iput v2, v0, Lcom/a/a/e$b;->e:I

    iget-object v0, p0, Lcom/a/a/e;->a:Lcom/a/a/e$b;

    iget-object v2, p0, Lcom/a/a/e;->a:Lcom/a/a/e$b;

    iget v2, v2, Lcom/a/a/e$b;->a:F

    div-float/2addr v2, v5

    float-to-int v2, v2

    iput v2, v0, Lcom/a/a/e$b;->g:I

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v2, p0, Lcom/a/a/e;->b:Lcom/a/a/b;

    invoke-virtual {v2}, Lcom/a/a/b;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010042

    invoke-virtual {v2, v3, v0, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    :try_start_0
    iget-object v2, p0, Lcom/a/a/e;->b:Lcom/a/a/b;

    invoke-virtual {v2}, Lcom/a/a/b;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v0, v0, Landroid/util/TypedValue;->data:I

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const v5, 0x1010036

    aput v5, v3, v4

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v0, 0x0

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/a/a/e;->a:Lcom/a/a/e$b;

    iput v0, v1, Lcom/a/a/e$b;->f:I

    iput v6, p0, Lcom/a/a/e;->e:I

    return-void

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public a(F)V
    .locals 1

    iget-object v0, p0, Lcom/a/a/e;->a:Lcom/a/a/e$b;

    iput p1, v0, Lcom/a/a/e$b;->a:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/a/a/e;->e:I

    return-void
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/a/a/e;->a:Lcom/a/a/e$b;

    iput p1, v0, Lcom/a/a/e$b;->d:I

    return-void
.end method

.method public a(II)V
    .locals 2

    iget-object v0, p0, Lcom/a/a/e;->a:Lcom/a/a/e$b;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, v0, Lcom/a/a/e$b;->i:Landroid/graphics/Point;

    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 14

    const/4 v3, 0x0

    const/high16 v9, 0x41000000    # 8.0f

    iget-boolean v0, p0, Lcom/a/a/e;->c:Z

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/a/a/e;->d:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/a/a/e;->a:Lcom/a/a/e$b;

    iget v1, v1, Lcom/a/a/e$b;->a:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/a/a/e;->a:Lcom/a/a/e$b;

    iget v0, v0, Lcom/a/a/e$b;->a:F

    float-to-double v0, v0

    const-wide v4, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v0, v4

    double-to-int v4, v0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/a/a/e;->b:Lcom/a/a/b;

    invoke-virtual {v0}, Lcom/a/a/b;->getSeries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/a/a/e;->b:Lcom/a/a/b;

    iget-object v0, v0, Lcom/a/a/b;->a:Lcom/a/a/g;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/a/a/e;->b:Lcom/a/a/b;

    invoke-virtual {v0}, Lcom/a/a/b;->getSecondScale()Lcom/a/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/g;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    iget-object v0, p0, Lcom/a/a/e;->a:Lcom/a/a/e$b;

    iget v0, v0, Lcom/a/a/e$b;->d:I

    if-nez v0, :cond_5

    iget v0, p0, Lcom/a/a/e;->e:I

    if-nez v0, :cond_5

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v0

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/f;

    invoke-interface {v0}, Lcom/a/a/a/f;->e()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/a/a/e;->d:Landroid/graphics/Paint;

    invoke-interface {v0}, Lcom/a/a/a/f;->e()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0}, Lcom/a/a/a/f;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v7, v8, v3, v0, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    if-nez v1, :cond_4

    const/4 v1, 0x1

    :cond_4
    iget-object v0, p0, Lcom/a/a/e;->a:Lcom/a/a/e$b;

    iget v0, v0, Lcom/a/a/e$b;->c:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v4

    iget-object v2, p0, Lcom/a/a/e;->a:Lcom/a/a/e$b;

    iget v2, v2, Lcom/a/a/e$b;->b:I

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/a/a/e;->e:I

    :cond_5
    iget-object v1, p0, Lcom/a/a/e;->a:Lcom/a/a/e$b;

    iget v1, v1, Lcom/a/a/e$b;->a:F

    iget-object v2, p0, Lcom/a/a/e;->a:Lcom/a/a/e$b;

    iget v2, v2, Lcom/a/a/e$b;->b:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/a/a/e;->a:Lcom/a/a/e$b;

    iget v2, v2, Lcom/a/a/e$b;->b:I

    int-to-float v2, v2

    sub-float v6, v1, v2

    iget-object v1, p0, Lcom/a/a/e;->a:Lcom/a/a/e$b;

    iget-object v1, v1, Lcom/a/a/e$b;->i:Landroid/graphics/Point;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/a/a/e;->b:Lcom/a/a/b;

    invoke-virtual {v1}, Lcom/a/a/b;->getGraphContentLeft()I

    move-result v1

    iget-object v2, p0, Lcom/a/a/e;->a:Lcom/a/a/e$b;

    iget v2, v2, Lcom/a/a/e$b;->g:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/a/a/e;->a:Lcom/a/a/e$b;

    iget-object v2, v2, Lcom/a/a/e$b;->i:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    add-int/2addr v1, v2

    int-to-float v2, v1

    iget-object v1, p0, Lcom/a/a/e;->b:Lcom/a/a/b;

    invoke-virtual {v1}, Lcom/a/a/b;->getGraphContentTop()I

    move-result v1

    iget-object v7, p0, Lcom/a/a/e;->a:Lcom/a/a/e$b;

    iget v7, v7, Lcom/a/a/e$b;->g:I

    add-int/2addr v1, v7

    iget-object v7, p0, Lcom/a/a/e;->a:Lcom/a/a/e$b;

    iget-object v7, v7, Lcom/a/a/e$b;->i:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    add-int/2addr v1, v7

    int-to-float v1, v1

    :goto_2
    int-to-float v0, v0

    add-float/2addr v0, v2

    add-float/2addr v6, v1

    iget-object v7, p0, Lcom/a/a/e;->a:Lcom/a/a/e$b;

    iget v7, v7, Lcom/a/a/e$b;->c:I

    mul-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/a/a/e;->d:Landroid/graphics/Paint;

    iget-object v8, p0, Lcom/a/a/e;->a:Lcom/a/a/e$b;

    iget v8, v8, Lcom/a/a/e$b;->e:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7, v2, v1, v0, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v0, p0, Lcom/a/a/e;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v9, v9, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/f;

    iget-object v6, p0, Lcom/a/a/e;->d:Landroid/graphics/Paint;

    invoke-interface {v0}, Lcom/a/a/a/f;->f()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v6, Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/a/a/e;->a:Lcom/a/a/e$b;

    iget v7, v7, Lcom/a/a/e$b;->c:I

    int-to-float v7, v7

    add-float/2addr v7, v2

    iget-object v8, p0, Lcom/a/a/e;->a:Lcom/a/a/e$b;

    iget v8, v8, Lcom/a/a/e$b;->c:I

    int-to-float v8, v8

    add-float/2addr v8, v1

    int-to-float v9, v3

    iget-object v10, p0, Lcom/a/a/e;->a:Lcom/a/a/e$b;

    iget v10, v10, Lcom/a/a/e$b;->a:F

    iget-object v11, p0, Lcom/a/a/e;->a:Lcom/a/a/e$b;

    iget v11, v11, Lcom/a/a/e$b;->b:I

    int-to-float v11, v11

    add-float/2addr v10, v11

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/a/a/e;->a:Lcom/a/a/e$b;

    iget v9, v9, Lcom/a/a/e$b;->c:I

    int-to-float v9, v9

    add-float/2addr v9, v2

    int-to-float v10, v4

    add-float/2addr v9, v10

    iget-object v10, p0, Lcom/a/a/e;->a:Lcom/a/a/e$b;

    iget v10, v10, Lcom/a/a/e$b;->c:I

    int-to-float v10, v10

    add-float/2addr v10, v1

    int-to-float v11, v3

    iget-object v12, p0, Lcom/a/a/e;->a:Lcom/a/a/e$b;

    iget v12, v12, Lcom/a/a/e$b;->a:F

    iget-object v13, p0, Lcom/a/a/e;->a:Lcom/a/a/e$b;

    iget v13, v13, Lcom/a/a/e$b;->b:I

    int-to-float v13, v13

    add-float/2addr v12, v13

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    int-to-float v11, v4

    add-float/2addr v10, v11

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v7, p0, Lcom/a/a/e;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-interface {v0}, Lcom/a/a/a/f;->e()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/a/a/e;->d:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/a/a/e;->a:Lcom/a/a/e$b;

    iget v7, v7, Lcom/a/a/e$b;->f:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    invoke-interface {v0}, Lcom/a/a/a/f;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/a/a/e;->a:Lcom/a/a/e$b;

    iget v6, v6, Lcom/a/a/e$b;->c:I

    int-to-float v6, v6

    add-float/2addr v6, v2

    int-to-float v7, v4

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/a/a/e;->a:Lcom/a/a/e$b;

    iget v7, v7, Lcom/a/a/e$b;->b:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/a/a/e;->a:Lcom/a/a/e$b;

    iget v7, v7, Lcom/a/a/e$b;->c:I

    int-to-float v7, v7

    add-float/2addr v7, v1

    iget-object v8, p0, Lcom/a/a/e;->a:Lcom/a/a/e$b;

    iget v8, v8, Lcom/a/a/e$b;->a:F

    add-float/2addr v7, v8

    int-to-float v8, v3

    iget-object v9, p0, Lcom/a/a/e;->a:Lcom/a/a/e$b;

    iget v9, v9, Lcom/a/a/e$b;->a:F

    iget-object v10, p0, Lcom/a/a/e;->a:Lcom/a/a/e$b;

    iget v10, v10, Lcom/a/a/e$b;->b:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/a/a/e;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_6
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_3

    :cond_7
    iget-object v1, p0, Lcom/a/a/e;->b:Lcom/a/a/b;

    invoke-virtual {v1}, Lcom/a/a/b;->getGraphContentLeft()I

    move-result v1

    iget-object v2, p0, Lcom/a/a/e;->b:Lcom/a/a/b;

    invoke-virtual {v2}, Lcom/a/a/b;->getGraphContentWidth()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v1, v0

    iget-object v2, p0, Lcom/a/a/e;->a:Lcom/a/a/e$b;

    iget v2, v2, Lcom/a/a/e$b;->g:I

    sub-int/2addr v1, v2

    int-to-float v2, v1

    sget-object v1, Lcom/a/a/e$1;->a:[I

    iget-object v7, p0, Lcom/a/a/e;->a:Lcom/a/a/e$b;

    iget-object v7, v7, Lcom/a/a/e$b;->h:Lcom/a/a/e$a;

    invoke-virtual {v7}, Lcom/a/a/e$a;->ordinal()I

    move-result v7

    aget v1, v1, v7

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/a/a/e;->b:Lcom/a/a/b;

    invoke-virtual {v1}, Lcom/a/a/b;->getGraphContentTop()I

    move-result v1

    iget-object v7, p0, Lcom/a/a/e;->b:Lcom/a/a/b;

    invoke-virtual {v7}, Lcom/a/a/b;->getGraphContentHeight()I

    move-result v7

    add-int/2addr v1, v7

    iget-object v7, p0, Lcom/a/a/e;->a:Lcom/a/a/e$b;

    iget v7, v7, Lcom/a/a/e$b;->g:I

    sub-int/2addr v1, v7

    int-to-float v1, v1

    sub-float/2addr v1, v6

    iget-object v7, p0, Lcom/a/a/e;->a:Lcom/a/a/e$b;

    iget v7, v7, Lcom/a/a/e$b;->c:I

    mul-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr v1, v7

    goto/16 :goto_2

    :pswitch_0
    iget-object v1, p0, Lcom/a/a/e;->b:Lcom/a/a/b;

    invoke-virtual {v1}, Lcom/a/a/b;->getGraphContentTop()I

    move-result v1

    iget-object v7, p0, Lcom/a/a/e;->a:Lcom/a/a/e$b;

    iget v7, v7, Lcom/a/a/e$b;->g:I

    add-int/2addr v1, v7

    int-to-float v1, v1

    goto/16 :goto_2

    :pswitch_1
    iget-object v1, p0, Lcom/a/a/e;->b:Lcom/a/a/b;

    invoke-virtual {v1}, Lcom/a/a/b;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const/high16 v7, 0x40000000    # 2.0f

    div-float v7, v6, v7

    sub-float/2addr v1, v7

    goto/16 :goto_2

    :cond_8
    move v0, v1

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Lcom/a/a/e$a;)V
    .locals 1

    iget-object v0, p0, Lcom/a/a/e;->a:Lcom/a/a/e$b;

    iput-object p1, v0, Lcom/a/a/e$b;->h:Lcom/a/a/e$a;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/a/a/e;->c:Z

    return-void
.end method

.method public b()F
    .locals 1

    iget-object v0, p0, Lcom/a/a/e;->a:Lcom/a/a/e$b;

    iget v0, v0, Lcom/a/a/e$b;->a:F

    return v0
.end method
