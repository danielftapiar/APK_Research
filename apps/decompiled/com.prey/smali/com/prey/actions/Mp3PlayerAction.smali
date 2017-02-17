.class public Lcom/prey/actions/Mp3PlayerAction;
.super Lcom/prey/actions/PreyAction;
.source "Mp3PlayerAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prey/actions/Mp3PlayerAction$Mp3OnCompletionListener;
    }
.end annotation


# static fields
.field public static final DATA_ID:Ljava/lang/String; = "alarm"


# instance fields
.field public final ID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/prey/actions/PreyAction;-><init>()V

    .line 22
    const-string v0, "alarm"

    iput-object v0, p0, Lcom/prey/actions/Mp3PlayerAction;->ID:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public execute(Lcom/prey/actions/observer/ActionJob;Landroid/content/Context;)V
    .locals 8
    .param p1, "actionJob"    # Lcom/prey/actions/observer/ActionJob;
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    .line 31
    const/4 v3, 0x0

    .line 33
    .local v3, "mp":Landroid/media/MediaPlayer;
    :try_start_0
    const-string v6, "audio"

    invoke-virtual {p2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 34
    .local v0, "audio":Landroid/media/AudioManager;
    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    .line 35
    .local v2, "max":I
    const/16 v5, 0x18

    .line 36
    .local v5, "setVolFlags":I
    const/4 v6, 0x3

    const/16 v7, 0x18

    invoke-virtual {v0, v6, v2, v7}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 38
    const v6, 0x7f080005

    invoke-static {p2, v6}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v3

    .line 40
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V

    .line 42
    new-instance v4, Lcom/prey/actions/Mp3PlayerAction$Mp3OnCompletionListener;

    invoke-direct {v4, p0}, Lcom/prey/actions/Mp3PlayerAction$Mp3OnCompletionListener;-><init>(Lcom/prey/actions/Mp3PlayerAction;)V

    .line 44
    .local v4, "mp3Listener":Lcom/prey/actions/Mp3PlayerAction$Mp3OnCompletionListener;
    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 46
    const-wide/16 v6, 0x7530

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    if-eqz v3, :cond_0

    .line 52
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->stop()V

    .line 54
    .end local v0    # "audio":Landroid/media/AudioManager;
    .end local v2    # "max":I
    .end local v4    # "mp3Listener":Lcom/prey/actions/Mp3PlayerAction$Mp3OnCompletionListener;
    .end local v5    # "setVolFlags":I
    :cond_0
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v1

    .line 49
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/prey/PreyLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    if-eqz v3, :cond_0

    .line 52
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->stop()V

    goto :goto_0

    .line 51
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v3, :cond_1

    .line 52
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->stop()V

    :cond_1
    throw v6
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x2

    return v0
.end method

.method public isSyncAction()Z
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public shouldNotify()Z
    .locals 1

    .prologue
    .line 63
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
