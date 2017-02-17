.class public Lorg/spongycastle/crypto/engines/Salsa20Engine;
.super Ljava/lang/Object;
.source "Salsa20Engine.java"

# interfaces
.implements Lorg/spongycastle/crypto/StreamCipher;


# static fields
.field private static final sigma:[B

.field private static final stateSize:I = 0x10

.field private static final tau:[B


# instance fields
.field private cW0:I

.field private cW1:I

.field private cW2:I

.field private engineState:[I

.field private index:I

.field private initialised:Z

.field private keyStream:[B

.field private workingIV:[B

.field private workingKey:[B

.field private x:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "expand 32-byte k"

    invoke-static {v0}, Lorg/spongycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->sigma:[B

    .line 23
    const-string v0, "expand 16-byte k"

    invoke-static {v0}, Lorg/spongycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->tau:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x10

    const/4 v1, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->index:I

    .line 30
    new-array v0, v2, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    .line 31
    new-array v0, v2, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    .line 32
    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->keyStream:[B

    iput-object v3, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->workingKey:[B

    iput-object v3, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->workingIV:[B

    .line 35
    iput-boolean v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->initialised:Z

    return-void
.end method

.method private byteToIntLittle([BI)I
    .locals 2
    .param p1, "x"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 308
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method private intToByteLittle(I[BI)[B
    .locals 2
    .param p1, "x"    # I
    .param p2, "out"    # [B
    .param p3, "off"    # I

    .prologue
    .line 278
    int-to-byte v0, p1

    aput-byte v0, p2, p3

    .line 279
    add-int/lit8 v0, p3, 0x1

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 280
    add-int/lit8 v0, p3, 0x2

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 281
    add-int/lit8 v0, p3, 0x3

    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 282
    return-object p2
.end method

.method private limitExceeded()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 323
    iget v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW0:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW0:I

    .line 324
    iget v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW0:I

    if-nez v1, :cond_0

    .line 326
    iget v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW1:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW1:I

    .line 327
    iget v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW1:I

    if-nez v1, :cond_0

    .line 329
    iget v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW2:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW2:I

    .line 330
    iget v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW2:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 334
    :cond_0
    return v0
.end method

.method private limitExceeded(I)Z
    .locals 2
    .param p1, "len"    # I

    .prologue
    const/4 v0, 0x0

    .line 342
    iget v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW0:I

    if-ltz v1, :cond_1

    .line 344
    iget v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW0:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW0:I

    .line 360
    :cond_0
    :goto_0
    return v0

    .line 348
    :cond_1
    iget v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW0:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW0:I

    .line 349
    iget v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW0:I

    if-ltz v1, :cond_0

    .line 351
    iget v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW1:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW1:I

    .line 352
    iget v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW1:I

    if-nez v1, :cond_0

    .line 354
    iget v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW2:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW2:I

    .line 355
    iget v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW2:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private resetCounter()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 316
    iput v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW0:I

    .line 317
    iput v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW1:I

    .line 318
    iput v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW2:I

    .line 319
    return-void
.end method

.method private rotl(II)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 295
    shl-int v0, p1, p2

    neg-int v1, p2

    ushr-int v1, p1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private salsa20WordToByte([I[B)V
    .locals 13
    .param p1, "input"    # [I
    .param p2, "output"    # [B

    .prologue
    const/16 v12, 0x12

    const/4 v11, 0x0

    const/16 v10, 0xd

    const/16 v9, 0x9

    const/4 v8, 0x7

    .line 217
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    array-length v3, p1

    invoke-static {p1, v11, v2, v11, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 219
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    .line 221
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v3, 0x4

    aget v4, v2, v3

    iget-object v5, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    aget v5, v5, v11

    iget-object v6, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v7, 0xc

    aget v6, v6, v7

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v8}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v2, v3

    .line 222
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v3, 0x8

    aget v4, v2, v3

    iget-object v5, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v6, 0x4

    aget v5, v5, v6

    iget-object v6, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    aget v6, v6, v11

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v9}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v2, v3

    .line 223
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v3, 0xc

    aget v4, v2, v3

    iget-object v5, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v6, 0x8

    aget v5, v5, v6

    iget-object v6, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v7, 0x4

    aget v6, v6, v7

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v10}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v2, v3

    .line 224
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    aget v3, v2, v11

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v5, 0xc

    aget v4, v4, v5

    iget-object v5, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v6, 0x8

    aget v5, v5, v6

    add-int/2addr v4, v5

    invoke-direct {p0, v4, v12}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v4

    xor-int/2addr v3, v4

    aput v3, v2, v11

    .line 225
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    aget v3, v2, v9

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v5, 0x5

    aget v4, v4, v5

    iget-object v5, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    add-int/2addr v4, v5

    invoke-direct {p0, v4, v8}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v4

    xor-int/2addr v3, v4

    aput v3, v2, v9

    .line 226
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    aget v3, v2, v10

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    aget v4, v4, v9

    iget-object v5, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v6, 0x5

    aget v5, v5, v6

    add-int/2addr v4, v5

    invoke-direct {p0, v4, v9}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v4

    xor-int/2addr v3, v4

    aput v3, v2, v10

    .line 227
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v3, 0x1

    aget v4, v2, v3

    iget-object v5, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    aget v5, v5, v10

    iget-object v6, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    aget v6, v6, v9

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v10}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v2, v3

    .line 228
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v3, 0x5

    aget v4, v2, v3

    iget-object v5, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    iget-object v6, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    aget v6, v6, v10

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v12}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v2, v3

    .line 229
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v3, 0xe

    aget v4, v2, v3

    iget-object v5, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v6, 0xa

    aget v5, v5, v6

    iget-object v6, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v7, 0x6

    aget v6, v6, v7

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v8}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v2, v3

    .line 230
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v3, 0x2

    aget v4, v2, v3

    iget-object v5, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v6, 0xe

    aget v5, v5, v6

    iget-object v6, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v7, 0xa

    aget v6, v6, v7

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v9}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v2, v3

    .line 231
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v3, 0x6

    aget v4, v2, v3

    iget-object v5, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    iget-object v6, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v7, 0xe

    aget v6, v6, v7

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v10}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v2, v3

    .line 232
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v3, 0xa

    aget v4, v2, v3

    iget-object v5, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v6, 0x6

    aget v5, v5, v6

    iget-object v6, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v7, 0x2

    aget v6, v6, v7

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v12}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v2, v3

    .line 233
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v3, 0x3

    aget v4, v2, v3

    iget-object v5, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v6, 0xf

    aget v5, v5, v6

    iget-object v6, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v7, 0xb

    aget v6, v6, v7

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v8}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v2, v3

    .line 234
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    aget v3, v2, v8

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    iget-object v5, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v6, 0xf

    aget v5, v5, v6

    add-int/2addr v4, v5

    invoke-direct {p0, v4, v9}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v4

    xor-int/2addr v3, v4

    aput v3, v2, v8

    .line 235
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v3, 0xb

    aget v4, v2, v3

    iget-object v5, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    aget v5, v5, v8

    iget-object v6, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v7, 0x3

    aget v6, v6, v7

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v10}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v2, v3

    .line 236
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v3, 0xf

    aget v4, v2, v3

    iget-object v5, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v6, 0xb

    aget v5, v5, v6

    iget-object v6, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    aget v6, v6, v8

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v12}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v2, v3

    .line 237
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v3, 0x1

    aget v4, v2, v3

    iget-object v5, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    aget v5, v5, v11

    iget-object v6, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v7, 0x3

    aget v6, v6, v7

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v8}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v2, v3

    .line 238
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v3, 0x2

    aget v4, v2, v3

    iget-object v5, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    iget-object v6, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    aget v6, v6, v11

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v9}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v2, v3

    .line 239
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v3, 0x3

    aget v4, v2, v3

    iget-object v5, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    iget-object v6, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v10}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v2, v3

    .line 240
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    aget v3, v2, v11

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    iget-object v5, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    add-int/2addr v4, v5

    invoke-direct {p0, v4, v12}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v4

    xor-int/2addr v3, v4

    aput v3, v2, v11

    .line 241
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v3, 0x6

    aget v4, v2, v3

    iget-object v5, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v6, 0x5

    aget v5, v5, v6

    iget-object v6, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v7, 0x4

    aget v6, v6, v7

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v8}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v2, v3

    .line 242
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    aget v3, v2, v8

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v5, 0x6

    aget v4, v4, v5

    iget-object v5, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v6, 0x5

    aget v5, v5, v6

    add-int/2addr v4, v5

    invoke-direct {p0, v4, v9}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v4

    xor-int/2addr v3, v4

    aput v3, v2, v8

    .line 243
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v3, 0x4

    aget v4, v2, v3

    iget-object v5, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    aget v5, v5, v8

    iget-object v6, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v7, 0x6

    aget v6, v6, v7

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v10}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v2, v3

    .line 244
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v3, 0x5

    aget v4, v2, v3

    iget-object v5, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v6, 0x4

    aget v5, v5, v6

    iget-object v6, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    aget v6, v6, v8

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v12}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v2, v3

    .line 245
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v3, 0xb

    aget v4, v2, v3

    iget-object v5, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v6, 0xa

    aget v5, v5, v6

    iget-object v6, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    aget v6, v6, v9

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v8}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v2, v3

    .line 246
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v3, 0x8

    aget v4, v2, v3

    iget-object v5, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v6, 0xb

    aget v5, v5, v6

    iget-object v6, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v7, 0xa

    aget v6, v6, v7

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v9}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v2, v3

    .line 247
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    aget v3, v2, v9

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v5, 0x8

    aget v4, v4, v5

    iget-object v5, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v6, 0xb

    aget v5, v5, v6

    add-int/2addr v4, v5

    invoke-direct {p0, v4, v10}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v4

    xor-int/2addr v3, v4

    aput v3, v2, v9

    .line 248
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v3, 0xa

    aget v4, v2, v3

    iget-object v5, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    aget v5, v5, v9

    iget-object v6, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v7, 0x8

    aget v6, v6, v7

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v12}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v2, v3

    .line 249
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v3, 0xc

    aget v4, v2, v3

    iget-object v5, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v6, 0xf

    aget v5, v5, v6

    iget-object v6, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v7, 0xe

    aget v6, v6, v7

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v8}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v2, v3

    .line 250
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    aget v3, v2, v10

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v5, 0xc

    aget v4, v4, v5

    iget-object v5, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v6, 0xf

    aget v5, v5, v6

    add-int/2addr v4, v5

    invoke-direct {p0, v4, v9}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v4

    xor-int/2addr v3, v4

    aput v3, v2, v10

    .line 251
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v3, 0xe

    aget v4, v2, v3

    iget-object v5, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    aget v5, v5, v10

    iget-object v6, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v7, 0xc

    aget v6, v6, v7

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v10}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v2, v3

    .line 252
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v3, 0xf

    aget v4, v2, v3

    iget-object v5, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v6, 0xe

    aget v5, v5, v6

    iget-object v6, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    aget v6, v6, v10

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v12}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v2, v3

    .line 219
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 255
    :cond_0
    const/4 v1, 0x0

    .line 256
    .local v1, "offset":I
    const/4 v0, 0x0

    :goto_1
    const/16 v2, 0x10

    if-ge v0, v2, :cond_1

    .line 258
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    aget v2, v2, v0

    aget v3, p1, v0

    add-int/2addr v2, v3

    invoke-direct {p0, v2, p2, v1}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->intToByteLittle(I[BI)[B

    .line 259
    add-int/lit8 v1, v1, 0x4

    .line 256
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 262
    :cond_1
    const/16 v0, 0x10

    :goto_2
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 264
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    aget v2, v2, v0

    invoke-direct {p0, v2, p2, v1}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->intToByteLittle(I[BI)[B

    .line 265
    add-int/lit8 v1, v1, 0x4

    .line 262
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 267
    :cond_2
    return-void
.end method

.method private setKey([B[B)V
    .locals 11
    .param p1, "keyBytes"    # [B
    .param p2, "ivBytes"    # [B

    .prologue
    const/4 v10, 0x1

    const/16 v9, 0xc

    const/16 v8, 0x8

    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 167
    iput-object p1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->workingKey:[B

    .line 168
    iput-object p2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->workingIV:[B

    .line 170
    iput v6, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->index:I

    .line 171
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->resetCounter()V

    .line 172
    const/4 v1, 0x0

    .line 176
    .local v1, "offset":I
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->workingKey:[B

    invoke-direct {p0, v3, v6}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->byteToIntLittle([BI)I

    move-result v3

    aput v3, v2, v10

    .line 177
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/4 v3, 0x2

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->workingKey:[B

    invoke-direct {p0, v4, v7}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->byteToIntLittle([BI)I

    move-result v4

    aput v4, v2, v3

    .line 178
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/4 v3, 0x3

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->workingKey:[B

    invoke-direct {p0, v4, v8}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->byteToIntLittle([BI)I

    move-result v4

    aput v4, v2, v3

    .line 179
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->workingKey:[B

    invoke-direct {p0, v3, v9}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->byteToIntLittle([BI)I

    move-result v3

    aput v3, v2, v7

    .line 181
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->workingKey:[B

    array-length v2, v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    .line 183
    sget-object v0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->sigma:[B

    .line 184
    .local v0, "constants":[B
    const/16 v1, 0x10

    .line 191
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v3, 0xb

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->workingKey:[B

    invoke-direct {p0, v4, v1}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->byteToIntLittle([BI)I

    move-result v4

    aput v4, v2, v3

    .line 192
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->workingKey:[B

    add-int/lit8 v4, v1, 0x4

    invoke-direct {p0, v3, v4}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->byteToIntLittle([BI)I

    move-result v3

    aput v3, v2, v9

    .line 193
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v3, 0xd

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->workingKey:[B

    add-int/lit8 v5, v1, 0x8

    invoke-direct {p0, v4, v5}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->byteToIntLittle([BI)I

    move-result v4

    aput v4, v2, v3

    .line 194
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v3, 0xe

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->workingKey:[B

    add-int/lit8 v5, v1, 0xc

    invoke-direct {p0, v4, v5}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->byteToIntLittle([BI)I

    move-result v4

    aput v4, v2, v3

    .line 195
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    invoke-direct {p0, v0, v6}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->byteToIntLittle([BI)I

    move-result v3

    aput v3, v2, v6

    .line 196
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/4 v3, 0x5

    invoke-direct {p0, v0, v7}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->byteToIntLittle([BI)I

    move-result v4

    aput v4, v2, v3

    .line 197
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v3, 0xa

    invoke-direct {p0, v0, v8}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->byteToIntLittle([BI)I

    move-result v4

    aput v4, v2, v3

    .line 198
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v3, 0xf

    invoke-direct {p0, v0, v9}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->byteToIntLittle([BI)I

    move-result v4

    aput v4, v2, v3

    .line 201
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/4 v3, 0x6

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->workingIV:[B

    invoke-direct {p0, v4, v6}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->byteToIntLittle([BI)I

    move-result v4

    aput v4, v2, v3

    .line 202
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/4 v3, 0x7

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->workingIV:[B

    invoke-direct {p0, v4, v7}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->byteToIntLittle([BI)I

    move-result v4

    aput v4, v2, v3

    .line 203
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v4, 0x9

    aput v6, v3, v4

    aput v6, v2, v8

    .line 205
    iput-boolean v10, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->initialised:Z

    .line 206
    return-void

    .line 188
    .end local v0    # "constants":[B
    :cond_0
    sget-object v0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->tau:[B

    .restart local v0    # "constants":[B
    goto :goto_0
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    const-string v0, "Salsa20"

    return-object v0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 5
    .param p1, "forEncryption"    # Z
    .param p2, "params"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 61
    instance-of v3, p2, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-nez v3, :cond_0

    .line 63
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Salsa20 Init parameters must include an IV"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    move-object v1, p2

    .line 66
    check-cast v1, Lorg/spongycastle/crypto/params/ParametersWithIV;

    .line 68
    .local v1, "ivParams":Lorg/spongycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v0

    .line 70
    .local v0, "iv":[B
    if-eqz v0, :cond_1

    array-length v3, v0

    const/16 v4, 0x8

    if-eq v3, v4, :cond_2

    .line 72
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Salsa20 requires exactly 8 bytes of IV"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 75
    :cond_2
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v3

    instance-of v3, v3, Lorg/spongycastle/crypto/params/KeyParameter;

    if-nez v3, :cond_3

    .line 77
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Salsa20 Init parameters must include a key"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 80
    :cond_3
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/crypto/params/KeyParameter;

    .line 82
    .local v2, "key":Lorg/spongycastle/crypto/params/KeyParameter;
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->workingKey:[B

    .line 83
    iput-object v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->workingIV:[B

    .line 85
    iget-object v3, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->workingKey:[B

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->workingIV:[B

    invoke-direct {p0, v3, v4}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->setKey([B[B)V

    .line 86
    return-void
.end method

.method public processBytes([BII[BI)V
    .locals 5
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .param p4, "out"    # [B
    .param p5, "outOff"    # I

    .prologue
    const/16 v4, 0x8

    .line 122
    iget-boolean v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->initialised:Z

    if-nez v1, :cond_0

    .line 124
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not initialised"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 127
    :cond_0
    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_1

    .line 129
    new-instance v1, Lorg/spongycastle/crypto/DataLengthException;

    const-string v2, "input buffer too short"

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 132
    :cond_1
    add-int v1, p5, p3

    array-length v2, p4

    if-le v1, v2, :cond_2

    .line 134
    new-instance v1, Lorg/spongycastle/crypto/DataLengthException;

    const-string v2, "output buffer too short"

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 137
    :cond_2
    invoke-direct {p0, p3}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->limitExceeded(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 139
    new-instance v1, Lorg/spongycastle/crypto/MaxBytesExceededException;

    const-string v2, "2^70 byte limit per IV would be exceeded; Change IV"

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/MaxBytesExceededException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 142
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_5

    .line 144
    iget v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->index:I

    if-nez v1, :cond_4

    .line 146
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->keyStream:[B

    invoke-direct {p0, v1, v2}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->salsa20WordToByte([I[B)V

    .line 147
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    aget v2, v1, v4

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v4

    .line 148
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    aget v1, v1, v4

    if-nez v1, :cond_4

    .line 150
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v2, 0x9

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 153
    :cond_4
    add-int v1, v0, p5

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->keyStream:[B

    iget v3, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->index:I

    aget-byte v2, v2, v3

    add-int v3, v0, p2

    aget-byte v3, p1, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p4, v1

    .line 154
    iget v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->index:I

    add-int/lit8 v1, v1, 0x1

    and-int/lit8 v1, v1, 0x3f

    iput v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->index:I

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    :cond_5
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->workingKey:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->workingIV:[B

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->setKey([B[B)V

    .line 161
    return-void
.end method

.method public returnByte(B)B
    .locals 4
    .param p1, "in"    # B

    .prologue
    const/16 v3, 0x8

    .line 95
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->limitExceeded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    new-instance v1, Lorg/spongycastle/crypto/MaxBytesExceededException;

    const-string v2, "2^70 byte limit per IV; Change IV"

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/MaxBytesExceededException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 100
    :cond_0
    iget v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->index:I

    if-nez v1, :cond_1

    .line 102
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->keyStream:[B

    invoke-direct {p0, v1, v2}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->salsa20WordToByte([I[B)V

    .line 103
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    aget v2, v1, v3

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v3

    .line 104
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    aget v1, v1, v3

    if-nez v1, :cond_1

    .line 106
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v2, 0x9

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 109
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->keyStream:[B

    iget v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->index:I

    aget-byte v1, v1, v2

    xor-int/2addr v1, p1

    int-to-byte v0, v1

    .line 110
    .local v0, "out":B
    iget v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->index:I

    add-int/lit8 v1, v1, 0x1

    and-int/lit8 v1, v1, 0x3f

    iput v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->index:I

    .line 112
    return v0
.end method
