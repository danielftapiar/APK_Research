.class public Lcom/prey/json/actions/Alarm;
.super Lcom/prey/json/JsonAction;
.source "Alarm.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
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
    .line 26
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/prey/actions/observer/ActionResult;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public sms(Landroid/content/Context;Ljava/util/List;Lorg/json/JSONObject;)V
    .locals 0
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
    .line 49
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/prey/actions/observer/ActionResult;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/prey/json/actions/Alarm;->start(Landroid/content/Context;Ljava/util/List;Lorg/json/JSONObject;)V

    .line 50
    return-void
.end method

.method public start(Landroid/content/Context;Ljava/util/List;Lorg/json/JSONObject;)V
    .locals 4
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
    .line 30
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/prey/actions/observer/ActionResult;>;"
    const/4 v1, 0x0

    .line 32
    .local v1, "sound":Ljava/lang/String;
    :try_start_0
    const-string v2, "sound"

    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 35
    :goto_0
    const/4 v0, 0x0

    .line 37
    .local v0, "messageId":Ljava/lang/String;
    :try_start_1
    const-string v2, "messageID"

    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "messageId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 41
    :goto_1
    new-instance v2, Lcom/prey/actions/alarm/AlarmThread;

    invoke-direct {v2, p1, v1, v0}, Lcom/prey/actions/alarm/AlarmThread;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/prey/actions/alarm/AlarmThread;->start()V

    .line 42
    return-void

    .line 39
    :catch_0
    move-exception v2

    goto :goto_1

    .line 33
    .end local v0    # "messageId":Ljava/lang/String;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public stop(Landroid/content/Context;Ljava/util/List;Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p3, "options"    # Lorg/json/JSONObject;
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
    .line 45
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/prey/actions/observer/ActionResult;>;"
    invoke-static {}, Lcom/prey/PreyStatus;->getInstance()Lcom/prey/PreyStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prey/PreyStatus;->setAlarmStop()V

    .line 46
    return-void
.end method
