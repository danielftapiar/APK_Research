.class Landroid/support/v7/widget/at$2;
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

    iput-object p1, p0, Landroid/support/v7/widget/at$2;->a:Landroid/support/v7/widget/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/at$2;->a:Landroid/support/v7/widget/at;

    iget-object v0, v0, Landroid/support/v7/widget/at;->w:Landroid/support/v7/widget/at$e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/at$2;->a:Landroid/support/v7/widget/at;

    iget-object v0, v0, Landroid/support/v7/widget/at;->w:Landroid/support/v7/widget/at$e;

    invoke-virtual {v0}, Landroid/support/v7/widget/at$e;->a()V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/at$2;->a:Landroid/support/v7/widget/at;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v7/widget/at;->D:Z

    return-void
.end method
