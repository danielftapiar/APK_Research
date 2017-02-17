.class public Lcom/prey/backwardcompatibility/FroyoSupport;
.super Ljava/lang/Object;
.source "FroyoSupport.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x8
.end annotation


# static fields
.field private static _instance:Lcom/prey/backwardcompatibility/FroyoSupport;


# instance fields
.field private ctx:Landroid/content/Context;

.field deviceAdmin:Landroid/content/ComponentName;

.field private policyManager:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/prey/backwardcompatibility/FroyoSupport;->policyManager:Landroid/app/admin/DevicePolicyManager;

    .line 38
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/prey/receivers/PreyDeviceAdmin;

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prey/backwardcompatibility/FroyoSupport;->deviceAdmin:Landroid/content/ComponentName;

    .line 39
    iput-object p1, p0, Lcom/prey/backwardcompatibility/FroyoSupport;->ctx:Landroid/content/Context;

    .line 40
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/prey/backwardcompatibility/FroyoSupport;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    sget-object v0, Lcom/prey/backwardcompatibility/FroyoSupport;->_instance:Lcom/prey/backwardcompatibility/FroyoSupport;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/prey/backwardcompatibility/FroyoSupport;

    invoke-direct {v0, p0}, Lcom/prey/backwardcompatibility/FroyoSupport;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/prey/backwardcompatibility/FroyoSupport;->_instance:Lcom/prey/backwardcompatibility/FroyoSupport;

    .line 33
    :cond_0
    sget-object v0, Lcom/prey/backwardcompatibility/FroyoSupport;->_instance:Lcom/prey/backwardcompatibility/FroyoSupport;

    return-object v0
.end method

.method public static supportSMS(Landroid/content/Context;)Z
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 94
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 95
    .local v1, "telephonyManager1":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 96
    .local v0, "isPhone":Z
    :goto_0
    return v0

    .line 95
    .end local v0    # "isPhone":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public changePasswordAndLock(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "newPass"    # Ljava/lang/String;
    .param p2, "lock"    # Z

    .prologue
    .line 44
    :try_start_0
    invoke-virtual {p0}, Lcom/prey/backwardcompatibility/FroyoSupport;->isAdminActive()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    .line 46
    :try_start_1
    iget-object v2, p0, Lcom/prey/backwardcompatibility/FroyoSupport;->policyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/prey/backwardcompatibility/FroyoSupport;->deviceAdmin:Landroid/content/ComponentName;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/admin/DevicePolicyManager;->setPasswordMinimumLength(Landroid/content/ComponentName;I)V

    .line 47
    iget-object v2, p0, Lcom/prey/backwardcompatibility/FroyoSupport;->policyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/prey/backwardcompatibility/FroyoSupport;->deviceAdmin:Landroid/content/ComponentName;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/admin/DevicePolicyManager;->setPasswordQuality(Landroid/content/ComponentName;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 51
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/prey/backwardcompatibility/FroyoSupport;->policyManager:Landroid/app/admin/DevicePolicyManager;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/app/admin/DevicePolicyManager;->resetPassword(Ljava/lang/String;I)Z

    move-result v1

    .line 53
    .local v1, "resultLocK":Z
    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 54
    iget-object v2, p0, Lcom/prey/backwardcompatibility/FroyoSupport;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_pattern_autolock"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 56
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resultLocK:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    .line 57
    if-eqz p2, :cond_1

    .line 58
    invoke-virtual {p0}, Lcom/prey/backwardcompatibility/FroyoSupport;->lockNow()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 63
    .end local v1    # "resultLocK":Z
    :cond_1
    :goto_1
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "This device couldn\'t be locked. Honeycomb bug?"

    invoke-static {v2, v0}, Lcom/prey/PreyLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 48
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public getAskForAdminPrivilegesIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 80
    iget-object v1, p0, Lcom/prey/backwardcompatibility/FroyoSupport;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/prey/PreyConfig;->setSecurityPrivilegesAlreadyPrompted(Z)V

    .line 81
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.ADD_DEVICE_ADMIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 82
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.app.extra.DEVICE_ADMIN"

    iget-object v2, p0, Lcom/prey/backwardcompatibility/FroyoSupport;->deviceAdmin:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 83
    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 85
    return-object v0
.end method

.method public isAdminActive()Z
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/prey/backwardcompatibility/FroyoSupport;->policyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/prey/backwardcompatibility/FroyoSupport;->deviceAdmin:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public lockNow()V
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/prey/backwardcompatibility/FroyoSupport;->isAdminActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/prey/backwardcompatibility/FroyoSupport;->policyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->lockNow()V

    .line 69
    :cond_0
    return-void
.end method

.method public removeAdminPrivileges()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/prey/backwardcompatibility/FroyoSupport;->policyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/prey/backwardcompatibility/FroyoSupport;->deviceAdmin:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;)V

    .line 77
    return-void
.end method

.method public wipe()V
    .locals 2

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/prey/backwardcompatibility/FroyoSupport;->isAdminActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/prey/backwardcompatibility/FroyoSupport;->policyManager:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->wipeData(I)V

    .line 91
    :cond_0
    return-void
.end method
