.class public Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;
.super Lorg/apache/commons/compress/compressors/CompressorInputStream;
.source "BZip2CompressorInputStream.java"

# interfaces
.implements Lorg/apache/commons/compress/compressors/bzip2/BZip2Constants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;
    }
.end annotation


# static fields
.field private static final EOF:I = 0x0

.field private static final NO_RAND_PART_A_STATE:I = 0x5

.field private static final NO_RAND_PART_B_STATE:I = 0x6

.field private static final NO_RAND_PART_C_STATE:I = 0x7

.field private static final RAND_PART_A_STATE:I = 0x2

.field private static final RAND_PART_B_STATE:I = 0x3

.field private static final RAND_PART_C_STATE:I = 0x4

.field private static final START_BLOCK_STATE:I = 0x1


# instance fields
.field private blockRandomised:Z

.field private blockSize100k:I

.field private bsBuff:I

.field private bsLive:I

.field private computedBlockCRC:I

.field private computedCombinedCRC:I

.field private final crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

.field private currentChar:I

.field private currentState:I

.field private data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

.field private final decompressConcatenated:Z

.field private in:Ljava/io/InputStream;

.field private last:I

.field private nInUse:I

.field private origPtr:I

.field private storedBlockCRC:I

.field private storedCombinedCRC:I

.field private su_ch2:I

.field private su_chPrev:I

.field private su_count:I

.field private su_i2:I

.field private su_j2:I

.field private su_rNToGo:I

.field private su_rTPos:I

.field private su_tPos:I

