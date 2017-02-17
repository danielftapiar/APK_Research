.class public Lcom/prey/preferences/RevokedPasswordPreferences;
.super Landroid/preference/EditTextPreference;
.source "RevokedPasswordPreferences.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prey/preferences/RevokedPasswordPreferences$RevokedPasswordPhraseTask;
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

    .line 38
    invoke-direct {p0, p1}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    .line 24
    iput-object v0, p0, Lcom/prey/preferences/RevokedPasswordPreferences;->ctx:Landroid/content/Context;

    .line 25
    iput-object v0, p0, Lcom/prey/preferences/RevokedPasswordPreferences;->error:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/prey/preferences/RevokedPasswordPreferences;->ctx:Landroid/content/Context;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    iput-object v0, p0, Lcom/prey/preferences/RevokedPasswordPreferences;->ctx:Landroid/content/Context;

    .line 25
    iput-object v0, p0, Lcom/prey/preferences/RevokedPasswordPreferences;->error:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/prey/preferences/RevokedPasswordPreferences;->ctx:Landroid/content/Context;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    iput-object v0, p0, Lcom/prey/preferences/RevokedPasswordPreferences;->ctx:Landroid/content/Context;

    .line 25
    iput-object v0, p0, Lcom/prey/preferences/RevokedPasswordPreferences;->error:Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/prey/preferences/RevokedPasswordPreferences;->ctx:Landroid/content/Context;

    .line 30
    return-void
.end method

.method static synthetic access$002(Lcom/prey/preferences/RevokedPasswordPreferences;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/prey/preferences/RevokedPasswordPreferences;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/prey/preferences/RevokedPasswordPreferences;->error:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 6
    .param p1, "positiveResult"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 45
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onDialogClosed(Z)V

    .line 46
    iget-object v1, p0, Lcom/prey/preferences/RevokedPasswordPreferences;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v0

    .line 47
    .local v0, "preyConfig":Lcom/prey/PreyConfig;
    if-eqz p1, :cond_1

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activation phrase changed to:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/prey/preferences/RevokedPasswordPreferences;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 49
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 50
    new-instance v1, Lcom/prey/preferences/RevokedPasswordPreferences$RevokedPasswordPhraseTask;

    iget-object v2, p0, Lcom/prey/preferences/RevokedPasswordPreferences;->ctx:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/prey/preferences/RevokedPasswordPreferences$RevokedPasswordPhraseTask;-><init>(Lcom/prey/preferences/RevokedPasswordPreferences;Landroid/content/Context;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/prey/preferences/RevokedPasswordPreferences;->getText()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/prey/preferences/RevokedPasswordPreferences$RevokedPasswordPhraseTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 56
    :goto_0
    return-void

    .line 52
    :cond_0
    new-instance v1, Lcom/prey/preferences/RevokedPasswordPreferences$RevokedPasswordPhraseTask;

    iget-object v2, p0, Lcom/prey/preferences/RevokedPasswordPreferences;->ctx:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/prey/preferences/RevokedPasswordPreferences$RevokedPasswordPhraseTask;-><init>(Lcom/prey/preferences/RevokedPasswordPreferences;Landroid/content/Context;)V

    new-array v2, v3, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/prey/preferences/RevokedPasswordPreferences;->getText()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/prey/preferences/RevokedPasswordPreferences$RevokedPasswordPhraseTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 54
    :cond_1
    const-string v1, ""

    invoke-virtual {v0, v5, v1}, Lcom/prey/PreyConfig;->setRevokedPassword(ZLjava/lang/String;)V

    goto :goto_0
.end method
