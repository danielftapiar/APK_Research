.class public Lcom/prey/actions/report/ReportService;
.super Landroid/app/IntentService;
.source "ReportService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "reportService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 36
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 19
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 40
    const/4 v12, -0x1

    .line 42
    .local v12, "interval":I
    :try_start_0
    const-string v17, "_____________start ReportService"

    invoke-static/range {v17 .. v17}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    .line 45
    invoke-static/range {p0 .. p0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/prey/PreyConfig;->getIntervalReport()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 48
    invoke-virtual/range {p0 .. p0}, Lcom/prey/actions/report/ReportService;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/prey/PreyConfig;->getExcludeReport()Ljava/lang/String;

    move-result-object v9

    .line 50
    .local v9, "exclude":Ljava/lang/String;
    new-instance v14, Lorg/json/JSONArray;

    invoke-direct {v14}, Lorg/json/JSONArray;-><init>()V

    .line 53
    .local v14, "jsonArray":Lorg/json/JSONArray;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "start report:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    .line 54
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v7, "listData":Ljava/util/List;, "Ljava/util/List<Lcom/prey/actions/HttpDataService;>;"
    move-object/from16 v2, p0

    .line 57
    .local v2, "ctx":Landroid/content/Context;
    new-instance v14, Lorg/json/JSONArray;

    .end local v14    # "jsonArray":Lorg/json/JSONArray;
    invoke-direct {v14}, Lorg/json/JSONArray;-><init>()V

    .line 58
    .restart local v14    # "jsonArray":Lorg/json/JSONArray;
    const-string v17, "picture"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 59
    new-instance v17, Ljava/lang/String;

    const-string v18, "picture"

    invoke-direct/range {v17 .. v18}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 60
    :cond_0
    const-string v17, "location"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 61
    new-instance v17, Ljava/lang/String;

    const-string v18, "location"

    invoke-direct/range {v17 .. v18}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 62
    :cond_1
    const-string v17, "access_points_list"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 63
    new-instance v17, Ljava/lang/String;

    const-string v18, "access_points_list"

    invoke-direct/range {v17 .. v18}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 64
    :cond_2
    const-string v17, "active_access_point"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 65
    new-instance v17, Ljava/lang/String;

    const-string v18, "active_access_point"

    invoke-direct/range {v17 .. v18}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 68
    :cond_3
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v3, "lista":Ljava/util/List;, "Ljava/util/List<Lcom/prey/actions/observer/ActionResult;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v11, v0, :cond_5

    .line 70
    invoke-static {v2}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/prey/PreyConfig;->isMissing()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 71
    invoke-virtual {v14, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 72
    .local v4, "nameAction":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "nameAction:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 73
    const-string v5, "report"

    .line 74
    .local v5, "methodAction":Ljava/lang/String;
    const/4 v6, 0x0

    .line 75
    .local v6, "parametersAction":Lorg/json/JSONObject;
    invoke-static/range {v2 .. v7}, Lcom/prey/util/ClassUtil;->execute(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/List;)Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    .line 69
    .end local v4    # "nameAction":Ljava/lang/String;
    .end local v5    # "methodAction":Ljava/lang/String;
    .end local v6    # "parametersAction":Lorg/json/JSONObject;
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 78
    .end local v3    # "lista":Ljava/util/List;, "Ljava/util/List<Lcom/prey/actions/observer/ActionResult;>;"
    .end local v11    # "i":I
    :catch_0
    move-exception v17

    .line 81
    :cond_5
    const/4 v15, 0x0

    .line 82
    .local v15, "parms":I
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_1
    if-eqz v7, :cond_8

    :try_start_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v11, v0, :cond_8

    .line 83
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/prey/actions/HttpDataService;

    .line 84
    .local v10, "httpDataService":Lcom/prey/actions/HttpDataService;
    invoke-virtual {v10}, Lcom/prey/actions/HttpDataService;->getDataAsParameters()Ljava/util/HashMap;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->size()I

    move-result v17

    add-int v15, v15, v17

    .line 85
    invoke-virtual {v10}, Lcom/prey/actions/HttpDataService;->getEntityFiles()Ljava/util/List;

    move-result-object v17

    if-eqz v17, :cond_7

    .line 86
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_2
    invoke-virtual {v10}, Lcom/prey/actions/HttpDataService;->getEntityFiles()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v13, v0, :cond_7

    .line 87
    invoke-virtual {v10}, Lcom/prey/actions/HttpDataService;->getEntityFiles()Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/prey/net/http/EntityFile;

    .line 88
    .local v8, "entity":Lcom/prey/net/http/EntityFile;
    if-eqz v8, :cond_6

    invoke-virtual {v8}, Lcom/prey/net/http/EntityFile;->getLength()I

    move-result v17

    if-lez v17, :cond_6

    .line 89
    add-int/lit8 v15, v15, 0x1

    .line 86
    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 82
    .end local v8    # "entity":Lcom/prey/net/http/EntityFile;
    .end local v13    # "j":I
    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 95
    .end local v10    # "httpDataService":Lcom/prey/actions/HttpDataService;
    :cond_8
    invoke-static {v2}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/prey/PreyConfig;->isMissing()Z

    move-result v17

    if-eqz v17, :cond_9

    .line 96
    invoke-static {v2}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/prey/PreyConfig;->isConnectionExists()Z

    move-result v17

    if-eqz v17, :cond_9

    .line 97
    if-lez v15, :cond_9

    .line 98
    invoke-static {}, Lcom/prey/net/PreyWebServices;->getInstance()Lcom/prey/net/PreyWebServices;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v7}, Lcom/prey/net/PreyWebServices;->sendPreyHttpReport(Landroid/content/Context;Ljava/util/List;)Lcom/prey/net/PreyHttpResponse;

    move-result-object v16

    .line 99
    .local v16, "response":Lcom/prey/net/PreyHttpResponse;
    if-eqz v16, :cond_9

    .line 100
    invoke-static {v2}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v17

    const-string v18, "report_send"

    invoke-virtual/range {v17 .. v18}, Lcom/prey/PreyConfig;->setLastEvent(Ljava/lang/String;)V

    .line 101
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "response.getStatusCode():"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v16 .. v16}, Lcom/prey/net/PreyHttpResponse;->getStatusCode()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 102
    const/16 v17, 0x199

    invoke-virtual/range {v16 .. v16}, Lcom/prey/net/PreyHttpResponse;->getStatusCode()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 103
    invoke-static {v2}, Lcom/prey/actions/report/ReportScheduled;->getInstance(Landroid/content/Context;)Lcom/prey/actions/report/ReportScheduled;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/prey/actions/report/ReportScheduled;->reset()V

    .line 104
    invoke-static {v2}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/prey/PreyConfig;->setMissing(Z)V

    .line 105
    invoke-static {v2}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v17

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Lcom/prey/PreyConfig;->setIntervalReport(Ljava/lang/String;)V

    .line 106
    invoke-static {v2}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v17

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Lcom/prey/PreyConfig;->setExcludeReport(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 116
    .end local v2    # "ctx":Landroid/content/Context;
    .end local v7    # "listData":Ljava/util/List;, "Ljava/util/List<Lcom/prey/actions/HttpDataService;>;"
    .end local v9    # "exclude":Ljava/lang/String;
    .end local v11    # "i":I
    .end local v14    # "jsonArray":Lorg/json/JSONArray;
    .end local v15    # "parms":I
    .end local v16    # "response":Lcom/prey/net/PreyHttpResponse;
    :cond_9
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/prey/actions/report/ReportService;->stopSelf()V

    .line 118
    return-void

    .line 113
    :catch_1
    move-exception v17

    goto :goto_3
.end method
