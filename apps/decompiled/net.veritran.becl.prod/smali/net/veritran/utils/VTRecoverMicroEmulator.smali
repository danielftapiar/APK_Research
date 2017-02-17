.class public Lnet/veritran/utils/VTRecoverMicroEmulator;
.super Ljava/lang/Object;
.source "VTRecoverMicroEmulator.java"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "vtuapp.db"

.field private static final PRODUCT_ID_PREF_NAME:Ljava/lang/String; = "net.veritran.vtuapp.android.product_id"

.field private static final REPOSITORY_VERSION:I = 0x1

.field public static final RMS_NAME_APPLICATION_MANAGER:I = 0x0

.field public static final RMS_NAME_ARRAY_MANAGER:I = 0x1

.field public static final RMS_NAME_BANNER_MANAGER:I = 0x2

.field public static final RMS_NAME_IMAGE_MANAGER:I = 0x3

.field public static final RMS_NAME_LOCALPASSW_MANAGER:I = 0x9

.field public static final RMS_NAME_STATE_MANAGER:I = 0x4

.field public static final RMS_NAME_TOKEN_MANAGER:I = 0x5

.field public static final RMS_NAME_VASCOTOKEN_MANAGER:I = 0x8

.field public static final RMS_NAME_VERSION_MANAGER:I = 0x7

.field public static final RMS_NAME_VTTOKEN_MANAGER:I = 0x6

.field private static final TAG:Ljava/lang/String; = "VTRecoverMicroEmulator"

.field private static final col1:Lnet/veritran/utils/VTDatabaseManagement$VTDatabaseColumn;

.field private static final col2:Lnet/veritran/utils/VTDatabaseManagement$VTDatabaseColumn;


# instance fields
.field private final PREFIX:Ljava/lang/String;

.field private error:Z

.field private errorMessage:Ljava/lang/String;

.field private mappingRows:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mappingTables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field recordStoreManager:Lorg/microemu/android/util/AndroidRecordStoreManager;

