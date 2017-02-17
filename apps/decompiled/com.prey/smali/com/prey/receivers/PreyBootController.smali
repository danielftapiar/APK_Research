.class public Lcom/prey/receivers/PreyBootController;
.super Landroid/content/BroadcastReceiver;
.source "PreyBootController.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 22
    const-string v2, "Boot finished. Starting Prey Boot Service"

    invoke-static {v2}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 23
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 24
    invoke-static {p1}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prey/PreyConfig;->getIntervalReport()Ljava/lang/String;

    move-result-object v1

    .line 25
    .local v1, "interval":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {p1, v2}, Lcom/prey/json/actions/Report;->run(Landroid/content/Context;I)V

    .line 28
    :cond_0
    invoke-static {p1}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prey/PreyConfig;->isDisablePowerOptions()Z

    move-result v0

    .line 29
    .local v0, "disablePowerOptions":Z
    if-eqz v0, :cond_1

    .line 30
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/prey/services/PreyDisablePowerOptionsService;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 36
    .end local v0    # "disablePowerOptions":Z
    .end local v1    # "interval":Ljava/lang/String;
    :goto_0
    return-void

    .line 32
    .restart local v0    # "disablePowerOptions":Z
    .restart local v1    # "interval":Ljava/lang/String;
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/prey/services/PreyDisablePowerOptionsService;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_0

    .line 35
    .end local v0    # "disablePowerOptions":Z
    .end local v1    # "interval":Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received unexpected intent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/prey/PreyLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
