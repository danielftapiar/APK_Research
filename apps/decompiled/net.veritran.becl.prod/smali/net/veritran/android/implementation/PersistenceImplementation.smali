.class public Lnet/veritran/android/implementation/PersistenceImplementation;
.super Ljava/lang/Object;
.source "PersistenceImplementation.java"

# interfaces
.implements Lnet/veritran/vtuserapplication/persistence/PersistenceInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "PersistenceImplementation"


# instance fields
.field private TABLE_NAME:Ljava/lang/String;

.field private dataFields:Ljava/util/Vector;

.field private encryptionKey:Ljava/lang/String;

.field private isTableCreated:Z

.field private primaryKeys:Ljava/util/Vector;

.field private sqlRepository:Lnet/veritran/android/implementation/SQLiteRepository;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/util/Vector;Ljava/util/Vector;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "versionNumber"    # I
    .param p5, "vPrimaryKeys"    # Ljava/util/Vector;
    .param p6, "vDataFields"    # Ljava/util/Vector;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v1, Lnet/veritran/android/implementation/SQLiteRepository;

    invoke-direct {v1, p1, p4}, Lnet/veritran/android/implementation/SQLiteRepository;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lnet/veritran/android/implementation/PersistenceImplementation;->sqlRepository:Lnet/veritran/android/implementation/SQLiteRepository;

    .line 42
    iput-object p2, p0, Lnet/veritran/android/implementation/PersistenceImplementation;->TABLE_NAME:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lnet/veritran/android/implementation/PersistenceImplementation;->encryptionKey:Ljava/lang/String;

    .line 46
    :try_start_0
    iget-object v1, p0, Lnet/veritran/android/implementation/PersistenceImplementation;->sqlRepository:Lnet/veritran/android/implementation/SQLiteRepository;

    invoke-virtual {v1, p2}, Lnet/veritran/android/implementation/SQLiteRepository;->checkIfTableExist(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lnet/veritran/android/implementation/PersistenceImplementation;->isTableCreated:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    invoke-virtual {p0, p5}, Lnet/veritran/android/implementation/PersistenceImplementation;->setPrimaryKeysType(Ljava/util/Vector;)V

    .line 51
    invoke-virtual {p0, p6}, Lnet/veritran/android/implementation/PersistenceImplementation;->setDataFieldsType(Ljava/util/Vector;)V

    .line 52
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PersistenceImplementation"

    const-string v2, "Catched exception empty (fortify)"

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private createTable(Ljava/lang/String;)V
    .locals 3
    .param p1, "sqlQuery"    # Ljava/lang/String;

    .prologue
    .line 490
    const/4 v0, 0x0

    .line 493
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v2, p0, Lnet/veritran/android/implementation/PersistenceImplementation;->sqlRepository:Lnet/veritran/android/implementation/SQLiteRepository;

    invoke-virtual {v2}, Lnet/veritran/android/implementation/SQLiteRepository;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 495
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 496
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 501
    :cond_0
    if-eqz v0, :cond_1

    .line 502
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 505
    :cond_1
    :goto_0
    return-void

    .line 498
    :catch_0
    move-exception v1

    .line 499
    .local v1, "ex":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 501
    if-eqz v0, :cond_1

    .line 502
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 501
    .end local v1    # "ex":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_2

    .line 502
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    throw v2
.end method

.method private createTableQuery()Ljava/lang/String;
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 448
    iget-object v8, p0, Lnet/veritran/android/implementation/PersistenceImplementation;->primaryKeys:Ljava/util/Vector;

    if-nez v8, :cond_0

    .line 449
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Primary Keys not defined"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 452
    :cond_0
    iget-object v8, p0, Lnet/veritran/android/implementation/PersistenceImplementation;->dataFields:Ljava/util/Vector;

    if-nez v8, :cond_1

    .line 453
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Data Fields not defined"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 456
    :cond_1
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 457
    .local v0, "colTypes":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    iget-object v8, p0, Lnet/veritran/android/implementation/PersistenceImplementation;->primaryKeys:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 458
    .local v4, "obj":Ljava/lang/Object;
    iget-object v9, p0, Lnet/veritran/android/implementation/PersistenceImplementation;->sqlRepository:Lnet/veritran/android/implementation/SQLiteRepository;

    check-cast v4, Ljava/lang/Integer;

    .end local v4    # "obj":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Lnet/veritran/android/implementation/SQLiteRepository;->getSqlTypeByDataFieldType(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 460
    :cond_2
    iget-object v8, p0, Lnet/veritran/android/implementation/PersistenceImplementation;->dataFields:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 461
    .local v5, "obj2":Ljava/lang/Object;
    iget-object v9, p0, Lnet/veritran/android/implementation/PersistenceImplementation;->sqlRepository:Lnet/veritran/android/implementation/SQLiteRepository;

    check-cast v5, Ljava/lang/Integer;

    .end local v5    # "obj2":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Lnet/veritran/android/implementation/SQLiteRepository;->getSqlTypeByDataFieldType(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 464
    :cond_3
    const/4 v1, 0x1

    .line 465
    .local v1, "index":I
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 466
    .local v6, "sb":Ljava/lang/StringBuffer;
    const-string v8, "CREATE TABLE %s ("

    new-array v9, v13, [Ljava/lang/Object;

    iget-object v10, p0, Lnet/veritran/android/implementation/PersistenceImplementation;->TABLE_NAME:Ljava/lang/String;

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 468
    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 469
    .local v7, "type":Ljava/lang/String;
    const-string v9, "col%s %s, "

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    aput-object v7, v10, v13

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 470
    add-int/lit8 v1, v1, 0x1

    .line 471
    goto :goto_2

    .line 474
    .end local v7    # "type":Ljava/lang/String;
    :cond_4
    iget-object v8, p0, Lnet/veritran/android/implementation/PersistenceImplementation;->primaryKeys:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v3

    .line 475
    .local v3, "keySize":I
    const-string v8, "PRIMARY KEY ("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 476
    const/4 v2, 0x1

    .local v2, "jdx":I
    :goto_3
    if-gt v2, v3, :cond_5

    .line 477
    const-string v8, "col%s, "

    new-array v9, v13, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 476
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 479
    :cond_5
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 480
    const-string v8, "));"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 482
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method


# virtual methods
.method public dropKey(Ljava/util/Vector;)V
    .locals 18
    .param p1, "pKey"    # Ljava/util/Vector;

    .prologue
    .line 357
    const/4 v3, 0x0

    .line 358
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    .line 360
    .local v2, "cursor":Landroid/database/Cursor;
    if-nez p1, :cond_0

    .line 361
    new-instance v14, Ljava/lang/IllegalArgumentException;

    invoke-direct {v14}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v14

    .line 363
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/veritran/android/implementation/PersistenceImplementation;->primaryKeys:Ljava/util/Vector;

    if-nez v14, :cond_1

    .line 364
    new-instance v14, Ljava/lang/IllegalArgumentException;

    invoke-direct {v14}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v14

    .line 366
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/veritran/android/implementation/PersistenceImplementation;->dataFields:Ljava/util/Vector;

    if-nez v14, :cond_2

    .line 367
    new-instance v14, Ljava/lang/IllegalArgumentException;

    invoke-direct {v14}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v14

    .line 370
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/veritran/android/implementation/PersistenceImplementation;->primaryKeys:Ljava/util/Vector;

    invoke-virtual {v14}, Ljava/util/Vector;->size()I

    move-result v11

    .line 371
    .local v11, "pkSize":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/veritran/android/implementation/PersistenceImplementation;->dataFields:Ljava/util/Vector;

    invoke-virtual {v14}, Ljava/util/Vector;->size()I

    move-result v4

    .line 374
    .local v4, "dfSize":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/veritran/android/implementation/PersistenceImplementation;->sqlRepository:Lnet/veritran/android/implementation/SQLiteRepository;

    invoke-virtual {v14}, Lnet/veritran/android/implementation/SQLiteRepository;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 376
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 378
    new-array v1, v4, [Ljava/lang/String;

    .line 379
    .local v1, "columns":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 380
    .local v6, "i":I
    add-int/lit8 v7, v11, 0x1

    .local v7, "idx":I
    :goto_0
    add-int v14, v11, v4

    if-gt v7, v14, :cond_3

    .line 381
    const-string v14, "col%s"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v1, v6

    .line 382
    add-int/lit8 v6, v6, 0x1

    .line 380
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 385
    :cond_3
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 386
    .local v12, "selection":Ljava/lang/StringBuffer;
    const/4 v13, 0x0

    .line 388
    .local v13, "selectionArgs":[Ljava/lang/String;
    const/4 v14, 0x1

    if-ne v11, v14, :cond_7

    .line 389
    const-string v14, "col1=?"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 391
    new-instance v9, Ljava/util/ArrayList;

    const/4 v14, 0x1

    invoke-direct {v9, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 392
    .local v9, "lista":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "selectionArgs":[Ljava/lang/String;
    check-cast v13, [Ljava/lang/String;

    .line 411
    .restart local v13    # "selectionArgs":[Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/veritran/android/implementation/PersistenceImplementation;->TABLE_NAME:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v14, v15, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    .end local v1    # "columns":[Ljava/lang/String;
    .end local v6    # "i":I
    .end local v7    # "idx":I
    .end local v9    # "lista":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12    # "selection":Ljava/lang/StringBuffer;
    .end local v13    # "selectionArgs":[Ljava/lang/String;
    :cond_4
    if-eqz v3, :cond_5

    .line 417
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 419
    :cond_5
    if-eqz v2, :cond_6

    .line 420
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 423
    :cond_6
    :goto_2
    return-void

    .line 396
    .restart local v1    # "columns":[Ljava/lang/String;
    .restart local v6    # "i":I
    .restart local v7    # "idx":I
    .restart local v12    # "selection":Ljava/lang/StringBuffer;
    .restart local v13    # "selectionArgs":[Ljava/lang/String;
    :cond_7
    :try_start_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    move-result v14

    invoke-direct {v9, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 398
    .restart local v9    # "lista":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v8, 0x1

    .local v8, "jdx":I
    :goto_3
    if-gt v8, v11, :cond_9

    .line 399
    add-int/lit8 v14, v8, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v10

    .line 400
    .local v10, "obj":Ljava/lang/Object;
    if-eqz v10, :cond_8

    .line 401
    const-string v14, "col%s=? AND "

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 402
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 406
    .end local v10    # "obj":Ljava/lang/Object;
    :cond_9
    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "selectionArgs":[Ljava/lang/String;
    check-cast v13, [Ljava/lang/String;

    .line 408
    .restart local v13    # "selectionArgs":[Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x5

    invoke-virtual {v12, v14}, Ljava/lang/StringBuffer;->setLength(I)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 413
    .end local v1    # "columns":[Ljava/lang/String;
    .end local v6    # "i":I
    .end local v7    # "idx":I
    .end local v8    # "jdx":I
    .end local v9    # "lista":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12    # "selection":Ljava/lang/StringBuffer;
    .end local v13    # "selectionArgs":[Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 414
    .local v5, "ex":Landroid/database/sqlite/SQLiteException;
    :try_start_2
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 416
    if-eqz v3, :cond_a

    .line 417
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 419
    :cond_a
    if-eqz v2, :cond_6

    .line 420
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 416
    .end local v5    # "ex":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v14

    if-eqz v3, :cond_b

    .line 417
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 419
    :cond_b
    if-eqz v2, :cond_c

    .line 420
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v14
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 511
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getName not defined."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValue(Ljava/util/Vector;)Ljava/util/Vector;
    .locals 24
    .param p1, "pKey"    # Ljava/util/Vector;

    .prologue
    .line 90
    const/16 v19, 0x0

    .line 91
    .local v19, "result":Ljava/util/Vector;
    const/4 v1, 0x0

    .line 92
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v10, 0x0

    .line 94
    .local v10, "cursor":Landroid/database/Cursor;
    if-nez p1, :cond_0

    .line 95
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 97
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/android/implementation/PersistenceImplementation;->primaryKeys:Ljava/util/Vector;

    if-nez v2, :cond_1

    .line 98
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 100
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/android/implementation/PersistenceImplementation;->dataFields:Ljava/util/Vector;

    if-nez v2, :cond_2

    .line 101
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 104
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/android/implementation/PersistenceImplementation;->primaryKeys:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v18

    .line 105
    .local v18, "pkSize":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/android/implementation/PersistenceImplementation;->dataFields:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v11

    .line 108
    .local v11, "dfSize":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/android/implementation/PersistenceImplementation;->sqlRepository:Lnet/veritran/android/implementation/SQLiteRepository;

    invoke-virtual {v2}, Lnet/veritran/android/implementation/SQLiteRepository;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 110
    if-eqz v1, :cond_14

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 112
    add-int v2, v18, v11

    new-array v3, v2, [Ljava/lang/String;

    .line 113
    .local v3, "columns":[Ljava/lang/String;
    const/4 v13, 0x0

    .line 114
    .local v13, "i":I
    const/4 v14, 0x1

    .local v14, "idx":I
    :goto_0
    add-int v2, v18, v11

    if-gt v14, v2, :cond_3

    .line 115
    const-string v2, "col%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v13

    .line 116
    add-int/lit8 v13, v13, 0x1

    .line 114
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 119
    :cond_3
    new-instance v22, Ljava/lang/StringBuffer;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuffer;-><init>()V

    .line 120
    .local v22, "selectionSB":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .line 121
    .local v4, "selection":Ljava/lang/String;
    const/4 v5, 0x0

    .line 123
    .local v5, "selectionArgs":[Ljava/lang/String;
    const/4 v2, 0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_6

    .line 124
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 125
    const-string v2, "col1=?"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    new-instance v16, Ljava/util/ArrayList;

    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 128
    .local v16, "lista":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "selectionArgs":[Ljava/lang/String;
    check-cast v5, [Ljava/lang/String;

    .line 131
    .restart local v5    # "selectionArgs":[Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 154
    .end local v16    # "lista":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/android/implementation/PersistenceImplementation;->TABLE_NAME:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 156
    if-eqz v10, :cond_14

    .line 157
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 158
    new-instance v20, Ljava/util/Vector;

    invoke-direct/range {v20 .. v20}, Ljava/util/Vector;-><init>()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 159
    .end local v19    # "result":Ljava/util/Vector;
    .local v20, "result":Ljava/util/Vector;
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->getColumnCount()I

    move-result v9

    .line 161
    .local v9, "COLUMN_COUNT":I
    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_13

    .line 162
    new-instance v21, Ljava/util/Vector;

    invoke-direct/range {v21 .. v21}, Ljava/util/Vector;-><init>()V

    .line 164
    .local v21, "rowVector":Ljava/util/Vector;
    const/4 v14, 0x0

    :goto_3
    if-ge v14, v9, :cond_11

    .line 165
    const/16 v23, 0x0

    .line 167
    .local v23, "sqlType":Ljava/lang/String;
    add-int/lit8 v2, v14, 0x1

    move/from16 v0, v18

    if-gt v2, v0, :cond_9

    .line 168
    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/veritran/android/implementation/PersistenceImplementation;->sqlRepository:Lnet/veritran/android/implementation/SQLiteRepository;

    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/android/implementation/PersistenceImplementation;->primaryKeys:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v6, v2}, Lnet/veritran/android/implementation/SQLiteRepository;->getSqlTypeByDataFieldType(I)Ljava/lang/String;

    move-result-object v23

    .line 177
    :goto_4
    add-int/lit8 v2, v14, 0x1

    move/from16 v0, v18

    if-le v2, v0, :cond_5

    .line 179
    const-string v2, "INTEGER"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 180
    invoke-interface {v10, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    :cond_5
    :goto_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 135
    .end local v9    # "COLUMN_COUNT":I
    .end local v20    # "result":Ljava/util/Vector;
    .end local v21    # "rowVector":Ljava/util/Vector;
    .end local v23    # "sqlType":Ljava/lang/String;
    .restart local v19    # "result":Ljava/util/Vector;
    :cond_6
    const/4 v2, 0x0

    :try_start_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 136
    new-instance v16, Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    move-result v2

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 138
    .restart local v16    # "lista":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v15, 0x1

    .local v15, "jdx":I
    :goto_6
    move/from16 v0, v18

    if-gt v15, v0, :cond_8

    .line 139
    add-int/lit8 v2, v15, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v17

    .line 140
    .local v17, "obj":Ljava/lang/Object;
    if-eqz v17, :cond_7

    .line 141
    const-string v2, "col%s=? AND "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_7
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 146
    .end local v17    # "obj":Ljava/lang/Object;
    :cond_8
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "selectionArgs":[Ljava/lang/String;
    check-cast v5, [Ljava/lang/String;

    .line 148
    .restart local v5    # "selectionArgs":[Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x5

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 150
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v4

    goto/16 :goto_1

    .line 171
    .end local v15    # "jdx":I
    .end local v16    # "lista":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v19    # "result":Ljava/util/Vector;
    .restart local v9    # "COLUMN_COUNT":I
    .restart local v20    # "result":Ljava/util/Vector;
    .restart local v21    # "rowVector":Ljava/util/Vector;
    .restart local v23    # "sqlType":Ljava/lang/String;
    :cond_9
    :try_start_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/veritran/android/implementation/PersistenceImplementation;->sqlRepository:Lnet/veritran/android/implementation/SQLiteRepository;

    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/android/implementation/PersistenceImplementation;->dataFields:Ljava/util/Vector;

    sub-int v7, v14, v18

    invoke-virtual {v2, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v6, v2}, Lnet/veritran/android/implementation/SQLiteRepository;->getSqlTypeByDataFieldType(I)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_4

    .line 181
    :cond_a
    const-string v2, "BLOB"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 182
    invoke-interface {v10, v14}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_5

    .line 203
    .end local v9    # "COLUMN_COUNT":I
    .end local v21    # "rowVector":Ljava/util/Vector;
    .end local v23    # "sqlType":Ljava/lang/String;
    :catch_0
    move-exception v12

    move-object/from16 v19, v20

    .line 204
    .end local v3    # "columns":[Ljava/lang/String;
    .end local v4    # "selection":Ljava/lang/String;
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    .end local v13    # "i":I
    .end local v14    # "idx":I
    .end local v20    # "result":Ljava/util/Vector;
    .end local v22    # "selectionSB":Ljava/lang/StringBuffer;
    .local v12, "ex":Landroid/database/sqlite/SQLiteException;
    .restart local v19    # "result":Ljava/util/Vector;
    :goto_7
    :try_start_4
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 206
    if-eqz v1, :cond_b

    .line 207
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 209
    :cond_b
    if-eqz v10, :cond_c

    .line 210
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 214
    .end local v12    # "ex":Landroid/database/sqlite/SQLiteException;
    :cond_c
    :goto_8
    if-eqz v19, :cond_d

    invoke-virtual/range {v19 .. v19}, Ljava/util/Vector;->size()I

    move-result v2

    if-nez v2, :cond_d

    .line 216
    const/16 v19, 0x0

    .line 219
    .end local v19    # "result":Ljava/util/Vector;
    :cond_d
    return-object v19

    .line 183
    .restart local v3    # "columns":[Ljava/lang/String;
    .restart local v4    # "selection":Ljava/lang/String;
    .restart local v5    # "selectionArgs":[Ljava/lang/String;
    .restart local v9    # "COLUMN_COUNT":I
    .restart local v13    # "i":I
    .restart local v14    # "idx":I
    .restart local v20    # "result":Ljava/util/Vector;
    .restart local v21    # "rowVector":Ljava/util/Vector;
    .restart local v22    # "selectionSB":Ljava/lang/StringBuffer;
    .restart local v23    # "sqlType":Ljava/lang/String;
    :cond_e
    :try_start_5
    const-string v2, "TEXT"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 184
    invoke-interface {v10, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_5

    .line 206
    .end local v9    # "COLUMN_COUNT":I
    .end local v21    # "rowVector":Ljava/util/Vector;
    .end local v23    # "sqlType":Ljava/lang/String;
    :catchall_0
    move-exception v2

    move-object/from16 v19, v20

    .end local v3    # "columns":[Ljava/lang/String;
    .end local v4    # "selection":Ljava/lang/String;
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    .end local v13    # "i":I
    .end local v14    # "idx":I
    .end local v20    # "result":Ljava/util/Vector;
    .end local v22    # "selectionSB":Ljava/lang/StringBuffer;
    .restart local v19    # "result":Ljava/util/Vector;
    :goto_9
    if-eqz v1, :cond_f

    .line 207
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 209
    :cond_f
    if-eqz v10, :cond_10

    .line 210
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_10
    throw v2

    .line 188
    .end local v19    # "result":Ljava/util/Vector;
    .restart local v3    # "columns":[Ljava/lang/String;
    .restart local v4    # "selection":Ljava/lang/String;
    .restart local v5    # "selectionArgs":[Ljava/lang/String;
    .restart local v9    # "COLUMN_COUNT":I
    .restart local v13    # "i":I
    .restart local v14    # "idx":I
    .restart local v20    # "result":Ljava/util/Vector;
    .restart local v21    # "rowVector":Ljava/util/Vector;
    .restart local v22    # "selectionSB":Ljava/lang/StringBuffer;
    :cond_11
    :try_start_6
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    .line 192
    invoke-virtual/range {v21 .. v21}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_12

    .line 194
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 198
    :cond_12
    invoke-virtual/range {v20 .. v21}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    .end local v21    # "rowVector":Ljava/util/Vector;
    :cond_13
    move-object/from16 v19, v20

    .line 206
    .end local v3    # "columns":[Ljava/lang/String;
    .end local v4    # "selection":Ljava/lang/String;
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    .end local v9    # "COLUMN_COUNT":I
    .end local v13    # "i":I
    .end local v14    # "idx":I
    .end local v20    # "result":Ljava/util/Vector;
    .end local v22    # "selectionSB":Ljava/lang/StringBuffer;
    .restart local v19    # "result":Ljava/util/Vector;
    :cond_14
    if-eqz v1, :cond_15

    .line 207
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 209
    :cond_15
    if-eqz v10, :cond_c

    .line 210
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_8

    .line 206
    :catchall_1
    move-exception v2

    goto :goto_9

    .line 203
    :catch_1
    move-exception v12

    goto :goto_7
.end method

.method public putValue(Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 30
    .param p1, "pKey"    # Ljava/util/Vector;
    .param p2, "fieldValue"    # Ljava/util/Vector;

    .prologue
    .line 228
    const/4 v9, 0x0

    .line 229
    .local v9, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v7, 0x0

    .line 231
    .local v7, "cursor":Landroid/database/Cursor;
    if-nez p1, :cond_0

    .line 232
    new-instance v24, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v24 .. v24}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v24

    .line 234
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/android/implementation/PersistenceImplementation;->primaryKeys:Ljava/util/Vector;

    move-object/from16 v24, v0

    if-nez v24, :cond_1

    .line 235
    new-instance v24, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v24 .. v24}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v24

    .line 237
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/android/implementation/PersistenceImplementation;->dataFields:Ljava/util/Vector;

    move-object/from16 v24, v0

    if-nez v24, :cond_2

    .line 238
    new-instance v24, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v24 .. v24}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v24

    .line 241
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/android/implementation/PersistenceImplementation;->primaryKeys:Ljava/util/Vector;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/Vector;->size()I

    move-result v17

    .line 242
    .local v17, "pkSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/android/implementation/PersistenceImplementation;->dataFields:Ljava/util/Vector;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/Vector;->size()I

    move-result v10

    .line 245
    .local v10, "dfSize":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/android/implementation/PersistenceImplementation;->sqlRepository:Lnet/veritran/android/implementation/SQLiteRepository;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lnet/veritran/android/implementation/SQLiteRepository;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    .line 247
    if-eqz v9, :cond_f

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v24

    if-eqz v24, :cond_f

    .line 249
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 251
    .local v21, "values":Landroid/content/ContentValues;
    const/4 v13, 0x1

    .local v13, "idx":I
    :goto_0
    move/from16 v0, v17

    if-gt v13, v0, :cond_a

    .line 252
    const-string v24, "col%s"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 253
    .local v6, "columnName":Ljava/lang/String;
    add-int/lit8 v24, v13, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v16

    .line 255
    .local v16, "pKeyValue":Ljava/lang/Object;
    if-nez v16, :cond_4

    .line 256
    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 251
    .end local v16    # "pKeyValue":Ljava/lang/Object;
    :cond_3
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 258
    .restart local v16    # "pKeyValue":Ljava/lang/Object;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/android/implementation/PersistenceImplementation;->sqlRepository:Lnet/veritran/android/implementation/SQLiteRepository;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/android/implementation/PersistenceImplementation;->primaryKeys:Ljava/util/Vector;

    move-object/from16 v24, v0

    add-int/lit8 v26, v13, -0x1

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lnet/veritran/android/implementation/SQLiteRepository;->getSqlTypeByDataFieldType(I)Ljava/lang/String;

    move-result-object v20

    .line 260
    .local v20, "sqlType":Ljava/lang/String;
    const-string v24, "INTEGER"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_7

    .line 261
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 340
    .end local v6    # "columnName":Ljava/lang/String;
    .end local v13    # "idx":I
    .end local v16    # "pKeyValue":Ljava/lang/Object;
    .end local v20    # "sqlType":Ljava/lang/String;
    .end local v21    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v11

    .line 341
    .local v11, "ex":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 343
    if-eqz v9, :cond_5

    .line 344
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 346
    :cond_5
    if-eqz v7, :cond_6

    .line 347
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 350
    .end local v11    # "ex":Landroid/database/sqlite/SQLiteException;
    :cond_6
    :goto_2
    return-void

    .line 262
    .restart local v6    # "columnName":Ljava/lang/String;
    .restart local v13    # "idx":I
    .restart local v16    # "pKeyValue":Ljava/lang/Object;
    .restart local v20    # "sqlType":Ljava/lang/String;
    .restart local v21    # "values":Landroid/content/ContentValues;
    :cond_7
    :try_start_2
    const-string v24, "TEXT"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 263
    check-cast v16, Ljava/lang/String;

    .end local v16    # "pKeyValue":Ljava/lang/Object;
    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 343
    .end local v6    # "columnName":Ljava/lang/String;
    .end local v13    # "idx":I
    .end local v20    # "sqlType":Ljava/lang/String;
    .end local v21    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v24

    if-eqz v9, :cond_8

    .line 344
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 346
    :cond_8
    if-eqz v7, :cond_9

    .line 347
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v24

    .line 268
    .restart local v13    # "idx":I
    .restart local v21    # "values":Landroid/content/ContentValues;
    :cond_a
    add-int/lit8 v14, v17, 0x1

    .local v14, "jdx":I
    :goto_3
    add-int v24, v17, v10

    move/from16 v0, v24

    if-gt v14, v0, :cond_e

    .line 269
    :try_start_3
    const-string v24, "col%s"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 270
    .restart local v6    # "columnName":Ljava/lang/String;
    add-int/lit8 v24, v17, 0x1

    sub-int v24, v14, v24

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    .line 272
    .local v8, "dFieldValue":Ljava/lang/Object;
    if-nez v8, :cond_b

    .line 273
    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 268
    .end local v8    # "dFieldValue":Ljava/lang/Object;
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 275
    .restart local v8    # "dFieldValue":Ljava/lang/Object;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/android/implementation/PersistenceImplementation;->sqlRepository:Lnet/veritran/android/implementation/SQLiteRepository;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/android/implementation/PersistenceImplementation;->dataFields:Ljava/util/Vector;

    move-object/from16 v24, v0

    add-int/lit8 v26, v17, 0x1

    sub-int v26, v14, v26

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lnet/veritran/android/implementation/SQLiteRepository;->getSqlTypeByDataFieldType(I)Ljava/lang/String;

    move-result-object v20

    .line 277
    .restart local v20    # "sqlType":Ljava/lang/String;
    const-string v24, "INTEGER"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_c

    .line 278
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_4

    .line 279
    :cond_c
    const-string v24, "TEXT"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_d

    .line 280
    check-cast v8, Ljava/lang/String;

    .end local v8    # "dFieldValue":Ljava/lang/Object;
    move-object/from16 v0, v21

    invoke-virtual {v0, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 282
    .restart local v8    # "dFieldValue":Ljava/lang/Object;
    :cond_d
    check-cast v8, [B

    .end local v8    # "dFieldValue":Ljava/lang/Object;
    check-cast v8, [B

    move-object/from16 v0, v21

    invoke-virtual {v0, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 287
    .end local v6    # "columnName":Ljava/lang/String;
    .end local v20    # "sqlType":Ljava/lang/String;
    :cond_e
    const/4 v15, 0x0

    .line 294
    .local v15, "nullColumnHack":Ljava/lang/String;
    const-wide/16 v18, -0x1

    .line 298
    .local v18, "res":J
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/android/implementation/PersistenceImplementation;->TABLE_NAME:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v15, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-wide v18

    .line 343
    .end local v13    # "idx":I
    .end local v14    # "jdx":I
    .end local v15    # "nullColumnHack":Ljava/lang/String;
    .end local v18    # "res":J
    .end local v21    # "values":Landroid/content/ContentValues;
    :cond_f
    :goto_5
    if-eqz v9, :cond_10

    .line 344
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 346
    :cond_10
    if-eqz v7, :cond_6

    .line 347
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 300
    .restart local v13    # "idx":I
    .restart local v14    # "jdx":I
    .restart local v15    # "nullColumnHack":Ljava/lang/String;
    .restart local v18    # "res":J
    .restart local v21    # "values":Landroid/content/ContentValues;
    :catch_1
    move-exception v12

    .line 302
    .local v12, "exc":Landroid/database/SQLException;
    :try_start_5
    const-string v23, ""

    .line 303
    .local v23, "whereClause":Ljava/lang/String;
    const-string v4, ""

    .line 304
    .local v4, "andSeparator":Ljava/lang/String;
    new-instance v22, Ljava/util/Vector;

    invoke-direct/range {v22 .. v22}, Ljava/util/Vector;-><init>()V

    .line 305
    .local v22, "whereArgs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    const/4 v14, 0x1

    :goto_6
    move/from16 v0, v17

    if-gt v14, v0, :cond_13

    .line 307
    const-string v24, "col%s"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 309
    .local v5, "colName":Ljava/lang/String;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 310
    const-string v4, " AND "

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/android/implementation/PersistenceImplementation;->sqlRepository:Lnet/veritran/android/implementation/SQLiteRepository;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/android/implementation/PersistenceImplementation;->dataFields:Ljava/util/Vector;

    move-object/from16 v24, v0

    add-int/lit8 v26, v14, -0x1

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lnet/veritran/android/implementation/SQLiteRepository;->getSqlTypeByDataFieldType(I)Ljava/lang/String;

    move-result-object v20

    .line 316
    .restart local v20    # "sqlType":Ljava/lang/String;
    const-string v24, "INTEGER"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_12

    .line 317
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, ""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 305
    :cond_11
    :goto_7
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_6

    .line 318
    :cond_12
    const-string v24, "TEXT"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_11

    .line 319
    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 323
    .end local v5    # "colName":Ljava/lang/String;
    .end local v20    # "sqlType":Ljava/lang/String;
    :cond_13
    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/android/implementation/PersistenceImplementation;->TABLE_NAME:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, "col1=?"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, ""

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "col1"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    goto/16 :goto_5
.end method

.method public removeAll()V
    .locals 5

    .prologue
    .line 429
    const/4 v0, 0x0

    .line 431
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v2, p0, Lnet/veritran/android/implementation/PersistenceImplementation;->sqlRepository:Lnet/veritran/android/implementation/SQLiteRepository;

    invoke-virtual {v2}, Lnet/veritran/android/implementation/SQLiteRepository;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 433
    iget-object v2, p0, Lnet/veritran/android/implementation/PersistenceImplementation;->TABLE_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    if-eqz v0, :cond_0

    .line 438
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 441
    :cond_0
    :goto_0
    return-void

    .line 434
    :catch_0
    move-exception v1

    .line 435
    .local v1, "ex":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 437
    if-eqz v0, :cond_0

    .line 438
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 437
    .end local v1    # "ex":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_1

    .line 438
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    throw v2
.end method

.method public setDataFieldsType(Ljava/util/Vector;)V
    .locals 1
    .param p1, "fieldTypes"    # Ljava/util/Vector;

    .prologue
    .line 78
    iput-object p1, p0, Lnet/veritran/android/implementation/PersistenceImplementation;->dataFields:Ljava/util/Vector;

    .line 79
    iget-boolean v0, p0, Lnet/veritran/android/implementation/PersistenceImplementation;->isTableCreated:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/veritran/android/implementation/PersistenceImplementation;->primaryKeys:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 80
    invoke-direct {p0}, Lnet/veritran/android/implementation/PersistenceImplementation;->createTableQuery()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/veritran/android/implementation/PersistenceImplementation;->createTable(Ljava/lang/String;)V

    .line 82
    :cond_0
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lnet/veritran/android/implementation/PersistenceImplementation;->encryptionKey:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setPrimaryKeysType(Ljava/util/Vector;)V
    .locals 1
    .param p1, "pKeysType"    # Ljava/util/Vector;

    .prologue
    .line 67
    iput-object p1, p0, Lnet/veritran/android/implementation/PersistenceImplementation;->primaryKeys:Ljava/util/Vector;

    .line 68
    iget-boolean v0, p0, Lnet/veritran/android/implementation/PersistenceImplementation;->isTableCreated:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/veritran/android/implementation/PersistenceImplementation;->dataFields:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 69
    invoke-direct {p0}, Lnet/veritran/android/implementation/PersistenceImplementation;->createTableQuery()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/veritran/android/implementation/PersistenceImplementation;->createTable(Ljava/lang/String;)V

    .line 71
    :cond_0
    return-void
.end method