.field private recoveredData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final repositoryNames:[Ljava/lang/String;

.field private tablesToCreate:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Lnet/veritran/utils/VTDatabaseManagement$VTDatabaseColumn;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 28
    new-instance v0, Lnet/veritran/utils/VTDatabaseManagement$VTDatabaseColumn;

    const-string v1, "col1"

    sget-object v2, Lnet/veritran/utils/VTDatabaseManagement$VTDatabaseColumn$Type;->VT_DATABASE_TYPE_INTEGER:Lnet/veritran/utils/VTDatabaseManagement$VTDatabaseColumn$Type;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/veritran/utils/VTDatabaseManagement$VTDatabaseColumn;-><init>(Ljava/lang/String;Lnet/veritran/utils/VTDatabaseManagement$VTDatabaseColumn$Type;Z)V

    sput-object v0, Lnet/veritran/utils/VTRecoverMicroEmulator;->col1:Lnet/veritran/utils/VTDatabaseManagement$VTDatabaseColumn;

    .line 30
    new-instance v0, Lnet/veritran/utils/VTDatabaseManagement$VTDatabaseColumn;

    const-string v1, "col2"

    sget-object v2, Lnet/veritran/utils/VTDatabaseManagement$VTDatabaseColumn$Type;->VT_DATABASE_TYPE_TEXT:Lnet/veritran/utils/VTDatabaseManagement$VTDatabaseColumn$Type;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lnet/veritran/utils/VTDatabaseManagement$VTDatabaseColumn;-><init>(Ljava/lang/String;Lnet/veritran/utils/VTDatabaseManagement$VTDatabaseColumn$Type;Z)V

    sput-object v0, Lnet/veritran/utils/VTRecoverMicroEmulator;->col2:Lnet/veritran/utils/VTDatabaseManagement$VTDatabaseColumn;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 18
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 267
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v13, "HARD"

    move-object/from16 v0, p0

    iput-object v13, v0, Lnet/veritran/utils/VTRecoverMicroEmulator;->PREFIX:Ljava/lang/String;

    .line 49
    const/16 v13, 0xa

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "AAAA"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    const-string v15, "AAAB"

    aput-object v15, v13, v14

    const/4 v14, 0x2

    const-string v15, "AAAC"

    aput-object v15, v13, v14

    const/4 v14, 0x3

    const-string v15, "AAAD"

    aput-object v15, v13, v14

    const/4 v14, 0x4

    const-string v15, "AAAE"

    aput-object v15, v13, v14

    const/4 v14, 0x5

    const-string v15, "AAAF"

    aput-object v15, v13, v14

    const/4 v14, 0x6

    const-string v15, "AAAG"

    aput-object v15, v13, v14

    const/4 v14, 0x7

    const-string v15, "AAAH"

    aput-object v15, v13, v14

    const/16 v14, 0x8

    const-string v15, "AAAI"

    aput-object v15, v13, v14

    const/16 v14, 0x9

    const-string v15, "AAAJ"

    aput-object v15, v13, v14

    move-object/from16 v0, p0

    iput-object v13, v0, Lnet/veritran/utils/VTRecoverMicroEmulator;->repositoryNames:[Ljava/lang/String;

    .line 52
    new-instance v13, Landroid/util/SparseArray;

    invoke-direct {v13}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lnet/veritran/utils/VTRecoverMicroEmulator;->recoveredData:Landroid/util/SparseArray;

    .line 54
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lnet/veritran/utils/VTRecoverMicroEmulator;->tablesToCreate:Ljava/util/HashMap;

    .line 55
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lnet/veritran/utils/VTRecoverMicroEmulator;->mappingTables:Ljava/util/HashMap;

    .line 56
    new-instance v13, Landroid/util/SparseArray;

    invoke-direct {v13}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lnet/veritran/utils/VTRecoverMicroEmulator;->mappingRows:Landroid/util/SparseArray;

    .line 187
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lnet/veritran/utils/VTRecoverMicroEmulator;->error:Z

    .line 188
    const-string v13, ""

    move-object/from16 v0, p0

    iput-object v13, v0, Lnet/veritran/utils/VTRecoverMicroEmulator;->errorMessage:Ljava/lang/String;

    .line 269
    invoke-direct/range {p0 .. p0}, Lnet/veritran/utils/VTRecoverMicroEmulator;->initialize()V

    .line 271
    new-instance v13, Lorg/microemu/android/util/AndroidRecordStoreManager;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lorg/microemu/android/util/AndroidRecordStoreManager;-><init>(Landroid/app/Activity;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lnet/veritran/utils/VTRecoverMicroEmulator;->recordStoreManager:Lorg/microemu/android/util/AndroidRecordStoreManager;

    .line 274
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lnet/veritran/utils/VTRecoverMicroEmulator;->recoverData()V

    .line 276
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/veritran/utils/VTRecoverMicroEmulator;->recoveredData:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v13

    if-nez v13, :cond_0

    .line 277
    const-string v13, "VTRecoverMicroEmulator"

    const-string v14, "There was no previous Microemulator Repository."

    invoke-static {v13, v14}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    :goto_0
    return-void

    .line 281
    :cond_0
    new-instance v1, Lnet/veritran/utils/VTDatabaseManagement;

    const-string v13, "vtuapp.db"

    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-direct {v1, v0, v13, v14}, Lnet/veritran/utils/VTDatabaseManagement;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 284
    .local v1, "dbManagement":Lnet/veritran/utils/VTDatabaseManagement;
    const-string v13, "VTRecoverMicroEmulator"

    const-string v14, "Drop all tables"

    invoke-static {v13, v14}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    invoke-virtual {v1}, Lnet/veritran/utils/VTDatabaseManagement;->dropAllTables()V

    .line 289
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/veritran/utils/VTRecoverMicroEmulator;->tablesToCreate:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 290
    .local v9, "tableName":Ljava/lang/String;
    const-string v13, "VTRecoverMicroEmulator"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Create table "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/veritran/utils/VTRecoverMicroEmulator;->tablesToCreate:Ljava/util/HashMap;

    .line 292
    invoke-virtual {v13, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Vector;

    .line 291
    invoke-virtual {v1, v9, v13}, Lnet/veritran/utils/VTDatabaseManagement;->createTable(Ljava/lang/String;Ljava/util/Vector;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 341
    .end local v1    # "dbManagement":Lnet/veritran/utils/VTDatabaseManagement;
    .end local v9    # "tableName":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 342
    .local v3, "ex":Ljava/lang/Exception;
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lnet/veritran/utils/VTRecoverMicroEmulator;->error:Z

    .line 343
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lnet/veritran/utils/VTRecoverMicroEmulator;->errorMessage:Ljava/lang/String;

    goto :goto_0

    .line 296
    .end local v3    # "ex":Ljava/lang/Exception;
    .restart local v1    # "dbManagement":Lnet/veritran/utils/VTDatabaseManagement;
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/veritran/utils/VTRecoverMicroEmulator;->mappingTables:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 297
    .local v5, "managerCode":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/veritran/utils/VTRecoverMicroEmulator;->mappingTables:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 298
    .local v10, "tableRelated":Ljava/lang/String;
    const-string v13, "VTRecoverMicroEmulator"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Loading data: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 302
    .local v12, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Lnet/veritran/utils/VTDatabaseManagement$VTDatabaseColumn;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lnet/veritran/utils/VTRecoverMicroEmulator;->getRecoveredRepository(I)Ljava/util/HashMap;

    move-result-object v7

    .line 304
    .local v7, "repo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v7, :cond_3

    .line 305
    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 306
    .local v8, "rowKeyVal":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 308
    .local v4, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/veritran/utils/VTRecoverMicroEmulator;->mappingRows:Landroid/util/SparseArray;

    invoke-virtual {v13, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/HashMap;

    invoke-virtual {v13, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 309
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/veritran/utils/VTRecoverMicroEmulator;->mappingRows:Landroid/util/SparseArray;

    invoke-virtual {v13, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/HashMap;

    invoke-virtual {v13, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "key":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 312
    .restart local v4    # "key":Ljava/lang/String;
    :cond_2
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 314
    .local v11, "value":Ljava/lang/String;
    sget-object v13, Lnet/veritran/utils/VTRecoverMicroEmulator;->col1:Lnet/veritran/utils/VTDatabaseManagement$VTDatabaseColumn;

    invoke-virtual {v12, v13, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    sget-object v13, Lnet/veritran/utils/VTRecoverMicroEmulator;->col2:Lnet/veritran/utils/VTDatabaseManagement$VTDatabaseColumn;

    invoke-virtual {v12, v13, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    const-string v13, "VTRecoverMicroEmulator"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Adding Key: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", Value: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v13, v0}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    invoke-virtual {v1, v10, v12}, Lnet/veritran/utils/VTDatabaseManagement;->addRow(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_3

    .line 322
    .end local v4    # "key":Ljava/lang/String;
    .end local v8    # "rowKeyVal":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "value":Ljava/lang/String;
    :cond_3
    const-string v13, "VEM"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 323
    sget-object v13, Lnet/veritran/utils/VTRecoverMicroEmulator;->col1:Lnet/veritran/utils/VTDatabaseManagement$VTDatabaseColumn;

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v13, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    sget-object v13, Lnet/veritran/utils/VTRecoverMicroEmulator;->col2:Lnet/veritran/utils/VTDatabaseManagement$VTDatabaseColumn;

    const-string v15, "0"

    invoke-virtual {v12, v13, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    invoke-virtual {v1, v10, v12}, Lnet/veritran/utils/VTDatabaseManagement;->addRow(Ljava/lang/String;Ljava/util/Map;)V

    .line 329
    :cond_4
    const-string v13, "VTRecoverMicroEmulator"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Finish Loading data: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const-string v13, "VTRecoverMicroEmulator"

    const-string v15, "----------------------------"

    invoke-static {v13, v15}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 333
    .end local v5    # "managerCode":I
    .end local v7    # "repo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "tableRelated":Ljava/lang/String;
    .end local v12    # "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Lnet/veritran/utils/VTDatabaseManagement$VTDatabaseColumn;Ljava/lang/Object;>;"
    :cond_5
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 334
    .local v6, "preferences":Landroid/content/SharedPreferences;
    const-string v13, "net.veritran.vtuapp.android.product_id"

    const-string v14, ""

    invoke-interface {v6, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 335
    .local v2, "definedProductId":Ljava/lang/String;
    const-string v13, "VTRecoverMicroEmulator"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Defined Product:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const-string v13, "MB"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_6

    const-string v13, "B2"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 337
    :cond_6
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v13

    invoke-virtual {v13, v2}, Lnet/veritran/VTUserApplicationSmart;->setProduct(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 339
    :cond_7
    const-string v13, "VTRecoverMicroEmulator"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Undefined Product:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private initialize()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/16 v8, 0x8

    const/4 v7, 0x6

    const/4 v6, 0x0

    const/4 v5, 0x7

    .line 59
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->repositoryNames:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 60
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->mappingRows:Landroid/util/SparseArray;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :cond_0
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->tablesToCreate:Ljava/util/HashMap;

    const-string v2, "STM"

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->tablesToCreate:Ljava/util/HashMap;

    const-string v2, "IMM"

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->tablesToCreate:Ljava/util/HashMap;

    const-string v2, "VEM"

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->tablesToCreate:Ljava/util/HashMap;

    const-string v2, "APM"

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->tablesToCreate:Ljava/util/HashMap;

    const-string v2, "TOM"

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->tablesToCreate:Ljava/util/HashMap;

    const-string v2, "VTM"

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->tablesToCreate:Ljava/util/HashMap;

    const-string v2, "ARY"

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->tablesToCreate:Ljava/util/HashMap;

    const-string v2, "RMA"

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->tablesToCreate:Ljava/util/HashMap;

    const-string v2, "LPM"

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->tablesToCreate:Ljava/util/HashMap;

    const-string v2, "STM"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    new-instance v2, Lnet/veritran/utils/VTDatabaseManagement$VTDatabaseColumn;

    const-string v3, "col1"

    sget-object v4, Lnet/veritran/utils/VTDatabaseManagement$VTDatabaseColumn$Type;->VT_DATABASE_TYPE_INTEGER:Lnet/veritran/utils/VTDatabaseManagement$VTDatabaseColumn$Type;

    invoke-direct {v2, v3, v4, v9}, Lnet/veritran/utils/VTDatabaseManagement$VTDatabaseColumn;-><init>(Ljava/lang/String;Lnet/veritran/utils/VTDatabaseManagement$VTDatabaseColumn$Type;Z)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->tablesToCreate:Ljava/util/HashMap;

    const-string v2, "STM"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    new-instance v2, Lnet/veritran/utils/VTDatabaseManagement$VTDatabaseColumn;

    const-string v3, "col2"

    sget-object v4, Lnet/veritran/utils/VTDatabaseManagement$VTDatabaseColumn$Type;->VT_DATABASE_TYPE_INTEGER:Lnet/veritran/utils/VTDatabaseManagement$VTDatabaseColumn$Type;

    invoke-direct {v2, v3, v4, v9}, Lnet/veritran/utils/VTDatabaseManagement$VTDatabaseColumn;-><init>(Ljava/lang/String;Lnet/veritran/utils/VTDatabaseManagement$VTDatabaseColumn$Type;Z)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->tablesToCreate:Ljava/util/HashMap;

    const-string v2, "STM"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    new-instance v2, Lnet/veritran/utils/VTDatabaseManagement$VTDatabaseColumn;

    const-string v3, "col3"

    sget-object v4, Lnet/veritran/utils/VTDatabaseManagement$VTDatabaseColumn$Type;->VT_DATABASE_TYPE_TEXT:Lnet/veritran/utils/VTDatabaseManagement$VTDatabaseColumn$Type;

    invoke-direct {v2, v3, v4, v6}, Lnet/veritran/utils/VTDatabaseManagement$VTDatabaseColumn;-><init>(Ljava/lang/String;Lnet/veritran/utils/VTDatabaseManagement$VTDatabaseColumn$Type;Z)V

    .line 89
    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->tablesToCreate:Ljava/util/HashMap;

    const-string v2, "IMM"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    new-instance v2, Lnet/veritran/utils/VTDatabaseManagement$VTDatabaseColumn;

    const-string v3, "col1"

    sget-object v4, Lnet/veritran/utils/VTDatabaseManagement$VTDatabaseColumn$Type;->VT_DATABASE_TYPE_INTEGER:Lnet/veritran/utils/VTDatabaseManagement$VTDatabaseColumn$Type;

    invoke-direct {v2, v3, v4, v9}, Lnet/veritran/utils/VTDatabaseManagement$VTDatabaseColumn;-><init>(Ljava/lang/String;Lnet/veritran/utils/VTDatabaseManagement$VTDatabaseColumn$Type;Z)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->tablesToCreate:Ljava/util/HashMap;

    const-string v2, "IMM"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    new-instance v2, Lnet/veritran/utils/VTDatabaseManagement$VTDatabaseColumn;

    const-string v3, "col2"

    sget-object v4, Lnet/veritran/utils/VTDatabaseManagement$VTDatabaseColumn$Type;->VT_DATABASE_TYPE_BLOB:Lnet/veritran/utils/VTDatabaseManagement$VTDatabaseColumn$Type;

    invoke-direct {v2, v3, v4, v6}, Lnet/veritran/utils/VTDatabaseManagement$VTDatabaseColumn;-><init>(Ljava/lang/String;Lnet/veritran/utils/VTDatabaseManagement$VTDatabaseColumn$Type;Z)V

    .line 96
    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->tablesToCreate:Ljava/util/HashMap;

    const-string v2, "VEM"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    sget-object v2, Lnet/veritran/utils/VTRecoverMicroEmulator;->col1:Lnet/veritran/utils/VTDatabaseManagement$VTDatabaseColumn;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->tablesToCreate:Ljava/util/HashMap;

    const-string v2, "VEM"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    sget-object v2, Lnet/veritran/utils/VTRecoverMicroEmulator;->col2:Lnet/veritran/utils/VTDatabaseManagement$VTDatabaseColumn;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->tablesToCreate:Ljava/util/HashMap;

    const-string v2, "APM"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    sget-object v2, Lnet/veritran/utils/VTRecoverMicroEmulator;->col1:Lnet/veritran/utils/VTDatabaseManagement$VTDatabaseColumn;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->tablesToCreate:Ljava/util/HashMap;

    const-string v2, "APM"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    sget-object v2, Lnet/veritran/utils/VTRecoverMicroEmulator;->col2:Lnet/veritran/utils/VTDatabaseManagement$VTDatabaseColumn;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->tablesToCreate:Ljava/util/HashMap;

    const-string v2, "TOM"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    sget-object v2, Lnet/veritran/utils/VTRecoverMicroEmulator;->col1:Lnet/veritran/utils/VTDatabaseManagement$VTDatabaseColumn;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->tablesToCreate:Ljava/util/HashMap;

    const-string v2, "TOM"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    sget-object v2, Lnet/veritran/utils/VTRecoverMicroEmulator;->col2:Lnet/veritran/utils/VTDatabaseManagement$VTDatabaseColumn;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->tablesToCreate:Ljava/util/HashMap;

    const-string v2, "VTM"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    sget-object v2, Lnet/veritran/utils/VTRecoverMicroEmulator;->col1:Lnet/veritran/utils/VTDatabaseManagement$VTDatabaseColumn;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->tablesToCreate:Ljava/util/HashMap;

    const-string v2, "VTM"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    sget-object v2, Lnet/veritran/utils/VTRecoverMicroEmulator;->col2:Lnet/veritran/utils/VTDatabaseManagement$VTDatabaseColumn;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->tablesToCreate:Ljava/util/HashMap;

    const-string v2, "ARY"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    sget-object v2, Lnet/veritran/utils/VTRecoverMicroEmulator;->col1:Lnet/veritran/utils/VTDatabaseManagement$VTDatabaseColumn;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->tablesToCreate:Ljava/util/HashMap;

    const-string v2, "ARY"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    sget-object v2, Lnet/veritran/utils/VTRecoverMicroEmulator;->col2:Lnet/veritran/utils/VTDatabaseManagement$VTDatabaseColumn;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->tablesToCreate:Ljava/util/HashMap;

    const-string v2, "RMA"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    sget-object v2, Lnet/veritran/utils/VTRecoverMicroEmulator;->col1:Lnet/veritran/utils/VTDatabaseManagement$VTDatabaseColumn;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->tablesToCreate:Ljava/util/HashMap;

    const-string v2, "RMA"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    sget-object v2, Lnet/veritran/utils/VTRecoverMicroEmulator;->col2:Lnet/veritran/utils/VTDatabaseManagement$VTDatabaseColumn;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->tablesToCreate:Ljava/util/HashMap;

    const-string v2, "LPM"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    sget-object v2, Lnet/veritran/utils/VTRecoverMicroEmulator;->col1:Lnet/veritran/utils/VTDatabaseManagement$VTDatabaseColumn;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->tablesToCreate:Ljava/util/HashMap;

    const-string v2, "LPM"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    sget-object v2, Lnet/veritran/utils/VTRecoverMicroEmulator;->col2:Lnet/veritran/utils/VTDatabaseManagement$VTDatabaseColumn;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->mappingTables:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "VEM"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->mappingRows:Landroid/util/SparseArray;

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "b"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->mappingRows:Landroid/util/SparseArray;

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "c"

    const-string v3, "2"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->mappingRows:Landroid/util/SparseArray;

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "d"

    const-string v3, "3"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->mappingRows:Landroid/util/SparseArray;

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "e"

    const-string v3, "4"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->mappingRows:Landroid/util/SparseArray;

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "f"

    const-string v3, "5"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->mappingRows:Landroid/util/SparseArray;

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "g"

    const-string v3, "6"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->mappingRows:Landroid/util/SparseArray;

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "h"

    const-string v3, "7"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->mappingRows:Landroid/util/SparseArray;

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "i"

    const-string v3, "8"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->mappingRows:Landroid/util/SparseArray;

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "m"

    const-string v3, "9"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->mappingRows:Landroid/util/SparseArray;

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "n"

    const-string v3, "10"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->mappingRows:Landroid/util/SparseArray;

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "o"

    const-string v3, "11"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->mappingRows:Landroid/util/SparseArray;

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "p"

    const-string v3, "12"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->mappingRows:Landroid/util/SparseArray;

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "q"

    const-string v3, "13"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->mappingRows:Landroid/util/SparseArray;

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "r"

    const-string v3, "14"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->mappingRows:Landroid/util/SparseArray;

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "s"

    const-string v3, "15"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->mappingRows:Landroid/util/SparseArray;

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "t"

    const-string v3, "16"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->mappingTables:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "APM"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->mappingRows:Landroid/util/SparseArray;

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "j"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->mappingRows:Landroid/util/SparseArray;

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "k"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->mappingRows:Landroid/util/SparseArray;

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "l"

    const-string v3, "2"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->mappingRows:Landroid/util/SparseArray;

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "w"

    const-string v3, "3"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->mappingRows:Landroid/util/SparseArray;

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "y"

    const-string v3, "4"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->mappingRows:Landroid/util/SparseArray;

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "z"

    const-string v3, "5"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->mappingRows:Landroid/util/SparseArray;

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "1"

    const-string v3, "6"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->mappingRows:Landroid/util/SparseArray;

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "a"

    const-string v3, "7"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->mappingRows:Landroid/util/SparseArray;

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "b"

    const-string v3, "8"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->mappingTables:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "TOM"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->mappingRows:Landroid/util/SparseArray;

    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "a"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->mappingRows:Landroid/util/SparseArray;

    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "b"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->mappingRows:Landroid/util/SparseArray;

    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "c"

    const-string v3, "2"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->mappingRows:Landroid/util/SparseArray;

    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "d"

    const-string v3, "3"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->mappingRows:Landroid/util/SparseArray;

    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "e"

    const-string v3, "4"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->mappingRows:Landroid/util/SparseArray;

    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "f"

    const-string v3, "5"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->mappingRows:Landroid/util/SparseArray;

    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "g"

    const-string v3, "6"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->mappingRows:Landroid/util/SparseArray;

    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "h"

    const-string v3, "7"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->mappingRows:Landroid/util/SparseArray;

    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "i"

    const-string v3, "8"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->mappingTables:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "VTM"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->mappingRows:Landroid/util/SparseArray;

    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "a"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->mappingRows:Landroid/util/SparseArray;

    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "b"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->mappingRows:Landroid/util/SparseArray;

    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "c"

    const-string v3, "2"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->mappingRows:Landroid/util/SparseArray;

    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "d"

    const-string v3, "3"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->mappingRows:Landroid/util/SparseArray;

    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "e"

    const-string v3, "4"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->mappingRows:Landroid/util/SparseArray;

    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "f"

    const-string v3, "5"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->mappingRows:Landroid/util/SparseArray;

    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "g"

    const-string v3, "6"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->mappingRows:Landroid/util/SparseArray;

    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "h"

    const-string v3, "7"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->mappingRows:Landroid/util/SparseArray;

    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "i"

    const-string v3, "8"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->mappingTables:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "ARY"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->mappingTables:Ljava/util/HashMap;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "RMA"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->mappingTables:Ljava/util/HashMap;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "LPM"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->mappingRows:Landroid/util/SparseArray;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "2"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object v1, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->mappingRows:Landroid/util/SparseArray;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "3"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    return-void
.end method

.method private recoverData()V
    .locals 18

    .prologue
    .line 194
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/veritran/utils/VTRecoverMicroEmulator;->recordStoreManager:Lorg/microemu/android/util/AndroidRecordStoreManager;

    invoke-virtual {v14}, Lorg/microemu/android/util/AndroidRecordStoreManager;->listRecordStores()[Ljava/lang/String;

    move-result-object v9

    .line 196
    .local v9, "recordStores":[Ljava/lang/String;
    if-nez v9, :cond_1

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    array-length v0, v9

    move/from16 v16, v0

    const/4 v14, 0x0

    move v15, v14

    :goto_1
    move/from16 v0, v16

    if-ge v15, v0, :cond_0

    aget-object v8, v9, v15

    .line 201
    .local v8, "recordStore":Ljava/lang/String;
    const/4 v11, -0x1

    .line 202
    .local v11, "repositoryId":I
    const/4 v1, 0x0

    .line 204
    .local v1, "currentRepository":I
    const-string v12, ""

    .line 206
    .local v12, "repositoryPrefix":Ljava/lang/String;
    :goto_2
    if-gez v11, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/veritran/utils/VTRecoverMicroEmulator;->repositoryNames:[Ljava/lang/String;

    array-length v14, v14

    if-ge v1, v14, :cond_3

    .line 208
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "HARD"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/utils/VTRecoverMicroEmulator;->repositoryNames:[Ljava/lang/String;

    move-object/from16 v17, v0

    aget-object v17, v17, v1

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 210
    invoke-virtual {v8, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 211
    move v11, v1

    goto :goto_2

    .line 213
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 217
    :cond_3
    if-ltz v11, :cond_0

    .line 221
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/veritran/utils/VTRecoverMicroEmulator;->recoveredData:Landroid/util/SparseArray;

    invoke-virtual {v14, v11}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v14

    if-gez v14, :cond_4

    .line 222
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/veritran/utils/VTRecoverMicroEmulator;->recoveredData:Landroid/util/SparseArray;

    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v14, v11, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 228
    :cond_4
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/veritran/utils/VTRecoverMicroEmulator;->recordStoreManager:Lorg/microemu/android/util/AndroidRecordStoreManager;

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v14, v8, v0}, Lorg/microemu/android/util/AndroidRecordStoreManager;->openRecordStore(Ljava/lang/String;Z)Ljavax/microedition/rms/RecordStore;

    move-result-object v13

    .line 231
    .local v13, "rs":Ljavax/microedition/rms/RecordStore;
    invoke-virtual {v13}, Ljavax/microedition/rms/RecordStore;->getNextRecordID()I

    move-result v14

    add-int/lit8 v5, v14, -0x1

    .line 235
    .local v5, "nextRecordId":I
    invoke-virtual {v13, v5}, Ljavax/microedition/rms/RecordStore;->getRecord(I)[B

    move-result-object v6

    .line 237
    .local v6, "record":[B
    const/4 v14, 0x0

    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-static {v6, v14, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    .line 238
    .local v3, "length1":S
    add-int/lit8 v14, v3, 0x2

    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-static {v6, v14, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 239
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    .line 254
    .local v4, "length2":S
    new-instance v7, Ljava/lang/String;

    const/4 v14, 0x2

    invoke-direct {v7, v6, v14, v3}, Ljava/lang/String;-><init>([BII)V

    .line 255
    .local v7, "recordKey":Ljava/lang/String;
    new-instance v10, Ljava/lang/String;

    add-int/lit8 v14, v3, 0x4

    invoke-direct {v10, v6, v14, v4}, Ljava/lang/String;-><init>([BII)V

    .line 258
    .local v10, "recordValue":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/veritran/utils/VTRecoverMicroEmulator;->recoveredData:Landroid/util/SparseArray;

    invoke-virtual {v14, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/HashMap;

    invoke-virtual {v14, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    add-int/lit8 v14, v15, 0x1

    move v15, v14

    goto/16 :goto_1

    .line 261
    .end local v3    # "length1":S
    .end local v4    # "length2":S
    .end local v5    # "nextRecordId":I
    .end local v6    # "record":[B
    .end local v7    # "recordKey":Ljava/lang/String;
    .end local v10    # "recordValue":Ljava/lang/String;
    .end local v13    # "rs":Ljavax/microedition/rms/RecordStore;
    :catch_0
    move-exception v2

    .line 262
    .local v2, "e":Ljava/lang/Exception;
    goto/16 :goto_0
.end method


# virtual methods
.method public getError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getRecoveredRepository(I)Ljava/util/HashMap;
    .locals 1
    .param p1, "repository"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 348
    iget-object v0, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->recoveredData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method public hadError()Z
    .locals 1

    .prologue
    .line 352
    iget-boolean v0, p0, Lnet/veritran/utils/VTRecoverMicroEmulator;->error:Z

    return v0
.end method
