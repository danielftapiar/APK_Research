.class Lcom/prey/preferences/RevokedPasswordPreferences$RevokedPasswordPhraseTask;
.super Landroid/os/AsyncTask;
.source "RevokedPasswordPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prey/preferences/RevokedPasswordPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RevokedPasswordPhraseTask"
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
.field private context:Landroid/content/Context;

.field progressDialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/prey/preferences/RevokedPasswordPreferences;


# direct methods
.method public constructor <init>(Lcom/prey/preferences/RevokedPasswordPreferences;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 64
    iput-object p1, p0, Lcom/prey/preferences/RevokedPasswordPreferences$RevokedPasswordPhraseTask;->this$0:Lcom/prey/preferences/RevokedPasswordPreferences;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 61
    iput-object v0, p0, Lcom/prey/preferences/RevokedPasswordPreferences$RevokedPasswordPhraseTask;->progressDialog:Landroid/app/ProgressDialog;

    .line 62
    iput-object v0, p0, Lcom/prey/preferences/RevokedPasswordPreferences$RevokedPasswordPhraseTask;->context:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/prey/preferences/RevokedPasswordPreferences$RevokedPasswordPhraseTask;->context:Landroid/content/Context;

    .line 66
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 59
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/prey/preferences/RevokedPasswordPreferences$RevokedPasswordPhraseTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 4
    .param p1, "data"    # [Ljava/lang/String;

    .prologue
    .line 81
    :try_start_0
    iget-object v2, p0, Lcom/prey/preferences/RevokedPasswordPreferences$RevokedPasswordPhraseTask;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v1

    .line 82
    .local v1, "preyConfig":Lcom/prey/PreyConfig;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "password ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/prey/preferences/RevokedPasswordPreferences$RevokedPasswordPhraseTask;->this$0:Lcom/prey/preferences/RevokedPasswordPreferences;

    invoke-virtual {v3}, Lcom/prey/preferences/RevokedPasswordPreferences;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 83
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/prey/preferences/RevokedPasswordPreferences$RevokedPasswordPhraseTask;->this$0:Lcom/prey/preferences/RevokedPasswordPreferences;

    invoke-virtual {v3}, Lcom/prey/preferences/RevokedPasswordPreferences;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/prey/PreyConfig;->setRevokedPassword(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v1    # "preyConfig":Lcom/prey/PreyConfig;
    :goto_0
    const/4 v2, 0x0

    return-object v2

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/prey/preferences/RevokedPasswordPreferences$RevokedPasswordPhraseTask;->this$0:Lcom/prey/preferences/RevokedPasswordPreferences;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/prey/preferences/RevokedPasswordPreferences;->error:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/prey/preferences/RevokedPasswordPreferences;->access$002(Lcom/prey/preferences/RevokedPasswordPreferences;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 59
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/prey/preferences/RevokedPasswordPreferences$RevokedPasswordPhraseTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "unused"    # Ljava/lang/Void;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/prey/preferences/RevokedPasswordPreferences$RevokedPasswordPhraseTask;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 95
    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 71
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/prey/preferences/RevokedPasswordPreferences$RevokedPasswordPhraseTask;->this$0:Lcom/prey/preferences/RevokedPasswordPreferences;

    invoke-virtual {v1}, Lcom/prey/preferences/RevokedPasswordPreferences;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/prey/preferences/RevokedPasswordPreferences$RevokedPasswordPhraseTask;->progressDialog:Landroid/app/ProgressDialog;

    .line 72
    iget-object v0, p0, Lcom/prey/preferences/RevokedPasswordPreferences$RevokedPasswordPhraseTask;->progressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/prey/preferences/RevokedPasswordPreferences$RevokedPasswordPhraseTask;->this$0:Lcom/prey/preferences/RevokedPasswordPreferences;

    invoke-virtual {v1}, Lcom/prey/preferences/RevokedPasswordPreferences;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0900b5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p0, Lcom/prey/preferences/RevokedPasswordPreferences$RevokedPasswordPhraseTask;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 74
    iget-object v0, p0, Lcom/prey/preferences/RevokedPasswordPreferences$RevokedPasswordPhraseTask;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 75
    iget-object v0, p0, Lcom/prey/preferences/RevokedPasswordPreferences$RevokedPasswordPhraseTask;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 76
    return-void
.end method
