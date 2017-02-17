.class public Lcom/prey/json/actions/Uptime;
.super Lcom/prey/json/JsonAction;
.source "Uptime.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/prey/json/JsonAction;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Landroid/content/Context;Ljava/util/List;Lorg/json/JSONObject;)Ljava/util/List;
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
    .line 22
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/prey/actions/observer/ActionResult;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/prey/json/JsonAction;->get(Landroid/content/Context;Ljava/util/List;Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    .line 23
    .local v0, "listResult":Ljava/util/List;, "Ljava/util/List<Lcom/prey/actions/HttpDataService;>;"
    return-object v0
.end method

.method public run(Landroid/content/Context;Ljava/util/List;Lorg/json/JSONObject;)Lcom/prey/actions/HttpDataService;
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
            ")",
            "Lcom/prey/actions/HttpDataService;"
        }
    .end annotation

    .prologue
    .line 27
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/prey/actions/observer/ActionResult;>;"
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 28
    .local v2, "uptime":J
    new-instance v0, Lcom/prey/actions/HttpDataService;

    const-string v4, "uptime"

    invoke-direct {v0, v4}, Lcom/prey/actions/HttpDataService;-><init>(Ljava/lang/String;)V

    .line 29
    .local v0, "data":Lcom/prey/actions/HttpDataService;
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 30
    .local v1, "uptimeData":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/prey/actions/HttpDataService;->setSingleData(Ljava/lang/String;)V

    .line 31
    return-object v0
.end method
