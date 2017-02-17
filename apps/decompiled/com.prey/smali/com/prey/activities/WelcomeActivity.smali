.class public Lcom/prey/activities/WelcomeActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "WelcomeActivity.java"


# static fields
.field private static final SECURITY_PRIVILEGES:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public addPrivileges()V
    .locals 2

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/prey/activities/WelcomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/prey/backwardcompatibility/FroyoSupport;->getInstance(Landroid/content/Context;)Lcom/prey/backwardcompatibility/FroyoSupport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prey/backwardcompatibility/FroyoSupport;->getAskForAdminPrivilegesIntent()Landroid/content/Intent;

    move-result-object v0

    .line 101
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/prey/activities/WelcomeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 102
    return-void
.end method

.method public menu()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 56
    const-string v2, "menu ready"

    invoke-static {v2}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    .line 58
    invoke-static {p0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prey/PreyConfig;->getEmail()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "email":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 60
    :cond_0
    invoke-static {p0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/prey/PreyConfig;->setProtectReady(Z)V

    .line 61
    invoke-static {p0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/prey/PreyConfig;->setProtectAccount(Z)V

    .line 62
    invoke-static {p0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/prey/PreyConfig;->setProtectTour(Z)V

    .line 65
    :cond_1
    invoke-static {p0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prey/PreyConfig;->getProtectReady()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 66
    invoke-virtual {p0}, Lcom/prey/activities/WelcomeActivity;->ready()V

    .line 72
    :goto_0
    return-void

    .line 68
    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/prey/activities/WelcomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/prey/activities/InitActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/prey/activities/WelcomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 70
    invoke-virtual {p0}, Lcom/prey/activities/WelcomeActivity;->finish()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " resultCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 93
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/prey/activities/WelcomeActivity;->menu()V

    .line 95
    invoke-virtual {p0}, Lcom/prey/activities/WelcomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/prey/PreyConfig;->setProtectPrivileges(Z)V

    .line 97
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 41
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    .line 45
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0, v0}, Lcom/prey/activities/WelcomeActivity;->requestWindowFeature(I)Z

    .line 47
    invoke-virtual {p0, v0}, Lcom/prey/activities/WelcomeActivity;->setRequestedOrientation(I)V

    .line 50
    invoke-virtual {p0}, Lcom/prey/activities/WelcomeActivity;->menu()V

    .line 52
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "onPause of WelcomeActivity"

    invoke-static {v0}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    .line 35
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 36
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "onResume of WelcomeActivity"

    invoke-static {v0}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    .line 28
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 29
    invoke-virtual {p0}, Lcom/prey/activities/WelcomeActivity;->menu()V

    .line 30
    return-void
.end method

.method public ready()V
    .locals 3

    .prologue
    .line 75
    invoke-static {p0}, Lcom/prey/PreyVerify;->getInstance(Landroid/content/Context;)Lcom/prey/PreyVerify;

    .line 77
    const/4 v0, 0x0

    .line 79
    .local v0, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/prey/activities/WelcomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/prey/activities/CheckPasswordActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/prey/activities/WelcomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 82
    invoke-virtual {p0}, Lcom/prey/activities/WelcomeActivity;->finish()V

    .line 83
    return-void
.end method