.field private su_z:C


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;-><init>(Ljava/io/InputStream;Z)V

    .line 112
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "decompressConcatenated"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 130
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorInputStream;-><init>()V

    .line 60
    new-instance v0, Lorg/apache/commons/compress/compressors/bzip2/CRC;

    invoke-direct {v0}, Lorg/apache/commons/compress/compressors/bzip2/CRC;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentChar:I

    .line 78
    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 131
    iput-object p1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->in:Ljava/io/InputStream;

    .line 132
    iput-boolean p2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->decompressConcatenated:Z

    .line 134
    invoke-direct {p0, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->init(Z)Z

    .line 135
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->initBlock()V

    .line 136
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupBlock()V

    .line 137
    return-void
.end method

.method private bsGetBit()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 401
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsLive:I

    .line 402
    .local v1, "bsLiveShadow":I
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsBuff:I

    .line 404
    .local v0, "bsBuffShadow":I
    if-ge v1, v3, :cond_1

    .line 405
    iget-object v4, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 407
    .local v2, "thech":I
    if-gez v2, :cond_0

    .line 408
    new-instance v3, Ljava/io/IOException;

    const-string v4, "unexpected end of stream"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 411
    :cond_0
    shl-int/lit8 v4, v0, 0x8

    or-int v0, v4, v2

    .line 412
    add-int/lit8 v1, v1, 0x8

    .line 413
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsBuff:I

    .line 416
    .end local v2    # "thech":I
    :cond_1
    add-int/lit8 v4, v1, -0x1

    iput v4, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsLive:I

    .line 417
    add-int/lit8 v4, v1, -0x1

    shr-int v4, v0, v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private bsGetInt()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x8

    .line 425
    invoke-direct {p0, v2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    invoke-direct {p0, v2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(I)I

    move-result v1

    or-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x8

    invoke-direct {p0, v2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(I)I

    move-result v1

    or-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x8

    invoke-direct {p0, v2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(I)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method private bsGetUByte()C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 421
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(I)I

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method private bsR(I)I
    .locals 6
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 377
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsLive:I

    .line 378
    .local v1, "bsLiveShadow":I
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsBuff:I

    .line 380
    .local v0, "bsBuffShadow":I
    if-ge v1, p1, :cond_2

    .line 381
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->in:Ljava/io/InputStream;

    .line 383
    .local v2, "inShadow":Ljava/io/InputStream;
    :cond_0
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 385
    .local v3, "thech":I
    if-gez v3, :cond_1

    .line 386
    new-instance v4, Ljava/io/IOException;

    const-string v5, "unexpected end of stream"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 389
    :cond_1
    shl-int/lit8 v4, v0, 0x8

    or-int v0, v4, v3

    .line 390
    add-int/lit8 v1, v1, 0x8

    .line 391
    if-lt v1, p1, :cond_0

    .line 393
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsBuff:I

    .line 396
    .end local v2    # "inShadow":Ljava/io/InputStream;
    .end local v3    # "thech":I
    :cond_2
    sub-int v4, v1, p1

    iput v4, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsLive:I

    .line 397
    sub-int v4, v1, p1

    shr-int v4, v0, v4

    const/4 v5, 0x1

    shl-int/2addr v5, p1

    add-int/lit8 v5, v5, -0x1

    and-int/2addr v4, v5

    return v4
.end method

.method private complete()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 348
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetInt()I

    move-result v1

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->storedCombinedCRC:I

    .line 349
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 350
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 352
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->storedCombinedCRC:I

    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedCombinedCRC:I

    if-eq v1, v2, :cond_0

    .line 353
    new-instance v0, Ljava/io/IOException;

    const-string v1, "BZip2 CRC error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 358
    :cond_0
    iget-boolean v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->decompressConcatenated:Z

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->init(Z)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private createHuffmanDecodingTables(II)V
    .locals 19
    .param p1, "alphaSize"    # I
    .param p2, "nGroups"    # I

    .prologue
    .line 555
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 556
    .local v10, "dataShadow":Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;
    iget-object v12, v10, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->temp_charArray2d:[[C

    .line 557
    .local v12, "len":[[C
    iget-object v0, v10, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->minLens:[I

    move-object/from16 v16, v0

    .line 558
    .local v16, "minLens":[I
    iget-object v15, v10, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->limit:[[I

    .line 559
    .local v15, "limit":[[I
    iget-object v9, v10, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->base:[[I

    .line 560
    .local v9, "base":[[I
    iget-object v0, v10, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->perm:[[I

    move-object/from16 v17, v0

    .line 562
    .local v17, "perm":[[I
    const/16 v18, 0x0

    .local v18, "t":I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, p2

    if-ge v0, v1, :cond_3

    .line 563
    const/16 v6, 0x20

    .line 564
    .local v6, "minLen":I
    const/4 v7, 0x0

    .line 565
    .local v7, "maxLen":I
    aget-object v13, v12, v18

    .line 566
    .local v13, "len_t":[C
    move/from16 v11, p1

    .local v11, "i":I
    :cond_0
    :goto_1
    add-int/lit8 v11, v11, -0x1

    if-ltz v11, :cond_2

    .line 567
    aget-char v14, v13, v11

    .line 568
    .local v14, "lent":C
    if-le v14, v7, :cond_1

    .line 569
    move v7, v14

    .line 571
    :cond_1
    if-ge v14, v6, :cond_0

    .line 572
    move v6, v14

    goto :goto_1

    .line 575
    .end local v14    # "lent":C
    :cond_2
    aget-object v2, v15, v18

    aget-object v3, v9, v18

    aget-object v4, v17, v18

    aget-object v5, v12, v18

    move/from16 v8, p1

    invoke-static/range {v2 .. v8}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->hbCreateDecodeTables([I[I[I[CIII)V

    .line 577
    aput v6, v16, v18

    .line 562
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 579
    .end local v6    # "minLen":I
    .end local v7    # "maxLen":I
    .end local v11    # "i":I
    .end local v13    # "len_t":[C
    :cond_3
    return-void
.end method

.method private endBlock()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 329
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/bzip2/CRC;->getFinalCRC()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedBlockCRC:I

    .line 332
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->storedBlockCRC:I

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedBlockCRC:I

    if-eq v0, v1, :cond_0

    .line 335
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->storedCombinedCRC:I

    shl-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->storedCombinedCRC:I

    ushr-int/lit8 v1, v1, 0x1f

    or-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedCombinedCRC:I

    .line 337
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedCombinedCRC:I

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->storedBlockCRC:I

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedCombinedCRC:I

    .line 339
    new-instance v0, Ljava/io/IOException;

    const-string v1, "BZip2 CRC error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedCombinedCRC:I

    shl-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedCombinedCRC:I

    ushr-int/lit8 v1, v1, 0x1f

    or-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedCombinedCRC:I

    .line 344
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedCombinedCRC:I

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedBlockCRC:I

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedCombinedCRC:I

    .line 345
    return-void
.end method

.method private getAndMoveToFrontDecode()V
    .locals 43
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 582
    const/16 v40, 0x18

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(I)I

    move-result v40

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->origPtr:I

    .line 583
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->recvDecodingTables()V

    .line 585
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->in:Ljava/io/InputStream;

    .line 586
    .local v15, "inShadow":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 587
    .local v10, "dataShadow":Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;
    iget-object v0, v10, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->ll8:[B

    move-object/from16 v22, v0

    .line 588
    .local v22, "ll8":[B
    iget-object v0, v10, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->unzftab:[I

    move-object/from16 v35, v0

    .line 589
    .local v35, "unzftab":[I
    iget-object v0, v10, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->selector:[B

    move-object/from16 v31, v0

    .line 590
    .local v31, "selector":[B
    iget-object v0, v10, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->seqToUnseq:[B

    move-object/from16 v32, v0

    .line 591
    .local v32, "seqToUnseq":[B
    iget-object v0, v10, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->getAndMoveToFrontDecode_yy:[C

    move-object/from16 v36, v0

    .line 592
    .local v36, "yy":[C
    iget-object v0, v10, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->minLens:[I

    move-object/from16 v23, v0

    .line 593
    .local v23, "minLens":[I
    iget-object v0, v10, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->limit:[[I

    move-object/from16 v19, v0

    .line 594
    .local v19, "limit":[[I
    iget-object v5, v10, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->base:[[I

    .line 595
    .local v5, "base":[[I
    iget-object v0, v10, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->perm:[[I

    move-object/from16 v27, v0

    .line 596
    .local v27, "perm":[[I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->blockSize100k:I

    move/from16 v40, v0

    const v41, 0x186a0

    mul-int v20, v40, v41

    .line 603
    .local v20, "limitLast":I
    const/16 v14, 0x100

    .local v14, "i":I
    :goto_0
    add-int/lit8 v14, v14, -0x1

    if-ltz v14, :cond_0

    .line 604
    int-to-char v0, v14

    move/from16 v40, v0

    aput-char v40, v36, v14

    .line 605
    const/16 v40, 0x0

    aput v40, v35, v14

    goto :goto_0

    .line 608
    :cond_0
    const/4 v12, 0x0

    .line 609
    .local v12, "groupNo":I
    const/16 v13, 0x31

    .line 610
    .local v13, "groupPos":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->nInUse:I

    move/from16 v40, v0

    add-int/lit8 v11, v40, 0x1

    .line 611
    .local v11, "eob":I
    const/16 v40, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->getAndMoveToFrontDecode0(I)I

    move-result v26

    .line 612
    .local v26, "nextSym":I
    move-object/from16 v0, p0

    iget v7, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsBuff:I

    .line 613
    .local v7, "bsBuffShadow":I
    move-object/from16 v0, p0

    iget v8, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsLive:I

    .line 614
    .local v8, "bsLiveShadow":I
    const/16 v18, -0x1

    .line 615
    .local v18, "lastShadow":I
    aget-byte v40, v31, v12

    move/from16 v0, v40

    and-int/lit16 v0, v0, 0xff

    move/from16 v38, v0

    .line 616
    .local v38, "zt":I
    aget-object v6, v5, v38

    .line 617
    .local v6, "base_zt":[I
    aget-object v21, v19, v38

    .line 618
    .local v21, "limit_zt":[I
    aget-object v28, v27, v38

    .line 619
    .local v28, "perm_zt":[I
    aget v24, v23, v38

    .line 621
    .local v24, "minLens_zt":I
    :cond_1
    :goto_1
    move/from16 v0, v26

    if-eq v0, v11, :cond_16

    .line 622
    if-eqz v26, :cond_2

    const/16 v40, 0x1

    move/from16 v0, v26

    move/from16 v1, v40

    if-ne v0, v1, :cond_c

    .line 623
    :cond_2
    const/16 v29, -0x1

    .line 625
    .local v29, "s":I
    const/16 v25, 0x1

    .line 626
    .local v25, "n":I
    :goto_2
    if-nez v26, :cond_3

    .line 627
    add-int v29, v29, v25

    .line 634
    :goto_3
    if-nez v13, :cond_4

    .line 635
    const/16 v13, 0x31

    .line 636
    add-int/lit8 v12, v12, 0x1

    aget-byte v40, v31, v12

    move/from16 v0, v40

    and-int/lit16 v0, v0, 0xff

    move/from16 v38, v0

    .line 637
    aget-object v6, v5, v38

    .line 638
    aget-object v21, v19, v38

    .line 639
    aget-object v28, v27, v38

    .line 640
    aget v24, v23, v38

    .line 645
    :goto_4
    move/from16 v37, v24

    .line 649
    .local v37, "zn":I
    :goto_5
    move/from16 v0, v37

    if-ge v8, v0, :cond_6

    .line 650
    invoke-virtual {v15}, Ljava/io/InputStream;->read()I

    move-result v33

    .line 651
    .local v33, "thech":I
    if-ltz v33, :cond_5

    .line 652
    shl-int/lit8 v40, v7, 0x8

    or-int v7, v40, v33

    .line 653
    add-int/lit8 v8, v8, 0x8

    .line 654
    goto :goto_5

    .line 628
    .end local v33    # "thech":I
    .end local v37    # "zn":I
    :cond_3
    const/16 v40, 0x1

    move/from16 v0, v26

    move/from16 v1, v40

    if-ne v0, v1, :cond_a

    .line 629
    shl-int/lit8 v40, v25, 0x1

    add-int v29, v29, v40

    goto :goto_3

    .line 642
    :cond_4
    add-int/lit8 v13, v13, -0x1

    goto :goto_4

    .line 656
    .restart local v33    # "thech":I
    .restart local v37    # "zn":I
    :cond_5
    new-instance v40, Ljava/io/IOException;

    const-string v41, "unexpected end of stream"

    invoke-direct/range {v40 .. v41}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v40

    .line 659
    .end local v33    # "thech":I
    :cond_6
    sub-int v40, v8, v37

    shr-int v40, v7, v40

    const/16 v41, 0x1

    shl-int v41, v41, v37

    add-int/lit8 v41, v41, -0x1

    and-int v39, v40, v41

    .line 661
    .local v39, "zvec":I
    sub-int v8, v8, v37

    .line 663
    :goto_6
    aget v40, v21, v37

    move/from16 v0, v39

    move/from16 v1, v40

    if-le v0, v1, :cond_9

    .line 664
    add-int/lit8 v37, v37, 0x1

    .line 665
    :goto_7
    const/16 v40, 0x1

    move/from16 v0, v40

    if-ge v8, v0, :cond_8

    .line 666
    invoke-virtual {v15}, Ljava/io/InputStream;->read()I

    move-result v33

    .line 667
    .restart local v33    # "thech":I
    if-ltz v33, :cond_7

    .line 668
    shl-int/lit8 v40, v7, 0x8

    or-int v7, v40, v33

    .line 669
    add-int/lit8 v8, v8, 0x8

    .line 670
    goto :goto_7

    .line 672
    :cond_7
    new-instance v40, Ljava/io/IOException;

    const-string v41, "unexpected end of stream"

    invoke-direct/range {v40 .. v41}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v40

    .line 676
    .end local v33    # "thech":I
    :cond_8
    add-int/lit8 v8, v8, -0x1

    .line 677
    shl-int/lit8 v40, v39, 0x1

    shr-int v41, v7, v8

    and-int/lit8 v41, v41, 0x1

    or-int v39, v40, v41

    goto :goto_6

    .line 680
    :cond_9
    aget v40, v6, v37

    sub-int v40, v39, v40

    aget v26, v28, v40

    .line 625
    shl-int/lit8 v25, v25, 0x1

    goto/16 :goto_2

    .line 683
    .end local v37    # "zn":I
    .end local v39    # "zvec":I
    :cond_a
    const/16 v40, 0x0

    aget-char v40, v36, v40

    aget-byte v9, v32, v40

    .line 684
    .local v9, "ch":B
    and-int/lit16 v0, v9, 0xff

    move/from16 v40, v0

    aget v41, v35, v40

    add-int/lit8 v42, v29, 0x1

    add-int v41, v41, v42

    aput v41, v35, v40

    move/from16 v30, v29

    .line 686
    .end local v29    # "s":I
    .local v30, "s":I
    :goto_8
    add-int/lit8 v29, v30, -0x1

    .end local v30    # "s":I
    .restart local v29    # "s":I
    if-ltz v30, :cond_b

    .line 687
    add-int/lit8 v18, v18, 0x1

    aput-byte v9, v22, v18

    move/from16 v30, v29

    .end local v29    # "s":I
    .restart local v30    # "s":I
    goto :goto_8

    .line 690
    .end local v30    # "s":I
    .restart local v29    # "s":I
    :cond_b
    move/from16 v0, v18

    move/from16 v1, v20

    if-lt v0, v1, :cond_1

    .line 691
    new-instance v40, Ljava/io/IOException;

    const-string v41, "block overrun"

    invoke-direct/range {v40 .. v41}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v40

    .line 694
    .end local v9    # "ch":B
    .end local v25    # "n":I
    .end local v29    # "s":I
    :cond_c
    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-lt v0, v1, :cond_d

    .line 695
    new-instance v40, Ljava/io/IOException;

    const-string v41, "block overrun"

    invoke-direct/range {v40 .. v41}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v40

    .line 698
    :cond_d
    add-int/lit8 v40, v26, -0x1

    aget-char v34, v36, v40

    .line 699
    .local v34, "tmp":C
    aget-byte v40, v32, v34

    move/from16 v0, v40

    and-int/lit16 v0, v0, 0xff

    move/from16 v40, v0

    aget v41, v35, v40

    add-int/lit8 v41, v41, 0x1

    aput v41, v35, v40

    .line 700
    aget-byte v40, v32, v34

    aput-byte v40, v22, v18

    .line 707
    const/16 v40, 0x10

    move/from16 v0, v26

    move/from16 v1, v40

    if-gt v0, v1, :cond_e

    .line 708
    add-int/lit8 v16, v26, -0x1

    .local v16, "j":I
    move/from16 v17, v16

    .end local v16    # "j":I
    .local v17, "j":I
    :goto_9
    if-lez v17, :cond_f

    .line 709
    add-int/lit8 v16, v17, -0x1

    .end local v17    # "j":I
    .restart local v16    # "j":I
    aget-char v40, v36, v16

    aput-char v40, v36, v17

    move/from16 v17, v16

    .end local v16    # "j":I
    .restart local v17    # "j":I
    goto :goto_9

    .line 712
    .end local v17    # "j":I
    :cond_e
    const/16 v40, 0x0

    const/16 v41, 0x1

    add-int/lit8 v42, v26, -0x1

    move-object/from16 v0, v36

    move/from16 v1, v40

    move-object/from16 v2, v36

    move/from16 v3, v41

    move/from16 v4, v42

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 715
    :cond_f
    const/16 v40, 0x0

    aput-char v34, v36, v40

    .line 717
    if-nez v13, :cond_10

    .line 718
    const/16 v13, 0x31

    .line 719
    add-int/lit8 v12, v12, 0x1

    aget-byte v40, v31, v12

    move/from16 v0, v40

    and-int/lit16 v0, v0, 0xff

    move/from16 v38, v0

    .line 720
    aget-object v6, v5, v38

    .line 721
    aget-object v21, v19, v38

    .line 722
    aget-object v28, v27, v38

    .line 723
    aget v24, v23, v38

    .line 728
    :goto_a
    move/from16 v37, v24

    .line 732
    .restart local v37    # "zn":I
    :goto_b
    move/from16 v0, v37

    if-ge v8, v0, :cond_12

    .line 733
    invoke-virtual {v15}, Ljava/io/InputStream;->read()I

    move-result v33

    .line 734
    .restart local v33    # "thech":I
    if-ltz v33, :cond_11

    .line 735
    shl-int/lit8 v40, v7, 0x8

    or-int v7, v40, v33

    .line 736
    add-int/lit8 v8, v8, 0x8

    .line 737
    goto :goto_b

    .line 725
    .end local v33    # "thech":I
    .end local v37    # "zn":I
    :cond_10
    add-int/lit8 v13, v13, -0x1

    goto :goto_a

    .line 739
    .restart local v33    # "thech":I
    .restart local v37    # "zn":I
    :cond_11
    new-instance v40, Ljava/io/IOException;

    const-string v41, "unexpected end of stream"

    invoke-direct/range {v40 .. v41}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v40

    .line 742
    .end local v33    # "thech":I
    :cond_12
    sub-int v40, v8, v37

    shr-int v40, v7, v40

    const/16 v41, 0x1

    shl-int v41, v41, v37

    add-int/lit8 v41, v41, -0x1

    and-int v39, v40, v41

    .line 744
    .restart local v39    # "zvec":I
    sub-int v8, v8, v37

    .line 746
    :goto_c
    aget v40, v21, v37

    move/from16 v0, v39

    move/from16 v1, v40

    if-le v0, v1, :cond_15

    .line 747
    add-int/lit8 v37, v37, 0x1

    .line 748
    :goto_d
    const/16 v40, 0x1

    move/from16 v0, v40

    if-ge v8, v0, :cond_14

    .line 749
    invoke-virtual {v15}, Ljava/io/InputStream;->read()I

    move-result v33

    .line 750
    .restart local v33    # "thech":I
    if-ltz v33, :cond_13

    .line 751
    shl-int/lit8 v40, v7, 0x8

    or-int v7, v40, v33

    .line 752
    add-int/lit8 v8, v8, 0x8

    .line 753
    goto :goto_d

    .line 755
    :cond_13
    new-instance v40, Ljava/io/IOException;

    const-string v41, "unexpected end of stream"

    invoke-direct/range {v40 .. v41}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v40

    .line 758
    .end local v33    # "thech":I
    :cond_14
    add-int/lit8 v8, v8, -0x1

    .line 759
    shl-int/lit8 v40, v39, 0x1

    shr-int v41, v7, v8

    and-int/lit8 v41, v41, 0x1

    or-int v39, v40, v41

    goto :goto_c

    .line 761
    :cond_15
    aget v40, v6, v37

    sub-int v40, v39, v40

    aget v26, v28, v40

    .line 762
    goto/16 :goto_1

    .line 765
    .end local v34    # "tmp":C
    .end local v37    # "zn":I
    .end local v39    # "zvec":I
    :cond_16
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->last:I

    .line 766
    move-object/from16 v0, p0

    iput v8, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsLive:I

    .line 767
    move-object/from16 v0, p0

    iput v7, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsBuff:I

    .line 768
    return-void
.end method

.method private getAndMoveToFrontDecode0(I)I
    .locals 11
    .param p1, "groupNo"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 771
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->in:Ljava/io/InputStream;

    .line 772
    .local v3, "inShadow":Ljava/io/InputStream;
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 773
    .local v2, "dataShadow":Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;
    iget-object v9, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->selector:[B

    aget-byte v9, v9, p1

    and-int/lit16 v7, v9, 0xff

    .line 774
    .local v7, "zt":I
    iget-object v9, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->limit:[[I

    aget-object v4, v9, v7

    .line 775
    .local v4, "limit_zt":[I
    iget-object v9, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->minLens:[I

    aget v6, v9, v7

    .line 776
    .local v6, "zn":I
    invoke-direct {p0, v6}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(I)I

    move-result v8

    .line 777
    .local v8, "zvec":I
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsLive:I

    .line 778
    .local v1, "bsLiveShadow":I
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsBuff:I

    .line 780
    .local v0, "bsBuffShadow":I
    :goto_0
    aget v9, v4, v6

    if-le v8, v9, :cond_2

    .line 781
    add-int/lit8 v6, v6, 0x1

    .line 782
    :goto_1
    const/4 v9, 0x1

    if-ge v1, v9, :cond_1

    .line 783
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v5

    .line 785
    .local v5, "thech":I
    if-ltz v5, :cond_0

    .line 786
    shl-int/lit8 v9, v0, 0x8

    or-int v0, v9, v5

    .line 787
    add-int/lit8 v1, v1, 0x8

    .line 788
    goto :goto_1

    .line 790
    :cond_0
    new-instance v9, Ljava/io/IOException;

    const-string v10, "unexpected end of stream"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 793
    .end local v5    # "thech":I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 794
    shl-int/lit8 v9, v8, 0x1

    shr-int v10, v0, v1

    and-int/lit8 v10, v10, 0x1

    or-int v8, v9, v10

    goto :goto_0

    .line 797
    :cond_2
    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsLive:I

    .line 798
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsBuff:I

    .line 800
    iget-object v9, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->perm:[[I

    aget-object v9, v9, v7

    iget-object v10, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->base:[[I

    aget-object v10, v10, v7

    aget v10, v10, v6

    sub-int v10, v8, v10

    aget v9, v9, v10

    return v9
.end method

.method private static hbCreateDecodeTables([I[I[I[CIII)V
    .locals 9
    .param p0, "limit"    # [I
    .param p1, "base"    # [I
    .param p2, "perm"    # [I
    .param p3, "length"    # [C
    .param p4, "minLen"    # I
    .param p5, "maxLen"    # I
    .param p6, "alphaSize"    # I

    .prologue
    .line 434
    move v1, p4

    .local v1, "i":I
    const/4 v4, 0x0

    .local v4, "pp":I
    :goto_0
    if-gt v1, p5, :cond_1

    .line 435
    const/4 v2, 0x0

    .local v2, "j":I
    move v5, v4

    .end local v4    # "pp":I
    .local v5, "pp":I
    :goto_1
    if-ge v2, p6, :cond_0

    .line 436
    aget-char v7, p3, v2

    if-ne v7, v1, :cond_7

    .line 437
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "pp":I
    .restart local v4    # "pp":I
    aput v2, p2, v5

    .line 435
    :goto_2
    add-int/lit8 v2, v2, 0x1

    move v5, v4

    .end local v4    # "pp":I
    .restart local v5    # "pp":I
    goto :goto_1

    .line 434
    :cond_0
    add-int/lit8 v1, v1, 0x1

    move v4, v5

    .end local v5    # "pp":I
    .restart local v4    # "pp":I
    goto :goto_0

    .line 442
    .end local v2    # "j":I
    :cond_1
    const/16 v1, 0x17

    :goto_3
    add-int/lit8 v1, v1, -0x1

    if-lez v1, :cond_2

    .line 443
    const/4 v7, 0x0

    aput v7, p1, v1

    .line 444
    const/4 v7, 0x0

    aput v7, p0, v1

    goto :goto_3

    .line 447
    :cond_2
    const/4 v1, 0x0

    :goto_4
    if-ge v1, p6, :cond_3

    .line 448
    aget-char v7, p3, v1

    add-int/lit8 v7, v7, 0x1

    aget v8, p1, v7

    add-int/lit8 v8, v8, 0x1

    aput v8, p1, v7

    .line 447
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 451
    :cond_3
    const/4 v1, 0x1

    const/4 v7, 0x0

    aget v0, p1, v7

    .local v0, "b":I
    :goto_5
    const/16 v7, 0x17

    if-ge v1, v7, :cond_4

    .line 452
    aget v7, p1, v1

    add-int/2addr v0, v7

    .line 453
    aput v0, p1, v1

    .line 451
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 456
    :cond_4
    move v1, p4

    const/4 v6, 0x0

    .local v6, "vec":I
    aget v0, p1, v1

    :goto_6
    if-gt v1, p5, :cond_5

    .line 457
    add-int/lit8 v7, v1, 0x1

    aget v3, p1, v7

    .line 458
    .local v3, "nb":I
    sub-int v7, v3, v0

    add-int/2addr v6, v7

    .line 459
    move v0, v3

    .line 460
    add-int/lit8 v7, v6, -0x1

    aput v7, p0, v1

    .line 461
    shl-int/lit8 v6, v6, 0x1

    .line 456
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 464
    .end local v3    # "nb":I
    :cond_5
    add-int/lit8 v1, p4, 0x1

    :goto_7
    if-gt v1, p5, :cond_6

    .line 465
    add-int/lit8 v7, v1, -0x1

    aget v7, p0, v7

    add-int/lit8 v7, v7, 0x1

    shl-int/lit8 v7, v7, 0x1

    aget v8, p1, v1

    sub-int/2addr v7, v8

    aput v7, p1, v1

    .line 464
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 467
    :cond_6
    return-void

    .end local v0    # "b":I
    .end local v4    # "pp":I
    .end local v6    # "vec":I
    .restart local v2    # "j":I
    .restart local v5    # "pp":I
    :cond_7
    move v4, v5

    .end local v5    # "pp":I
    .restart local v4    # "pp":I
    goto :goto_2
.end method

.method private init(Z)Z
    .locals 6
    .param p1, "isFirstStream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 238
    iget-object v5, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->in:Ljava/io/InputStream;

    if-nez v5, :cond_0

    .line 239
    new-instance v4, Ljava/io/IOException;

    const-string v5, "No InputStream"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 242
    :cond_0
    iget-object v5, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 243
    .local v1, "magic0":I
    const/4 v5, -0x1

    if-ne v1, v5, :cond_1

    if-nez p1, :cond_1

    .line 265
    :goto_0
    return v4

    .line 246
    :cond_1
    iget-object v5, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 247
    .local v2, "magic1":I
    iget-object v5, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 249
    .local v3, "magic2":I
    const/16 v5, 0x42

    if-ne v1, v5, :cond_2

    const/16 v5, 0x5a

    if-ne v2, v5, :cond_2

    const/16 v5, 0x68

    if-eq v3, v5, :cond_4

    .line 250
    :cond_2
    new-instance v5, Ljava/io/IOException;

    if-eqz p1, :cond_3

    const-string v4, "Stream is not in the BZip2 format"

    :goto_1
    invoke-direct {v5, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_3
    const-string v4, "Garbage after a valid BZip2 stream"

    goto :goto_1

    .line 255
    :cond_4
    iget-object v5, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 256
    .local v0, "blockSize":I
    const/16 v5, 0x31

    if-lt v0, v5, :cond_5

    const/16 v5, 0x39

    if-le v0, v5, :cond_6

    .line 257
    :cond_5
    new-instance v4, Ljava/io/IOException;

    const-string v5, "BZip2 block size is invalid"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 260
    :cond_6
    add-int/lit8 v5, v0, -0x30

    iput v5, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->blockSize100k:I

    .line 262
    iput v4, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsLive:I

    .line 263
    iput v4, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedCombinedCRC:I

    .line 265
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private initBlock()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x59

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 278
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetUByte()C

    move-result v0

    .line 279
    .local v0, "magic0":C
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetUByte()C

    move-result v1

    .line 280
    .local v1, "magic1":C
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetUByte()C

    move-result v2

    .line 281
    .local v2, "magic2":C
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetUByte()C

    move-result v3

    .line 282
    .local v3, "magic3":C
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetUByte()C

    move-result v4

    .line 283
    .local v4, "magic4":C
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetUByte()C

    move-result v5

    .line 286
    .local v5, "magic5":C
    const/16 v8, 0x17

    if-ne v0, v8, :cond_1

    const/16 v8, 0x72

    if-ne v1, v8, :cond_1

    const/16 v8, 0x45

    if-ne v2, v8, :cond_1

    const/16 v8, 0x38

    if-ne v3, v8, :cond_1

    const/16 v8, 0x50

    if-ne v4, v8, :cond_1

    const/16 v8, 0x90

    if-eq v5, v8, :cond_3

    .line 299
    :cond_1
    const/16 v8, 0x31

    if-ne v0, v8, :cond_2

    const/16 v8, 0x41

    if-ne v1, v8, :cond_2

    if-ne v2, v9, :cond_2

    const/16 v8, 0x26

    if-ne v3, v8, :cond_2

    const/16 v8, 0x53

    if-ne v4, v8, :cond_2

    if-eq v5, v9, :cond_4

    .line 306
    :cond_2
    iput v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 307
    new-instance v6, Ljava/io/IOException;

    const-string v7, "bad block header"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 294
    :cond_3
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->complete()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 326
    :goto_0
    return-void

    .line 309
    :cond_4
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetInt()I

    move-result v8

    iput v8, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->storedBlockCRC:I

    .line 310
    invoke-direct {p0, v7}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(I)I

    move-result v8

    if-ne v8, v7, :cond_5

    move v6, v7

    :cond_5
    iput-boolean v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->blockRandomised:Z

    .line 316
    iget-object v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    if-nez v6, :cond_6

    .line 317
    new-instance v6, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget v8, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->blockSize100k:I

    invoke-direct {v6, v8}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;-><init>(I)V

    iput-object v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 321
    :cond_6
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->getAndMoveToFrontDecode()V

    .line 323
    iget-object v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    invoke-virtual {v6}, Lorg/apache/commons/compress/compressors/bzip2/CRC;->initialiseCRC()V

    .line 324
    iput v7, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    goto :goto_0
.end method

.method private makeMaps()V
    .locals 6

    .prologue
    .line 184
    iget-object v5, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v1, v5, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->inUse:[Z

    .line 185
    .local v1, "inUse":[Z
    iget-object v5, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v4, v5, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->seqToUnseq:[B

    .line 187
    .local v4, "seqToUnseq":[B
    const/4 v2, 0x0

    .line 189
    .local v2, "nInUseShadow":I
    const/4 v0, 0x0

    .local v0, "i":I
    move v3, v2

    .end local v2    # "nInUseShadow":I
    .local v3, "nInUseShadow":I
    :goto_0
    const/16 v5, 0x100

    if-ge v0, v5, :cond_0

    .line 190
    aget-boolean v5, v1, v0

    if-eqz v5, :cond_1

    .line 191
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "nInUseShadow":I
    .restart local v2    # "nInUseShadow":I
    int-to-byte v5, v0

    aput-byte v5, v4, v3

    .line 189
    :goto_1
    add-int/lit8 v0, v0, 0x1

    move v3, v2

    .end local v2    # "nInUseShadow":I
    .restart local v3    # "nInUseShadow":I
    goto :goto_0

    .line 195
    :cond_0
    iput v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->nInUse:I

    .line 196
    return-void

    :cond_1
    move v2, v3

    .end local v3    # "nInUseShadow":I
    .restart local v2    # "nInUseShadow":I
    goto :goto_1
.end method

.method public static matches([BI)Z
    .locals 4
    .param p0, "signature"    # [B
    .param p1, "length"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1028
    const/4 v2, 0x3

    if-ge p1, v2, :cond_1

    .line 1044
    :cond_0
    :goto_0
    return v0

    .line 1032
    :cond_1
    aget-byte v2, p0, v0

    const/16 v3, 0x42

    if-ne v2, v3, :cond_0

    .line 1036
    aget-byte v2, p0, v1

    const/16 v3, 0x5a

    if-ne v2, v3, :cond_0

    .line 1040
    const/4 v2, 0x2

    aget-byte v2, p0, v2

    const/16 v3, 0x68

    if-ne v2, v3, :cond_0

    move v0, v1

    .line 1044
    goto :goto_0
.end method

.method private read0()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentChar:I

    .line 201
    .local v0, "retChar":I
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    packed-switch v1, :pswitch_data_0

    .line 231
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 203
    :pswitch_0
    const/4 v0, -0x1

    .line 234
    .end local v0    # "retChar":I
    :goto_0
    return v0

    .line 206
    .restart local v0    # "retChar":I
    :pswitch_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 209
    :pswitch_2
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 212
    :pswitch_3
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupRandPartB()V

    goto :goto_0

    .line 216
    :pswitch_4
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupRandPartC()V

    goto :goto_0

    .line 220
    :pswitch_5
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 223
    :pswitch_6
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupNoRandPartB()V

    goto :goto_0

    .line 227
    :pswitch_7
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupNoRandPartC()V

    goto :goto_0

    .line 201
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private recvDecodingTables()V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 470
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 471
    .local v4, "dataShadow":Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;
    iget-object v7, v4, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->inUse:[Z

    .line 472
    .local v7, "inUse":[Z
    iget-object v14, v4, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->recvDecodingTables_pos:[B

    .line 473
    .local v14, "pos":[B
    iget-object v15, v4, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->selector:[B

    .line 474
    .local v15, "selector":[B
    iget-object v0, v4, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->selectorMtf:[B

    move-object/from16 v16, v0

    .line 476
    .local v16, "selectorMtf":[B
    const/4 v8, 0x0

    .line 479
    .local v8, "inUse16":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const/16 v20, 0x10

    move/from16 v0, v20

    if-ge v5, v0, :cond_1

    .line 480
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetBit()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 481
    const/16 v20, 0x1

    shl-int v20, v20, v5

    or-int v8, v8, v20

    .line 479
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 485
    :cond_1
    const/16 v5, 0x100

    :goto_1
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_2

    .line 486
    const/16 v20, 0x0

    aput-boolean v20, v7, v5

    goto :goto_1

    .line 489
    :cond_2
    const/4 v5, 0x0

    :goto_2
    const/16 v20, 0x10

    move/from16 v0, v20

    if-ge v5, v0, :cond_5

    .line 490
    const/16 v20, 0x1

    shl-int v20, v20, v5

    and-int v20, v20, v8

    if-eqz v20, :cond_4

    .line 491
    shl-int/lit8 v6, v5, 0x4

    .line 492
    .local v6, "i16":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_3
    const/16 v20, 0x10

    move/from16 v0, v20

    if-ge v9, v0, :cond_4

    .line 493
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetBit()Z

    move-result v20

    if-eqz v20, :cond_3

    .line 494
    add-int v20, v6, v9

    const/16 v21, 0x1

    aput-boolean v21, v7, v20

    .line 492
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 489
    .end local v6    # "i16":I
    .end local v9    # "j":I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 500
    :cond_5
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->makeMaps()V

    .line 501
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->nInUse:I

    move/from16 v20, v0

    add-int/lit8 v2, v20, 0x2

    .line 504
    .local v2, "alphaSize":I
    const/16 v20, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(I)I

    move-result v12

    .line 505
    .local v12, "nGroups":I
    const/16 v20, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(I)I

    move-result v13

    .line 507
    .local v13, "nSelectors":I
    const/4 v5, 0x0

    :goto_4
    if-ge v5, v13, :cond_7

    .line 508
    const/4 v9, 0x0

    .line 509
    .restart local v9    # "j":I
    :goto_5
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetBit()Z

    move-result v20

    if-eqz v20, :cond_6

    .line 510
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 512
    :cond_6
    int-to-byte v0, v9

    move/from16 v20, v0

    aput-byte v20, v16, v5

    .line 507
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 516
    .end local v9    # "j":I
    :cond_7
    move/from16 v19, v12

    .local v19, "v":I
    :goto_6
    add-int/lit8 v19, v19, -0x1

    if-ltz v19, :cond_8

    .line 517
    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v14, v19

    goto :goto_6

    .line 520
    :cond_8
    const/4 v5, 0x0

    :goto_7
    if-ge v5, v13, :cond_a

    .line 521
    aget-byte v20, v16, v5

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    .line 522
    aget-byte v18, v14, v19

    .line 523
    .local v18, "tmp":B
    :goto_8
    if-lez v19, :cond_9

    .line 525
    add-int/lit8 v20, v19, -0x1

    aget-byte v20, v14, v20

    aput-byte v20, v14, v19

    .line 526
    add-int/lit8 v19, v19, -0x1

    goto :goto_8

    .line 528
    :cond_9
    const/16 v20, 0x0

    aput-byte v18, v14, v20

    .line 529
    aput-byte v18, v15, v5

    .line 520
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 532
    .end local v18    # "tmp":B
    :cond_a
    iget-object v10, v4, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->temp_charArray2d:[[C

    .line 535
    .local v10, "len":[[C
    const/16 v17, 0x0

    .local v17, "t":I
    :goto_9
    move/from16 v0, v17

    if-ge v0, v12, :cond_e

    .line 536
    const/16 v20, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(I)I

    move-result v3

    .line 537
    .local v3, "curr":I
    aget-object v11, v10, v17

    .line 538
    .local v11, "len_t":[C
    const/4 v5, 0x0

    :goto_a
    if-ge v5, v2, :cond_d

    .line 539
    :goto_b
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetBit()Z

    move-result v20

    if-eqz v20, :cond_c

    .line 540
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetBit()Z

    move-result v20

    if-eqz v20, :cond_b

    const/16 v20, -0x1

    :goto_c
    add-int v3, v3, v20

    goto :goto_b

    :cond_b
    const/16 v20, 0x1

    goto :goto_c

    .line 542
    :cond_c
    int-to-char v0, v3

    move/from16 v20, v0

    aput-char v20, v11, v5

    .line 538
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 535
    :cond_d
    add-int/lit8 v17, v17, 0x1

    goto :goto_9

    .line 547
    .end local v3    # "curr":I
    .end local v11    # "len_t":[C
    :cond_e
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->createHuffmanDecodingTables(II)V

    .line 548
    return-void
.end method

.method private setupBlock()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x100

    const/4 v9, 0x0

    .line 804
    iget-object v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    if-nez v6, :cond_0

    .line 839
    :goto_0
    return-void

    .line 808
    :cond_0
    iget-object v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v1, v6, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->cftab:[I

    .line 809
    .local v1, "cftab":[I
    iget-object v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget v7, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->last:I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->initTT(I)[I

    move-result-object v5

    .line 810
    .local v5, "tt":[I
    iget-object v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v4, v6, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->ll8:[B

    .line 811
    .local v4, "ll8":[B
    aput v9, v1, v9

    .line 812
    iget-object v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v6, v6, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->unzftab:[I

    const/4 v7, 0x1

    invoke-static {v6, v9, v1, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 814
    const/4 v2, 0x1

    .local v2, "i":I
    aget v0, v1, v9

    .local v0, "c":I
    :goto_1
    if-gt v2, v10, :cond_1

    .line 815
    aget v6, v1, v2

    add-int/2addr v0, v6

    .line 816
    aput v0, v1, v2

    .line 814
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 819
    :cond_1
    const/4 v2, 0x0

    iget v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->last:I

    .local v3, "lastShadow":I
    :goto_2
    if-gt v2, v3, :cond_2

    .line 820
    aget-byte v6, v4, v2

    and-int/lit16 v6, v6, 0xff

    aget v7, v1, v6

    add-int/lit8 v8, v7, 0x1

    aput v8, v1, v6

    aput v2, v5, v7

    .line 819
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 823
    :cond_2
    iget v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->origPtr:I

    if-ltz v6, :cond_3

    iget v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->origPtr:I

    array-length v7, v5

    if-lt v6, v7, :cond_4

    .line 824
    :cond_3
    new-instance v6, Ljava/io/IOException;

    const-string v7, "stream corrupted"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 827
    :cond_4
    iget v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->origPtr:I

    aget v6, v5, v6

    iput v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    .line 828
    iput v9, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    .line 829
    iput v9, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    .line 830
    iput v10, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    .line 832
    iget-boolean v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->blockRandomised:Z

    if-eqz v6, :cond_5

    .line 833
    iput v9, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    .line 834
    iput v9, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rTPos:I

    .line 835
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupRandPartA()V

    goto :goto_0

    .line 837
    :cond_5
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupNoRandPartA()V

    goto :goto_0
.end method

.method private setupNoRandPartA()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 867
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->last:I

    if-gt v1, v2, :cond_0

    .line 868
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_chPrev:I

    .line 869
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v1, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->ll8:[B

    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    aget-byte v1, v1, v2

    and-int/lit16 v0, v1, 0xff

    .line 870
    .local v0, "su_ch2Shadow":I
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    .line 871
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v1, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->tt:[I

    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    aget v1, v1, v2

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    .line 872
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    .line 873
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentChar:I

    .line 874
    const/4 v1, 0x6

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 875
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/compressors/bzip2/CRC;->updateCRC(I)V

    .line 882
    .end local v0    # "su_ch2Shadow":I
    :goto_0
    return-void

    .line 877
    :cond_0
    const/4 v1, 0x5

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 878
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->endBlock()V

    .line 879
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->initBlock()V

    .line 880
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupBlock()V

    goto :goto_0
.end method

.method private setupNoRandPartB()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 926
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_chPrev:I

    if-eq v0, v1, :cond_0

    .line 927
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    .line 928
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupNoRandPartA()V

    .line 937
    :goto_0
    return-void

    .line 929
    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    .line 930
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->ll8:[B

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    int-to-char v0, v0

    iput-char v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_z:C

    .line 931
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->tt:[I

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    aget v0, v0, v1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    .line 932
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_j2:I

    .line 933
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupNoRandPartC()V

    goto :goto_0

    .line 935
    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupNoRandPartA()V

    goto :goto_0
.end method

.method private setupNoRandPartC()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 940
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_j2:I

    iget-char v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_z:C

    if-ge v1, v2, :cond_0

    .line 941
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    .line 942
    .local v0, "su_ch2Shadow":I
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentChar:I

    .line 943
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/compressors/bzip2/CRC;->updateCRC(I)V

    .line 944
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_j2:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_j2:I

    .line 945
    const/4 v1, 0x7

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 951
    .end local v0    # "su_ch2Shadow":I
    :goto_0
    return-void

    .line 947
    :cond_0
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    .line 948
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    .line 949
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupNoRandPartA()V

    goto :goto_0
.end method

.method private setupRandPartA()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 842
    iget v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    iget v4, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->last:I

    if-gt v3, v4, :cond_3

    .line 843
    iget v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    iput v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_chPrev:I

    .line 844
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v3, v3, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->ll8:[B

    iget v4, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    aget-byte v3, v3, v4

    and-int/lit16 v0, v3, 0xff

    .line 845
    .local v0, "su_ch2Shadow":I
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v3, v3, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->tt:[I

    iget v4, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    aget v3, v3, v4

    iput v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    .line 846
    iget v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    if-nez v3, :cond_1

    .line 847
    iget v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rTPos:I

    invoke-static {v3}, Lorg/apache/commons/compress/compressors/bzip2/Rand;->rNums(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    .line 848
    iget v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rTPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rTPos:I

    const/16 v4, 0x200

    if-ne v3, v4, :cond_0

    .line 849
    iput v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rTPos:I

    .line 854
    :cond_0
    :goto_0
    iget v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    if-ne v3, v1, :cond_2

    :goto_1
    xor-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    .line 855
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    .line 856
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentChar:I

    .line 857
    const/4 v1, 0x3

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 858
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/compressors/bzip2/CRC;->updateCRC(I)V

    .line 864
    .end local v0    # "su_ch2Shadow":I
    :goto_2
    return-void

    .line 852
    .restart local v0    # "su_ch2Shadow":I
    :cond_1
    iget v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    goto :goto_0

    :cond_2
    move v1, v2

    .line 854
    goto :goto_1

    .line 860
    .end local v0    # "su_ch2Shadow":I
    :cond_3
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->endBlock()V

    .line 861
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->initBlock()V

    .line 862
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupBlock()V

    goto :goto_2
.end method

.method private setupRandPartB()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 885
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_chPrev:I

    if-eq v0, v1, :cond_0

    .line 886
    iput v4, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 887
    iput v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    .line 888
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupRandPartA()V

    .line 910
    :goto_0
    return-void

    .line 889
    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    if-lt v0, v5, :cond_4

    .line 890
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->ll8:[B

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    int-to-char v0, v0

    iput-char v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_z:C

    .line 891
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->tt:[I

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    aget v0, v0, v1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    .line 892
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    if-nez v0, :cond_3

    .line 893
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rTPos:I

    invoke-static {v0}, Lorg/apache/commons/compress/compressors/bzip2/Rand;->rNums(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    .line 894
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rTPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rTPos:I

    const/16 v1, 0x200

    if-ne v0, v1, :cond_1

    .line 895
    iput v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rTPos:I

    .line 900
    :cond_1
    :goto_1
    iput v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_j2:I

    .line 901
    iput v5, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 902
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    if-ne v0, v3, :cond_2

    .line 903
    iget-char v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_z:C

    xor-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    iput-char v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_z:C

    .line 905
    :cond_2
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupRandPartC()V

    goto :goto_0

    .line 898
    :cond_3
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    goto :goto_1

    .line 907
    :cond_4
    iput v4, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 908
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupRandPartA()V

    goto :goto_0
.end method

.method private setupRandPartC()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 913
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_j2:I

    iget-char v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_z:C

    if-ge v0, v1, :cond_0

    .line 914
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentChar:I

    .line 915
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/compressors/bzip2/CRC;->updateCRC(I)V

    .line 916
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_j2:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_j2:I

    .line 923
    :goto_0
    return-void

    .line 918
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 919
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    .line 920
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    .line 921
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupRandPartA()V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 363
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->in:Ljava/io/InputStream;

    .line 364
    .local v0, "inShadow":Ljava/io/InputStream;
    if-eqz v0, :cond_1

    .line 366
    :try_start_0
    sget-object v1, Ljava/lang/System;->in:Ljava/io/InputStream;

    if-eq v0, v1, :cond_0

    .line 367
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    :cond_0
    iput-object v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 371
    iput-object v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->in:Ljava/io/InputStream;

    .line 374
    :cond_1
    return-void

    .line 370
    :catchall_0
    move-exception v1

    iput-object v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 371
    iput-object v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->in:Ljava/io/InputStream;

    throw v1
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->in:Ljava/io/InputStream;

    if-eqz v1, :cond_1

    .line 142
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->read0()I

    move-result v0

    .line 143
    .local v0, "r":I
    if-gez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->count(I)V

    .line 144
    return v0

    .line 143
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 146
    .end local v0    # "r":I
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "stream closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public read([BII)I
    .locals 8
    .param p1, "dest"    # [B
    .param p2, "offs"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    if-gez p2, :cond_0

    .line 159
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "offs("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") < 0."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 161
    :cond_0
    if-gez p3, :cond_1

    .line 162
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "len("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") < 0."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 164
    :cond_1
    add-int v5, p2, p3

    array-length v6, p1

    if-le v5, v6, :cond_2

    .line 165
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "offs("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") + len("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") > dest.length("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 168
    :cond_2
    iget-object v5, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->in:Ljava/io/InputStream;

    if-nez v5, :cond_3

    .line 169
    new-instance v5, Ljava/io/IOException;

    const-string v6, "stream closed"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 172
    :cond_3
    add-int v4, p2, p3

    .line 173
    .local v4, "hi":I
    move v2, p2

    .local v2, "destOffs":I
    move v3, v2

    .line 174
    .end local v2    # "destOffs":I
    .local v3, "destOffs":I
    :goto_0
    if-ge v3, v4, :cond_4

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->read0()I

    move-result v0

    .local v0, "b":I
    if-ltz v0, :cond_4

    .line 175
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "destOffs":I
    .restart local v2    # "destOffs":I
    int-to-byte v5, v0

    aput-byte v5, p1, v3

    move v3, v2

    .end local v2    # "destOffs":I
    .restart local v3    # "destOffs":I
    goto :goto_0

    .line 178
    .end local v0    # "b":I
    :cond_4
    if-ne v3, p2, :cond_5

    const/4 v1, -0x1

    .line 179
    .local v1, "c":I
    :goto_1
    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->count(I)V

    .line 180
    return v1

    .line 178
    .end local v1    # "c":I
    :cond_5
    sub-int v1, v3, p2

    goto :goto_1
.end method
