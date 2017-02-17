.class public Lcom/prey/activities/LoginActivity;
.super Landroid/app/Activity;
.source "LoginActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private isThereBatchInstallationKey()Z
    .locals 2

    .prologue
    .line 107
    invoke-static {p0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prey/PreyConfig;->getApiKeyBatch()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "apiKeyBatch":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isThisDeviceAlreadyRegisteredWithPrey()Z
    .locals 2

    .prologue
    .line 97
    invoke-static {p0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/prey/PreyConfig;->isThisDeviceAlreadyRegisteredWithPrey(Z)Z

    move-result v0

    return v0
.end method

.method private showFeedback(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 101
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/prey/activities/FeedbackActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    .local v0, "popup":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 103
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 104
    return-void
.end method

.method private showLogin()V
    .locals 2

    .prologue
    .line 81
    const/4 v0, 0x0

    .line 82
    .local v0, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-class v1, Lcom/prey/activities/WelcomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/prey/activities/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 84
    invoke-virtual {p0}, Lcom/prey/activities/LoginActivity;->finish()V

    .line 85
    return-void
.end method

.method private showLoginBatch()V
    .locals 2

    .prologue
    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-class v1, Lcom/prey/activities/WelcomeBatchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 91
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/prey/activities/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 92
    invoke-virtual {p0}, Lcom/prey/activities/LoginActivity;->finish()V

    .line 93
    return-void
.end method

.method private startup()V
    .locals 3

    .prologue
    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prey/PreyConfig;->getProtectReady()Z

    move-result v1

    .line 70
    .local v1, "ready":Z
    invoke-direct {p0}, Lcom/prey/activities/LoginActivity;->isThisDeviceAlreadyRegisteredWithPrey()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    invoke-static {p0}, Lcom/prey/PreyVerify;->getInstance(Landroid/content/Context;)Lcom/prey/PreyVerify;

    .line 73
    :cond_0
    invoke-direct {p0}, Lcom/prey/activities/LoginActivity;->isThereBatchInstallationKey()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    .line 74
    invoke-direct {p0}, Lcom/prey/activities/LoginActivity;->showLoginBatch()V

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_1
    invoke-direct {p0}, Lcom/prey/activities/LoginActivity;->showLogin()V

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 27
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0, v1}, Lcom/prey/activities/LoginActivity;->requestWindowFeature(I)Z

    .line 33
    invoke-virtual {p0, v1}, Lcom/prey/activities/LoginActivity;->setRequestedOrientation(I)V

    .line 36
    invoke-direct {p0}, Lcom/prey/activities/LoginActivity;->startup()V

    .line 40
    invoke-virtual {p0}, Lcom/prey/activities/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prey/PreyConfig;->isDisablePowerOptions()Z

    move-result v0

    .line 41
    .local v0, "disablePowerOptions":Z
    if-eqz v0, :cond_0

    .line 42
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/prey/activities/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/prey/services/PreyDisablePowerOptionsService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/prey/activities/LoginActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 47
    :goto_0
    return-void

    .line 44
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/prey/activities/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/prey/services/PreyDisablePowerOptionsService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/prey/activities/LoginActivity;->stopService(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 0

    .prologue
    .line 63
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 64
    invoke-direct {p0}, Lcom/prey/activities/LoginActivity;->startup()V

    .line 65
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 57
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 58
    invoke-direct {p0}, Lcom/prey/activities/LoginActivity;->startup()V

    .line 59
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 51
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 52
    invoke-direct {p0}, Lcom/prey/activities/LoginActivity;->startup()V

    .line 53
    return-void
.end method
