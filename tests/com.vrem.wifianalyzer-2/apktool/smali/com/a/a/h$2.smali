.class Lcom/a/a/h$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


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

    iput-object p1, p0, Lcom/a/a/h$2;->a:Lcom/a/a/h;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/a/a/h$2;->a:Lcom/a/a/h;

    invoke-static {v1}, Lcom/a/a/h;->c(Lcom/a/a/h;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/a/a/h$2;->a:Lcom/a/a/h;

    iget-boolean v1, v1, Lcom/a/a/h;->h:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/a/a/h$2;->a:Lcom/a/a/h;

    invoke-static {v1}, Lcom/a/a/h;->d(Lcom/a/a/h;)V

    iget-object v1, p0, Lcom/a/a/h$2;->a:Lcom/a/a/h;

    iget-object v1, v1, Lcom/a/a/h;->k:Landroid/widget/OverScroller;

    invoke-virtual {v1, v0}, Landroid/widget/OverScroller;->forceFinished(Z)V

    iget-object v1, p0, Lcom/a/a/h$2;->a:Lcom/a/a/h;

    invoke-static {v1}, Lcom/a/a/h;->a(Lcom/a/a/h;)Lcom/a/a/b;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/h/ae;->c(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/a/h$2;->a:Lcom/a/a/h;

    invoke-static {v2}, Lcom/a/a/h;->c(Lcom/a/a/h;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/a/h$2;->a:Lcom/a/a/h;

    iget-boolean v2, v2, Lcom/a/a/h;->h:Z

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    move/from16 v0, p3

    float-to-double v2, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a/a/h$2;->a:Lcom/a/a/h;

    iget-object v4, v4, Lcom/a/a/h;->d:Lcom/a/a/f;

    invoke-virtual {v4}, Lcom/a/a/f;->a()D

    move-result-wide v4

    mul-double/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a/a/h$2;->a:Lcom/a/a/h;

    invoke-static {v4}, Lcom/a/a/h;->a(Lcom/a/a/h;)Lcom/a/a/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/a/a/b;->getGraphContentWidth()I

    move-result v4

    int-to-double v4, v4

    div-double v8, v2, v4

    move/from16 v0, p4

    float-to-double v2, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a/a/h$2;->a:Lcom/a/a/h;

    iget-object v4, v4, Lcom/a/a/h;->d:Lcom/a/a/f;

    invoke-virtual {v4}, Lcom/a/a/f;->b()D

    move-result-wide v4

    mul-double/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a/a/h$2;->a:Lcom/a/a/h;

    invoke-static {v4}, Lcom/a/a/h;->a(Lcom/a/a/h;)Lcom/a/a/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/a/a/b;->getGraphContentHeight()I

    move-result v4

    int-to-double v4, v4

    div-double v12, v2, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/a/h$2;->a:Lcom/a/a/h;

    iget-object v2, v2, Lcom/a/a/h;->g:Lcom/a/a/f;

    invoke-virtual {v2}, Lcom/a/a/f;->a()D

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a/a/h$2;->a:Lcom/a/a/h;

    iget-object v4, v4, Lcom/a/a/h;->d:Lcom/a/a/f;

    invoke-virtual {v4}, Lcom/a/a/f;->a()D

    move-result-wide v4

    div-double/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a/a/h$2;->a:Lcom/a/a/h;

    invoke-static {v4}, Lcom/a/a/h;->a(Lcom/a/a/h;)Lcom/a/a/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/a/a/b;->getGraphContentWidth()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v15, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/a/h$2;->a:Lcom/a/a/h;

    iget-object v2, v2, Lcom/a/a/h;->g:Lcom/a/a/f;

    invoke-virtual {v2}, Lcom/a/a/f;->b()D

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a/a/h$2;->a:Lcom/a/a/h;

    iget-object v4, v4, Lcom/a/a/h;->d:Lcom/a/a/f;

    invoke-virtual {v4}, Lcom/a/a/f;->b()D

    move-result-wide v4

    div-double/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a/a/h$2;->a:Lcom/a/a/h;

    invoke-static {v4}, Lcom/a/a/h;->a(Lcom/a/a/h;)Lcom/a/a/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/a/a/b;->getGraphContentHeight()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v0, v2

    move/from16 v16, v0

    int-to-double v2, v15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a/a/h$2;->a:Lcom/a/a/h;

    iget-object v4, v4, Lcom/a/a/h;->d:Lcom/a/a/f;

    iget-wide v4, v4, Lcom/a/a/f;->a:D

    add-double/2addr v4, v8

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/a/a/h$2;->a:Lcom/a/a/h;

    iget-object v6, v6, Lcom/a/a/h;->g:Lcom/a/a/f;

    iget-wide v6, v6, Lcom/a/a/f;->a:D

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a/a/h$2;->a:Lcom/a/a/h;

    iget-object v4, v4, Lcom/a/a/h;->g:Lcom/a/a/f;

    invoke-virtual {v4}, Lcom/a/a/f;->a()D

    move-result-wide v4

    div-double/2addr v2, v4

    double-to-int v0, v2

    move/from16 v17, v0

    move/from16 v0, v16

    int-to-double v2, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a/a/h$2;->a:Lcom/a/a/h;

    iget-object v4, v4, Lcom/a/a/h;->d:Lcom/a/a/f;

    iget-wide v4, v4, Lcom/a/a/f;->d:D

    add-double/2addr v4, v12

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/a/a/h$2;->a:Lcom/a/a/h;

    iget-object v6, v6, Lcom/a/a/h;->g:Lcom/a/a/f;

    iget-wide v6, v6, Lcom/a/a/f;->d:D

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a/a/h$2;->a:Lcom/a/a/h;

    iget-object v4, v4, Lcom/a/a/h;->g:Lcom/a/a/f;

    invoke-virtual {v4}, Lcom/a/a/f;->b()D

    move-result-wide v4

    div-double/2addr v2, v4

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    mul-double/2addr v2, v4

    double-to-int v0, v2

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/a/h$2;->a:Lcom/a/a/h;

    iget-object v2, v2, Lcom/a/a/h;->d:Lcom/a/a/f;

    iget-wide v2, v2, Lcom/a/a/f;->a:D

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a/a/h$2;->a:Lcom/a/a/h;

    iget-object v4, v4, Lcom/a/a/h;->g:Lcom/a/a/f;

    iget-wide v4, v4, Lcom/a/a/f;->a:D

    cmpl-double v2, v2, v4

    if-gtz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/a/h$2;->a:Lcom/a/a/h;

    iget-object v2, v2, Lcom/a/a/h;->d:Lcom/a/a/f;

    iget-wide v2, v2, Lcom/a/a/f;->b:D

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a/a/h$2;->a:Lcom/a/a/h;

    iget-object v4, v4, Lcom/a/a/h;->g:Lcom/a/a/f;

    iget-wide v4, v4, Lcom/a/a/f;->b:D

    cmpg-double v2, v2, v4

    if-gez v2, :cond_c

    :cond_2
    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a/a/h$2;->a:Lcom/a/a/h;

    iget-object v3, v3, Lcom/a/a/h;->d:Lcom/a/a/f;

    iget-wide v4, v3, Lcom/a/a/f;->d:D

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a/a/h$2;->a:Lcom/a/a/h;

    iget-object v3, v3, Lcom/a/a/h;->g:Lcom/a/a/f;

    iget-wide v6, v3, Lcom/a/a/f;->d:D

    cmpl-double v3, v4, v6

    if-gtz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a/a/h$2;->a:Lcom/a/a/h;

    iget-object v3, v3, Lcom/a/a/h;->d:Lcom/a/a/f;

    iget-wide v4, v3, Lcom/a/a/f;->c:D

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a/a/h$2;->a:Lcom/a/a/h;

    iget-object v3, v3, Lcom/a/a/h;->g:Lcom/a/a/f;

    iget-wide v6, v3, Lcom/a/a/f;->c:D

    cmpg-double v3, v4, v6

    if-gez v3, :cond_d

    :cond_3
    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a/a/h$2;->a:Lcom/a/a/h;

    invoke-static {v4}, Lcom/a/a/h;->a(Lcom/a/a/h;)Lcom/a/a/b;

    move-result-object v4

    iget-object v4, v4, Lcom/a/a/b;->a:Lcom/a/a/g;

    if-eqz v4, :cond_e

    const/4 v4, 0x1

    move v14, v4

    :goto_3
    const-wide/16 v4, 0x0

    if-eqz v14, :cond_14

    move/from16 v0, p4

    float-to-double v4, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/a/a/h$2;->a:Lcom/a/a/h;

    invoke-static {v6}, Lcom/a/a/h;->a(Lcom/a/a/h;)Lcom/a/a/b;

    move-result-object v6

    iget-object v6, v6, Lcom/a/a/b;->a:Lcom/a/a/g;

    iget-object v6, v6, Lcom/a/a/g;->d:Lcom/a/a/f;

    invoke-virtual {v6}, Lcom/a/a/f;->b()D

    move-result-wide v6

    mul-double/2addr v4, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/a/a/h$2;->a:Lcom/a/a/h;

    invoke-static {v6}, Lcom/a/a/h;->a(Lcom/a/a/h;)Lcom/a/a/b;

    move-result-object v6

    invoke-virtual {v6}, Lcom/a/a/b;->getGraphContentHeight()I

    move-result v6

    int-to-double v6, v6

    div-double v6, v4, v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a/a/h$2;->a:Lcom/a/a/h;

    invoke-static {v4}, Lcom/a/a/h;->a(Lcom/a/a/h;)Lcom/a/a/b;

    move-result-object v4

    iget-object v4, v4, Lcom/a/a/b;->a:Lcom/a/a/g;

    iget-object v4, v4, Lcom/a/a/g;->d:Lcom/a/a/f;

    iget-wide v4, v4, Lcom/a/a/f;->d:D

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/a/a/h$2;->a:Lcom/a/a/h;

    invoke-static {v10}, Lcom/a/a/h;->a(Lcom/a/a/h;)Lcom/a/a/b;

    move-result-object v10

    iget-object v10, v10, Lcom/a/a/b;->a:Lcom/a/a/g;

    iget-object v10, v10, Lcom/a/a/g;->c:Lcom/a/a/f;

    iget-wide v10, v10, Lcom/a/a/f;->d:D

    cmpl-double v4, v4, v10

    if-gtz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a/a/h$2;->a:Lcom/a/a/h;

    invoke-static {v4}, Lcom/a/a/h;->a(Lcom/a/a/h;)Lcom/a/a/b;

    move-result-object v4

    iget-object v4, v4, Lcom/a/a/b;->a:Lcom/a/a/g;

    iget-object v4, v4, Lcom/a/a/g;->d:Lcom/a/a/f;

    iget-wide v4, v4, Lcom/a/a/f;->c:D

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/a/a/h$2;->a:Lcom/a/a/h;

    invoke-static {v10}, Lcom/a/a/h;->a(Lcom/a/a/h;)Lcom/a/a/b;

    move-result-object v10

    iget-object v10, v10, Lcom/a/a/b;->a:Lcom/a/a/g;

    iget-object v10, v10, Lcom/a/a/g;->c:Lcom/a/a/f;

    iget-wide v10, v10, Lcom/a/a/f;->c:D

    cmpg-double v4, v4, v10

    if-gez v4, :cond_f

    :cond_4
    const/4 v4, 0x1

    :goto_4
    or-int/2addr v3, v4

    move-wide v10, v6

    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a/a/h$2;->a:Lcom/a/a/h;

    invoke-static {v4}, Lcom/a/a/h;->e(Lcom/a/a/h;)Z

    move-result v4

    and-int v19, v3, v4

    if-eqz v2, :cond_5

    const-wide/16 v4, 0x0

    cmpg-double v3, v8, v4

    if-gez v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a/a/h$2;->a:Lcom/a/a/h;

    iget-object v3, v3, Lcom/a/a/h;->d:Lcom/a/a/f;

    iget-wide v4, v3, Lcom/a/a/f;->a:D

    add-double/2addr v4, v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a/a/h$2;->a:Lcom/a/a/h;

    iget-object v3, v3, Lcom/a/a/h;->g:Lcom/a/a/f;

    iget-wide v6, v3, Lcom/a/a/f;->a:D

    sub-double/2addr v4, v6

    const-wide/16 v6, 0x0

    cmpg-double v3, v4, v6

    if-gez v3, :cond_13

    sub-double v4, v8, v4

    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a/a/h$2;->a:Lcom/a/a/h;

    iget-object v3, v3, Lcom/a/a/h;->d:Lcom/a/a/f;

    iget-wide v6, v3, Lcom/a/a/f;->a:D

    add-double/2addr v6, v4

    iput-wide v6, v3, Lcom/a/a/f;->a:D

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a/a/h$2;->a:Lcom/a/a/h;

    iget-object v3, v3, Lcom/a/a/h;->d:Lcom/a/a/f;

    iget-wide v6, v3, Lcom/a/a/f;->b:D

    add-double/2addr v4, v6

    iput-wide v4, v3, Lcom/a/a/f;->b:D

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a/a/h$2;->a:Lcom/a/a/h;

    iget-object v3, v3, Lcom/a/a/h;->n:Lcom/a/a/h$b;

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a/a/h$2;->a:Lcom/a/a/h;

    iget-object v3, v3, Lcom/a/a/h;->n:Lcom/a/a/h$b;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a/a/h$2;->a:Lcom/a/a/h;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/a/a/h;->b(Z)D

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/a/a/h$2;->a:Lcom/a/a/h;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/a/a/h;->c(Z)D

    move-result-wide v6

    sget-object v8, Lcom/a/a/h$b$a;->a:Lcom/a/a/h$b$a;

    invoke-interface/range {v3 .. v8}, Lcom/a/a/h$b;->a(DDLcom/a/a/h$b$a;)V

    :cond_5
    if-eqz v19, :cond_7

    if-nez v14, :cond_6

    const-wide/16 v4, 0x0

    cmpg-double v3, v12, v4

    if-gez v3, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a/a/h$2;->a:Lcom/a/a/h;

    iget-object v3, v3, Lcom/a/a/h;->d:Lcom/a/a/f;

    iget-wide v4, v3, Lcom/a/a/f;->d:D

    add-double/2addr v4, v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a/a/h$2;->a:Lcom/a/a/h;

    iget-object v3, v3, Lcom/a/a/h;->g:Lcom/a/a/f;

    iget-wide v6, v3, Lcom/a/a/f;->d:D

    sub-double/2addr v4, v6

    const-wide/16 v6, 0x0

    cmpg-double v3, v4, v6

    if-gez v3, :cond_12

    sub-double v4, v12, v4

    :goto_7
    move-wide v12, v4

    :cond_6
    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a/a/h$2;->a:Lcom/a/a/h;

    iget-object v3, v3, Lcom/a/a/h;->d:Lcom/a/a/f;

    iget-wide v4, v3, Lcom/a/a/f;->c:D

    add-double/2addr v4, v12

    iput-wide v4, v3, Lcom/a/a/f;->c:D

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a/a/h$2;->a:Lcom/a/a/h;

    iget-object v3, v3, Lcom/a/a/h;->d:Lcom/a/a/f;

    iget-wide v4, v3, Lcom/a/a/f;->d:D

    add-double/2addr v4, v12

    iput-wide v4, v3, Lcom/a/a/f;->d:D

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a/a/h$2;->a:Lcom/a/a/h;

    invoke-static {v3}, Lcom/a/a/h;->a(Lcom/a/a/h;)Lcom/a/a/b;

    move-result-object v3

    iget-object v3, v3, Lcom/a/a/b;->a:Lcom/a/a/g;

    iget-object v3, v3, Lcom/a/a/g;->d:Lcom/a/a/f;

    iget-wide v4, v3, Lcom/a/a/f;->c:D

    add-double/2addr v4, v10

    iput-wide v4, v3, Lcom/a/a/f;->c:D

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a/a/h$2;->a:Lcom/a/a/h;

    invoke-static {v3}, Lcom/a/a/h;->a(Lcom/a/a/h;)Lcom/a/a/b;

    move-result-object v3

    iget-object v3, v3, Lcom/a/a/b;->a:Lcom/a/a/g;

    iget-object v3, v3, Lcom/a/a/g;->d:Lcom/a/a/f;

    iget-wide v4, v3, Lcom/a/a/f;->d:D

    add-double/2addr v4, v10

    iput-wide v4, v3, Lcom/a/a/f;->d:D

    :cond_7
    if-eqz v2, :cond_8

    if-gez v17, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a/a/h$2;->a:Lcom/a/a/h;

    invoke-static {v3}, Lcom/a/a/h;->f(Lcom/a/a/h;)Landroid/support/v4/widget/k;

    move-result-object v3

    move/from16 v0, v17

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/a/a/h$2;->a:Lcom/a/a/h;

    invoke-static {v5}, Lcom/a/a/h;->a(Lcom/a/a/h;)Lcom/a/a/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/a/a/b;->getGraphContentWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/k;->a(F)Z

    :cond_8
    if-nez v14, :cond_9

    if-eqz v19, :cond_9

    if-gez v18, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a/a/h$2;->a:Lcom/a/a/h;

    invoke-static {v3}, Lcom/a/a/h;->g(Lcom/a/a/h;)Landroid/support/v4/widget/k;

    move-result-object v3

    move/from16 v0, v18

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/a/a/h$2;->a:Lcom/a/a/h;

    invoke-static {v5}, Lcom/a/a/h;->a(Lcom/a/a/h;)Lcom/a/a/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/a/a/b;->getGraphContentHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/k;->a(F)Z

    :cond_9
    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/a/h$2;->a:Lcom/a/a/h;

    invoke-static {v2}, Lcom/a/a/h;->a(Lcom/a/a/h;)Lcom/a/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/b;->getGraphContentWidth()I

    move-result v2

    sub-int v2, v15, v2

    move/from16 v0, v17

    if-le v0, v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/a/h$2;->a:Lcom/a/a/h;

    invoke-static {v2}, Lcom/a/a/h;->h(Lcom/a/a/h;)Landroid/support/v4/widget/k;

    move-result-object v2

    sub-int v3, v17, v15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a/a/h$2;->a:Lcom/a/a/h;

    invoke-static {v4}, Lcom/a/a/h;->a(Lcom/a/a/h;)Lcom/a/a/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/a/a/b;->getGraphContentWidth()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a/a/h$2;->a:Lcom/a/a/h;

    invoke-static {v4}, Lcom/a/a/h;->a(Lcom/a/a/h;)Lcom/a/a/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/a/a/b;->getGraphContentWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/k;->a(F)Z

    :cond_a
    if-nez v14, :cond_b

    if-eqz v19, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/a/h$2;->a:Lcom/a/a/h;

    invoke-static {v2}, Lcom/a/a/h;->a(Lcom/a/a/h;)Lcom/a/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/b;->getGraphContentHeight()I

    move-result v2

    sub-int v2, v16, v2

    move/from16 v0, v18

    if-le v0, v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/a/h$2;->a:Lcom/a/a/h;

    invoke-static {v2}, Lcom/a/a/h;->i(Lcom/a/a/h;)Landroid/support/v4/widget/k;

    move-result-object v2

    sub-int v3, v18, v16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a/a/h$2;->a:Lcom/a/a/h;

    invoke-static {v4}, Lcom/a/a/h;->a(Lcom/a/a/h;)Lcom/a/a/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/a/a/b;->getGraphContentHeight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a/a/h$2;->a:Lcom/a/a/h;

    invoke-static {v4}, Lcom/a/a/h;->a(Lcom/a/a/h;)Lcom/a/a/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/a/a/b;->getGraphContentHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/k;->a(F)Z

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/a/h$2;->a:Lcom/a/a/h;

    invoke-static {v2}, Lcom/a/a/h;->a(Lcom/a/a/h;)Lcom/a/a/b;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/a/a/b;->a(ZZ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/a/h$2;->a:Lcom/a/a/h;

    invoke-static {v2}, Lcom/a/a/h;->a(Lcom/a/a/h;)Lcom/a/a/b;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/h/ae;->c(Landroid/view/View;)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_d
    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_e
    const/4 v4, 0x0

    move v14, v4

    goto/16 :goto_3

    :cond_f
    const/4 v4, 0x0

    goto/16 :goto_4

    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a/a/h$2;->a:Lcom/a/a/h;

    iget-object v3, v3, Lcom/a/a/h;->d:Lcom/a/a/f;

    iget-wide v4, v3, Lcom/a/a/f;->b:D

    add-double/2addr v4, v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a/a/h$2;->a:Lcom/a/a/h;

    iget-object v3, v3, Lcom/a/a/h;->g:Lcom/a/a/f;

    iget-wide v6, v3, Lcom/a/a/f;->b:D

    sub-double/2addr v4, v6

    const-wide/16 v6, 0x0

    cmpl-double v3, v4, v6

    if-lez v3, :cond_13

    sub-double v4, v8, v4

    goto/16 :goto_6

    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a/a/h$2;->a:Lcom/a/a/h;

    iget-object v3, v3, Lcom/a/a/h;->d:Lcom/a/a/f;

    iget-wide v4, v3, Lcom/a/a/f;->c:D

    add-double/2addr v4, v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a/a/h$2;->a:Lcom/a/a/h;

    iget-object v3, v3, Lcom/a/a/h;->g:Lcom/a/a/f;

    iget-wide v6, v3, Lcom/a/a/f;->c:D

    sub-double/2addr v4, v6

    const-wide/16 v6, 0x0

    cmpl-double v3, v4, v6

    if-lez v3, :cond_6

    sub-double/2addr v12, v4

    goto/16 :goto_8

    :cond_12
    move-wide v4, v12

    goto/16 :goto_7

    :cond_13
    move-wide v4, v8

    goto/16 :goto_6

    :cond_14
    move-wide v10, v4

    goto/16 :goto_5
.end method
