.class public Lcom/prey/preferences/ChangeActivationPhrasePreferences;
.super Landroid/preference/EditTextPreference;
.source "ChangeActivationPhrasePreferences.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prey/preferences/ChangeActivationPhrasePreferences$ChangeActivationPhraseTask;
    }
.end annotation


# instance fields
.field ctx:Landroid/content/Context;

.field private error:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    .line 23
    iput-object v0, p0, Lcom/prey/preferences/ChangeActivationPhrasePreferences;->ctx:Landroid/content/Context;

    .line 24
    iput-object v0, p0, Lcom/prey/preferences/ChangeActivationPhrasePreferences;->error:Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/prey/preferences/ChangeActivationPhrasePreferences;->ctx:Landroid/content/Context;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    iput-object v0, p0, Lcom/prey/preferences/ChangeActivationPhrasePreferences;->ctx:Landroid/content/Context;

    .line 24
    iput-object v0, p0, Lcom/prey/preferences/ChangeActivationPhrasePreferences;->error:Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lcom/prey/preferences/ChangeActivationPhrasePreferences;->ctx:Landroid/content/Context;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    iput-object v0, p0, Lcom/prey/preferences/ChangeActivationPhrasePreferences;->ctx:Landroid/content/Context;

    .line 24
    iput-object v0, p0, Lcom/prey/preferences/ChangeActivationPhrasePreferences;->error:Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/prey/preferences/ChangeActivationPhrasePreferences;->ctx:Landroid/content/Context;

    .line 29
    return-void
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 5
    .param p1, "positiveResult"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 44
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onDialogClosed(Z)V

    .line 45
    if-eqz p1, :cond_0

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Activation phrase changed to:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/prey/preferences/ChangeActivationPhrasePreferences;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 47
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 48
    new-instance v0, Lcom/prey/preferences/ChangeActivationPhrasePreferences$ChangeActivationPhraseTask;

    invoke-direct {v0, p0, v3}, Lcom/prey/preferences/ChangeActivationPhrasePreferences$ChangeActivationPhraseTask;-><init>(Lcom/prey/preferences/ChangeActivationPhrasePreferences;Lcom/prey/preferences/ChangeActivationPhrasePreferences$1;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/prey/preferences/ChangeActivationPhrasePreferences;->getText()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/prey/preferences/ChangeActivationPhrasePreferences$ChangeActivationPhraseTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    new-instance v0, Lcom/prey/preferences/ChangeActivationPhrasePreferences$ChangeActivationPhraseTask;

    invoke-direct {v0, p0, v3}, Lcom/prey/preferences/ChangeActivationPhrasePreferences$ChangeActivationPhraseTask;-><init>(Lcom/prey/preferences/ChangeActivationPhrasePreferences;Lcom/prey/preferences/ChangeActivationPhrasePreferences$1;)V

    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/prey/preferences/ChangeActivationPhrasePreferences;->getText()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/prey/preferences/ChangeActivationPhrasePreferences$ChangeActivationPhraseTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
