.class public Lcom/prey/preferences/DetachDevicePreferences$DetachDevice;
.super Landroid/os/AsyncTask;
.source "DetachDevicePreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prey/preferences/DetachDevicePreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DetachDevice"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private error:Ljava/lang/String;

.field progressDialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/prey/preferences/DetachDevicePreferences;


# direct methods
.method public constructor <init>(Lcom/prey/preferences/DetachDevicePreferences;)V
    .locals 1
    .param p1, "this$0"    # Lcom/prey/preferences/DetachDevicePreferences;

    .prologue
    const/4 v0, 0x0

    .line 54
    iput-object p1, p0, Lcom/prey/preferences/DetachDevicePreferences$DetachDevice;->this$0:Lcom/prey/preferences/DetachDevicePreferences;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 56
    iput-object v0, p0, Lcom/prey/preferences/DetachDevicePreferences$DetachDevice;->error:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/prey/preferences/DetachDevicePreferences$DetachDevice;->progressDialog:Landroid/app/ProgressDialog;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/prey/preferences/DetachDevicePreferences$DetachDevice;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "unused"    # [Ljava/lang/Void;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/prey/preferences/DetachDevicePreferences$DetachDevice;->this$0:Lcom/prey/preferences/DetachDevicePreferences;

    invoke-virtual {v0}, Lcom/prey/preferences/DetachDevicePreferences;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/prey/json/actions/Detach;->detachDevice(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/prey/preferences/DetachDevicePreferences$DetachDevice;->error:Ljava/lang/String;

    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 54
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/prey/preferences/DetachDevicePreferences$DetachDevice;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .param p1, "unused"    # Ljava/lang/Void;

    .prologue
    .line 77
    :try_start_0
    iget-object v1, p0, Lcom/prey/preferences/DetachDevicePreferences$DetachDevice;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    iget-object v1, p0, Lcom/prey/preferences/DetachDevicePreferences$DetachDevice;->error:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/prey/preferences/DetachDevicePreferences$DetachDevice;->this$0:Lcom/prey/preferences/DetachDevicePreferences;

    invoke-virtual {v1}, Lcom/prey/preferences/DetachDevicePreferences;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/prey/preferences/DetachDevicePreferences$DetachDevice;->error:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 82
    iget-object v1, p0, Lcom/prey/preferences/DetachDevicePreferences$DetachDevice;->this$0:Lcom/prey/preferences/DetachDevicePreferences;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    # invokes: Lcom/prey/preferences/DetachDevicePreferences;->showDialog(Landroid/os/Bundle;)V
    invoke-static {v1, v2}, Lcom/prey/preferences/DetachDevicePreferences;->access$000(Lcom/prey/preferences/DetachDevicePreferences;Landroid/os/Bundle;)V

    .line 87
    :goto_1
    return-void

    .line 84
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/prey/preferences/DetachDevicePreferences$DetachDevice;->this$0:Lcom/prey/preferences/DetachDevicePreferences;

    invoke-virtual {v1}, Lcom/prey/preferences/DetachDevicePreferences;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/prey/activities/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    .local v0, "welcome":Landroid/content/Intent;
    iget-object v1, p0, Lcom/prey/preferences/DetachDevicePreferences$DetachDevice;->this$0:Lcom/prey/preferences/DetachDevicePreferences;

    invoke-virtual {v1}, Lcom/prey/preferences/DetachDevicePreferences;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 78
    .end local v0    # "welcome":Landroid/content/Intent;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 61
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/prey/preferences/DetachDevicePreferences$DetachDevice;->this$0:Lcom/prey/preferences/DetachDevicePreferences;

    invoke-virtual {v1}, Lcom/prey/preferences/DetachDevicePreferences;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/prey/preferences/DetachDevicePreferences$DetachDevice;->progressDialog:Landroid/app/ProgressDialog;

    .line 62
    iget-object v0, p0, Lcom/prey/preferences/DetachDevicePreferences$DetachDevice;->progressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/prey/preferences/DetachDevicePreferences$DetachDevice;->this$0:Lcom/prey/preferences/DetachDevicePreferences;

    invoke-virtual {v1}, Lcom/prey/preferences/DetachDevicePreferences;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0900bf

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, p0, Lcom/prey/preferences/DetachDevicePreferences$DetachDevice;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 64
    iget-object v0, p0, Lcom/prey/preferences/DetachDevicePreferences$DetachDevice;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 65
    iget-object v0, p0, Lcom/prey/preferences/DetachDevicePreferences$DetachDevice;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 66
    return-void
.end method
