.class public final Landroid/support/v4/h/o;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/h/o$c;,
        Landroid/support/v4/h/o$b;,
        Landroid/support/v4/h/o$a;
    }
.end annotation


# static fields
.field static final a:Landroid/support/v4/h/o$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/h/o$c;

    invoke-direct {v0}, Landroid/support/v4/h/o$c;-><init>()V

    sput-object v0, Landroid/support/v4/h/o;->a:Landroid/support/v4/h/o$a;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/support/v4/h/o$b;

    invoke-direct {v0}, Landroid/support/v4/h/o$b;-><init>()V

    sput-object v0, Landroid/support/v4/h/o;->a:Landroid/support/v4/h/o$a;

    goto :goto_0
.end method

.method public static a(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .locals 1

    sget-object v0, Landroid/support/v4/h/o;->a:Landroid/support/v4/h/o$a;

    invoke-interface {v0, p0}, Landroid/support/v4/h/o$a;->a(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .locals 1

    sget-object v0, Landroid/support/v4/h/o;->a:Landroid/support/v4/h/o$a;

    invoke-interface {v0, p0}, Landroid/support/v4/h/o$a;->b(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v0

    return v0
.end method
