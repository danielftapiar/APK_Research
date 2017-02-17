.class public Lcom/prey/json/actions/Alert;
.super Lcom/prey/json/JsonAction;
.source "Alert.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/prey/json/JsonAction;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/content/Context;Ljava/util/List;Lorg/json/JSONObject;)Lcom/prey/actions/HttpDataService;
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p3, "parameters"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/prey/actions/observer/ActionResult;",
            ">;",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/prey/actions/HttpDataService;"
        }
    .end annotation

    .prologue
    .line 27
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/prey/actions/observer/ActionResult;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public sms(Landroid/content/Context;Ljava/util/List;Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p3, "parameters"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/prey/actions/observer/ActionResult;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/prey/actions/observer/ActionResult;>;"
    const/4 v0, 0x0

    .line 33
    .local v0, "alert":Ljava/lang/String;
    :try_start_0
    const-string v1, "parameter"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 36
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/prey/json/actions/Alert;->startAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void

    .line 34
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public start(Landroid/content/Context;Ljava/util/List;Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p3, "parameters"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/prey/actions/observer/ActionResult;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/prey/actions/observer/ActionResult;>;"
    const-string v0, ""

    .line 42
    .local v0, "alert":Ljava/lang/String;
    :try_start_0
    const-string v3, "alert_message"

    invoke-virtual {p3, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 49
    :goto_0
    const/4 v2, 0x0

    .line 51
    .local v2, "messageId":Ljava/lang/String;
    :try_start_1
    const-string v3, "messageID"

    invoke-virtual {p3, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "messageId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 55
    :goto_1
    invoke-virtual {p0, p1, v0, v2}, Lcom/prey/json/actions/Alert;->startAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void

    .line 43
    .end local v2    # "messageId":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 45
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "message"

    invoke-virtual {p3, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    goto :goto_0

    .line 53
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "messageId":Ljava/lang/String;
    :catch_1
    move-exception v3

    goto :goto_1

    .line 46
    .end local v2    # "messageId":Ljava/lang/String;
    .restart local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v3

    goto :goto_0
.end method

.method public startAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "alert"    # Ljava/lang/String;
    .param p3, "messageId"    # Ljava/lang/String;

    .prologue
    .line 60
    if-eqz p2, :cond_0

    :try_start_0
    const-string v1, ""

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 61
    new-instance v1, Lcom/prey/actions/alert/AlertThread;

    invoke-direct {v1, p1, p2, p3}, Lcom/prey/actions/alert/AlertThread;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/prey/actions/alert/AlertThread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error, causa:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/prey/PreyLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    invoke-static {}, Lcom/prey/net/PreyWebServices;->getInstance()Lcom/prey/net/PreyWebServices;

    move-result-object v1

    const-string v2, "start"

    const-string v3, "alert"

    const-string v4, "failed"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/prey/json/UtilJson;->makeMapParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/prey/net/PreyWebServices;->sendNotifyActionResultPreyHttp(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    goto :goto_0
.end method
