.class public final Landroid/support/v4/h/j;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/h/j$d;,
        Landroid/support/v4/h/j$c;,
        Landroid/support/v4/h/j$b;,
        Landroid/support/v4/h/j$a;
    }
.end annotation


# static fields
.field static final a:Landroid/support/v4/h/j$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/h/j$d;

    invoke-direct {v0}, Landroid/support/v4/h/j$d;-><init>()V

    sput-object v0, Landroid/support/v4/h/j;->a:Landroid/support/v4/h/j$a;

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/h/j$c;

    invoke-direct {v0}, Landroid/support/v4/h/j$c;-><init>()V

    sput-object v0, Landroid/support/v4/h/j;->a:Landroid/support/v4/h/j$a;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/support/v4/h/j$b;

    invoke-direct {v0}, Landroid/support/v4/h/j$b;-><init>()V

    sput-object v0, Landroid/support/v4/h/j;->a:Landroid/support/v4/h/j$a;

    goto :goto_0
.end method

.method public static a(Landroid/view/LayoutInflater;)Landroid/support/v4/h/n;
    .locals 1

    sget-object v0, Landroid/support/v4/h/j;->a:Landroid/support/v4/h/j$a;

    invoke-interface {v0, p0}, Landroid/support/v4/h/j$a;->a(Landroid/view/LayoutInflater;)Landroid/support/v4/h/n;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/view/LayoutInflater;Landroid/support/v4/h/n;)V
    .locals 1

    sget-object v0, Landroid/support/v4/h/j;->a:Landroid/support/v4/h/j$a;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/h/j$a;->a(Landroid/view/LayoutInflater;Landroid/support/v4/h/n;)V

    return-void
.end method
