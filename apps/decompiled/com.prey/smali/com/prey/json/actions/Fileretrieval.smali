.class public Lcom/prey/json/actions/Fileretrieval;
.super Ljava/lang/Object;
.source "Fileretrieval.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public start(Landroid/content/Context;Ljava/util/List;Lorg/json/JSONObject;)V
    .locals 16
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
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/prey/actions/observer/ActionResult;>;"
    const/4 v13, 0x0

    .line 30
    .local v13, "responseCode":I
    const/4 v11, 0x0

    .line 32
    .local v11, "messageId":Ljava/lang/String;
    :try_start_0
    const-string v2, "messageID"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "messageId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 37
    :goto_0
    :try_start_1
    const-string v2, "Fileretrieval started"

    invoke-static {v2}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lcom/prey/net/PreyWebServices;->getInstance()Lcom/prey/net/PreyWebServices;

    move-result-object v2

    const-string v3, "processed"

    const-string v6, "start"

    const-string v7, "fileretrieval"

    const-string v14, "started"

    const/4 v15, 0x0

    invoke-static {v6, v7, v14, v15}, Lcom/prey/json/UtilJson;->makeMapParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3, v11, v6}, Lcom/prey/net/PreyWebServices;->sendNotifyActionResultPreyHttp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 39
    const-string v2, "path"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 40
    .local v12, "path":Ljava/lang/String;
    const-string v2, "file_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 41
    .local v5, "fileId":Ljava/lang/String;
    if-eqz v5, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "null"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 42
    :cond_0
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "file_id null"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 59
    .end local v5    # "fileId":Ljava/lang/String;
    .end local v12    # "path":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 60
    .local v9, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/prey/net/PreyWebServices;->getInstance()Lcom/prey/net/PreyWebServices;

    move-result-object v2

    const-string v3, "start"

    const-string v6, "fileretrieval"

    const-string v7, "failed"

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v6, v7, v14}, Lcom/prey/json/UtilJson;->makeMapParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v11, v3}, Lcom/prey/net/PreyWebServices;->sendNotifyActionResultPreyHttp(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fileretrieval failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 63
    .end local v9    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 44
    .restart local v5    # "fileId":Ljava/lang/String;
    .restart local v12    # "path":Ljava/lang/String;
    :cond_1
    :try_start_2
    new-instance v4, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    .local v4, "file":Ljava/io/File;
    new-instance v10, Lcom/prey/actions/fileretrieval/FileretrievalDto;

    invoke-direct {v10}, Lcom/prey/actions/fileretrieval/FileretrievalDto;-><init>()V

    .line 46
    .local v10, "fileDto":Lcom/prey/actions/fileretrieval/FileretrievalDto;
    invoke-virtual {v10, v5}, Lcom/prey/actions/fileretrieval/FileretrievalDto;->setFileId(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v10, v12}, Lcom/prey/actions/fileretrieval/FileretrievalDto;->setPath(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v10, v2, v3}, Lcom/prey/actions/fileretrieval/FileretrievalDto;->setSize(J)V

    .line 49
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Lcom/prey/actions/fileretrieval/FileretrievalDto;->setStatus(I)V

    .line 50
    new-instance v8, Lcom/prey/actions/fileretrieval/FileretrievalDatasource;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/prey/actions/fileretrieval/FileretrievalDatasource;-><init>(Landroid/content/Context;)V

    .line 51
    .local v8, "datasource":Lcom/prey/actions/fileretrieval/FileretrievalDatasource;
    invoke-virtual {v8, v10}, Lcom/prey/actions/fileretrieval/FileretrievalDatasource;->createGeofence(Lcom/prey/actions/fileretrieval/FileretrievalDto;)V

    .line 52
    invoke-static {}, Lcom/prey/net/PreyWebServices;->getInstance()Lcom/prey/net/PreyWebServices;

    move-result-object v2

    const-wide/16 v6, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/prey/net/PreyWebServices;->uploadFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;J)I

    move-result v13

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "responseCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    .line 54
    const/16 v2, 0xc8

    if-eq v13, v2, :cond_2

    const/16 v2, 0xc9

    if-ne v13, v2, :cond_3

    .line 55
    :cond_2
    invoke-virtual {v8, v5}, Lcom/prey/actions/fileretrieval/FileretrievalDatasource;->deleteFileretrieval(Ljava/lang/String;)V

    .line 57
    :cond_3
    invoke-static {}, Lcom/prey/net/PreyWebServices;->getInstance()Lcom/prey/net/PreyWebServices;

    move-result-object v2

    const-string v3, "start"

    const-string v6, "fileretrieval"

    const-string v7, "stopped"

    const/4 v14, 0x0

    invoke-static {v3, v6, v7, v14}, Lcom/prey/json/UtilJson;->makeMapParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lcom/prey/net/PreyWebServices;->sendNotifyActionResultPreyHttp(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    .line 58
    const-string v2, "Fileretrieval stopped"

    invoke-static {v2}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 34
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "fileId":Ljava/lang/String;
    .end local v8    # "datasource":Lcom/prey/actions/fileretrieval/FileretrievalDatasource;
    .end local v10    # "fileDto":Lcom/prey/actions/fileretrieval/FileretrievalDto;
    .end local v12    # "path":Ljava/lang/String;
    :catch_1
    move-exception v2

    goto/16 :goto_0
.end method
