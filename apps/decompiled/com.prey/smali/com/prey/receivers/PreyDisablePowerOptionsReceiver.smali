.class public Lcom/prey/receivers/PreyDisablePowerOptionsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PreyDisablePowerOptionsReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 22
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x7
    .end annotation

    .prologue
    .line 26
    invoke-static {p1}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/prey/PreyConfig;->isDisablePowerOptions()Z

    move-result v0

    .line 27
    .local v0, "disablePowerOptions":Z
    if-eqz v0, :cond_0

    .line 28
    const-string v5, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 29
    const-string v5, "keyguard"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/KeyguardManager;

    invoke-virtual {v5}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    .line 30
    .local v1, "flag":Z
    if-eqz v1, :cond_0

    .line 31
    const-string v5, "power"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 32
    .local v4, "pm":Landroid/os/PowerManager;
    invoke-virtual {v4}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    .line 33
    .local v3, "isScreenOn":Z
    if-eqz v3, :cond_0

    .line 35
    const-wide/16 v6, 0x64

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 39
    .local v2, "intentClose":Landroid/content/Intent;
    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 44
    .end local v1    # "flag":Z
    .end local v2    # "intentClose":Landroid/content/Intent;
    .end local v3    # "isScreenOn":Z
    .end local v4    # "pm":Landroid/os/PowerManager;
    :cond_0
    return-void

    .line 36
    .restart local v1    # "flag":Z
    .restart local v3    # "isScreenOn":Z
    .restart local v4    # "pm":Landroid/os/PowerManager;
    :catch_0
    move-exception v5

    goto :goto_0
.end method
