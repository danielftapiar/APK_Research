.class public final Lcl/birdie/transantiagomaster/handlers/SaldoBipHandler;
.super Ljava/lang/Object;
.source "SaldoBipHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcl/birdie/transantiagomaster/handlers/SaldoBipHandler$DescargadorParametrosBip;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final descargarParametrosBip()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 57
    const-string v0, "http://api.transantiagomaster.cl/bip.txt"

    .line 59
    .local v0, "url":Ljava/lang/String;
    new-instance v1, Lcl/birdie/transantiagomaster/handlers/SaldoBipHandler$DescargadorParametrosBip;

    invoke-direct {v1, p0, v3}, Lcl/birdie/transantiagomaster/handlers/SaldoBipHandler$DescargadorParametrosBip;-><init>(Lcl/birdie/transantiagomaster/handlers/SaldoBipHandler;B)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcl/birdie/transantiagomaster/handlers/SaldoBipHandler$DescargadorParametrosBip;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 60
    return-void
.end method
