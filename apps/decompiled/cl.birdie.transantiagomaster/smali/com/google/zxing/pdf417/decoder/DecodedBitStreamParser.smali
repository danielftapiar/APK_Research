.class final Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;


# static fields
.field private static final EXP900:[Ljava/lang/String;

.field private static final MIXED_CHARS:[C

.field private static final PUNCT_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x1d

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    const/16 v0, 0x19

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "000000000000000000000000000000000000000000001"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "000000000000000000000000000000000000000000900"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "000000000000000000000000000000000000000810000"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "000000000000000000000000000000000000729000000"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "000000000000000000000000000000000656100000000"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "000000000000000000000000000000590490000000000"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "000000000000000000000000000531441000000000000"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "000000000000000000000000478296900000000000000"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "000000000000000000000430467210000000000000000"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "000000000000000000387420489000000000000000000"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "000000000000000348678440100000000000000000000"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "000000000000313810596090000000000000000000000"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "000000000282429536481000000000000000000000000"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "000000254186582832900000000000000000000000000"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "000228767924549610000000000000000000000000000"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "205891132094649000000000000000000000000000000"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 2
        0x3bs
        0x3cs
        0x3es
        0x40s
        0x5bs
        0x5cs
        0x7ds
        0x5fs
        0x60s
        0x7es
        0x21s
        0xds
        0x9s
        0x2cs
        0x3as
        0xas
        0x2ds
        0x2es
        0x24s
        0x2fs
        0x22s
        0x7cs
        0x2as
        0x28s
        0x29s
        0x3fs
        0x7bs
        0x7ds
        0x27s
    .end array-data

    nop

    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x26s
        0xds
        0x9s
        0x2cs
        0x3as
        0x23s
        0x2ds
        0x2es
        0x24s
        0x2fs
        0x2bs
        0x25s
        0x2as
        0x3ds
        0x5es
    .end array-data
.end method

.method private static add(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;
    .locals 9

    const/4 v0, 0x5

    const/4 v1, 0x0

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    const/16 v2, 0x30

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    move v2, v1

    :goto_1
    if-ltz v0, :cond_1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v6, v0, 0x2

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v6, v0, 0x2

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    add-int v8, v6, v7

    add-int/2addr v8, v2

    rem-int/lit16 v8, v8, 0x3e8

    add-int/2addr v6, v7

    add-int/2addr v2, v6

    div-int/lit16 v2, v2, 0x3e8

    add-int/lit8 v6, v0, 0x2

    rem-int/lit8 v7, v8, 0xa

    add-int/lit8 v7, v7, 0x30

    int-to-char v7, v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    add-int/lit8 v6, v0, 0x1

    div-int/lit8 v7, v8, 0xa

    rem-int/lit8 v7, v7, 0xa

    add-int/lit8 v7, v7, 0x30

    int-to-char v7, v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    div-int/lit8 v6, v8, 0x64

    add-int/lit8 v6, v6, 0x30

    int-to-char v6, v6

    invoke-virtual {v5, v0, v6}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    add-int/lit8 v0, v0, -0x3

    goto :goto_1

    :cond_1
    return-object v5
.end method

.method private static byteCompaction(I[IILjava/lang/StringBuffer;)I
    .locals 10

    const/16 v0, 0x385

    if-ne p0, v0, :cond_5

    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    const/4 v0, 0x6

    new-array v6, v0, [C

    const/4 v0, 0x6

    new-array v7, v0, [I

    const/4 v0, 0x0

    :cond_0
    :goto_0
    const/4 v4, 0x0

    aget v4, p1, v4

    if-ge p2, v4, :cond_4

    if-nez v0, :cond_4

    add-int/lit8 v4, p2, 0x1

    aget v5, p1, p2

    const/16 v8, 0x384

    if-ge v5, v8, :cond_1

    aput v5, v7, v3

    add-int/lit8 v3, v3, 0x1

    const-wide/16 v8, 0x384

    mul-long/2addr v1, v8

    int-to-long v8, v5

    add-long/2addr v1, v8

    move p2, v4

    :goto_1
    rem-int/lit8 v4, v3, 0x5

    if-nez v4, :cond_0

    if-lez v3, :cond_0

    const/4 v3, 0x0

    :goto_2
    const/4 v4, 0x6

    if-ge v3, v4, :cond_3

    rsub-int/lit8 v4, v3, 0x5

    const-wide/16 v8, 0x100

    rem-long v8, v1, v8

    long-to-int v5, v8

    int-to-char v5, v5

    aput-char v5, v6, v4

    const/16 v4, 0x8

    shr-long v4, v1, v4

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-wide v1, v4

    goto :goto_2

    :cond_1
    const/16 v8, 0x384

    if-eq v5, v8, :cond_2

    const/16 v8, 0x385

    if-eq v5, v8, :cond_2

    const/16 v8, 0x386

    if-eq v5, v8, :cond_2

    const/16 v8, 0x39c

    if-eq v5, v8, :cond_2

    const/16 v8, 0x3a0

    if-eq v5, v8, :cond_2

    const/16 v8, 0x39b

    if-eq v5, v8, :cond_2

    const/16 v8, 0x39a

    if-ne v5, v8, :cond_c

    :cond_2
    add-int/lit8 p2, v4, -0x1

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p3, v6}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    goto :goto_0

    :cond_4
    div-int/lit8 v0, v3, 0x5

    mul-int/lit8 v0, v0, 0x5

    :goto_3
    if-ge v0, v3, :cond_a

    aget v1, v7, v0

    int-to-char v1, v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    const/16 v0, 0x39c

    if-ne p0, v0, :cond_a

    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    :cond_6
    :goto_4
    const/4 v4, 0x0

    aget v4, p1, v4

    if-ge p2, v4, :cond_a

    if-nez v0, :cond_a

    add-int/lit8 v4, p2, 0x1

    aget v5, p1, p2

    const/16 v6, 0x384

    if-ge v5, v6, :cond_7

    add-int/lit8 v3, v3, 0x1

    const-wide/16 v6, 0x384

    mul-long/2addr v1, v6

    int-to-long v5, v5

    add-long/2addr v1, v5

    move p2, v4

    :goto_5
    rem-int/lit8 v4, v3, 0x5

    if-nez v4, :cond_6

    if-lez v3, :cond_6

    const/4 v4, 0x6

    new-array v7, v4, [C

    const/4 v4, 0x0

    :goto_6
    const/4 v5, 0x6

    if-ge v4, v5, :cond_9

    rsub-int/lit8 v5, v4, 0x5

    const-wide/16 v8, 0xff

    and-long/2addr v8, v1

    long-to-int v6, v8

    int-to-char v6, v6

    aput-char v6, v7, v5

    const/16 v5, 0x8

    shr-long v5, v1, v5

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move-wide v1, v5

    goto :goto_6

    :cond_7
    const/16 v6, 0x384

    if-eq v5, v6, :cond_8

    const/16 v6, 0x385

    if-eq v5, v6, :cond_8

    const/16 v6, 0x386

    if-eq v5, v6, :cond_8

    const/16 v6, 0x39c

    if-eq v5, v6, :cond_8

    const/16 v6, 0x3a0

    if-eq v5, v6, :cond_8

    const/16 v6, 0x39b

    if-eq v5, v6, :cond_8

    const/16 v6, 0x39a

    if-ne v5, v6, :cond_b

    :cond_8
    add-int/lit8 p2, v4, -0x1

    const/4 v0, 0x1

    goto :goto_5

    :cond_9
    invoke-virtual {p3, v7}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_a
    return p2

    :cond_b
    move p2, v4

    goto :goto_5

    :cond_c
    move p2, v4

    goto/16 :goto_1
.end method

.method static decode([I)Lcom/google/zxing/common/DecoderResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/4 v4, 0x0

    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v0, 0x64

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v0, 0x1

    const/4 v1, 0x2

    aget v0, p0, v0

    :goto_0
    const/4 v3, 0x0

    aget v3, p0, v3

    if-ge v1, v3, :cond_1

    sparse-switch v0, :sswitch_data_0

    add-int/lit8 v0, v1, -0x1

    invoke-static {p0, v0, v2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuffer;)I

    move-result v0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    aget v0, p0, v0

    goto :goto_0

    :sswitch_0
    invoke-static {p0, v1, v2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuffer;)I

    move-result v0

    goto :goto_1

    :sswitch_1
    invoke-static {v0, p0, v1, v2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->byteCompaction(I[IILjava/lang/StringBuffer;)I

    move-result v0

    goto :goto_1

    :sswitch_2
    invoke-static {p0, v1, v2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILjava/lang/StringBuffer;)I

    move-result v0

    goto :goto_1

    :sswitch_3
    invoke-static {v0, p0, v1, v2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->byteCompaction(I[IILjava/lang/StringBuffer;)I

    move-result v0

    goto :goto_1

    :sswitch_4
    invoke-static {v0, p0, v1, v2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->byteCompaction(I[IILjava/lang/StringBuffer;)I

    move-result v0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_1
    new-instance v0, Lcom/google/zxing/common/DecoderResult;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v1, v4, v4}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/Vector;Ljava/lang/String;)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x384 -> :sswitch_0
        0x385 -> :sswitch_1
        0x386 -> :sswitch_2
        0x391 -> :sswitch_3
        0x39c -> :sswitch_4
    .end sparse-switch
.end method

.method private static numericCompaction([IILjava/lang/StringBuffer;)I
    .locals 13

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/16 v2, 0xf

    new-array v7, v2, [I

    :cond_0
    :goto_0
    const/4 v2, 0x0

    aget v2, p0, v2

    if-ge p1, v2, :cond_d

    if-nez v0, :cond_d

    add-int/lit8 v2, p1, 0x1

    aget v3, p0, p1

    const/4 v4, 0x0

    aget v4, p0, v4

    if-ne v2, v4, :cond_1

    const/4 v0, 0x1

    :cond_1
    const/16 v4, 0x384

    if-ge v3, v4, :cond_3

    aput v3, v7, v1

    add-int/lit8 v1, v1, 0x1

    move p1, v2

    :goto_1
    rem-int/lit8 v2, v1, 0xf

    if-eqz v2, :cond_2

    const/16 v2, 0x386

    if-eq v3, v2, :cond_2

    if-eqz v0, :cond_0

    :cond_2
    const/4 v3, 0x0

    const/4 v2, 0x0

    move v5, v2

    move-object v6, v3

    :goto_2
    if-ge v5, v1, :cond_a

    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/lang/String;

    sub-int v3, v1, v5

    add-int/lit8 v3, v3, -0x1

    aget-object v8, v2, v3

    aget v4, v7, v5

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v2, v9, :cond_5

    const/16 v9, 0x30

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    const/16 v4, 0x384

    if-eq v3, v4, :cond_4

    const/16 v4, 0x385

    if-eq v3, v4, :cond_4

    const/16 v4, 0x39c

    if-eq v3, v4, :cond_4

    const/16 v4, 0x3a0

    if-eq v3, v4, :cond_4

    const/16 v4, 0x39b

    if-eq v3, v4, :cond_4

    const/16 v4, 0x39a

    if-ne v3, v4, :cond_f

    :cond_4
    add-int/lit8 p1, v2, -0x1

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    div-int/lit8 v9, v4, 0x64

    div-int/lit8 v2, v4, 0xa

    rem-int/lit8 v10, v2, 0xa

    rem-int/lit8 v4, v4, 0xa

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v4, :cond_6

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v8}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->add(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    :goto_5
    if-ge v2, v10, :cond_7

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const/16 v11, 0x30

    invoke-virtual {v4, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->add(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_7
    const/4 v2, 0x0

    move v12, v2

    move-object v2, v3

    move v3, v12

    :goto_6
    if-ge v3, v9, :cond_8

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v10, "00"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v10, 0x2

    invoke-virtual {v4, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->add(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move-object v2, v4

    goto :goto_6

    :cond_8
    if-nez v6, :cond_9

    :goto_7
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move-object v6, v2

    goto/16 :goto_2

    :cond_9
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->add(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    goto :goto_7

    :cond_a
    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_8
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-ge v1, v3, :cond_e

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    const/16 v4, 0x31

    if-ne v3, v4, :cond_c

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :goto_9
    if-nez v1, :cond_b

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_b
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_d
    return p1

    :cond_e
    move-object v1, v2

    goto :goto_9

    :cond_f
    move p1, v2

    goto/16 :goto_1
.end method

.method private static textCompaction([IILjava/lang/StringBuffer;)I
    .locals 10

    const/4 v0, 0x0

    aget v0, p0, v0

    shl-int/lit8 v0, v0, 0x1

    new-array v5, v0, [I

    const/4 v0, 0x0

    aget v0, p0, v0

    shl-int/lit8 v0, v0, 0x1

    new-array v6, v0, [I

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    aget v2, p0, v2

    if-ge p1, v2, :cond_1

    if-nez v0, :cond_1

    add-int/lit8 v2, p1, 0x1

    aget v3, p0, p1

    const/16 v4, 0x384

    if-ge v3, v4, :cond_0

    div-int/lit8 v4, v3, 0x1e

    aput v4, v5, v1

    add-int/lit8 v4, v1, 0x1

    rem-int/lit8 v3, v3, 0x1e

    aput v3, v5, v4

    add-int/lit8 v1, v1, 0x2

    move p1, v2

    goto :goto_0

    :cond_0
    sparse-switch v3, :sswitch_data_0

    move p1, v2

    goto :goto_0

    :sswitch_0
    add-int/lit8 p1, v2, -0x1

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    add-int/lit8 p1, v2, -0x1

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    add-int/lit8 p1, v2, -0x1

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_3
    const/16 v3, 0x391

    aput v3, v5, v1

    add-int/lit8 p1, v2, 0x1

    aget v2, p0, v2

    aput v2, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :sswitch_4
    add-int/lit8 p1, v2, -0x1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    move v4, v0

    :goto_1
    if-ge v4, v1, :cond_18

    aget v7, v5, v4

    const/4 v0, 0x0

    packed-switch v3, :pswitch_data_0

    :cond_2
    :goto_2
    if-eqz v0, :cond_3

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :pswitch_0
    const/16 v8, 0x1a

    if-ge v7, v8, :cond_4

    add-int/lit8 v0, v7, 0x41

    int-to-char v0, v0

    goto :goto_2

    :cond_4
    const/16 v8, 0x1a

    if-ne v7, v8, :cond_5

    const/16 v0, 0x20

    goto :goto_2

    :cond_5
    const/16 v8, 0x1b

    if-ne v7, v8, :cond_6

    const/4 v3, 0x1

    goto :goto_2

    :cond_6
    const/16 v8, 0x1c

    if-ne v7, v8, :cond_7

    const/4 v3, 0x2

    goto :goto_2

    :cond_7
    const/16 v8, 0x1d

    if-ne v7, v8, :cond_8

    const/4 v2, 0x5

    move v9, v3

    move v3, v2

    move v2, v9

    goto :goto_2

    :cond_8
    const/16 v8, 0x391

    if-ne v7, v8, :cond_2

    aget v7, v6, v4

    int-to-char v7, v7

    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :pswitch_1
    const/16 v8, 0x1a

    if-ge v7, v8, :cond_9

    add-int/lit8 v0, v7, 0x61

    int-to-char v0, v0

    goto :goto_2

    :cond_9
    const/16 v8, 0x1a

    if-ne v7, v8, :cond_a

    const/16 v0, 0x20

    goto :goto_2

    :cond_a
    const/16 v8, 0x1b

    if-ne v7, v8, :cond_b

    const/4 v2, 0x4

    move v9, v3

    move v3, v2

    move v2, v9

    goto :goto_2

    :cond_b
    const/16 v8, 0x1c

    if-ne v7, v8, :cond_c

    const/4 v3, 0x2

    goto :goto_2

    :cond_c
    const/16 v8, 0x1d

    if-ne v7, v8, :cond_d

    const/4 v2, 0x5

    move v9, v3

    move v3, v2

    move v2, v9

    goto :goto_2

    :cond_d
    const/16 v8, 0x391

    if-ne v7, v8, :cond_2

    aget v7, v6, v4

    int-to-char v7, v7

    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :pswitch_2
    const/16 v8, 0x19

    if-ge v7, v8, :cond_e

    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    aget-char v0, v0, v7

    goto :goto_2

    :cond_e
    const/16 v8, 0x19

    if-ne v7, v8, :cond_f

    const/4 v3, 0x3

    goto :goto_2

    :cond_f
    const/16 v8, 0x1a

    if-ne v7, v8, :cond_10

    const/16 v0, 0x20

    goto :goto_2

    :cond_10
    const/16 v8, 0x1b

    if-ne v7, v8, :cond_11

    const/4 v3, 0x1

    goto/16 :goto_2

    :cond_11
    const/16 v8, 0x1c

    if-ne v7, v8, :cond_12

    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_12
    const/16 v8, 0x1d

    if-ne v7, v8, :cond_13

    const/4 v2, 0x5

    move v9, v3

    move v3, v2

    move v2, v9

    goto/16 :goto_2

    :cond_13
    const/16 v8, 0x391

    if-ne v7, v8, :cond_2

    aget v7, v6, v4

    int-to-char v7, v7

    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    :pswitch_3
    const/16 v8, 0x1d

    if-ge v7, v8, :cond_14

    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    aget-char v0, v0, v7

    goto/16 :goto_2

    :cond_14
    const/16 v8, 0x1d

    if-ne v7, v8, :cond_15

    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_15
    const/16 v8, 0x391

    if-ne v7, v8, :cond_2

    aget v7, v6, v4

    int-to-char v7, v7

    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    :pswitch_4
    const/16 v3, 0x1a

    if-ge v7, v3, :cond_16

    add-int/lit8 v0, v7, 0x41

    int-to-char v0, v0

    move v3, v2

    goto/16 :goto_2

    :cond_16
    const/16 v3, 0x1a

    if-ne v7, v3, :cond_19

    const/16 v0, 0x20

    move v3, v2

    goto/16 :goto_2

    :pswitch_5
    const/16 v3, 0x1d

    if-ge v7, v3, :cond_17

    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    aget-char v0, v0, v7

    move v3, v2

    goto/16 :goto_2

    :cond_17
    const/16 v3, 0x1d

    if-ne v7, v3, :cond_19

    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_18
    return p1

    :cond_19
    move v3, v2

    goto/16 :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x384 -> :sswitch_0
        0x385 -> :sswitch_1
        0x386 -> :sswitch_2
        0x391 -> :sswitch_3
        0x39c -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
