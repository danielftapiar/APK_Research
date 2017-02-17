.class public Lorg/spongycastle/crypto/modes/GCMBlockCipher;
.super Ljava/lang/Object;
.source "GCMBlockCipher.java"

# interfaces
.implements Lorg/spongycastle/crypto/modes/AEADBlockCipher;


# static fields
.field private static final BLOCK_SIZE:I = 0x10

.field private static final ZEROES:[B


# instance fields
.field private A:[B

.field private H:[B

.field private J0:[B

.field private S:[B

.field private bufBlock:[B

.field private bufOff:I

.field private cipher:Lorg/spongycastle/crypto/BlockCipher;

.field private counter:[B

.field private forEncryption:Z

.field private initS:[B

.field private keyParam:Lorg/spongycastle/crypto/params/KeyParameter;

.field private macBlock:[B

.field private macSize:I

.field private multiplier:Lorg/spongycastle/crypto/modes/gcm/GCMMultiplier;

.field private nonce:[B

.field private totalLength:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/16 v0, 0x10

    new-array v0, v0, [B

    sput-object v0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->ZEROES:[B

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;)V
    .locals 1
    .param p1, "c"    # Lorg/spongycastle/crypto/BlockCipher;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;Lorg/spongycastle/crypto/modes/gcm/GCMMultiplier;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;Lorg/spongycastle/crypto/modes/gcm/GCMMultiplier;)V
    .locals 2
    .param p1, "c"    # Lorg/spongycastle/crypto/BlockCipher;
    .param p2, "m"    # Lorg/spongycastle/crypto/modes/gcm/GCMMultiplier;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cipher required with a block size of 16."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    if-nez p2, :cond_1

    .line 63
    new-instance p2, Lorg/spongycastle/crypto/modes/gcm/Tables8kGCMMultiplier;

    .end local p2    # "m":Lorg/spongycastle/crypto/modes/gcm/GCMMultiplier;
    invoke-direct {p2}, Lorg/spongycastle/crypto/modes/gcm/Tables8kGCMMultiplier;-><init>()V

    .line 66
    .restart local p2    # "m":Lorg/spongycastle/crypto/modes/gcm/GCMMultiplier;
    :cond_1
    iput-object p1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    .line 67
    iput-object p2, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->multiplier:Lorg/spongycastle/crypto/modes/gcm/GCMMultiplier;

    .line 68
    return-void
.end method

.method private gCTRBlock([BI[BI)V
    .locals 8
    .param p1, "buf"    # [B
    .param p2, "bufCount"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I

    .prologue
    const/4 v6, 0x0

    .line 329
    const/16 v2, 0xf

    .local v2, "i":I
    :goto_0
    const/16 v4, 0xc

    if-lt v2, v4, :cond_0

    .line 331
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->counter:[B

    aget-byte v4, v4, v2

    add-int/lit8 v4, v4, 0x1

    and-int/lit16 v4, v4, 0xff

    int-to-byte v0, v4

    .line 332
    .local v0, "b":B
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->counter:[B

    aput-byte v0, v4, v2

    .line 334
    if-eqz v0, :cond_1

    .line 340
    .end local v0    # "b":B
    :cond_0
    const/16 v4, 0x10

    new-array v3, v4, [B

    .line 341
    .local v3, "tmp":[B
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v5, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->counter:[B

    invoke-interface {v4, v5, v6, v3, v6}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 344
    iget-boolean v4, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    if-eqz v4, :cond_2

    .line 346
    sget-object v4, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->ZEROES:[B

    rsub-int/lit8 v5, p2, 0x10

    invoke-static {v4, p2, v3, p2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 347
    move-object v1, v3

    .line 354
    .local v1, "hashBytes":[B
    :goto_1
    add-int/lit8 v2, p2, -0x1

    :goto_2
    if-ltz v2, :cond_3

    .line 356
    aget-byte v4, v3, v2

    aget-byte v5, p1, v2

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    .line 357
    add-int v4, p4, v2

    aget-byte v5, v3, v2

    aput-byte v5, p3, v4

    .line 354
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 329
    .end local v1    # "hashBytes":[B
    .end local v3    # "tmp":[B
    .restart local v0    # "b":B
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 351
    .end local v0    # "b":B
    .restart local v3    # "tmp":[B
    :cond_2
    move-object v1, p1

    .restart local v1    # "hashBytes":[B
    goto :goto_1

    .line 361
    :cond_3
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->S:[B

    invoke-static {v4, v1}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->xor([B[B)V

    .line 362
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->multiplier:Lorg/spongycastle/crypto/modes/gcm/GCMMultiplier;

    iget-object v5, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->S:[B

    invoke-interface {v4, v5}, Lorg/spongycastle/crypto/modes/gcm/GCMMultiplier;->multiplyH([B)V

    .line 364
    iget-wide v4, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    int-to-long v6, p2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    .line 365
    return-void
.end method

.method private gHASH([B)[B
    .locals 6
    .param p1, "b"    # [B

    .prologue
    const/16 v5, 0x10

    .line 369
    new-array v1, v5, [B

    .line 371
    .local v1, "Y":[B
    const/4 v3, 0x0

    .local v3, "pos":I
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_0

    .line 373
    new-array v0, v5, [B

    .line 374
    .local v0, "X":[B
    array-length v4, p1

    sub-int/2addr v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 375
    .local v2, "num":I
    const/4 v4, 0x0

    invoke-static {p1, v3, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 376
    invoke-static {v1, v0}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->xor([B[B)V

    .line 377
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->multiplier:Lorg/spongycastle/crypto/modes/gcm/GCMMultiplier;

    invoke-interface {v4, v1}, Lorg/spongycastle/crypto/modes/gcm/GCMMultiplier;->multiplyH([B)V

    .line 371
    add-int/lit8 v3, v3, 0x10

    goto :goto_0

    .line 380
    .end local v0    # "X":[B
    .end local v2    # "num":I
    :cond_0
    return-object v1
.end method

.method private static packLength(J[BI)V
    .locals 2
    .param p0, "count"    # J
    .param p2, "bs"    # [B
    .param p3, "off"    # I

    .prologue
    .line 413
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    invoke-static {v0, p2, p3}, Lorg/spongycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    .line 414
    long-to-int v0, p0

    add-int/lit8 v1, p3, 0x4

    invoke-static {v0, p2, v1}, Lorg/spongycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    .line 415
    return-void
.end method

.method private process(B[BI)I
    .locals 5
    .param p1, "in"    # B
    .param p2, "out"    # [B
    .param p3, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/16 v0, 0x10

    .line 220
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    iget v3, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    aput-byte p1, v2, v3

    .line 222
    iget v2, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    array-length v3, v3

    if-ne v2, v3, :cond_1

    .line 224
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    invoke-direct {p0, v2, v0, p2, p3}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->gCTRBlock([BI[BI)V

    .line 225
    iget-boolean v2, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    if-nez v2, :cond_0

    .line 227
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    iget v4, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->macSize:I

    invoke-static {v2, v0, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 230
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x10

    iput v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    .line 235
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private reset(Z)V
    .locals 3
    .param p1, "clearMac"    # Z

    .prologue
    const/4 v2, 0x0

    .line 308
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->initS:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->S:[B

    .line 309
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->J0:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->counter:[B

    .line 310
    iput v2, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    .line 311
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    .line 313
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    invoke-static {v0, v2}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 318
    :cond_0
    if-eqz p1, :cond_1

    .line 320
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    .line 323
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->reset()V

    .line 324
    return-void
.end method

.method private static xor([B[B)V
    .locals 3
    .param p0, "block"    # [B
    .param p1, "val"    # [B

    .prologue
    .line 405
    const/16 v0, 0xf

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 407
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 405
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 409
    :cond_0
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 10
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lorg/spongycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    .line 241
    iget v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    .line 242
    .local v1, "extra":I
    iget-boolean v6, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    if-nez v6, :cond_1

    .line 244
    iget v6, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->macSize:I

    if-ge v1, v6, :cond_0

    .line 246
    new-instance v6, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v7, "data too short"

    invoke-direct {v6, v7}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 248
    :cond_0
    iget v6, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->macSize:I

    sub-int/2addr v1, v6

    .line 251
    :cond_1
    if-lez v1, :cond_2

    .line 253
    const/16 v6, 0x10

    new-array v5, v6, [B

    .line 254
    .local v5, "tmp":[B
    iget-object v6, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v6, v7, v5, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 255
    invoke-direct {p0, v5, v1, p1, p2}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->gCTRBlock([BI[BI)V

    .line 259
    .end local v5    # "tmp":[B
    :cond_2
    const/16 v6, 0x10

    new-array v0, v6, [B

    .line 260
    .local v0, "X":[B
    iget-object v6, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->A:[B

    array-length v6, v6

    int-to-long v6, v6

    const-wide/16 v8, 0x8

    mul-long/2addr v6, v8

    const/4 v8, 0x0

    invoke-static {v6, v7, v0, v8}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->packLength(J[BI)V

    .line 261
    iget-wide v6, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    const-wide/16 v8, 0x8

    mul-long/2addr v6, v8

    const/16 v8, 0x8

    invoke-static {v6, v7, v0, v8}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->packLength(J[BI)V

    .line 263
    iget-object v6, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->S:[B

    invoke-static {v6, v0}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->xor([B[B)V

    .line 264
    iget-object v6, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->multiplier:Lorg/spongycastle/crypto/modes/gcm/GCMMultiplier;

    iget-object v7, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->S:[B

    invoke-interface {v6, v7}, Lorg/spongycastle/crypto/modes/gcm/GCMMultiplier;->multiplyH([B)V

    .line 268
    const/16 v6, 0x10

    new-array v4, v6, [B

    .line 269
    .local v4, "tag":[B
    iget-object v6, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v7, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->J0:[B

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface {v6, v7, v8, v4, v9}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 270
    iget-object v6, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->S:[B

    invoke-static {v4, v6}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->xor([B[B)V

    .line 272
    move v3, v1

    .line 275
    .local v3, "resultLen":I
    iget v6, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->macSize:I

    new-array v6, v6, [B

    iput-object v6, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    .line 276
    const/4 v6, 0x0

    iget-object v7, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    const/4 v8, 0x0

    iget v9, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->macSize:I

    invoke-static {v4, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 278
    iget-boolean v6, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    if-eqz v6, :cond_4

    .line 281
    iget-object v6, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    const/4 v7, 0x0

    iget v8, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    add-int/2addr v8, p2

    iget v9, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->macSize:I

    invoke-static {v6, v7, p1, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 282
    iget v6, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->macSize:I

    add-int/2addr v3, v6

    .line 295
    :cond_3
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->reset(Z)V

    .line 297
    return v3

    .line 287
    :cond_4
    iget v6, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->macSize:I

    new-array v2, v6, [B

    .line 288
    .local v2, "msgMac":[B
    iget-object v6, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    const/4 v7, 0x0

    iget v8, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->macSize:I

    invoke-static {v6, v1, v2, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 289
    iget-object v6, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    invoke-static {v6, v2}, Lorg/spongycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v6

    if-nez v6, :cond_3

    .line 291
    new-instance v6, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v7, "mac check in GCM failed"

    invoke-direct {v6, v7}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/spongycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/GCM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMac()[B
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getOutputSize(I)I
    .locals 2
    .param p1, "len"    # I

    .prologue
    .line 171
    iget-boolean v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_0

    .line 173
    iget v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    add-int/2addr v0, p1

    iget v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->macSize:I

    add-int/2addr v0, v1

    .line 176
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    add-int/2addr v0, p1

    iget v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->macSize:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public getUnderlyingCipher()Lorg/spongycastle/crypto/BlockCipher;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    return-object v0
.end method

.method public getUpdateOutputSize(I)I
    .locals 1
    .param p1, "len"    # I

    .prologue
    .line 181
    iget v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    add-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x10

    mul-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 10
    .param p1, "forEncryption"    # Z
    .param p2, "params"    # Lorg/spongycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x1

    const/16 v5, 0x10

    const/4 v8, 0x0

    .line 83
    iput-boolean p1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    .line 84
    iput-object v6, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    .line 86
    instance-of v4, p2, Lorg/spongycastle/crypto/params/AEADParameters;

    if-eqz v4, :cond_3

    move-object v3, p2

    .line 88
    check-cast v3, Lorg/spongycastle/crypto/params/AEADParameters;

    .line 90
    .local v3, "param":Lorg/spongycastle/crypto/params/AEADParameters;
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/AEADParameters;->getNonce()[B

    move-result-object v4

    iput-object v4, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    .line 91
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/AEADParameters;->getAssociatedText()[B

    move-result-object v4

    iput-object v4, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->A:[B

    .line 93
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/AEADParameters;->getMacSize()I

    move-result v2

    .line 94
    .local v2, "macSizeBits":I
    const/16 v4, 0x60

    if-lt v2, v4, :cond_0

    const/16 v4, 0x80

    if-gt v2, v4, :cond_0

    rem-int/lit8 v4, v2, 0x8

    if-eqz v4, :cond_1

    .line 96
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid value for MAC size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 99
    :cond_1
    div-int/lit8 v4, v2, 0x8

    iput v4, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->macSize:I

    .line 100
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/AEADParameters;->getKey()Lorg/spongycastle/crypto/params/KeyParameter;

    move-result-object v4

    iput-object v4, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->keyParam:Lorg/spongycastle/crypto/params/KeyParameter;

    .line 116
    .end local v2    # "macSizeBits":I
    .end local v3    # "param":Lorg/spongycastle/crypto/params/AEADParameters;
    :goto_0
    if-eqz p1, :cond_5

    move v1, v5

    .line 117
    .local v1, "bufLength":I
    :goto_1
    new-array v4, v1, [B

    iput-object v4, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    .line 119
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    array-length v4, v4

    if-ge v4, v9, :cond_6

    .line 121
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "IV must be at least 1 byte"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 102
    .end local v1    # "bufLength":I
    :cond_3
    instance-of v4, p2, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-eqz v4, :cond_4

    move-object v3, p2

    .line 104
    check-cast v3, Lorg/spongycastle/crypto/params/ParametersWithIV;

    .line 106
    .local v3, "param":Lorg/spongycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v4

    iput-object v4, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    .line 107
    iput-object v6, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->A:[B

    .line 108
    iput v5, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->macSize:I

    .line 109
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v4

    check-cast v4, Lorg/spongycastle/crypto/params/KeyParameter;

    iput-object v4, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->keyParam:Lorg/spongycastle/crypto/params/KeyParameter;

    goto :goto_0

    .line 113
    .end local v3    # "param":Lorg/spongycastle/crypto/params/ParametersWithIV;
    :cond_4
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "invalid parameters passed to GCM"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 116
    :cond_5
    iget v4, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->macSize:I

    add-int/lit8 v1, v4, 0x10

    goto :goto_1

    .line 124
    .restart local v1    # "bufLength":I
    :cond_6
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->A:[B

    if-nez v4, :cond_7

    .line 127
    new-array v4, v8, [B

    iput-object v4, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->A:[B

    .line 131
    :cond_7
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v6, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->keyParam:Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-interface {v4, v9, v6}, Lorg/spongycastle/crypto/BlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 137
    new-array v4, v5, [B

    iput-object v4, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->H:[B

    .line 138
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    sget-object v6, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->ZEROES:[B

    iget-object v7, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->H:[B

    invoke-interface {v4, v6, v8, v7, v8}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 139
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->multiplier:Lorg/spongycastle/crypto/modes/gcm/GCMMultiplier;

    iget-object v6, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->H:[B

    invoke-interface {v4, v6}, Lorg/spongycastle/crypto/modes/gcm/GCMMultiplier;->init([B)V

    .line 141
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->A:[B

    invoke-direct {p0, v4}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->gHASH([B)[B

    move-result-object v4

    iput-object v4, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->initS:[B

    .line 143
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    array-length v4, v4

    const/16 v6, 0xc

    if-ne v4, v6, :cond_8

    .line 145
    new-array v4, v5, [B

    iput-object v4, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->J0:[B

    .line 146
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    iget-object v5, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->J0:[B

    iget-object v6, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    array-length v6, v6

    invoke-static {v4, v8, v5, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->J0:[B

    const/16 v5, 0xf

    aput-byte v9, v4, v5

    .line 158
    :goto_2
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->initS:[B

    invoke-static {v4}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v4

    iput-object v4, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->S:[B

    .line 159
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->J0:[B

    invoke-static {v4}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v4

    iput-object v4, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->counter:[B

    .line 160
    iput v8, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    .line 161
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    .line 162
    return-void

    .line 151
    :cond_8
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    invoke-direct {p0, v4}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->gHASH([B)[B

    move-result-object v4

    iput-object v4, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->J0:[B

    .line 152
    new-array v0, v5, [B

    .line 153
    .local v0, "X":[B
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    array-length v4, v4

    int-to-long v4, v4

    const-wide/16 v6, 0x8

    mul-long/2addr v4, v6

    const/16 v6, 0x8

    invoke-static {v4, v5, v0, v6}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->packLength(J[BI)V

    .line 154
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->J0:[B

    invoke-static {v4, v0}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->xor([B[B)V

    .line 155
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->multiplier:Lorg/spongycastle/crypto/modes/gcm/GCMMultiplier;

    iget-object v5, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->J0:[B

    invoke-interface {v4, v5}, Lorg/spongycastle/crypto/modes/gcm/GCMMultiplier;->multiplyH([B)V

    goto :goto_2
.end method

.method public processByte(B[BI)I
    .locals 1
    .param p1, "in"    # B
    .param p2, "out"    # [B
    .param p3, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;
        }
    .end annotation

    .prologue
    .line 187
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->process(B[BI)I

    move-result v0

    return v0
.end method

.method public processBytes([BII[BI)I
    .locals 7
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .param p4, "out"    # [B
    .param p5, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x10

    .line 193
    const/4 v1, 0x0

    .line 195
    .local v1, "resultLen":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-eq v0, p3, :cond_2

    .line 198
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    iget v3, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    add-int v4, p2, v0

    aget-byte v4, p1, v4

    aput-byte v4, v2, v3

    .line 200
    iget v2, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    array-length v3, v3

    if-ne v2, v3, :cond_1

    .line 202
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    add-int v3, p5, v1

    invoke-direct {p0, v2, v6, p4, v3}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->gCTRBlock([BI[BI)V

    .line 203
    iget-boolean v2, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    if-nez v2, :cond_0

    .line 205
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    const/4 v4, 0x0

    iget v5, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->macSize:I

    invoke-static {v2, v6, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 208
    :cond_0
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    array-length v2, v2

    add-int/lit8 v2, v2, -0x10

    iput v2, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    .line 210
    add-int/lit8 v1, v1, 0x10

    .line 195
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 214
    :cond_2
    return v1
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->reset(Z)V

    .line 303
    return-void
.end method
