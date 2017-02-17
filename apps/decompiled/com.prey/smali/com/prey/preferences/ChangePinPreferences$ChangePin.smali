.class Lcom/prey/preferences/ChangePinPreferences$ChangePin;
.super Landroid/os/AsyncTask;
.source "ChangePinPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prey/preferences/ChangePinPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangePin"
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
.field private error:Ljava/lang/String;

.field progressDialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/prey/preferences/ChangePinPreferences;


# direct methods
.method private constructor <init>(Lcom/prey/preferences/ChangePinPreferences;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 71
    iput-object p1, p0, Lcom/prey/preferences/ChangePinPreferences$ChangePin;->this$0:Lcom/prey/preferences/ChangePinPreferences;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 73
    iput-object v0, p0, Lcom/prey/preferences/ChangePinPreferences$ChangePin;->error:Ljava/lang/String;

    .line 74
    iput-object v0, p0, Lcom/prey/preferences/ChangePinPreferences$ChangePin;->progressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method synthetic constructor <init>(Lcom/prey/preferences/ChangePinPreferences;Lcom/prey/preferences/ChangePinPreferences$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/prey/preferences/ChangePinPreferences;
    .param p2, "x1"    # Lcom/prey/preferences/ChangePinPreferences$1;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/prey/preferences/ChangePinPreferences$ChangePin;-><init>(Lcom/prey/preferences/ChangePinPreferences;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 71
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/prey/preferences/ChangePinPreferences$ChangePin;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 4
    .param p1, "array"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pin:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p1, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    .line 89
    :try_start_0
    iget-object v1, p0, Lcom/prey/preferences/ChangePinPreferences$ChangePin;->this$0:Lcom/prey/preferences/ChangePinPreferences;

    invoke-virtual {v1}, Lcom/prey/preferences/ChangePinPreferences;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/prey/PreyConfig;->setPinNumber(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/prey/preferences/ChangePinPreferences$ChangePin;->this$0:Lcom/prey/preferences/ChangePinPreferences;

    invoke-virtual {v1}, Lcom/prey/preferences/ChangePinPreferences;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/prey/PreyConfig;->setPinNumber(I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 71
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/prey/preferences/ChangePinPreferences$ChangePin;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .param p1, "unused"    # Ljava/lang/Void;

    .prologue
    const/4 v3, 0x1

    .line 98
    iget-object v1, p0, Lcom/prey/preferences/ChangePinPreferences$ChangePin;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 99
    iget-object v1, p0, Lcom/prey/preferences/ChangePinPreferences$ChangePin;->error:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 100
    iget-object v1, p0, Lcom/prey/preferences/ChangePinPreferences$ChangePin;->this$0:Lcom/prey/preferences/ChangePinPreferences;

    invoke-virtual {v1}, Lcom/prey/preferences/ChangePinPreferences;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prey/PreyConfig;->getPinNumber()I

    move-result v1

    if-ltz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/prey/preferences/ChangePinPreferences$ChangePin;->this$0:Lcom/prey/preferences/ChangePinPreferences;

    invoke-virtual {v1}, Lcom/prey/preferences/ChangePinPreferences;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09009b

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 106
    :goto_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/prey/preferences/ChangePinPreferences$ChangePin;->this$0:Lcom/prey/preferences/ChangePinPreferences;

    invoke-virtual {v1}, Lcom/prey/preferences/ChangePinPreferences;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/prey/activities/PreyConfigurationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/prey/PreyStatus;->getInstance()Lcom/prey/PreyStatus;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/prey/PreyStatus;->setPreyConfigurationActivityResume(Z)V

    .line 108
    iget-object v1, p0, Lcom/prey/preferences/ChangePinPreferences$ChangePin;->this$0:Lcom/prey/preferences/ChangePinPreferences;

    invoke-virtual {v1}, Lcom/prey/preferences/ChangePinPreferences;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 113
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/prey/preferences/ChangePinPreferences$ChangePin;->this$0:Lcom/prey/preferences/ChangePinPreferences;

    invoke-virtual {v1}, Lcom/prey/preferences/ChangePinPreferences;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09009a

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 104
    iget-object v1, p0, Lcom/prey/preferences/ChangePinPreferences$ChangePin;->this$0:Lcom/prey/preferences/ChangePinPreferences;

    invoke-virtual {v1}, Lcom/prey/preferences/ChangePinPreferences;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/prey/PreyConfig;->setSmsCommand(Z)V

    goto :goto_0

    .line 110
    :cond_1
    iget-object v1, p0, Lcom/prey/preferences/ChangePinPreferences$ChangePin;->this$0:Lcom/prey/preferences/ChangePinPreferences;

    invoke-virtual {v1}, Lcom/prey/preferences/ChangePinPreferences;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/prey/preferences/ChangePinPreferences$ChangePin;->error:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 111
    iget-object v1, p0, Lcom/prey/preferences/ChangePinPreferences$ChangePin;->this$0:Lcom/prey/preferences/ChangePinPreferences;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    # invokes: Lcom/prey/preferences/ChangePinPreferences;->showDialog(Landroid/os/Bundle;)V
    invoke-static {v1, v2}, Lcom/prey/preferences/ChangePinPreferences;->access$100(Lcom/prey/preferences/ChangePinPreferences;Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 78
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/prey/preferences/ChangePinPreferences$ChangePin;->this$0:Lcom/prey/preferences/ChangePinPreferences;

    invoke-virtual {v1}, Lcom/prey/preferences/ChangePinPreferences;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/prey/preferences/ChangePinPreferences$ChangePin;->progressDialog:Landroid/app/ProgressDialog;

    .line 79
    iget-object v0, p0, Lcom/prey/preferences/ChangePinPreferences$ChangePin;->progressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/prey/preferences/ChangePinPreferences$ChangePin;->this$0:Lcom/prey/preferences/ChangePinPreferences;

    invoke-virtual {v1}, Lcom/prey/preferences/ChangePinPreferences;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09009e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Lcom/prey/preferences/ChangePinPreferences$ChangePin;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 81
    iget-object v0, p0, Lcom/prey/preferences/ChangePinPreferences$ChangePin;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 82
    iget-object v0, p0, Lcom/prey/preferences/ChangePinPreferences$ChangePin;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 83
    return-void
.end method
