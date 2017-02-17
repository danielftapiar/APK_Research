.class Landroid/support/design/widget/r;
.super Landroid/support/design/widget/q$e;


# static fields
.field private static final a:Landroid/os/Handler;


# instance fields
.field private b:J

.field private c:Z

.field private d:F

.field private final e:[I

.field private final f:[F

.field private g:J

.field private h:Landroid/view/animation/Interpolator;

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/design/widget/q$e$a;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/design/widget/q$e$b;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Landroid/support/design/widget/r;->a:Landroid/os/Handler;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/4 v1, 0x2

    invoke-direct {p0}, Landroid/support/design/widget/q$e;-><init>()V

    new-array v0, v1, [I

    iput-object v0, p0, Landroid/support/design/widget/r;->e:[I

    new-array v0, v1, [F

    iput-object v0, p0, Landroid/support/design/widget/r;->f:[F

    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Landroid/support/design/widget/r;->g:J

    new-instance v0, Landroid/support/design/widget/r$1;

    invoke-direct {v0, p0}, Landroid/support/design/widget/r$1;-><init>(Landroid/support/design/widget/r;)V

    iput-object v0, p0, Landroid/support/design/widget/r;->k:Ljava/lang/Runnable;

    return-void
.end method

.method private i()V
    .locals 3

    iget-object v0, p0, Landroid/support/design/widget/r;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/design/widget/r;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/r;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/q$e$b;

    invoke-interface {v0}, Landroid/support/design/widget/q$e$b;->a()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private j()V
    .locals 3

    iget-object v0, p0, Landroid/support/design/widget/r;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/design/widget/r;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/r;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/q$e$a;

    invoke-interface {v0}, Landroid/support/design/widget/q$e$a;->a()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private k()V
    .locals 3

    iget-object v0, p0, Landroid/support/design/widget/r;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/design/widget/r;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/r;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/q$e$a;

    invoke-interface {v0}, Landroid/support/design/widget/q$e$a;->c()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private l()V
    .locals 3

    iget-object v0, p0, Landroid/support/design/widget/r;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/design/widget/r;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/r;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/q$e$a;

    invoke-interface {v0}, Landroid/support/design/widget/q$e$a;->b()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-boolean v0, p0, Landroid/support/design/widget/r;->c:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/r;->h:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_1

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/r;->h:Landroid/view/animation/Interpolator;

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/r;->c:Z

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/design/widget/r;->d:F

    invoke-virtual {p0}, Landroid/support/design/widget/r;->g()V

    goto :goto_0
.end method

.method public a(FF)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/r;->f:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object v0, p0, Landroid/support/design/widget/r;->f:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    return-void
.end method

.method public a(II)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/r;->e:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object v0, p0, Landroid/support/design/widget/r;->e:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    return-void
.end method

.method public a(J)V
    .locals 1

    iput-wide p1, p0, Landroid/support/design/widget/r;->g:J

    return-void
.end method

.method public a(Landroid/support/design/widget/q$e$a;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/r;->i:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/r;->i:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/r;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Landroid/support/design/widget/q$e$b;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/r;->j:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/r;->j:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/r;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Landroid/view/animation/Interpolator;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/r;->h:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/design/widget/r;->c:Z

    return v0
.end method

.method public c()I
    .locals 3

    iget-object v0, p0, Landroid/support/design/widget/r;->e:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Landroid/support/design/widget/r;->e:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {p0}, Landroid/support/design/widget/r;->e()F

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/a;->a(IIF)I

    move-result v0

    return v0
.end method

.method public d()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/r;->c:Z

    sget-object v0, Landroid/support/design/widget/r;->a:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/design/widget/r;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Landroid/support/design/widget/r;->k()V

    invoke-direct {p0}, Landroid/support/design/widget/r;->l()V

    return-void
.end method

.method public e()F
    .locals 1

    iget v0, p0, Landroid/support/design/widget/r;->d:F

    return v0
.end method

.method public f()V
    .locals 2

    iget-boolean v0, p0, Landroid/support/design/widget/r;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/r;->c:Z

    sget-object v0, Landroid/support/design/widget/r;->a:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/design/widget/r;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/support/design/widget/r;->d:F

    invoke-direct {p0}, Landroid/support/design/widget/r;->i()V

    invoke-direct {p0}, Landroid/support/design/widget/r;->l()V

    :cond_0
    return-void
.end method

.method final g()V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/design/widget/r;->b:J

    invoke-direct {p0}, Landroid/support/design/widget/r;->i()V

    invoke-direct {p0}, Landroid/support/design/widget/r;->j()V

    sget-object v0, Landroid/support/design/widget/r;->a:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/design/widget/r;->k:Ljava/lang/Runnable;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method final h()V
    .locals 6

    iget-boolean v0, p0, Landroid/support/design/widget/r;->c:Z

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/support/design/widget/r;->b:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget-wide v2, p0, Landroid/support/design/widget/r;->g:J

    long-to-float v1, v2

    div-float/2addr v0, v1

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/k;->a(FFF)F

    move-result v0

    iget-object v1, p0, Landroid/support/design/widget/r;->h:Landroid/view/animation/Interpolator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/r;->h:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    :cond_0
    iput v0, p0, Landroid/support/design/widget/r;->d:F

    invoke-direct {p0}, Landroid/support/design/widget/r;->i()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/support/design/widget/r;->b:J

    iget-wide v4, p0, Landroid/support/design/widget/r;->g:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/r;->c:Z

    invoke-direct {p0}, Landroid/support/design/widget/r;->l()V

    :cond_1
    iget-boolean v0, p0, Landroid/support/design/widget/r;->c:Z

    if-eqz v0, :cond_2

    sget-object v0, Landroid/support/design/widget/r;->a:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/design/widget/r;->k:Ljava/lang/Runnable;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method
