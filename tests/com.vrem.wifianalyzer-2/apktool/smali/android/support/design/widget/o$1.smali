.class Landroid/support/design/widget/o$1;
.super Landroid/support/design/widget/q$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/widget/o;


# direct methods
.method constructor <init>(Landroid/support/design/widget/o;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/o$1;->a:Landroid/support/design/widget/o;

    invoke-direct {p0}, Landroid/support/design/widget/q$b;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/support/design/widget/q;)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/o$1;->a:Landroid/support/design/widget/o;

    iget-object v0, v0, Landroid/support/design/widget/o;->a:Landroid/support/design/widget/q;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/o$1;->a:Landroid/support/design/widget/o;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/design/widget/o;->a:Landroid/support/design/widget/q;

    :cond_0
    return-void
.end method
