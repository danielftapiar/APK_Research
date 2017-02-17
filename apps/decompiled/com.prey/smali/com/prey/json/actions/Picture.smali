.class public Lcom/prey/json/actions/Picture;
.super Lcom/prey/json/JsonAction;
.source "Picture.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
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
    .line 32
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/prey/actions/observer/ActionResult;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/prey/json/JsonAction;->get(Landroid/content/Context;Ljava/util/List;Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    .line 33
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
    .line 26
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/prey/actions/observer/ActionResult;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/prey/json/JsonAction;->report(Landroid/content/Context;Ljava/util/List;Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    .line 27
    .local v0, "listResult":Ljava/util/List;, "Ljava/util/List<Lcom/prey/actions/HttpDataService;>;"
    return-object v0
.end method

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
    .line 38
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/prey/actions/observer/ActionResult;>;"
    invoke-static {p1}, Lcom/prey/actions/picture/PictureUtil;->getPicture(Landroid/content/Context;)Lcom/prey/actions/HttpDataService;

    move-result-object v0

    return-object v0
.end method

.method public sms(Landroid/content/Context;Ljava/util/List;Lorg/json/JSONObject;)Ljava/util/List;
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
    .line 47
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/prey/actions/observer/ActionResult;>;"
    new-instance v1, Lcom/prey/actions/picture/PictureThread;

    invoke-direct {v1, p1}, Lcom/prey/actions/picture/PictureThread;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/prey/actions/picture/PictureThread;->start()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v0, "listResult":Ljava/util/List;, "Ljava/util/List<Lcom/prey/actions/HttpDataService;>;"
    return-object v0
.end method

.method public start(Landroid/content/Context;Ljava/util/List;Lorg/json/JSONObject;)Lcom/prey/actions/HttpDataService;
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
    .line 42
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/prey/actions/observer/ActionResult;>;"
    invoke-static {p1}, Lcom/prey/actions/picture/PictureUtil;->getPicture(Landroid/content/Context;)Lcom/prey/actions/HttpDataService;

    move-result-object v0

    return-object v0
.end method
