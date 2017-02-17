.class public Lcom/prey/actions/wipe/WipeThread;
.super Ljava/lang/Thread;
.source "WipeThread.java"


# instance fields
.field private ctx:Landroid/content/Context;

.field private deleteSD:Z

.field private messageId:Ljava/lang/String;

.field private wipe:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZLjava/lang/String;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "wipe"    # Z
    .param p3, "deleteSD"    # Z
    .param p4, "messageId"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/prey/actions/wipe/WipeThread;->ctx:Landroid/content/Context;

    .line 26
    iput-boolean p3, p0, Lcom/prey/actions/wipe/WipeThread;->deleteSD:Z

    .line 27
    iput-boolean p2, p0, Lcom/prey/actions/wipe/WipeThread;->wipe:Z

    .line 28
    iput-object p4, p0, Lcom/prey/actions/wipe/WipeThread;->messageId:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 32
    iget-object v2, p0, Lcom/prey/actions/wipe/WipeThread;->ctx:Landroid/content/Context;

    invoke-static {v2}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v1

    .line 33
    .local v1, "preyConfig":Lcom/prey/PreyConfig;
    invoke-static {}, Lcom/prey/net/PreyWebServices;->getInstance()Lcom/prey/net/PreyWebServices;

    move-result-object v2

    iget-object v3, p0, Lcom/prey/actions/wipe/WipeThread;->ctx:Landroid/content/Context;

    const-string v4, "start"

    const-string v5, "wipe"

    const-string v6, "started"

    invoke-static {v4, v5, v6, v7}, Lcom/prey/json/UtilJson;->makeMapParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/prey/net/PreyWebServices;->sendNotifyActionResultPreyHttp(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    .line 35
    :try_start_0
    iget-boolean v2, p0, Lcom/prey/actions/wipe/WipeThread;->deleteSD:Z

    if-eqz v2, :cond_0

    .line 36
    invoke-static {}, Lcom/prey/actions/wipe/WipeUtil;->deleteSD()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 41
    :cond_0
    :goto_0
    :try_start_1
    iget-boolean v2, p0, Lcom/prey/actions/wipe/WipeThread;->wipe:Z

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/prey/PreyConfig;->isFroyoOrAbove()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 42
    const-string v2, "Wiping the device!!"

    invoke-static {v2}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 43
    iget-object v2, p0, Lcom/prey/actions/wipe/WipeThread;->ctx:Landroid/content/Context;

    invoke-static {v2}, Lcom/prey/backwardcompatibility/FroyoSupport;->getInstance(Landroid/content/Context;)Lcom/prey/backwardcompatibility/FroyoSupport;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prey/backwardcompatibility/FroyoSupport;->wipe()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 49
    :cond_1
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/prey/net/PreyWebServices;->getInstance()Lcom/prey/net/PreyWebServices;

    move-result-object v2

    iget-object v3, p0, Lcom/prey/actions/wipe/WipeThread;->ctx:Landroid/content/Context;

    const-string v4, "start"

    const-string v5, "wipe"

    const-string v6, "stopped"

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Lcom/prey/json/UtilJson;->makeMapParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/prey/net/PreyWebServices;->sendNotifyActionResultPreyHttp(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 54
    :goto_2
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error Wipe1:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/prey/PreyLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 50
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 51
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/prey/net/PreyWebServices;->getInstance()Lcom/prey/net/PreyWebServices;

    move-result-object v2

    iget-object v3, p0, Lcom/prey/actions/wipe/WipeThread;->ctx:Landroid/content/Context;

    const-string v4, "start"

    const-string v5, "wipe"

    const-string v6, "failed"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/prey/json/UtilJson;->makeMapParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/prey/net/PreyWebServices;->sendNotifyActionResultPreyHttp(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error Wipe2:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/prey/PreyLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 38
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    goto :goto_0
.end method
