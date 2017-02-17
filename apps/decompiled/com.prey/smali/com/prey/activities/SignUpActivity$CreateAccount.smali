.class Lcom/prey/activities/SignUpActivity$CreateAccount;
.super Landroid/os/AsyncTask;
.source "SignUpActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prey/activities/SignUpActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CreateAccount"
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

.field final synthetic this$0:Lcom/prey/activities/SignUpActivity;


# direct methods
.method private constructor <init>(Lcom/prey/activities/SignUpActivity;)V
    .locals 1

    .prologue
    .line 180
    iput-object p1, p0, Lcom/prey/activities/SignUpActivity$CreateAccount;->this$0:Lcom/prey/activities/SignUpActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prey/activities/SignUpActivity$CreateAccount;->progressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method synthetic constructor <init>(Lcom/prey/activities/SignUpActivity;Lcom/prey/activities/SignUpActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/prey/activities/SignUpActivity;
    .param p2, "x1"    # Lcom/prey/activities/SignUpActivity$1;

    .prologue
    .line 180
    invoke-direct {p0, p1}, Lcom/prey/activities/SignUpActivity$CreateAccount;-><init>(Lcom/prey/activities/SignUpActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 180
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/prey/activities/SignUpActivity$CreateAccount;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 9
    .param p1, "data"    # [Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/prey/activities/SignUpActivity$CreateAccount;->this$0:Lcom/prey/activities/SignUpActivity;

    const/4 v1, 0x0

    # setter for: Lcom/prey/activities/SignUpActivity;->error:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/prey/activities/SignUpActivity;->access$202(Lcom/prey/activities/SignUpActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 197
    invoke-static {}, Lcom/prey/net/PreyWebServices;->getInstance()Lcom/prey/net/PreyWebServices;

    move-result-object v0

    iget-object v1, p0, Lcom/prey/activities/SignUpActivity$CreateAccount;->this$0:Lcom/prey/activities/SignUpActivity;

    invoke-virtual {v1}, Lcom/prey/activities/SignUpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, p1, v2

    const/4 v3, 0x1

    aget-object v3, p1, v3

    const/4 v4, 0x2

    aget-object v4, p1, v4

    iget-object v5, p0, Lcom/prey/activities/SignUpActivity$CreateAccount;->this$0:Lcom/prey/activities/SignUpActivity;

    invoke-virtual {v5}, Lcom/prey/activities/SignUpActivity;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-static {v5}, Lcom/prey/PreyUtils;->getDeviceType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/prey/net/PreyWebServices;->registerNewAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/prey/PreyAccountData;

    move-result-object v6

    .line 198
    .local v6, "accountData":Lcom/prey/PreyAccountData;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response creating account: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/prey/activities/SignUpActivity$CreateAccount;->this$0:Lcom/prey/activities/SignUpActivity;

    invoke-virtual {v0}, Lcom/prey/activities/SignUpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/prey/PreyConfig;->saveAccount(Lcom/prey/PreyAccountData;)V

    .line 200
    iget-object v0, p0, Lcom/prey/activities/SignUpActivity$CreateAccount;->this$0:Lcom/prey/activities/SignUpActivity;

    invoke-virtual {v0}, Lcom/prey/activities/SignUpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prey/PreyConfig;->registerC2dm()V

    .line 201
    invoke-static {}, Lcom/prey/net/PreyWebServices;->getInstance()Lcom/prey/net/PreyWebServices;

    move-result-object v0

    iget-object v1, p0, Lcom/prey/activities/SignUpActivity$CreateAccount;->this$0:Lcom/prey/activities/SignUpActivity;

    invoke-virtual {v1}, Lcom/prey/activities/SignUpActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const/16 v2, 0x7d1

    invoke-virtual {v0, v1, v2}, Lcom/prey/net/PreyWebServices;->sendEvent(Landroid/content/Context;I)V
    :try_end_0
    .catch Lcom/prey/exceptions/PreyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    .end local v6    # "accountData":Lcom/prey/PreyAccountData;
    :goto_0
    return-object v8

    .line 202
    :catch_0
    move-exception v7

    .line 203
    .local v7, "e":Lcom/prey/exceptions/PreyException;
    iget-object v0, p0, Lcom/prey/activities/SignUpActivity$CreateAccount;->this$0:Lcom/prey/activities/SignUpActivity;

    invoke-virtual {v7}, Lcom/prey/exceptions/PreyException;->getMessage()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/prey/activities/SignUpActivity;->error:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/prey/activities/SignUpActivity;->access$202(Lcom/prey/activities/SignUpActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 180
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/prey/activities/SignUpActivity$CreateAccount;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 8
    .param p1, "unused"    # Ljava/lang/Void;

    .prologue
    const/4 v5, 0x1

    .line 211
    :try_start_0
    iget-object v3, p0, Lcom/prey/activities/SignUpActivity$CreateAccount;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :goto_0
    iget-object v3, p0, Lcom/prey/activities/SignUpActivity$CreateAccount;->this$0:Lcom/prey/activities/SignUpActivity;

    # getter for: Lcom/prey/activities/SignUpActivity;->error:Ljava/lang/String;
    invoke-static {v3}, Lcom/prey/activities/SignUpActivity;->access$200(Lcom/prey/activities/SignUpActivity;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 215
    iget-object v3, p0, Lcom/prey/activities/SignUpActivity$CreateAccount;->this$0:Lcom/prey/activities/SignUpActivity;

    const v4, 0x7f090086

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/prey/activities/SignUpActivity$CreateAccount;->this$0:Lcom/prey/activities/SignUpActivity;

    # getter for: Lcom/prey/activities/SignUpActivity;->email:Ljava/lang/String;
    invoke-static {v7}, Lcom/prey/activities/SignUpActivity;->access$000(Lcom/prey/activities/SignUpActivity;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/prey/activities/SignUpActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 216
    .local v2, "message":Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 217
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "message"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/prey/activities/SignUpActivity$CreateAccount;->this$0:Lcom/prey/activities/SignUpActivity;

    const-class v4, Lcom/prey/activities/PermissionInformationActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 219
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 220
    iget-object v3, p0, Lcom/prey/activities/SignUpActivity$CreateAccount;->this$0:Lcom/prey/activities/SignUpActivity;

    invoke-virtual {v3, v1}, Lcom/prey/activities/SignUpActivity;->startActivity(Landroid/content/Intent;)V

    .line 221
    iget-object v3, p0, Lcom/prey/activities/SignUpActivity$CreateAccount;->this$0:Lcom/prey/activities/SignUpActivity;

    invoke-virtual {v3}, Lcom/prey/activities/SignUpActivity;->finish()V

    .line 224
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "message":Ljava/lang/String;
    :goto_1
    return-void

    .line 223
    :cond_0
    iget-object v3, p0, Lcom/prey/activities/SignUpActivity$CreateAccount;->this$0:Lcom/prey/activities/SignUpActivity;

    invoke-virtual {v3, v5}, Lcom/prey/activities/SignUpActivity;->showDialog(I)V

    goto :goto_1

    .line 212
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 186
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/prey/activities/SignUpActivity$CreateAccount;->this$0:Lcom/prey/activities/SignUpActivity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/prey/activities/SignUpActivity$CreateAccount;->progressDialog:Landroid/app/ProgressDialog;

    .line 187
    iget-object v0, p0, Lcom/prey/activities/SignUpActivity$CreateAccount;->progressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/prey/activities/SignUpActivity$CreateAccount;->this$0:Lcom/prey/activities/SignUpActivity;

    const v2, 0x7f09004c

    invoke-virtual {v1, v2}, Lcom/prey/activities/SignUpActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v0, p0, Lcom/prey/activities/SignUpActivity$CreateAccount;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 189
    iget-object v0, p0, Lcom/prey/activities/SignUpActivity$CreateAccount;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 190
    iget-object v0, p0, Lcom/prey/activities/SignUpActivity$CreateAccount;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 191
    return-void
.end method
