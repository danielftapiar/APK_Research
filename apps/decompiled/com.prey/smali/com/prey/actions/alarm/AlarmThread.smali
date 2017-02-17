.class public Lcom/prey/actions/alarm/AlarmThread;
.super Ljava/lang/Thread;
.source "AlarmThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prey/actions/alarm/AlarmThread$Mp3OnCompletionListener;
    }
.end annotation


# instance fields
.field private ctx:Landroid/content/Context;

.field private messageId:Ljava/lang/String;

.field private sound:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "sound"    # Ljava/lang/String;
    .param p3, "messageId"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/prey/actions/alarm/AlarmThread;->ctx:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/prey/actions/alarm/AlarmThread;->sound:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/prey/actions/alarm/AlarmThread;->messageId:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 33
    const-string v10, "started alarm"

    invoke-static {v10}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 34
    const/4 v6, 0x0

    .line 35
    .local v6, "mp":Landroid/media/MediaPlayer;
    const/4 v9, 0x0

    .line 37
    .local v9, "start":Z
    :try_start_0
    invoke-static {}, Lcom/prey/PreyStatus;->getInstance()Lcom/prey/PreyStatus;

    move-result-object v10

    invoke-virtual {v10}, Lcom/prey/PreyStatus;->setAlarmStart()V

    .line 38
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/prey/actions/alarm/AlarmThread;->ctx:Landroid/content/Context;

    const-string v11, "audio"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 39
    .local v2, "audio":Landroid/media/AudioManager;
    const/4 v10, 0x3

    invoke-virtual {v2, v10}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v5

    .line 40
    .local v5, "max":I
    const/16 v8, 0x18

    .line 41
    .local v8, "setVolFlags":I
    const/4 v10, 0x3

    const/16 v11, 0x18

    invoke-virtual {v2, v10, v5, v11}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 43
    const-string v10, "alarm"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/prey/actions/alarm/AlarmThread;->sound:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 44
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/prey/actions/alarm/AlarmThread;->ctx:Landroid/content/Context;

    const/high16 v11, 0x7f080000

    invoke-static {v10, v11}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v6

    .line 52
    :goto_0
    invoke-virtual {v6}, Landroid/media/MediaPlayer;->start()V

    .line 53
    new-instance v7, Lcom/prey/actions/alarm/AlarmThread$Mp3OnCompletionListener;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/prey/actions/alarm/AlarmThread$Mp3OnCompletionListener;-><init>(Lcom/prey/actions/alarm/AlarmThread;)V

    .line 54
    .local v7, "mp3Listener":Lcom/prey/actions/alarm/AlarmThread$Mp3OnCompletionListener;
    invoke-virtual {v6, v7}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 55
    invoke-static {}, Lcom/prey/net/PreyWebServices;->getInstance()Lcom/prey/net/PreyWebServices;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/prey/actions/alarm/AlarmThread;->ctx:Landroid/content/Context;

    const-string v12, "processed"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/prey/actions/alarm/AlarmThread;->messageId:Ljava/lang/String;

    const-string v14, "start"

    const-string v15, "alarm"

    const-string v16, "started"

    const/16 v17, 0x0

    invoke-static/range {v14 .. v17}, Lcom/prey/json/UtilJson;->makeMapParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v14

    invoke-virtual {v10, v11, v12, v13, v14}, Lcom/prey/net/PreyWebServices;->sendNotifyActionResultPreyHttp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 56
    const/4 v9, 0x1

    .line 57
    const/4 v4, 0x0

    .line 58
    .local v4, "i":I
    :goto_1
    invoke-static {}, Lcom/prey/PreyStatus;->getInstance()Lcom/prey/PreyStatus;

    move-result-object v10

    invoke-virtual {v10}, Lcom/prey/PreyStatus;->isAlarmStart()Z

    move-result v10

    if-eqz v10, :cond_3

    const/16 v10, 0x28

    if-ge v4, v10, :cond_3

    .line 59
    const-wide/16 v10, 0x3e8

    invoke-static {v10, v11}, Lcom/prey/actions/alarm/AlarmThread;->sleep(J)V

    .line 60
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 45
    .end local v4    # "i":I
    .end local v7    # "mp3Listener":Lcom/prey/actions/alarm/AlarmThread$Mp3OnCompletionListener;
    :cond_0
    const-string v10, "ring"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/prey/actions/alarm/AlarmThread;->sound:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 46
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/prey/actions/alarm/AlarmThread;->ctx:Landroid/content/Context;

    const v11, 0x7f080004

    invoke-static {v10, v11}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v6

    goto :goto_0

    .line 47
    :cond_1
    const-string v10, "modem"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/prey/actions/alarm/AlarmThread;->sound:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 48
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/prey/actions/alarm/AlarmThread;->ctx:Landroid/content/Context;

    const v11, 0x7f080003

    invoke-static {v10, v11}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v6

    goto :goto_0

    .line 50
    :cond_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/prey/actions/alarm/AlarmThread;->ctx:Landroid/content/Context;

    const v11, 0x7f080005

    invoke-static {v10, v11}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v6

    goto :goto_0

    .line 62
    .restart local v4    # "i":I
    .restart local v7    # "mp3Listener":Lcom/prey/actions/alarm/AlarmThread$Mp3OnCompletionListener;
    :cond_3
    invoke-virtual {v6}, Landroid/media/MediaPlayer;->stop()V

    .line 63
    invoke-static {}, Lcom/prey/PreyStatus;->getInstance()Lcom/prey/PreyStatus;

    move-result-object v10

    invoke-virtual {v10}, Lcom/prey/PreyStatus;->setAlarmStop()V

    .line 64
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/prey/actions/alarm/AlarmThread;->ctx:Landroid/content/Context;

    invoke-static {v10}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v10

    const-string v11, "alarm_finished"

    invoke-virtual {v10, v11}, Lcom/prey/PreyConfig;->setLastEvent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    if-eqz v6, :cond_4

    .line 72
    invoke-virtual {v6}, Landroid/media/MediaPlayer;->release()V

    .line 74
    .end local v2    # "audio":Landroid/media/AudioManager;
    .end local v4    # "i":I
    .end local v5    # "max":I
    .end local v7    # "mp3Listener":Lcom/prey/actions/alarm/AlarmThread$Mp3OnCompletionListener;
    .end local v8    # "setVolFlags":I
    :cond_4
    :goto_2
    if-eqz v9, :cond_5

    .line 75
    invoke-static {}, Lcom/prey/net/PreyWebServices;->getInstance()Lcom/prey/net/PreyWebServices;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/prey/actions/alarm/AlarmThread;->ctx:Landroid/content/Context;

    const-string v12, "start"

    const-string v13, "alarm"

    const-string v14, "stopped"

    const/4 v15, 0x0

    invoke-static {v12, v13, v14, v15}, Lcom/prey/json/UtilJson;->makeMapParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/prey/net/PreyWebServices;->sendNotifyActionResultPreyHttp(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    .line 77
    :cond_5
    const-string v10, "stopped alarm"

    invoke-static {v10}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 78
    return-void

    .line 66
    :catch_0
    move-exception v3

    .line 67
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "failed alarm: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    .line 68
    invoke-static {}, Lcom/prey/net/PreyWebServices;->getInstance()Lcom/prey/net/PreyWebServices;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/prey/actions/alarm/AlarmThread;->ctx:Landroid/content/Context;

    const-string v12, "failed"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/prey/actions/alarm/AlarmThread;->messageId:Ljava/lang/String;

    const-string v14, "start"

    const-string v15, "alarm"

    const-string v16, "failed"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v14 .. v17}, Lcom/prey/json/UtilJson;->makeMapParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v14

    invoke-virtual {v10, v11, v12, v13, v14}, Lcom/prey/net/PreyWebServices;->sendNotifyActionResultPreyHttp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    if-eqz v6, :cond_4

    .line 72
    invoke-virtual {v6}, Landroid/media/MediaPlayer;->release()V

    goto :goto_2

    .line 71
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    if-eqz v6, :cond_6

    .line 72
    invoke-virtual {v6}, Landroid/media/MediaPlayer;->release()V

    :cond_6
    throw v10
.end method
