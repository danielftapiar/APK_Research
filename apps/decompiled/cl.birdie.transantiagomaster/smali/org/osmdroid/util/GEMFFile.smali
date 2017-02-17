.class public final Lorg/osmdroid/util/GEMFFile;
.super Ljava/lang/Object;
.source "GEMFFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/util/GEMFFile$GEMFInputStream;,
        Lorg/osmdroid/util/GEMFFile$GEMFRange;
    }
.end annotation


# instance fields
.field private mCurrentSource:I

.field private final mFileNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mFileSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/RandomAccessFile;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocation:Ljava/lang/String;

.field private final mRangeData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/util/GEMFFile$GEMFRange;",
            ">;"
        }
    .end annotation
.end field

.field private mSourceLimited:Z

.field private final mSources:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "pLocation"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/osmdroid/util/GEMFFile;-><init>(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "pLocation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/util/GEMFFile;->mFiles:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/util/GEMFFile;->mFileNames:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/util/GEMFFile;->mRangeData:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/util/GEMFFile;->mFileSizes:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/util/GEMFFile;->mSources:Ljava/util/LinkedHashMap;

    .line 62
    iput-boolean v1, p0, Lorg/osmdroid/util/GEMFFile;->mSourceLimited:Z

    .line 63
    iput v1, p0, Lorg/osmdroid/util/GEMFFile;->mCurrentSource:I

    .line 89
    iput-object p1, p0, Lorg/osmdroid/util/GEMFFile;->mLocation:Ljava/lang/String;

    .line 90
    invoke-direct {p0}, Lorg/osmdroid/util/GEMFFile;->openFiles()V

    .line 91
    invoke-direct {p0}, Lorg/osmdroid/util/GEMFFile;->readHeader()V

    .line 92
    return-void
.end method

.method private openFiles()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 429
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lorg/osmdroid/util/GEMFFile;->mLocation:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 430
    .local v0, "base":Ljava/io/File;
    iget-object v3, p0, Lorg/osmdroid/util/GEMFFile;->mFiles:Ljava/util/List;

    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "r"

    invoke-direct {v4, v0, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    iget-object v3, p0, Lorg/osmdroid/util/GEMFFile;->mFileNames:Ljava/util/List;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 433
    const/4 v1, 0x0

    .line 435
    .local v1, "i":I
    :goto_0
    add-int/lit8 v1, v1, 0x1

    .line 436
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/osmdroid/util/GEMFFile;->mLocation:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 437
    .local v2, "nextFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 438
    iget-object v3, p0, Lorg/osmdroid/util/GEMFFile;->mFiles:Ljava/util/List;

    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "r"

    invoke-direct {v4, v2, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    iget-object v3, p0, Lorg/osmdroid/util/GEMFFile;->mFileNames:Ljava/util/List;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 444
    :cond_0
    return-void
.end method

.method private readHeader()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 451
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/osmdroid/util/GEMFFile;->mFiles:Ljava/util/List;

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/RandomAccessFile;

    .line 454
    .local v1, "baseFile":Ljava/io/RandomAccessFile;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/osmdroid/util/GEMFFile;->mFiles:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/RandomAccessFile;

    .line 455
    .local v2, "file":Ljava/io/RandomAccessFile;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/osmdroid/util/GEMFFile;->mFileSizes:Ljava/util/List;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 459
    .end local v2    # "file":Ljava/io/RandomAccessFile;
    :cond_0
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v13

    .line 460
    .local v13, "version":I
    const/4 v14, 0x4

    if-eq v13, v14, :cond_1

    .line 461
    new-instance v14, Ljava/io/IOException;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Bad file version: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 465
    :cond_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v12

    .line 466
    .local v12, "tile_size":I
    const/16 v14, 0x100

    if-eq v12, v14, :cond_2

    .line 467
    new-instance v14, Ljava/io/IOException;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Bad tile size: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 471
    :cond_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v8

    .line 473
    .local v8, "sourceCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v8, :cond_3

    .line 474
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v9

    .line 475
    .local v9, "sourceIndex":I
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v11

    .line 476
    .local v11, "sourceNameLength":I
    new-array v5, v11, [B

    .line 477
    .local v5, "nameData":[B
    const/4 v14, 0x0

    invoke-virtual {v1, v5, v14, v11}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 479
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v5}, Ljava/lang/String;-><init>([B)V

    .line 480
    .local v10, "sourceName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/osmdroid/util/GEMFFile;->mSources:Ljava/util/LinkedHashMap;

    new-instance v15, Ljava/lang/Integer;

    invoke-direct {v15, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v14, v15, v10}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 484
    .end local v5    # "nameData":[B
    .end local v9    # "sourceIndex":I
    .end local v10    # "sourceName":Ljava/lang/String;
    .end local v11    # "sourceNameLength":I
    :cond_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v6

    .line 485
    .local v6, "num_ranges":I
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v6, :cond_4

    .line 486
    new-instance v7, Lorg/osmdroid/util/GEMFFile$GEMFRange;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v14}, Lorg/osmdroid/util/GEMFFile$GEMFRange;-><init>(Lorg/osmdroid/util/GEMFFile;B)V

    .line 487
    .local v7, "rs":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iput-object v14, v7, Lorg/osmdroid/util/GEMFFile$GEMFRange;->zoom:Ljava/lang/Integer;

    .line 488
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iput-object v14, v7, Lorg/osmdroid/util/GEMFFile$GEMFRange;->xMin:Ljava/lang/Integer;

    .line 489
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iput-object v14, v7, Lorg/osmdroid/util/GEMFFile$GEMFRange;->xMax:Ljava/lang/Integer;

    .line 490
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iput-object v14, v7, Lorg/osmdroid/util/GEMFFile$GEMFRange;->yMin:Ljava/lang/Integer;

    .line 491
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iput-object v14, v7, Lorg/osmdroid/util/GEMFFile$GEMFRange;->yMax:Ljava/lang/Integer;

    .line 492
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iput-object v14, v7, Lorg/osmdroid/util/GEMFFile$GEMFRange;->sourceIndex:Ljava/lang/Integer;

    .line 493
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    iput-object v14, v7, Lorg/osmdroid/util/GEMFFile$GEMFRange;->offset:Ljava/lang/Long;

    .line 494
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/osmdroid/util/GEMFFile;->mRangeData:Ljava/util/List;

    invoke-interface {v14, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 496
    .end local v7    # "rs":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    :cond_4
    return-void
.end method


# virtual methods
.method public final getInputStream(III)Ljava/io/InputStream;
    .locals 21
    .param p1, "pX"    # I
    .param p2, "pY"    # I
    .param p3, "pZ"    # I

    .prologue
    .line 555
    const/4 v15, 0x0

    .line 557
    .local v15, "range":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/osmdroid/util/GEMFFile;->mRangeData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/osmdroid/util/GEMFFile$GEMFRange;

    .line 559
    .local v16, "rs":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    move-object/from16 v0, v16

    iget-object v1, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->zoom:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move/from16 v0, p3

    if-ne v0, v1, :cond_0

    move-object/from16 v0, v16

    iget-object v1, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->xMin:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move/from16 v0, p1

    if-lt v0, v1, :cond_0

    move-object/from16 v0, v16

    iget-object v1, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->xMax:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move/from16 v0, p1

    if-gt v0, v1, :cond_0

    move-object/from16 v0, v16

    iget-object v1, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->yMin:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move/from16 v0, p2

    if-lt v0, v1, :cond_0

    move-object/from16 v0, v16

    iget-object v1, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->yMax:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move/from16 v0, p2

    if-gt v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/osmdroid/util/GEMFFile;->mSourceLimited:Z

    if-eqz v1, :cond_1

    move-object/from16 v0, v16

    iget-object v1, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->sourceIndex:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lorg/osmdroid/util/GEMFFile;->mCurrentSource:I

    if-ne v1, v2, :cond_0

    .line 565
    :cond_1
    move-object/from16 v15, v16

    .line 570
    .end local v16    # "rs":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    :cond_2
    if-nez v15, :cond_3

    .line 571
    const/4 v1, 0x0

    .line 616
    :goto_0
    return-object v1

    .line 580
    :cond_3
    :try_start_0
    iget-object v1, v15, Lorg/osmdroid/util/GEMFFile$GEMFRange;->yMax:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, v15, Lorg/osmdroid/util/GEMFFile$GEMFRange;->yMin:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int v11, v1, v2

    .line 581
    .local v11, "numY":I
    iget-object v1, v15, Lorg/osmdroid/util/GEMFFile$GEMFRange;->xMin:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int v17, p1, v1

    .line 582
    .local v17, "xIndex":I
    iget-object v1, v15, Lorg/osmdroid/util/GEMFFile$GEMFRange;->yMin:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int v18, p2, v1

    .line 583
    .local v18, "yIndex":I
    mul-int v1, v17, v11

    add-int v1, v1, v18

    int-to-long v1, v1

    .line 584
    const-wide/16 v19, 0xc

    mul-long v1, v1, v19

    .line 585
    iget-object v3, v15, Lorg/osmdroid/util/GEMFFile$GEMFRange;->offset:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    add-long v12, v1, v19

    .line 589
    .local v12, "offset":J
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/osmdroid/util/GEMFFile;->mFiles:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/RandomAccessFile;

    .line 590
    .local v7, "baseFile":Ljava/io/RandomAccessFile;
    invoke-virtual {v7, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 591
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v4

    .line 592
    .local v4, "dataOffset":J
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v6

    .line 595
    .local v6, "dataLength":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/osmdroid/util/GEMFFile;->mFiles:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/io/RandomAccessFile;

    .line 596
    .local v14, "pDataFile":Ljava/io/RandomAccessFile;
    const/4 v10, 0x0

    .line 597
    .local v10, "index":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/osmdroid/util/GEMFFile;->mFileSizes:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v4, v1

    if-lez v1, :cond_5

    .line 598
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/osmdroid/util/GEMFFile;->mFileSizes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    .line 600
    .local v8, "fileListCount":I
    :goto_1
    add-int/lit8 v1, v8, -0x1

    if-ge v10, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/osmdroid/util/GEMFFile;->mFileSizes:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v4, v1

    if-lez v1, :cond_4

    .line 603
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/osmdroid/util/GEMFFile;->mFileSizes:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sub-long/2addr v4, v1

    .line 604
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 607
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/osmdroid/util/GEMFFile;->mFiles:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "pDataFile":Ljava/io/RandomAccessFile;
    check-cast v14, Ljava/io/RandomAccessFile;

    .line 611
    .end local v8    # "fileListCount":I
    .restart local v14    # "pDataFile":Ljava/io/RandomAccessFile;
    :cond_5
    invoke-virtual {v14, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 613
    new-instance v1, Lorg/osmdroid/util/GEMFFile$GEMFInputStream;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/osmdroid/util/GEMFFile;->mFileNames:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/osmdroid/util/GEMFFile$GEMFInputStream;-><init>(Lorg/osmdroid/util/GEMFFile;Ljava/lang/String;JI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 616
    .end local v4    # "dataOffset":J
    .end local v6    # "dataLength":I
    .end local v7    # "baseFile":Ljava/io/RandomAccessFile;
    .end local v10    # "index":I
    .end local v11    # "numY":I
    .end local v12    # "offset":J
    .end local v14    # "pDataFile":Ljava/io/RandomAccessFile;
    .end local v17    # "xIndex":I
    .end local v18    # "yIndex":I
    :catch_0
    move-exception v1

    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lorg/osmdroid/util/GEMFFile;->mLocation:Ljava/lang/String;

    return-object v0
.end method
