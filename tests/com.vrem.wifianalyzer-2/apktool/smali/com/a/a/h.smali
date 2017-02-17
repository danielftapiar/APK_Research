.class public Lcom/a/a/h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/h$a;,
        Lcom/a/a/h$b;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:I

.field private C:Z

.field private D:Ljava/lang/Integer;

.field private E:Landroid/graphics/Paint;

.field protected a:D

.field protected b:D

.field protected c:Z

.field protected d:Lcom/a/a/f;

.field protected e:D

.field protected f:D

.field protected g:Lcom/a/a/f;

.field protected h:Z

.field protected i:Landroid/view/GestureDetector;

.field protected j:Landroid/view/ScaleGestureDetector;

.field protected k:Landroid/widget/OverScroller;

.field protected l:Lcom/a/a/h$a;

.field protected m:Lcom/a/a/h$a;

.field protected n:Lcom/a/a/h$b;

.field private final o:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field private final p:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private q:Landroid/graphics/Paint;

.field private final r:Lcom/a/a/b;

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Landroid/support/v4/widget/k;

.field private w:Landroid/support/v4/widget/k;

.field private x:Landroid/support/v4/widget/k;

.field private y:Landroid/support/v4/widget/k;

.field private z:Z


# direct methods
.method constructor <init>(Lcom/a/a/b;)V
    .locals 4

    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/a/a/h;->a:D

    iput-wide v0, p0, Lcom/a/a/h;->b:D

    new-instance v0, Lcom/a/a/h$1;

    invoke-direct {v0, p0}, Lcom/a/a/h$1;-><init>(Lcom/a/a/h;)V

    iput-object v0, p0, Lcom/a/a/h;->o:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    new-instance v0, Lcom/a/a/h$2;

    invoke-direct {v0, p0}, Lcom/a/a/h$2;-><init>(Lcom/a/a/h;)V

    iput-object v0, p0, Lcom/a/a/h;->p:Landroid/view/GestureDetector$SimpleOnGestureListener;

    new-instance v0, Lcom/a/a/f;

    invoke-direct {v0}, Lcom/a/a/f;-><init>()V

    iput-object v0, p0, Lcom/a/a/h;->d:Lcom/a/a/f;

    iput-wide v2, p0, Lcom/a/a/h;->e:D

    iput-wide v2, p0, Lcom/a/a/h;->f:D

    new-instance v0, Lcom/a/a/f;

    invoke-direct {v0}, Lcom/a/a/f;-><init>()V

    iput-object v0, p0, Lcom/a/a/h;->g:Lcom/a/a/f;

    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Lcom/a/a/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/a/a/h;->k:Landroid/widget/OverScroller;

    new-instance v0, Landroid/support/v4/widget/k;

    invoke-virtual {p1}, Lcom/a/a/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/a/a/h;->v:Landroid/support/v4/widget/k;

    new-instance v0, Landroid/support/v4/widget/k;

    invoke-virtual {p1}, Lcom/a/a/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/a/a/h;->w:Landroid/support/v4/widget/k;

    new-instance v0, Landroid/support/v4/widget/k;

    invoke-virtual {p1}, Lcom/a/a/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/a/a/h;->x:Landroid/support/v4/widget/k;

    new-instance v0, Landroid/support/v4/widget/k;

    invoke-virtual {p1}, Lcom/a/a/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/a/a/h;->y:Landroid/support/v4/widget/k;

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Lcom/a/a/b;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/a/a/h;->p:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/a/a/h;->i:Landroid/view/GestureDetector;

    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p1}, Lcom/a/a/b;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/a/a/h;->o:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/a/a/h;->j:Landroid/view/ScaleGestureDetector;

    iput-object p1, p0, Lcom/a/a/h;->r:Lcom/a/a/b;

    sget-object v0, Lcom/a/a/h$a;->a:Lcom/a/a/h$a;

    iput-object v0, p0, Lcom/a/a/h;->l:Lcom/a/a/h$a;

    sget-object v0, Lcom/a/a/h$a;->a:Lcom/a/a/h$a;

    iput-object v0, p0, Lcom/a/a/h;->m:Lcom/a/a/h$a;

    const/4 v0, 0x0

    iput v0, p0, Lcom/a/a/h;->B:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/a/a/h;->q:Landroid/graphics/Paint;

    return-void
