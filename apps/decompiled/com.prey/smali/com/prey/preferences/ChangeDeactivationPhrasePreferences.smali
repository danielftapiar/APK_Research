.class public Lcom/prey/preferences/ChangeDeactivationPhrasePreferences;
.super Landroid/preference/EditTextPreference;
.source "ChangeDeactivationPhrasePreferences.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prey/preferences/ChangeDeactivationPhrasePreferences$ChangeDeactivationPhraseTask;
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

    .line 36
    invoke-direct {p0, p1}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    .line 22
    iput-object v0, p0, Lcom/prey/preferences/ChangeDeactivationPhrasePreferences;->ctx:Landroid/content/Context;

    .line 23
    iput-object v0, p0, Lcom/prey/preferences/ChangeDeactivationPhrasePreferences;->error:Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcom/prey/preferences/ChangeDeactivationPhrasePreferences;->ctx:Landroid/content/Context;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    iput-object v0, p0, Lcom/prey/preferences/ChangeDeactivationPhrasePreferences;->ctx:Landroid/content/Context;

    .line 23
    iput-object v0, p0, Lcom/prey/preferences/ChangeDeactivationPhrasePreferences;->error:Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/prey/preferences/ChangeDeactivationPhrasePreferences;->ctx:Landroid/content/Context;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    iput-object v0, p0, Lcom/prey/preferences/ChangeDeactivationPhrasePreferences;->ctx:Landroid/content/Context;

    .line 23
    iput-object v0, p0, Lcom/prey/preferences/ChangeDeactivationPhrasePreferences;->error:Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcom/prey/preferences/ChangeDeactivationPhrasePreferences;->ctx:Landroid/content/Context;

    .line 28
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

    .line 43
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onDialogClosed(Z)V

    .line 44
    if-eqz p1, :cond_0

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Deactivation phrase changed to:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/prey/preferences/ChangeDeactivationPhrasePreferences;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 47
    new-instance v0, Lcom/prey/preferences/ChangeDeactivationPhrasePreferences$ChangeDeactivationPhraseTask;

    invoke-direct {v0, p0, v3}, Lcom/prey/preferences/ChangeDeactivationPhrasePreferences$ChangeDeactivationPhraseTask;-><init>(Lcom/prey/preferences/ChangeDeactivationPhrasePreferences;Lcom/prey/preferences/ChangeDeactivationPhrasePreferences$1;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/prey/preferences/ChangeDeactivationPhrasePreferences;->getText()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/prey/preferences/ChangeDeactivationPhrasePreferences$ChangeDeactivationPhraseTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    new-instance v0, Lcom/prey/preferences/ChangeDeactivationPhrasePreferences$ChangeDeactivationPhraseTask;

    invoke-direct {v0, p0, v3}, Lcom/prey/preferences/ChangeDeactivationPhrasePreferences$ChangeDeactivationPhraseTask;-><init>(Lcom/prey/preferences/ChangeDeactivationPhrasePreferences;Lcom/prey/preferences/ChangeDeactivationPhrasePreferences$1;)V

    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/prey/preferences/ChangeDeactivationPhrasePreferences;->getText()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/prey/preferences/ChangeDeactivationPhrasePreferences$ChangeDeactivationPhraseTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
