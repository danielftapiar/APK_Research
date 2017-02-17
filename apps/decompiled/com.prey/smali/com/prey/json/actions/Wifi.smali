.class public Lcom/prey/json/actions/Wifi;
.super Lcom/prey/json/JsonAction;
.source "Wifi.java"


# static fields
.field public static SSID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "ssid"

    sput-object v0, Lcom/prey/json/actions/Wifi;->SSID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/prey/json/JsonAction;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/content/Context;Ljava/util/List;Lorg/json/JSONObject;)Lcom/prey/actions/HttpDataService;
    .locals 7
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
    .line 28
    .local p2, "lista":Ljava/util/List;, "Ljava/util/List<Lcom/prey/actions/observer/ActionResult;>;"
    new-instance v0, Lcom/prey/actions/HttpDataService;

    const-string v5, "wifi"

    invoke-direct {v0, v5}, Lcom/prey/actions/HttpDataService;-><init>(Ljava/lang/String;)V

    .line 30
    .local v0, "data":Lcom/prey/actions/HttpDataService;
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v0, v5}, Lcom/prey/actions/HttpDataService;->setList(Z)V

    .line 32
    new-instance v3, Lcom/prey/PreyPhone;

    invoke-direct {v3, p1}, Lcom/prey/PreyPhone;-><init>(Landroid/content/Context;)V

    .line 33
    .local v3, "phone":Lcom/prey/PreyPhone;
    invoke-virtual {v3}, Lcom/prey/PreyPhone;->getWifi()Lcom/prey/PreyPhone$Wifi;

    move-result-object v4

    .line 35
    .local v4, "wifiPhone":Lcom/prey/PreyPhone$Wifi;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 37
    .local v2, "parametersMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v5, Lcom/prey/json/actions/Wifi;->SSID:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/prey/PreyPhone$Wifi;->getSsid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v5, "mac_address"

    invoke-virtual {v4}, Lcom/prey/PreyPhone$Wifi;->getMacAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v5, "security"

    invoke-virtual {v4}, Lcom/prey/PreyPhone$Wifi;->getSecurity()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v5, "signal_strength"

    invoke-virtual {v4}, Lcom/prey/PreyPhone$Wifi;->getSignalStrength()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v5, "channel"

    invoke-virtual {v4}, Lcom/prey/PreyPhone$Wifi;->getChannel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v5, "interfaceType"

    invoke-virtual {v4}, Lcom/prey/PreyPhone$Wifi;->getInterfaceType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v5, "model"

    invoke-virtual {v4}, Lcom/prey/PreyPhone$Wifi;->getModel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v5, "vendor"

    invoke-virtual {v4}, Lcom/prey/PreyPhone$Wifi;->getVendor()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v5, "ipAddress"

    invoke-virtual {v4}, Lcom/prey/PreyPhone$Wifi;->getIpAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v5, "gatewayIp"

    invoke-virtual {v4}, Lcom/prey/PreyPhone$Wifi;->getGatewayIp()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v5, "netmask"

    invoke-virtual {v4}, Lcom/prey/PreyPhone$Wifi;->getNetmask()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-virtual {v0, v2}, Lcom/prey/actions/HttpDataService;->addDataListAll(Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .end local v2    # "parametersMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "phone":Lcom/prey/PreyPhone;
    .end local v4    # "wifiPhone":Lcom/prey/PreyPhone$Wifi;
    :goto_0
    return-object v0

    .line 52
    :catch_0
    move-exception v1

    .line 53
    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error causa:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/prey/PreyLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
