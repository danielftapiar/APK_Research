.class public Lcom/prey/beta/actions/PreyBetaController;
.super Ljava/lang/Object;
.source "PreyBetaController.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static startPrey(Landroid/content/Context;)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/prey/beta/actions/PreyBetaController;->startPrey(Landroid/content/Context;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static startPrey(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-static {p0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v0

    .line 27
    .local v0, "config":Lcom/prey/PreyConfig;
    invoke-virtual {v0}, Lcom/prey/PreyConfig;->isThisDeviceAlreadyRegisteredWithPrey()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 30
    invoke-static {p0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v2

    invoke-static {p0}, Lcom/prey/PreyPermission;->canAccessCamera(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/prey/PreyConfig;->setCanAccessCamara(Z)V

    .line 31
    invoke-static {p0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v2

    invoke-static {p0}, Lcom/prey/PreyPermission;->canAccessCoarseLocation(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/prey/PreyConfig;->setCanAccessCoarseLocation(Z)V

    .line 32
    invoke-static {p0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v2

    invoke-static {p0}, Lcom/prey/PreyPermission;->canAccessFineLocation(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/prey/PreyConfig;->setCanAccessFineLocation(Z)V

    .line 33
    invoke-static {p0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v2

    invoke-static {p0}, Lcom/prey/PreyPermission;->canAccessReadPhoneState(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/prey/PreyConfig;->setCanAccessReadPhoneState(Z)V

    .line 35
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/prey/PreyConfig;->setRun(Z)V

    .line 36
    move-object v1, p0

    .line 38
    .local v1, "context":Landroid/content/Context;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/prey/beta/actions/PreyBetaController$1;

    invoke-direct {v3, v1, p1}, Lcom/prey/beta/actions/PreyBetaController$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 49
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 52
    .end local v1    # "context":Landroid/content/Context;
    :cond_0
    return-void
.end method

.method public static stopPrey(Landroid/content/Context;)V
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 55
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/prey/beta/services/PreyBetaRunnerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 56
    return-void
.end method
