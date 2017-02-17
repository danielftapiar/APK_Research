.class public Lorg/mapsforge/map/reader/MapDatabase;
.super Ljava/lang/Object;
.source "MapDatabase.java"


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private databaseIndexCache:Lorg/mapsforge/map/reader/IndexCache;

.field private fileSize:J

.field private inputFile:Ljava/io/RandomAccessFile;

.field private mapFileHeader:Lorg/mapsforge/map/reader/header/MapFileHeader;

.field private readBuffer:Lorg/mapsforge/map/reader/ReadBuffer;

.field private signatureBlock:Ljava/lang/String;

.field private signaturePoi:Ljava/lang/String;

.field private signatureWay:Ljava/lang/String;

.field private tileLatitude:I

.field private tileLongitude:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const-class v0, Lorg/mapsforge/map/reader/MapDatabase;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/mapsforge/map/reader/MapDatabase;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private decodeWayNodesDoubleDelta([F)V
    .locals 11
    .param p1, "waySegment"    # [F

    .prologue
    .line 334
    iget v9, p0, Lorg/mapsforge/map/reader/MapDatabase;->tileLatitude:I

    iget-object v10, p0, Lorg/mapsforge/map/reader/MapDatabase;->readBuffer:Lorg/mapsforge/map/reader/ReadBuffer;

    invoke-virtual {v10}, Lorg/mapsforge/map/reader/ReadBuffer;->readSignedInt()I

    move-result v10

    add-int v6, v9, v10

    .line 337
    .local v6, "wayNodeLatitude":I
    iget v9, p0, Lorg/mapsforge/map/reader/MapDatabase;->tileLongitude:I

    iget-object v10, p0, Lorg/mapsforge/map/reader/MapDatabase;->readBuffer:Lorg/mapsforge/map/reader/ReadBuffer;

    invoke-virtual {v10}, Lorg/mapsforge/map/reader/ReadBuffer;->readSignedInt()I

    move-result v10

    add-int v7, v9, v10

    .line 340
    .local v7, "wayNodeLongitude":I
    const/4 v9, 0x1

    int-to-float v10, v6

    aput v10, p1, v9

    .line 341
    const/4 v9, 0x0

    int-to-float v10, v7

    aput v10, p1, v9

    .line 343
    const/4 v2, 0x0

    .line 344
    .local v2, "previousSingleDeltaLatitude":I
    const/4 v3, 0x0

    .line 346
    .local v3, "previousSingleDeltaLongitude":I
    const/4 v8, 0x2

    .local v8, "wayNodesIndex":I
    :goto_0
    array-length v9, p1

    if-ge v8, v9, :cond_0

    .line 348
    iget-object v9, p0, Lorg/mapsforge/map/reader/MapDatabase;->readBuffer:Lorg/mapsforge/map/reader/ReadBuffer;

    invoke-virtual {v9}, Lorg/mapsforge/map/reader/ReadBuffer;->readSignedInt()I

    move-result v0

    .line 351
    .local v0, "doubleDeltaLatitude":I
    iget-object v9, p0, Lorg/mapsforge/map/reader/MapDatabase;->readBuffer:Lorg/mapsforge/map/reader/ReadBuffer;

    invoke-virtual {v9}, Lorg/mapsforge/map/reader/ReadBuffer;->readSignedInt()I

    move-result v1

    .line 353
    .local v1, "doubleDeltaLongitude":I
    add-int v4, v0, v2

    .line 354
    .local v4, "singleDeltaLatitude":I
    add-int v5, v1, v3

    .line 356
    .local v5, "singleDeltaLongitude":I
    add-int/2addr v6, v4

    .line 357
    add-int/2addr v7, v5

    .line 359
    add-int/lit8 v9, v8, 0x1

    int-to-float v10, v6

    aput v10, p1, v9

    .line 360
    int-to-float v9, v7

    aput v9, p1, v8

    .line 362
    move v2, v4

    .line 363
    move v3, v5

    .line 346
    add-int/lit8 v8, v8, 0x2

    goto :goto_0

    .line 365
    .end local v0    # "doubleDeltaLatitude":I
    .end local v1    # "doubleDeltaLongitude":I
    .end local v4    # "singleDeltaLatitude":I
    .end local v5    # "singleDeltaLongitude":I
    :cond_0
    return-void
.end method

.method private decodeWayNodesSingleDelta([F)V
    .locals 5
    .param p1, "waySegment"    # [F

    .prologue
    .line 369
    iget v3, p0, Lorg/mapsforge/map/reader/MapDatabase;->tileLatitude:I

    iget-object v4, p0, Lorg/mapsforge/map/reader/MapDatabase;->readBuffer:Lorg/mapsforge/map/reader/ReadBuffer;

    invoke-virtual {v4}, Lorg/mapsforge/map/reader/ReadBuffer;->readSignedInt()I

    move-result v4

    add-int v0, v3, v4

    .line 372
    .local v0, "wayNodeLatitude":I
    iget v3, p0, Lorg/mapsforge/map/reader/MapDatabase;->tileLongitude:I

    iget-object v4, p0, Lorg/mapsforge/map/reader/MapDatabase;->readBuffer:Lorg/mapsforge/map/reader/ReadBuffer;

    invoke-virtual {v4}, Lorg/mapsforge/map/reader/ReadBuffer;->readSignedInt()I

    move-result v4

    add-int v1, v3, v4

    .line 375
    .local v1, "wayNodeLongitude":I
    const/4 v3, 0x1

    int-to-float v4, v0

    aput v4, p1, v3

    .line 376
    const/4 v3, 0x0

    int-to-float v4, v1

    aput v4, p1, v3

    .line 378
    const/4 v2, 0x2

    .local v2, "wayNodesIndex":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 380
    iget-object v3, p0, Lorg/mapsforge/map/reader/MapDatabase;->readBuffer:Lorg/mapsforge/map/reader/ReadBuffer;

    invoke-virtual {v3}, Lorg/mapsforge/map/reader/ReadBuffer;->readSignedInt()I

    move-result v3

    add-int/2addr v0, v3

    .line 383
    iget-object v3, p0, Lorg/mapsforge/map/reader/MapDatabase;->readBuffer:Lorg/mapsforge/map/reader/ReadBuffer;

    invoke-virtual {v3}, Lorg/mapsforge/map/reader/ReadBuffer;->readSignedInt()I

    move-result v3

    add-int/2addr v1, v3

    .line 385
    add-int/lit8 v3, v2, 0x1

    int-to-float v4, v0

    aput v4, p1, v3

    .line 386
    int-to-float v3, v1

    aput v3, p1, v2

    .line 378
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 388
    :cond_0
    return-void
.end method

.method private logDebugSignatures()V
    .locals 3

    .prologue
    .line 394
    iget-object v0, p0, Lorg/mapsforge/map/reader/MapDatabase;->mapFileHeader:Lorg/mapsforge/map/reader/header/MapFileHeader;

    invoke-virtual {v0}, Lorg/mapsforge/map/reader/header/MapFileHeader;->getMapFileInfo()Lorg/mapsforge/map/reader/header/MapFileInfo;

    move-result-object v0

    iget-boolean v0, v0, Lorg/mapsforge/map/reader/header/MapFileInfo;->debugFile:Z

    if-eqz v0, :cond_0

    .line 395
    sget-object v0, Lorg/mapsforge/map/reader/MapDatabase;->LOG:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "way signature: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/mapsforge/map/reader/MapDatabase;->signatureWay:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 396
    sget-object v0, Lorg/mapsforge/map/reader/MapDatabase;->LOG:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "block signature: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/mapsforge/map/reader/MapDatabase;->signatureBlock:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 398
    :cond_0
    return-void
.end method

.method private processBlocks(Lorg/mapsforge/map/reader/MapDatabaseCallback;Lorg/mapsforge/map/reader/QueryParameters;Lorg/mapsforge/map/reader/header/SubFileParameter;)V
    .locals 29
    .param p1, "mapDatabaseCallback"    # Lorg/mapsforge/map/reader/MapDatabaseCallback;
    .param p2, "queryParameters"    # Lorg/mapsforge/map/reader/QueryParameters;
    .param p3, "subFileParameter"    # Lorg/mapsforge/map/reader/header/SubFileParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 473
    const/16 v16, 0x1

    .line 474
    .local v16, "queryIsWater":Z
    const/16 v17, 0x0

    .line 477
    .local v17, "queryReadWaterInfo":Z
    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/mapsforge/map/reader/QueryParameters;->fromBlockY:J

    move-wide/from16 v18, v0

    .local v18, "row":J
    :goto_0
    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/mapsforge/map/reader/QueryParameters;->toBlockY:J

    move-wide/from16 v24, v0

    cmp-long v24, v18, v24

    if-gtz v24, :cond_12

    .line 478
    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/mapsforge/map/reader/QueryParameters;->fromBlockX:J

    .local v6, "column":J
    :goto_1
    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/mapsforge/map/reader/QueryParameters;->toBlockX:J

    move-wide/from16 v24, v0

    cmp-long v24, v6, v24

    if-gtz v24, :cond_11

    .line 481
    move-object/from16 v0, p3

    iget-wide v0, v0, Lorg/mapsforge/map/reader/header/SubFileParameter;->blocksWidth:J

    move-wide/from16 v24, v0

    mul-long v24, v24, v18

    add-long v4, v24, v6

    .line 484
    .local v4, "blockNumber":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapsforge/map/reader/MapDatabase;->databaseIndexCache:Lorg/mapsforge/map/reader/IndexCache;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4, v5}, Lorg/mapsforge/map/reader/IndexCache;->getIndexEntry(Lorg/mapsforge/map/reader/header/SubFileParameter;J)J

    move-result-wide v8

    .line 487
    .local v8, "currentBlockIndexEntry":J
    if-eqz v16, :cond_0

    .line 489
    const-wide v24, 0x8000000000L

    and-long v24, v24, v8

    const-wide/16 v26, 0x0

    cmp-long v24, v24, v26

    if-eqz v24, :cond_3

    const/16 v24, 0x1

    :goto_2
    and-int v16, v16, v24

    .line 490
    const/16 v17, 0x1

    .line 494
    :cond_0
    const-wide v24, 0x7fffffffffL

    and-long v10, v8, v24

    .line 495
    .local v10, "currentBlockPointer":J
    const-wide/16 v24, 0x1

    cmp-long v24, v10, v24

    if-ltz v24, :cond_1

    move-object/from16 v0, p3

    iget-wide v0, v0, Lorg/mapsforge/map/reader/header/SubFileParameter;->subFileSize:J

    move-wide/from16 v24, v0

    cmp-long v24, v10, v24

    if-lez v24, :cond_4

    .line 496
    :cond_1
    sget-object v24, Lorg/mapsforge/map/reader/MapDatabase;->LOG:Ljava/util/logging/Logger;

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "invalid current block pointer: "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 497
    sget-object v24, Lorg/mapsforge/map/reader/MapDatabase;->LOG:Ljava/util/logging/Logger;

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "subFileSize: "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    iget-wide v0, v0, Lorg/mapsforge/map/reader/header/SubFileParameter;->subFileSize:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 564
    .end local v4    # "blockNumber":J
    .end local v6    # "column":J
    .end local v8    # "currentBlockIndexEntry":J
    .end local v10    # "currentBlockPointer":J
    :cond_2
    :goto_3
    return-void

    .line 489
    .restart local v4    # "blockNumber":J
    .restart local v6    # "column":J
    .restart local v8    # "currentBlockIndexEntry":J
    :cond_3
    const/16 v24, 0x0

    goto :goto_2

    .line 503
    .restart local v10    # "currentBlockPointer":J
    :cond_4
    const-wide/16 v24, 0x1

    add-long v24, v24, v4

    move-object/from16 v0, p3

    iget-wide v0, v0, Lorg/mapsforge/map/reader/header/SubFileParameter;->numberOfBlocks:J

    move-wide/from16 v26, v0

    cmp-long v24, v24, v26

    if-nez v24, :cond_6

    .line 505
    move-object/from16 v0, p3

    iget-wide v14, v0, Lorg/mapsforge/map/reader/header/SubFileParameter;->subFileSize:J

    .line 518
    .local v14, "nextBlockPointer":J
    :cond_5
    sub-long v24, v14, v10

    move-wide/from16 v0, v24

    long-to-int v12, v0

    .line 519
    .local v12, "currentBlockSize":I
    if-gez v12, :cond_8

    .line 520
    sget-object v24, Lorg/mapsforge/map/reader/MapDatabase;->LOG:Ljava/util/logging/Logger;

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "current block size must not be negative: "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_3

    .line 508
    .end local v12    # "currentBlockSize":I
    .end local v14    # "nextBlockPointer":J
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapsforge/map/reader/MapDatabase;->databaseIndexCache:Lorg/mapsforge/map/reader/IndexCache;

    move-object/from16 v24, v0

    const-wide/16 v25, 0x1

    add-long v25, v25, v4

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    move-wide/from16 v2, v25

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapsforge/map/reader/IndexCache;->getIndexEntry(Lorg/mapsforge/map/reader/header/SubFileParameter;J)J

    move-result-wide v24

    const-wide v26, 0x7fffffffffL

    and-long v14, v24, v26

    .line 510
    .restart local v14    # "nextBlockPointer":J
    const-wide/16 v24, 0x1

    cmp-long v24, v14, v24

    if-ltz v24, :cond_7

    move-object/from16 v0, p3

    iget-wide v0, v0, Lorg/mapsforge/map/reader/header/SubFileParameter;->subFileSize:J

    move-wide/from16 v24, v0

    cmp-long v24, v14, v24

    if-lez v24, :cond_5

    .line 511
    :cond_7
    sget-object v24, Lorg/mapsforge/map/reader/MapDatabase;->LOG:Ljava/util/logging/Logger;

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "invalid next block pointer: "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 512
    sget-object v24, Lorg/mapsforge/map/reader/MapDatabase;->LOG:Ljava/util/logging/Logger;

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "sub-file size: "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    iget-wide v0, v0, Lorg/mapsforge/map/reader/header/SubFileParameter;->subFileSize:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 522
    .restart local v12    # "currentBlockSize":I
    :cond_8
    if-eqz v12, :cond_9

    .line 524
    const v24, 0x2625a0

    move/from16 v0, v24

    if-le v12, v0, :cond_a

    .line 527
    sget-object v24, Lorg/mapsforge/map/reader/MapDatabase;->LOG:Ljava/util/logging/Logger;

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "current block size too large: "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 478
    :cond_9
    :goto_4
    const-wide/16 v24, 0x1

    add-long v6, v6, v24

    goto/16 :goto_1

    .line 529
    :cond_a
    int-to-long v0, v12

    move-wide/from16 v24, v0

    add-long v24, v24, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mapsforge/map/reader/MapDatabase;->fileSize:J

    move-wide/from16 v26, v0

    cmp-long v24, v24, v26

    if-lez v24, :cond_b

    .line 530
    sget-object v24, Lorg/mapsforge/map/reader/MapDatabase;->LOG:Ljava/util/logging/Logger;

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "current block largher than file size: "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 535
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapsforge/map/reader/MapDatabase;->inputFile:Ljava/io/RandomAccessFile;

    move-object/from16 v24, v0

    move-object/from16 v0, p3

    iget-wide v0, v0, Lorg/mapsforge/map/reader/header/SubFileParameter;->startAddress:J

    move-wide/from16 v25, v0

    add-long v25, v25, v10

    invoke-virtual/range {v24 .. v26}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapsforge/map/reader/MapDatabase;->readBuffer:Lorg/mapsforge/map/reader/ReadBuffer;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Lorg/mapsforge/map/reader/ReadBuffer;->readFromFile(I)Z

    move-result v24

    if-nez v24, :cond_c

    .line 540
    sget-object v24, Lorg/mapsforge/map/reader/MapDatabase;->LOG:Ljava/util/logging/Logger;

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "reading current block has failed: "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 545
    :cond_c
    move-object/from16 v0, p3

    iget-wide v0, v0, Lorg/mapsforge/map/reader/header/SubFileParameter;->boundaryTileTop:J

    move-wide/from16 v24, v0

    add-long v24, v24, v18

    move-object/from16 v0, p3

    iget-byte v0, v0, Lorg/mapsforge/map/reader/header/SubFileParameter;->baseZoomLevel:B

    move/from16 v26, v0

    const-wide/16 v27, 0x100

    mul-long v24, v24, v27

    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v26}, Lorg/mapsforge/core/MercatorProjection;->pixelYToLatitude(DB)D

    move-result-wide v20

    .line 547
    .local v20, "tileLatitudeDeg":D
    move-object/from16 v0, p3

    iget-wide v0, v0, Lorg/mapsforge/map/reader/header/SubFileParameter;->boundaryTileLeft:J

    move-wide/from16 v24, v0

    add-long v24, v24, v6

    move-object/from16 v0, p3

    iget-byte v0, v0, Lorg/mapsforge/map/reader/header/SubFileParameter;->baseZoomLevel:B

    move/from16 v26, v0

    const-wide/16 v27, 0x100

    mul-long v24, v24, v27

    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v26}, Lorg/mapsforge/core/MercatorProjection;->pixelXToLongitude(DB)D

    move-result-wide v22

    .line 549
    .local v22, "tileLongitudeDeg":D
    const-wide v24, 0x412e848000000000L    # 1000000.0

    mul-double v24, v24, v20

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mapsforge/map/reader/MapDatabase;->tileLatitude:I

    .line 550
    const-wide v24, 0x412e848000000000L    # 1000000.0

    mul-double v24, v24, v22

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mapsforge/map/reader/MapDatabase;->tileLongitude:I

    .line 553
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapsforge/map/reader/MapDatabase;->mapFileHeader:Lorg/mapsforge/map/reader/header/MapFileHeader;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/mapsforge/map/reader/header/MapFileHeader;->getMapFileInfo()Lorg/mapsforge/map/reader/header/MapFileInfo;

    move-result-object v24

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lorg/mapsforge/map/reader/header/MapFileInfo;->debugFile:Z

    move/from16 v24, v0

    if-eqz v24, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapsforge/map/reader/MapDatabase;->readBuffer:Lorg/mapsforge/map/reader/ReadBuffer;

    move-object/from16 v24, v0

    const/16 v25, 0x20

    invoke-virtual/range {v24 .. v25}, Lorg/mapsforge/map/reader/ReadBuffer;->readUTF8EncodedString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mapsforge/map/reader/MapDatabase;->signatureBlock:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapsforge/map/reader/MapDatabase;->signatureBlock:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, "###TileStart"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_d

    sget-object v24, Lorg/mapsforge/map/reader/MapDatabase;->LOG:Ljava/util/logging/Logger;

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "invalid block signature: "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapsforge/map/reader/MapDatabase;->signatureBlock:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    const/16 v24, 0x0

    :goto_5
    if-eqz v24, :cond_9

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lorg/mapsforge/map/reader/MapDatabase;->readZoomTable(Lorg/mapsforge/map/reader/header/SubFileParameter;)[[I

    move-result-object v24

    if-eqz v24, :cond_9

    move-object/from16 v0, p2

    iget v0, v0, Lorg/mapsforge/map/reader/QueryParameters;->queryZoomLevel:I

    move/from16 v25, v0

    move-object/from16 v0, p3

    iget-byte v0, v0, Lorg/mapsforge/map/reader/header/SubFileParameter;->zoomLevelMin:B

    move/from16 v26, v0

    sub-int v25, v25, v26

    aget-object v26, v24, v25

    const/16 v27, 0x0

    aget v26, v26, v27

    aget-object v24, v24, v25

    const/16 v25, 0x1

    aget v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapsforge/map/reader/MapDatabase;->readBuffer:Lorg/mapsforge/map/reader/ReadBuffer;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/mapsforge/map/reader/ReadBuffer;->readUnsignedInt()I

    move-result v25

    if-gez v25, :cond_e

    sget-object v24, Lorg/mapsforge/map/reader/MapDatabase;->LOG:Ljava/util/logging/Logger;

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "invalid first way offset: "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapsforge/map/reader/MapDatabase;->mapFileHeader:Lorg/mapsforge/map/reader/header/MapFileHeader;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/mapsforge/map/reader/header/MapFileHeader;->getMapFileInfo()Lorg/mapsforge/map/reader/header/MapFileInfo;

    move-result-object v24

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lorg/mapsforge/map/reader/header/MapFileInfo;->debugFile:Z

    move/from16 v24, v0

    if-eqz v24, :cond_9

    sget-object v24, Lorg/mapsforge/map/reader/MapDatabase;->LOG:Ljava/util/logging/Logger;

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "block signature: "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapsforge/map/reader/MapDatabase;->signatureBlock:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    .line 554
    :catch_0
    move-exception v13

    .line 555
    .local v13, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    sget-object v24, Lorg/mapsforge/map/reader/MapDatabase;->LOG:Ljava/util/logging/Logger;

    sget-object v25, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2, v13}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 553
    .end local v13    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_d
    const/16 v24, 0x1

    goto/16 :goto_5

    :cond_e
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapsforge/map/reader/MapDatabase;->readBuffer:Lorg/mapsforge/map/reader/ReadBuffer;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lorg/mapsforge/map/reader/ReadBuffer;->getBufferPosition()I

    move-result v27

    add-int v25, v25, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapsforge/map/reader/MapDatabase;->readBuffer:Lorg/mapsforge/map/reader/ReadBuffer;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lorg/mapsforge/map/reader/ReadBuffer;->getBufferSize()I

    move-result v27

    move/from16 v0, v25

    move/from16 v1, v27

    if-le v0, v1, :cond_f

    sget-object v24, Lorg/mapsforge/map/reader/MapDatabase;->LOG:Ljava/util/logging/Logger;

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "invalid first way offset: "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapsforge/map/reader/MapDatabase;->mapFileHeader:Lorg/mapsforge/map/reader/header/MapFileHeader;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/mapsforge/map/reader/header/MapFileHeader;->getMapFileInfo()Lorg/mapsforge/map/reader/header/MapFileInfo;

    move-result-object v24

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lorg/mapsforge/map/reader/header/MapFileInfo;->debugFile:Z

    move/from16 v24, v0

    if-eqz v24, :cond_9

    sget-object v24, Lorg/mapsforge/map/reader/MapDatabase;->LOG:Ljava/util/logging/Logger;

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "block signature: "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapsforge/map/reader/MapDatabase;->signatureBlock:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lorg/mapsforge/map/reader/MapDatabase;->processPOIs(Lorg/mapsforge/map/reader/MapDatabaseCallback;I)Z

    move-result v26

    if-eqz v26, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapsforge/map/reader/MapDatabase;->readBuffer:Lorg/mapsforge/map/reader/ReadBuffer;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/mapsforge/map/reader/ReadBuffer;->getBufferPosition()I

    move-result v26

    move/from16 v0, v26

    move/from16 v1, v25

    if-le v0, v1, :cond_10

    sget-object v24, Lorg/mapsforge/map/reader/MapDatabase;->LOG:Ljava/util/logging/Logger;

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "invalid buffer position: "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapsforge/map/reader/MapDatabase;->readBuffer:Lorg/mapsforge/map/reader/ReadBuffer;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/mapsforge/map/reader/ReadBuffer;->getBufferPosition()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapsforge/map/reader/MapDatabase;->mapFileHeader:Lorg/mapsforge/map/reader/header/MapFileHeader;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/mapsforge/map/reader/header/MapFileHeader;->getMapFileInfo()Lorg/mapsforge/map/reader/header/MapFileInfo;

    move-result-object v24

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lorg/mapsforge/map/reader/header/MapFileInfo;->debugFile:Z

    move/from16 v24, v0

    if-eqz v24, :cond_9

    sget-object v24, Lorg/mapsforge/map/reader/MapDatabase;->LOG:Ljava/util/logging/Logger;

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "block signature: "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapsforge/map/reader/MapDatabase;->signatureBlock:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapsforge/map/reader/MapDatabase;->readBuffer:Lorg/mapsforge/map/reader/ReadBuffer;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/mapsforge/map/reader/ReadBuffer;->setBufferPosition(I)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lorg/mapsforge/map/reader/MapDatabase;->processWays(Lorg/mapsforge/map/reader/QueryParameters;Lorg/mapsforge/map/reader/MapDatabaseCallback;I)Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    .line 477
    .end local v4    # "blockNumber":J
    .end local v8    # "currentBlockIndexEntry":J
    .end local v10    # "currentBlockPointer":J
    .end local v12    # "currentBlockSize":I
    .end local v14    # "nextBlockPointer":J
    .end local v20    # "tileLatitudeDeg":D
    .end local v22    # "tileLongitudeDeg":D
    :cond_11
    const-wide/16 v24, 0x1

    add-long v18, v18, v24

    goto/16 :goto_0

    .line 561
    .end local v6    # "column":J
    :cond_12
    if-eqz v16, :cond_2

    if-eqz v17, :cond_2

    .line 562
    invoke-interface/range {p1 .. p1}, Lorg/mapsforge/map/reader/MapDatabaseCallback;->renderWaterBackground()V

    goto/16 :goto_3
.end method

.method private processPOIs(Lorg/mapsforge/map/reader/MapDatabaseCallback;I)Z
    .locals 18
    .param p1, "mapDatabaseCallback"    # Lorg/mapsforge/map/reader/MapDatabaseCallback;
    .param p2, "numberOfPois"    # I

    .prologue
    .line 593
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 594
    .local v14, "tags":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/core/Tag;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/mapsforge/map/reader/MapDatabase;->mapFileHeader:Lorg/mapsforge/map/reader/header/MapFileHeader;

    invoke-virtual {v15}, Lorg/mapsforge/map/reader/header/MapFileHeader;->getMapFileInfo()Lorg/mapsforge/map/reader/header/MapFileInfo;

    move-result-object v15

    iget-object v10, v15, Lorg/mapsforge/map/reader/header/MapFileInfo;->poiTags:[Lorg/mapsforge/core/Tag;

    .line 596
    .local v10, "poiTags":[Lorg/mapsforge/core/Tag;
    move/from16 v1, p2

    .local v1, "elementCounter":I
    :goto_0
    if-eqz v1, :cond_b

    .line 597
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/mapsforge/map/reader/MapDatabase;->mapFileHeader:Lorg/mapsforge/map/reader/header/MapFileHeader;

    invoke-virtual {v15}, Lorg/mapsforge/map/reader/header/MapFileHeader;->getMapFileInfo()Lorg/mapsforge/map/reader/header/MapFileInfo;

    move-result-object v15

    iget-boolean v15, v15, Lorg/mapsforge/map/reader/header/MapFileInfo;->debugFile:Z

    if-eqz v15, :cond_0

    .line 599
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/mapsforge/map/reader/MapDatabase;->readBuffer:Lorg/mapsforge/map/reader/ReadBuffer;

    const/16 v16, 0x20

    invoke-virtual/range {v15 .. v16}, Lorg/mapsforge/map/reader/ReadBuffer;->readUTF8EncodedString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/mapsforge/map/reader/MapDatabase;->signaturePoi:Ljava/lang/String;

    .line 600
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/mapsforge/map/reader/MapDatabase;->signaturePoi:Ljava/lang/String;

    const-string v16, "***POIStart"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 601
    sget-object v15, Lorg/mapsforge/map/reader/MapDatabase;->LOG:Ljava/util/logging/Logger;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "invalid POI signature: "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapsforge/map/reader/MapDatabase;->signaturePoi:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 602
    sget-object v15, Lorg/mapsforge/map/reader/MapDatabase;->LOG:Ljava/util/logging/Logger;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "block signature: "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapsforge/map/reader/MapDatabase;->signatureBlock:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 603
    const/4 v15, 0x0

    .line 663
    :goto_1
    return v15

    .line 608
    :cond_0
    move-object/from16 v0, p0

    iget v15, v0, Lorg/mapsforge/map/reader/MapDatabase;->tileLatitude:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapsforge/map/reader/MapDatabase;->readBuffer:Lorg/mapsforge/map/reader/ReadBuffer;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/mapsforge/map/reader/ReadBuffer;->readSignedInt()I

    move-result v16

    add-int v6, v15, v16

    .line 611
    .local v6, "latitude":I
    move-object/from16 v0, p0

    iget v15, v0, Lorg/mapsforge/map/reader/MapDatabase;->tileLongitude:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapsforge/map/reader/MapDatabase;->readBuffer:Lorg/mapsforge/map/reader/ReadBuffer;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/mapsforge/map/reader/ReadBuffer;->readSignedInt()I

    move-result v16

    add-int v8, v15, v16

    .line 614
    .local v8, "longitude":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/mapsforge/map/reader/MapDatabase;->readBuffer:Lorg/mapsforge/map/reader/ReadBuffer;

    invoke-virtual {v15}, Lorg/mapsforge/map/reader/ReadBuffer;->readByte()B

    move-result v11

    .line 617
    .local v11, "specialByte":B
    and-int/lit16 v15, v11, 0xf0

    ushr-int/lit8 v15, v15, 0x4

    int-to-byte v7, v15

    .line 619
    .local v7, "layer":B
    and-int/lit8 v15, v11, 0xf

    int-to-byte v9, v15

    .line 621
    .local v9, "numberOfTags":B
    invoke-interface {v14}, Ljava/util/List;->clear()V

    .line 624
    move v13, v9

    .local v13, "tagIndex":B
    :goto_2
    if-eqz v13, :cond_4

    .line 625
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/mapsforge/map/reader/MapDatabase;->readBuffer:Lorg/mapsforge/map/reader/ReadBuffer;

    invoke-virtual {v15}, Lorg/mapsforge/map/reader/ReadBuffer;->readUnsignedInt()I

    move-result v12

    .line 626
    .local v12, "tagId":I
    if-ltz v12, :cond_1

    array-length v15, v10

    if-lt v12, v15, :cond_3

    .line 627
    :cond_1
    sget-object v15, Lorg/mapsforge/map/reader/MapDatabase;->LOG:Ljava/util/logging/Logger;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "invalid POI tag ID: "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 628
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/mapsforge/map/reader/MapDatabase;->mapFileHeader:Lorg/mapsforge/map/reader/header/MapFileHeader;

    invoke-virtual {v15}, Lorg/mapsforge/map/reader/header/MapFileHeader;->getMapFileInfo()Lorg/mapsforge/map/reader/header/MapFileInfo;

    move-result-object v15

    iget-boolean v15, v15, Lorg/mapsforge/map/reader/header/MapFileInfo;->debugFile:Z

    if-eqz v15, :cond_2

    .line 629
    sget-object v15, Lorg/mapsforge/map/reader/MapDatabase;->LOG:Ljava/util/logging/Logger;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "POI signature: "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapsforge/map/reader/MapDatabase;->signaturePoi:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 630
    sget-object v15, Lorg/mapsforge/map/reader/MapDatabase;->LOG:Ljava/util/logging/Logger;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "block signature: "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapsforge/map/reader/MapDatabase;->signatureBlock:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 632
    :cond_2
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 634
    :cond_3
    aget-object v15, v10, v12

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 624
    add-int/lit8 v15, v13, -0x1

    int-to-byte v13, v15

    goto :goto_2

    .line 638
    .end local v12    # "tagId":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/mapsforge/map/reader/MapDatabase;->readBuffer:Lorg/mapsforge/map/reader/ReadBuffer;

    invoke-virtual {v15}, Lorg/mapsforge/map/reader/ReadBuffer;->readByte()B

    move-result v2

    .line 641
    .local v2, "featureByte":B
    and-int/lit16 v15, v2, 0x80

    if-eqz v15, :cond_8

    const/4 v5, 0x1

    .line 642
    .local v5, "featureName":Z
    :goto_3
    and-int/lit8 v15, v2, 0x40

    if-eqz v15, :cond_9

    const/4 v4, 0x1

    .line 643
    .local v4, "featureHouseNumber":Z
    :goto_4
    and-int/lit8 v15, v2, 0x20

    if-eqz v15, :cond_a

    const/4 v3, 0x1

    .line 646
    .local v3, "featureElevation":Z
    :goto_5
    if-eqz v5, :cond_5

    .line 647
    new-instance v15, Lorg/mapsforge/core/Tag;

    const-string v16, "name"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapsforge/map/reader/MapDatabase;->readBuffer:Lorg/mapsforge/map/reader/ReadBuffer;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/mapsforge/map/reader/ReadBuffer;->readUTF8EncodedString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Lorg/mapsforge/core/Tag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 651
    :cond_5
    if-eqz v4, :cond_6

    .line 652
    new-instance v15, Lorg/mapsforge/core/Tag;

    const-string v16, "addr:housenumber"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapsforge/map/reader/MapDatabase;->readBuffer:Lorg/mapsforge/map/reader/ReadBuffer;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/mapsforge/map/reader/ReadBuffer;->readUTF8EncodedString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Lorg/mapsforge/core/Tag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 656
    :cond_6
    if-eqz v3, :cond_7

    .line 657
    new-instance v15, Lorg/mapsforge/core/Tag;

    const-string v16, "ele"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapsforge/map/reader/MapDatabase;->readBuffer:Lorg/mapsforge/map/reader/ReadBuffer;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/mapsforge/map/reader/ReadBuffer;->readSignedInt()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Lorg/mapsforge/core/Tag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 660
    :cond_7
    move-object/from16 v0, p1

    invoke-interface {v0, v7, v6, v8, v14}, Lorg/mapsforge/map/reader/MapDatabaseCallback;->renderPointOfInterest(BIILjava/util/List;)V

    .line 596
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    .line 641
    .end local v3    # "featureElevation":Z
    .end local v4    # "featureHouseNumber":Z
    .end local v5    # "featureName":Z
    :cond_8
    const/4 v5, 0x0

    goto :goto_3

    .line 642
    .restart local v5    # "featureName":Z
    :cond_9
    const/4 v4, 0x0

    goto :goto_4

    .line 643
    .restart local v4    # "featureHouseNumber":Z
    :cond_a
    const/4 v3, 0x0

    goto :goto_5

    .line 663
    .end local v2    # "featureByte":B
    .end local v4    # "featureHouseNumber":Z
    .end local v5    # "featureName":Z
    .end local v6    # "latitude":I
    .end local v7    # "layer":B
    .end local v8    # "longitude":I
    .end local v9    # "numberOfTags":B
    .end local v11    # "specialByte":B
    .end local v13    # "tagIndex":B
    :cond_b
    const/4 v15, 0x1

    goto/16 :goto_1
.end method

.method private processWayDataBlock(Z)[[F
    .locals 9
    .param p1, "doubleDeltaEncoding"    # Z

    .prologue
    const/4 v5, 0x0

    .line 668
    iget-object v6, p0, Lorg/mapsforge/map/reader/MapDatabase;->readBuffer:Lorg/mapsforge/map/reader/ReadBuffer;

    invoke-virtual {v6}, Lorg/mapsforge/map/reader/ReadBuffer;->readUnsignedInt()I

    move-result v1

    .line 669
    .local v1, "numberOfWayCoordinateBlocks":I
    if-lez v1, :cond_0

    const/16 v6, 0x7fff

    if-le v1, v6, :cond_2

    .line 670
    :cond_0
    sget-object v6, Lorg/mapsforge/map/reader/MapDatabase;->LOG:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "invalid number of way coordinate blocks: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 671
    invoke-direct {p0}, Lorg/mapsforge/map/reader/MapDatabase;->logDebugSignatures()V

    move-object v3, v5

    .line 703
    :cond_1
    :goto_0
    return-object v3

    .line 676
    :cond_2
    new-array v3, v1, [[F

    .line 679
    .local v3, "wayCoordinates":[[F
    const/4 v0, 0x0

    .local v0, "coordinateBlock":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 681
    iget-object v6, p0, Lorg/mapsforge/map/reader/MapDatabase;->readBuffer:Lorg/mapsforge/map/reader/ReadBuffer;

    invoke-virtual {v6}, Lorg/mapsforge/map/reader/ReadBuffer;->readUnsignedInt()I

    move-result v2

    .line 682
    .local v2, "numberOfWayNodes":I
    const/4 v6, 0x2

    if-lt v2, v6, :cond_3

    const/16 v6, 0x2000

    if-le v2, v6, :cond_4

    .line 683
    :cond_3
    sget-object v6, Lorg/mapsforge/map/reader/MapDatabase;->LOG:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "invalid number of way nodes: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 684
    invoke-direct {p0}, Lorg/mapsforge/map/reader/MapDatabase;->logDebugSignatures()V

    move-object v3, v5

    .line 685
    goto :goto_0

    .line 689
    :cond_4
    mul-int/lit8 v6, v2, 0x2

    .line 692
    new-array v4, v6, [F

    .line 694
    .local v4, "waySegment":[F
    if-eqz p1, :cond_5

    .line 695
    invoke-direct {p0, v4}, Lorg/mapsforge/map/reader/MapDatabase;->decodeWayNodesDoubleDelta([F)V

    .line 700
    :goto_2
    aput-object v4, v3, v0

    .line 679
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 697
    :cond_5
    invoke-direct {p0, v4}, Lorg/mapsforge/map/reader/MapDatabase;->decodeWayNodesSingleDelta([F)V

    goto :goto_2
.end method

.method private processWays(Lorg/mapsforge/map/reader/QueryParameters;Lorg/mapsforge/map/reader/MapDatabaseCallback;I)Z
    .locals 26
    .param p1, "queryParameters"    # Lorg/mapsforge/map/reader/QueryParameters;
    .param p2, "mapDatabaseCallback"    # Lorg/mapsforge/map/reader/MapDatabaseCallback;
    .param p3, "numberOfWays"    # I

    .prologue
    .line 719
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 720
    .local v15, "tags":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/core/Tag;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapsforge/map/reader/MapDatabase;->mapFileHeader:Lorg/mapsforge/map/reader/header/MapFileHeader;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/mapsforge/map/reader/header/MapFileHeader;->getMapFileInfo()Lorg/mapsforge/map/reader/header/MapFileInfo;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/mapsforge/map/reader/header/MapFileInfo;->wayTags:[Lorg/mapsforge/core/Tag;

    move-object/from16 v21, v0

    .line 722
    .local v21, "wayTags":[Lorg/mapsforge/core/Tag;
    move/from16 v2, p3

    .local v2, "elementCounter":I
    :goto_0
    if-eqz v2, :cond_16

    .line 723
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapsforge/map/reader/MapDatabase;->mapFileHeader:Lorg/mapsforge/map/reader/header/MapFileHeader;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/mapsforge/map/reader/header/MapFileHeader;->getMapFileInfo()Lorg/mapsforge/map/reader/header/MapFileInfo;

    move-result-object v22

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lorg/mapsforge/map/reader/header/MapFileInfo;->debugFile:Z

    move/from16 v22, v0

    if-eqz v22, :cond_0

    .line 725
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapsforge/map/reader/MapDatabase;->readBuffer:Lorg/mapsforge/map/reader/ReadBuffer;

    move-object/from16 v22, v0

    const/16 v23, 0x20

    invoke-virtual/range {v22 .. v23}, Lorg/mapsforge/map/reader/ReadBuffer;->readUTF8EncodedString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mapsforge/map/reader/MapDatabase;->signatureWay:Ljava/lang/String;

    .line 726
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapsforge/map/reader/MapDatabase;->signatureWay:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, "---WayStart"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_0

    .line 727
    sget-object v22, Lorg/mapsforge/map/reader/MapDatabase;->LOG:Ljava/util/logging/Logger;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "invalid way signature: "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapsforge/map/reader/MapDatabase;->signatureWay:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 728
    sget-object v22, Lorg/mapsforge/map/reader/MapDatabase;->LOG:Ljava/util/logging/Logger;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "block signature: "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapsforge/map/reader/MapDatabase;->signatureBlock:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 729
    const/16 v22, 0x0

    .line 821
    :goto_1
    return v22

    .line 734
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapsforge/map/reader/MapDatabase;->readBuffer:Lorg/mapsforge/map/reader/ReadBuffer;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/mapsforge/map/reader/ReadBuffer;->readUnsignedInt()I

    move-result v19

    .line 735
    .local v19, "wayDataSize":I
    if-gez v19, :cond_2

    .line 736
    sget-object v22, Lorg/mapsforge/map/reader/MapDatabase;->LOG:Ljava/util/logging/Logger;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "invalid way data size: "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 737
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapsforge/map/reader/MapDatabase;->mapFileHeader:Lorg/mapsforge/map/reader/header/MapFileHeader;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/mapsforge/map/reader/header/MapFileHeader;->getMapFileInfo()Lorg/mapsforge/map/reader/header/MapFileInfo;

    move-result-object v22

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lorg/mapsforge/map/reader/header/MapFileInfo;->debugFile:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1

    .line 738
    sget-object v22, Lorg/mapsforge/map/reader/MapDatabase;->LOG:Ljava/util/logging/Logger;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "block signature: "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapsforge/map/reader/MapDatabase;->signatureBlock:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 740
    :cond_1
    const/16 v22, 0x0

    goto :goto_1

    .line 743
    :cond_2
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lorg/mapsforge/map/reader/QueryParameters;->useTileBitmask:Z

    move/from16 v22, v0

    if-eqz v22, :cond_4

    .line 745
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapsforge/map/reader/MapDatabase;->readBuffer:Lorg/mapsforge/map/reader/ReadBuffer;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/mapsforge/map/reader/ReadBuffer;->readShort()I

    move-result v16

    .line 747
    .local v16, "tileBitmask":I
    move-object/from16 v0, p1

    iget v0, v0, Lorg/mapsforge/map/reader/QueryParameters;->queryTileBitmask:I

    move/from16 v22, v0

    and-int v22, v22, v16

    if-nez v22, :cond_5

    .line 749
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapsforge/map/reader/MapDatabase;->readBuffer:Lorg/mapsforge/map/reader/ReadBuffer;

    move-object/from16 v22, v0

    add-int/lit8 v23, v19, -0x2

    invoke-virtual/range {v22 .. v23}, Lorg/mapsforge/map/reader/ReadBuffer;->skipBytes(I)V

    .line 722
    .end local v16    # "tileBitmask":I
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    .line 754
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapsforge/map/reader/MapDatabase;->readBuffer:Lorg/mapsforge/map/reader/ReadBuffer;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    invoke-virtual/range {v22 .. v23}, Lorg/mapsforge/map/reader/ReadBuffer;->skipBytes(I)V

    .line 758
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapsforge/map/reader/MapDatabase;->readBuffer:Lorg/mapsforge/map/reader/ReadBuffer;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/mapsforge/map/reader/ReadBuffer;->readByte()B

    move-result v12

    .line 761
    .local v12, "specialByte":B
    and-int/lit16 v0, v12, 0xf0

    move/from16 v22, v0

    ushr-int/lit8 v22, v22, 0x4

    move/from16 v0, v22

    int-to-byte v10, v0

    .line 763
    .local v10, "layer":B
    and-int/lit8 v22, v12, 0xf

    move/from16 v0, v22

    int-to-byte v11, v0

    .line 765
    .local v11, "numberOfTags":B
    invoke-interface {v15}, Ljava/util/List;->clear()V

    .line 767
    move v14, v11

    .local v14, "tagIndex":B
    :goto_2
    if-eqz v14, :cond_8

    .line 768
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapsforge/map/reader/MapDatabase;->readBuffer:Lorg/mapsforge/map/reader/ReadBuffer;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/mapsforge/map/reader/ReadBuffer;->readUnsignedInt()I

    move-result v13

    .line 769
    .local v13, "tagId":I
    if-ltz v13, :cond_6

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v13, v0, :cond_7

    .line 770
    :cond_6
    sget-object v22, Lorg/mapsforge/map/reader/MapDatabase;->LOG:Ljava/util/logging/Logger;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "invalid way tag ID: "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 771
    invoke-direct/range {p0 .. p0}, Lorg/mapsforge/map/reader/MapDatabase;->logDebugSignatures()V

    .line 772
    const/16 v22, 0x0

    goto/16 :goto_1

    .line 774
    :cond_7
    aget-object v22, v21, v13

    move-object/from16 v0, v22

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 767
    add-int/lit8 v22, v14, -0x1

    move/from16 v0, v22

    int-to-byte v14, v0

    goto :goto_2

    .line 778
    .end local v13    # "tagId":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapsforge/map/reader/MapDatabase;->readBuffer:Lorg/mapsforge/map/reader/ReadBuffer;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/mapsforge/map/reader/ReadBuffer;->readByte()B

    move-result v3

    .line 781
    .local v3, "featureByte":B
    and-int/lit16 v0, v3, 0x80

    move/from16 v22, v0

    if-eqz v22, :cond_d

    const/4 v6, 0x1

    .line 782
    .local v6, "featureName":Z
    :goto_3
    and-int/lit8 v22, v3, 0x40

    if-eqz v22, :cond_e

    const/4 v4, 0x1

    .line 783
    .local v4, "featureHouseNumber":Z
    :goto_4
    and-int/lit8 v22, v3, 0x20

    if-eqz v22, :cond_f

    const/4 v7, 0x1

    .line 784
    .local v7, "featureRef":Z
    :goto_5
    and-int/lit8 v22, v3, 0x10

    if-eqz v22, :cond_10

    const/4 v5, 0x1

    .line 785
    .local v5, "featureLabelPosition":Z
    :goto_6
    and-int/lit8 v22, v3, 0x8

    if-eqz v22, :cond_11

    const/4 v8, 0x1

    .line 786
    .local v8, "featureWayDataBlocksByte":Z
    :goto_7
    and-int/lit8 v22, v3, 0x4

    if-eqz v22, :cond_12

    const/4 v9, 0x1

    .line 789
    .local v9, "featureWayDoubleDeltaEncoding":Z
    :goto_8
    if-eqz v6, :cond_9

    .line 790
    new-instance v22, Lorg/mapsforge/core/Tag;

    const-string v23, "name"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapsforge/map/reader/MapDatabase;->readBuffer:Lorg/mapsforge/map/reader/ReadBuffer;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/mapsforge/map/reader/ReadBuffer;->readUTF8EncodedString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v22 .. v24}, Lorg/mapsforge/core/Tag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 794
    :cond_9
    if-eqz v4, :cond_a

    .line 795
    new-instance v22, Lorg/mapsforge/core/Tag;

    const-string v23, "addr:housenumber"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapsforge/map/reader/MapDatabase;->readBuffer:Lorg/mapsforge/map/reader/ReadBuffer;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/mapsforge/map/reader/ReadBuffer;->readUTF8EncodedString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v22 .. v24}, Lorg/mapsforge/core/Tag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 799
    :cond_a
    if-eqz v7, :cond_b

    .line 800
    new-instance v22, Lorg/mapsforge/core/Tag;

    const-string v23, "ref"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapsforge/map/reader/MapDatabase;->readBuffer:Lorg/mapsforge/map/reader/ReadBuffer;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/mapsforge/map/reader/ReadBuffer;->readUTF8EncodedString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v22 .. v24}, Lorg/mapsforge/core/Tag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 803
    :cond_b
    if-eqz v5, :cond_c

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mapsforge/map/reader/MapDatabase;->tileLatitude:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapsforge/map/reader/MapDatabase;->readBuffer:Lorg/mapsforge/map/reader/ReadBuffer;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/mapsforge/map/reader/ReadBuffer;->readSignedInt()I

    move-result v25

    add-int v24, v24, v25

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    aput v24, v22, v23

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mapsforge/map/reader/MapDatabase;->tileLongitude:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapsforge/map/reader/MapDatabase;->readBuffer:Lorg/mapsforge/map/reader/ReadBuffer;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/mapsforge/map/reader/ReadBuffer;->readSignedInt()I

    move-result v25

    add-int v24, v24, v25

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    aput v24, v22, v23

    .line 805
    :cond_c
    if-eqz v8, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapsforge/map/reader/MapDatabase;->readBuffer:Lorg/mapsforge/map/reader/ReadBuffer;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/mapsforge/map/reader/ReadBuffer;->readUnsignedInt()I

    move-result v18

    .line 806
    .local v18, "wayDataBlocks":I
    :goto_9
    if-gtz v18, :cond_14

    .line 807
    sget-object v22, Lorg/mapsforge/map/reader/MapDatabase;->LOG:Ljava/util/logging/Logger;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "invalid number of way data blocks: "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 808
    invoke-direct/range {p0 .. p0}, Lorg/mapsforge/map/reader/MapDatabase;->logDebugSignatures()V

    .line 809
    const/16 v22, 0x0

    goto/16 :goto_1

    .line 781
    .end local v4    # "featureHouseNumber":Z
    .end local v5    # "featureLabelPosition":Z
    .end local v6    # "featureName":Z
    .end local v7    # "featureRef":Z
    .end local v8    # "featureWayDataBlocksByte":Z
    .end local v9    # "featureWayDoubleDeltaEncoding":Z
    .end local v18    # "wayDataBlocks":I
    :cond_d
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 782
    .restart local v6    # "featureName":Z
    :cond_e
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 783
    .restart local v4    # "featureHouseNumber":Z
    :cond_f
    const/4 v7, 0x0

    goto/16 :goto_5

    .line 784
    .restart local v7    # "featureRef":Z
    :cond_10
    const/4 v5, 0x0

    goto/16 :goto_6

    .line 785
    .restart local v5    # "featureLabelPosition":Z
    :cond_11
    const/4 v8, 0x0

    goto/16 :goto_7

    .line 786
    .restart local v8    # "featureWayDataBlocksByte":Z
    :cond_12
    const/4 v9, 0x0

    goto/16 :goto_8

    .line 805
    .restart local v9    # "featureWayDoubleDeltaEncoding":Z
    :cond_13
    const/16 v18, 0x1

    goto :goto_9

    .line 812
    .restart local v18    # "wayDataBlocks":I
    :cond_14
    const/16 v17, 0x0

    .local v17, "wayDataBlock":I
    :goto_a
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    .line 813
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lorg/mapsforge/map/reader/MapDatabase;->processWayDataBlock(Z)[[F

    move-result-object v20

    .line 814
    .local v20, "wayNodes":[[F
    if-nez v20, :cond_15

    .line 815
    const/16 v22, 0x0

    goto/16 :goto_1

    .line 817
    :cond_15
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-interface {v0, v10, v15, v1}, Lorg/mapsforge/map/reader/MapDatabaseCallback;->renderWay$262a1f5d(BLjava/util/List;[[F)V

    .line 812
    add-int/lit8 v17, v17, 0x1

    goto :goto_a

    .line 821
    .end local v3    # "featureByte":B
    .end local v4    # "featureHouseNumber":Z
    .end local v5    # "featureLabelPosition":Z
    .end local v6    # "featureName":Z
    .end local v7    # "featureRef":Z
    .end local v8    # "featureWayDataBlocksByte":Z
    .end local v9    # "featureWayDoubleDeltaEncoding":Z
    .end local v10    # "layer":B
    .end local v11    # "numberOfTags":B
    .end local v12    # "specialByte":B
    .end local v14    # "tagIndex":B
    .end local v17    # "wayDataBlock":I
    .end local v18    # "wayDataBlocks":I
    .end local v19    # "wayDataSize":I
    .end local v20    # "wayNodes":[[F
    :cond_16
    const/16 v22, 0x1

    goto/16 :goto_1
.end method

.method private readZoomTable(Lorg/mapsforge/map/reader/header/SubFileParameter;)[[I
    .locals 10
    .param p1, "subFileParameter"    # Lorg/mapsforge/map/reader/header/SubFileParameter;

    .prologue
    const/4 v5, 0x0

    const/high16 v8, 0x10000

    const/16 v9, 0x20

    .line 848
    iget-byte v6, p1, Lorg/mapsforge/map/reader/header/SubFileParameter;->zoomLevelMax:B

    iget-byte v7, p1, Lorg/mapsforge/map/reader/header/SubFileParameter;->zoomLevelMin:B

    sub-int/2addr v6, v7

    add-int/lit8 v3, v6, 0x1

    .line 849
    .local v3, "rows":I
    const/4 v6, 0x2

    filled-new-array {v3, v6}, [I

    move-result-object v6

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    .line 851
    .local v4, "zoomTable":[[I
    const/4 v0, 0x0

    .line 852
    .local v0, "cumulatedNumberOfPois":I
    const/4 v1, 0x0

    .line 854
    .local v1, "cumulatedNumberOfWays":I
    const/4 v2, 0x0

    .local v2, "row":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 855
    iget-object v6, p0, Lorg/mapsforge/map/reader/MapDatabase;->readBuffer:Lorg/mapsforge/map/reader/ReadBuffer;

    invoke-virtual {v6}, Lorg/mapsforge/map/reader/ReadBuffer;->readUnsignedInt()I

    move-result v6

    add-int/2addr v0, v6

    .line 856
    iget-object v6, p0, Lorg/mapsforge/map/reader/MapDatabase;->readBuffer:Lorg/mapsforge/map/reader/ReadBuffer;

    invoke-virtual {v6}, Lorg/mapsforge/map/reader/ReadBuffer;->readUnsignedInt()I

    move-result v6

    add-int/2addr v1, v6

    .line 858
    if-ltz v0, :cond_0

    if-le v0, v8, :cond_3

    .line 859
    :cond_0
    sget-object v6, Lorg/mapsforge/map/reader/MapDatabase;->LOG:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "invalid cumulated number of POIs in row "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 860
    iget-object v6, p0, Lorg/mapsforge/map/reader/MapDatabase;->mapFileHeader:Lorg/mapsforge/map/reader/header/MapFileHeader;

    invoke-virtual {v6}, Lorg/mapsforge/map/reader/header/MapFileHeader;->getMapFileInfo()Lorg/mapsforge/map/reader/header/MapFileInfo;

    move-result-object v6

    iget-boolean v6, v6, Lorg/mapsforge/map/reader/header/MapFileInfo;->debugFile:Z

    if-eqz v6, :cond_1

    .line 861
    sget-object v6, Lorg/mapsforge/map/reader/MapDatabase;->LOG:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "block signature: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lorg/mapsforge/map/reader/MapDatabase;->signatureBlock:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_1
    move-object v4, v5

    .line 876
    .end local v4    # "zoomTable":[[I
    :cond_2
    :goto_1
    return-object v4

    .line 864
    .restart local v4    # "zoomTable":[[I
    :cond_3
    if-ltz v1, :cond_4

    if-le v1, v8, :cond_6

    .line 865
    :cond_4
    sget-object v6, Lorg/mapsforge/map/reader/MapDatabase;->LOG:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "invalid cumulated number of ways in row "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 866
    iget-object v6, p0, Lorg/mapsforge/map/reader/MapDatabase;->mapFileHeader:Lorg/mapsforge/map/reader/header/MapFileHeader;

    invoke-virtual {v6}, Lorg/mapsforge/map/reader/header/MapFileHeader;->getMapFileInfo()Lorg/mapsforge/map/reader/header/MapFileInfo;

    move-result-object v6

    iget-boolean v6, v6, Lorg/mapsforge/map/reader/header/MapFileInfo;->debugFile:Z

    if-eqz v6, :cond_5

    .line 867
    sget-object v6, Lorg/mapsforge/map/reader/MapDatabase;->LOG:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "block signature: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lorg/mapsforge/map/reader/MapDatabase;->signatureBlock:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_5
    move-object v4, v5

    .line 869
    goto :goto_1

    .line 872
    :cond_6
    aget-object v6, v4, v2

    const/4 v7, 0x0

    aput v0, v6, v7

    .line 873
    aget-object v6, v4, v2

    const/4 v7, 0x1

    aput v1, v6, v7

    .line 854
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public final closeFile()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 217
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lorg/mapsforge/map/reader/MapDatabase;->mapFileHeader:Lorg/mapsforge/map/reader/header/MapFileHeader;

    .line 219
    iget-object v1, p0, Lorg/mapsforge/map/reader/MapDatabase;->databaseIndexCache:Lorg/mapsforge/map/reader/IndexCache;

    if-eqz v1, :cond_0

    .line 220
    iget-object v1, p0, Lorg/mapsforge/map/reader/MapDatabase;->databaseIndexCache:Lorg/mapsforge/map/reader/IndexCache;

    invoke-virtual {v1}, Lorg/mapsforge/map/reader/IndexCache;->destroy()V

    .line 221
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mapsforge/map/reader/MapDatabase;->databaseIndexCache:Lorg/mapsforge/map/reader/IndexCache;

    .line 224
    :cond_0
    iget-object v1, p0, Lorg/mapsforge/map/reader/MapDatabase;->inputFile:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_1

    .line 225
    iget-object v1, p0, Lorg/mapsforge/map/reader/MapDatabase;->inputFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 226
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mapsforge/map/reader/MapDatabase;->inputFile:Ljava/io/RandomAccessFile;

    .line 229
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mapsforge/map/reader/MapDatabase;->readBuffer:Lorg/mapsforge/map/reader/ReadBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :goto_0
    return-void

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lorg/mapsforge/map/reader/MapDatabase;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final executeQuery(Lorg/mapsforge/core/Tile;Lorg/mapsforge/map/reader/MapDatabaseCallback;)V
    .locals 18
    .param p1, "tile"    # Lorg/mapsforge/core/Tile;
    .param p2, "mapDatabaseCallback"    # Lorg/mapsforge/map/reader/MapDatabaseCallback;

    .prologue
    .line 245
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapsforge/map/reader/MapDatabase;->databaseIndexCache:Lorg/mapsforge/map/reader/IndexCache;

    if-nez v5, :cond_0

    new-instance v5, Lorg/mapsforge/map/reader/IndexCache;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/mapsforge/map/reader/MapDatabase;->inputFile:Ljava/io/RandomAccessFile;

    invoke-direct {v5, v6}, Lorg/mapsforge/map/reader/IndexCache;-><init>(Ljava/io/RandomAccessFile;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/mapsforge/map/reader/MapDatabase;->databaseIndexCache:Lorg/mapsforge/map/reader/IndexCache;

    .line 246
    :cond_0
    new-instance v3, Lorg/mapsforge/map/reader/QueryParameters;

    invoke-direct {v3}, Lorg/mapsforge/map/reader/QueryParameters;-><init>()V

    .line 247
    .local v3, "queryParameters":Lorg/mapsforge/map/reader/QueryParameters;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapsforge/map/reader/MapDatabase;->mapFileHeader:Lorg/mapsforge/map/reader/header/MapFileHeader;

    move-object/from16 v0, p1

    iget-byte v6, v0, Lorg/mapsforge/core/Tile;->zoomLevel:B

    invoke-virtual {v5, v6}, Lorg/mapsforge/map/reader/header/MapFileHeader;->getQueryZoomLevel(B)B

    move-result v5

    iput v5, v3, Lorg/mapsforge/map/reader/QueryParameters;->queryZoomLevel:I

    .line 250
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapsforge/map/reader/MapDatabase;->mapFileHeader:Lorg/mapsforge/map/reader/header/MapFileHeader;

    iget v6, v3, Lorg/mapsforge/map/reader/QueryParameters;->queryZoomLevel:I

    invoke-virtual {v5, v6}, Lorg/mapsforge/map/reader/header/MapFileHeader;->getSubFileParameter(I)Lorg/mapsforge/map/reader/header/SubFileParameter;

    move-result-object v4

    .line 251
    .local v4, "subFileParameter":Lorg/mapsforge/map/reader/header/SubFileParameter;
    if-nez v4, :cond_1

    .line 252
    sget-object v5, Lorg/mapsforge/map/reader/MapDatabase;->LOG:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "no sub-file for zoom level: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v3, Lorg/mapsforge/map/reader/QueryParameters;->queryZoomLevel:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 263
    .end local v3    # "queryParameters":Lorg/mapsforge/map/reader/QueryParameters;
    .end local v4    # "subFileParameter":Lorg/mapsforge/map/reader/header/SubFileParameter;
    :goto_0
    return-void

    .line 256
    .restart local v3    # "queryParameters":Lorg/mapsforge/map/reader/QueryParameters;
    .restart local v4    # "subFileParameter":Lorg/mapsforge/map/reader/header/SubFileParameter;
    :cond_1
    move-object/from16 v0, p1

    iget-byte v5, v0, Lorg/mapsforge/core/Tile;->zoomLevel:B

    iget-byte v6, v4, Lorg/mapsforge/map/reader/header/SubFileParameter;->baseZoomLevel:B

    if-ge v5, v6, :cond_2

    iget-byte v5, v4, Lorg/mapsforge/map/reader/header/SubFileParameter;->baseZoomLevel:B

    move-object/from16 v0, p1

    iget-byte v6, v0, Lorg/mapsforge/core/Tile;->zoomLevel:B

    sub-int/2addr v5, v6

    move-object/from16 v0, p1

    iget-wide v6, v0, Lorg/mapsforge/core/Tile;->tileX:J

    shl-long/2addr v6, v5

    iput-wide v6, v3, Lorg/mapsforge/map/reader/QueryParameters;->fromBaseTileX:J

    move-object/from16 v0, p1

    iget-wide v6, v0, Lorg/mapsforge/core/Tile;->tileY:J

    shl-long/2addr v6, v5

    iput-wide v6, v3, Lorg/mapsforge/map/reader/QueryParameters;->fromBaseTileY:J

    iget-wide v6, v3, Lorg/mapsforge/map/reader/QueryParameters;->fromBaseTileX:J

    const/4 v8, 0x1

    shl-int/2addr v8, v5

    int-to-long v8, v8

    add-long/2addr v6, v8

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    iput-wide v6, v3, Lorg/mapsforge/map/reader/QueryParameters;->toBaseTileX:J

    iget-wide v6, v3, Lorg/mapsforge/map/reader/QueryParameters;->fromBaseTileY:J

    const/4 v8, 0x1

    shl-int v5, v8, v5

    int-to-long v8, v5

    add-long v5, v6, v8

    const-wide/16 v7, 0x1

    sub-long/2addr v5, v7

    iput-wide v5, v3, Lorg/mapsforge/map/reader/QueryParameters;->toBaseTileY:J

    const/4 v5, 0x0

    iput-boolean v5, v3, Lorg/mapsforge/map/reader/QueryParameters;->useTileBitmask:Z

    .line 257
    :goto_1
    iget-wide v5, v3, Lorg/mapsforge/map/reader/QueryParameters;->fromBaseTileX:J

    iget-wide v7, v4, Lorg/mapsforge/map/reader/header/SubFileParameter;->boundaryTileLeft:J

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, v3, Lorg/mapsforge/map/reader/QueryParameters;->fromBlockX:J

    iget-wide v5, v3, Lorg/mapsforge/map/reader/QueryParameters;->fromBaseTileY:J

    iget-wide v7, v4, Lorg/mapsforge/map/reader/header/SubFileParameter;->boundaryTileTop:J

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, v3, Lorg/mapsforge/map/reader/QueryParameters;->fromBlockY:J

    iget-wide v5, v3, Lorg/mapsforge/map/reader/QueryParameters;->toBaseTileX:J

    iget-wide v7, v4, Lorg/mapsforge/map/reader/header/SubFileParameter;->boundaryTileLeft:J

    sub-long/2addr v5, v7

    iget-wide v7, v4, Lorg/mapsforge/map/reader/header/SubFileParameter;->blocksWidth:J

    const-wide/16 v9, 0x1

    sub-long/2addr v7, v9

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    iput-wide v5, v3, Lorg/mapsforge/map/reader/QueryParameters;->toBlockX:J

    iget-wide v5, v3, Lorg/mapsforge/map/reader/QueryParameters;->toBaseTileY:J

    iget-wide v7, v4, Lorg/mapsforge/map/reader/header/SubFileParameter;->boundaryTileTop:J

    sub-long/2addr v5, v7

    iget-wide v7, v4, Lorg/mapsforge/map/reader/header/SubFileParameter;->blocksHeight:J

    const-wide/16 v9, 0x1

    sub-long/2addr v7, v9

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    iput-wide v5, v3, Lorg/mapsforge/map/reader/QueryParameters;->toBlockY:J

    .line 259
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v3, v4}, Lorg/mapsforge/map/reader/MapDatabase;->processBlocks(Lorg/mapsforge/map/reader/MapDatabaseCallback;Lorg/mapsforge/map/reader/QueryParameters;Lorg/mapsforge/map/reader/header/SubFileParameter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 260
    .end local v3    # "queryParameters":Lorg/mapsforge/map/reader/QueryParameters;
    .end local v4    # "subFileParameter":Lorg/mapsforge/map/reader/header/SubFileParameter;
    :catch_0
    move-exception v2

    .line 261
    .local v2, "e":Ljava/io/IOException;
    sget-object v5, Lorg/mapsforge/map/reader/MapDatabase;->LOG:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 256
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "queryParameters":Lorg/mapsforge/map/reader/QueryParameters;
    .restart local v4    # "subFileParameter":Lorg/mapsforge/map/reader/header/SubFileParameter;
    :cond_2
    :try_start_1
    move-object/from16 v0, p1

    iget-byte v5, v0, Lorg/mapsforge/core/Tile;->zoomLevel:B

    iget-byte v6, v4, Lorg/mapsforge/map/reader/header/SubFileParameter;->baseZoomLevel:B

    if-le v5, v6, :cond_16

    move-object/from16 v0, p1

    iget-byte v5, v0, Lorg/mapsforge/core/Tile;->zoomLevel:B

    iget-byte v6, v4, Lorg/mapsforge/map/reader/header/SubFileParameter;->baseZoomLevel:B

    sub-int/2addr v5, v6

    move-object/from16 v0, p1

    iget-wide v6, v0, Lorg/mapsforge/core/Tile;->tileX:J

    ushr-long/2addr v6, v5

    iput-wide v6, v3, Lorg/mapsforge/map/reader/QueryParameters;->fromBaseTileX:J

    move-object/from16 v0, p1

    iget-wide v6, v0, Lorg/mapsforge/core/Tile;->tileY:J

    ushr-long/2addr v6, v5

    iput-wide v6, v3, Lorg/mapsforge/map/reader/QueryParameters;->fromBaseTileY:J

    iget-wide v6, v3, Lorg/mapsforge/map/reader/QueryParameters;->fromBaseTileX:J

    iput-wide v6, v3, Lorg/mapsforge/map/reader/QueryParameters;->toBaseTileX:J

    iget-wide v6, v3, Lorg/mapsforge/map/reader/QueryParameters;->fromBaseTileY:J

    iput-wide v6, v3, Lorg/mapsforge/map/reader/QueryParameters;->toBaseTileY:J

    const/4 v6, 0x1

    iput-boolean v6, v3, Lorg/mapsforge/map/reader/QueryParameters;->useTileBitmask:Z

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6

    move-object/from16 v0, p1

    iget-wide v5, v0, Lorg/mapsforge/core/Tile;->tileX:J

    const-wide/16 v7, 0x2

    rem-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_3

    move-object/from16 v0, p1

    iget-wide v5, v0, Lorg/mapsforge/core/Tile;->tileY:J

    const-wide/16 v7, 0x2

    rem-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_3

    const v5, 0xcc00

    :goto_2
    iput v5, v3, Lorg/mapsforge/map/reader/QueryParameters;->queryTileBitmask:I

    goto/16 :goto_1

    :cond_3
    move-object/from16 v0, p1

    iget-wide v5, v0, Lorg/mapsforge/core/Tile;->tileX:J

    const-wide/16 v7, 0x2

    rem-long/2addr v5, v7

    const-wide/16 v7, 0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_4

    move-object/from16 v0, p1

    iget-wide v5, v0, Lorg/mapsforge/core/Tile;->tileY:J

    const-wide/16 v7, 0x2

    rem-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_4

    const/16 v5, 0x3300

    goto :goto_2

    :cond_4
    move-object/from16 v0, p1

    iget-wide v5, v0, Lorg/mapsforge/core/Tile;->tileX:J

    const-wide/16 v7, 0x2

    rem-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_5

    move-object/from16 v0, p1

    iget-wide v5, v0, Lorg/mapsforge/core/Tile;->tileY:J

    const-wide/16 v7, 0x2

    rem-long/2addr v5, v7

    const-wide/16 v7, 0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_5

    const/16 v5, 0xcc

    goto :goto_2

    :cond_5
    const/16 v5, 0x33

    goto :goto_2

    :cond_6
    move-object/from16 v0, p1

    iget-wide v6, v0, Lorg/mapsforge/core/Tile;->tileX:J

    add-int/lit8 v8, v5, -0x2

    ushr-long/2addr v6, v8

    move-object/from16 v0, p1

    iget-wide v8, v0, Lorg/mapsforge/core/Tile;->tileY:J

    add-int/lit8 v5, v5, -0x2

    ushr-long/2addr v8, v5

    const/4 v5, 0x1

    ushr-long v10, v6, v5

    const/4 v5, 0x1

    ushr-long v12, v8, v5

    const-wide/16 v14, 0x2

    rem-long v14, v10, v14

    const-wide/16 v16, 0x0

    cmp-long v5, v14, v16

    if-nez v5, :cond_a

    const-wide/16 v14, 0x2

    rem-long v14, v12, v14

    const-wide/16 v16, 0x0

    cmp-long v5, v14, v16

    if-nez v5, :cond_a

    const-wide/16 v10, 0x2

    rem-long v10, v6, v10

    const-wide/16 v12, 0x0

    cmp-long v5, v10, v12

    if-nez v5, :cond_7

    const-wide/16 v10, 0x2

    rem-long v10, v8, v10

    const-wide/16 v12, 0x0

    cmp-long v5, v10, v12

    if-nez v5, :cond_7

    const v5, 0x8000

    goto :goto_2

    :cond_7
    const-wide/16 v10, 0x2

    rem-long v10, v6, v10

    const-wide/16 v12, 0x1

    cmp-long v5, v10, v12

    if-nez v5, :cond_8

    const-wide/16 v10, 0x2

    rem-long v10, v8, v10

    const-wide/16 v12, 0x0

    cmp-long v5, v10, v12

    if-nez v5, :cond_8

    const/16 v5, 0x4000

    goto/16 :goto_2

    :cond_8
    const-wide/16 v10, 0x2

    rem-long v5, v6, v10

    const-wide/16 v10, 0x0

    cmp-long v5, v5, v10

    if-nez v5, :cond_9

    const-wide/16 v5, 0x2

    rem-long v5, v8, v5

    const-wide/16 v7, 0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_9

    const/16 v5, 0x800

    goto/16 :goto_2

    :cond_9
    const/16 v5, 0x400

    goto/16 :goto_2

    :cond_a
    const-wide/16 v14, 0x2

    rem-long v14, v10, v14

    const-wide/16 v16, 0x1

    cmp-long v5, v14, v16

    if-nez v5, :cond_e

    const-wide/16 v14, 0x2

    rem-long v14, v12, v14

    const-wide/16 v16, 0x0

    cmp-long v5, v14, v16

    if-nez v5, :cond_e

    const-wide/16 v10, 0x2

    rem-long v10, v6, v10

    const-wide/16 v12, 0x0

    cmp-long v5, v10, v12

    if-nez v5, :cond_b

    const-wide/16 v10, 0x2

    rem-long v10, v8, v10

    const-wide/16 v12, 0x0

    cmp-long v5, v10, v12

    if-nez v5, :cond_b

    const/16 v5, 0x2000

    goto/16 :goto_2

    :cond_b
    const-wide/16 v10, 0x2

    rem-long v10, v6, v10

    const-wide/16 v12, 0x1

    cmp-long v5, v10, v12

    if-nez v5, :cond_c

    const-wide/16 v10, 0x2

    rem-long v10, v8, v10

    const-wide/16 v12, 0x0

    cmp-long v5, v10, v12

    if-nez v5, :cond_c

    const/16 v5, 0x1000

    goto/16 :goto_2

    :cond_c
    const-wide/16 v10, 0x2

    rem-long v5, v6, v10

    const-wide/16 v10, 0x0

    cmp-long v5, v5, v10

    if-nez v5, :cond_d

    const-wide/16 v5, 0x2

    rem-long v5, v8, v5

    const-wide/16 v7, 0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_d

    const/16 v5, 0x200

    goto/16 :goto_2

    :cond_d
    const/16 v5, 0x100

    goto/16 :goto_2

    :cond_e
    const-wide/16 v14, 0x2

    rem-long/2addr v10, v14

    const-wide/16 v14, 0x0

    cmp-long v5, v10, v14

    if-nez v5, :cond_12

    const-wide/16 v10, 0x2

    rem-long v10, v12, v10

    const-wide/16 v12, 0x1

    cmp-long v5, v10, v12

    if-nez v5, :cond_12

    const-wide/16 v10, 0x2

    rem-long v10, v6, v10

    const-wide/16 v12, 0x0

    cmp-long v5, v10, v12

    if-nez v5, :cond_f

    const-wide/16 v10, 0x2

    rem-long v10, v8, v10

    const-wide/16 v12, 0x0

    cmp-long v5, v10, v12

    if-nez v5, :cond_f

    const/16 v5, 0x80

    goto/16 :goto_2

    :cond_f
    const-wide/16 v10, 0x2

    rem-long v10, v6, v10

    const-wide/16 v12, 0x1

    cmp-long v5, v10, v12

    if-nez v5, :cond_10

    const-wide/16 v10, 0x2

    rem-long v10, v8, v10

    const-wide/16 v12, 0x0

    cmp-long v5, v10, v12

    if-nez v5, :cond_10

    const/16 v5, 0x40

    goto/16 :goto_2

    :cond_10
    const-wide/16 v10, 0x2

    rem-long v5, v6, v10

    const-wide/16 v10, 0x0

    cmp-long v5, v5, v10

    if-nez v5, :cond_11

    const-wide/16 v5, 0x2

    rem-long v5, v8, v5

    const-wide/16 v7, 0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_11

    const/16 v5, 0x8

    goto/16 :goto_2

    :cond_11
    const/4 v5, 0x4

    goto/16 :goto_2

    :cond_12
    const-wide/16 v10, 0x2

    rem-long v10, v6, v10

    const-wide/16 v12, 0x0

    cmp-long v5, v10, v12

    if-nez v5, :cond_13

    const-wide/16 v10, 0x2

    rem-long v10, v8, v10

    const-wide/16 v12, 0x0

    cmp-long v5, v10, v12

    if-nez v5, :cond_13

    const/16 v5, 0x20

    goto/16 :goto_2

    :cond_13
    const-wide/16 v10, 0x2

    rem-long v10, v6, v10

    const-wide/16 v12, 0x1

    cmp-long v5, v10, v12

    if-nez v5, :cond_14

    const-wide/16 v10, 0x2

    rem-long v10, v8, v10

    const-wide/16 v12, 0x0

    cmp-long v5, v10, v12

    if-nez v5, :cond_14

    const/16 v5, 0x10

    goto/16 :goto_2

    :cond_14
    const-wide/16 v10, 0x2

    rem-long v5, v6, v10

    const-wide/16 v10, 0x0

    cmp-long v5, v5, v10

    if-nez v5, :cond_15

    const-wide/16 v5, 0x2

    rem-long v5, v8, v5

    const-wide/16 v7, 0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_15

    const/4 v5, 0x2

    goto/16 :goto_2

    :cond_15
    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_16
    move-object/from16 v0, p1

    iget-wide v5, v0, Lorg/mapsforge/core/Tile;->tileX:J

    iput-wide v5, v3, Lorg/mapsforge/map/reader/QueryParameters;->fromBaseTileX:J

    move-object/from16 v0, p1

    iget-wide v5, v0, Lorg/mapsforge/core/Tile;->tileY:J

    iput-wide v5, v3, Lorg/mapsforge/map/reader/QueryParameters;->fromBaseTileY:J

    iget-wide v5, v3, Lorg/mapsforge/map/reader/QueryParameters;->fromBaseTileX:J

    iput-wide v5, v3, Lorg/mapsforge/map/reader/QueryParameters;->toBaseTileX:J

    iget-wide v5, v3, Lorg/mapsforge/map/reader/QueryParameters;->fromBaseTileY:J

    iput-wide v5, v3, Lorg/mapsforge/map/reader/QueryParameters;->toBaseTileY:J

    const/4 v5, 0x0

    iput-boolean v5, v3, Lorg/mapsforge/map/reader/QueryParameters;->useTileBitmask:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public final getMapFileInfo()Lorg/mapsforge/map/reader/header/MapFileInfo;
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lorg/mapsforge/map/reader/MapDatabase;->mapFileHeader:Lorg/mapsforge/map/reader/header/MapFileHeader;

    if-nez v0, :cond_0

    .line 272
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no map file is currently opened"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_0
    iget-object v0, p0, Lorg/mapsforge/map/reader/MapDatabase;->mapFileHeader:Lorg/mapsforge/map/reader/header/MapFileHeader;

    invoke-virtual {v0}, Lorg/mapsforge/map/reader/header/MapFileHeader;->getMapFileInfo()Lorg/mapsforge/map/reader/header/MapFileInfo;

    move-result-object v0

    return-object v0
.end method

.method public final hasOpenFile()Z
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lorg/mapsforge/map/reader/MapDatabase;->inputFile:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final openFile(Ljava/io/File;)Lorg/mapsforge/map/reader/header/FileOpenResult;
    .locals 6
    .param p1, "mapFile"    # Ljava/io/File;

    .prologue
    .line 295
    if-nez p1, :cond_0

    .line 296
    :try_start_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "mapFile must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Lorg/mapsforge/map/reader/MapDatabase;->LOG:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 327
    invoke-virtual {p0}, Lorg/mapsforge/map/reader/MapDatabase;->closeFile()V

    .line 328
    new-instance v1, Lorg/mapsforge/map/reader/header/FileOpenResult;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/mapsforge/map/reader/header/FileOpenResult;-><init>(Ljava/lang/String;)V

    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-object v1

    .line 300
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/mapsforge/map/reader/MapDatabase;->closeFile()V

    .line 303
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 304
    new-instance v1, Lorg/mapsforge/map/reader/header/FileOpenResult;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file does not exist: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/mapsforge/map/reader/header/FileOpenResult;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 305
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_2

    .line 306
    new-instance v1, Lorg/mapsforge/map/reader/header/FileOpenResult;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "not a file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/mapsforge/map/reader/header/FileOpenResult;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 307
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-nez v2, :cond_3

    .line 308
    new-instance v1, Lorg/mapsforge/map/reader/header/FileOpenResult;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cannot read file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/mapsforge/map/reader/header/FileOpenResult;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 312
    :cond_3
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    invoke-direct {v2, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lorg/mapsforge/map/reader/MapDatabase;->inputFile:Ljava/io/RandomAccessFile;

    .line 313
    iget-object v2, p0, Lorg/mapsforge/map/reader/MapDatabase;->inputFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/mapsforge/map/reader/MapDatabase;->fileSize:J

    .line 315
    new-instance v2, Lorg/mapsforge/map/reader/ReadBuffer;

    iget-object v3, p0, Lorg/mapsforge/map/reader/MapDatabase;->inputFile:Ljava/io/RandomAccessFile;

    invoke-direct {v2, v3}, Lorg/mapsforge/map/reader/ReadBuffer;-><init>(Ljava/io/RandomAccessFile;)V

    iput-object v2, p0, Lorg/mapsforge/map/reader/MapDatabase;->readBuffer:Lorg/mapsforge/map/reader/ReadBuffer;

    .line 316
    new-instance v2, Lorg/mapsforge/map/reader/header/MapFileHeader;

    invoke-direct {v2}, Lorg/mapsforge/map/reader/header/MapFileHeader;-><init>()V

    iput-object v2, p0, Lorg/mapsforge/map/reader/MapDatabase;->mapFileHeader:Lorg/mapsforge/map/reader/header/MapFileHeader;

    .line 317
    iget-object v2, p0, Lorg/mapsforge/map/reader/MapDatabase;->mapFileHeader:Lorg/mapsforge/map/reader/header/MapFileHeader;

    iget-object v3, p0, Lorg/mapsforge/map/reader/MapDatabase;->readBuffer:Lorg/mapsforge/map/reader/ReadBuffer;

    iget-wide v4, p0, Lorg/mapsforge/map/reader/MapDatabase;->fileSize:J

    invoke-virtual {v2, v3, v4, v5}, Lorg/mapsforge/map/reader/header/MapFileHeader;->readHeader(Lorg/mapsforge/map/reader/ReadBuffer;J)Lorg/mapsforge/map/reader/header/FileOpenResult;

    move-result-object v1

    .line 318
    .local v1, "fileOpenResult":Lorg/mapsforge/map/reader/header/FileOpenResult;
    invoke-virtual {v1}, Lorg/mapsforge/map/reader/header/FileOpenResult;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_4

    .line 319
    invoke-virtual {p0}, Lorg/mapsforge/map/reader/MapDatabase;->closeFile()V

    goto/16 :goto_0

    .line 323
    :cond_4
    sget-object v1, Lorg/mapsforge/map/reader/header/FileOpenResult;->SUCCESS:Lorg/mapsforge/map/reader/header/FileOpenResult;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
