.class Landroid/support/v4/b/k$2;
.super Landroid/support/v4/b/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/b/k;->z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/b/k;


# direct methods
.method constructor <init>(Landroid/support/v4/b/k;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/b/k$2;->a:Landroid/support/v4/b/k;

    invoke-direct {p0}, Landroid/support/v4/b/m;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/b/k$2;->a:Landroid/support/v4/b/k;

    iget-object v0, v0, Landroid/support/v4/b/k;->G:Landroid/view/View;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment does not have a view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/b/k$2;->a:Landroid/support/v4/b/k;

    iget-object v0, v0, Landroid/support/v4/b/k;->G:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b/k$2;->a:Landroid/support/v4/b/k;

    iget-object v0, v0, Landroid/support/v4/b/k;->G:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
