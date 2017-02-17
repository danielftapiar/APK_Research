.class public Lcom/prey/json/actions/PrivateIp;
.super Lcom/prey/json/JsonAction;
.source "PrivateIp.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/prey/json/JsonAction;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Landroid/content/Context;Ljava/util/List;Lorg/json/JSONObject;)Ljava/util/List;
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
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/prey/actions/HttpDataService;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/prey/actions/observer/ActionResult;>;"
    const-string v1, "Ejecuting PrivateIp Data."

    invoke-static {v1}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 31
    invoke-super {p0, p1, p2, p3}, Lcom/prey/json/JsonAction;->get(Landroid/content/Context;Ljava/util/List;Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    .line 32
    .local v0, "listResult":Ljava/util/List;, "Ljava/util/List<Lcom/prey/actions/HttpDataService;>;"
    return-object v0
.end method

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
    .line 25
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/prey/actions/observer/ActionResult;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/prey/json/JsonAction;->report(Landroid/content/Context;Ljava/util/List;Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    .line 26
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
    .line 36
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/prey/actions/observer/ActionResult;>;"
    new-instance v2, Lcom/prey/PreyPhone;

    invoke-direct {v2, p1}, Lcom/prey/PreyPhone;-><init>(Landroid/content/Context;)V

    .line 37
    .local v2, "phone":Lcom/prey/PreyPhone;
    new-instance v0, Lcom/prey/actions/HttpDataService;

    const-string v4, "private_ip"

    invoke-direct {v0, v4}, Lcom/prey/actions/HttpDataService;-><init>(Ljava/lang/String;)V

    .line 38
    .local v0, "data":Lcom/prey/actions/HttpDataService;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 40
    .local v1, "parametersMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v2}, Lcom/prey/PreyPhone;->getWifi()Lcom/prey/PreyPhone$Wifi;

    move-result-object v4

    invoke-virtual {v4}, Lcom/prey/PreyPhone$Wifi;->getIpAddress()Ljava/lang/String;

    move-result-object v3

    .line 41
    .local v3, "privateIp":Ljava/lang/String;
    invoke-virtual {v1, v3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "privateIp:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0, v3}, Lcom/prey/actions/HttpDataService;->setSingleData(Ljava/lang/String;)V

    .line 47
    return-object v0
.end method
