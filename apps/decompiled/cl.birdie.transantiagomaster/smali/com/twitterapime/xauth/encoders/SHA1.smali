.class public final Lcom/twitterapime/xauth/encoders/SHA1;
.super Ljava/lang/Object;
.source "SHA1.java"


# instance fields
.field private final abcde:[I

.field private digestInt:[I

.field private tmpData:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/twitterapime/xauth/encoders/SHA1;->abcde:[I

    .line 8
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/twitterapime/xauth/encoders/SHA1;->digestInt:[I

    .line 11
    const/16 v0, 0x50

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/twitterapime/xauth/encoders/SHA1;->tmpData:[I

    return-void

    .line 4
    :array_0
    .array-data 4
        0x67452301
        -0x10325477
        -0x67452302
        0x10325476
        -0x3c2d1e10
    .end array-data
.end method

.method private static f4(II)I
    .locals 2
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 116
    shl-int v0, p0, p1

    rsub-int/lit8 v1, p1, 0x20

    ushr-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public final getDigestOfBytes([B)[B
    .locals 17
    .param p1, "byteData"    # [B

    .prologue
    .line 225
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitterapime/xauth/encoders/SHA1;->abcde:[I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitterapime/xauth/encoders/SHA1;->digestInt:[I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/twitterapime/xauth/encoders/SHA1;->abcde:[I

    array-length v7, v7

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p1

    array-length v7, v0

    rem-int/lit8 v3, v7, 0x40

    const/16 v4, 0x38

    if-ge v3, v4, :cond_0

    rsub-int/lit8 v4, v3, 0x37

    sub-int v3, v7, v3

    add-int/lit8 v3, v3, 0x40

    :goto_0
    new-array v8, v3, [B

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v3, v8, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, v7, 0x1

    const/16 v3, -0x80

    aput-byte v3, v8, v7

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_2

    add-int/lit8 v6, v5, 0x1

    const/4 v9, 0x0

    aput-byte v9, v8, v5

    add-int/lit8 v3, v3, 0x1

    move v5, v6

    goto :goto_1

    :cond_0
    const/16 v4, 0x38

    if-ne v3, v4, :cond_1

    const/16 v4, 0x3f

    add-int/lit8 v3, v7, 0x8

    add-int/lit8 v3, v3, 0x40

    goto :goto_0

    :cond_1
    rsub-int/lit8 v4, v3, 0x3f

    add-int/lit8 v4, v4, 0x38

    add-int/lit8 v5, v7, 0x40

    sub-int v3, v5, v3

    add-int/lit8 v3, v3, 0x40

    goto :goto_0

    :cond_2
    int-to-long v3, v7

    const-wide/16 v6, 0x8

    mul-long/2addr v3, v6

    const-wide/16 v6, 0xff

    and-long/2addr v6, v3

    long-to-int v6, v6

    int-to-byte v6, v6

    const/16 v7, 0x8

    shr-long v9, v3, v7

    const-wide/16 v11, 0xff

    and-long/2addr v9, v11

    long-to-int v7, v9

    int-to-byte v7, v7

    const/16 v9, 0x10

    shr-long v9, v3, v9

    const-wide/16 v11, 0xff

    and-long/2addr v9, v11

    long-to-int v9, v9

    int-to-byte v9, v9

    const/16 v10, 0x18

    shr-long v10, v3, v10

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    long-to-int v10, v10

    int-to-byte v10, v10

    const/16 v11, 0x20

    shr-long v11, v3, v11

    const-wide/16 v13, 0xff

    and-long/2addr v11, v13

    long-to-int v11, v11

    int-to-byte v11, v11

    const/16 v12, 0x28

    shr-long v12, v3, v12

    const-wide/16 v14, 0xff

    and-long/2addr v12, v14

    long-to-int v12, v12

    int-to-byte v12, v12

    const/16 v13, 0x30

    shr-long v13, v3, v13

    const-wide/16 v15, 0xff

    and-long/2addr v13, v15

    long-to-int v13, v13

    int-to-byte v13, v13

    const/16 v14, 0x38

    shr-long/2addr v3, v14

    long-to-int v3, v3

    int-to-byte v3, v3

    add-int/lit8 v4, v5, 0x1

    aput-byte v3, v8, v5

    add-int/lit8 v3, v4, 0x1

    aput-byte v13, v8, v4

    add-int/lit8 v4, v3, 0x1

    aput-byte v12, v8, v3

    add-int/lit8 v3, v4, 0x1

    aput-byte v11, v8, v4

    add-int/lit8 v4, v3, 0x1

    aput-byte v10, v8, v3

    add-int/lit8 v3, v4, 0x1

    aput-byte v9, v8, v4

    add-int/lit8 v4, v3, 0x1

    aput-byte v7, v8, v3

    aput-byte v6, v8, v4

    array-length v3, v8

    div-int/lit8 v5, v3, 0x40

    const/4 v3, 0x0

    move v4, v3

    :goto_2
    if-ge v4, v5, :cond_c

    const/4 v3, 0x0

    :goto_3
    const/16 v6, 0x10

    if-ge v3, v6, :cond_3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/twitterapime/xauth/encoders/SHA1;->tmpData:[I

    mul-int/lit8 v7, v4, 0x40

    mul-int/lit8 v9, v3, 0x4

    add-int/2addr v7, v9

    aget-byte v9, v8, v7

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x18

    add-int/lit8 v10, v7, 0x1

    aget-byte v10, v8, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v9, v10

    add-int/lit8 v10, v7, 0x2

    aget-byte v10, v8, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    add-int/lit8 v7, v7, 0x3

    aget-byte v7, v8, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v7, v9

    aput v7, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    const/16 v3, 0x10

    :goto_4
    const/16 v6, 0x4f

    if-gt v3, v6, :cond_4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/twitterapime/xauth/encoders/SHA1;->tmpData:[I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/twitterapime/xauth/encoders/SHA1;->tmpData:[I

    add-int/lit8 v9, v3, -0x3

    aget v7, v7, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/twitterapime/xauth/encoders/SHA1;->tmpData:[I

    add-int/lit8 v10, v3, -0x8

    aget v9, v9, v10

    xor-int/2addr v7, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/twitterapime/xauth/encoders/SHA1;->tmpData:[I

    add-int/lit8 v10, v3, -0xe

    aget v9, v9, v10

    xor-int/2addr v7, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/twitterapime/xauth/encoders/SHA1;->tmpData:[I

    add-int/lit8 v10, v3, -0x10

    aget v9, v9, v10

    xor-int/2addr v7, v9

    const/4 v9, 0x1

    invoke-static {v7, v9}, Lcom/twitterapime/xauth/encoders/SHA1;->f4(II)I

    move-result v7

    aput v7, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    const/4 v3, 0x5

    new-array v6, v3, [I

    const/4 v3, 0x0

    :goto_5
    array-length v7, v6

    if-ge v3, v7, :cond_5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/twitterapime/xauth/encoders/SHA1;->digestInt:[I

    aget v7, v7, v3

    aput v7, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_5
    const/4 v3, 0x0

    :goto_6
    const/16 v7, 0x13

    if-gt v3, v7, :cond_6

    const/4 v7, 0x0

    aget v7, v6, v7

    const/4 v9, 0x5

    invoke-static {v7, v9}, Lcom/twitterapime/xauth/encoders/SHA1;->f4(II)I

    move-result v7

    const/4 v9, 0x1

    aget v9, v6, v9

    const/4 v10, 0x2

    aget v10, v6, v10

    const/4 v11, 0x3

    aget v11, v6, v11

    and-int/2addr v10, v9

    xor-int/lit8 v9, v9, -0x1

    and-int/2addr v9, v11

    or-int/2addr v9, v10

    add-int/2addr v7, v9

    const/4 v9, 0x4

    aget v9, v6, v9

    add-int/2addr v7, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/twitterapime/xauth/encoders/SHA1;->tmpData:[I

    aget v9, v9, v3

    add-int/2addr v7, v9

    const v9, 0x5a827999

    add-int/2addr v7, v9

    const/4 v9, 0x4

    const/4 v10, 0x3

    aget v10, v6, v10

    aput v10, v6, v9

    const/4 v9, 0x3

    const/4 v10, 0x2

    aget v10, v6, v10

    aput v10, v6, v9

    const/4 v9, 0x2

    const/4 v10, 0x1

    aget v10, v6, v10

    const/16 v11, 0x1e

    invoke-static {v10, v11}, Lcom/twitterapime/xauth/encoders/SHA1;->f4(II)I

    move-result v10

    aput v10, v6, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    aget v10, v6, v10

    aput v10, v6, v9

    const/4 v9, 0x0

    aput v7, v6, v9

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_6
    const/16 v3, 0x14

    :goto_7
    const/16 v7, 0x27

    if-gt v3, v7, :cond_7

    const/4 v7, 0x0

    aget v7, v6, v7

    const/4 v9, 0x5

    invoke-static {v7, v9}, Lcom/twitterapime/xauth/encoders/SHA1;->f4(II)I

    move-result v7

    const/4 v9, 0x1

    aget v9, v6, v9

    const/4 v10, 0x2

    aget v10, v6, v10

    const/4 v11, 0x3

    aget v11, v6, v11

    xor-int/2addr v9, v10

    xor-int/2addr v9, v11

    add-int/2addr v7, v9

    const/4 v9, 0x4

    aget v9, v6, v9

    add-int/2addr v7, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/twitterapime/xauth/encoders/SHA1;->tmpData:[I

    aget v9, v9, v3

    add-int/2addr v7, v9

    const v9, 0x6ed9eba1

    add-int/2addr v7, v9

    const/4 v9, 0x4

    const/4 v10, 0x3

    aget v10, v6, v10

    aput v10, v6, v9

    const/4 v9, 0x3

    const/4 v10, 0x2

    aget v10, v6, v10

    aput v10, v6, v9

    const/4 v9, 0x2

    const/4 v10, 0x1

    aget v10, v6, v10

    const/16 v11, 0x1e

    invoke-static {v10, v11}, Lcom/twitterapime/xauth/encoders/SHA1;->f4(II)I

    move-result v10

    aput v10, v6, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    aget v10, v6, v10

    aput v10, v6, v9

    const/4 v9, 0x0

    aput v7, v6, v9

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_7
    const/16 v3, 0x28

    :goto_8
    const/16 v7, 0x3b

    if-gt v3, v7, :cond_8

    const/4 v7, 0x0

    aget v7, v6, v7

    const/4 v9, 0x5

    invoke-static {v7, v9}, Lcom/twitterapime/xauth/encoders/SHA1;->f4(II)I

    move-result v7

    const/4 v9, 0x1

    aget v9, v6, v9

    const/4 v10, 0x2

    aget v10, v6, v10

    const/4 v11, 0x3

    aget v11, v6, v11

    and-int v12, v9, v10

    and-int/2addr v9, v11

    or-int/2addr v9, v12

    and-int/2addr v10, v11

    or-int/2addr v9, v10

    add-int/2addr v7, v9

    const/4 v9, 0x4

    aget v9, v6, v9

    add-int/2addr v7, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/twitterapime/xauth/encoders/SHA1;->tmpData:[I

    aget v9, v9, v3

    add-int/2addr v7, v9

    const v9, -0x70e44324

    add-int/2addr v7, v9

    const/4 v9, 0x4

    const/4 v10, 0x3

    aget v10, v6, v10

    aput v10, v6, v9

    const/4 v9, 0x3

    const/4 v10, 0x2

    aget v10, v6, v10

    aput v10, v6, v9

    const/4 v9, 0x2

    const/4 v10, 0x1

    aget v10, v6, v10

    const/16 v11, 0x1e

    invoke-static {v10, v11}, Lcom/twitterapime/xauth/encoders/SHA1;->f4(II)I

    move-result v10

    aput v10, v6, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    aget v10, v6, v10

    aput v10, v6, v9

    const/4 v9, 0x0

    aput v7, v6, v9

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_8
    const/16 v3, 0x3c

    :goto_9
    const/16 v7, 0x4f

    if-gt v3, v7, :cond_9

    const/4 v7, 0x0

    aget v7, v6, v7

    const/4 v9, 0x5

    invoke-static {v7, v9}, Lcom/twitterapime/xauth/encoders/SHA1;->f4(II)I

    move-result v7

    const/4 v9, 0x1

    aget v9, v6, v9

    const/4 v10, 0x2

    aget v10, v6, v10

    const/4 v11, 0x3

    aget v11, v6, v11

    xor-int/2addr v9, v10

    xor-int/2addr v9, v11

    add-int/2addr v7, v9

    const/4 v9, 0x4

    aget v9, v6, v9

    add-int/2addr v7, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/twitterapime/xauth/encoders/SHA1;->tmpData:[I

    aget v9, v9, v3

    add-int/2addr v7, v9

    const v9, -0x359d3e2a    # -3715189.5f

    add-int/2addr v7, v9

    const/4 v9, 0x4

    const/4 v10, 0x3

    aget v10, v6, v10

    aput v10, v6, v9

    const/4 v9, 0x3

    const/4 v10, 0x2

    aget v10, v6, v10

    aput v10, v6, v9

    const/4 v9, 0x2

    const/4 v10, 0x1

    aget v10, v6, v10

    const/16 v11, 0x1e

    invoke-static {v10, v11}, Lcom/twitterapime/xauth/encoders/SHA1;->f4(II)I

    move-result v10

    aput v10, v6, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    aget v10, v6, v10

    aput v10, v6, v9

    const/4 v9, 0x0

    aput v7, v6, v9

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_9
    const/4 v3, 0x0

    :goto_a
    array-length v7, v6

    if-ge v3, v7, :cond_a

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/twitterapime/xauth/encoders/SHA1;->digestInt:[I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/twitterapime/xauth/encoders/SHA1;->digestInt:[I

    aget v9, v9, v3

    aget v10, v6, v3

    add-int/2addr v9, v10

    aput v9, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_a
    const/4 v3, 0x0

    :goto_b
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/twitterapime/xauth/encoders/SHA1;->tmpData:[I

    array-length v6, v6

    if-ge v3, v6, :cond_b

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/twitterapime/xauth/encoders/SHA1;->tmpData:[I

    const/4 v7, 0x0

    aput v7, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_b
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto/16 :goto_2

    .line 227
    :cond_c
    const/16 v3, 0x14

    new-array v1, v3, [B

    .line 229
    .local v1, "digest":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitterapime/xauth/encoders/SHA1;->digestInt:[I

    array-length v3, v3

    if-ge v2, v3, :cond_d

    .line 230
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitterapime/xauth/encoders/SHA1;->digestInt:[I

    aget v3, v3, v2

    mul-int/lit8 v4, v2, 0x4

    ushr-int/lit8 v5, v3, 0x18

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    add-int/lit8 v5, v4, 0x1

    ushr-int/lit8 v6, v3, 0x10

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    add-int/lit8 v5, v4, 0x2

    ushr-int/lit8 v6, v3, 0x8

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    add-int/lit8 v4, v4, 0x3

    int-to-byte v3, v3

    aput-byte v3, v1, v4

    .line 229
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 233
    :cond_d
    return-object v1
.end method
