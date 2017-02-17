.class Landroid/support/v4/b/l$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/b/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/b/l;


# direct methods
.method constructor <init>(Landroid/support/v4/b/l;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/b/l$1;->a:Landroid/support/v4/b/l;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Landroid/support/v4/b/l$1;->a:Landroid/support/v4/b/l;

    iget-boolean v0, v0, Landroid/support/v4/b/l;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/b/l$1;->a:Landroid/support/v4/b/l;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/b/l;->a(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/support/v4/b/l$1;->a:Landroid/support/v4/b/l;

    invoke-virtual {v0}, Landroid/support/v4/b/l;->a_()V

    iget-object v0, p0, Landroid/support/v4/b/l$1;->a:Landroid/support/v4/b/l;

    iget-object v0, v0, Landroid/support/v4/b/l;->d:Landroid/support/v4/b/n;

    invoke-virtual {v0}, Landroid/support/v4/b/n;->n()Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
