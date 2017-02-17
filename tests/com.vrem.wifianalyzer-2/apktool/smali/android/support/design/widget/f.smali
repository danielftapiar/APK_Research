.class Landroid/support/design/widget/f;
.super Landroid/support/design/widget/e;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private q:F


# direct methods
.method constructor <init>(Landroid/support/design/widget/z;Landroid/support/design/widget/m;Landroid/support/design/widget/q$d;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/support/design/widget/e;-><init>(Landroid/support/design/widget/z;Landroid/support/design/widget/m;Landroid/support/design/widget/q$d;)V

    iget-object v0, p0, Landroid/support/design/widget/f;->n:Landroid/support/design/widget/z;

    invoke-virtual {v0}, Landroid/support/design/widget/z;->getRotation()F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/f;->q:F

    return-void
.end method

.method private l()Z
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/f;->n:Landroid/support/design/widget/z;

    invoke-static {v0}, Landroid/support/v4/h/ae;->F(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/f;->n:Landroid/support/design/widget/z;

    invoke-virtual {v0}, Landroid/support/design/widget/z;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private m()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/design/widget/f;->q:F

    const/high16 v1, 0x42b40000    # 90.0f

    rem-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/design/widget/f;->n:Landroid/support/design/widget/z;

    invoke-virtual {v0}, Landroid/support/design/widget/z;->getLayerType()I

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/f;->n:Landroid/support/design/widget/z;

    invoke-virtual {v0, v2, v3}, Landroid/support/design/widget/z;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/design/widget/f;->a:Landroid/support/design/widget/l;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/f;->a:Landroid/support/design/widget/l;

    iget v1, p0, Landroid/support/design/widget/f;->q:F

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/l;->a(F)V

    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/f;->f:Landroid/support/design/widget/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/design/widget/f;->f:Landroid/support/design/widget/c;

    iget v1, p0, Landroid/support/design/widget/f;->q:F

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/c;->a(F)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/f;->n:Landroid/support/design/widget/z;

    invoke-virtual {v0}, Landroid/support/design/widget/z;->getLayerType()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/f;->n:Landroid/support/design/widget/z;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/support/design/widget/z;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0
.end method


# virtual methods
.method a(Landroid/support/design/widget/g$a;Z)V
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/support/design/widget/f;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/f;->n:Landroid/support/design/widget/z;

    invoke-virtual {v0}, Landroid/support/design/widget/z;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-direct {p0}, Landroid/support/design/widget/f;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/design/widget/f;->c:I

    iget-object v0, p0, Landroid/support/design/widget/f;->n:Landroid/support/design/widget/z;

    invoke-virtual {v0}, Landroid/support/design/widget/z;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Landroid/support/design/widget/a;->c:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/support/design/widget/f$1;

    invoke-direct {v1, p0, p2, p1}, Landroid/support/design/widget/f$1;-><init>(Landroid/support/design/widget/f;ZLandroid/support/design/widget/g$a;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroid/support/design/widget/f;->n:Landroid/support/design/widget/z;

    if-eqz p2, :cond_3

    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v1, v0, p2}, Landroid/support/design/widget/z;->a(IZ)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/support/design/widget/g$a;->b()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    goto :goto_1
.end method

.method b(Landroid/support/design/widget/g$a;Z)V
    .locals 4

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Landroid/support/design/widget/f;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/f;->n:Landroid/support/design/widget/z;

    invoke-virtual {v0}, Landroid/support/design/widget/z;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-direct {p0}, Landroid/support/design/widget/f;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    iput v0, p0, Landroid/support/design/widget/f;->c:I

    iget-object v0, p0, Landroid/support/design/widget/f;->n:Landroid/support/design/widget/z;

    invoke-virtual {v0}, Landroid/support/design/widget/z;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/design/widget/f;->n:Landroid/support/design/widget/z;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/z;->setAlpha(F)V

    iget-object v0, p0, Landroid/support/design/widget/f;->n:Landroid/support/design/widget/z;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/z;->setScaleY(F)V

    iget-object v0, p0, Landroid/support/design/widget/f;->n:Landroid/support/design/widget/z;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/z;->setScaleX(F)V

    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/f;->n:Landroid/support/design/widget/z;

    invoke-virtual {v0}, Landroid/support/design/widget/z;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Landroid/support/design/widget/a;->d:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/support/design/widget/f$2;

    invoke-direct {v1, p0, p2, p1}, Landroid/support/design/widget/f$2;-><init>(Landroid/support/design/widget/f;ZLandroid/support/design/widget/g$a;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/f;->n:Landroid/support/design/widget/z;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Landroid/support/design/widget/z;->a(IZ)V

    iget-object v0, p0, Landroid/support/design/widget/f;->n:Landroid/support/design/widget/z;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/z;->setAlpha(F)V

    iget-object v0, p0, Landroid/support/design/widget/f;->n:Landroid/support/design/widget/z;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/z;->setScaleY(F)V

    iget-object v0, p0, Landroid/support/design/widget/f;->n:Landroid/support/design/widget/z;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/z;->setScaleX(F)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/support/design/widget/g$a;->a()V

    goto :goto_0
.end method

.method d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method e()V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/f;->n:Landroid/support/design/widget/z;

    invoke-virtual {v0}, Landroid/support/design/widget/z;->getRotation()F

    move-result v0

    iget v1, p0, Landroid/support/design/widget/f;->q:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_0

    iput v0, p0, Landroid/support/design/widget/f;->q:F

    invoke-direct {p0}, Landroid/support/design/widget/f;->m()V

    :cond_0
    return-void
.end method
