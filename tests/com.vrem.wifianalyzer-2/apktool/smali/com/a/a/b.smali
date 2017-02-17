.class public Lcom/a/a/b;
.super Landroid/view/View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/b$b;,
        Lcom/a/a/b$a;
    }
.end annotation


# instance fields
.field protected a:Lcom/a/a/g;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/a/a/a/f;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/a/a/c;

.field private d:Lcom/a/a/h;

.field private e:Ljava/lang/String;

.field private f:Lcom/a/a/b$a;

.field private g:Lcom/a/a/b$b;

.field private h:Lcom/a/a/e;

.field private i:Landroid/graphics/Paint;

.field private j:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/a/a/b;->a()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/a/a/b;->j:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/a/a/b;->j:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/a/a/b;->j:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/a/a/b;->j:Landroid/graphics/Paint;

    const/high16 v1, 0x42480000    # 50.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance v0, Lcom/a/a/b$a;

    invoke-direct {v0, v2}, Lcom/a/a/b$a;-><init>(Lcom/a/a/b$1;)V

    iput-object v0, p0, Lcom/a/a/b;->f:Lcom/a/a/b$a;

    new-instance v0, Lcom/a/a/h;

    invoke-direct {v0, p0}, Lcom/a/a/h;-><init>(Lcom/a/a/b;)V

    iput-object v0, p0, Lcom/a/a/b;->d:Lcom/a/a/h;

    new-instance v0, Lcom/a/a/c;

    invoke-direct {v0, p0}, Lcom/a/a/c;-><init>(Lcom/a/a/b;)V

    iput-object v0, p0, Lcom/a/a/b;->c:Lcom/a/a/c;

    new-instance v0, Lcom/a/a/e;

    invoke-direct {v0, p0}, Lcom/a/a/e;-><init>(Lcom/a/a/b;)V

    iput-object v0, p0, Lcom/a/a/b;->h:Lcom/a/a/e;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/a/b;->b:Ljava/util/List;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/a/a/b;->i:Landroid/graphics/Paint;

    new-instance v0, Lcom/a/a/b$b;

    invoke-direct {v0, p0, v2}, Lcom/a/a/b$b;-><init>(Lcom/a/a/b;Lcom/a/a/b$1;)V

    iput-object v0, p0, Lcom/a/a/b;->g:Lcom/a/a/b$b;

    invoke-virtual {p0}, Lcom/a/a/b;->b()V

    return-void
.end method

