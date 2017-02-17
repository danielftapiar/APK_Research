.class Landroid/support/v4/b/x$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/b/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/b/x;


# direct methods
.method constructor <init>(Landroid/support/v4/b/x;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/b/x$1;->a:Landroid/support/v4/b/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/b/x$1;->a:Landroid/support/v4/b/x;

    iget-object v0, v0, Landroid/support/v4/b/x;->R:Landroid/widget/ListView;

    iget-object v1, p0, Landroid/support/v4/b/x$1;->a:Landroid/support/v4/b/x;

    iget-object v1, v1, Landroid/support/v4/b/x;->R:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->focusableViewAvailable(Landroid/view/View;)V

    return-void
.end method
