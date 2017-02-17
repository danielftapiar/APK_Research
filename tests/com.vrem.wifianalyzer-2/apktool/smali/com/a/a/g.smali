.class public Lcom/a/a/g;
.super Ljava/lang/Object;


# instance fields
.field protected final a:Lcom/a/a/b;

.field protected b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/a/a/a/f;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Lcom/a/a/f;

.field protected d:Lcom/a/a/f;

.field protected e:Lcom/a/a/d;

.field protected f:D

.field public g:F

.field public h:I

.field private i:Z

.field private j:Landroid/graphics/Paint;

.field private k:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/a/a/b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/g;->i:Z

    new-instance v0, Lcom/a/a/f;

    invoke-direct {v0}, Lcom/a/a/f;-><init>()V

    iput-object v0, p0, Lcom/a/a/g;->c:Lcom/a/a/f;

    new-instance v0, Lcom/a/a/f;

    invoke-direct {v0}, Lcom/a/a/f;-><init>()V

    iput-object v0, p0, Lcom/a/a/g;->d:Lcom/a/a/f;

    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    iput-wide v0, p0, Lcom/a/a/g;->f:D

    iput-object p1, p0, Lcom/a/a/g;->a:Lcom/a/a/b;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/a/g;->b:Ljava/util/List;

    new-instance v0, Lcom/a/a/a;

    invoke-direct {v0}, Lcom/a/a/a;-><init>()V

    iput-object v0, p0, Lcom/a/a/g;->e:Lcom/a/a/d;

    iget-object v0, p0, Lcom/a/a/g;->e:Lcom/a/a/d;

    iget-object v1, p0, Lcom/a/a/g;->a:Lcom/a/a/b;

    invoke-virtual {v1}, Lcom/a/a/b;->getViewport()Lcom/a/a/h;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/a/a/d;->a(Lcom/a/a/h;)V

    return-void
.end method


# virtual methods
.method public a(Z)D
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/a/a/g;->c:Lcom/a/a/f;

    iget-wide v0, v0, Lcom/a/a/f;->d:D

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/g;->d:Lcom/a/a/f;

    iget-wide v0, v0, Lcom/a/a/f;->d:D

    goto :goto_0
.end method

.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/a/a/a/f;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/g;->b:Ljava/util/List;

    return-object v0
.end method

.method public a(F)V
    .locals 0

    iput p1, p0, Lcom/a/a/g;->g:F

    return-void
.end method

.method protected a(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/a/a/g;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/g;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/a/a/g;->j:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/a/a/g;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/a/a/g;->j:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/a/a/g;->f()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/a/a/g;->f()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v2, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v2, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v2, p0, Lcom/a/a/g;->k:Ljava/lang/String;

    iget-object v3, p0, Lcom/a/a/g;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void
.end method

.method public b(Z)D
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/a/a/g;->c:Lcom/a/a/f;

    iget-wide v0, v0, Lcom/a/a/f;->c:D

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/g;->d:Lcom/a/a/f;

    iget-wide v0, v0, Lcom/a/a/f;->c:D

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/a/a/g;->i:Z

    return v0
.end method

.method public c()Lcom/a/a/d;
    .locals 1

    iget-object v0, p0, Lcom/a/a/g;->e:Lcom/a/a/d;

    return-object v0
.end method

.method public d()V
    .locals 12

    const-wide/16 v2, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/a/a/g;->a()Ljava/util/List;

    move-result-object v10

    iget-object v1, p0, Lcom/a/a/g;->c:Lcom/a/a/f;

    move-wide v4, v2

    move-wide v6, v2

    move-wide v8, v2

    invoke-virtual/range {v1 .. v9}, Lcom/a/a/f;->a(DDDD)V

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/f;

    invoke-interface {v0}, Lcom/a/a/a/f;->h()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/f;

    invoke-interface {v0}, Lcom/a/a/a/f;->a()D

    move-result-wide v0

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/f;

    invoke-interface {v0}, Lcom/a/a/a/f;->h()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-interface {v0}, Lcom/a/a/a/f;->a()D

    move-result-wide v6

    cmpl-double v1, v2, v6

    if-lez v1, :cond_8

    invoke-interface {v0}, Lcom/a/a/a/f;->a()D

    move-result-wide v2

    move-wide v0, v2

    :goto_1
    move-wide v2, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/a/a/g;->c:Lcom/a/a/f;

    iput-wide v2, v0, Lcom/a/a/f;->a:D

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/f;

    invoke-interface {v0}, Lcom/a/a/a/f;->b()D

    move-result-wide v0

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/f;

    invoke-interface {v0}, Lcom/a/a/a/f;->h()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-interface {v0}, Lcom/a/a/a/f;->b()D

    move-result-wide v6

    cmpg-double v1, v2, v6

    if-gez v1, :cond_7

    invoke-interface {v0}, Lcom/a/a/a/f;->b()D

    move-result-wide v2

    move-wide v0, v2

    :goto_3
    move-wide v2, v0

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/a/a/g;->c:Lcom/a/a/f;

    iput-wide v2, v0, Lcom/a/a/f;->b:D

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/f;

    invoke-interface {v0}, Lcom/a/a/a/f;->h()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/f;

    invoke-interface {v0}, Lcom/a/a/a/f;->c()D

    move-result-wide v0

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/f;

    invoke-interface {v0}, Lcom/a/a/a/f;->h()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-interface {v0}, Lcom/a/a/a/f;->c()D

    move-result-wide v6

    cmpl-double v1, v2, v6

    if-lez v1, :cond_6

    invoke-interface {v0}, Lcom/a/a/a/f;->c()D

    move-result-wide v2

    move-wide v0, v2

    :goto_5
    move-wide v2, v0

    goto :goto_4

    :cond_2
    iget-object v0, p0, Lcom/a/a/g;->c:Lcom/a/a/f;

    iput-wide v2, v0, Lcom/a/a/f;->d:D

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/f;

    invoke-interface {v0}, Lcom/a/a/a/f;->d()D

    move-result-wide v0

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/f;

    invoke-interface {v0}, Lcom/a/a/a/f;->h()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {v0}, Lcom/a/a/a/f;->d()D

    move-result-wide v6

    cmpg-double v1, v2, v6

    if-gez v1, :cond_5

    invoke-interface {v0}, Lcom/a/a/a/f;->d()D

    move-result-wide v2

    move-wide v0, v2

    :goto_7
    move-wide v2, v0

    goto :goto_6

    :cond_3
    iget-object v0, p0, Lcom/a/a/g;->c:Lcom/a/a/f;

    iput-wide v2, v0, Lcom/a/a/f;->c:D

    :cond_4
    return-void

    :cond_5
    move-wide v0, v2

    goto :goto_7

    :cond_6
    move-wide v0, v2

    goto :goto_5

    :cond_7
    move-wide v0, v2

    goto/16 :goto_3

    :cond_8
    move-wide v0, v2

    goto/16 :goto_1
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/a/a/g;->k:Ljava/lang/String;

    return-object v0
.end method

.method public f()F
    .locals 1

    invoke-virtual {p0}, Lcom/a/a/g;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/a/a/g;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/a/a/g;->g:F

    goto :goto_0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/a/a/g;->h:I

    return v0
.end method
