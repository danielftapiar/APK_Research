.class public Lcom/prey/json/actions/LocationLowBattery;
.super Lcom/prey/json/JsonAction;
.source "LocationLowBattery.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
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
    .line 21
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/prey/actions/observer/ActionResult;>;"
    const-string v1, "Ejecuting LocationLowBattery Data."

    invoke-static {v1}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 22
    invoke-super {p0, p1, p2, p3}, Lcom/prey/json/JsonAction;->get(Landroid/content/Context;Ljava/util/List;Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    .line 23
    .local v0, "listResult":Ljava/util/List;, "Ljava/util/List<Lcom/prey/actions/HttpDataService;>;"
    return-object v0
.end method

.method public run(Landroid/content/Context;Ljava/util/List;Lorg/json/JSONObject;)Lcom/prey/actions/HttpDataService;
    .locals 3
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
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/prey/actions/observer/ActionResult;>;"
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/prey/actions/location/LocationUtil;->dataLocation(Landroid/content/Context;Ljava/lang/String;Z)Lcom/prey/actions/HttpDataService;

    move-result-object v0

    .line 29
    .local v0, "data":Lcom/prey/actions/HttpDataService;
    const-string v1, "location_low_battery"

    invoke-virtual {v0, v1}, Lcom/prey/actions/HttpDataService;->setKey(Ljava/lang/String;)V

    .line 30
    return-object v0
.end method
