.class Landroid/support/design/widget/x;
.super Ljava/lang/Object;


# static fields
.field static final a:Landroid/support/design/widget/q$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/support/design/widget/x$1;

    invoke-direct {v0}, Landroid/support/design/widget/x$1;-><init>()V

    sput-object v0, Landroid/support/design/widget/x;->a:Landroid/support/design/widget/q$d;

    return-void
.end method

.method static a()Landroid/support/design/widget/q;
    .locals 1

    sget-object v0, Landroid/support/design/widget/x;->a:Landroid/support/design/widget/q$d;

    invoke-interface {v0}, Landroid/support/design/widget/q$d;->a()Landroid/support/design/widget/q;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
