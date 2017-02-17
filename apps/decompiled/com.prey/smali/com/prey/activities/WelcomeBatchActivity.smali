.class public Lcom/prey/activities/WelcomeBatchActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "WelcomeBatchActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prey/activities/WelcomeBatchActivity$AddDeviceToApiKeyBatch;
    }
.end annotation


# instance fields
.field private error:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prey/activities/WelcomeBatchActivity;->error:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/prey/activities/WelcomeBatchActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/prey/activities/WelcomeBatchActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/prey/activities/WelcomeBatchActivity;->error:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/prey/activities/WelcomeBatchActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/prey/activities/WelcomeBatchActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/prey/activities/WelcomeBatchActivity;->error:Ljava/lang/String;

    return-object p1
.end method

.method private installBatch()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 77
    iput-object v2, p0, Lcom/prey/activities/WelcomeBatchActivity;->error:Ljava/lang/String;

    .line 78
    invoke-static {p0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v0

    .line 79
    .local v0, "config":Lcom/prey/PreyConfig;
    new-instance v1, Lcom/prey/activities/WelcomeBatchActivity$AddDeviceToApiKeyBatch;

    invoke-direct {v1, p0, v2}, Lcom/prey/activities/WelcomeBatchActivity$AddDeviceToApiKeyBatch;-><init>(Lcom/prey/activities/WelcomeBatchActivity;Lcom/prey/activities/WelcomeBatchActivity$1;)V

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/prey/PreyConfig;->getApiKeyBatch()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/prey/PreyConfig;->getEmailBatch()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p0}, Lcom/prey/PreyUtils;->getDeviceType(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/prey/activities/WelcomeBatchActivity$AddDeviceToApiKeyBatch;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 80
    return-void
.end method


# virtual methods
.method public menu()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "menu ready:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prey/PreyConfig;->getProtectReady()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    .line 68
    invoke-static {p0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prey/PreyConfig;->getEmail()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "email":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    :cond_0
    invoke-static {p0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/prey/PreyConfig;->setProtectReady(Z)V

    .line 71
    invoke-static {p0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/prey/PreyConfig;->setProtectAccount(Z)V

    .line 72
    invoke-static {p0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/prey/PreyConfig;->setProtectTour(Z)V

    .line 74
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 50
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    .line 54
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0, v0}, Lcom/prey/activities/WelcomeBatchActivity;->requestWindowFeature(I)Z

    .line 56
    invoke-virtual {p0, v0}, Lcom/prey/activities/WelcomeBatchActivity;->setRequestedOrientation(I)V

    .line 57
    const v0, 0x7f04005a

    invoke-virtual {p0, v0}, Lcom/prey/activities/WelcomeBatchActivity;->setContentView(I)V

    .line 59
    invoke-virtual {p0}, Lcom/prey/activities/WelcomeBatchActivity;->menu()V

    .line 60
    invoke-direct {p0}, Lcom/prey/activities/WelcomeBatchActivity;->installBatch()V

    .line 63
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 43
    const-string v0, "onPause of WelcomeBatchActivity"

    invoke-static {v0}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    .line 44
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 45
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "onResume of WelcomeBatchActivity"

    invoke-static {v0}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    .line 37
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 39
    return-void
.end method
