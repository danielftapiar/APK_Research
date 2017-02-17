.class Landroid/support/v4/b/q$2;
.super Landroid/support/v4/b/q$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/b/q;->a(Landroid/support/v4/b/k;IIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/b/k;

.field final synthetic b:Landroid/support/v4/b/q;


# direct methods
.method constructor <init>(Landroid/support/v4/b/q;Landroid/view/View;Landroid/view/animation/Animation;Landroid/support/v4/b/k;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/b/q$2;->b:Landroid/support/v4/b/q;

    iput-object p4, p0, Landroid/support/v4/b/q$2;->a:Landroid/support/v4/b/k;

    invoke-direct {p0, p2, p3}, Landroid/support/v4/b/q$a;-><init>(Landroid/view/View;Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 6

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/support/v4/b/q$a;->onAnimationEnd(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Landroid/support/v4/b/q$2;->a:Landroid/support/v4/b/k;

    invoke-virtual {v0}, Landroid/support/v4/b/k;->O()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/b/q$2;->a:Landroid/support/v4/b/k;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/b/k;->a(Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/v4/b/q$2;->b:Landroid/support/v4/b/q;

    iget-object v1, p0, Landroid/support/v4/b/q$2;->a:Landroid/support/v4/b/k;

    iget-object v2, p0, Landroid/support/v4/b/q$2;->a:Landroid/support/v4/b/k;

    invoke-virtual {v2}, Landroid/support/v4/b/k;->P()I

    move-result v2

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/b/q;->a(Landroid/support/v4/b/k;IIIZ)V

    :cond_0
    return-void
.end method
