.class public final Landroid/support/v4/c/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/c/f$d;,
        Landroid/support/v4/c/f$c;,
        Landroid/support/v4/c/f$b;,
        Landroid/support/v4/c/f$a;
    }
.end annotation


# static fields
.field private static final a:Landroid/support/v4/c/f$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/c/f$d;

    invoke-direct {v0}, Landroid/support/v4/c/f$d;-><init>()V

    sput-object v0, Landroid/support/v4/c/f;->a:Landroid/support/v4/c/f$a;

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/c/f$c;

    invoke-direct {v0}, Landroid/support/v4/c/f$c;-><init>()V

    sput-object v0, Landroid/support/v4/c/f;->a:Landroid/support/v4/c/f$a;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/support/v4/c/f$b;

    invoke-direct {v0}, Landroid/support/v4/c/f$b;-><init>()V

    sput-object v0, Landroid/support/v4/c/f;->a:Landroid/support/v4/c/f$a;

    goto :goto_0
.end method

.method public static a(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 1

    sget-object v0, Landroid/support/v4/c/f;->a:Landroid/support/v4/c/f$a;

    invoke-interface {v0, p0}, Landroid/support/v4/c/f$a;->a(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
