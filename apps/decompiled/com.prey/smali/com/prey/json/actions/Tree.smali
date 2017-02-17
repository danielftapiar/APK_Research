.class public Lcom/prey/json/actions/Tree;
.super Ljava/lang/Object;
.source "Tree.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getFilesRecursiveJSON(Ljava/lang/String;Ljava/io/File;I)Lorg/json/JSONArray;
    .locals 14
    .param p1, "pathBase"    # Ljava/lang/String;
    .param p2, "folder"    # Ljava/io/File;
    .param p3, "depth"    # I

    .prologue
    .line 60
    const/4 v10, 0x0

    .line 62
    .local v10, "sizze":I
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v11

    array-length v10, v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 64
    :goto_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 67
    .local v0, "array":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-eqz p2, :cond_3

    :try_start_1
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v11

    if-eqz v11, :cond_3

    if-ge v4, v10, :cond_3

    .line 68
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v11

    aget-object v1, v11, v4

    .line 69
    .local v1, "child":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, p1, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 70
    .local v8, "parent":Ljava/lang/String;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 71
    .local v5, "json":Lorg/json/JSONObject;
    const/4 v9, 0x0

    .line 73
    .local v9, "size":I
    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v11

    array-length v9, v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 75
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_1

    if-lez v9, :cond_1

    .line 76
    const-string v11, "name"

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    const-string v11, "path"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 79
    .local v6, "listChildren":Lorg/json/JSONArray;
    if-lez p3, :cond_0

    .line 80
    add-int/lit8 v11, p3, -0x1

    invoke-direct {p0, p1, v1, v11}, Lcom/prey/json/actions/Tree;->getFilesRecursiveJSON(Ljava/lang/String;Ljava/io/File;I)Lorg/json/JSONArray;

    move-result-object v6

    .line 81
    const-string v11, "children"

    invoke-virtual {v5, v11, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    :cond_0
    const-string v11, "isFile"

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 84
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 86
    .end local v6    # "listChildren":Lorg/json/JSONArray;
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 87
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 88
    .local v3, "extension":Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v7

    .line 89
    .local v7, "mime":Landroid/webkit/MimeTypeMap;
    const-string v11, "name"

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    const-string v11, "path"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    const-string v11, "mimetype"

    invoke-virtual {v7, v3}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    const-string v11, "size"

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v12

    invoke-virtual {v5, v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 93
    const-string v11, "isFile"

    const/4 v12, 0x1

    invoke-virtual {v5, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 94
    const-string v11, "hidden"

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 95
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 67
    .end local v3    # "extension":Ljava/lang/String;
    .end local v7    # "mime":Landroid/webkit/MimeTypeMap;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 98
    .end local v1    # "child":Ljava/io/File;
    .end local v5    # "json":Lorg/json/JSONObject;
    .end local v8    # "parent":Ljava/lang/String;
    .end local v9    # "size":I
    :catch_0
    move-exception v2

    .line 99
    .local v2, "e":Ljava/lang/Exception;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error getFilesRecursiveJSON:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v2}, Lcom/prey/PreyLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    return-object v0

    .line 74
    .restart local v1    # "child":Ljava/io/File;
    .restart local v5    # "json":Lorg/json/JSONObject;
    .restart local v8    # "parent":Ljava/lang/String;
    .restart local v9    # "size":I
    :catch_1
    move-exception v11

    goto/16 :goto_2

    .line 63
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v1    # "child":Ljava/io/File;
    .end local v4    # "i":I
    .end local v5    # "json":Lorg/json/JSONObject;
    .end local v8    # "parent":Ljava/lang/String;
    .end local v9    # "size":I
    :catch_2
    move-exception v11

    goto/16 :goto_0
.end method


# virtual methods
.method public get(Landroid/content/Context;Ljava/util/List;Lorg/json/JSONObject;)V
    .locals 14
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
    .line 28
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/prey/actions/observer/ActionResult;>;"
    const/4 v6, 0x0

    .line 30
    .local v6, "messageId":Ljava/lang/String;
    :try_start_0
    const-string v9, "messageID"

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v6

    .line 34
    :goto_0
    :try_start_1
    const-string v9, "Tree started"

    invoke-static {v9}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 35
    invoke-static {}, Lcom/prey/net/PreyWebServices;->getInstance()Lcom/prey/net/PreyWebServices;

    move-result-object v9

    const-string v10, "get"

    const-string v11, "tree"

    const-string v12, "started"

    const/4 v13, 0x0

    invoke-static {v10, v11, v12, v13}, Lcom/prey/json/UtilJson;->makeMapParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v10

    invoke-virtual {v9, p1, v6, v10}, Lcom/prey/net/PreyWebServices;->sendNotifyActionResultPreyHttp(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 36
    const/4 v2, 0x1

    .line 38
    .local v2, "depth":I
    :try_start_2
    const-string v9, "depth"

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    .line 41
    :goto_1
    :try_start_3
    const-string v9, "path"

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 42
    .local v7, "path":Ljava/lang/String;
    const-string v9, "sdcard"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 43
    const-string v7, "/"

    .line 45
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    .line 46
    .local v8, "pathBase":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    .local v3, "dir":Ljava/io/File;
    add-int/lit8 v9, v2, -0x1

    invoke-direct {p0, v8, v3, v9}, Lcom/prey/json/actions/Tree;->getFilesRecursiveJSON(Ljava/lang/String;Ljava/io/File;I)Lorg/json/JSONArray;

    move-result-object v1

    .line 48
    .local v1, "array":Lorg/json/JSONArray;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 49
    .local v5, "jsonTree":Lorg/json/JSONObject;
    const-string v9, "tree"

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    invoke-static {}, Lcom/prey/net/PreyWebServices;->getInstance()Lcom/prey/net/PreyWebServices;

    move-result-object v9

    invoke-virtual {v9, p1, v5}, Lcom/prey/net/PreyWebServices;->sendTree(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 51
    invoke-static {}, Lcom/prey/net/PreyWebServices;->getInstance()Lcom/prey/net/PreyWebServices;

    move-result-object v9

    const-string v10, "get"

    const-string v11, "tree"

    const-string v12, "stopped"

    const/4 v13, 0x0

    invoke-static {v10, v11, v12, v13}, Lcom/prey/json/UtilJson;->makeMapParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v10

    invoke-virtual {v9, p1, v10}, Lcom/prey/net/PreyWebServices;->sendNotifyActionResultPreyHttp(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    .line 52
    const-string v9, "Tree stopped"

    invoke-static {v9}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 57
    .end local v1    # "array":Lorg/json/JSONArray;
    .end local v2    # "depth":I
    .end local v3    # "dir":Ljava/io/File;
    .end local v5    # "jsonTree":Lorg/json/JSONObject;
    .end local v7    # "path":Ljava/lang/String;
    .end local v8    # "pathBase":Ljava/lang/String;
    :goto_2
    return-void

    .line 53
    :catch_0
    move-exception v4

    .line 54
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/prey/net/PreyWebServices;->getInstance()Lcom/prey/net/PreyWebServices;

    move-result-object v9

    const-string v10, "get"

    const-string v11, "tree"

    const-string v12, "failed"

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v11, v12, v13}, Lcom/prey/json/UtilJson;->makeMapParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v10

    invoke-virtual {v9, p1, v6, v10}, Lcom/prey/net/PreyWebServices;->sendNotifyActionResultPreyHttp(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 55
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Tree failed:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 39
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v2    # "depth":I
    :catch_1
    move-exception v9

    goto/16 :goto_1

    .line 31
    .end local v2    # "depth":I
    :catch_2
    move-exception v9

    goto/16 :goto_0
.end method
