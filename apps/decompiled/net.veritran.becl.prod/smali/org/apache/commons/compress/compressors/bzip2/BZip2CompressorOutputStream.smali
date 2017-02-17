.class public Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;
.super Lorg/apache/commons/compress/compressors/CompressorOutputStream;
.source "BZip2CompressorOutputStream.java"

# interfaces
.implements Lorg/apache/commons/compress/compressors/bzip2/BZip2Constants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    }
.end annotation


# static fields
.field private static final GREATER_ICOST:I = 0xf

.field private static final LESSER_ICOST:I = 0x0

.field public static final MAX_BLOCKSIZE:I = 0x9

.field public static final MIN_BLOCKSIZE:I = 0x1


# instance fields
.field private final allowableBlockSize:I

.field private blockCRC:I

.field private final blockSize100k:I

.field private blockSorter:Lorg/apache/commons/compress/compressors/bzip2/BlockSort;

.field private bsBuff:I

.field private bsLive:I

.field private combinedCRC:I

.field private final crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

.field private currentChar:I

.field private data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

.field private last:I

.field private nInUse:I

.field private nMTF:I

.field private out:Ljava/io/OutputStream;

.field private runLength:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 356
    const/16 v0, 0x9

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 357
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "blockSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 377
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorOutputStream;-><init>()V

    .line 305
    new-instance v0, Lorg/apache/commons/compress/compressors/bzip2/CRC;

    invoke-direct {v0}, Lorg/apache/commons/compress/compressors/bzip2/CRC;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    .line 311
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->currentChar:I

    .line 312
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->runLength:I

    .line 378
    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    .line 379
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "blockSize("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") < 1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 381
    :cond_0
    const/16 v0, 0x9

    if-le p2, v0, :cond_1

    .line 382
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "blockSize("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") > 9"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 385
    :cond_1
    iput p2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->blockSize100k:I

    .line 386
    iput-object p1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->out:Ljava/io/OutputStream;

    .line 389
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->blockSize100k:I

    const v1, 0x186a0

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x14

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->allowableBlockSize:I

    .line 390
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->init()V

    .line 391
    return-void
.end method

.method private blockSort()V
    .locals 3

    .prologue
    .line 1158
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->blockSorter:Lorg/apache/commons/compress/compressors/bzip2/BlockSort;

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->last:I

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->blockSort(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;I)V

    .line 1159
    return-void
.end method

.method private bsFinishedWithStream()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 677
    :goto_0
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsLive:I

    if-lez v1, :cond_0

    .line 678
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsBuff:I

    shr-int/lit8 v0, v1, 0x18

    .line 679
    .local v0, "ch":I
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 680
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsBuff:I

    shl-int/lit8 v1, v1, 0x8

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsBuff:I

    .line 681
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsLive:I

    add-int/lit8 v1, v1, -0x8

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsLive:I

    goto :goto_0

    .line 683
    .end local v0    # "ch":I
    :cond_0
    return-void
.end method

