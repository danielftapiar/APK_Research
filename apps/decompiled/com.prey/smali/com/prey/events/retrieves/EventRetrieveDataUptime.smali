.class public Lcom/prey/events/retrieves/EventRetrieveDataUptime;
.super Ljava/lang/Object;
.source "EventRetrieveDataUptime.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Landroid/content/Context;Lcom/prey/events/manager/EventManager;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Lcom/prey/events/manager/EventManager;

    .prologue
    const/4 v4, 0x0

    .line 19
    new-instance v3, Lcom/prey/json/actions/Uptime;

    invoke-direct {v3}, Lcom/prey/json/actions/Uptime;-><init>()V

    invoke-virtual {v3, p1, v4, v4}, Lcom/prey/json/actions/Uptime;->run(Landroid/content/Context;Ljava/util/List;Lorg/json/JSONObject;)Lcom/prey/actions/HttpDataService;

    move-result-object v1

    .line 20
    .local v1, "uptimeHttpDataService":Lcom/prey/actions/HttpDataService;
    invoke-virtual {v1}, Lcom/prey/actions/HttpDataService;->getSingleData()Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, "uptimeData":Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 23
    .local v2, "uptimeJSon":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "uptime"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uptime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 27
    const-string v3, "uptime"

    invoke-virtual {p2, v3, v2}, Lcom/prey/events/manager/EventManager;->receivesData(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 28
    return-void

    .line 24
    :catch_0
    move-exception v3

    goto :goto_0
.end method
