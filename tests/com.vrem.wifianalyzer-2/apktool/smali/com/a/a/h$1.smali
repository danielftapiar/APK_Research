.class Lcom/a/a/h$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/h;


# direct methods
.method constructor <init>(Lcom/a/a/h;)V
    .locals 0

    iput-object p1, p0, Lcom/a/a/h$1;->a:Lcom/a/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 10

    iget-object v0, p0, Lcom/a/a/h$1;->a:Lcom/a/a/h;

    iget-object v0, v0, Lcom/a/a/h;->d:Lcom/a/a/f;

    invoke-virtual {v0}, Lcom/a/a/f;->a()D

    move-result-wide v0

    iget-object v2, p0, Lcom/a/a/h$1;->a:Lcom/a/a/h;

    iget-wide v2, v2, Lcom/a/a/h;->e:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/a/a/h$1;->a:Lcom/a/a/h;

    iget-wide v2, v2, Lcom/a/a/h;->e:D

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    iget-object v0, p0, Lcom/a/a/h$1;->a:Lcom/a/a/h;

    iget-wide v0, v0, Lcom/a/a/h;->e:D

    :cond_0
    iget-object v2, p0, Lcom/a/a/h$1;->a:Lcom/a/a/h;

    iget-object v2, v2, Lcom/a/a/h;->d:Lcom/a/a/f;

    iget-wide v2, v2, Lcom/a/a/f;->a:D

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double v4, v0, v4

    add-double/2addr v4, v2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_8

    iget-object v2, p0, Lcom/a/a/h$1;->a:Lcom/a/a/h;

    iget-boolean v2, v2, Lcom/a/a/h;->c:Z

    if-eqz v2, :cond_8

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpanX()F

    move-result v3

    div-float/2addr v2, v3

    :goto_0
    float-to-double v2, v2

    div-double/2addr v0, v2

    iget-object v2, p0, Lcom/a/a/h$1;->a:Lcom/a/a/h;

    iget-object v2, v2, Lcom/a/a/h;->d:Lcom/a/a/f;

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double v6, v0, v6

    sub-double/2addr v4, v6

    iput-wide v4, v2, Lcom/a/a/f;->a:D

    iget-object v2, p0, Lcom/a/a/h$1;->a:Lcom/a/a/h;

    iget-object v2, v2, Lcom/a/a/h;->d:Lcom/a/a/f;

    iget-object v3, p0, Lcom/a/a/h$1;->a:Lcom/a/a/h;

    iget-object v3, v3, Lcom/a/a/h;->d:Lcom/a/a/f;

    iget-wide v4, v3, Lcom/a/a/f;->a:D

    add-double/2addr v4, v0

    iput-wide v4, v2, Lcom/a/a/f;->b:D

    iget-object v2, p0, Lcom/a/a/h$1;->a:Lcom/a/a/h;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/a/a/h;->b(Z)D

    move-result-wide v2

    iget-object v4, p0, Lcom/a/a/h$1;->a:Lcom/a/a/h;

    iget-object v4, v4, Lcom/a/a/h;->d:Lcom/a/a/f;

    iget-wide v4, v4, Lcom/a/a/f;->a:D

    cmpg-double v4, v4, v2

    if-gez v4, :cond_1

    iget-object v4, p0, Lcom/a/a/h$1;->a:Lcom/a/a/h;

    iget-object v4, v4, Lcom/a/a/h;->d:Lcom/a/a/f;

    iput-wide v2, v4, Lcom/a/a/f;->a:D

    iget-object v4, p0, Lcom/a/a/h$1;->a:Lcom/a/a/h;

    iget-object v4, v4, Lcom/a/a/h;->d:Lcom/a/a/f;

    iget-object v5, p0, Lcom/a/a/h$1;->a:Lcom/a/a/h;

    iget-object v5, v5, Lcom/a/a/h;->d:Lcom/a/a/f;

    iget-wide v6, v5, Lcom/a/a/f;->a:D

    add-double/2addr v6, v0

    iput-wide v6, v4, Lcom/a/a/f;->b:D

    :cond_1
    iget-object v4, p0, Lcom/a/a/h$1;->a:Lcom/a/a/h;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/a/a/h;->c(Z)D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v6, v0, v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/a/a/h$1;->a:Lcom/a/a/h;

    iget-object v6, v6, Lcom/a/a/h;->d:Lcom/a/a/f;

    iput-wide v4, v6, Lcom/a/a/f;->b:D

    :cond_2
    iget-object v6, p0, Lcom/a/a/h$1;->a:Lcom/a/a/h;

    iget-object v6, v6, Lcom/a/a/h;->d:Lcom/a/a/f;

    iget-wide v6, v6, Lcom/a/a/f;->a:D

    add-double/2addr v6, v0

    sub-double/2addr v6, v4

    const-wide/16 v8, 0x0

    cmpl-double v8, v6, v8

    if-lez v8, :cond_3

    iget-object v8, p0, Lcom/a/a/h$1;->a:Lcom/a/a/h;

    iget-object v8, v8, Lcom/a/a/h;->d:Lcom/a/a/f;

    iget-wide v8, v8, Lcom/a/a/f;->a:D

    sub-double/2addr v8, v6

    cmpl-double v8, v8, v2

    if-lez v8, :cond_9

    iget-object v2, p0, Lcom/a/a/h$1;->a:Lcom/a/a/h;

    iget-object v2, v2, Lcom/a/a/h;->d:Lcom/a/a/f;

    iget-wide v4, v2, Lcom/a/a/f;->a:D

    sub-double/2addr v4, v6

    iput-wide v4, v2, Lcom/a/a/f;->a:D

    iget-object v2, p0, Lcom/a/a/h$1;->a:Lcom/a/a/h;

    iget-object v2, v2, Lcom/a/a/h;->d:Lcom/a/a/f;

    iget-object v3, p0, Lcom/a/a/h$1;->a:Lcom/a/a/h;

    iget-object v3, v3, Lcom/a/a/h;->d:Lcom/a/a/f;

    iget-wide v4, v3, Lcom/a/a/f;->a:D

    add-double/2addr v0, v4

    iput-wide v0, v2, Lcom/a/a/f;->b:D

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/a/a/h$1;->a:Lcom/a/a/h;

    iget-boolean v0, v0, Lcom/a/a/h;->c:Z

    if-eqz v0, :cond_7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_7

    iget-object v0, p0, Lcom/a/a/h$1;->a:Lcom/a/a/h;

    invoke-static {v0}, Lcom/a/a/h;->a(Lcom/a/a/h;)Lcom/a/a/b;

    move-result-object v0

    iget-object v0, v0, Lcom/a/a/b;->a:Lcom/a/a/g;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_2
    iget-object v1, p0, Lcom/a/a/h$1;->a:Lcom/a/a/h;

    iget-object v1, v1, Lcom/a/a/h;->d:Lcom/a/a/f;

    invoke-virtual {v1}, Lcom/a/a/f;->b()D

    move-result-wide v2

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    mul-double/2addr v2, v4

    iget-object v1, p0, Lcom/a/a/h$1;->a:Lcom/a/a/h;

    iget-wide v4, v1, Lcom/a/a/h;->f:D

    const-wide/16 v6, 0x0

    cmpl-double v1, v4, v6

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/a/a/h$1;->a:Lcom/a/a/h;

    iget-wide v4, v1, Lcom/a/a/h;->f:D

    cmpl-double v1, v2, v4

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/a/a/h$1;->a:Lcom/a/a/h;

    iget-wide v2, v1, Lcom/a/a/h;->f:D

    :cond_4
    iget-object v1, p0, Lcom/a/a/h$1;->a:Lcom/a/a/h;

    iget-object v1, v1, Lcom/a/a/h;->d:Lcom/a/a/f;

    iget-wide v4, v1, Lcom/a/a/f;->d:D

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double v6, v2, v6

    add-double/2addr v4, v6

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpanY()F

    move-result v6

    div-float/2addr v1, v6

    float-to-double v6, v1

    div-double/2addr v2, v6

    iget-object v1, p0, Lcom/a/a/h$1;->a:Lcom/a/a/h;

    iget-object v1, v1, Lcom/a/a/h;->d:Lcom/a/a/f;

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double v6, v2, v6

    sub-double/2addr v4, v6

    iput-wide v4, v1, Lcom/a/a/f;->d:D

    iget-object v1, p0, Lcom/a/a/h$1;->a:Lcom/a/a/h;

    iget-object v1, v1, Lcom/a/a/h;->d:Lcom/a/a/f;

    iget-object v4, p0, Lcom/a/a/h$1;->a:Lcom/a/a/h;

    iget-object v4, v4, Lcom/a/a/h;->d:Lcom/a/a/f;

    iget-wide v4, v4, Lcom/a/a/f;->d:D

    add-double/2addr v4, v2

    iput-wide v4, v1, Lcom/a/a/f;->c:D

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/a/a/h$1;->a:Lcom/a/a/h;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/a/a/h;->d(Z)D

    move-result-wide v0

    iget-object v4, p0, Lcom/a/a/h$1;->a:Lcom/a/a/h;

    iget-object v4, v4, Lcom/a/a/h;->d:Lcom/a/a/f;

    iget-wide v4, v4, Lcom/a/a/f;->d:D

    cmpg-double v4, v4, v0

    if-gez v4, :cond_5

    iget-object v4, p0, Lcom/a/a/h$1;->a:Lcom/a/a/h;

    iget-object v4, v4, Lcom/a/a/h;->d:Lcom/a/a/f;

    iput-wide v0, v4, Lcom/a/a/f;->d:D

    iget-object v4, p0, Lcom/a/a/h$1;->a:Lcom/a/a/h;

    iget-object v4, v4, Lcom/a/a/h;->d:Lcom/a/a/f;

    iget-object v5, p0, Lcom/a/a/h$1;->a:Lcom/a/a/h;

    iget-object v5, v5, Lcom/a/a/h;->d:Lcom/a/a/f;

    iget-wide v6, v5, Lcom/a/a/f;->d:D

    add-double/2addr v6, v2

    iput-wide v6, v4, Lcom/a/a/f;->c:D

    :cond_5
    iget-object v4, p0, Lcom/a/a/h$1;->a:Lcom/a/a/h;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/a/a/h;->e(Z)D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v6, v2, v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/a/a/h$1;->a:Lcom/a/a/h;

    iget-object v6, v6, Lcom/a/a/h;->d:Lcom/a/a/f;

    iput-wide v4, v6, Lcom/a/a/f;->c:D

    :cond_6
    iget-object v6, p0, Lcom/a/a/h$1;->a:Lcom/a/a/h;

    iget-object v6, v6, Lcom/a/a/h;->d:Lcom/a/a/f;

    iget-wide v6, v6, Lcom/a/a/f;->d:D

    add-double/2addr v6, v2

    sub-double/2addr v6, v4

    const-wide/16 v8, 0x0

    cmpl-double v8, v6, v8

    if-lez v8, :cond_7

    iget-object v8, p0, Lcom/a/a/h$1;->a:Lcom/a/a/h;

    iget-object v8, v8, Lcom/a/a/h;->d:Lcom/a/a/f;

    iget-wide v8, v8, Lcom/a/a/f;->d:D

    sub-double/2addr v8, v6

    cmpl-double v8, v8, v0

    if-lez v8, :cond_b

    iget-object v0, p0, Lcom/a/a/h$1;->a:Lcom/a/a/h;

    iget-object v0, v0, Lcom/a/a/h;->d:Lcom/a/a/f;

    iget-wide v4, v0, Lcom/a/a/f;->d:D

    sub-double/2addr v4, v6

    iput-wide v4, v0, Lcom/a/a/f;->d:D

    iget-object v0, p0, Lcom/a/a/h$1;->a:Lcom/a/a/h;

    iget-object v0, v0, Lcom/a/a/h;->d:Lcom/a/a/f;

    iget-object v1, p0, Lcom/a/a/h$1;->a:Lcom/a/a/h;

    iget-object v1, v1, Lcom/a/a/h;->d:Lcom/a/a/f;

    iget-wide v4, v1, Lcom/a/a/f;->d:D

    add-double/2addr v2, v4

    iput-wide v2, v0, Lcom/a/a/f;->c:D

    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/a/a/h$1;->a:Lcom/a/a/h;

    invoke-static {v0}, Lcom/a/a/h;->a(Lcom/a/a/h;)Lcom/a/a/b;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/a/a/b;->a(ZZ)V

    iget-object v0, p0, Lcom/a/a/h$1;->a:Lcom/a/a/h;

    invoke-static {v0}, Lcom/a/a/h;->a(Lcom/a/a/h;)Lcom/a/a/b;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/h/ae;->c(Landroid/view/View;)V

    const/4 v0, 0x1

    return v0

    :cond_8
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v2

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/a/a/h$1;->a:Lcom/a/a/h;

    iget-object v0, v0, Lcom/a/a/h;->d:Lcom/a/a/f;

    iput-wide v2, v0, Lcom/a/a/f;->a:D

    iget-object v0, p0, Lcom/a/a/h$1;->a:Lcom/a/a/h;

    iget-object v0, v0, Lcom/a/a/h;->d:Lcom/a/a/f;

    iput-wide v4, v0, Lcom/a/a/f;->b:D

    goto/16 :goto_1

    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_b
    iget-object v2, p0, Lcom/a/a/h$1;->a:Lcom/a/a/h;

    iget-object v2, v2, Lcom/a/a/h;->d:Lcom/a/a/f;

    iput-wide v0, v2, Lcom/a/a/f;->d:D

    iget-object v0, p0, Lcom/a/a/h$1;->a:Lcom/a/a/h;

    iget-object v0, v0, Lcom/a/a/h;->d:Lcom/a/a/f;

    iput-wide v4, v0, Lcom/a/a/f;->c:D

    goto :goto_3

    :cond_c
    iget-object v0, p0, Lcom/a/a/h$1;->a:Lcom/a/a/h;

    invoke-static {v0}, Lcom/a/a/h;->a(Lcom/a/a/h;)Lcom/a/a/b;

    move-result-object v0

    iget-object v0, v0, Lcom/a/a/b;->a:Lcom/a/a/g;

    iget-object v0, v0, Lcom/a/a/g;->d:Lcom/a/a/f;

    invoke-virtual {v0}, Lcom/a/a/f;->b()D

    move-result-wide v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    mul-double/2addr v0, v2

    iget-object v2, p0, Lcom/a/a/h$1;->a:Lcom/a/a/h;

    invoke-static {v2}, Lcom/a/a/h;->a(Lcom/a/a/h;)Lcom/a/a/b;

    move-result-object v2

    iget-object v2, v2, Lcom/a/a/b;->a:Lcom/a/a/g;

    iget-object v2, v2, Lcom/a/a/g;->d:Lcom/a/a/f;

    iget-wide v2, v2, Lcom/a/a/f;->d:D

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double v4, v0, v4

    add-double/2addr v2, v4

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpanY()F

    move-result v5

    div-float/2addr v4, v5

    float-to-double v4, v4

    div-double/2addr v0, v4

    iget-object v4, p0, Lcom/a/a/h$1;->a:Lcom/a/a/h;

    invoke-static {v4}, Lcom/a/a/h;->a(Lcom/a/a/h;)Lcom/a/a/b;

    move-result-object v4

    iget-object v4, v4, Lcom/a/a/b;->a:Lcom/a/a/g;

    iget-object v4, v4, Lcom/a/a/g;->d:Lcom/a/a/f;

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double v6, v0, v6

    sub-double/2addr v2, v6

    iput-wide v2, v4, Lcom/a/a/f;->d:D

    iget-object v2, p0, Lcom/a/a/h$1;->a:Lcom/a/a/h;

    invoke-static {v2}, Lcom/a/a/h;->a(Lcom/a/a/h;)Lcom/a/a/b;

    move-result-object v2

    iget-object v2, v2, Lcom/a/a/b;->a:Lcom/a/a/g;

    iget-object v2, v2, Lcom/a/a/g;->d:Lcom/a/a/f;

    iget-object v3, p0, Lcom/a/a/h$1;->a:Lcom/a/a/h;

    invoke-static {v3}, Lcom/a/a/h;->a(Lcom/a/a/h;)Lcom/a/a/b;

    move-result-object v3

    iget-object v3, v3, Lcom/a/a/b;->a:Lcom/a/a/g;

    iget-object v3, v3, Lcom/a/a/g;->d:Lcom/a/a/f;

    iget-wide v4, v3, Lcom/a/a/f;->d:D

    add-double/2addr v0, v4

    iput-wide v0, v2, Lcom/a/a/f;->c:D

    goto/16 :goto_3
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/a/a/h$1;->a:Lcom/a/a/h;

    invoke-static {v1}, Lcom/a/a/h;->b(Lcom/a/a/h;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/a/a/h$1;->a:Lcom/a/a/h;

    iput-boolean v0, v1, Lcom/a/a/h;->h:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 7

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/a/a/h$1;->a:Lcom/a/a/h;

    iput-boolean v4, v0, Lcom/a/a/h;->h:Z

    iget-object v0, p0, Lcom/a/a/h$1;->a:Lcom/a/a/h;

    iget-object v0, v0, Lcom/a/a/h;->n:Lcom/a/a/h$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/h$1;->a:Lcom/a/a/h;

    iget-object v1, v0, Lcom/a/a/h;->n:Lcom/a/a/h$b;

    iget-object v0, p0, Lcom/a/a/h$1;->a:Lcom/a/a/h;

    invoke-virtual {v0, v4}, Lcom/a/a/h;->b(Z)D

    move-result-wide v2

    iget-object v0, p0, Lcom/a/a/h$1;->a:Lcom/a/a/h;

    invoke-virtual {v0, v4}, Lcom/a/a/h;->c(Z)D

    move-result-wide v4

    sget-object v6, Lcom/a/a/h$b$a;->b:Lcom/a/a/h$b$a;

    invoke-interface/range {v1 .. v6}, Lcom/a/a/h$b;->a(DDLcom/a/a/h$b$a;)V

    :cond_0
    iget-object v0, p0, Lcom/a/a/h$1;->a:Lcom/a/a/h;

    invoke-static {v0}, Lcom/a/a/h;->a(Lcom/a/a/h;)Lcom/a/a/b;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/h/ae;->c(Landroid/view/View;)V

    return-void
.end method
