.class public Lcom/prey/preferences/DeviceAdminPreference;
.super Landroid/preference/DialogPreference;
.source "DeviceAdminPreference.java"


# instance fields
.field ctx:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prey/preferences/DeviceAdminPreference;->ctx:Landroid/content/Context;

    .line 26
    iput-object p1, p0, Lcom/prey/preferences/DeviceAdminPreference;->ctx:Landroid/content/Context;

    .line 27
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 45
    invoke-super {p0, p1, p2}, Landroid/preference/DialogPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 48
    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    .line 49
    iget-object v3, p0, Lcom/prey/preferences/DeviceAdminPreference;->ctx:Landroid/content/Context;

    invoke-static {v3}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v2

    .line 50
    .local v2, "preyConfig":Lcom/prey/PreyConfig;
    invoke-virtual {v2}, Lcom/prey/PreyConfig;->isFroyoOrAbove()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 51
    iget-object v3, p0, Lcom/prey/preferences/DeviceAdminPreference;->ctx:Landroid/content/Context;

    invoke-static {v3}, Lcom/prey/backwardcompatibility/FroyoSupport;->getInstance(Landroid/content/Context;)Lcom/prey/backwardcompatibility/FroyoSupport;

    move-result-object v0

    .line 52
    .local v0, "fSupport":Lcom/prey/backwardcompatibility/FroyoSupport;
    invoke-virtual {v0}, Lcom/prey/backwardcompatibility/FroyoSupport;->isAdminActive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 53
    invoke-virtual {v0}, Lcom/prey/backwardcompatibility/FroyoSupport;->removeAdminPrivileges()V

    .line 54
    const v3, 0x7f0900b9

    invoke-virtual {p0, v3}, Lcom/prey/preferences/DeviceAdminPreference;->setTitle(I)V

    .line 55
    const v3, 0x7f0900b8

    invoke-virtual {p0, v3}, Lcom/prey/preferences/DeviceAdminPreference;->setSummary(I)V

    .line 62
    .end local v0    # "fSupport":Lcom/prey/backwardcompatibility/FroyoSupport;
    .end local v2    # "preyConfig":Lcom/prey/PreyConfig;
    :cond_0
    :goto_0
    return-void

    .line 57
    .restart local v0    # "fSupport":Lcom/prey/backwardcompatibility/FroyoSupport;
    .restart local v2    # "preyConfig":Lcom/prey/PreyConfig;
    :cond_1
    invoke-virtual {v0}, Lcom/prey/backwardcompatibility/FroyoSupport;->getAskForAdminPrivilegesIntent()Landroid/content/Intent;

    move-result-object v1

    .line 58
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/prey/preferences/DeviceAdminPreference;->ctx:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 2
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 31
    iget-object v1, p0, Lcom/prey/preferences/DeviceAdminPreference;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v0

    .line 32
    .local v0, "preyConfig":Lcom/prey/PreyConfig;
    invoke-virtual {v0}, Lcom/prey/PreyConfig;->isFroyoOrAbove()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    iget-object v1, p0, Lcom/prey/preferences/DeviceAdminPreference;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lcom/prey/backwardcompatibility/FroyoSupport;->getInstance(Landroid/content/Context;)Lcom/prey/backwardcompatibility/FroyoSupport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prey/backwardcompatibility/FroyoSupport;->isAdminActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 34
    const v1, 0x7f0900bb

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 35
    const v1, 0x7f0900ba

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 41
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    const v1, 0x7f0900b7

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 38
    const v1, 0x7f0900b6

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method
