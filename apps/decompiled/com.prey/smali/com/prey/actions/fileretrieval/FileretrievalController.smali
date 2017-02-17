.class public Lcom/prey/actions/fileretrieval/FileretrievalController;
.super Ljava/lang/Object;
.source "FileretrievalController.java"


# static fields
.field private static instance:Lcom/prey/actions/fileretrieval/FileretrievalController;

.field private static mutex:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/prey/actions/fileretrieval/FileretrievalController;->instance:Lcom/prey/actions/fileretrieval/FileretrievalController;

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/prey/actions/fileretrieval/FileretrievalController;->mutex:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static getInstance()Lcom/prey/actions/fileretrieval/FileretrievalController;
    .locals 2

    .prologue
    .line 28
    sget-object v0, Lcom/prey/actions/fileretrieval/FileretrievalController;->instance:Lcom/prey/actions/fileretrieval/FileretrievalController;

    if-nez v0, :cond_1

    .line 29
    sget-object v1, Lcom/prey/actions/fileretrieval/FileretrievalController;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 30
    :try_start_0
    sget-object v0, Lcom/prey/actions/fileretrieval/FileretrievalController;->instance:Lcom/prey/actions/fileretrieval/FileretrievalController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/prey/actions/fileretrieval/FileretrievalController;

    invoke-direct {v0}, Lcom/prey/actions/fileretrieval/FileretrievalController;-><init>()V

    sput-object v0, Lcom/prey/actions/fileretrieval/FileretrievalController;->instance:Lcom/prey/actions/fileretrieval/FileretrievalController;

    .line 31
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :cond_1
    sget-object v0, Lcom/prey/actions/fileretrieval/FileretrievalController;->instance:Lcom/prey/actions/fileretrieval/FileretrievalController;

    return-object v0

    .line 31
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public deleteAll(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 91
    new-instance v0, Lcom/prey/actions/fileretrieval/FileretrievalDatasource;

    invoke-direct {v0, p1}, Lcom/prey/actions/fileretrieval/FileretrievalDatasource;-><init>(Landroid/content/Context;)V

    .line 92
    .local v0, "datasource":Lcom/prey/actions/fileretrieval/FileretrievalDatasource;
    invoke-virtual {v0}, Lcom/prey/actions/fileretrieval/FileretrievalDatasource;->deleteAllFileretrieval()V

    .line 93
    return-void
.end method

.method public run(Landroid/content/Context;)V
    .locals 20
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 37
    const-string v2, "______________ FileretrievalController run _____________________"

    invoke-static {v2}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 39
    const/4 v8, 0x0

    .line 41
    .local v8, "connect":Z
    const/4 v14, 0x0

    .line 43
    .local v14, "j":I
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prey/PreyConfig;->isConnectionExists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static/range {p1 .. p1}, Lcom/prey/managers/PreyWifiManager;->getInstance(Landroid/content/Context;)Lcom/prey/managers/PreyWifiManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prey/managers/PreyWifiManager;->isOnline()Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_1
    const/4 v8, 0x1

    .line 45
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "______________ FileretrievalController connect2+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " _____________________"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 46
    if-eqz v8, :cond_8

    .line 53
    :goto_1
    if-eqz v8, :cond_9

    .line 54
    new-instance v9, Lcom/prey/actions/fileretrieval/FileretrievalDatasource;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lcom/prey/actions/fileretrieval/FileretrievalDatasource;-><init>(Landroid/content/Context;)V

    .line 56
    .local v9, "datasource":Lcom/prey/actions/fileretrieval/FileretrievalDatasource;
    invoke-virtual {v9}, Lcom/prey/actions/fileretrieval/FileretrievalDatasource;->getAllFileretrieval()Ljava/util/List;

    move-result-object v15

    .line 57
    .local v15, "list":Ljava/util/List;, "Ljava/util/List<Lcom/prey/actions/fileretrieval/FileretrievalDto;>;"
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    if-eqz v15, :cond_9

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    if-ge v13, v2, :cond_9

    .line 58
    invoke-interface {v15, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/prey/actions/fileretrieval/FileretrievalDto;

    .line 59
    .local v10, "dto":Lcom/prey/actions/fileretrieval/FileretrievalDto;
    invoke-virtual {v10}, Lcom/prey/actions/fileretrieval/FileretrievalDto;->getFileId()Ljava/lang/String;

    move-result-object v5

    .line 60
    .local v5, "fileId":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Lcom/prey/actions/fileretrieval/FileretrievalDto;->getFileId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Lcom/prey/actions/fileretrieval/FileretrievalDto;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    .line 62
    :try_start_0
    invoke-static {}, Lcom/prey/net/PreyWebServices;->getInstance()Lcom/prey/net/PreyWebServices;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v5}, Lcom/prey/net/PreyWebServices;->uploadStatus(Landroid/content/Context;Ljava/lang/String;)Lcom/prey/actions/fileretrieval/FileretrievalDto;

    move-result-object v11

    .line 63
    .local v11, "dtoStatus":Lcom/prey/actions/fileretrieval/FileretrievalDto;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dtoStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Lcom/prey/actions/fileretrieval/FileretrievalDto;->getStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v11}, Lcom/prey/actions/fileretrieval/FileretrievalDto;->getStatus()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 65
    invoke-virtual {v9, v5}, Lcom/prey/actions/fileretrieval/FileretrievalDatasource;->deleteFileretrieval(Ljava/lang/String;)V

    .line 67
    :cond_2
    invoke-virtual {v11}, Lcom/prey/actions/fileretrieval/FileretrievalDto;->getStatus()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    invoke-virtual {v11}, Lcom/prey/actions/fileretrieval/FileretrievalDto;->getStatus()I

    move-result v2

    if-nez v2, :cond_5

    .line 68
    :cond_3
    invoke-virtual {v11}, Lcom/prey/actions/fileretrieval/FileretrievalDto;->getTotal()J

    move-result-wide v6

    .line 69
    .local v6, "total":J
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

    invoke-virtual {v10}, Lcom/prey/actions/fileretrieval/FileretrievalDto;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 70
    .local v4, "file":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "total:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Lcom/prey/actions/fileretrieval/FileretrievalDto;->getSize()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " length:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    .line 72
    invoke-static {}, Lcom/prey/net/PreyWebServices;->getInstance()Lcom/prey/net/PreyWebServices;

    move-result-object v2

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/prey/net/PreyWebServices;->uploadFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;J)I

    move-result v16

    .line 73
    .local v16, "responseCode":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "responseCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    .line 74
    const/16 v2, 0xc8

    move/from16 v0, v16

    if-eq v0, v2, :cond_4

    const/16 v2, 0xc9

    move/from16 v0, v16

    if-ne v0, v2, :cond_5

    .line 75
    :cond_4
    invoke-virtual {v9, v5}, Lcom/prey/actions/fileretrieval/FileretrievalDatasource;->deleteFileretrieval(Ljava/lang/String;)V

    .line 78
    .end local v4    # "file":Ljava/io/File;
    .end local v6    # "total":J
    .end local v16    # "responseCode":I
    :cond_5
    invoke-virtual {v11}, Lcom/prey/actions/fileretrieval/FileretrievalDto;->getStatus()I

    move-result v2

    const/16 v3, 0x194

    if-ne v2, v3, :cond_6

    .line 79
    invoke-virtual {v9, v5}, Lcom/prey/actions/fileretrieval/FileretrievalDatasource;->deleteFileretrieval(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .end local v11    # "dtoStatus":Lcom/prey/actions/fileretrieval/FileretrievalDto;
    :cond_6
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 43
    .end local v5    # "fileId":Ljava/lang/String;
    .end local v9    # "datasource":Lcom/prey/actions/fileretrieval/FileretrievalDatasource;
    .end local v10    # "dto":Lcom/prey/actions/fileretrieval/FileretrievalDto;
    .end local v13    # "i":I
    .end local v15    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/prey/actions/fileretrieval/FileretrievalDto;>;"
    :cond_7
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 49
    :cond_8
    const-wide/16 v2, 0x7d0

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 51
    :goto_4
    add-int/lit8 v14, v14, 0x1

    .line 52
    const/16 v2, 0xa

    if-lt v14, v2, :cond_0

    goto/16 :goto_1

    .line 81
    .restart local v5    # "fileId":Ljava/lang/String;
    .restart local v9    # "datasource":Lcom/prey/actions/fileretrieval/FileretrievalDatasource;
    .restart local v10    # "dto":Lcom/prey/actions/fileretrieval/FileretrievalDto;
    .restart local v13    # "i":I
    .restart local v15    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/prey/actions/fileretrieval/FileretrievalDto;>;"
    :catch_0
    move-exception v12

    .line 82
    .local v12, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FileretrievalController Error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    goto :goto_3

    .line 49
    .end local v5    # "fileId":Ljava/lang/String;
    .end local v9    # "datasource":Lcom/prey/actions/fileretrieval/FileretrievalDatasource;
    .end local v10    # "dto":Lcom/prey/actions/fileretrieval/FileretrievalDto;
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v13    # "i":I
    .end local v15    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/prey/actions/fileretrieval/FileretrievalDto;>;"
    :catch_1
    move-exception v2

    goto :goto_4

    .line 88
    :cond_9
    return-void
.end method