.end method

.method static synthetic a(Lcom/a/a/h;)Lcom/a/a/b;
    .locals 1

    iget-object v0, p0, Lcom/a/a/h;->r:Lcom/a/a/b;

    return-object v0
.end method

.method static synthetic b(Lcom/a/a/h;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/a/a/h;->t:Z

    return v0
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v1, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/a/a/h;->v:Landroid/support/v4/widget/k;

    invoke-virtual {v2}, Landroid/support/v4/widget/k;->a()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    iget-object v3, p0, Lcom/a/a/h;->r:Lcom/a/a/b;

    invoke-virtual {v3}, Lcom/a/a/b;->getGraphContentLeft()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/a/a/h;->r:Lcom/a/a/b;

    invoke-virtual {v4}, Lcom/a/a/b;->getGraphContentTop()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, p0, Lcom/a/a/h;->v:Landroid/support/v4/widget/k;

    iget-object v4, p0, Lcom/a/a/h;->r:Lcom/a/a/b;

    invoke-virtual {v4}, Lcom/a/a/b;->getGraphContentWidth()I

    move-result v4

    iget-object v5, p0, Lcom/a/a/h;->r:Lcom/a/a/b;

    invoke-virtual {v5}, Lcom/a/a/b;->getGraphContentHeight()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/widget/k;->a(II)V

    iget-object v3, p0, Lcom/a/a/h;->v:Landroid/support/v4/widget/k;

    invoke-virtual {v3, p1}, Landroid/support/v4/widget/k;->a(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_1
    iget-object v2, p0, Lcom/a/a/h;->w:Landroid/support/v4/widget/k;

    invoke-virtual {v2}, Landroid/support/v4/widget/k;->a()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    iget-object v3, p0, Lcom/a/a/h;->r:Lcom/a/a/b;

    invoke-virtual {v3}, Lcom/a/a/b;->getGraphContentLeft()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/a/a/h;->r:Lcom/a/a/b;

    invoke-virtual {v4}, Lcom/a/a/b;->getGraphContentTop()I

    move-result v4

    iget-object v5, p0, Lcom/a/a/h;->r:Lcom/a/a/b;

    invoke-virtual {v5}, Lcom/a/a/b;->getGraphContentHeight()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v3, 0x43340000    # 180.0f

    iget-object v4, p0, Lcom/a/a/h;->r:Lcom/a/a/b;

    invoke-virtual {v4}, Lcom/a/a/b;->getGraphContentWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v3, p0, Lcom/a/a/h;->w:Landroid/support/v4/widget/k;

    iget-object v4, p0, Lcom/a/a/h;->r:Lcom/a/a/b;

    invoke-virtual {v4}, Lcom/a/a/b;->getGraphContentWidth()I

    move-result v4

    iget-object v5, p0, Lcom/a/a/h;->r:Lcom/a/a/b;

    invoke-virtual {v5}, Lcom/a/a/b;->getGraphContentHeight()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/widget/k;->a(II)V

    iget-object v3, p0, Lcom/a/a/h;->w:Landroid/support/v4/widget/k;

    invoke-virtual {v3, p1}, Landroid/support/v4/widget/k;->a(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    :cond_2
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    iget-object v2, p0, Lcom/a/a/h;->x:Landroid/support/v4/widget/k;

    invoke-virtual {v2}, Landroid/support/v4/widget/k;->a()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    iget-object v3, p0, Lcom/a/a/h;->r:Lcom/a/a/b;

    invoke-virtual {v3}, Lcom/a/a/b;->getGraphContentLeft()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/a/a/h;->r:Lcom/a/a/b;

    invoke-virtual {v4}, Lcom/a/a/b;->getGraphContentTop()I

    move-result v4

    iget-object v5, p0, Lcom/a/a/h;->r:Lcom/a/a/b;

    invoke-virtual {v5}, Lcom/a/a/b;->getGraphContentHeight()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v3, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v3, v6, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v3, p0, Lcom/a/a/h;->x:Landroid/support/v4/widget/k;

    iget-object v4, p0, Lcom/a/a/h;->r:Lcom/a/a/b;

    invoke-virtual {v4}, Lcom/a/a/b;->getGraphContentHeight()I

    move-result v4

    iget-object v5, p0, Lcom/a/a/h;->r:Lcom/a/a/b;

    invoke-virtual {v5}, Lcom/a/a/b;->getGraphContentWidth()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/widget/k;->a(II)V

    iget-object v3, p0, Lcom/a/a/h;->x:Landroid/support/v4/widget/k;

    invoke-virtual {v3, p1}, Landroid/support/v4/widget/k;->a(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v0, v1

    :cond_4
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_5
    iget-object v2, p0, Lcom/a/a/h;->y:Landroid/support/v4/widget/k;

    invoke-virtual {v2}, Landroid/support/v4/widget/k;->a()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    iget-object v3, p0, Lcom/a/a/h;->r:Lcom/a/a/b;

    invoke-virtual {v3}, Lcom/a/a/b;->getGraphContentLeft()I

    move-result v3

    iget-object v4, p0, Lcom/a/a/h;->r:Lcom/a/a/b;

    invoke-virtual {v4}, Lcom/a/a/b;->getGraphContentWidth()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/a/a/h;->r:Lcom/a/a/b;

    invoke-virtual {v4}, Lcom/a/a/b;->getGraphContentTop()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {p1, v3, v6, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v3, p0, Lcom/a/a/h;->y:Landroid/support/v4/widget/k;

    iget-object v4, p0, Lcom/a/a/h;->r:Lcom/a/a/b;

    invoke-virtual {v4}, Lcom/a/a/b;->getGraphContentHeight()I

    move-result v4

    iget-object v5, p0, Lcom/a/a/h;->r:Lcom/a/a/b;

    invoke-virtual {v5}, Lcom/a/a/b;->getGraphContentWidth()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/widget/k;->a(II)V

    iget-object v3, p0, Lcom/a/a/h;->y:Landroid/support/v4/widget/k;

    invoke-virtual {v3, p1}, Landroid/support/v4/widget/k;->a(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_7

    :goto_0
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :goto_1
    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/a/a/h;->r:Lcom/a/a/b;

    invoke-static {v0}, Landroid/support/v4/h/ae;->c(Landroid/view/View;)V

    :cond_6
    return-void

    :cond_7
    move v1, v0

    goto :goto_0

    :cond_8
    move v1, v0

    goto :goto_1
.end method

.method static synthetic c(Lcom/a/a/h;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/a/a/h;->s:Z

    return v0
.end method

.method static synthetic d(Lcom/a/a/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/a/a/h;->i()V

    return-void
.end method

.method static synthetic e(Lcom/a/a/h;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/a/a/h;->u:Z

    return v0
.end method

.method static synthetic f(Lcom/a/a/h;)Landroid/support/v4/widget/k;
    .locals 1

    iget-object v0, p0, Lcom/a/a/h;->x:Landroid/support/v4/widget/k;

    return-object v0
.end method

.method static synthetic g(Lcom/a/a/h;)Landroid/support/v4/widget/k;
    .locals 1

    iget-object v0, p0, Lcom/a/a/h;->w:Landroid/support/v4/widget/k;

    return-object v0
.end method

.method static synthetic h(Lcom/a/a/h;)Landroid/support/v4/widget/k;
    .locals 1

    iget-object v0, p0, Lcom/a/a/h;->y:Landroid/support/v4/widget/k;

    return-object v0
.end method

.method static synthetic i(Lcom/a/a/h;)Landroid/support/v4/widget/k;
    .locals 1

    iget-object v0, p0, Lcom/a/a/h;->v:Landroid/support/v4/widget/k;

    return-object v0
.end method

.method private i()V
    .locals 1

    iget-object v0, p0, Lcom/a/a/h;->x:Landroid/support/v4/widget/k;

    invoke-virtual {v0}, Landroid/support/v4/widget/k;->b()Z

    iget-object v0, p0, Lcom/a/a/h;->y:Landroid/support/v4/widget/k;

    invoke-virtual {v0}, Landroid/support/v4/widget/k;->b()Z

    iget-object v0, p0, Lcom/a/a/h;->v:Landroid/support/v4/widget/k;

    invoke-virtual {v0}, Landroid/support/v4/widget/k;->b()Z

    iget-object v0, p0, Lcom/a/a/h;->w:Landroid/support/v4/widget/k;

    invoke-virtual {v0}, Landroid/support/v4/widget/k;->b()Z

    return-void
.end method


# virtual methods
.method protected a()D
    .locals 2

    invoke-virtual {p0}, Lcom/a/a/h;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/a/a/h;->r:Lcom/a/a/b;

    invoke-virtual {v0}, Lcom/a/a/b;->getGridLabelRenderer()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/a/a/h;->b:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/a/a/h;->b(Z)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/a/a/h;->b:D

    :cond_0
    iget-wide v0, p0, Lcom/a/a/h;->b:D

    :goto_0
    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public a(D)V
    .locals 1

    iget-object v0, p0, Lcom/a/a/h;->d:Lcom/a/a/f;

    iput-wide p1, v0, Lcom/a/a/f;->c:D

    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 6

    iget v0, p0, Lcom/a/a/h;->B:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/h;->q:Landroid/graphics/Paint;

    iget v1, p0, Lcom/a/a/h;->B:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/a/a/h;->r:Lcom/a/a/b;

    invoke-virtual {v0}, Lcom/a/a/b;->getGraphContentLeft()I

    move-result v0

    int-to-float v1, v0

    iget-object v0, p0, Lcom/a/a/h;->r:Lcom/a/a/b;

    invoke-virtual {v0}, Lcom/a/a/b;->getGraphContentTop()I

    move-result v0

    int-to-float v2, v0

    iget-object v0, p0, Lcom/a/a/h;->r:Lcom/a/a/b;

    invoke-virtual {v0}, Lcom/a/a/b;->getGraphContentLeft()I

    move-result v0

    iget-object v3, p0, Lcom/a/a/h;->r:Lcom/a/a/b;

    invoke-virtual {v3}, Lcom/a/a/b;->getGraphContentWidth()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget-object v0, p0, Lcom/a/a/h;->r:Lcom/a/a/b;

    invoke-virtual {v0}, Lcom/a/a/b;->getGraphContentTop()I

    move-result v0

    iget-object v4, p0, Lcom/a/a/h;->r:Lcom/a/a/b;

    invoke-virtual {v4}, Lcom/a/a/b;->getGraphContentHeight()I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/a/a/h;->q:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    iget-boolean v0, p0, Lcom/a/a/h;->C:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/a/a/h;->E:Landroid/graphics/Paint;

    if-eqz v0, :cond_2

    iget-object v5, p0, Lcom/a/a/h;->E:Landroid/graphics/Paint;

    :goto_0
    iget-object v0, p0, Lcom/a/a/h;->r:Lcom/a/a/b;

    invoke-virtual {v0}, Lcom/a/a/b;->getGraphContentLeft()I

    move-result v0

    int-to-float v1, v0

    iget-object v0, p0, Lcom/a/a/h;->r:Lcom/a/a/b;

    invoke-virtual {v0}, Lcom/a/a/b;->getGraphContentTop()I

    move-result v0

    int-to-float v2, v0

    iget-object v0, p0, Lcom/a/a/h;->r:Lcom/a/a/b;

    invoke-virtual {v0}, Lcom/a/a/b;->getGraphContentLeft()I

    move-result v0

    int-to-float v3, v0

    iget-object v0, p0, Lcom/a/a/h;->r:Lcom/a/a/b;

    invoke-virtual {v0}, Lcom/a/a/b;->getGraphContentTop()I

    move-result v0

    iget-object v4, p0, Lcom/a/a/h;->r:Lcom/a/a/b;

    invoke-virtual {v4}, Lcom/a/a/b;->getGraphContentHeight()I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/a/a/h;->r:Lcom/a/a/b;

    invoke-virtual {v0}, Lcom/a/a/b;->getGraphContentLeft()I

    move-result v0

    int-to-float v1, v0

    iget-object v0, p0, Lcom/a/a/h;->r:Lcom/a/a/b;

    invoke-virtual {v0}, Lcom/a/a/b;->getGraphContentTop()I

    move-result v0

    iget-object v2, p0, Lcom/a/a/h;->r:Lcom/a/a/b;

    invoke-virtual {v2}, Lcom/a/a/b;->getGraphContentHeight()I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v2, v0

    iget-object v0, p0, Lcom/a/a/h;->r:Lcom/a/a/b;

    invoke-virtual {v0}, Lcom/a/a/b;->getGraphContentLeft()I

    move-result v0

    iget-object v3, p0, Lcom/a/a/h;->r:Lcom/a/a/b;

    invoke-virtual {v3}, Lcom/a/a/b;->getGraphContentWidth()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget-object v0, p0, Lcom/a/a/h;->r:Lcom/a/a/b;

    invoke-virtual {v0}, Lcom/a/a/b;->getGraphContentTop()I

    move-result v0

    iget-object v4, p0, Lcom/a/a/h;->r:Lcom/a/a/b;

    invoke-virtual {v4}, Lcom/a/a/b;->getGraphContentHeight()I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/a/a/h;->r:Lcom/a/a/b;

    iget-object v0, v0, Lcom/a/a/b;->a:Lcom/a/a/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/a/a/h;->r:Lcom/a/a/b;

    invoke-virtual {v0}, Lcom/a/a/b;->getGraphContentLeft()I

    move-result v0

    iget-object v1, p0, Lcom/a/a/h;->r:Lcom/a/a/b;

    invoke-virtual {v1}, Lcom/a/a/b;->getGraphContentWidth()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v1, v0

    iget-object v0, p0, Lcom/a/a/h;->r:Lcom/a/a/b;

    invoke-virtual {v0}, Lcom/a/a/b;->getGraphContentTop()I

    move-result v0

    int-to-float v2, v0

    iget-object v0, p0, Lcom/a/a/h;->r:Lcom/a/a/b;

    invoke-virtual {v0}, Lcom/a/a/b;->getGraphContentLeft()I

    move-result v0

    iget-object v3, p0, Lcom/a/a/h;->r:Lcom/a/a/b;

    invoke-virtual {v3}, Lcom/a/a/b;->getGraphContentWidth()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget-object v0, p0, Lcom/a/a/h;->r:Lcom/a/a/b;

    invoke-virtual {v0}, Lcom/a/a/b;->getGraphContentTop()I

    move-result v0

    iget-object v4, p0, Lcom/a/a/h;->r:Lcom/a/a/b;

    invoke-virtual {v4}, Lcom/a/a/b;->getGraphContentHeight()I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_1
    return-void

    :cond_2
    iget-object v5, p0, Lcom/a/a/h;->q:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/a/a/h;->g()I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_0
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/a/a/h;->s:Z

    return-void
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/a/a/h;->j:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iget-object v1, p0, Lcom/a/a/h;->i:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public b(Z)D
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/a/a/h;->g:Lcom/a/a/f;

    iget-wide v0, v0, Lcom/a/a/f;->a:D

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/h;->d:Lcom/a/a/f;

    iget-wide v0, v0, Lcom/a/a/f;->a:D

    goto :goto_0
.end method

.method public b()V
    .locals 12

    iget-object v0, p0, Lcom/a/a/h;->r:Lcom/a/a/b;

    invoke-virtual {v0}, Lcom/a/a/b;->getSeries()Ljava/util/List;

    move-result-object v10

    new-instance v11, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/a/a/h;->r:Lcom/a/a/b;

    invoke-virtual {v0}, Lcom/a/a/b;->getSeries()Ljava/util/List;

    move-result-object v0

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/a/a/h;->r:Lcom/a/a/b;

    iget-object v0, v0, Lcom/a/a/b;->a:Lcom/a/a/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/h;->r:Lcom/a/a/b;

    iget-object v0, v0, Lcom/a/a/b;->a:Lcom/a/a/g;

    invoke-virtual {v0}, Lcom/a/a/g;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v1, p0, Lcom/a/a/h;->g:Lcom/a/a/f;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    invoke-virtual/range {v1 .. v9}, Lcom/a/a/f;->a(DDDD)V

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/f;

    invoke-interface {v0}, Lcom/a/a/a/f;->h()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/f;

    invoke-interface {v0}, Lcom/a/a/a/f;->a()D

    move-result-wide v0

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/f;

    invoke-interface {v0}, Lcom/a/a/a/f;->h()Z

    move-result v1

    if-nez v1, :cond_17

    invoke-interface {v0}, Lcom/a/a/a/f;->a()D

    move-result-wide v6

    cmpl-double v1, v2, v6

    if-lez v1, :cond_17

    invoke-interface {v0}, Lcom/a/a/a/f;->a()D

    move-result-wide v2

    move-wide v0, v2

    :goto_1
    move-wide v2, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/a/a/h;->g:Lcom/a/a/f;

    iput-wide v2, v0, Lcom/a/a/f;->a:D

    const/4 v0, 0x0

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/f;

    invoke-interface {v0}, Lcom/a/a/a/f;->b()D

    move-result-wide v0

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/f;

    invoke-interface {v0}, Lcom/a/a/a/f;->h()Z

    move-result v1

    if-nez v1, :cond_16

    invoke-interface {v0}, Lcom/a/a/a/f;->b()D

    move-result-wide v6

    cmpg-double v1, v2, v6

    if-gez v1, :cond_16

    invoke-interface {v0}, Lcom/a/a/a/f;->b()D

    move-result-wide v2

    move-wide v0, v2

    :goto_3
    move-wide v2, v0

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/a/a/h;->g:Lcom/a/a/f;

    iput-wide v2, v0, Lcom/a/a/f;->b:D

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/f;

    invoke-interface {v0}, Lcom/a/a/a/f;->h()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/f;

    invoke-interface {v0}, Lcom/a/a/a/f;->h()Z

    move-result v1

    if-nez v1, :cond_15

    invoke-interface {v0}, Lcom/a/a/a/f;->c()D

    move-result-wide v6

    cmpl-double v1, v2, v6

    if-lez v1, :cond_15

    invoke-interface {v0}, Lcom/a/a/a/f;->c()D

    move-result-wide v2

    move-wide v0, v2

    :goto_5
    move-wide v2, v0

    goto :goto_4

    :cond_3
    iget-object v0, p0, Lcom/a/a/h;->g:Lcom/a/a/f;

    iput-wide v2, v0, Lcom/a/a/f;->d:D

    const/4 v0, 0x0

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/f;

    invoke-interface {v0}, Lcom/a/a/a/f;->h()Z

    move-result v1

    if-nez v1, :cond_14

    invoke-interface {v0}, Lcom/a/a/a/f;->d()D

    move-result-wide v6

    cmpg-double v1, v2, v6

    if-gez v1, :cond_14

    invoke-interface {v0}, Lcom/a/a/a/f;->d()D

    move-result-wide v2

    move-wide v0, v2

    :goto_7
    move-wide v2, v0

    goto :goto_6

    :cond_4
    iget-object v0, p0, Lcom/a/a/h;->g:Lcom/a/a/f;

    iput-wide v2, v0, Lcom/a/a/f;->c:D

    :cond_5
    iget-object v0, p0, Lcom/a/a/h;->m:Lcom/a/a/h$a;

    sget-object v1, Lcom/a/a/h$a;->b:Lcom/a/a/h$a;

    if-ne v0, v1, :cond_6

    sget-object v0, Lcom/a/a/h$a;->a:Lcom/a/a/h$a;

    iput-object v0, p0, Lcom/a/a/h;->m:Lcom/a/a/h$a;

    :cond_6
    iget-object v0, p0, Lcom/a/a/h;->m:Lcom/a/a/h$a;

    sget-object v1, Lcom/a/a/h$a;->a:Lcom/a/a/h$a;

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/a/a/h;->d:Lcom/a/a/f;

    iget-object v1, p0, Lcom/a/a/h;->g:Lcom/a/a/f;

    iget-wide v2, v1, Lcom/a/a/f;->c:D

    iput-wide v2, v0, Lcom/a/a/f;->c:D

    iget-object v0, p0, Lcom/a/a/h;->d:Lcom/a/a/f;

    iget-object v1, p0, Lcom/a/a/h;->g:Lcom/a/a/f;

    iget-wide v2, v1, Lcom/a/a/f;->d:D

    iput-wide v2, v0, Lcom/a/a/f;->d:D

    :cond_7
    iget-object v0, p0, Lcom/a/a/h;->l:Lcom/a/a/h$a;

    sget-object v1, Lcom/a/a/h$a;->b:Lcom/a/a/h$a;

    if-ne v0, v1, :cond_8

    sget-object v0, Lcom/a/a/h$a;->a:Lcom/a/a/h$a;

    iput-object v0, p0, Lcom/a/a/h;->l:Lcom/a/a/h$a;

    :cond_8
    iget-object v0, p0, Lcom/a/a/h;->l:Lcom/a/a/h$a;

    sget-object v1, Lcom/a/a/h$a;->a:Lcom/a/a/h$a;

    if-ne v0, v1, :cond_c

    iget-object v0, p0, Lcom/a/a/h;->d:Lcom/a/a/f;

    iget-object v1, p0, Lcom/a/a/h;->g:Lcom/a/a/f;

    iget-wide v2, v1, Lcom/a/a/f;->a:D

    iput-wide v2, v0, Lcom/a/a/f;->a:D

    iget-object v0, p0, Lcom/a/a/h;->d:Lcom/a/a/f;

    iget-object v1, p0, Lcom/a/a/h;->g:Lcom/a/a/f;

    iget-wide v2, v1, Lcom/a/a/f;->b:D

    iput-wide v2, v0, Lcom/a/a/f;->b:D

    :cond_9
    :goto_8
    iget-object v0, p0, Lcom/a/a/h;->d:Lcom/a/a/f;

    iget-wide v0, v0, Lcom/a/a/f;->a:D

    iget-object v2, p0, Lcom/a/a/h;->d:Lcom/a/a/f;

    iget-wide v2, v2, Lcom/a/a/f;->b:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/a/a/h;->d:Lcom/a/a/f;

    iget-wide v2, v0, Lcom/a/a/f;->b:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    iput-wide v2, v0, Lcom/a/a/f;->b:D

    :cond_a
    iget-object v0, p0, Lcom/a/a/h;->d:Lcom/a/a/f;

    iget-wide v0, v0, Lcom/a/a/f;->c:D

    iget-object v2, p0, Lcom/a/a/h;->d:Lcom/a/a/f;

    iget-wide v2, v2, Lcom/a/a/f;->d:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/a/a/h;->d:Lcom/a/a/f;

    iget-wide v2, v0, Lcom/a/a/f;->c:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    iput-wide v2, v0, Lcom/a/a/f;->c:D

    :cond_b
    return-void

    :cond_c
    iget-boolean v0, p0, Lcom/a/a/h;->z:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/a/a/h;->A:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/a/a/h;->g:Lcom/a/a/f;

    invoke-virtual {v0}, Lcom/a/a/f;->a()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_9

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :cond_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/f;

    iget-object v1, p0, Lcom/a/a/h;->d:Lcom/a/a/f;

    iget-wide v6, v1, Lcom/a/a/f;->a:D

    iget-object v1, p0, Lcom/a/a/h;->d:Lcom/a/a/f;

    iget-wide v8, v1, Lcom/a/a/f;->b:D

    invoke-interface {v0, v6, v7, v8, v9}, Lcom/a/a/a/f;->a(DD)Ljava/util/Iterator;

    move-result-object v5

    :cond_e
    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/c;

    invoke-interface {v0}, Lcom/a/a/a/c;->b()D

    move-result-wide v0

    cmpl-double v6, v2, v0

    if-lez v6, :cond_e

    move-wide v2, v0

    goto :goto_9

    :cond_f
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v0, v2, v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/a/a/h;->d:Lcom/a/a/f;

    iput-wide v2, v0, Lcom/a/a/f;->d:D

    :cond_10
    const-wide/16 v0, 0x1

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :cond_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/f;

    iget-object v1, p0, Lcom/a/a/h;->d:Lcom/a/a/f;

    iget-wide v6, v1, Lcom/a/a/f;->a:D

    iget-object v1, p0, Lcom/a/a/h;->d:Lcom/a/a/f;

    iget-wide v8, v1, Lcom/a/a/f;->b:D

    invoke-interface {v0, v6, v7, v8, v9}, Lcom/a/a/a/f;->a(DD)Ljava/util/Iterator;

    move-result-object v5

    :cond_12
    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/c;

    invoke-interface {v0}, Lcom/a/a/a/c;->b()D

    move-result-wide v0

    cmpg-double v6, v2, v0

    if-gez v6, :cond_12

    move-wide v2, v0

    goto :goto_a

    :cond_13
    const-wide/16 v0, 0x1

    cmpl-double v0, v2, v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/a/a/h;->d:Lcom/a/a/f;

    iput-wide v2, v0, Lcom/a/a/f;->c:D

    goto/16 :goto_8

    :cond_14
    move-wide v0, v2

    goto/16 :goto_7

    :cond_15
    move-wide v0, v2

    goto/16 :goto_5

    :cond_16
    move-wide v0, v2

    goto/16 :goto_3

    :cond_17
    move-wide v0, v2

    goto/16 :goto_1
.end method

.method public b(D)V
    .locals 1

    iget-object v0, p0, Lcom/a/a/h;->d:Lcom/a/a/f;

    iput-wide p1, v0, Lcom/a/a/f;->d:D

    return-void
.end method

.method public b(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/a/a/h;->c(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public c(Z)D
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/a/a/h;->g:Lcom/a/a/f;

    iget-wide v0, v0, Lcom/a/a/f;->b:D

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/h;->d:Lcom/a/a/f;

    iget-wide v0, v0, Lcom/a/a/f;->b:D

    goto :goto_0
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public c(D)V
    .locals 1

    iget-object v0, p0, Lcom/a/a/h;->d:Lcom/a/a/f;

    iput-wide p1, v0, Lcom/a/a/f;->b:D

    return-void
.end method

.method public d(Z)D
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/a/a/h;->g:Lcom/a/a/f;

    iget-wide v0, v0, Lcom/a/a/f;->d:D

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/h;->d:Lcom/a/a/f;

    iget-wide v0, v0, Lcom/a/a/f;->d:D

    goto :goto_0
.end method

.method public d(D)V
    .locals 1

    iget-object v0, p0, Lcom/a/a/h;->d:Lcom/a/a/f;

    iput-wide p1, v0, Lcom/a/a/f;->a:D

    return-void
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/a/a/h;->z:Z

    return v0
.end method

.method public e(Z)D
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/a/a/h;->g:Lcom/a/a/f;

    iget-wide v0, v0, Lcom/a/a/f;->c:D

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/h;->d:Lcom/a/a/f;

    iget-wide v0, v0, Lcom/a/a/f;->c:D

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/a/a/h;->A:Z

    return v0
.end method

.method public f()V
    .locals 6

    iget-boolean v0, p0, Lcom/a/a/h;->z:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/h;->d:Lcom/a/a/f;

    invoke-virtual {v0}, Lcom/a/a/f;->a()D

    move-result-wide v0

    iget-object v2, p0, Lcom/a/a/h;->d:Lcom/a/a/f;

    iget-object v3, p0, Lcom/a/a/h;->g:Lcom/a/a/f;

    iget-wide v4, v3, Lcom/a/a/f;->b:D

    iput-wide v4, v2, Lcom/a/a/f;->b:D

    iget-object v2, p0, Lcom/a/a/h;->d:Lcom/a/a/f;

    iget-object v3, p0, Lcom/a/a/h;->g:Lcom/a/a/f;

    iget-wide v4, v3, Lcom/a/a/f;->b:D

    sub-double v0, v4, v0

    iput-wide v0, v2, Lcom/a/a/f;->a:D

    iget-object v0, p0, Lcom/a/a/h;->r:Lcom/a/a/b;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/a/a/b;->a(ZZ)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "GraphView"

    const-string v1, "scrollToEnd works only with manual x axis bounds"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public f(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/a/a/h;->z:Z

    if-eqz p1, :cond_0

    sget-object v0, Lcom/a/a/h$a;->c:Lcom/a/a/h$a;

    iput-object v0, p0, Lcom/a/a/h;->l:Lcom/a/a/h$a;

    :cond_0
    return-void
.end method

.method public g()I
    .locals 1

    iget-object v0, p0, Lcom/a/a/h;->D:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/h;->D:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/h;->r:Lcom/a/a/b;

    invoke-virtual {v0}, Lcom/a/a/b;->getGridLabelRenderer()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->o()I

    move-result v0

    goto :goto_0
.end method

.method public g(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/a/a/h;->A:Z

    if-eqz p1, :cond_0

    sget-object v0, Lcom/a/a/h$a;->c:Lcom/a/a/h$a;

    iput-object v0, p0, Lcom/a/a/h;->m:Lcom/a/a/h$a;

    :cond_0
    return-void
.end method

.method protected h()D
    .locals 2

    invoke-virtual {p0}, Lcom/a/a/h;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/a/a/h;->r:Lcom/a/a/b;

    invoke-virtual {v0}, Lcom/a/a/b;->getGridLabelRenderer()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/a/a/h;->a:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/a/a/h;->d(Z)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/a/a/h;->a:D

    :cond_0
    iget-wide v0, p0, Lcom/a/a/h;->a:D

    :goto_0
    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method
