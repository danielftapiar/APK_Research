.class Lcom/prey/activities/SignInActivity$AddDeviceToAccount;
.super Landroid/os/AsyncTask;
.source "SignInActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prey/activities/SignInActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddDeviceToAccount"
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

.field final synthetic this$0:Lcom/prey/activities/SignInActivity;


# direct methods
.method private constructor <init>(Lcom/prey/activities/SignInActivity;)V
    .locals 1

    .prologue
    .line 267
    iput-object p1, p0, Lcom/prey/activities/SignInActivity$AddDeviceToAccount;->this$0:Lcom/prey/activities/SignInActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 269
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prey/activities/SignInActivity$AddDeviceToAccount;->progressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method synthetic constructor <init>(Lcom/prey/activities/SignInActivity;Lcom/prey/activities/SignInActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/prey/activities/SignInActivity;
    .param p2, "x1"    # Lcom/prey/activities/SignInActivity$1;

    .prologue
    .line 267
    invoke-direct {p0, p1}, Lcom/prey/activities/SignInActivity$AddDeviceToAccount;-><init>(Lcom/prey/activities/SignInActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 267
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/prey/activities/SignInActivity$AddDeviceToAccount;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 12
    .param p1, "data"    # [Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 283
    :try_start_0
    iget-object v5, p0, Lcom/prey/activities/SignInActivity$AddDeviceToAccount;->this$0:Lcom/prey/activities/SignInActivity;

    const/4 v6, 0x0

    # setter for: Lcom/prey/activities/SignInActivity;->noMoreDeviceError:Z
    invoke-static {v5, v6}, Lcom/prey/activities/SignInActivity;->access$102(Lcom/prey/activities/SignInActivity;Z)Z

    .line 284
    iget-object v5, p0, Lcom/prey/activities/SignInActivity$AddDeviceToAccount;->this$0:Lcom/prey/activities/SignInActivity;

    const/4 v6, 0x0

    # setter for: Lcom/prey/activities/SignInActivity;->error:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/prey/activities/SignInActivity;->access$202(Lcom/prey/activities/SignInActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 285
    invoke-static {}, Lcom/prey/net/PreyWebServices;->getInstance()Lcom/prey/net/PreyWebServices;

    move-result-object v5

    iget-object v6, p0, Lcom/prey/activities/SignInActivity$AddDeviceToAccount;->this$0:Lcom/prey/activities/SignInActivity;

    const/4 v7, 0x0

    aget-object v7, p1, v7

    const/4 v8, 0x1

    aget-object v8, p1, v8

    const/4 v9, 0x2

    aget-object v9, p1, v9

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/prey/net/PreyWebServices;->registerNewDeviceToAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/prey/PreyAccountData;

    move-result-object v1

    .line 286
    .local v1, "accountData":Lcom/prey/PreyAccountData;
    iget-object v5, p0, Lcom/prey/activities/SignInActivity$AddDeviceToAccount;->this$0:Lcom/prey/activities/SignInActivity;

    invoke-virtual {v5}, Lcom/prey/activities/SignInActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/prey/PreyConfig;->saveAccount(Lcom/prey/PreyAccountData;)V

    .line 287
    iget-object v5, p0, Lcom/prey/activities/SignInActivity$AddDeviceToAccount;->this$0:Lcom/prey/activities/SignInActivity;

    invoke-virtual {v5}, Lcom/prey/activities/SignInActivity;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-static {v5}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/prey/PreyConfig;->registerC2dm()V

    .line 288
    invoke-static {}, Lcom/prey/net/PreyWebServices;->getInstance()Lcom/prey/net/PreyWebServices;

    move-result-object v5

    iget-object v6, p0, Lcom/prey/activities/SignInActivity$AddDeviceToAccount;->this$0:Lcom/prey/activities/SignInActivity;

    invoke-virtual {v6}, Lcom/prey/activities/SignInActivity;->getApplication()Landroid/app/Application;

    move-result-object v6

    const/16 v7, 0x7d5

    invoke-virtual {v5, v6, v7}, Lcom/prey/net/PreyWebServices;->sendEvent(Landroid/content/Context;I)V
    :try_end_0
    .catch Lcom/prey/exceptions/PreyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    .end local v1    # "accountData":Lcom/prey/PreyAccountData;
    :goto_0
    return-object v11

    .line 289
    :catch_0
    move-exception v2

    .line 290
    .local v2, "e":Lcom/prey/exceptions/PreyException;
    iget-object v5, p0, Lcom/prey/activities/SignInActivity$AddDeviceToAccount;->this$0:Lcom/prey/activities/SignInActivity;

    invoke-virtual {v2}, Lcom/prey/exceptions/PreyException;->getMessage()Ljava/lang/String;

    move-result-object v6

    # setter for: Lcom/prey/activities/SignInActivity;->error:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/prey/activities/SignInActivity;->access$202(Lcom/prey/activities/SignInActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 292
    :try_start_1
    move-object v0, v2

    check-cast v0, Lcom/prey/exceptions/NoMoreDevicesAllowedException;

    move-object v4, v0

    .line 293
    .local v4, "noMoreDevices":Lcom/prey/exceptions/NoMoreDevicesAllowedException;
    iget-object v5, p0, Lcom/prey/activities/SignInActivity$AddDeviceToAccount;->this$0:Lcom/prey/activities/SignInActivity;

    const/4 v6, 0x1

    # setter for: Lcom/prey/activities/SignInActivity;->noMoreDeviceError:Z
    invoke-static {v5, v6}, Lcom/prey/activities/SignInActivity;->access$102(Lcom/prey/activities/SignInActivity;Z)Z
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 295
    .end local v4    # "noMoreDevices":Lcom/prey/exceptions/NoMoreDevicesAllowedException;
    :catch_1
    move-exception v3

    .line 296
    .local v3, "e1":Ljava/lang/ClassCastException;
    iget-object v5, p0, Lcom/prey/activities/SignInActivity$AddDeviceToAccount;->this$0:Lcom/prey/activities/SignInActivity;

    # setter for: Lcom/prey/activities/SignInActivity;->noMoreDeviceError:Z
    invoke-static {v5, v10}, Lcom/prey/activities/SignInActivity;->access$102(Lcom/prey/activities/SignInActivity;Z)Z

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 267
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/prey/activities/SignInActivity$AddDeviceToAccount;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 5
    .param p1, "unused"    # Ljava/lang/Void;

    .prologue
    .line 305
    :try_start_0
    iget-object v3, p0, Lcom/prey/activities/SignInActivity$AddDeviceToAccount;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :goto_0
    iget-object v3, p0, Lcom/prey/activities/SignInActivity$AddDeviceToAccount;->this$0:Lcom/prey/activities/SignInActivity;

    # getter for: Lcom/prey/activities/SignInActivity;->noMoreDeviceError:Z
    invoke-static {v3}, Lcom/prey/activities/SignInActivity;->access$100(Lcom/prey/activities/SignInActivity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 309
    iget-object v3, p0, Lcom/prey/activities/SignInActivity$AddDeviceToAccount;->this$0:Lcom/prey/activities/SignInActivity;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/prey/activities/SignInActivity;->showDialog(I)V

    .line 323
    :goto_1
    return-void

    .line 312
    :cond_0
    iget-object v3, p0, Lcom/prey/activities/SignInActivity$AddDeviceToAccount;->this$0:Lcom/prey/activities/SignInActivity;

    # getter for: Lcom/prey/activities/SignInActivity;->error:Ljava/lang/String;
    invoke-static {v3}, Lcom/prey/activities/SignInActivity;->access$200(Lcom/prey/activities/SignInActivity;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 313
    iget-object v3, p0, Lcom/prey/activities/SignInActivity$AddDeviceToAccount;->this$0:Lcom/prey/activities/SignInActivity;

    const v4, 0x7f09004d

    invoke-virtual {v3, v4}, Lcom/prey/activities/SignInActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 314
    .local v2, "message":Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 315
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "message"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/prey/activities/SignInActivity$AddDeviceToAccount;->this$0:Lcom/prey/activities/SignInActivity;

    const-class v4, Lcom/prey/activities/PermissionInformationActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 317
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 318
    iget-object v3, p0, Lcom/prey/activities/SignInActivity$AddDeviceToAccount;->this$0:Lcom/prey/activities/SignInActivity;

    invoke-virtual {v3, v1}, Lcom/prey/activities/SignInActivity;->startActivity(Landroid/content/Intent;)V

    .line 319
    iget-object v3, p0, Lcom/prey/activities/SignInActivity$AddDeviceToAccount;->this$0:Lcom/prey/activities/SignInActivity;

    invoke-virtual {v3}, Lcom/prey/activities/SignInActivity;->finish()V

    goto :goto_1

    .line 321
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "message":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/prey/activities/SignInActivity$AddDeviceToAccount;->this$0:Lcom/prey/activities/SignInActivity;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/prey/activities/SignInActivity;->showDialog(I)V

    goto :goto_1

    .line 306
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 273
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/prey/activities/SignInActivity$AddDeviceToAccount;->this$0:Lcom/prey/activities/SignInActivity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/prey/activities/SignInActivity$AddDeviceToAccount;->progressDialog:Landroid/app/ProgressDialog;

    .line 274
    iget-object v0, p0, Lcom/prey/activities/SignInActivity$AddDeviceToAccount;->progressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/prey/activities/SignInActivity$AddDeviceToAccount;->this$0:Lcom/prey/activities/SignInActivity;

    const v2, 0x7f0900de

    invoke-virtual {v1, v2}, Lcom/prey/activities/SignInActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v0, p0, Lcom/prey/activities/SignInActivity$AddDeviceToAccount;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 276
    iget-object v0, p0, Lcom/prey/activities/SignInActivity$AddDeviceToAccount;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 277
    iget-object v0, p0, Lcom/prey/activities/SignInActivity$AddDeviceToAccount;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 278
    return-void
.end method
