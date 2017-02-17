.class Lcom/prey/preferences/ChangePasswordPreferences$ChangePassword;
.super Landroid/os/AsyncTask;
.source "ChangePasswordPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prey/preferences/ChangePasswordPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangePassword"
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

.field final synthetic this$0:Lcom/prey/preferences/ChangePasswordPreferences;


# direct methods
.method private constructor <init>(Lcom/prey/preferences/ChangePasswordPreferences;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 67
    iput-object p1, p0, Lcom/prey/preferences/ChangePasswordPreferences$ChangePassword;->this$0:Lcom/prey/preferences/ChangePasswordPreferences;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 69
    iput-object v0, p0, Lcom/prey/preferences/ChangePasswordPreferences$ChangePassword;->error:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcom/prey/preferences/ChangePasswordPreferences$ChangePassword;->progressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method synthetic constructor <init>(Lcom/prey/preferences/ChangePasswordPreferences;Lcom/prey/preferences/ChangePasswordPreferences$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/prey/preferences/ChangePasswordPreferences;
    .param p2, "x1"    # Lcom/prey/preferences/ChangePasswordPreferences$1;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/prey/preferences/ChangePasswordPreferences$ChangePassword;-><init>(Lcom/prey/preferences/ChangePasswordPreferences;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 67
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/prey/preferences/ChangePasswordPreferences$ChangePassword;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 1
    .param p1, "passwords"    # [Ljava/lang/String;

    .prologue
    .line 91
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 67
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/prey/preferences/ChangePasswordPreferences$ChangePassword;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .param p1, "unused"    # Ljava/lang/Void;

    .prologue
    const/4 v2, 0x1

    .line 96
    iget-object v0, p0, Lcom/prey/preferences/ChangePasswordPreferences$ChangePassword;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 97
    iget-object v0, p0, Lcom/prey/preferences/ChangePasswordPreferences$ChangePassword;->error:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/prey/preferences/ChangePasswordPreferences$ChangePassword;->this$0:Lcom/prey/preferences/ChangePasswordPreferences;

    invoke-virtual {v0}, Lcom/prey/preferences/ChangePasswordPreferences;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0900cf

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 103
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/prey/preferences/ChangePasswordPreferences$ChangePassword;->this$0:Lcom/prey/preferences/ChangePasswordPreferences;

    invoke-virtual {v0}, Lcom/prey/preferences/ChangePasswordPreferences;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/prey/preferences/ChangePasswordPreferences$ChangePassword;->error:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 101
    iget-object v0, p0, Lcom/prey/preferences/ChangePasswordPreferences$ChangePassword;->this$0:Lcom/prey/preferences/ChangePasswordPreferences;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    # invokes: Lcom/prey/preferences/ChangePasswordPreferences;->showDialog(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/prey/preferences/ChangePasswordPreferences;->access$100(Lcom/prey/preferences/ChangePasswordPreferences;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 74
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/prey/preferences/ChangePasswordPreferences$ChangePassword;->this$0:Lcom/prey/preferences/ChangePasswordPreferences;

    invoke-virtual {v1}, Lcom/prey/preferences/ChangePasswordPreferences;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/prey/preferences/ChangePasswordPreferences$ChangePassword;->progressDialog:Landroid/app/ProgressDialog;

    .line 75
    iget-object v0, p0, Lcom/prey/preferences/ChangePasswordPreferences$ChangePassword;->progressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/prey/preferences/ChangePasswordPreferences$ChangePassword;->this$0:Lcom/prey/preferences/ChangePasswordPreferences;

    invoke-virtual {v1}, Lcom/prey/preferences/ChangePasswordPreferences;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0900d0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v0, p0, Lcom/prey/preferences/ChangePasswordPreferences$ChangePassword;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 77
    iget-object v0, p0, Lcom/prey/preferences/ChangePasswordPreferences$ChangePassword;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 78
    iget-object v0, p0, Lcom/prey/preferences/ChangePasswordPreferences$ChangePassword;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 79
    return-void
.end method
