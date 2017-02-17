.class abstract Landroid/support/design/widget/e$d;
.super Landroid/support/design/widget/q$b;

# interfaces
.implements Landroid/support/design/widget/q$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "d"
.end annotation


# instance fields
.field private a:Z

.field final synthetic b:Landroid/support/design/widget/e;

.field private c:F

.field private d:F


# direct methods
.method private constructor <init>(Landroid/support/design/widget/e;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/e$d;->b:Landroid/support/design/widget/e;

    invoke-direct {p0}, Landroid/support/design/widget/q$b;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/design/widget/e;Landroid/support/design/widget/e$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/design/widget/e$d;-><init>(Landroid/support/design/widget/e;)V

    return-void
.end method


# virtual methods
.method protected abstract a()F
.end method

.method public a(Landroid/support/design/widget/q;)V
    .locals 4

    iget-boolean v0, p0, Landroid/support/design/widget/e$d;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/e$d;->b:Landroid/support/design/widget/e;

    iget-object v0, v0, Landroid/support/design/widget/e;->a:Landroid/support/design/widget/l;

    invoke-virtual {v0}, Landroid/support/design/widget/l;->a()F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/e$d;->c:F

    invoke-virtual {p0}, Landroid/support/design/widget/e$d;->a()F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/e$d;->d:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/e$d;->a:Z

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/e$d;->b:Landroid/support/design/widget/e;

    iget-object v0, v0, Landroid/support/design/widget/e;->a:Landroid/support/design/widget/l;

    iget v1, p0, Landroid/support/design/widget/e$d;->c:F

    iget v2, p0, Landroid/support/design/widget/e$d;->d:F

    iget v3, p0, Landroid/support/design/widget/e$d;->c:F

    sub-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/support/design/widget/q;->e()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/support/design/widget/l;->b(F)V

    return-void
.end method

.method public b(Landroid/support/design/widget/q;)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/e$d;->b:Landroid/support/design/widget/e;

    iget-object v0, v0, Landroid/support/design/widget/e;->a:Landroid/support/design/widget/l;

    iget v1, p0, Landroid/support/design/widget/e$d;->d:F

    invoke-virtual {v0, v1}, Landroid/support/design/widget/l;->b(F)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/e$d;->a:Z

    return-void
.end method
