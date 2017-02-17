.class Lcom/prey/preferences/ChangeActivationPhrasePreferences$ChangeActivationPhraseTask;
.super Landroid/os/AsyncTask;
.source "ChangeActivationPhrasePreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prey/preferences/ChangeActivationPhrasePreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeActivationPhraseTask"
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

.field final synthetic this$0:Lcom/prey/preferences/ChangeActivationPhrasePreferences;


# direct methods
.method private constructor <init>(Lcom/prey/preferences/ChangeActivationPhrasePreferences;)V
    .locals 1

    .prologue
    .line 56
    iput-object p1, p0, Lcom/prey/preferences/ChangeActivationPhrasePreferences$ChangeActivationPhraseTask;->this$0:Lcom/prey/preferences/ChangeActivationPhrasePreferences;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prey/preferences/ChangeActivationPhrasePreferences$ChangeActivationPhraseTask;->progressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method synthetic constructor <init>(Lcom/prey/preferences/ChangeActivationPhrasePreferences;Lcom/prey/preferences/ChangeActivationPhrasePreferences$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/prey/preferences/ChangeActivationPhrasePreferences;
    .param p2, "x1"    # Lcom/prey/preferences/ChangeActivationPhrasePreferences$1;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/prey/preferences/ChangeActivationPhrasePreferences$ChangeActivationPhraseTask;-><init>(Lcom/prey/preferences/ChangeActivationPhrasePreferences;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 56
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/prey/preferences/ChangeActivationPhrasePreferences$ChangeActivationPhraseTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 1
    .param p1, "data"    # [Ljava/lang/String;

    .prologue
    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 56
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/prey/preferences/ChangeActivationPhrasePreferences$ChangeActivationPhraseTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "unused"    # Ljava/lang/Void;

    .prologue
    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/prey/preferences/ChangeActivationPhrasePreferences$ChangeActivationPhraseTask;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 63
    :try_start_0
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/prey/preferences/ChangeActivationPhrasePreferences$ChangeActivationPhraseTask;->this$0:Lcom/prey/preferences/ChangeActivationPhrasePreferences;

    invoke-virtual {v1}, Lcom/prey/preferences/ChangeActivationPhrasePreferences;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/prey/preferences/ChangeActivationPhrasePreferences$ChangeActivationPhraseTask;->progressDialog:Landroid/app/ProgressDialog;

    .line 64
    iget-object v0, p0, Lcom/prey/preferences/ChangeActivationPhrasePreferences$ChangeActivationPhraseTask;->progressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/prey/preferences/ChangeActivationPhrasePreferences$ChangeActivationPhraseTask;->this$0:Lcom/prey/preferences/ChangeActivationPhrasePreferences;

    invoke-virtual {v1}, Lcom/prey/preferences/ChangeActivationPhrasePreferences;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0900fa

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v0, p0, Lcom/prey/preferences/ChangeActivationPhrasePreferences$ChangeActivationPhraseTask;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 66
    iget-object v0, p0, Lcom/prey/preferences/ChangeActivationPhrasePreferences$ChangeActivationPhraseTask;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 67
    iget-object v0, p0, Lcom/prey/preferences/ChangeActivationPhrasePreferences$ChangeActivationPhraseTask;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    goto :goto_0
.end method