.method protected a(Landroid/graphics/Canvas;)V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GraphView must be used in hardware accelerated mode.You can use android:hardwareAccelerated=\"true\" on your activity. Read this for more info:https://developer.android.com/guide/topics/graphics/hardware-accel.html"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/a/a/b;->b(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/a/a/b;->d:Lcom/a/a/h;

    invoke-virtual {v0, p1}, Lcom/a/a/h;->a(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/a/a/b;->c:Lcom/a/a/c;

    invoke-virtual {v0, p1}, Lcom/a/a/c;->d(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/a/a/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/f;

    const/4 v2, 0x0

    invoke-interface {v0, p0, p1, v2}, Lcom/a/a/a/f;->a(Lcom/a/a/b;Landroid/graphics/Canvas;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/a/a/b;->a:Lcom/a/a/g;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/a/a/b;->a:Lcom/a/a/g;

    invoke-virtual {v0}, Lcom/a/a/g;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/f;

    const/4 v2, 0x1

    invoke-interface {v0, p0, p1, v2}, Lcom/a/a/a/f;->a(Lcom/a/a/b;Landroid/graphics/Canvas;Z)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/a/a/b;->d:Lcom/a/a/h;

    invoke-virtual {v0, p1}, Lcom/a/a/h;->b(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/a/a/b;->h:Lcom/a/a/e;

    invoke-virtual {v0, p1}, Lcom/a/a/e;->a(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public a(Lcom/a/a/a/f;)V
    .locals 2

    const/4 v1, 0x0

    invoke-interface {p1, p0}, Lcom/a/a/a/f;->a(Lcom/a/a/b;)V

    iget-object v0, p0, Lcom/a/a/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1, v1}, Lcom/a/a/b;->a(ZZ)V

    return-void
.end method

.method public a(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/a/a/b;->d:Lcom/a/a/h;

    invoke-virtual {v0}, Lcom/a/a/h;->b()V

    iget-object v0, p0, Lcom/a/a/b;->a:Lcom/a/a/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/b;->a:Lcom/a/a/g;

    invoke-virtual {v0}, Lcom/a/a/g;->d()V

    :cond_0
    iget-object v0, p0, Lcom/a/a/b;->c:Lcom/a/a/c;

    invoke-virtual {v0, p1, p2}, Lcom/a/a/c;->a(ZZ)V

    invoke-virtual {p0}, Lcom/a/a/b;->postInvalidate()V

    return-void
.end method

.method protected b()V
    .locals 2

    iget-object v0, p0, Lcom/a/a/b;->f:Lcom/a/a/b$a;

    iget-object v1, p0, Lcom/a/a/b;->c:Lcom/a/a/c;

    invoke-virtual {v1}, Lcom/a/a/c;->g()I

    move-result v1

    iput v1, v0, Lcom/a/a/b$a;->b:I

    iget-object v0, p0, Lcom/a/a/b;->f:Lcom/a/a/b$a;

    iget-object v1, p0, Lcom/a/a/b;->c:Lcom/a/a/c;

    invoke-virtual {v1}, Lcom/a/a/c;->d()F

    move-result v1

    iput v1, v0, Lcom/a/a/b$a;->a:F

    return-void
.end method

.method protected b(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/a/a/b;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/b;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/a/a/b;->i:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/a/a/b;->f:Lcom/a/a/b$a;

    iget v1, v1, Lcom/a/a/b$a;->b:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/a/a/b;->i:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/a/a/b;->f:Lcom/a/a/b$a;

    iget v1, v1, Lcom/a/a/b$a;->a:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/a/a/b;->i:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v1, p0, Lcom/a/a/b;->i:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    iget-object v2, p0, Lcom/a/a/b;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/a/a/b;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/a/a/a/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/a/f",
            "<*>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/a/a/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1, v1}, Lcom/a/a/b;->a(ZZ)V

    return-void
.end method

.method public computeScroll()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->computeScroll()V

    iget-object v0, p0, Lcom/a/a/b;->d:Lcom/a/a/h;

    invoke-virtual {v0}, Lcom/a/a/h;->c()V

    return-void
.end method

.method public getGraphContentHeight()I
    .locals 2

    invoke-virtual {p0}, Lcom/a/a/b;->getGridLabelRenderer()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->l()Lcom/a/a/c$b;

    move-result-object v0

    iget v0, v0, Lcom/a/a/c$b;->i:I

    invoke-virtual {p0}, Lcom/a/a/b;->getHeight()I

    move-result v1

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v1, v0

    invoke-virtual {p0}, Lcom/a/a/b;->getGridLabelRenderer()Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->n()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/a/a/b;->getTitleHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/a/a/b;->getGridLabelRenderer()Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->j()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getGraphContentLeft()I
    .locals 2

    invoke-virtual {p0}, Lcom/a/a/b;->getGridLabelRenderer()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->l()Lcom/a/a/c$b;

    move-result-object v0

    iget v0, v0, Lcom/a/a/c$b;->i:I

    invoke-virtual {p0}, Lcom/a/a/b;->getGridLabelRenderer()Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->m()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/a/a/b;->getGridLabelRenderer()Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->k()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getGraphContentTop()I
    .locals 2

    invoke-virtual {p0}, Lcom/a/a/b;->getGridLabelRenderer()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->l()Lcom/a/a/c$b;

    move-result-object v0

    iget v0, v0, Lcom/a/a/c$b;->i:I

    invoke-virtual {p0}, Lcom/a/a/b;->getTitleHeight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getGraphContentWidth()I
    .locals 2

    invoke-virtual {p0}, Lcom/a/a/b;->getGridLabelRenderer()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->l()Lcom/a/a/c$b;

    move-result-object v0

    iget v0, v0, Lcom/a/a/c$b;->i:I

    invoke-virtual {p0}, Lcom/a/a/b;->getWidth()I

    move-result v1

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v1, v0

    invoke-virtual {p0}, Lcom/a/a/b;->getGridLabelRenderer()Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->m()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/a/a/b;->a:Lcom/a/a/g;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/a/a/b;->getGridLabelRenderer()Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->v()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/a/a/b;->a:Lcom/a/a/g;

    invoke-virtual {v1}, Lcom/a/a/g;->f()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    :cond_0
    return v0
.end method

.method public getGridLabelRenderer()Lcom/a/a/c;
    .locals 1

    iget-object v0, p0, Lcom/a/a/b;->c:Lcom/a/a/c;

    return-object v0
.end method

.method public getLegendRenderer()Lcom/a/a/e;
    .locals 1

    iget-object v0, p0, Lcom/a/a/b;->h:Lcom/a/a/e;

    return-object v0
.end method

.method public getSecondScale()Lcom/a/a/g;
    .locals 2

    iget-object v0, p0, Lcom/a/a/b;->a:Lcom/a/a/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/a/a/g;

    invoke-direct {v0, p0}, Lcom/a/a/g;-><init>(Lcom/a/a/b;)V

    iput-object v0, p0, Lcom/a/a/b;->a:Lcom/a/a/g;

    iget-object v0, p0, Lcom/a/a/b;->a:Lcom/a/a/g;

    iget-object v1, p0, Lcom/a/a/b;->c:Lcom/a/a/c;

    iget-object v1, v1, Lcom/a/a/c;->a:Lcom/a/a/c$b;

    iget v1, v1, Lcom/a/a/c$b;->a:F

    invoke-virtual {v0, v1}, Lcom/a/a/g;->a(F)V

    :cond_0
    iget-object v0, p0, Lcom/a/a/b;->a:Lcom/a/a/g;

    return-object v0
.end method

.method public getSeries()Ljava/util/List;
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

    iget-object v0, p0, Lcom/a/a/b;->b:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/a/a/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleColor()I
    .locals 1

    iget-object v0, p0, Lcom/a/a/b;->f:Lcom/a/a/b$a;

    iget v0, v0, Lcom/a/a/b$a;->b:I

    return v0
.end method

.method protected getTitleHeight()I
    .locals 1

    iget-object v0, p0, Lcom/a/a/b;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/b;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/a/a/b;->i:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTitleTextSize()F
    .locals 1

    iget-object v0, p0, Lcom/a/a/b;->f:Lcom/a/a/b$a;

    iget v0, v0, Lcom/a/a/b$a;->a:F

    return v0
.end method

.method public getViewport()Lcom/a/a/h;
    .locals 1

    iget-object v0, p0, Lcom/a/a/b;->d:Lcom/a/a/h;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const/16 v1, 0xc8

    invoke-virtual {p0}, Lcom/a/a/b;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    const-string v0, "GraphView: No Preview available"

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/a/a/b;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/a/a/b;->a(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-virtual {p0, v0, v0}, Lcom/a/a/b;->a(ZZ)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    iget-object v0, p0, Lcom/a/a/b;->d:Lcom/a/a/h;

    invoke-virtual {v0, p1}, Lcom/a/a/h;->a(Landroid/view/MotionEvent;)Z

    move-result v1

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    iget-object v0, p0, Lcom/a/a/b;->g:Lcom/a/a/b$b;

    invoke-virtual {v0, p1}, Lcom/a/a/b$b;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/a/a/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/f;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-interface {v0, v4, v5}, Lcom/a/a/a/f;->a(FF)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/a/a/b;->a:Lcom/a/a/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/a/a/b;->a:Lcom/a/a/g;

    invoke-virtual {v0}, Lcom/a/a/g;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/f;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-interface {v0, v4, v5}, Lcom/a/a/a/f;->a(FF)V

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public setLegendRenderer(Lcom/a/a/e;)V
    .locals 0

    iput-object p1, p0, Lcom/a/a/b;->h:Lcom/a/a/e;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/a/a/b;->e:Ljava/lang/String;

    return-void
.end method

.method public setTitleColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/a/a/b;->f:Lcom/a/a/b$a;

    iput p1, v0, Lcom/a/a/b$a;->b:I

    return-void
.end method

.method public setTitleTextSize(F)V
    .locals 1

    iget-object v0, p0, Lcom/a/a/b;->f:Lcom/a/a/b$a;

    iput p1, v0, Lcom/a/a/b$a;->a:F

    return-void
.end method
