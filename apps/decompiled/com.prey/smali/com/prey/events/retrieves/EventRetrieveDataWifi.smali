.class public Lcom/prey/events/retrieves/EventRetrieveDataWifi;
.super Ljava/lang/Object;
.source "EventRetrieveDataWifi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Landroid/content/Context;Lcom/prey/events/manager/EventManager;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Lcom/prey/events/manager/EventManager;

    .prologue
    const/4 v7, 0x0

    .line 24
    new-instance v6, Lcom/prey/json/actions/Wifi;

    invoke-direct {v6}, Lcom/prey/json/actions/Wifi;-><init>()V

    invoke-virtual {v6, p1, v7, v7}, Lcom/prey/json/actions/Wifi;->run(Landroid/content/Context;Ljava/util/List;Lorg/json/JSONObject;)Lcom/prey/actions/HttpDataService;

    move-result-object v3

    .line 25
    .local v3, "wifiHttpDataService":Lcom/prey/actions/HttpDataService;
    invoke-virtual {v3}, Lcom/prey/actions/HttpDataService;->getDataList()Ljava/util/HashMap;

    move-result-object v5

    .line 26
    .local v5, "wifiMapData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 27
    .local v4, "wifiJSon":Lorg/json/JSONObject;
    const/4 v2, 0x0

    .line 30
    .local v2, "ssid":Ljava/lang/String;
    :try_start_0
    sget-object v6, Lcom/prey/json/actions/Wifi;->SSID:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 32
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 33
    .local v1, "accessElementJSon":Lorg/json/JSONObject;
    const-string v6, "ssid"

    invoke-virtual {v1, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34
    const-string v6, "mac_address"

    const-string v7, "mac_address"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    const-string v6, "signal_strength"

    const-string v7, "signal_strength"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    const-string v6, "channel"

    const-string v7, "channel"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    const-string v6, "security"

    const-string v7, "security"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    const-string v6, "ssid_changed"

    iget-object v7, p2, Lcom/prey/events/manager/EventManager;->event:Lcom/prey/events/Event;

    invoke-virtual {v7}, Lcom/prey/events/Event;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 40
    iget-object v6, p2, Lcom/prey/events/manager/EventManager;->event:Lcom/prey/events/Event;

    invoke-virtual {v6, v2}, Lcom/prey/events/Event;->setInfo(Ljava/lang/String;)V

    .line 50
    :cond_0
    const-string v6, "active_access_point"

    invoke-virtual {v4, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    invoke-static {p1}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/prey/PreyConfig;->setPreviousSsid(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .end local v1    # "accessElementJSon":Lorg/json/JSONObject;
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "wifi:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 57
    const-string v6, "wifi"

    invoke-virtual {p2, v6, v4}, Lcom/prey/events/manager/EventManager;->receivesData(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 66
    return-void

    .line 54
    :catch_0
    move-exception v6

    goto :goto_0
.end method
