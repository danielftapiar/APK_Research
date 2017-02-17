.class Lcom/prey/barcodereader/BarcodeActivity$AddDeviceToApiKeyBatch;
.super Landroid/os/AsyncTask;
.source "BarcodeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prey/barcodereader/BarcodeActivity;
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
.field progressDialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/prey/barcodereader/BarcodeActivity;


# direct methods
.method private constructor <init>(Lcom/prey/barcodereader/BarcodeActivity;)V
    .locals 1

    .prologue
    .line 146
    iput-object p1, p0, Lcom/prey/barcodereader/BarcodeActivity$AddDeviceToApiKeyBatch;->this$0:Lcom/prey/barcodereader/BarcodeActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prey/barcodereader/BarcodeActivity$AddDeviceToApiKeyBatch;->progressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method synthetic constructor <init>(Lcom/prey/barcodereader/BarcodeActivity;Lcom/prey/barcodereader/BarcodeActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/prey/barcodereader/BarcodeActivity;
    .param p2, "x1"    # Lcom/prey/barcodereader/BarcodeActivity$1;

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/prey/barcodereader/BarcodeActivity$AddDeviceToApiKeyBatch;-><init>(Lcom/prey/barcodereader/BarcodeActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 146
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/prey/barcodereader/BarcodeActivity$AddDeviceToApiKeyBatch;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 8
    .param p1, "data"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 162
    :try_start_0
    iget-object v3, p0, Lcom/prey/barcodereader/BarcodeActivity$AddDeviceToApiKeyBatch;->this$0:Lcom/prey/barcodereader/BarcodeActivity;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/prey/barcodereader/BarcodeActivity;->error:Ljava/lang/String;

    .line 163
    iget-object v3, p0, Lcom/prey/barcodereader/BarcodeActivity$AddDeviceToApiKeyBatch;->this$0:Lcom/prey/barcodereader/BarcodeActivity;

    invoke-virtual {v3}, Lcom/prey/barcodereader/BarcodeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 165
    .local v1, "ctx":Landroid/content/Context;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apikey:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mail:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, p1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " device:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v4, p1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    .line 167
    invoke-static {v1}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/prey/PreyConfig;->isThisDeviceAlreadyRegisteredWithPrey()Z

    move-result v3

    if-nez v3, :cond_0

    .line 168
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

    .line 169
    .local v0, "accountData":Lcom/prey/PreyAccountData;
    if-eqz v0, :cond_0

    .line 170
    invoke-static {v1}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/prey/PreyConfig;->saveAccount(Lcom/prey/PreyAccountData;)V

    .line 171
    iget-object v3, p0, Lcom/prey/barcodereader/BarcodeActivity$AddDeviceToApiKeyBatch;->this$0:Lcom/prey/barcodereader/BarcodeActivity;

    invoke-virtual {v3}, Lcom/prey/barcodereader/BarcodeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/prey/PreyConfig;->saveAccount(Lcom/prey/PreyAccountData;)V

    .line 172
    iget-object v3, p0, Lcom/prey/barcodereader/BarcodeActivity$AddDeviceToApiKeyBatch;->this$0:Lcom/prey/barcodereader/BarcodeActivity;

    invoke-virtual {v3}, Lcom/prey/barcodereader/BarcodeActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/prey/PreyConfig;->registerC2dm()V

    .line 173
    invoke-static {}, Lcom/prey/net/PreyWebServices;->getInstance()Lcom/prey/net/PreyWebServices;

    move-result-object v3

    iget-object v4, p0, Lcom/prey/barcodereader/BarcodeActivity$AddDeviceToApiKeyBatch;->this$0:Lcom/prey/barcodereader/BarcodeActivity;

    invoke-virtual {v4}, Lcom/prey/barcodereader/BarcodeActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    const/16 v5, 0x7d5

    invoke-virtual {v3, v4, v5}, Lcom/prey/net/PreyWebServices;->sendEvent(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .end local v0    # "accountData":Lcom/prey/PreyAccountData;
    .end local v1    # "ctx":Landroid/content/Context;
    :cond_0
    :goto_0
    return-object v7

    .line 177
    :catch_0
    move-exception v2

    .line 178
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/prey/barcodereader/BarcodeActivity$AddDeviceToApiKeyBatch;->this$0:Lcom/prey/barcodereader/BarcodeActivity;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/prey/barcodereader/BarcodeActivity;->error:Ljava/lang/String;

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 146
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/prey/barcodereader/BarcodeActivity$AddDeviceToApiKeyBatch;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 5
    .param p1, "unused"    # Ljava/lang/Void;

    .prologue
    .line 186
    :try_start_0
    iget-object v3, p0, Lcom/prey/barcodereader/BarcodeActivity$AddDeviceToApiKeyBatch;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/prey/barcodereader/BarcodeActivity$AddDeviceToApiKeyBatch;->this$0:Lcom/prey/barcodereader/BarcodeActivity;

    iget-object v4, v4, Lcom/prey/barcodereader/BarcodeActivity;->error:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    .line 190
    iget-object v3, p0, Lcom/prey/barcodereader/BarcodeActivity$AddDeviceToApiKeyBatch;->this$0:Lcom/prey/barcodereader/BarcodeActivity;

    iget-object v3, v3, Lcom/prey/barcodereader/BarcodeActivity;->error:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 191
    iget-object v3, p0, Lcom/prey/barcodereader/BarcodeActivity$AddDeviceToApiKeyBatch;->this$0:Lcom/prey/barcodereader/BarcodeActivity;

    const v4, 0x7f09004d

    invoke-virtual {v3, v4}, Lcom/prey/barcodereader/BarcodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 192
    .local v2, "message":Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 193
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "message"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v3, p0, Lcom/prey/barcodereader/BarcodeActivity$AddDeviceToApiKeyBatch;->this$0:Lcom/prey/barcodereader/BarcodeActivity;

    invoke-virtual {v3}, Lcom/prey/barcodereader/BarcodeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/prey/PreyConfig;->setCamouflageSet(Z)V

    .line 195
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/prey/barcodereader/BarcodeActivity$AddDeviceToApiKeyBatch;->this$0:Lcom/prey/barcodereader/BarcodeActivity;

    invoke-virtual {v3}, Lcom/prey/barcodereader/BarcodeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/prey/activities/PermissionInformationActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 196
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 197
    iget-object v3, p0, Lcom/prey/barcodereader/BarcodeActivity$AddDeviceToApiKeyBatch;->this$0:Lcom/prey/barcodereader/BarcodeActivity;

    invoke-virtual {v3, v1}, Lcom/prey/barcodereader/BarcodeActivity;->startActivity(Landroid/content/Intent;)V

    .line 199
    iget-object v3, p0, Lcom/prey/barcodereader/BarcodeActivity$AddDeviceToApiKeyBatch;->this$0:Lcom/prey/barcodereader/BarcodeActivity;

    invoke-virtual {v3}, Lcom/prey/barcodereader/BarcodeActivity;->finish()V

    .line 205
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "message":Ljava/lang/String;
    :goto_1
    return-void

    .line 203
    :cond_0
    iget-object v3, p0, Lcom/prey/barcodereader/BarcodeActivity$AddDeviceToApiKeyBatch;->this$0:Lcom/prey/barcodereader/BarcodeActivity;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/prey/barcodereader/BarcodeActivity;->showDialog(I)V

    goto :goto_1

    .line 187
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 152
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/prey/barcodereader/BarcodeActivity$AddDeviceToApiKeyBatch;->this$0:Lcom/prey/barcodereader/BarcodeActivity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/prey/barcodereader/BarcodeActivity$AddDeviceToApiKeyBatch;->progressDialog:Landroid/app/ProgressDialog;

    .line 153
    iget-object v0, p0, Lcom/prey/barcodereader/BarcodeActivity$AddDeviceToApiKeyBatch;->progressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/prey/barcodereader/BarcodeActivity$AddDeviceToApiKeyBatch;->this$0:Lcom/prey/barcodereader/BarcodeActivity;

    const v2, 0x7f0900de

    invoke-virtual {v1, v2}, Lcom/prey/barcodereader/BarcodeActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v0, p0, Lcom/prey/barcodereader/BarcodeActivity$AddDeviceToApiKeyBatch;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 155
    iget-object v0, p0, Lcom/prey/barcodereader/BarcodeActivity$AddDeviceToApiKeyBatch;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 156
    iget-object v0, p0, Lcom/prey/barcodereader/BarcodeActivity$AddDeviceToApiKeyBatch;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 157
    return-void
.end method
