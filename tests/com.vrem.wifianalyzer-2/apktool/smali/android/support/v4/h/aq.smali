.class public final Landroid/support/v4/h/aq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/h/aq$e;,
        Landroid/support/v4/h/aq$d;,
        Landroid/support/v4/h/aq$b;,
        Landroid/support/v4/h/aq$a;,
        Landroid/support/v4/h/aq$f;,
        Landroid/support/v4/h/aq$c;
    }
.end annotation


# static fields
.field static final a:Landroid/support/v4/h/aq$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/h/aq$e;

    invoke-direct {v0}, Landroid/support/v4/h/aq$e;-><init>()V

    sput-object v0, Landroid/support/v4/h/aq;->a:Landroid/support/v4/h/aq$c;

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/h/aq$d;

    invoke-direct {v0}, Landroid/support/v4/h/aq$d;-><init>()V

    sput-object v0, Landroid/support/v4/h/aq;->a:Landroid/support/v4/h/aq$c;

    goto :goto_0

    :cond_1
    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    new-instance v0, Landroid/support/v4/h/aq$b;

    invoke-direct {v0}, Landroid/support/v4/h/aq$b;-><init>()V

    sput-object v0, Landroid/support/v4/h/aq;->a:Landroid/support/v4/h/aq$c;

    goto :goto_0

    :cond_2
    const/16 v1, 0xb

    if-lt v0, v1, :cond_3

    new-instance v0, Landroid/support/v4/h/aq$a;

    invoke-direct {v0}, Landroid/support/v4/h/aq$a;-><init>()V

    sput-object v0, Landroid/support/v4/h/aq;->a:Landroid/support/v4/h/aq$c;

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/support/v4/h/aq$f;

    invoke-direct {v0}, Landroid/support/v4/h/aq$f;-><init>()V

    sput-object v0, Landroid/support/v4/h/aq;->a:Landroid/support/v4/h/aq$c;

    goto :goto_0
.end method

.method public static a(Landroid/view/ViewGroup;Z)V
    .locals 1

    sget-object v0, Landroid/support/v4/h/aq;->a:Landroid/support/v4/h/aq$c;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/h/aq$c;->a(Landroid/view/ViewGroup;Z)V

    return-void
.end method
