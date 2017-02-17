.class public Lorg/apache/commons/compress/archivers/tar/TarUtils;
.super Ljava/lang/Object;
.source "TarUtils.java"


# static fields
.field private static final BYTE_MASK:I = 0xff

.field static final DEFAULT_ENCODING:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

.field static final FALLBACK_ENCODING:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->getZipEncoding(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/tar/TarUtils;->DEFAULT_ENCODING:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 47
    new-instance v0, Lorg/apache/commons/compress/archivers/tar/TarUtils$1;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/tar/TarUtils$1;-><init>()V

    sput-object v0, Lorg/apache/commons/compress/archivers/tar/TarUtils;->FALLBACK_ENCODING:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method

.method public static computeCheckSum([B)J
    .locals 8
    .param p0, "buf"    # [B

    .prologue
    .line 564
    const-wide/16 v4, 0x0

    .line 566
    .local v4, "sum":J
    move-object v0, p0

    .local v0, "arr$":[B
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-byte v1, v0, v2

    .line 567
    .local v1, "element":B
    and-int/lit16 v6, v1, 0xff

    int-to-long v6, v6

    add-long/2addr v4, v6

    .line 566
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 570
    .end local v1    # "element":B
    :cond_0
    return-wide v4
.end method

.method private static exceptionMessage([BIIIB)Ljava/lang/String;
    .locals 4
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "current"    # I
    .param p4, "currentByte"    # B

    .prologue
    .line 249
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, p1, p2}, Ljava/lang/String;-><init>([BII)V

    .line 251
    .local v1, "string":Ljava/lang/String;
    const-string v2, "\u0000"

    const-string v3, "{NUL}"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 252
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid byte "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at offset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-int v3, p3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' len="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "s":Ljava/lang/String;
    return-object v0
.end method

.method private static formatBigIntegerBinary(J[BIIZ)V
    .locals 8
    .param p0, "value"    # J
    .param p2, "buf"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .param p5, "negative"    # Z

    .prologue
    const/4 v6, 0x0

    .line 521
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    .line 522
    .local v5, "val":Ljava/math/BigInteger;
    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 523
    .local v0, "b":[B
    array-length v3, v0

    .line 524
    .local v3, "len":I
    add-int v7, p3, p4

    sub-int v4, v7, v3

    .line 525
    .local v4, "off":I
    invoke-static {v0, v6, p2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 526
    if-eqz p5, :cond_0

    const/16 v6, 0xff

    :cond_0
    int-to-byte v1, v6

    .line 527
    .local v1, "fill":B
    add-int/lit8 v2, p3, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 528
    aput-byte v1, p2, v2

    .line 527
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 530
    :cond_1
    return-void
.end method

.method public static formatCheckSumOctalBytes(J[BII)I
    .locals 4
    .param p0, "value"    # J
    .param p2, "buf"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .prologue
    .line 548
    add-int/lit8 v0, p4, -0x2

    .line 549
    .local v0, "idx":I
    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatUnsignedOctalString(J[BII)V

    .line 551
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "idx":I
    .local v1, "idx":I
    add-int v2, p3, v0

    const/4 v3, 0x0

    aput-byte v3, p2, v2

    .line 552
    add-int v2, p3, v1

    const/16 v3, 0x20

    aput-byte v3, p2, v2

    .line 554
    add-int v2, p3, p4

    return v2
.end method

.method private static formatLongBinary(J[BIIZ)V
    .locals 10
    .param p0, "value"    # J
    .param p2, "buf"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .param p5, "negative"    # Z

    .prologue
    const-wide/16 v8, 0x1

    .line 499
    add-int/lit8 v6, p4, -0x1

    mul-int/lit8 v0, v6, 0x8

    .line 500
    .local v0, "bits":I
    shl-long v2, v8, v0

    .line 501
    .local v2, "max":J
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    .line 502
    .local v4, "val":J
    cmp-long v6, v4, v2

    if-ltz v6, :cond_0

    .line 503
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Value "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is too large for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " byte field."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 506
    :cond_0
    if-eqz p5, :cond_1

    .line 507
    sub-long v6, v2, v8

    xor-long/2addr v4, v6

    .line 508
    const/16 v6, 0xff

    shl-int/2addr v6, v0

    int-to-long v6, v6

    or-long/2addr v4, v6

    .line 509
    add-long/2addr v4, v8

    .line 511
    :cond_1
    add-int v6, p3, p4

    add-int/lit8 v1, v6, -0x1

    .local v1, "i":I
    :goto_0
    if-lt v1, p3, :cond_2

    .line 512
    long-to-int v6, v4

    int-to-byte v6, v6

    aput-byte v6, p2, v1

    .line 513
    const/16 v6, 0x8

    shr-long/2addr v4, v6

    .line 511
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 515
    :cond_2
    return-void
.end method

.method public static formatLongOctalBytes(J[BII)I
    .locals 4
    .param p0, "value"    # J
    .param p2, "buf"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .prologue
    .line 451
    add-int/lit8 v0, p4, -0x1

    .line 453
    .local v0, "idx":I
    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatUnsignedOctalString(J[BII)V

    .line 454
    add-int v1, p3, v0

    const/16 v2, 0x20

    aput-byte v2, p2, v1

    .line 456
    add-int v1, p3, p4

    return v1
.end method

.method public static formatLongOctalOrBinaryBytes(J[BII)I
    .locals 8
    .param p0, "value"    # J
    .param p2, "buf"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .prologue
    .line 480
    const/16 v0, 0x8

    if-ne p4, v0, :cond_0

    const-wide/32 v6, 0x1fffff

    .line 482
    .local v6, "maxAsOctalChar":J
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    const/4 v5, 0x1

    .line 483
    .local v5, "negative":Z
    :goto_1
    if-nez v5, :cond_2

    cmp-long v0, p0, v6

    if-gtz v0, :cond_2

    .line 484
    invoke-static {p0, p1, p2, p3, p4}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatLongOctalBytes(J[BII)I

    move-result v0

    .line 493
    :goto_2
    return v0

    .line 480
    .end local v5    # "negative":Z
    .end local v6    # "maxAsOctalChar":J
    :cond_0
    const-wide v6, 0x1ffffffffL

    goto :goto_0

    .line 482
    .restart local v6    # "maxAsOctalChar":J
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 487
    .restart local v5    # "negative":Z
    :cond_2
    const/16 v0, 0x9

    if-ge p4, v0, :cond_3

    move-wide v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 488
    invoke-static/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatLongBinary(J[BIIZ)V

    :cond_3
    move-wide v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 490
    invoke-static/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatBigIntegerBinary(J[BIIZ)V

    .line 492
    if-eqz v5, :cond_4

    const/16 v0, 0xff

    :goto_3
    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 493
    add-int v0, p3, p4

    goto :goto_2

    .line 492
    :cond_4
    const/16 v0, 0x80

    goto :goto_3
.end method

.method public static formatNameBytes(Ljava/lang/String;[BII)I
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 327
    :try_start_0
    sget-object v2, Lorg/apache/commons/compress/archivers/tar/TarUtils;->DEFAULT_ENCODING:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    invoke-static {p0, p1, p2, p3, v2}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatNameBytes(Ljava/lang/String;[BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 330
    :goto_0
    return v2

    .line 328
    :catch_0
    move-exception v0

    .line 330
    .local v0, "ex":Ljava/io/IOException;
    :try_start_1
    sget-object v2, Lorg/apache/commons/compress/archivers/tar/TarUtils;->FALLBACK_ENCODING:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    invoke-static {p0, p1, p2, p3, v2}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatNameBytes(Ljava/lang/String;[BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    goto :goto_0

    .line 332
    :catch_1
    move-exception v1

    .line 334
    .local v1, "ex2":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static formatNameBytes(Ljava/lang/String;[BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)I
    .locals 7
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "encoding"    # Lorg/apache/commons/compress/archivers/zip/ZipEncoding;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 360
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 361
    .local v2, "len":I
    invoke-interface {p4, p0}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 362
    .local v0, "b":Ljava/nio/ByteBuffer;
    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    if-le v4, p3, :cond_0

    if-lez v2, :cond_0

    .line 363
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p4, v4}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    .line 365
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    sub-int v3, v4, v5

    .line 366
    .local v3, "limit":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    invoke-static {v4, v5, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 369
    move v1, v3

    .local v1, "i":I
    :goto_1
    if-ge v1, p3, :cond_1

    .line 370
    add-int v4, p2, v1

    aput-byte v6, p1, v4

    .line 369
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 373
    :cond_1
    add-int v4, p2, p3

    return v4
.end method

.method public static formatOctalBytes(J[BII)I
    .locals 4
    .param p0, "value"    # J
    .param p2, "buf"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .prologue
    .line 426
    add-int/lit8 v0, p4, -0x2

    .line 427
    .local v0, "idx":I
    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatUnsignedOctalString(J[BII)V

    .line 429
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "idx":I
    .local v1, "idx":I
    add-int v2, p3, v0

    const/16 v3, 0x20

    aput-byte v3, p2, v2

    .line 430
    add-int v2, p3, v1

    const/4 v3, 0x0

    aput-byte v3, p2, v2

    .line 432
    add-int v2, p3, p4

    return v2
.end method

.method public static formatUnsignedOctalString(J[BII)V
    .locals 14
    .param p0, "value"    # J
    .param p2, "buffer"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .prologue
    const/16 v12, 0x30

    const-wide/16 v10, 0x0

    .line 387
    move/from16 v2, p4

    .line 388
    .local v2, "remaining":I
    add-int/lit8 v2, v2, -0x1

    .line 389
    cmp-long v6, p0, v10

    if-nez v6, :cond_1

    .line 390
    add-int/lit8 v3, v2, -0x1

    .end local v2    # "remaining":I
    .local v3, "remaining":I
    add-int v6, p3, v2

    aput-byte v12, p2, v6

    move v2, v3

    .line 405
    .end local v3    # "remaining":I
    .restart local v2    # "remaining":I
    :cond_0
    :goto_0
    if-ltz v2, :cond_3

    .line 406
    add-int v6, p3, v2

    aput-byte v12, p2, v6

    .line 405
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 392
    :cond_1
    move-wide v4, p0

    .line 393
    .local v4, "val":J
    :goto_1
    if-ltz v2, :cond_2

    cmp-long v6, v4, v10

    if-eqz v6, :cond_2

    .line 395
    add-int v6, p3, v2

    const-wide/16 v8, 0x7

    and-long/2addr v8, v4

    long-to-int v7, v8

    int-to-byte v7, v7

    add-int/lit8 v7, v7, 0x30

    int-to-byte v7, v7

    aput-byte v7, p2, v6

    .line 396
    const/4 v6, 0x3

    ushr-long/2addr v4, v6

    .line 393
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 399
    :cond_2
    cmp-long v6, v4, v10

    if-eqz v6, :cond_0

    .line 400
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p0, p1}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " will not fit in octal number buffer of length "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p4

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 408
    .end local v4    # "val":J
    :cond_3
    return-void
.end method

.method private static parseBinaryBigInteger([BIIZ)J
    .locals 5
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "negative"    # Z

    .prologue
    .line 209
    add-int/lit8 v2, p2, -0x1

    new-array v0, v2, [B

    .line 210
    .local v0, "remainder":[B
    add-int/lit8 v2, p1, 0x1

    const/4 v3, 0x0

    add-int/lit8 v4, p2, -0x1

    invoke-static {p0, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 211
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    .line 212
    .local v1, "val":Ljava/math/BigInteger;
    if-eqz p3, :cond_0

    .line 214
    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->not()Ljava/math/BigInteger;

    move-result-object v1

    .line 216
    :cond_0
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    const/16 v3, 0x3f

    if-le v2, v3, :cond_1

    .line 217
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "At offset "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " byte binary number"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " exceeds maximum signed long"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " value"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 222
    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    neg-long v2, v2

    :goto_0
    return-wide v2

    :cond_2
    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    goto :goto_0
.end method

.method private static parseBinaryLong([BIIZ)J
    .locals 10
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "negative"    # Z

    .prologue
    const-wide/16 v8, 0x1

    .line 187
    const/16 v1, 0x9

    if-lt p2, v1, :cond_0

    .line 188
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "At offset "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " byte binary number"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " exceeds maximum signed long"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " value"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 193
    :cond_0
    const-wide/16 v2, 0x0

    .line 194
    .local v2, "val":J
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 195
    const/16 v1, 0x8

    shl-long v4, v2, v1

    add-int v1, p1, v0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v6, v1

    add-long v2, v4, v6

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 197
    :cond_1
    if-eqz p3, :cond_2

    .line 199
    sub-long/2addr v2, v8

    .line 200
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    add-int/lit8 v1, p2, -0x1

    mul-int/lit8 v1, v1, 0x8

    int-to-double v6, v1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-long v4, v4

    sub-long/2addr v4, v8

    xor-long/2addr v2, v4

    .line 202
    :cond_2
    if-eqz p3, :cond_3

    neg-long v2, v2

    .end local v2    # "val":J
    :cond_3
    return-wide v2
.end method

.method public static parseBoolean([BI)Z
    .locals 2
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I

    .prologue
    const/4 v0, 0x1

    .line 236
    aget-byte v1, p0, p1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseName([BII)Ljava/lang/String;
    .locals 3
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 268
    :try_start_0
    sget-object v2, Lorg/apache/commons/compress/archivers/tar/TarUtils;->DEFAULT_ENCODING:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    invoke-static {p0, p1, p2, v2}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseName([BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 271
    :goto_0
    return-object v2

    .line 269
    :catch_0
    move-exception v0

    .line 271
    .local v0, "ex":Ljava/io/IOException;
    :try_start_1
    sget-object v2, Lorg/apache/commons/compress/archivers/tar/TarUtils;->FALLBACK_ENCODING:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    invoke-static {p0, p1, p2, v2}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseName([BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_0

    .line 272
    :catch_1
    move-exception v1

    .line 274
    .local v1, "ex2":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static parseName([BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)Ljava/lang/String;
    .locals 3
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "encoding"    # Lorg/apache/commons/compress/archivers/zip/ZipEncoding;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 296
    move v1, p2

    .line 297
    .local v1, "len":I
    :goto_0
    if-lez v1, :cond_0

    .line 298
    add-int v2, p1, v1

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, p0, v2

    if-eqz v2, :cond_1

    .line 302
    :cond_0
    if-lez v1, :cond_2

    .line 303
    new-array v0, v1, [B

    .line 304
    .local v0, "b":[B
    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 305
    invoke-interface {p3, v0}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->decode([B)Ljava/lang/String;

    move-result-object v2

    .line 307
    .end local v0    # "b":[B
    :goto_1
    return-object v2

    .line 297
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 307
    :cond_2
    const-string v2, ""

    goto :goto_1
.end method

.method public static parseOctal([BII)J
    .locals 10
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    const/16 v7, 0x20

    .line 103
    const-wide/16 v2, 0x0

    .line 104
    .local v2, "result":J
    add-int v1, p1, p2

    .line 105
    .local v1, "end":I
    move v4, p1

    .line 107
    .local v4, "start":I
    const/4 v6, 0x2

    if-ge p2, v6, :cond_0

    .line 108
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Length "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " must be at least 2"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 111
    :cond_0
    aget-byte v6, p0, v4

    if-nez v6, :cond_1

    .line 112
    const-wide/16 v6, 0x0

    .line 151
    :goto_0
    return-wide v6

    .line 116
    :cond_1
    :goto_1
    if-ge v4, v1, :cond_2

    .line 117
    aget-byte v6, p0, v4

    if-ne v6, v7, :cond_2

    .line 118
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 126
    :cond_2
    add-int/lit8 v6, v1, -0x1

    aget-byte v5, p0, v6

    .line 127
    .local v5, "trailer":B
    if-eqz v5, :cond_3

    if-ne v5, v7, :cond_5

    .line 128
    :cond_3
    add-int/lit8 v1, v1, -0x1

    .line 134
    add-int/lit8 v6, v1, -0x1

    aget-byte v5, p0, v6

    .line 135
    :goto_2
    add-int/lit8 v6, v1, -0x1

    if-ge v4, v6, :cond_7

    if-eqz v5, :cond_4

    if-ne v5, v7, :cond_7

    .line 136
    :cond_4
    add-int/lit8 v1, v1, -0x1

    .line 137
    add-int/lit8 v6, v1, -0x1

    aget-byte v5, p0, v6

    goto :goto_2

    .line 130
    :cond_5
    new-instance v6, Ljava/lang/IllegalArgumentException;

    add-int/lit8 v7, v1, -0x1

    invoke-static {p0, p1, p2, v7, v5}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->exceptionMessage([BIIIB)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 147
    .local v0, "currentByte":B
    :cond_6
    const/4 v6, 0x3

    shl-long v6, v2, v6

    add-int/lit8 v8, v0, -0x30

    int-to-long v8, v8

    add-long v2, v6, v8

    .line 140
    add-int/lit8 v4, v4, 0x1

    .end local v0    # "currentByte":B
    :cond_7
    if-ge v4, v1, :cond_9

    .line 141
    aget-byte v0, p0, v4

    .line 143
    .restart local v0    # "currentByte":B
    const/16 v6, 0x30

    if-lt v0, v6, :cond_8

    const/16 v6, 0x37

    if-le v0, v6, :cond_6

    .line 144
    :cond_8
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-static {p0, p1, p2, v4, v0}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->exceptionMessage([BIIIB)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .end local v0    # "currentByte":B
    :cond_9
    move-wide v6, v2

    .line 151
    goto :goto_0
.end method

.method public static parseOctalOrBinary([BII)J
    .locals 4
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 174
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_0

    .line 175
    invoke-static {p0, p1, p2}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseOctal([BII)J

    move-result-wide v2

    .line 181
    :goto_0
    return-wide v2

    .line 177
    :cond_0
    aget-byte v1, p0, p1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 178
    .local v0, "negative":Z
    :goto_1
    const/16 v1, 0x9

    if-ge p2, v1, :cond_2

    .line 179
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseBinaryLong([BIIZ)J

    move-result-wide v2

    goto :goto_0

    .line 177
    .end local v0    # "negative":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 181
    .restart local v0    # "negative":Z
    :cond_2
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseBinaryBigInteger([BIIZ)J

    move-result-wide v2

    goto :goto_0
.end method

.method public static verifyCheckSum([B)Z
    .locals 14
    .param p0, "header"    # [B

    .prologue
    .line 609
    const-wide/16 v6, 0x0

    .line 610
    .local v6, "storedSum":J
    const-wide/16 v8, 0x0

    .line 611
    .local v8, "unsignedSum":J
    const-wide/16 v4, 0x0

    .line 613
    .local v4, "signedSum":J
    const/4 v1, 0x0

    .line 614
    .local v1, "digits":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v10, p0

    if-ge v3, v10, :cond_4

    .line 615
    aget-byte v0, p0, v3

    .line 616
    .local v0, "b":B
    const/16 v10, 0x94

    if-gt v10, v3, :cond_1

    const/16 v10, 0x9c

    if-ge v3, v10, :cond_1

    .line 617
    const/16 v10, 0x30

    if-gt v10, v0, :cond_3

    const/16 v10, 0x37

    if-gt v0, v10, :cond_3

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "digits":I
    .local v2, "digits":I
    const/4 v10, 0x6

    if-ge v1, v10, :cond_2

    .line 618
    const-wide/16 v10, 0x8

    mul-long/2addr v10, v6

    int-to-long v12, v0

    add-long/2addr v10, v12

    const-wide/16 v12, 0x30

    sub-long v6, v10, v12

    move v1, v2

    .line 622
    .end local v2    # "digits":I
    .restart local v1    # "digits":I
    :cond_0
    :goto_1
    const/16 v0, 0x20

    .line 624
    :cond_1
    and-int/lit16 v10, v0, 0xff

    int-to-long v10, v10

    add-long/2addr v8, v10

    .line 625
    int-to-long v10, v0

    add-long/2addr v4, v10

    .line 614
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v1    # "digits":I
    .restart local v2    # "digits":I
    :cond_2
    move v1, v2

    .line 619
    .end local v2    # "digits":I
    .restart local v1    # "digits":I
    :cond_3
    if-lez v1, :cond_0

    .line 620
    const/4 v1, 0x6

    goto :goto_1

    .line 628
    .end local v0    # "b":B
    :cond_4
    cmp-long v10, v6, v8

    if-eqz v10, :cond_5

    cmp-long v10, v6, v4

    if-eqz v10, :cond_5

    cmp-long v10, v6, v8

    if-lez v10, :cond_6

    :cond_5
    const/4 v10, 0x1

    :goto_2
    return v10

    :cond_6
    const/4 v10, 0x0

    goto :goto_2
.end method
