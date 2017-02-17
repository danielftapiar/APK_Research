.class public Lcom/prey/beta/services/PreyBetaRunnerService;
.super Landroid/app/Service;
.source "PreyBetaRunnerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prey/beta/services/PreyBetaRunnerService$LocalBinder;
    }
.end annotation


# static fields
.field public static running:Z


# instance fields
.field private final mBinder:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lcom/prey/beta/services/PreyBetaRunnerService;->running:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 30
    new-instance v0, Lcom/prey/beta/services/PreyBetaRunnerService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/prey/beta/services/PreyBetaRunnerService$LocalBinder;-><init>(Lcom/prey/beta/services/PreyBetaRunnerService;)V

    iput-object v0, p0, Lcom/prey/beta/services/PreyBetaRunnerService;->mBinder:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/prey/beta/services/PreyBetaRunnerService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 45
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 47
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 66
    invoke-static {p0}, Lcom/prey/actions/observer/ActionsController;->getInstance(Landroid/content/Context;)Lcom/prey/actions/observer/ActionsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prey/actions/observer/ActionsController;->finishRunningJosb()V

    .line 67
    const/4 v0, 0x0

    sput-boolean v0, Lcom/prey/beta/services/PreyBetaRunnerService;->running:Z

    .line 69
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 51
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 52
    const/4 v0, 0x0

    .line 54
    .local v0, "cmd":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "cmd"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 56
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PreyRunnerService has been started...:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 57
    new-instance v1, Lcom/prey/beta/actions/PreyBetaActionsRunnner;

    invoke-direct {v1, v0}, Lcom/prey/beta/actions/PreyBetaActionsRunnner;-><init>(Ljava/lang/String;)V

    .line 58
    .local v1, "exec":Lcom/prey/beta/actions/PreyBetaActionsRunnner;
    const/4 v2, 0x1

    sput-boolean v2, Lcom/prey/beta/services/PreyBetaRunnerService;->running:Z

    .line 59
    invoke-virtual {v1, p0}, Lcom/prey/beta/actions/PreyBetaActionsRunnner;->run(Landroid/content/Context;)V

    .line 60
    return-void

    .line 55
    .end local v1    # "exec":Lcom/prey/beta/actions/PreyBetaActionsRunnner;
    :catch_0
    move-exception v2

    goto :goto_0
.end method
