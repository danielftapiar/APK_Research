.class Landroid/support/v7/widget/at$v;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/at;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "v"
.end annotation


# instance fields
.field a:Landroid/view/animation/Interpolator;

.field final synthetic b:Landroid/support/v7/widget/at;

.field private c:I

.field private d:I

.field private e:Landroid/support/v4/widget/x;

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/at;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Landroid/support/v7/widget/at$v;->b:Landroid/support/v7/widget/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/support/v7/widget/at;->G:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Landroid/support/v7/widget/at$v;->a:Landroid/view/animation/Interpolator;

    iput-boolean v1, p0, Landroid/support/v7/widget/at$v;->f:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/at$v;->g:Z

    invoke-virtual {p1}, Landroid/support/v7/widget/at;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/v7/widget/at;->G:Landroid/view/animation/Interpolator;

    invoke-static {v0, v1}, Landroid/support/v4/widget/x;->a(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/x;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/at$v;->e:Landroid/support/v4/widget/x;

    return-void
.end method

.method private a(F)F
    .locals 4

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float v0, p1, v0

    float-to-double v0, v0

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float v0, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private b(IIII)I
    .locals 9

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v2, v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    mul-int v1, p3, p3

    mul-int v4, p4, p4

    add-int/2addr v1, v4

    int-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v4, v4

    mul-int v1, p1, p1

    mul-int v5, p2, p2

    add-int/2addr v1, v5

    int-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-int v5, v6

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/at$v;->b:Landroid/support/v7/widget/at;

    invoke-virtual {v1}, Landroid/support/v7/widget/at;->getWidth()I

    move-result v1

    :goto_1
    div-int/lit8 v6, v1, 0x2

    int-to-float v5, v5

    mul-float/2addr v5, v8

    int-to-float v7, v1

    div-float/2addr v5, v7

    invoke-static {v8, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    int-to-float v7, v6

    int-to-float v6, v6

    invoke-direct {p0, v5}, Landroid/support/v7/widget/at$v;->a(F)F

    move-result v5

    mul-float/2addr v5, v6

    add-float/2addr v5, v7

    if-lez v4, :cond_2

    const/high16 v0, 0x447a0000    # 1000.0f

    int-to-float v1, v4

    div-float v1, v5, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    :goto_2
    const/16 v1, 0x7d0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/at$v;->b:Landroid/support/v7/widget/at;

    invoke-virtual {v1}, Landroid/support/v7/widget/at;->getHeight()I

    move-result v1

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    move v0, v2

    :goto_3
    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    add-float/2addr v0, v8

    const/high16 v1, 0x43960000    # 300.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_2

    :cond_3
    move v0, v3

    goto :goto_3
.end method

.method private c()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/at$v;->g:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/at$v;->f:Z

    return-void
.end method

.method private d()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/at$v;->f:Z

    iget-boolean v0, p0, Landroid/support/v7/widget/at$v;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/at$v;->a()V

    :cond_0
    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/at$v;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/at$v;->g:Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/at$v;->b:Landroid/support/v7/widget/at;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/at;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/support/v7/widget/at$v;->b:Landroid/support/v7/widget/at;

    invoke-static {v0, p0}, Landroid/support/v4/h/ae;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(II)V
    .locals 9

    const v6, 0x7fffffff

    const/high16 v5, -0x80000000

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/at$v;->b:Landroid/support/v7/widget/at;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/at;->setScrollState(I)V

    iput v1, p0, Landroid/support/v7/widget/at$v;->d:I

    iput v1, p0, Landroid/support/v7/widget/at$v;->c:I

    iget-object v0, p0, Landroid/support/v7/widget/at$v;->e:Landroid/support/v4/widget/x;

    move v2, v1

    move v3, p1

    move v4, p2

    move v7, v5

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/support/v4/widget/x;->a(IIIIIIII)V

    invoke-virtual {p0}, Landroid/support/v7/widget/at$v;->a()V

    return-void
.end method

.method public a(III)V
    .locals 1

    sget-object v0, Landroid/support/v7/widget/at;->G:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/at$v;->a(IIILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public a(IIII)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/at$v;->b(IIII)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/at$v;->a(III)V

    return-void
.end method

.method public a(IIILandroid/view/animation/Interpolator;)V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/at$v;->a:Landroid/view/animation/Interpolator;

    if-eq v0, p4, :cond_0

    iput-object p4, p0, Landroid/support/v7/widget/at$v;->a:Landroid/view/animation/Interpolator;

    iget-object v0, p0, Landroid/support/v7/widget/at$v;->b:Landroid/support/v7/widget/at;

    invoke-virtual {v0}, Landroid/support/v7/widget/at;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p4}, Landroid/support/v4/widget/x;->a(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/x;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/at$v;->e:Landroid/support/v4/widget/x;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/at$v;->b:Landroid/support/v7/widget/at;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/at;->setScrollState(I)V

    iput v1, p0, Landroid/support/v7/widget/at$v;->d:I

    iput v1, p0, Landroid/support/v7/widget/at$v;->c:I

    iget-object v0, p0, Landroid/support/v7/widget/at$v;->e:Landroid/support/v4/widget/x;

    move v2, v1

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/x;->a(IIIII)V

    invoke-virtual {p0}, Landroid/support/v7/widget/at$v;->a()V

    return-void
.end method

.method public a(IILandroid/view/animation/Interpolator;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Landroid/support/v7/widget/at$v;->b(IIII)I

    move-result v0

    if-nez p3, :cond_0

    sget-object p3, Landroid/support/v7/widget/at;->G:Landroid/view/animation/Interpolator;

    :cond_0
    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/support/v7/widget/at$v;->a(IIILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/at$v;->b:Landroid/support/v7/widget/at;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/at;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/support/v7/widget/at$v;->e:Landroid/support/v4/widget/x;

    invoke-virtual {v0}, Landroid/support/v4/widget/x;->h()V

    return-void
.end method

.method public b(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/support/v7/widget/at$v;->a(IIII)V

    return-void
.end method

.method public run()V
    .locals 15

    iget-object v0, p0, Landroid/support/v7/widget/at$v;->b:Landroid/support/v7/widget/at;

    iget-object v0, v0, Landroid/support/v7/widget/at;->m:Landroid/support/v7/widget/at$h;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/at$v;->b()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/at$v;->c()V

    iget-object v0, p0, Landroid/support/v7/widget/at$v;->b:Landroid/support/v7/widget/at;

    invoke-virtual {v0}, Landroid/support/v7/widget/at;->c()V

    iget-object v7, p0, Landroid/support/v7/widget/at$v;->e:Landroid/support/v4/widget/x;

    iget-object v0, p0, Landroid/support/v7/widget/at$v;->b:Landroid/support/v7/widget/at;

    iget-object v0, v0, Landroid/support/v7/widget/at;->m:Landroid/support/v7/widget/at$h;

    iget-object v8, v0, Landroid/support/v7/widget/at$h;->r:Landroid/support/v7/widget/at$s;

    invoke-virtual {v7}, Landroid/support/v4/widget/x;->g()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {v7}, Landroid/support/v4/widget/x;->b()I

    move-result v9

    invoke-virtual {v7}, Landroid/support/v4/widget/x;->c()I

    move-result v10

    iget v0, p0, Landroid/support/v7/widget/at$v;->c:I

    sub-int v11, v9, v0

    iget v0, p0, Landroid/support/v7/widget/at$v;->d:I

    sub-int v12, v10, v0

    const/4 v3, 0x0

    const/4 v1, 0x0

    iput v9, p0, Landroid/support/v7/widget/at$v;->c:I

    iput v10, p0, Landroid/support/v7/widget/at$v;->d:I

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v4, p0, Landroid/support/v7/widget/at$v;->b:Landroid/support/v7/widget/at;

    iget-object v4, v4, Landroid/support/v7/widget/at;->l:Landroid/support/v7/widget/at$a;

    if-eqz v4, :cond_16

    iget-object v4, p0, Landroid/support/v7/widget/at$v;->b:Landroid/support/v7/widget/at;

    invoke-virtual {v4}, Landroid/support/v7/widget/at;->d()V

    iget-object v4, p0, Landroid/support/v7/widget/at$v;->b:Landroid/support/v7/widget/at;

    invoke-virtual {v4}, Landroid/support/v7/widget/at;->k()V

    const-string v4, "RV Scroll"

    invoke-static {v4}, Landroid/support/v4/f/h;->a(Ljava/lang/String;)V

    if-eqz v11, :cond_1

    iget-object v2, p0, Landroid/support/v7/widget/at$v;->b:Landroid/support/v7/widget/at;

    iget-object v2, v2, Landroid/support/v7/widget/at;->m:Landroid/support/v7/widget/at$h;

    iget-object v3, p0, Landroid/support/v7/widget/at$v;->b:Landroid/support/v7/widget/at;

    iget-object v3, v3, Landroid/support/v7/widget/at;->d:Landroid/support/v7/widget/at$o;

    iget-object v4, p0, Landroid/support/v7/widget/at$v;->b:Landroid/support/v7/widget/at;

    iget-object v4, v4, Landroid/support/v7/widget/at;->A:Landroid/support/v7/widget/at$t;

    invoke-virtual {v2, v11, v3, v4}, Landroid/support/v7/widget/at$h;->a(ILandroid/support/v7/widget/at$o;Landroid/support/v7/widget/at$t;)I

    move-result v3

    sub-int v2, v11, v3

    :cond_1
    if-eqz v12, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/at$v;->b:Landroid/support/v7/widget/at;

    iget-object v0, v0, Landroid/support/v7/widget/at;->m:Landroid/support/v7/widget/at$h;

    iget-object v1, p0, Landroid/support/v7/widget/at$v;->b:Landroid/support/v7/widget/at;

    iget-object v1, v1, Landroid/support/v7/widget/at;->d:Landroid/support/v7/widget/at$o;

    iget-object v4, p0, Landroid/support/v7/widget/at$v;->b:Landroid/support/v7/widget/at;

    iget-object v4, v4, Landroid/support/v7/widget/at;->A:Landroid/support/v7/widget/at$t;

    invoke-virtual {v0, v12, v1, v4}, Landroid/support/v7/widget/at$h;->b(ILandroid/support/v7/widget/at$o;Landroid/support/v7/widget/at$t;)I

    move-result v1

    sub-int v0, v12, v1

    :cond_2
    invoke-static {}, Landroid/support/v4/f/h;->a()V

    iget-object v4, p0, Landroid/support/v7/widget/at$v;->b:Landroid/support/v7/widget/at;

    invoke-virtual {v4}, Landroid/support/v7/widget/at;->w()V

    iget-object v4, p0, Landroid/support/v7/widget/at$v;->b:Landroid/support/v7/widget/at;

    invoke-virtual {v4}, Landroid/support/v7/widget/at;->l()V

    iget-object v4, p0, Landroid/support/v7/widget/at$v;->b:Landroid/support/v7/widget/at;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/at;->a(Z)V

    if-eqz v8, :cond_16

    invoke-virtual {v8}, Landroid/support/v7/widget/at$s;->b()Z

    move-result v4

    if-nez v4, :cond_16

    invoke-virtual {v8}, Landroid/support/v7/widget/at$s;->c()Z

    move-result v4

    if-eqz v4, :cond_16

    iget-object v4, p0, Landroid/support/v7/widget/at$v;->b:Landroid/support/v7/widget/at;

    iget-object v4, v4, Landroid/support/v7/widget/at;->A:Landroid/support/v7/widget/at$t;

    invoke-virtual {v4}, Landroid/support/v7/widget/at$t;->e()I

    move-result v4

    if-nez v4, :cond_14

    invoke-virtual {v8}, Landroid/support/v7/widget/at$s;->a()V

    move v14, v2

    move v2, v1

    move v1, v14

    :goto_1
    iget-object v4, p0, Landroid/support/v7/widget/at$v;->b:Landroid/support/v7/widget/at;

    iget-object v4, v4, Landroid/support/v7/widget/at;->o:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Landroid/support/v7/widget/at$v;->b:Landroid/support/v7/widget/at;

    invoke-virtual {v4}, Landroid/support/v7/widget/at;->invalidate()V

    :cond_3
    iget-object v4, p0, Landroid/support/v7/widget/at$v;->b:Landroid/support/v7/widget/at;

    invoke-virtual {v4}, Landroid/support/v7/widget/at;->getOverScrollMode()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    iget-object v4, p0, Landroid/support/v7/widget/at$v;->b:Landroid/support/v7/widget/at;

    invoke-virtual {v4, v11, v12}, Landroid/support/v7/widget/at;->c(II)V

    :cond_4
    if-nez v1, :cond_5

    if-eqz v0, :cond_a

    :cond_5
    invoke-virtual {v7}, Landroid/support/v4/widget/x;->f()F

    move-result v4

    float-to-int v5, v4

    const/4 v4, 0x0

    if-eq v1, v9, :cond_1f

    if-gez v1, :cond_17

    neg-int v4, v5

    :goto_2
    move v6, v4

    :goto_3
    const/4 v4, 0x0

    if-eq v0, v10, :cond_1e

    if-gez v0, :cond_19

    neg-int v5, v5

    :cond_6
    :goto_4
    iget-object v4, p0, Landroid/support/v7/widget/at$v;->b:Landroid/support/v7/widget/at;

    invoke-virtual {v4}, Landroid/support/v7/widget/at;->getOverScrollMode()I

    move-result v4

    const/4 v13, 0x2

    if-eq v4, v13, :cond_7

    iget-object v4, p0, Landroid/support/v7/widget/at$v;->b:Landroid/support/v7/widget/at;

    invoke-virtual {v4, v6, v5}, Landroid/support/v7/widget/at;->d(II)V

    :cond_7
    if-nez v6, :cond_8

    if-eq v1, v9, :cond_8

    invoke-virtual {v7}, Landroid/support/v4/widget/x;->d()I

    move-result v1

    if-nez v1, :cond_a

    :cond_8
    if-nez v5, :cond_9

    if-eq v0, v10, :cond_9

    invoke-virtual {v7}, Landroid/support/v4/widget/x;->e()I

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    invoke-virtual {v7}, Landroid/support/v4/widget/x;->h()V

    :cond_a
    if-nez v3, :cond_b

    if-eqz v2, :cond_c

    :cond_b
    iget-object v0, p0, Landroid/support/v7/widget/at$v;->b:Landroid/support/v7/widget/at;

    invoke-virtual {v0, v3, v2}, Landroid/support/v7/widget/at;->i(II)V

    :cond_c
    iget-object v0, p0, Landroid/support/v7/widget/at$v;->b:Landroid/support/v7/widget/at;

    invoke-static {v0}, Landroid/support/v7/widget/at;->a(Landroid/support/v7/widget/at;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Landroid/support/v7/widget/at$v;->b:Landroid/support/v7/widget/at;

    invoke-virtual {v0}, Landroid/support/v7/widget/at;->invalidate()V

    :cond_d
    if-eqz v12, :cond_1a

    iget-object v0, p0, Landroid/support/v7/widget/at$v;->b:Landroid/support/v7/widget/at;

    iget-object v0, v0, Landroid/support/v7/widget/at;->m:Landroid/support/v7/widget/at$h;

    invoke-virtual {v0}, Landroid/support/v7/widget/at$h;->e()Z

    move-result v0

    if-eqz v0, :cond_1a

    if-ne v2, v12, :cond_1a

    const/4 v0, 0x1

    move v1, v0

    :goto_5
    if-eqz v11, :cond_1b

    iget-object v0, p0, Landroid/support/v7/widget/at$v;->b:Landroid/support/v7/widget/at;

    iget-object v0, v0, Landroid/support/v7/widget/at;->m:Landroid/support/v7/widget/at$h;

    invoke-virtual {v0}, Landroid/support/v7/widget/at$h;->d()Z

    move-result v0

    if-eqz v0, :cond_1b

    if-ne v3, v11, :cond_1b

    const/4 v0, 0x1

    :goto_6
    if-nez v11, :cond_e

    if-eqz v12, :cond_f

    :cond_e
    if-nez v0, :cond_f

    if-eqz v1, :cond_1c

    :cond_f
    const/4 v0, 0x1

    :goto_7
    invoke-virtual {v7}, Landroid/support/v4/widget/x;->a()Z

    move-result v1

    if-nez v1, :cond_10

    if-nez v0, :cond_1d

    :cond_10
    iget-object v0, p0, Landroid/support/v7/widget/at$v;->b:Landroid/support/v7/widget/at;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/at;->setScrollState(I)V

    invoke-static {}, Landroid/support/v7/widget/at;->y()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/support/v7/widget/at$v;->b:Landroid/support/v7/widget/at;

    iget-object v0, v0, Landroid/support/v7/widget/at;->z:Landroid/support/v7/widget/ak$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/ak$a;->a()V

    :cond_11
    :goto_8
    if-eqz v8, :cond_13

    invoke-virtual {v8}, Landroid/support/v7/widget/at$s;->b()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v8, v0, v1}, Landroid/support/v7/widget/at$s;->a(Landroid/support/v7/widget/at$s;II)V

    :cond_12
    iget-boolean v0, p0, Landroid/support/v7/widget/at$v;->g:Z

    if-nez v0, :cond_13

    invoke-virtual {v8}, Landroid/support/v7/widget/at$s;->a()V

    :cond_13
    invoke-direct {p0}, Landroid/support/v7/widget/at$v;->d()V

    goto/16 :goto_0

    :cond_14
    invoke-virtual {v8}, Landroid/support/v7/widget/at$s;->d()I

    move-result v5

    if-lt v5, v4, :cond_15

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v8, v4}, Landroid/support/v7/widget/at$s;->a(I)V

    sub-int v4, v11, v2

    sub-int v5, v12, v0

    invoke-static {v8, v4, v5}, Landroid/support/v7/widget/at$s;->a(Landroid/support/v7/widget/at$s;II)V

    move v14, v2

    move v2, v1

    move v1, v14

    goto/16 :goto_1

    :cond_15
    sub-int v4, v11, v2

    sub-int v5, v12, v0

    invoke-static {v8, v4, v5}, Landroid/support/v7/widget/at$s;->a(Landroid/support/v7/widget/at$s;II)V

    :cond_16
    move v14, v2

    move v2, v1

    move v1, v14

    goto/16 :goto_1

    :cond_17
    if-lez v1, :cond_18

    move v4, v5

    goto/16 :goto_2

    :cond_18
    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_19
    if-gtz v0, :cond_6

    const/4 v5, 0x0

    goto/16 :goto_4

    :cond_1a
    const/4 v0, 0x0

    move v1, v0

    goto :goto_5

    :cond_1b
    const/4 v0, 0x0

    goto :goto_6

    :cond_1c
    const/4 v0, 0x0

    goto :goto_7

    :cond_1d
    invoke-virtual {p0}, Landroid/support/v7/widget/at$v;->a()V

    iget-object v0, p0, Landroid/support/v7/widget/at$v;->b:Landroid/support/v7/widget/at;

    iget-object v0, v0, Landroid/support/v7/widget/at;->y:Landroid/support/v7/widget/ak;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/support/v7/widget/at$v;->b:Landroid/support/v7/widget/at;

    iget-object v0, v0, Landroid/support/v7/widget/at;->y:Landroid/support/v7/widget/ak;

    iget-object v1, p0, Landroid/support/v7/widget/at$v;->b:Landroid/support/v7/widget/at;

    invoke-virtual {v0, v1, v11, v12}, Landroid/support/v7/widget/ak;->a(Landroid/support/v7/widget/at;II)V

    goto :goto_8

    :cond_1e
    move v5, v4

    goto/16 :goto_4

    :cond_1f
    move v6, v4

    goto/16 :goto_3
.end method
