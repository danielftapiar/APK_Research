.class public Lcom/prey/PreyPermission;
.super Ljava/lang/Object;
.source "PreyPermission.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canAccessCamera(Landroid/content/Context;)Z
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 34
    const-string v1, "android.permission.CAMERA"

    .line 35
    invoke-static {p0, v1}, Landroid/support/v4/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 38
    .local v0, "canAccessCamera":Z
    :goto_0
    return v0

    .line 35
    .end local v0    # "canAccessCamera":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static canAccessCoarseLocation(Landroid/content/Context;)Z
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 24
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 25
    invoke-static {p0, v1}, Landroid/support/v4/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 28
    .local v0, "canAccessCoarseLocation":Z
    :goto_0
    return v0

    .line 25
    .end local v0    # "canAccessCoarseLocation":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static canAccessFineLocation(Landroid/content/Context;)Z
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 16
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 17
    invoke-static {p0, v1}, Landroid/support/v4/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 20
    .local v0, "canAccessFineLocation":Z
    :goto_0
    return v0

    .line 17
    .end local v0    # "canAccessFineLocation":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static canAccessReadExternalStorage(Landroid/content/Context;)Z
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 75
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 76
    invoke-static {p0, v1}, Landroid/support/v4/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 79
    .local v0, "canAccessReadExternalStorage":Z
    :goto_0
    return v0

    .line 76
    .end local v0    # "canAccessReadExternalStorage":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static canAccessReadPhoneState(Landroid/content/Context;)Z
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 43
    const-string v1, "android.permission.READ_PHONE_STATE"

    .line 44
    invoke-static {p0, v1}, Landroid/support/v4/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 47
    .local v0, "canAccessReadPhoneState":Z
    :goto_0
    return v0

    .line 44
    .end local v0    # "canAccessReadPhoneState":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static canAccessReadSms(Landroid/content/Context;)Z
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 67
    const-string v1, "android.permission.READ_SMS"

    .line 68
    invoke-static {p0, v1}, Landroid/support/v4/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 71
    .local v0, "canAccessReadSms":Z
    :goto_0
    return v0

    .line 68
    .end local v0    # "canAccessReadSms":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static canAccessReceiveSms(Landroid/content/Context;)Z
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 59
    const-string v1, "android.permission.RECEIVE_SMS"

    .line 60
    invoke-static {p0, v1}, Landroid/support/v4/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 63
    .local v0, "canAccessReceiveSms":Z
    :goto_0
    return v0

    .line 60
    .end local v0    # "canAccessReceiveSms":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static canAccessSendSms(Landroid/content/Context;)Z
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 51
    const-string v1, "android.permission.SEND_SMS"

    .line 52
    invoke-static {p0, v1}, Landroid/support/v4/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 55
    .local v0, "canAccessSendSms":Z
    :goto_0
    return v0

    .line 52
    .end local v0    # "canAccessSendSms":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
