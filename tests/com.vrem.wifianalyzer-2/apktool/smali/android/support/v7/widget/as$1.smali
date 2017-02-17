.class final Landroid/support/v7/widget/as$1;
.super Landroid/support/v7/widget/as;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/as;->a(Landroid/support/v7/widget/at$h;)Landroid/support/v7/widget/as;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/support/v7/widget/at$h;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/as;-><init>(Landroid/support/v7/widget/at$h;Landroid/support/v7/widget/as$1;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/at$i;

    iget-object v1, p0, Landroid/support/v7/widget/as$1;->a:Landroid/support/v7/widget/at$h;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/at$h;->h(Landroid/view/View;)I

    move-result v1

    iget v0, v0, Landroid/support/v7/widget/at$i;->leftMargin:I

    sub-int v0, v1, v0

    return v0
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/as$1;->a:Landroid/support/v7/widget/at$h;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/at$h;->i(I)V

    return-void
.end method

.method public b(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/at$i;

    iget-object v1, p0, Landroid/support/v7/widget/as$1;->a:Landroid/support/v7/widget/at$h;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/at$h;->j(Landroid/view/View;)I

    move-result v1

    iget v0, v0, Landroid/support/v7/widget/at$i;->rightMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/as$1;->a:Landroid/support/v7/widget/at$h;

    invoke-virtual {v0}, Landroid/support/v7/widget/at$h;->z()I

    move-result v0

    return v0
.end method

.method public c(Landroid/view/View;)I
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/as$1;->a:Landroid/support/v7/widget/at$h;

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/support/v7/widget/as$1;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v7/widget/at$h;->a(Landroid/view/View;ZLandroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/support/v7/widget/as$1;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public d()I
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/as$1;->a:Landroid/support/v7/widget/at$h;

    invoke-virtual {v0}, Landroid/support/v7/widget/at$h;->x()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/as$1;->a:Landroid/support/v7/widget/at$h;

    invoke-virtual {v1}, Landroid/support/v7/widget/at$h;->B()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public d(Landroid/view/View;)I
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/as$1;->a:Landroid/support/v7/widget/at$h;

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/support/v7/widget/as$1;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v7/widget/at$h;->a(Landroid/view/View;ZLandroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/support/v7/widget/as$1;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/as$1;->a:Landroid/support/v7/widget/at$h;

    invoke-virtual {v0}, Landroid/support/v7/widget/at$h;->x()I

    move-result v0

    return v0
.end method

.method public e(Landroid/view/View;)I
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/at$i;

    iget-object v1, p0, Landroid/support/v7/widget/as$1;->a:Landroid/support/v7/widget/at$h;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/at$h;->f(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Landroid/support/v7/widget/at$i;->leftMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/support/v7/widget/at$i;->rightMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public f()I
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/as$1;->a:Landroid/support/v7/widget/at$h;

    invoke-virtual {v0}, Landroid/support/v7/widget/at$h;->x()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/as$1;->a:Landroid/support/v7/widget/at$h;

    invoke-virtual {v1}, Landroid/support/v7/widget/at$h;->z()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/support/v7/widget/as$1;->a:Landroid/support/v7/widget/at$h;

    invoke-virtual {v1}, Landroid/support/v7/widget/at$h;->B()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public f(Landroid/view/View;)I
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/at$i;

    iget-object v1, p0, Landroid/support/v7/widget/as$1;->a:Landroid/support/v7/widget/at$h;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/at$h;->g(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Landroid/support/v7/widget/at$i;->topMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/support/v7/widget/at$i;->bottomMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public g()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/as$1;->a:Landroid/support/v7/widget/at$h;

    invoke-virtual {v0}, Landroid/support/v7/widget/at$h;->B()I

    move-result v0

    return v0
.end method

.method public h()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/as$1;->a:Landroid/support/v7/widget/at$h;

    invoke-virtual {v0}, Landroid/support/v7/widget/at$h;->v()I

    move-result v0

    return v0
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/as$1;->a:Landroid/support/v7/widget/at$h;

    invoke-virtual {v0}, Landroid/support/v7/widget/at$h;->w()I

    move-result v0

    return v0
.end method
