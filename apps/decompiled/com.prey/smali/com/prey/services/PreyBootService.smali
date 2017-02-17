.class public Lcom/prey/services/PreyBootService;
.super Landroid/app/Service;
.source "PreyBootService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prey/services/PreyBootService$LocalBinder;
    }
.end annotation


# instance fields
.field private final mBinder:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 19
    new-instance v0, Lcom/prey/services/PreyBootService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/prey/services/PreyBootService$LocalBinder;-><init>(Lcom/prey/services/PreyBootService;)V

    iput-object v0, p0, Lcom/prey/services/PreyBootService;->mBinder:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/prey/services/PreyBootService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "Prey Boot Service Started!"

    invoke-static {v0}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "Boot Service has been stopped"

    invoke-static {v0}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 41
    return-void
.end method
