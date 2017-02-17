.class Landroid/support/v7/widget/at$q;
.super Landroid/support/v7/widget/at$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/at;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "q"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/at;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/at;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/at$q;->a:Landroid/support/v7/widget/at;

    invoke-direct {p0}, Landroid/support/v7/widget/at$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/at$q;->a:Landroid/support/v7/widget/at;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/at;->a(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v7/widget/at$q;->a:Landroid/support/v7/widget/at;

    iget-object v0, v0, Landroid/support/v7/widget/at;->A:Landroid/support/v7/widget/at$t;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/at$t;->e:Z

    iget-object v0, p0, Landroid/support/v7/widget/at$q;->a:Landroid/support/v7/widget/at;

    invoke-virtual {v0}, Landroid/support/v7/widget/at;->t()V

    iget-object v0, p0, Landroid/support/v7/widget/at$q;->a:Landroid/support/v7/widget/at;

    iget-object v0, v0, Landroid/support/v7/widget/at;->e:Landroid/support/v7/widget/f;

    invoke-virtual {v0}, Landroid/support/v7/widget/f;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/at$q;->a:Landroid/support/v7/widget/at;

    invoke-virtual {v0}, Landroid/support/v7/widget/at;->requestLayout()V

    :cond_0
    return-void
.end method
