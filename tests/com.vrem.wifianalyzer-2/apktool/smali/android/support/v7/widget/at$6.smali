.class Landroid/support/v7/widget/at$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/widget/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/at;->a()V
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

    iput-object p1, p0, Landroid/support/v7/widget/at$6;->a:Landroid/support/v7/widget/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/support/v7/widget/at$w;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v7/widget/at$6;->a:Landroid/support/v7/widget/at;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/support/v7/widget/at;->a(IZ)Landroid/support/v7/widget/at$w;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/at$6;->a:Landroid/support/v7/widget/at;

    iget-object v2, v2, Landroid/support/v7/widget/at;->f:Landroid/support/v7/widget/ac;

    iget-object v3, v1, Landroid/support/v7/widget/at$w;->a:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ac;->c(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method public a(II)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Landroid/support/v7/widget/at$6;->a:Landroid/support/v7/widget/at;

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v7/widget/at;->a(IIZ)V

    iget-object v0, p0, Landroid/support/v7/widget/at$6;->a:Landroid/support/v7/widget/at;

    iput-boolean v1, v0, Landroid/support/v7/widget/at;->B:Z

    iget-object v0, p0, Landroid/support/v7/widget/at$6;->a:Landroid/support/v7/widget/at;

    iget-object v0, v0, Landroid/support/v7/widget/at;->A:Landroid/support/v7/widget/at$t;

    iget v1, v0, Landroid/support/v7/widget/at$t;->b:I

    add-int/2addr v1, p2

    iput v1, v0, Landroid/support/v7/widget/at$t;->b:I

    return-void
.end method

.method public a(IILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/at$6;->a:Landroid/support/v7/widget/at;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/at;->a(IILjava/lang/Object;)V

    iget-object v0, p0, Landroid/support/v7/widget/at$6;->a:Landroid/support/v7/widget/at;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/at;->C:Z

    return-void
.end method

.method public a(Landroid/support/v7/widget/f$b;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/at$6;->c(Landroid/support/v7/widget/f$b;)V

    return-void
.end method

.method public b(II)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/at$6;->a:Landroid/support/v7/widget/at;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v7/widget/at;->a(IIZ)V

    iget-object v0, p0, Landroid/support/v7/widget/at$6;->a:Landroid/support/v7/widget/at;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/at;->B:Z

    return-void
.end method

.method public b(Landroid/support/v7/widget/f$b;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/at$6;->c(Landroid/support/v7/widget/f$b;)V

    return-void
.end method

.method public c(II)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/at$6;->a:Landroid/support/v7/widget/at;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/at;->g(II)V

    iget-object v0, p0, Landroid/support/v7/widget/at$6;->a:Landroid/support/v7/widget/at;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/at;->B:Z

    return-void
.end method

.method c(Landroid/support/v7/widget/f$b;)V
    .locals 5

    iget v0, p1, Landroid/support/v7/widget/f$b;->a:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/widget/at$6;->a:Landroid/support/v7/widget/at;

    iget-object v0, v0, Landroid/support/v7/widget/at;->m:Landroid/support/v7/widget/at$h;

    iget-object v1, p0, Landroid/support/v7/widget/at$6;->a:Landroid/support/v7/widget/at;

    iget v2, p1, Landroid/support/v7/widget/f$b;->b:I

    iget v3, p1, Landroid/support/v7/widget/f$b;->d:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/at$h;->a(Landroid/support/v7/widget/at;II)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Landroid/support/v7/widget/at$6;->a:Landroid/support/v7/widget/at;

    iget-object v0, v0, Landroid/support/v7/widget/at;->m:Landroid/support/v7/widget/at$h;

    iget-object v1, p0, Landroid/support/v7/widget/at$6;->a:Landroid/support/v7/widget/at;

    iget v2, p1, Landroid/support/v7/widget/f$b;->b:I

    iget v3, p1, Landroid/support/v7/widget/f$b;->d:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/at$h;->b(Landroid/support/v7/widget/at;II)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Landroid/support/v7/widget/at$6;->a:Landroid/support/v7/widget/at;

    iget-object v0, v0, Landroid/support/v7/widget/at;->m:Landroid/support/v7/widget/at$h;

    iget-object v1, p0, Landroid/support/v7/widget/at$6;->a:Landroid/support/v7/widget/at;

    iget v2, p1, Landroid/support/v7/widget/f$b;->b:I

    iget v3, p1, Landroid/support/v7/widget/f$b;->d:I

    iget-object v4, p1, Landroid/support/v7/widget/f$b;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v7/widget/at$h;->a(Landroid/support/v7/widget/at;IILjava/lang/Object;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Landroid/support/v7/widget/at$6;->a:Landroid/support/v7/widget/at;

    iget-object v0, v0, Landroid/support/v7/widget/at;->m:Landroid/support/v7/widget/at$h;

    iget-object v1, p0, Landroid/support/v7/widget/at$6;->a:Landroid/support/v7/widget/at;

    iget v2, p1, Landroid/support/v7/widget/f$b;->b:I

    iget v3, p1, Landroid/support/v7/widget/f$b;->d:I

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v7/widget/at$h;->a(Landroid/support/v7/widget/at;III)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public d(II)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/at$6;->a:Landroid/support/v7/widget/at;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/at;->f(II)V

    iget-object v0, p0, Landroid/support/v7/widget/at$6;->a:Landroid/support/v7/widget/at;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/at;->B:Z

    return-void
.end method
