.class public Lcom/prey/activities/CheckPasswordActivity$CheckPassword;
.super Landroid/os/AsyncTask;
.source "CheckPasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prey/activities/CheckPasswordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CheckPassword"
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
.field error:Ljava/lang/String;

.field isPasswordOk:Z

.field progressDialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/prey/activities/CheckPasswordActivity;


# direct methods
.method protected constructor <init>(Lcom/prey/activities/CheckPasswordActivity;)V
    .locals 2
    .param p1, "this$0"    # Lcom/prey/activities/CheckPasswordActivity;

    .prologue
    const/4 v1, 0x0

    .line 340
    iput-object p1, p0, Lcom/prey/activities/CheckPasswordActivity$CheckPassword;->this$0:Lcom/prey/activities/CheckPasswordActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 342
    iput-object v1, p0, Lcom/prey/activities/CheckPasswordActivity$CheckPassword;->progressDialog:Landroid/app/ProgressDialog;

    .line 343
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prey/activities/CheckPasswordActivity$CheckPassword;->isPasswordOk:Z

    .line 344
    iput-object v1, p0, Lcom/prey/activities/CheckPasswordActivity$CheckPassword;->error:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 340
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/prey/activities/CheckPasswordActivity$CheckPassword;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 5
    .param p1, "password"    # [Ljava/lang/String;

    .prologue
    .line 363
    :try_start_0
    iget-object v2, p0, Lcom/prey/activities/CheckPasswordActivity$CheckPassword;->this$0:Lcom/prey/activities/CheckPasswordActivity;

    invoke-static {v2}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prey/PreyConfig;->getApiKey()Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, "apikey":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apikey:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " password[0]:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 365
    invoke-static {}, Lcom/prey/net/PreyWebServices;->getInstance()Lcom/prey/net/PreyWebServices;

    move-result-object v2

    iget-object v3, p0, Lcom/prey/activities/CheckPasswordActivity$CheckPassword;->this$0:Lcom/prey/activities/CheckPasswordActivity;

    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {v2, v3, v0, v4}, Lcom/prey/net/PreyWebServices;->checkPassword(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/prey/activities/CheckPasswordActivity$CheckPassword;->isPasswordOk:Z

    .line 366
    iget-boolean v2, p0, Lcom/prey/activities/CheckPasswordActivity$CheckPassword;->isPasswordOk:Z

    if-eqz v2, :cond_0

    .line 367
    iget-object v2, p0, Lcom/prey/activities/CheckPasswordActivity$CheckPassword;->this$0:Lcom/prey/activities/CheckPasswordActivity;

    invoke-static {v2}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prey/PreyConfig;->setTimePasswordOk()V

    .line 368
    invoke-static {}, Lcom/prey/net/PreyWebServices;->getInstance()Lcom/prey/net/PreyWebServices;

    move-result-object v2

    iget-object v3, p0, Lcom/prey/activities/CheckPasswordActivity$CheckPassword;->this$0:Lcom/prey/activities/CheckPasswordActivity;

    invoke-virtual {v3}, Lcom/prey/activities/CheckPasswordActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    const/16 v4, 0x7d7

    invoke-virtual {v2, v3, v4}, Lcom/prey/net/PreyWebServices;->sendEvent(Landroid/content/Context;I)V

    .line 375
    .end local v0    # "apikey":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    return-object v2

    .line 370
    .restart local v0    # "apikey":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/prey/net/PreyWebServices;->getInstance()Lcom/prey/net/PreyWebServices;

    move-result-object v2

    iget-object v3, p0, Lcom/prey/activities/CheckPasswordActivity$CheckPassword;->this$0:Lcom/prey/activities/CheckPasswordActivity;

    invoke-virtual {v3}, Lcom/prey/activities/CheckPasswordActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    const/16 v4, 0x7d8

    invoke-virtual {v2, v3, v4}, Lcom/prey/net/PreyWebServices;->sendEvent(Landroid/content/Context;I)V
    :try_end_0
    .catch Lcom/prey/exceptions/PreyException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 372
    .end local v0    # "apikey":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 373
    .local v1, "e":Lcom/prey/exceptions/PreyException;
    invoke-virtual {v1}, Lcom/prey/exceptions/PreyException;->getMessage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/prey/activities/CheckPasswordActivity$CheckPassword;->error:Ljava/lang/String;

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 340
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/prey/activities/CheckPasswordActivity$CheckPassword;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 6
    .param p1, "unused"    # Ljava/lang/Void;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 381
    :try_start_0
    iget-object v1, p0, Lcom/prey/activities/CheckPasswordActivity$CheckPassword;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 382
    iget-object v1, p0, Lcom/prey/activities/CheckPasswordActivity$CheckPassword;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/prey/activities/CheckPasswordActivity$CheckPassword;->error:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 387
    iget-object v1, p0, Lcom/prey/activities/CheckPasswordActivity$CheckPassword;->this$0:Lcom/prey/activities/CheckPasswordActivity;

    iget-object v2, p0, Lcom/prey/activities/CheckPasswordActivity$CheckPassword;->error:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 406
    :goto_1
    return-void

    .line 388
    :cond_1
    iget-boolean v1, p0, Lcom/prey/activities/CheckPasswordActivity$CheckPassword;->isPasswordOk:Z

    if-nez v1, :cond_3

    .line 390
    iget-object v1, p0, Lcom/prey/activities/CheckPasswordActivity$CheckPassword;->this$0:Lcom/prey/activities/CheckPasswordActivity;

    iget v2, v1, Lcom/prey/activities/CheckPasswordActivity;->wrongPasswordIntents:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/prey/activities/CheckPasswordActivity;->wrongPasswordIntents:I

    .line 391
    iget-object v1, p0, Lcom/prey/activities/CheckPasswordActivity$CheckPassword;->this$0:Lcom/prey/activities/CheckPasswordActivity;

    iget v1, v1, Lcom/prey/activities/CheckPasswordActivity;->wrongPasswordIntents:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 392
    iget-object v1, p0, Lcom/prey/activities/CheckPasswordActivity$CheckPassword;->this$0:Lcom/prey/activities/CheckPasswordActivity;

    const v2, 0x7f09008f

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 393
    iget-object v1, p0, Lcom/prey/activities/CheckPasswordActivity$CheckPassword;->this$0:Lcom/prey/activities/CheckPasswordActivity;

    invoke-virtual {v1, v4}, Lcom/prey/activities/CheckPasswordActivity;->setResult(I)V

    .line 394
    iget-object v1, p0, Lcom/prey/activities/CheckPasswordActivity$CheckPassword;->this$0:Lcom/prey/activities/CheckPasswordActivity;

    invoke-virtual {v1}, Lcom/prey/activities/CheckPasswordActivity;->finish()V

    goto :goto_1

    .line 396
    :cond_2
    iget-object v1, p0, Lcom/prey/activities/CheckPasswordActivity$CheckPassword;->this$0:Lcom/prey/activities/CheckPasswordActivity;

    const v2, 0x7f090091

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 400
    :cond_3
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/prey/activities/CheckPasswordActivity$CheckPassword;->this$0:Lcom/prey/activities/CheckPasswordActivity;

    const-class v2, Lcom/prey/activities/DeviceReadyActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 401
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/prey/PreyStatus;->getInstance()Lcom/prey/PreyStatus;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/prey/PreyStatus;->setPreyConfigurationActivityResume(Z)V

    .line 402
    iget-object v1, p0, Lcom/prey/activities/CheckPasswordActivity$CheckPassword;->this$0:Lcom/prey/activities/CheckPasswordActivity;

    invoke-virtual {v1, v0}, Lcom/prey/activities/CheckPasswordActivity;->startActivity(Landroid/content/Intent;)V

    .line 403
    iget-object v1, p0, Lcom/prey/activities/CheckPasswordActivity$CheckPassword;->this$0:Lcom/prey/activities/CheckPasswordActivity;

    invoke-virtual {v1}, Lcom/prey/activities/CheckPasswordActivity;->finish()V

    .line 404
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/prey/events/manager/EventManagerRunner;

    iget-object v3, p0, Lcom/prey/activities/CheckPasswordActivity$CheckPassword;->this$0:Lcom/prey/activities/CheckPasswordActivity;

    new-instance v4, Lcom/prey/events/Event;

    const-string v5, "prey_opened"

    invoke-direct {v4, v5}, Lcom/prey/events/Event;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4}, Lcom/prey/events/manager/EventManagerRunner;-><init>(Landroid/content/Context;Lcom/prey/events/Event;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_1

    .line 384
    .end local v0    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 350
    :try_start_0
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/prey/activities/CheckPasswordActivity$CheckPassword;->this$0:Lcom/prey/activities/CheckPasswordActivity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/prey/activities/CheckPasswordActivity$CheckPassword;->progressDialog:Landroid/app/ProgressDialog;

    .line 351
    iget-object v0, p0, Lcom/prey/activities/CheckPasswordActivity$CheckPassword;->progressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/prey/activities/CheckPasswordActivity$CheckPassword;->this$0:Lcom/prey/activities/CheckPasswordActivity;

    const v2, 0x7f09008c

    invoke-virtual {v1, v2}, Lcom/prey/activities/CheckPasswordActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 352
    iget-object v0, p0, Lcom/prey/activities/CheckPasswordActivity$CheckPassword;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 353
    iget-object v0, p0, Lcom/prey/activities/CheckPasswordActivity$CheckPassword;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 354
    iget-object v0, p0, Lcom/prey/activities/CheckPasswordActivity$CheckPassword;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    :goto_0
    return-void

    .line 355
    :catch_0
    move-exception v0

    goto :goto_0
.end method
