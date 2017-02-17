.class public Lcom/prey/actions/RingtonePlayerAction;
.super Lcom/prey/actions/PreyAction;
.source "RingtonePlayerAction.java"


# static fields
.field public static final DATA_ID:Ljava/lang/String; = "ringtone"


# instance fields
.field public final ID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/prey/actions/PreyAction;-><init>()V

    .line 22
    const-string v0, "ringtone"

    iput-object v0, p0, Lcom/prey/actions/RingtonePlayerAction;->ID:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public execute(Lcom/prey/actions/observer/ActionJob;Landroid/content/Context;)V
    .locals 5
    .param p1, "actionJob"    # Lcom/prey/actions/observer/ActionJob;
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 31
    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 32
    .local v1, "settings":Landroid/content/SharedPreferences;
    const-string v4, "PREFS_RINGTONE"

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "ringtoneToPlay":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 34
    .local v2, "soundUri":Landroid/net/Uri;
    :goto_0
    if-nez v2, :cond_1

    const/4 v4, 0x1

    invoke-static {p2, v4}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v3

    .line 35
    .local v3, "toPlay":Landroid/net/Uri;
    :goto_1
    invoke-static {p2, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/Ringtone;->play()V

    .line 36
    return-void

    .line 33
    .end local v2    # "soundUri":Landroid/net/Uri;
    .end local v3    # "toPlay":Landroid/net/Uri;
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0

    .restart local v2    # "soundUri":Landroid/net/Uri;
    :cond_1
    move-object v3, v2

    .line 34
    goto :goto_1
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 49
    const/4 v0, -0x1

    return v0
.end method

.method public isSyncAction()Z
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public shouldNotify()Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public textToNotifyUserOnEachReport(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 26
    const-string v0, ""

    return-object v0
.end method
