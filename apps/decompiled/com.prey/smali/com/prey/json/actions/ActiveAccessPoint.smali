.class public Lcom/prey/json/actions/ActiveAccessPoint;
.super Lcom/prey/json/JsonAction;
.source "ActiveAccessPoint.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/prey/json/JsonAction;-><init>()V

    return-void
.end method


# virtual methods
.method public report(Landroid/content/Context;Ljava/util/List;Lorg/json/JSONObject;)Ljava/util/List;
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
            "Ljava/util/List",
            "<",
            "Lcom/prey/actions/HttpDataService;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/prey/actions/observer/ActionResult;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/prey/json/JsonAction;->report(Landroid/content/Context;Ljava/util/List;Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    .line 25
    .local v0, "listResult":Ljava/util/List;, "Ljava/util/List<Lcom/prey/actions/HttpDataService;>;"
    return-object v0
.end method

.method public run(Landroid/content/Context;Ljava/util/List;Lorg/json/JSONObject;)Lcom/prey/actions/HttpDataService;
    .locals 6
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
    .line 30
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/prey/actions/observer/ActionResult;>;"
    new-instance v2, Lcom/prey/PreyPhone;

    invoke-direct {v2, p1}, Lcom/prey/PreyPhone;-><init>(Landroid/content/Context;)V

    .line 31
    .local v2, "phone":Lcom/prey/PreyPhone;
    invoke-virtual {v2}, Lcom/prey/PreyPhone;->getWifi()Lcom/prey/PreyPhone$Wifi;

    move-result-object v3

    .line 33
    .local v3, "wifiPhone":Lcom/prey/PreyPhone$Wifi;
    invoke-virtual {v3}, Lcom/prey/PreyPhone$Wifi;->isWifiEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 35
    new-instance v0, Lcom/prey/actions/HttpDataService;

    const-string v4, "active_access_point"

    invoke-direct {v0, v4}, Lcom/prey/actions/HttpDataService;-><init>(Ljava/lang/String;)V

    .line 36
    .local v0, "data":Lcom/prey/actions/HttpDataService;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/prey/actions/HttpDataService;->setList(Z)V

    .line 37
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 38
    .local v1, "parametersMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "ssid"

    invoke-virtual {v3}, Lcom/prey/PreyPhone$Wifi;->getSsid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v4, "security"

    invoke-virtual {v3}, Lcom/prey/PreyPhone$Wifi;->getSecurity()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v4, "mac_address"

    invoke-virtual {v3}, Lcom/prey/PreyPhone$Wifi;->getMacAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v4, "signal_strength"

    invoke-virtual {v3}, Lcom/prey/PreyPhone$Wifi;->getSignalStrength()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v4, "channel"

    invoke-virtual {v3}, Lcom/prey/PreyPhone$Wifi;->getChannel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-virtual {v0, v1}, Lcom/prey/actions/HttpDataService;->addDataListAll(Ljava/util/HashMap;)V

    .line 47
    .end local v0    # "data":Lcom/prey/actions/HttpDataService;
    .end local v1    # "parametersMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
