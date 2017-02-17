.class public Lcom/prey/util/ClassUtil;
.super Ljava/lang/Object;
.source "ClassUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static execute(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/List;)Ljava/util/List;
    .locals 10
    .param p0, "ctx"    # Landroid/content/Context;
    .param p2, "nameAction"    # Ljava/lang/String;
    .param p3, "methodAction"    # Ljava/lang/String;
    .param p4, "parametersAction"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/prey/actions/observer/ActionResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Ljava/util/List",
            "<",
            "Lcom/prey/actions/HttpDataService;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/prey/actions/HttpDataService;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, "lista":Ljava/util/List;, "Ljava/util/List<Lcom/prey/actions/observer/ActionResult;>;"
    .local p5, "listData":Ljava/util/List;, "Ljava/util/List<Lcom/prey/actions/HttpDataService;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "name:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 28
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "target:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 29
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "options:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 30
    invoke-static {p2}, Lcom/prey/util/StringUtil;->classFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 34
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "com.prey.json.actions."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 35
    .local v0, "actionClass":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 36
    .local v1, "actionObject":Ljava/lang/Object;
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Ljava/util/List;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-class v9, Lorg/json/JSONObject;

    aput-object v9, v7, v8

    invoke-virtual {v0, p3, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 37
    .local v5, "method":Ljava/lang/reflect/Method;
    const/4 v7, 0x3

    new-array v6, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    const/4 v7, 0x2

    aput-object p4, v6, v7

    .line 38
    .local v6, "params":[Ljava/lang/Object;
    invoke-virtual {v5, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 39
    .local v4, "listDataTmp":Ljava/util/List;, "Ljava/util/List<Lcom/prey/actions/HttpDataService;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_1

    .line 40
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prey/actions/HttpDataService;

    .line 41
    .local v2, "httpDataService":Lcom/prey/actions/HttpDataService;
    if-eqz v2, :cond_0

    .line 42
    invoke-interface {p5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 44
    .end local v0    # "actionClass":Ljava/lang/Class;
    .end local v1    # "actionObject":Ljava/lang/Object;
    .end local v2    # "httpDataService":Lcom/prey/actions/HttpDataService;
    .end local v3    # "i":I
    .end local v4    # "listDataTmp":Ljava/util/List;, "Ljava/util/List<Lcom/prey/actions/HttpDataService;>;"
    .end local v5    # "method":Ljava/lang/reflect/Method;
    .end local v6    # "params":[Ljava/lang/Object;
    :catch_0
    move-exception v7

    .line 47
    :cond_1
    return-object p5
.end method