.method private bsPutInt(I)V
    .locals 2
    .param p1, "u"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x8

    .line 705
    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v1, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsW(II)V

    .line 706
    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v1, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsW(II)V

    .line 707
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v1, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsW(II)V

    .line 708
    and-int/lit16 v0, p1, 0xff

    invoke-direct {p0, v1, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsW(II)V

    .line 709
    return-void
.end method

.method private bsPutUByte(I)V
    .locals 1
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 701
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsW(II)V

    .line 702
    return-void
.end method

.method private bsW(II)V
    .locals 4
    .param p1, "n"    # I
    .param p2, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 686
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->out:Ljava/io/OutputStream;

    .line 687
    .local v2, "outShadow":Ljava/io/OutputStream;
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsLive:I

    .line 688
    .local v1, "bsLiveShadow":I
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsBuff:I

    .line 690
    .local v0, "bsBuffShadow":I
    :goto_0
    const/16 v3, 0x8

    if-lt v1, v3, :cond_0

    .line 691
    shr-int/lit8 v3, v0, 0x18

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 692
    shl-int/lit8 v0, v0, 0x8

    .line 693
    add-int/lit8 v1, v1, -0x8

    goto :goto_0

    .line 696
    :cond_0
    rsub-int/lit8 v3, v1, 0x20

    sub-int/2addr v3, p1

    shl-int v3, p2, v3

    or-int/2addr v3, v0

    iput v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsBuff:I

    .line 697
    add-int v3, v1, p1

    iput v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsLive:I

    .line 698
    return-void
.end method

.method public static chooseBlockSize(J)I
    .locals 4
    .param p0, "inputLength"    # J

    .prologue
    .line 339
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    const-wide/32 v0, 0x203a0

    div-long v0, p0, v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    const-wide/16 v2, 0x9

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x9

    goto :goto_0
.end method

.method private endBlock()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x59

    .line 548
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/bzip2/CRC;->getFinalCRC()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->blockCRC:I

    .line 549
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->combinedCRC:I

    shl-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->combinedCRC:I

    ushr-int/lit8 v1, v1, 0x1f

    or-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->combinedCRC:I

    .line 550
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->combinedCRC:I

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->blockCRC:I

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->combinedCRC:I

    .line 553
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->last:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 586
    :goto_0
    return-void

    .line 558
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->blockSort()V

    .line 571
    const/16 v0, 0x31

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 572
    const/16 v0, 0x41

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 573
    invoke-direct {p0, v2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 574
    const/16 v0, 0x26

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 575
    const/16 v0, 0x53

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 576
    invoke-direct {p0, v2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 579
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->blockCRC:I

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutInt(I)V

    .line 582
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsW(II)V

    .line 585
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->moveToFrontCodeAndSend()V

    goto :goto_0
.end method

.method private endCompression()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 595
    const/16 v0, 0x17

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 596
    const/16 v0, 0x72

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 597
    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 598
    const/16 v0, 0x38

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 599
    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 600
    const/16 v0, 0x90

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 602
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->combinedCRC:I

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutInt(I)V

    .line 603
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsFinishedWithStream()V

    .line 604
    return-void
.end method

.method private generateMTFValues()V
    .locals 22

    .prologue
    .line 1169
    move-object/from16 v0, p0

    iget v9, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->last:I

    .line 1170
    .local v9, "lastShadow":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    .line 1171
    .local v3, "dataShadow":Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    iget-object v7, v3, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->inUse:[Z

    .line 1172
    .local v7, "inUse":[Z
    iget-object v2, v3, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->block:[B

    .line 1173
    .local v2, "block":[B
    iget-object v5, v3, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->fmap:[I

    .line 1174
    .local v5, "fmap":[I
    iget-object v13, v3, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sfmap:[C

    .line 1175
    .local v13, "sfmap":[C
    iget-object v11, v3, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->mtfFreq:[I

    .line 1176
    .local v11, "mtfFreq":[I
    iget-object v0, v3, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->unseqToSeq:[B

    move-object/from16 v16, v0

    .line 1177
    .local v16, "unseqToSeq":[B
    iget-object v0, v3, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->generateMTFValues_yy:[B

    move-object/from16 v18, v0

    .line 1180
    .local v18, "yy":[B
    const/4 v12, 0x0

    .line 1181
    .local v12, "nInUseShadow":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    const/16 v20, 0x100

    move/from16 v0, v20

    if-ge v6, v0, :cond_1

    .line 1182
    aget-boolean v20, v7, v6

    if-eqz v20, :cond_0

    .line 1183
    int-to-byte v0, v12

    move/from16 v20, v0

    aput-byte v20, v16, v6

    .line 1184
    add-int/lit8 v12, v12, 0x1

    .line 1181
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1187
    :cond_1
    move-object/from16 v0, p0

    iput v12, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->nInUse:I

    .line 1189
    add-int/lit8 v4, v12, 0x1

    .line 1191
    .local v4, "eob":I
    move v6, v4

    :goto_1
    if-ltz v6, :cond_2

    .line 1192
    const/16 v20, 0x0

    aput v20, v11, v6

    .line 1191
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 1195
    :cond_2
    move v6, v12

    :goto_2
    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_3

    .line 1196
    int-to-byte v0, v6

    move/from16 v20, v0

    aput-byte v20, v18, v6

    goto :goto_2

    .line 1199
    :cond_3
    const/16 v17, 0x0

    .line 1200
    .local v17, "wr":I
    const/16 v19, 0x0

    .line 1202
    .local v19, "zPend":I
    const/4 v6, 0x0

    :goto_3
    if-gt v6, v9, :cond_9

    .line 1203
    aget v20, v5, v6

    aget-byte v20, v2, v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    aget-byte v10, v16, v20

    .line 1204
    .local v10, "ll_i":B
    const/16 v20, 0x0

    aget-byte v14, v18, v20

    .line 1205
    .local v14, "tmp":B
    const/4 v8, 0x0

    .line 1207
    .local v8, "j":I
    :goto_4
    if-eq v10, v14, :cond_4

    .line 1208
    add-int/lit8 v8, v8, 0x1

    .line 1209
    move v15, v14

    .line 1210
    .local v15, "tmp2":B
    aget-byte v14, v18, v8

    .line 1211
    aput-byte v15, v18, v8

    goto :goto_4

    .line 1213
    .end local v15    # "tmp2":B
    :cond_4
    const/16 v20, 0x0

    aput-byte v14, v18, v20

    .line 1215
    if-nez v8, :cond_5

    .line 1216
    add-int/lit8 v19, v19, 0x1

    .line 1202
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1218
    :cond_5
    if-lez v19, :cond_8

    .line 1219
    add-int/lit8 v19, v19, -0x1

    .line 1221
    :goto_6
    and-int/lit8 v20, v19, 0x1

    if-nez v20, :cond_6

    .line 1222
    const/16 v20, 0x0

    aput-char v20, v13, v17

    .line 1223
    add-int/lit8 v17, v17, 0x1

    .line 1224
    const/16 v20, 0x0

    aget v21, v11, v20

    add-int/lit8 v21, v21, 0x1

    aput v21, v11, v20

    .line 1231
    :goto_7
    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_7

    .line 1232
    add-int/lit8 v20, v19, -0x2

    shr-int/lit8 v19, v20, 0x1

    goto :goto_6

    .line 1226
    :cond_6
    const/16 v20, 0x1

    aput-char v20, v13, v17

    .line 1227
    add-int/lit8 v17, v17, 0x1

    .line 1228
    const/16 v20, 0x1

    aget v21, v11, v20

    add-int/lit8 v21, v21, 0x1

    aput v21, v11, v20

    goto :goto_7

    .line 1237
    :cond_7
    const/16 v19, 0x0

    .line 1239
    :cond_8
    add-int/lit8 v20, v8, 0x1

    move/from16 v0, v20

    int-to-char v0, v0

    move/from16 v20, v0

    aput-char v20, v13, v17

    .line 1240
    add-int/lit8 v17, v17, 0x1

    .line 1241
    add-int/lit8 v20, v8, 0x1

    aget v21, v11, v20

    add-int/lit8 v21, v21, 0x1

    aput v21, v11, v20

    goto :goto_5

    .line 1245
    .end local v8    # "j":I
    .end local v10    # "ll_i":B
    .end local v14    # "tmp":B
    :cond_9
    if-lez v19, :cond_b

    .line 1246
    add-int/lit8 v19, v19, -0x1

    .line 1248
    :goto_8
    and-int/lit8 v20, v19, 0x1

    if-nez v20, :cond_a

    .line 1249
    const/16 v20, 0x0

    aput-char v20, v13, v17

    .line 1250
    add-int/lit8 v17, v17, 0x1

    .line 1251
    const/16 v20, 0x0

    aget v21, v11, v20

    add-int/lit8 v21, v21, 0x1

    aput v21, v11, v20

    .line 1258
    :goto_9
    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_b

    .line 1259
    add-int/lit8 v20, v19, -0x2

    shr-int/lit8 v19, v20, 0x1

    goto :goto_8

    .line 1253
    :cond_a
    const/16 v20, 0x1

    aput-char v20, v13, v17

    .line 1254
    add-int/lit8 v17, v17, 0x1

    .line 1255
    const/16 v20, 0x1

    aget v21, v11, v20

    add-int/lit8 v21, v21, 0x1

    aput v21, v11, v20

    goto :goto_9

    .line 1266
    :cond_b
    int-to-char v0, v4

    move/from16 v20, v0

    aput-char v20, v13, v17

    .line 1267
    aget v20, v11, v4

    add-int/lit8 v20, v20, 0x1

    aput v20, v11, v4

    .line 1268
    add-int/lit8 v20, v17, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->nMTF:I

    .line 1269
    return-void
.end method

.method private static hbAssignCodes([I[BIII)V
    .locals 4
    .param p0, "code"    # [I
    .param p1, "length"    # [B
    .param p2, "minLen"    # I
    .param p3, "maxLen"    # I
    .param p4, "alphaSize"    # I

    .prologue
    .line 664
    const/4 v2, 0x0

    .line 665
    .local v2, "vec":I
    move v1, p2

    .local v1, "n":I
    :goto_0
    if-gt v1, p3, :cond_2

    .line 666
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p4, :cond_1

    .line 667
    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    if-ne v3, v1, :cond_0

    .line 668
    aput v2, p0, v0

    .line 669
    add-int/lit8 v2, v2, 0x1

    .line 666
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 672
    :cond_1
    shl-int/lit8 v2, v2, 0x1

    .line 665
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 674
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private static hbMakeCodeLengths([B[ILorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;II)V
    .locals 23
    .param p0, "len"    # [B
    .param p1, "freq"    # [I
    .param p2, "dat"    # Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    .param p3, "alphaSize"    # I
    .param p4, "maxLen"    # I

    .prologue
    .line 148
    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->heap:[I

    .line 149
    .local v2, "heap":[I
    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->weight:[I

    .line 150
    .local v14, "weight":[I
    move-object/from16 v0, p2

    iget-object v10, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->parent:[I

    .line 152
    .local v10, "parent":[I
    move/from16 v3, p3

    .local v3, "i":I
    :goto_0
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_1

    .line 153
    add-int/lit8 v21, v3, 0x1

    aget v20, p1, v3

    if-nez v20, :cond_0

    const/16 v20, 0x1

    :goto_1
    shl-int/lit8 v20, v20, 0x8

    aput v20, v14, v21

    goto :goto_0

    :cond_0
    aget v20, p1, v3

    goto :goto_1

    .line 156
    :cond_1
    const/4 v13, 0x1

    .local v13, "tooLong":Z
    :cond_2
    if-eqz v13, :cond_11

    .line 157
    const/4 v13, 0x0

    .line 159
    move/from16 v9, p3

    .line 160
    .local v9, "nNodes":I
    const/4 v8, 0x0

    .line 161
    .local v8, "nHeap":I
    const/16 v20, 0x0

    const/16 v21, 0x0

    aput v21, v2, v20

    .line 162
    const/16 v20, 0x0

    const/16 v21, 0x0

    aput v21, v14, v20

    .line 163
    const/16 v20, 0x0

    const/16 v21, -0x2

    aput v21, v10, v20

    .line 165
    const/4 v3, 0x1

    :goto_2
    move/from16 v0, p3

    if-gt v3, v0, :cond_5

    .line 166
    const/16 v20, -0x1

    aput v20, v10, v3

    .line 167
    add-int/lit8 v8, v8, 0x1

    .line 168
    aput v3, v2, v8

    .line 170
    move/from16 v19, v8

    .line 171
    .local v19, "zz":I
    aget v12, v2, v19

    .line 172
    .local v12, "tmp":I
    :goto_3
    aget v20, v14, v12

    shr-int/lit8 v21, v19, 0x1

    aget v21, v2, v21

    aget v21, v14, v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_3

    .line 173
    shr-int/lit8 v20, v19, 0x1

    aget v20, v2, v20

    aput v20, v2, v19

    .line 174
    shr-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 176
    :cond_3
    aput v12, v2, v19

    .line 165
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 263
    .local v6, "n1":I
    .local v7, "n2":I
    .local v15, "weight_n1":I
    .local v16, "weight_n2":I
    .local v17, "weight_tmp":I
    .local v18, "yy":I
    :cond_4
    aput v12, v2, v19

    .line 179
    .end local v6    # "n1":I
    .end local v7    # "n2":I
    .end local v12    # "tmp":I
    .end local v15    # "weight_n1":I
    .end local v16    # "weight_n2":I
    .end local v17    # "weight_tmp":I
    .end local v18    # "yy":I
    .end local v19    # "zz":I
    :cond_5
    const/16 v20, 0x1

    move/from16 v0, v20

    if-le v8, v0, :cond_d

    .line 180
    const/16 v20, 0x1

    aget v6, v2, v20

    .line 181
    .restart local v6    # "n1":I
    const/16 v20, 0x1

    aget v21, v2, v8

    aput v21, v2, v20

    .line 182
    add-int/lit8 v8, v8, -0x1

    .line 184
    const/16 v18, 0x0

    .line 185
    .restart local v18    # "yy":I
    const/16 v19, 0x1

    .line 186
    .restart local v19    # "zz":I
    const/16 v20, 0x1

    aget v12, v2, v20

    .line 189
    .restart local v12    # "tmp":I
    :goto_4
    shl-int/lit8 v18, v19, 0x1

    .line 191
    move/from16 v0, v18

    if-le v0, v8, :cond_8

    .line 208
    :cond_6
    aput v12, v2, v19

    .line 210
    const/16 v20, 0x1

    aget v7, v2, v20

    .line 211
    .restart local v7    # "n2":I
    const/16 v20, 0x1

    aget v21, v2, v8

    aput v21, v2, v20

    .line 212
    add-int/lit8 v8, v8, -0x1

    .line 214
    const/16 v18, 0x0

    .line 215
    const/16 v19, 0x1

    .line 216
    const/16 v20, 0x1

    aget v12, v2, v20

    .line 219
    :goto_5
    shl-int/lit8 v18, v19, 0x1

    .line 221
    move/from16 v0, v18

    if-le v0, v8, :cond_a

    .line 238
    :cond_7
    aput v12, v2, v19

    .line 239
    add-int/lit8 v9, v9, 0x1

    .line 240
    aput v9, v10, v7

    aput v9, v10, v6

    .line 242
    aget v15, v14, v6

    .line 243
    .restart local v15    # "weight_n1":I
    aget v16, v14, v7

    .line 244
    .restart local v16    # "weight_n2":I
    and-int/lit16 v0, v15, -0x100

    move/from16 v20, v0

    move/from16 v0, v16

    and-int/lit16 v0, v0, -0x100

    move/from16 v21, v0

    add-int v21, v21, v20

    and-int/lit16 v0, v15, 0xff

    move/from16 v20, v0

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    move/from16 v0, v20

    move/from16 v1, v22

    if-le v0, v1, :cond_c

    and-int/lit16 v0, v15, 0xff

    move/from16 v20, v0

    :goto_6
    add-int/lit8 v20, v20, 0x1

    or-int v20, v20, v21

    aput v20, v14, v9

    .line 251
    const/16 v20, -0x1

    aput v20, v10, v9

    .line 252
    add-int/lit8 v8, v8, 0x1

    .line 253
    aput v9, v2, v8

    .line 255
    const/4 v12, 0x0

    .line 256
    move/from16 v19, v8

    .line 257
    aget v12, v2, v19

    .line 258
    aget v17, v14, v12

    .line 259
    .restart local v17    # "weight_tmp":I
    :goto_7
    shr-int/lit8 v20, v19, 0x1

    aget v20, v2, v20

    aget v20, v14, v20

    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_4

    .line 260
    shr-int/lit8 v20, v19, 0x1

    aget v20, v2, v20

    aput v20, v2, v19

    .line 261
    shr-int/lit8 v19, v19, 0x1

    goto :goto_7

    .line 195
    .end local v7    # "n2":I
    .end local v15    # "weight_n1":I
    .end local v16    # "weight_n2":I
    .end local v17    # "weight_tmp":I
    :cond_8
    move/from16 v0, v18

    if-ge v0, v8, :cond_9

    add-int/lit8 v20, v18, 0x1

    aget v20, v2, v20

    aget v20, v14, v20

    aget v21, v2, v18

    aget v21, v14, v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_9

    .line 197
    add-int/lit8 v18, v18, 0x1

    .line 200
    :cond_9
    aget v20, v14, v12

    aget v21, v2, v18

    aget v21, v14, v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_6

    .line 204
    aget v20, v2, v18

    aput v20, v2, v19

    .line 205
    move/from16 v19, v18

    goto/16 :goto_4

    .line 225
    .restart local v7    # "n2":I
    :cond_a
    move/from16 v0, v18

    if-ge v0, v8, :cond_b

    add-int/lit8 v20, v18, 0x1

    aget v20, v2, v20

    aget v20, v14, v20

    aget v21, v2, v18

    aget v21, v14, v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_b

    .line 227
    add-int/lit8 v18, v18, 0x1

    .line 230
    :cond_b
    aget v20, v14, v12

    aget v21, v2, v18

    aget v21, v14, v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_7

    .line 234
    aget v20, v2, v18

    aput v20, v2, v19

    .line 235
    move/from16 v19, v18

    goto/16 :goto_5

    .line 244
    .restart local v15    # "weight_n1":I
    .restart local v16    # "weight_n2":I
    :cond_c
    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    goto/16 :goto_6

    .line 267
    .end local v6    # "n1":I
    .end local v7    # "n2":I
    .end local v12    # "tmp":I
    .end local v15    # "weight_n1":I
    .end local v16    # "weight_n2":I
    .end local v18    # "yy":I
    .end local v19    # "zz":I
    :cond_d
    const/4 v3, 0x1

    :goto_8
    move/from16 v0, p3

    if-gt v3, v0, :cond_10

    .line 268
    const/4 v4, 0x0

    .line 269
    .local v4, "j":I
    move v5, v3

    .line 271
    .local v5, "k":I
    :goto_9
    aget v11, v10, v5

    .local v11, "parent_k":I
    if-ltz v11, :cond_e

    .line 272
    move v5, v11

    .line 273
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 276
    :cond_e
    add-int/lit8 v20, v3, -0x1

    int-to-byte v0, v4

    move/from16 v21, v0

    aput-byte v21, p0, v20

    .line 277
    move/from16 v0, p4

    if-le v4, v0, :cond_f

    .line 278
    const/4 v13, 0x1

    .line 267
    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 282
    .end local v4    # "j":I
    .end local v5    # "k":I
    .end local v11    # "parent_k":I
    :cond_10
    if-eqz v13, :cond_2

    .line 283
    const/4 v3, 0x1

    :goto_a
    move/from16 v0, p3

    if-ge v3, v0, :cond_2

    .line 284
    aget v20, v14, v3

    shr-int/lit8 v4, v20, 0x8

    .line 285
    .restart local v4    # "j":I
    shr-int/lit8 v20, v4, 0x1

    add-int/lit8 v4, v20, 0x1

    .line 286
    shl-int/lit8 v20, v4, 0x8

    aput v20, v14, v3

    .line 283
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 290
    .end local v4    # "j":I
    .end local v8    # "nHeap":I
    .end local v9    # "nNodes":I
    :cond_11
    return-void
.end method

.method private init()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 520
    const/16 v0, 0x42

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 521
    const/16 v0, 0x5a

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 523
    new-instance v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->blockSize100k:I

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    .line 524
    new-instance v0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;-><init>(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->blockSorter:Lorg/apache/commons/compress/compressors/bzip2/BlockSort;

    .line 527
    const/16 v0, 0x68

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 528
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->blockSize100k:I

    add-int/lit8 v0, v0, 0x30

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 530
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->combinedCRC:I

    .line 531
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->initBlock()V

    .line 532
    return-void
.end method

.method private initBlock()V
    .locals 3

    .prologue
    .line 536
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    invoke-virtual {v2}, Lorg/apache/commons/compress/compressors/bzip2/CRC;->initialiseCRC()V

    .line 537
    const/4 v2, -0x1

    iput v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->last:I

    .line 540
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    iget-object v1, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->inUse:[Z

    .line 541
    .local v1, "inUse":[Z
    const/16 v0, 0x100

    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 542
    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    goto :goto_0

    .line 545
    :cond_0
    return-void
.end method

.method private moveToFrontCodeAndSend()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1152
    const/16 v0, 0x18

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    iget v1, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->origPtr:I

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsW(II)V

    .line 1153
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->generateMTFValues()V

    .line 1154
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->sendMTFValues()V

    .line 1155
    return-void
.end method

.method private sendMTFValues()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 712
    iget-object v7, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    iget-object v1, v7, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sendMTFValues_len:[[B

    .line 713
    .local v1, "len":[[B
    iget v7, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->nInUse:I

    add-int/lit8 v0, v7, 0x2

    .line 715
    .local v0, "alphaSize":I
    const/4 v5, 0x6

    .local v5, "t":I
    :cond_0
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_1

    .line 716
    aget-object v2, v1, v5

    .line 717
    .local v2, "len_t":[B
    move v6, v0

    .local v6, "v":I
    :goto_0
    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_0

    .line 718
    const/16 v7, 0xf

    aput-byte v7, v2, v6

    goto :goto_0

    .line 724
    .end local v2    # "len_t":[B
    .end local v6    # "v":I
    :cond_1
    iget v7, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->nMTF:I

    const/16 v8, 0xc8

    if-ge v7, v8, :cond_2

    const/4 v3, 0x2

    .line 728
    .local v3, "nGroups":I
    :goto_1
    invoke-direct {p0, v3, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->sendMTFValues0(II)V

    .line 733
    invoke-direct {p0, v3, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->sendMTFValues1(II)I

    move-result v4

    .line 736
    .local v4, "nSelectors":I
    invoke-direct {p0, v3, v4}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->sendMTFValues2(II)V

    .line 739
    invoke-direct {p0, v3, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->sendMTFValues3(II)V

    .line 742
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->sendMTFValues4()V

    .line 745
    invoke-direct {p0, v3, v4}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->sendMTFValues5(II)V

    .line 748
    invoke-direct {p0, v3, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->sendMTFValues6(II)V

    .line 751
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->sendMTFValues7()V

    .line 752
    return-void

    .line 724
    .end local v3    # "nGroups":I
    .end local v4    # "nSelectors":I
    :cond_2
    iget v7, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->nMTF:I

    const/16 v8, 0x258

    if-ge v7, v8, :cond_3

    const/4 v3, 0x3

    goto :goto_1

    :cond_3
    iget v7, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->nMTF:I

    const/16 v8, 0x4b0

    if-ge v7, v8, :cond_4

    const/4 v3, 0x4

    goto :goto_1

    :cond_4
    iget v7, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->nMTF:I

    const/16 v8, 0x960

    if-ge v7, v8, :cond_5

    const/4 v3, 0x5

    goto :goto_1

    :cond_5
    const/4 v3, 0x6

    goto :goto_1
.end method

.method private sendMTFValues0(II)V
    .locals 13
    .param p1, "nGroups"    # I
    .param p2, "alphaSize"    # I

    .prologue
    .line 755
    iget-object v12, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    iget-object v5, v12, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sendMTFValues_len:[[B

    .line 756
    .local v5, "len":[[B
    iget-object v12, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    iget-object v7, v12, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->mtfFreq:[I

    .line 758
    .local v7, "mtfFreq":[I
    iget v9, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->nMTF:I

    .line 759
    .local v9, "remF":I
    const/4 v4, 0x0

    .line 761
    .local v4, "gs":I
    move v8, p1

    .local v8, "nPart":I
    :goto_0
    if-lez v8, :cond_3

    .line 762
    div-int v10, v9, v8

    .line 763
    .local v10, "tFreq":I
    add-int/lit8 v2, v4, -0x1

    .line 764
    .local v2, "ge":I
    const/4 v1, 0x0

    .line 766
    .local v1, "aFreq":I
    add-int/lit8 v0, p2, -0x1

    .local v0, "a":I
    move v3, v2

    .end local v2    # "ge":I
    .local v3, "ge":I
    :goto_1
    if-ge v1, v10, :cond_0

    if-ge v3, v0, :cond_0

    .line 767
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "ge":I
    .restart local v2    # "ge":I
    aget v12, v7, v2

    add-int/2addr v1, v12

    move v3, v2

    .end local v2    # "ge":I
    .restart local v3    # "ge":I
    goto :goto_1

    .line 770
    :cond_0
    if-le v3, v4, :cond_4

    if-eq v8, p1, :cond_4

    const/4 v12, 0x1

    if-eq v8, v12, :cond_4

    sub-int v12, p1, v8

    and-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_4

    .line 772
    add-int/lit8 v2, v3, -0x1

    .end local v3    # "ge":I
    .restart local v2    # "ge":I
    aget v12, v7, v3

    sub-int/2addr v1, v12

    .line 775
    :goto_2
    add-int/lit8 v12, v8, -0x1

    aget-object v6, v5, v12

    .line 776
    .local v6, "len_np":[B
    move v11, p2

    .local v11, "v":I
    :goto_3
    add-int/lit8 v11, v11, -0x1

    if-ltz v11, :cond_2

    .line 777
    if-lt v11, v4, :cond_1

    if-gt v11, v2, :cond_1

    .line 778
    const/4 v12, 0x0

    aput-byte v12, v6, v11

    goto :goto_3

    .line 780
    :cond_1
    const/16 v12, 0xf

    aput-byte v12, v6, v11

    goto :goto_3

    .line 784
    :cond_2
    add-int/lit8 v4, v2, 0x1

    .line 785
    sub-int/2addr v9, v1

    .line 761
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 787
    .end local v0    # "a":I
    .end local v1    # "aFreq":I
    .end local v2    # "ge":I
    .end local v6    # "len_np":[B
    .end local v10    # "tFreq":I
    .end local v11    # "v":I
    :cond_3
    return-void

    .restart local v0    # "a":I
    .restart local v1    # "aFreq":I
    .restart local v3    # "ge":I
    .restart local v10    # "tFreq":I
    :cond_4
    move v2, v3

    .end local v3    # "ge":I
    .restart local v2    # "ge":I
    goto :goto_2
.end method

.method private sendMTFValues1(II)I
    .locals 41
    .param p1, "nGroups"    # I
    .param p2, "alphaSize"    # I

    .prologue
    .line 790
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    .line 791
    .local v15, "dataShadow":Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    iget-object v0, v15, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sendMTFValues_rfreq:[[I

    move-object/from16 v31, v0

    .line 792
    .local v31, "rfreq":[[I
    iget-object v0, v15, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sendMTFValues_fave:[I

    move-object/from16 v16, v0

    .line 793
    .local v16, "fave":[I
    iget-object v7, v15, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sendMTFValues_cost:[S

    .line 794
    .local v7, "cost":[S
    iget-object v0, v15, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sfmap:[C

    move-object/from16 v35, v0

    .line 795
    .local v35, "sfmap":[C
    iget-object v0, v15, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->selector:[B

    move-object/from16 v34, v0

    .line 796
    .local v34, "selector":[B
    iget-object v0, v15, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sendMTFValues_len:[[B

    move-object/from16 v22, v0

    .line 797
    .local v22, "len":[[B
    const/16 v37, 0x0

    aget-object v23, v22, v37

    .line 798
    .local v23, "len_0":[B
    const/16 v37, 0x1

    aget-object v24, v22, v37

    .line 799
    .local v24, "len_1":[B
    const/16 v37, 0x2

    aget-object v25, v22, v37

    .line 800
    .local v25, "len_2":[B
    const/16 v37, 0x3

    aget-object v26, v22, v37

    .line 801
    .local v26, "len_3":[B
    const/16 v37, 0x4

    aget-object v27, v22, v37

    .line 802
    .local v27, "len_4":[B
    const/16 v37, 0x5

    aget-object v28, v22, v37

    .line 803
    .local v28, "len_5":[B
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->nMTF:I

    move/from16 v29, v0

    .line 805
    .local v29, "nMTFShadow":I
    const/16 v30, 0x0

    .line 807
    .local v30, "nSelectors":I
    const/16 v21, 0x0

    .local v21, "iter":I
    :goto_0
    const/16 v37, 0x4

    move/from16 v0, v21

    move/from16 v1, v37

    if-ge v0, v1, :cond_c

    .line 808
    move/from16 v36, p1

    .local v36, "t":I
    :cond_0
    add-int/lit8 v36, v36, -0x1

    if-ltz v36, :cond_1

    .line 809
    const/16 v37, 0x0

    aput v37, v16, v36

    .line 810
    aget-object v33, v31, v36

    .line 811
    .local v33, "rfreqt":[I
    move/from16 v19, p2

    .local v19, "i":I
    :goto_1
    add-int/lit8 v19, v19, -0x1

    if-ltz v19, :cond_0

    .line 812
    const/16 v37, 0x0

    aput v37, v33, v19

    goto :goto_1

    .line 816
    .end local v19    # "i":I
    .end local v33    # "rfreqt":[I
    :cond_1
    const/16 v30, 0x0

    .line 818
    const/16 v18, 0x0

    .local v18, "gs":I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->nMTF:I

    move/from16 v37, v0

    move/from16 v0, v18

    move/from16 v1, v37

    if-ge v0, v1, :cond_a

    .line 826
    add-int/lit8 v37, v18, 0x32

    add-int/lit8 v37, v37, -0x1

    add-int/lit8 v38, v29, -0x1

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 828
    .local v17, "ge":I
    const/16 v37, 0x6

    move/from16 v0, p1

    move/from16 v1, v37

    if-ne v0, v1, :cond_5

    .line 831
    const/4 v8, 0x0

    .line 832
    .local v8, "cost0":S
    const/4 v9, 0x0

    .line 833
    .local v9, "cost1":S
    const/4 v10, 0x0

    .line 834
    .local v10, "cost2":S
    const/4 v11, 0x0

    .line 835
    .local v11, "cost3":S
    const/4 v12, 0x0

    .line 836
    .local v12, "cost4":S
    const/4 v13, 0x0

    .line 838
    .local v13, "cost5":S
    move/from16 v19, v18

    .restart local v19    # "i":I
    :goto_3
    move/from16 v0, v19

    move/from16 v1, v17

    if-gt v0, v1, :cond_2

    .line 839
    aget-char v20, v35, v19

    .line 840
    .local v20, "icv":I
    aget-byte v37, v23, v20

    move/from16 v0, v37

    and-int/lit16 v0, v0, 0xff

    move/from16 v37, v0

    add-int v37, v37, v8

    move/from16 v0, v37

    int-to-short v8, v0

    .line 841
    aget-byte v37, v24, v20

    move/from16 v0, v37

    and-int/lit16 v0, v0, 0xff

    move/from16 v37, v0

    add-int v37, v37, v9

    move/from16 v0, v37

    int-to-short v9, v0

    .line 842
    aget-byte v37, v25, v20

    move/from16 v0, v37

    and-int/lit16 v0, v0, 0xff

    move/from16 v37, v0

    add-int v37, v37, v10

    move/from16 v0, v37

    int-to-short v10, v0

    .line 843
    aget-byte v37, v26, v20

    move/from16 v0, v37

    and-int/lit16 v0, v0, 0xff

    move/from16 v37, v0

    add-int v37, v37, v11

    move/from16 v0, v37

    int-to-short v11, v0

    .line 844
    aget-byte v37, v27, v20

    move/from16 v0, v37

    and-int/lit16 v0, v0, 0xff

    move/from16 v37, v0

    add-int v37, v37, v12

    move/from16 v0, v37

    int-to-short v12, v0

    .line 845
    aget-byte v37, v28, v20

    move/from16 v0, v37

    and-int/lit16 v0, v0, 0xff

    move/from16 v37, v0

    add-int v37, v37, v13

    move/from16 v0, v37

    int-to-short v13, v0

    .line 838
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 848
    .end local v20    # "icv":I
    :cond_2
    const/16 v37, 0x0

    aput-short v8, v7, v37

    .line 849
    const/16 v37, 0x1

    aput-short v9, v7, v37

    .line 850
    const/16 v37, 0x2

    aput-short v10, v7, v37

    .line 851
    const/16 v37, 0x3

    aput-short v11, v7, v37

    .line 852
    const/16 v37, 0x4

    aput-short v12, v7, v37

    .line 853
    const/16 v37, 0x5

    aput-short v13, v7, v37

    .line 872
    .end local v8    # "cost0":S
    .end local v9    # "cost1":S
    .end local v10    # "cost2":S
    .end local v11    # "cost3":S
    .end local v12    # "cost4":S
    .end local v13    # "cost5":S
    :cond_3
    const/4 v6, -0x1

    .line 873
    .local v6, "bt":I
    move/from16 v36, p1

    const v5, 0x3b9ac9ff

    .local v5, "bc":I
    :cond_4
    :goto_4
    add-int/lit8 v36, v36, -0x1

    if-ltz v36, :cond_8

    .line 874
    aget-short v14, v7, v36

    .line 875
    .local v14, "cost_t":I
    if-ge v14, v5, :cond_4

    .line 876
    move v5, v14

    .line 877
    move/from16 v6, v36

    goto :goto_4

    .line 856
    .end local v5    # "bc":I
    .end local v6    # "bt":I
    .end local v14    # "cost_t":I
    .end local v19    # "i":I
    :cond_5
    move/from16 v36, p1

    :goto_5
    add-int/lit8 v36, v36, -0x1

    if-ltz v36, :cond_6

    .line 857
    const/16 v37, 0x0

    aput-short v37, v7, v36

    goto :goto_5

    .line 860
    :cond_6
    move/from16 v19, v18

    .restart local v19    # "i":I
    :goto_6
    move/from16 v0, v19

    move/from16 v1, v17

    if-gt v0, v1, :cond_3

    .line 861
    aget-char v20, v35, v19

    .line 862
    .restart local v20    # "icv":I
    move/from16 v36, p1

    :goto_7
    add-int/lit8 v36, v36, -0x1

    if-ltz v36, :cond_7

    .line 863
    aget-short v37, v7, v36

    aget-object v38, v22, v36

    aget-byte v38, v38, v20

    move/from16 v0, v38

    and-int/lit16 v0, v0, 0xff

    move/from16 v38, v0

    add-int v37, v37, v38

    move/from16 v0, v37

    int-to-short v0, v0

    move/from16 v37, v0

    aput-short v37, v7, v36

    goto :goto_7

    .line 860
    :cond_7
    add-int/lit8 v19, v19, 0x1

    goto :goto_6

    .line 881
    .end local v20    # "icv":I
    .restart local v5    # "bc":I
    .restart local v6    # "bt":I
    :cond_8
    aget v37, v16, v6

    add-int/lit8 v37, v37, 0x1

    aput v37, v16, v6

    .line 882
    int-to-byte v0, v6

    move/from16 v37, v0

    aput-byte v37, v34, v30

    .line 883
    add-int/lit8 v30, v30, 0x1

    .line 888
    aget-object v32, v31, v6

    .line 889
    .local v32, "rfreq_bt":[I
    move/from16 v19, v18

    :goto_8
    move/from16 v0, v19

    move/from16 v1, v17

    if-gt v0, v1, :cond_9

    .line 890
    aget-char v37, v35, v19

    aget v38, v32, v37

    add-int/lit8 v38, v38, 0x1

    aput v38, v32, v37

    .line 889
    add-int/lit8 v19, v19, 0x1

    goto :goto_8

    .line 893
    :cond_9
    add-int/lit8 v18, v17, 0x1

    .line 894
    goto/16 :goto_2

    .line 899
    .end local v5    # "bc":I
    .end local v6    # "bt":I
    .end local v17    # "ge":I
    .end local v19    # "i":I
    .end local v32    # "rfreq_bt":[I
    :cond_a
    const/16 v36, 0x0

    :goto_9
    move/from16 v0, v36

    move/from16 v1, p1

    if-ge v0, v1, :cond_b

    .line 900
    aget-object v37, v22, v36

    aget-object v38, v31, v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    move-object/from16 v39, v0

    const/16 v40, 0x14

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    move/from16 v3, p2

    move/from16 v4, v40

    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->hbMakeCodeLengths([B[ILorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;II)V

    .line 899
    add-int/lit8 v36, v36, 0x1

    goto :goto_9

    .line 807
    :cond_b
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_0

    .line 904
    .end local v18    # "gs":I
    .end local v36    # "t":I
    :cond_c
    return v30
.end method

.method private sendMTFValues2(II)V
    .locals 10
    .param p1, "nGroups"    # I
    .param p2, "nSelectors"    # I

    .prologue
    const/4 v9, 0x0

    .line 910
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    .line 911
    .local v0, "dataShadow":Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    iget-object v4, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sendMTFValues2_pos:[B

    .line 913
    .local v4, "pos":[B
    move v1, p1

    .local v1, "i":I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 914
    int-to-byte v7, v1

    aput-byte v7, v4, v1

    goto :goto_0

    .line 917
    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, p2, :cond_2

    .line 918
    iget-object v7, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->selector:[B

    aget-byte v3, v7, v1

    .line 919
    .local v3, "ll_i":B
    aget-byte v5, v4, v9

    .line 920
    .local v5, "tmp":B
    const/4 v2, 0x0

    .line 922
    .local v2, "j":I
    :goto_2
    if-eq v3, v5, :cond_1

    .line 923
    add-int/lit8 v2, v2, 0x1

    .line 924
    move v6, v5

    .line 925
    .local v6, "tmp2":B
    aget-byte v5, v4, v2

    .line 926
    aput-byte v6, v4, v2

    goto :goto_2

    .line 929
    .end local v6    # "tmp2":B
    :cond_1
    aput-byte v5, v4, v9

    .line 930
    iget-object v7, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->selectorMtf:[B

    int-to-byte v8, v2

    aput-byte v8, v7, v1

    .line 917
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 932
    .end local v2    # "j":I
    .end local v3    # "ll_i":B
    .end local v5    # "tmp":B
    :cond_2
    return-void
.end method

.method private sendMTFValues3(II)V
    .locals 10
    .param p1, "nGroups"    # I
    .param p2, "alphaSize"    # I

    .prologue
    .line 935
    iget-object v8, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    iget-object v0, v8, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sendMTFValues_code:[[I

    .line 936
    .local v0, "code":[[I
    iget-object v8, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    iget-object v3, v8, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sendMTFValues_len:[[B

    .line 938
    .local v3, "len":[[B
    const/4 v7, 0x0

    .local v7, "t":I
    :goto_0
    if-ge v7, p1, :cond_3

    .line 939
    const/16 v6, 0x20

    .line 940
    .local v6, "minLen":I
    const/4 v5, 0x0

    .line 941
    .local v5, "maxLen":I
    aget-object v4, v3, v7

    .line 942
    .local v4, "len_t":[B
    move v1, p2

    .local v1, "i":I
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_2

    .line 943
    aget-byte v8, v4, v1

    and-int/lit16 v2, v8, 0xff

    .line 944
    .local v2, "l":I
    if-le v2, v5, :cond_1

    .line 945
    move v5, v2

    .line 947
    :cond_1
    if-ge v2, v6, :cond_0

    .line 948
    move v6, v2

    goto :goto_1

    .line 955
    .end local v2    # "l":I
    :cond_2
    aget-object v8, v0, v7

    aget-object v9, v3, v7

    invoke-static {v8, v9, v6, v5, p2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->hbAssignCodes([I[BIII)V

    .line 938
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 957
    .end local v1    # "i":I
    .end local v4    # "len_t":[B
    .end local v5    # "maxLen":I
    .end local v6    # "minLen":I
    :cond_3
    return-void
.end method

.method private sendMTFValues4()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/16 v11, 0x10

    const/4 v9, 0x1

    .line 960
    iget-object v8, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    iget-object v4, v8, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->inUse:[Z

    .line 961
    .local v4, "inUse":[Z
    iget-object v8, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    iget-object v5, v8, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sentMTFValues4_inUse16:[Z

    .line 963
    .local v5, "inUse16":[Z
    const/16 v2, 0x10

    .local v2, "i":I
    :cond_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_2

    .line 964
    aput-boolean v10, v5, v2

    .line 965
    mul-int/lit8 v3, v2, 0x10

    .line 966
    .local v3, "i16":I
    const/16 v6, 0x10

    .local v6, "j":I
    :cond_1
    :goto_0
    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_0

    .line 967
    add-int v8, v3, v6

    aget-boolean v8, v4, v8

    if-eqz v8, :cond_1

    .line 968
    aput-boolean v9, v5, v2

    goto :goto_0

    .line 973
    .end local v3    # "i16":I
    .end local v6    # "j":I
    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v11, :cond_4

    .line 974
    aget-boolean v8, v5, v2

    if-eqz v8, :cond_3

    move v8, v9

    :goto_2
    invoke-direct {p0, v9, v8}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsW(II)V

    .line 973
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v8, v10

    .line 974
    goto :goto_2

    .line 977
    :cond_4
    iget-object v7, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->out:Ljava/io/OutputStream;

    .line 978
    .local v7, "outShadow":Ljava/io/OutputStream;
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsLive:I

    .line 979
    .local v1, "bsLiveShadow":I
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsBuff:I

    .line 981
    .local v0, "bsBuffShadow":I
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v11, :cond_8

    .line 982
    aget-boolean v8, v5, v2

    if-eqz v8, :cond_7

    .line 983
    mul-int/lit8 v3, v2, 0x10

    .line 984
    .restart local v3    # "i16":I
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_4
    if-ge v6, v11, :cond_7

    .line 986
    :goto_5
    const/16 v8, 0x8

    if-lt v1, v8, :cond_5

    .line 987
    shr-int/lit8 v8, v0, 0x18

    invoke-virtual {v7, v8}, Ljava/io/OutputStream;->write(I)V

    .line 988
    shl-int/lit8 v0, v0, 0x8

    .line 989
    add-int/lit8 v1, v1, -0x8

    goto :goto_5

    .line 991
    :cond_5
    add-int v8, v3, v6

    aget-boolean v8, v4, v8

    if-eqz v8, :cond_6

    .line 992
    rsub-int/lit8 v8, v1, 0x20

    add-int/lit8 v8, v8, -0x1

    shl-int v8, v9, v8

    or-int/2addr v0, v8

    .line 994
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 984
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 981
    .end local v3    # "i16":I
    .end local v6    # "j":I
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 999
    :cond_8
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsBuff:I

    .line 1000
    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsLive:I

    .line 1001
    return-void
.end method

.method private sendMTFValues5(II)V
    .locals 10
    .param p1, "nGroups"    # I
    .param p2, "nSelectors"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x8

    .line 1005
    const/4 v7, 0x3

    invoke-direct {p0, v7, p1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsW(II)V

    .line 1006
    const/16 v7, 0xf

    invoke-direct {p0, v7, p2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsW(II)V

    .line 1008
    iget-object v5, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->out:Ljava/io/OutputStream;

    .line 1009
    .local v5, "outShadow":Ljava/io/OutputStream;
    iget-object v7, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    iget-object v6, v7, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->selectorMtf:[B

    .line 1011
    .local v6, "selectorMtf":[B
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsLive:I

    .line 1012
    .local v1, "bsLiveShadow":I
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsBuff:I

    .line 1014
    .local v0, "bsBuffShadow":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, p2, :cond_3

    .line 1015
    const/4 v4, 0x0

    .local v4, "j":I
    aget-byte v7, v6, v3

    and-int/lit16 v2, v7, 0xff

    .local v2, "hj":I
    :goto_1
    if-ge v4, v2, :cond_1

    .line 1017
    :goto_2
    if-lt v1, v9, :cond_0

    .line 1018
    shr-int/lit8 v7, v0, 0x18

    invoke-virtual {v5, v7}, Ljava/io/OutputStream;->write(I)V

    .line 1019
    shl-int/lit8 v0, v0, 0x8

    .line 1020
    add-int/lit8 v1, v1, -0x8

    goto :goto_2

    .line 1022
    :cond_0
    const/4 v7, 0x1

    rsub-int/lit8 v8, v1, 0x20

    add-int/lit8 v8, v8, -0x1

    shl-int/2addr v7, v8

    or-int/2addr v0, v7

    .line 1023
    add-int/lit8 v1, v1, 0x1

    .line 1015
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1027
    :cond_1
    :goto_3
    if-lt v1, v9, :cond_2

    .line 1028
    shr-int/lit8 v7, v0, 0x18

    invoke-virtual {v5, v7}, Ljava/io/OutputStream;->write(I)V

    .line 1029
    shl-int/lit8 v0, v0, 0x8

    .line 1030
    add-int/lit8 v1, v1, -0x8

    goto :goto_3

    .line 1033
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 1014
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1036
    .end local v2    # "hj":I
    .end local v4    # "j":I
    :cond_3
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsBuff:I

    .line 1037
    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsLive:I

    .line 1038
    return-void
.end method

.method private sendMTFValues6(II)V
    .locals 12
    .param p1, "nGroups"    # I
    .param p2, "alphaSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x8

    .line 1042
    iget-object v9, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    iget-object v4, v9, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sendMTFValues_len:[[B

    .line 1043
    .local v4, "len":[[B
    iget-object v7, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->out:Ljava/io/OutputStream;

    .line 1045
    .local v7, "outShadow":Ljava/io/OutputStream;
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsLive:I

    .line 1046
    .local v1, "bsLiveShadow":I
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsBuff:I

    .line 1048
    .local v0, "bsBuffShadow":I
    const/4 v8, 0x0

    .local v8, "t":I
    :goto_0
    if-ge v8, p1, :cond_7

    .line 1049
    aget-object v5, v4, v8

    .line 1050
    .local v5, "len_t":[B
    const/4 v9, 0x0

    aget-byte v9, v5, v9

    and-int/lit16 v2, v9, 0xff

    .line 1053
    .local v2, "curr":I
    :goto_1
    if-lt v1, v11, :cond_0

    .line 1054
    shr-int/lit8 v9, v0, 0x18

    invoke-virtual {v7, v9}, Ljava/io/OutputStream;->write(I)V

    .line 1055
    shl-int/lit8 v0, v0, 0x8

    .line 1056
    add-int/lit8 v1, v1, -0x8

    goto :goto_1

    .line 1058
    :cond_0
    rsub-int/lit8 v9, v1, 0x20

    add-int/lit8 v9, v9, -0x5

    shl-int v9, v2, v9

    or-int/2addr v0, v9

    .line 1059
    add-int/lit8 v1, v1, 0x5

    .line 1061
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, p2, :cond_6

    .line 1062
    aget-byte v9, v5, v3

    and-int/lit16 v6, v9, 0xff

    .line 1063
    .local v6, "lti":I
    :goto_3
    if-ge v2, v6, :cond_3

    .line 1065
    :goto_4
    if-lt v1, v11, :cond_1

    .line 1066
    shr-int/lit8 v9, v0, 0x18

    invoke-virtual {v7, v9}, Ljava/io/OutputStream;->write(I)V

    .line 1067
    shl-int/lit8 v0, v0, 0x8

    .line 1068
    add-int/lit8 v1, v1, -0x8

    goto :goto_4

    .line 1070
    :cond_1
    const/4 v9, 0x2

    rsub-int/lit8 v10, v1, 0x20

    add-int/lit8 v10, v10, -0x2

    shl-int/2addr v9, v10

    or-int/2addr v0, v9

    .line 1071
    add-int/lit8 v1, v1, 0x2

    .line 1073
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1083
    :cond_2
    const/4 v9, 0x3

    rsub-int/lit8 v10, v1, 0x20

    add-int/lit8 v10, v10, -0x2

    shl-int/2addr v9, v10

    or-int/2addr v0, v9

    .line 1084
    add-int/lit8 v1, v1, 0x2

    .line 1086
    add-int/lit8 v2, v2, -0x1

    .line 1076
    :cond_3
    if-le v2, v6, :cond_4

    .line 1078
    :goto_5
    if-lt v1, v11, :cond_2

    .line 1079
    shr-int/lit8 v9, v0, 0x18

    invoke-virtual {v7, v9}, Ljava/io/OutputStream;->write(I)V

    .line 1080
    shl-int/lit8 v0, v0, 0x8

    .line 1081
    add-int/lit8 v1, v1, -0x8

    goto :goto_5

    .line 1090
    :cond_4
    :goto_6
    if-lt v1, v11, :cond_5

    .line 1091
    shr-int/lit8 v9, v0, 0x18

    invoke-virtual {v7, v9}, Ljava/io/OutputStream;->write(I)V

    .line 1092
    shl-int/lit8 v0, v0, 0x8

    .line 1093
    add-int/lit8 v1, v1, -0x8

    goto :goto_6

    .line 1096
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 1061
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1048
    .end local v6    # "lti":I
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1100
    .end local v2    # "curr":I
    .end local v3    # "i":I
    .end local v5    # "len_t":[B
    :cond_7
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsBuff:I

    .line 1101
    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsLive:I

    .line 1102
    return-void
.end method

.method private sendMTFValues7()V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1105
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    .line 1106
    .local v5, "dataShadow":Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    iget-object v8, v5, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sendMTFValues_len:[[B

    .line 1107
    .local v8, "len":[[B
    iget-object v3, v5, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sendMTFValues_code:[[I

    .line 1108
    .local v3, "code":[[I
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->out:Ljava/io/OutputStream;

    .line 1109
    .local v12, "outShadow":Ljava/io/OutputStream;
    iget-object v14, v5, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->selector:[B

    .line 1110
    .local v14, "selector":[B
    iget-object v0, v5, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sfmap:[C

    move-object/from16 v16, v0

    .line 1111
    .local v16, "sfmap":[C
    move-object/from16 v0, p0

    iget v11, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->nMTF:I

    .line 1113
    .local v11, "nMTFShadow":I
    const/4 v13, 0x0

    .line 1115
    .local v13, "selCtr":I
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsLive:I

    .line 1116
    .local v2, "bsLiveShadow":I
    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsBuff:I

    .line 1118
    .local v1, "bsBuffShadow":I
    const/4 v7, 0x0

    .local v7, "gs":I
    :goto_0
    if-ge v7, v11, :cond_2

    .line 1119
    add-int/lit8 v18, v7, 0x32

    add-int/lit8 v18, v18, -0x1

    add-int/lit8 v19, v11, -0x1

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1120
    .local v6, "ge":I
    aget-byte v18, v14, v13

    move/from16 v0, v18

    and-int/lit16 v15, v0, 0xff

    .line 1121
    .local v15, "selector_selCtr":I
    aget-object v4, v3, v15

    .line 1122
    .local v4, "code_selCtr":[I
    aget-object v9, v8, v15

    .line 1124
    .local v9, "len_selCtr":[B
    :goto_1
    if-gt v7, v6, :cond_1

    .line 1125
    aget-char v17, v16, v7

    .line 1131
    .local v17, "sfmap_i":I
    :goto_2
    const/16 v18, 0x8

    move/from16 v0, v18

    if-lt v2, v0, :cond_0

    .line 1132
    shr-int/lit8 v18, v1, 0x18

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/io/OutputStream;->write(I)V

    .line 1133
    shl-int/lit8 v1, v1, 0x8

    .line 1134
    add-int/lit8 v2, v2, -0x8

    goto :goto_2

    .line 1136
    :cond_0
    aget-byte v18, v9, v17

    move/from16 v0, v18

    and-int/lit16 v10, v0, 0xff

    .line 1137
    .local v10, "n":I
    aget v18, v4, v17

    rsub-int/lit8 v19, v2, 0x20

    sub-int v19, v19, v10

    shl-int v18, v18, v19

    or-int v1, v1, v18

    .line 1138
    add-int/2addr v2, v10

    .line 1140
    add-int/lit8 v7, v7, 0x1

    .line 1141
    goto :goto_1

    .line 1143
    .end local v10    # "n":I
    .end local v17    # "sfmap_i":I
    :cond_1
    add-int/lit8 v7, v6, 0x1

    .line 1144
    add-int/lit8 v13, v13, 0x1

    .line 1145
    goto :goto_0

    .line 1147
    .end local v4    # "code_selCtr":[I
    .end local v6    # "ge":I
    .end local v9    # "len_selCtr":[B
    .end local v15    # "selector_selCtr":I
    :cond_2
    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsBuff:I

    .line 1148
    move-object/from16 v0, p0

    iput v2, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsLive:I

    .line 1149
    return-void
.end method

.method private write0(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 641
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->currentChar:I

    if-eq v0, v2, :cond_2

    .line 642
    and-int/lit16 p1, p1, 0xff

    .line 643
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->currentChar:I

    if-ne v0, p1, :cond_1

    .line 644
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->runLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->runLength:I

    const/16 v1, 0xfe

    if-le v0, v1, :cond_0

    .line 645
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->writeRun()V

    .line 646
    iput v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->currentChar:I

    .line 647
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->runLength:I

    .line 659
    :cond_0
    :goto_0
    return-void

    .line 651
    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->writeRun()V

    .line 652
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->runLength:I

    .line 653
    iput p1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->currentChar:I

    goto :goto_0

    .line 656
    :cond_2
    and-int/lit16 v0, p1, 0xff

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->currentChar:I

    .line 657
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->runLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->runLength:I

    goto :goto_0
.end method

.method private writeRun()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 416
    iget v4, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->last:I

    .line 418
    .local v4, "lastShadow":I
    iget v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->allowableBlockSize:I

    if-ge v4, v6, :cond_0

    .line 419
    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->currentChar:I

    .line 420
    .local v2, "currentCharShadow":I
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    .line 421
    .local v3, "dataShadow":Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    iget-object v6, v3, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->inUse:[Z

    aput-boolean v7, v6, v2

    .line 422
    int-to-byte v1, v2

    .line 424
    .local v1, "ch":B
    iget v5, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->runLength:I

    .line 425
    .local v5, "runLengthShadow":I
    iget-object v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    invoke-virtual {v6, v2, v5}, Lorg/apache/commons/compress/compressors/bzip2/CRC;->updateCRC(II)V

    .line 427
    packed-switch v5, :pswitch_data_0

    .line 449
    add-int/lit8 v5, v5, -0x4

    .line 450
    iget-object v6, v3, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->inUse:[Z

    aput-boolean v7, v6, v5

    .line 451
    iget-object v0, v3, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->block:[B

    .line 452
    .local v0, "block":[B
    add-int/lit8 v6, v4, 0x2

    aput-byte v1, v0, v6

    .line 453
    add-int/lit8 v6, v4, 0x3

    aput-byte v1, v0, v6

    .line 454
    add-int/lit8 v6, v4, 0x4

    aput-byte v1, v0, v6

    .line 455
    add-int/lit8 v6, v4, 0x5

    aput-byte v1, v0, v6

    .line 456
    add-int/lit8 v6, v4, 0x6

    int-to-byte v7, v5

    aput-byte v7, v0, v6

    .line 457
    add-int/lit8 v6, v4, 0x5

    iput v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->last:I

    .line 467
    .end local v0    # "block":[B
    .end local v1    # "ch":B
    .end local v2    # "currentCharShadow":I
    .end local v3    # "dataShadow":Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    .end local v5    # "runLengthShadow":I
    :goto_0
    return-void

    .line 429
    .restart local v1    # "ch":B
    .restart local v2    # "currentCharShadow":I
    .restart local v3    # "dataShadow":Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    .restart local v5    # "runLengthShadow":I
    :pswitch_0
    iget-object v6, v3, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->block:[B

    add-int/lit8 v7, v4, 0x2

    aput-byte v1, v6, v7

    .line 430
    add-int/lit8 v6, v4, 0x1

    iput v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->last:I

    goto :goto_0

    .line 434
    :pswitch_1
    iget-object v6, v3, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->block:[B

    add-int/lit8 v7, v4, 0x2

    aput-byte v1, v6, v7

    .line 435
    iget-object v6, v3, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->block:[B

    add-int/lit8 v7, v4, 0x3

    aput-byte v1, v6, v7

    .line 436
    add-int/lit8 v6, v4, 0x2

    iput v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->last:I

    goto :goto_0

    .line 440
    :pswitch_2
    iget-object v0, v3, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->block:[B

    .line 441
    .restart local v0    # "block":[B
    add-int/lit8 v6, v4, 0x2

    aput-byte v1, v0, v6

    .line 442
    add-int/lit8 v6, v4, 0x3

    aput-byte v1, v0, v6

    .line 443
    add-int/lit8 v6, v4, 0x4

    aput-byte v1, v0, v6

    .line 444
    add-int/lit8 v6, v4, 0x3

    iput v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->last:I

    goto :goto_0

    .line 463
    .end local v0    # "block":[B
    .end local v1    # "ch":B
    .end local v2    # "currentCharShadow":I
    .end local v3    # "dataShadow":Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    .end local v5    # "runLengthShadow":I
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->endBlock()V

    .line 464
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->initBlock()V

    .line 465
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->writeRun()V

    goto :goto_0

    .line 427
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 498
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->out:Ljava/io/OutputStream;

    if-eqz v1, :cond_0

    .line 499
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->out:Ljava/io/OutputStream;

    .line 500
    .local v0, "outShadow":Ljava/io/OutputStream;
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->finish()V

    .line 501
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 503
    .end local v0    # "outShadow":Ljava/io/OutputStream;
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 474
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->finish()V

    .line 475
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 476
    return-void
.end method

.method public finish()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 480
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    .line 482
    :try_start_0
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->runLength:I

    if-lez v0, :cond_0

    .line 483
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->writeRun()V

    .line 485
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->currentChar:I

    .line 486
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->endBlock()V

    .line 487
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->endCompression()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 489
    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->out:Ljava/io/OutputStream;

    .line 490
    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    .line 491
    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->blockSorter:Lorg/apache/commons/compress/compressors/bzip2/BlockSort;

    .line 494
    :cond_1
    return-void

    .line 489
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->out:Ljava/io/OutputStream;

    .line 490
    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    .line 491
    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->blockSorter:Lorg/apache/commons/compress/compressors/bzip2/BlockSort;

    throw v0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 507
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->out:Ljava/io/OutputStream;

    .line 508
    .local v0, "outShadow":Ljava/io/OutputStream;
    if-eqz v0, :cond_0

    .line 509
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 511
    :cond_0
    return-void
.end method

.method public final getBlockSize()I
    .locals 1

    .prologue
    .line 610
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->blockSize100k:I

    return v0
.end method

.method public write(I)V
    .locals 2
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 395
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 396
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->write0(I)V

    .line 400
    return-void

    .line 398
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write([BII)V
    .locals 5
    .param p1, "buf"    # [B
    .param p2, "offs"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 616
    if-gez p2, :cond_0

    .line 617
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "offs("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") < 0."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 619
    :cond_0
    if-gez p3, :cond_1

    .line 620
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "len("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") < 0."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 622
    :cond_1
    add-int v2, p2, p3

    array-length v3, p1

    if-le v2, v3, :cond_2

    .line 623
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "offs("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") + len("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") > buf.length("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 627
    :cond_2
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->out:Ljava/io/OutputStream;

    if-nez v2, :cond_3

    .line 628
    new-instance v2, Ljava/io/IOException;

    const-string v3, "stream closed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 631
    :cond_3
    add-int v0, p2, p3

    .local v0, "hi":I
    move v1, p2

    .end local p2    # "offs":I
    .local v1, "offs":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 632
    add-int/lit8 p2, v1, 0x1

    .end local v1    # "offs":I
    .restart local p2    # "offs":I
    aget-byte v2, p1, v1

    invoke-direct {p0, v2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->write0(I)V

    move v1, p2

    .end local p2    # "offs":I
    .restart local v1    # "offs":I
    goto :goto_0

    .line 634
    :cond_4
    return-void
.end method
