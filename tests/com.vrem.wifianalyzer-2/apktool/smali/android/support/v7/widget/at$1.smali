.class Landroid/support/v7/widget/at$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/at;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/at;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/at;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/at$1;->a:Landroid/support/v7/widget/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/at$1;->a:Landroid/support/v7/widget/at;

    iget-boolean v0, v0, Landroid/support/v7/widget/at;->r:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/at$1;->a:Landroid/support/v7/widget/at;

    invoke-virtual {v0}, Landroid/support/v7/widget/at;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/at$1;->a:Landroid/support/v7/widget/at;

    iget-boolean v0, v0, Landroid/support/v7/widget/at;->p:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/at$1;->a:Landroid/support/v7/widget/at;

    invoke-virtual {v0}, Landroid/support/v7/widget/at;->requestLayout()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/at$1;->a:Landroid/support/v7/widget/at;

    iget-boolean v0, v0, Landroid/support/v7/widget/at;->t:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/at$1;->a:Landroid/support/v7/widget/at;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/at;->s:Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/at$1;->a:Landroid/support/v7/widget/at;

    invoke-virtual {v0}, Landroid/support/v7/widget/at;->c()V

    goto :goto_0
.end method
