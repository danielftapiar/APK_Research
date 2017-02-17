.class Lcom/prey/activities/WelcomeBatchActivity$AddDeviceToApiKeyBatch;
.super Landroid/os/AsyncTask;
.source "WelcomeBatchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prey/activities/WelcomeBatchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddDeviceToApiKeyBatch"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prey/activities/WelcomeBatchActivity;


# direct methods
.method private constructor <init>(Lcom/prey/activities/WelcomeBatchActivity;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/prey/activities/WelcomeBatchActivity$AddDeviceToApiKeyBatch;->this$0:Lcom/prey/activities/WelcomeBatchActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/prey/activities/WelcomeBatchActivity;Lcom/prey/activities/WelcomeBatchActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/prey/activities/WelcomeBatchActivity;
    .param p2, "x1"    # Lcom/prey/activities/WelcomeBatchActivity$1;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/prey/activities/WelcomeBatchActivity$AddDeviceToApiKeyBatch;-><init>(Lcom/prey/activities/WelcomeBatchActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 82
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/prey/activities/WelcomeBatchActivity$AddDeviceToApiKeyBatch;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 8
    .param p1, "data"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 91
    :try_start_0
    iget-object v3, p0, Lcom/prey/activities/WelcomeBatchActivity$AddDeviceToApiKeyBatch;->this$0:Lcom/prey/activities/WelcomeBatchActivity;

    const/4 v4, 0x0

    # setter for: Lcom/prey/activities/WelcomeBatchActivity;->error:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/prey/activities/WelcomeBatchActivity;->access$102(Lcom/prey/activities/WelcomeBatchActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    iget-object v3, p0, Lcom/prey/activities/WelcomeBatchActivity$AddDeviceToApiKeyBatch;->this$0:Lcom/prey/activities/WelcomeBatchActivity;

    invoke-virtual {v3}, Lcom/prey/activities/WelcomeBatchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 94
    .local v1, "ctx":Landroid/content/Context;
    invoke-static {v1}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/prey/PreyConfig;->isThisDeviceAlreadyRegisteredWithPrey()Z

    move-result v3

    if-nez v3, :cond_0

    .line 95
    invoke-static {}, Lcom/prey/net/PreyWebServices;->getInstance()Lcom/prey/net/PreyWebServices;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, p1, v4

    const/4 v5, 0x1

    aget-object v5, p1, v5

    const/4 v6, 0x2

    aget-object v6, p1, v6

    invoke-virtual {v3, v1, v4, v5, v6}, Lcom/prey/net/PreyWebServices;->registerNewDeviceWithApiKeyEmail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/prey/PreyAccountData;

    move-result-object v0

    .line 96
    .local v0, "accountData":Lcom/prey/PreyAccountData;
    invoke-static {v1}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/prey/PreyConfig;->saveAccount(Lcom/prey/PreyAccountData;)V
    :try_end_0
    .catch Lcom/prey/exceptions/PreyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .end local v0    # "accountData":Lcom/prey/PreyAccountData;
    .end local v1    # "ctx":Landroid/content/Context;
    :cond_0
    :goto_0
    return-object v7

    .line 99
    :catch_0
    move-exception v2

    .line 100
    .local v2, "e":Lcom/prey/exceptions/PreyException;
    iget-object v3, p0, Lcom/prey/activities/WelcomeBatchActivity$AddDeviceToApiKeyBatch;->this$0:Lcom/prey/activities/WelcomeBatchActivity;

    invoke-virtual {v2}, Lcom/prey/exceptions/PreyException;->getMessage()Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/prey/activities/WelcomeBatchActivity;->error:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/prey/activities/WelcomeBatchActivity;->access$102(Lcom/prey/activities/WelcomeBatchActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 82
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/prey/activities/WelcomeBatchActivity$AddDeviceToApiKeyBatch;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 5
    .param p1, "unused"    # Ljava/lang/Void;

    .prologue
    .line 107
    iget-object v3, p0, Lcom/prey/activities/WelcomeBatchActivity$AddDeviceToApiKeyBatch;->this$0:Lcom/prey/activities/WelcomeBatchActivity;

    # getter for: Lcom/prey/activities/WelcomeBatchActivity;->error:Ljava/lang/String;
    invoke-static {v3}, Lcom/prey/activities/WelcomeBatchActivity;->access$100(Lcom/prey/activities/WelcomeBatchActivity;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 108
    iget-object v3, p0, Lcom/prey/activities/WelcomeBatchActivity$AddDeviceToApiKeyBatch;->this$0:Lcom/prey/activities/WelcomeBatchActivity;

    const v4, 0x7f09004d

    invoke-virtual {v3, v4}, Lcom/prey/activities/WelcomeBatchActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, "message":Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 110
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "message"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v3, p0, Lcom/prey/activities/WelcomeBatchActivity$AddDeviceToApiKeyBatch;->this$0:Lcom/prey/activities/WelcomeBatchActivity;

    invoke-static {v3}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/prey/PreyConfig;->setCamouflageSet(Z)V

    .line 112
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/prey/activities/WelcomeBatchActivity$AddDeviceToApiKeyBatch;->this$0:Lcom/prey/activities/WelcomeBatchActivity;

    const-class v4, Lcom/prey/activities/PermissionInformationActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 113
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 114
    iget-object v3, p0, Lcom/prey/activities/WelcomeBatchActivity$AddDeviceToApiKeyBatch;->this$0:Lcom/prey/activities/WelcomeBatchActivity;

    invoke-virtual {v3, v1}, Lcom/prey/activities/WelcomeBatchActivity;->startActivity(Landroid/content/Intent;)V

    .line 116
    iget-object v3, p0, Lcom/prey/activities/WelcomeBatchActivity$AddDeviceToApiKeyBatch;->this$0:Lcom/prey/activities/WelcomeBatchActivity;

    invoke-virtual {v3}, Lcom/prey/activities/WelcomeBatchActivity;->finish()V

    .line 118
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "message":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method
