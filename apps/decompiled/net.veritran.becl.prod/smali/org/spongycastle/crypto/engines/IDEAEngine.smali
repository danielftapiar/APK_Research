.class public Lorg/spongycastle/crypto/engines/IDEAEngine;
.super Ljava/lang/Object;
.source "IDEAEngine.java"

# interfaces
.implements Lorg/spongycastle/crypto/BlockCipher;


# static fields
.field private static final BASE:I = 0x10001

.field protected static final BLOCK_SIZE:I = 0x8

.field private static final MASK:I = 0xffff


# instance fields
.field private workingKey:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/IDEAEngine;->workingKey:[I

    .line 41
    return-void
.end method

.method private bytesToWord([BI)I
    .locals 2
    .param p1, "in"    # [B
    .param p2, "inOff"    # I

    .prologue
    .line 112
    aget-byte v0, p1, p2

    shl-int/lit8 v0, v0, 0x8

    const v1, 0xff00

    and-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method private expandKey([B)[I
    .locals 9
    .param p1, "uKey"    # [B

    .prologue
    const/16 v8, 0x34

    const/16 v4, 0x10

    const/4 v7, 0x6

    const v6, 0xffff

    .line 215
    new-array v1, v8, [I

    .line 217
    .local v1, "key":[I
    array-length v3, p1

    if-ge v3, v4, :cond_0

    .line 219
    new-array v2, v4, [B

    .line 221
    .local v2, "tmp":[B
    const/4 v3, 0x0

    array-length v4, v2

    array-length v5, p1

    sub-int/2addr v4, v5

    array-length v5, p1

    invoke-static {p1, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 223
    move-object p1, v2

    .line 226
    .end local v2    # "tmp":[B
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v3, 0x8

    if-ge v0, v3, :cond_1

    .line 228
    mul-int/lit8 v3, v0, 0x2

    invoke-direct {p0, p1, v3}, Lorg/spongycastle/crypto/engines/IDEAEngine;->bytesToWord([BI)I

    move-result v3

    aput v3, v1, v0

    .line 226
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 231
    :cond_1
    const/16 v0, 0x8

    :goto_1
    if-ge v0, v8, :cond_4

    .line 233
    and-int/lit8 v3, v0, 0x7

    if-ge v3, v7, :cond_2

    .line 235
    add-int/lit8 v3, v0, -0x7

    aget v3, v1, v3

    and-int/lit8 v3, v3, 0x7f

    shl-int/lit8 v3, v3, 0x9

    add-int/lit8 v4, v0, -0x6

    aget v4, v1, v4

    shr-int/lit8 v4, v4, 0x7

    or-int/2addr v3, v4

    and-int/2addr v3, v6

    aput v3, v1, v0

    .line 231
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 237
    :cond_2
    and-int/lit8 v3, v0, 0x7

    if-ne v3, v7, :cond_3

    .line 239
    add-int/lit8 v3, v0, -0x7

    aget v3, v1, v3

    and-int/lit8 v3, v3, 0x7f

    shl-int/lit8 v3, v3, 0x9

    add-int/lit8 v4, v0, -0xe

    aget v4, v1, v4

    shr-int/lit8 v4, v4, 0x7

    or-int/2addr v3, v4

    and-int/2addr v3, v6

    aput v3, v1, v0

    goto :goto_2

    .line 243
    :cond_3
    add-int/lit8 v3, v0, -0xf

    aget v3, v1, v3

    and-int/lit8 v3, v3, 0x7f

    shl-int/lit8 v3, v3, 0x9

    add-int/lit8 v4, v0, -0xe

    aget v4, v1, v4

    shr-int/lit8 v4, v4, 0x7

    or-int/2addr v3, v4

    and-int/2addr v3, v6

    aput v3, v1, v0

    goto :goto_2

    .line 247
    :cond_4
    return-object v1
.end method

.method private generateWorkingKey(Z[B)[I
    .locals 1
    .param p1, "forEncryption"    # Z
    .param p2, "userKey"    # [B

    .prologue
    .line 357
    if-eqz p1, :cond_0

    .line 359
    invoke-direct {p0, p2}, Lorg/spongycastle/crypto/engines/IDEAEngine;->expandKey([B)[I

    move-result-object v0

    .line 363
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p2}, Lorg/spongycastle/crypto/engines/IDEAEngine;->expandKey([B)[I

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/engines/IDEAEngine;->invertKey([I)[I

    move-result-object v0

    goto :goto_0
.end method

.method private ideaFunc([I[BI[BI)V
    .locals 13
    .param p1, "workingKey"    # [I
    .param p2, "in"    # [B
    .param p3, "inOff"    # I
    .param p4, "out"    # [B
    .param p5, "outOff"    # I

    .prologue
    .line 165
    const/4 v2, 0x0

    .line 167
    .local v2, "keyOff":I
    move/from16 v0, p3

    invoke-direct {p0, p2, v0}, Lorg/spongycastle/crypto/engines/IDEAEngine;->bytesToWord([BI)I

    move-result v7

    .line 168
    .local v7, "x0":I
    add-int/lit8 v11, p3, 0x2

    invoke-direct {p0, p2, v11}, Lorg/spongycastle/crypto/engines/IDEAEngine;->bytesToWord([BI)I

    move-result v8

    .line 169
    .local v8, "x1":I
    add-int/lit8 v11, p3, 0x4

    invoke-direct {p0, p2, v11}, Lorg/spongycastle/crypto/engines/IDEAEngine;->bytesToWord([BI)I

    move-result v9

    .line 170
    .local v9, "x2":I
    add-int/lit8 v11, p3, 0x6

    invoke-direct {p0, p2, v11}, Lorg/spongycastle/crypto/engines/IDEAEngine;->bytesToWord([BI)I

    move-result v10

    .line 172
    .local v10, "x3":I
    const/4 v4, 0x0

    .local v4, "round":I
    move v3, v2

    .end local v2    # "keyOff":I
    .local v3, "keyOff":I
    :goto_0
    const/16 v11, 0x8

    if-ge v4, v11, :cond_0

    .line 174
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "keyOff":I
    .restart local v2    # "keyOff":I
    aget v11, p1, v3

    invoke-direct {p0, v7, v11}, Lorg/spongycastle/crypto/engines/IDEAEngine;->mul(II)I

    move-result v7

    .line 175
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "keyOff":I
    .restart local v3    # "keyOff":I
    aget v11, p1, v2

    add-int/2addr v8, v11

    .line 176
    const v11, 0xffff

    and-int/2addr v8, v11

    .line 177
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "keyOff":I
    .restart local v2    # "keyOff":I
    aget v11, p1, v3

    add-int/2addr v9, v11

    .line 178
    const v11, 0xffff

    and-int/2addr v9, v11

    .line 179
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "keyOff":I
    .restart local v3    # "keyOff":I
    aget v11, p1, v2

    invoke-direct {p0, v10, v11}, Lorg/spongycastle/crypto/engines/IDEAEngine;->mul(II)I

    move-result v10

    .line 181
    move v5, v8

    .line 182
    .local v5, "t0":I
    move v6, v9

    .line 183
    .local v6, "t1":I
    xor-int/2addr v9, v7

    .line 184
    xor-int/2addr v8, v10

    .line 186
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "keyOff":I
    .restart local v2    # "keyOff":I
    aget v11, p1, v3

    invoke-direct {p0, v9, v11}, Lorg/spongycastle/crypto/engines/IDEAEngine;->mul(II)I

    move-result v9

    .line 187
    add-int/2addr v8, v9

    .line 188
    const v11, 0xffff

    and-int/2addr v8, v11

    .line 190
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "keyOff":I
    .restart local v3    # "keyOff":I
    aget v11, p1, v2

    invoke-direct {p0, v8, v11}, Lorg/spongycastle/crypto/engines/IDEAEngine;->mul(II)I

    move-result v8

    .line 191
    add-int/2addr v9, v8

    .line 192
    const v11, 0xffff

    and-int/2addr v9, v11

    .line 194
    xor-int/2addr v7, v8

    .line 195
    xor-int/2addr v10, v9

    .line 196
    xor-int/2addr v8, v6

    .line 197
    xor-int/2addr v9, v5

    .line 172
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 200
    .end local v5    # "t0":I
    .end local v6    # "t1":I
    :cond_0
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "keyOff":I
    .restart local v2    # "keyOff":I
    aget v11, p1, v3

    invoke-direct {p0, v7, v11}, Lorg/spongycastle/crypto/engines/IDEAEngine;->mul(II)I

    move-result v11

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-direct {p0, v11, v0, v1}, Lorg/spongycastle/crypto/engines/IDEAEngine;->wordToBytes(I[BI)V

    .line 201
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "keyOff":I
    .restart local v3    # "keyOff":I
    aget v11, p1, v2

    add-int/2addr v11, v9

    add-int/lit8 v12, p5, 0x2

    move-object/from16 v0, p4

    invoke-direct {p0, v11, v0, v12}, Lorg/spongycastle/crypto/engines/IDEAEngine;->wordToBytes(I[BI)V

    .line 202
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "keyOff":I
    .restart local v2    # "keyOff":I
    aget v11, p1, v3

    add-int/2addr v11, v8

    add-int/lit8 v12, p5, 0x4

    move-object/from16 v0, p4

    invoke-direct {p0, v11, v0, v12}, Lorg/spongycastle/crypto/engines/IDEAEngine;->wordToBytes(I[BI)V

    .line 203
    aget v11, p1, v2

    invoke-direct {p0, v10, v11}, Lorg/spongycastle/crypto/engines/IDEAEngine;->mul(II)I

    move-result v11

    add-int/lit8 v12, p5, 0x6

    move-object/from16 v0, p4

    invoke-direct {p0, v11, v0, v12}, Lorg/spongycastle/crypto/engines/IDEAEngine;->wordToBytes(I[BI)V

    .line 204
    return-void
.end method

.method private invertKey([I)[I
    .locals 10
    .param p1, "inKey"    # [I

    .prologue
    .line 306
    const/16 v3, 0x34

    .line 307
    .local v3, "p":I
    const/16 v9, 0x34

    new-array v2, v9, [I

    .line 308
    .local v2, "key":[I
    const/4 v0, 0x0

    .line 310
    .local v0, "inOff":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "inOff":I
    .local v1, "inOff":I
    aget v9, p1, v0

    invoke-direct {p0, v9}, Lorg/spongycastle/crypto/engines/IDEAEngine;->mulInv(I)I

    move-result v5

    .line 311
    .local v5, "t1":I
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "inOff":I
    .restart local v0    # "inOff":I
    aget v9, p1, v1

    invoke-virtual {p0, v9}, Lorg/spongycastle/crypto/engines/IDEAEngine;->addInv(I)I

    move-result v6

    .line 312
    .local v6, "t2":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "inOff":I
    .restart local v1    # "inOff":I
    aget v9, p1, v0

    invoke-virtual {p0, v9}, Lorg/spongycastle/crypto/engines/IDEAEngine;->addInv(I)I

    move-result v7

    .line 313
    .local v7, "t3":I
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "inOff":I
    .restart local v0    # "inOff":I
    aget v9, p1, v1

    invoke-direct {p0, v9}, Lorg/spongycastle/crypto/engines/IDEAEngine;->mulInv(I)I

    move-result v8

    .line 314
    .local v8, "t4":I
    add-int/lit8 v3, v3, -0x1

    aput v8, v2, v3

    .line 315
    add-int/lit8 v3, v3, -0x1

    aput v7, v2, v3

    .line 316
    add-int/lit8 v3, v3, -0x1

    aput v6, v2, v3

    .line 317
    add-int/lit8 v3, v3, -0x1

    aput v5, v2, v3

    .line 319
    const/4 v4, 0x1

    .local v4, "round":I
    move v1, v0

    .end local v0    # "inOff":I
    .restart local v1    # "inOff":I
    :goto_0
    const/16 v9, 0x8

    if-ge v4, v9, :cond_0

    .line 321
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "inOff":I
    .restart local v0    # "inOff":I
    aget v5, p1, v1

    .line 322
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "inOff":I
    .restart local v1    # "inOff":I
    aget v6, p1, v0

    .line 323
    add-int/lit8 v3, v3, -0x1

    aput v6, v2, v3

    .line 324
    add-int/lit8 v3, v3, -0x1

    aput v5, v2, v3

    .line 326
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "inOff":I
    .restart local v0    # "inOff":I
    aget v9, p1, v1

    invoke-direct {p0, v9}, Lorg/spongycastle/crypto/engines/IDEAEngine;->mulInv(I)I

    move-result v5

    .line 327
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "inOff":I
    .restart local v1    # "inOff":I
    aget v9, p1, v0

    invoke-virtual {p0, v9}, Lorg/spongycastle/crypto/engines/IDEAEngine;->addInv(I)I

    move-result v6

    .line 328
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "inOff":I
    .restart local v0    # "inOff":I
    aget v9, p1, v1

    invoke-virtual {p0, v9}, Lorg/spongycastle/crypto/engines/IDEAEngine;->addInv(I)I

    move-result v7

    .line 329
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "inOff":I
    .restart local v1    # "inOff":I
    aget v9, p1, v0

    invoke-direct {p0, v9}, Lorg/spongycastle/crypto/engines/IDEAEngine;->mulInv(I)I

    move-result v8

    .line 330
    add-int/lit8 v3, v3, -0x1

    aput v8, v2, v3

    .line 331
    add-int/lit8 v3, v3, -0x1

    aput v6, v2, v3

    .line 332
    add-int/lit8 v3, v3, -0x1

    aput v7, v2, v3

    .line 333
    add-int/lit8 v3, v3, -0x1

    aput v5, v2, v3

    .line 319
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 336
    :cond_0
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "inOff":I
    .restart local v0    # "inOff":I
    aget v5, p1, v1

    .line 337
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "inOff":I
    .restart local v1    # "inOff":I
    aget v6, p1, v0

    .line 338
    add-int/lit8 v3, v3, -0x1

    aput v6, v2, v3

    .line 339
    add-int/lit8 v3, v3, -0x1

    aput v5, v2, v3

    .line 341
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "inOff":I
    .restart local v0    # "inOff":I
    aget v9, p1, v1

    invoke-direct {p0, v9}, Lorg/spongycastle/crypto/engines/IDEAEngine;->mulInv(I)I

    move-result v5

    .line 342
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "inOff":I
    .restart local v1    # "inOff":I
    aget v9, p1, v0

    invoke-virtual {p0, v9}, Lorg/spongycastle/crypto/engines/IDEAEngine;->addInv(I)I

    move-result v6

    .line 343
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "inOff":I
    .restart local v0    # "inOff":I
    aget v9, p1, v1

    invoke-virtual {p0, v9}, Lorg/spongycastle/crypto/engines/IDEAEngine;->addInv(I)I

    move-result v7

    .line 344
    aget v9, p1, v0

    invoke-direct {p0, v9}, Lorg/spongycastle/crypto/engines/IDEAEngine;->mulInv(I)I

    move-result v8

    .line 345
    add-int/lit8 v3, v3, -0x1

    aput v8, v2, v3

    .line 346
    add-int/lit8 v3, v3, -0x1

    aput v7, v2, v3

    .line 347
    add-int/lit8 v3, v3, -0x1

    aput v6, v2, v3

    .line 348
    add-int/lit8 v3, v3, -0x1

    aput v5, v2, v3

    .line 350
    return-object v2
.end method

.method private mul(II)I
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const v1, 0x10001

    const v3, 0xffff

    .line 137
    if-nez p1, :cond_0

    .line 139
    sub-int p1, v1, p2

    .line 154
    :goto_0
    and-int v1, p1, v3

    return v1

    .line 141
    :cond_0
    if-nez p2, :cond_1

    .line 143
    sub-int p1, v1, p1

    goto :goto_0

    .line 147
    :cond_1
    mul-int v0, p1, p2

    .line 149
    .local v0, "p":I
    and-int p2, v0, v3

    .line 150
    ushr-int/lit8 p1, v0, 0x10

    .line 151
    sub-int v2, p2, p1

    if-ge p2, p1, :cond_2

    const/4 v1, 0x1

    :goto_1
    add-int p1, v2, v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private mulInv(I)I
    .locals 8
    .param p1, "x"    # I

    .prologue
    const v7, 0x10001

    const/4 v6, 0x1

    const v5, 0xffff

    .line 261
    const/4 v4, 0x2

    if-ge p1, v4, :cond_1

    move v1, p1

    .line 284
    :cond_0
    :goto_0
    return v1

    .line 266
    :cond_1
    const/4 v1, 0x1

    .line 267
    .local v1, "t0":I
    div-int v2, v7, p1

    .line 268
    .local v2, "t1":I
    rem-int v3, v7, p1

    .line 270
    .local v3, "y":I
    :goto_1
    if-eq v3, v6, :cond_2

    .line 272
    div-int v0, p1, v3

    .line 273
    .local v0, "q":I
    rem-int/2addr p1, v3

    .line 274
    mul-int v4, v2, v0

    add-int/2addr v4, v1

    and-int v1, v4, v5

    .line 275
    if-eq p1, v6, :cond_0

    .line 279
    div-int v0, v3, p1

    .line 280
    rem-int/2addr v3, p1

    .line 281
    mul-int v4, v1, v0

    add-int/2addr v4, v2

    and-int v2, v4, v5

    goto :goto_1

    .line 284
    .end local v0    # "q":I
    :cond_2
    rsub-int/lit8 v4, v2, 0x1

    and-int v1, v4, v5

    goto :goto_0
.end method

.method private wordToBytes(I[BI)V
    .locals 2
    .param p1, "word"    # I
    .param p2, "out"    # [B
    .param p3, "outOff"    # I

    .prologue
    .line 120
    ushr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 121
    add-int/lit8 v0, p3, 0x1

    int-to-byte v1, p1

    aput-byte v1, p2, v0

    .line 122
    return-void
.end method


# virtual methods
.method addInv(I)I
    .locals 2
    .param p1, "x"    # I

    .prologue
    .line 295
    rsub-int/lit8 v0, p1, 0x0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    const-string v0, "IDEA"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .prologue
    .line 72
    const/16 v0, 0x8

    return v0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 3
    .param p1, "forEncryption"    # Z
    .param p2, "params"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 55
    instance-of v0, p2, Lorg/spongycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_0

    .line 57
    check-cast p2, Lorg/spongycastle/crypto/params/KeyParameter;

    .end local p2    # "params":Lorg/spongycastle/crypto/CipherParameters;
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/engines/IDEAEngine;->generateWorkingKey(Z[B)[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/IDEAEngine;->workingKey:[I

    .line 59
    return-void

    .line 62
    .restart local p2    # "params":Lorg/spongycastle/crypto/CipherParameters;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid parameter passed to IDEA init - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public processBlock([BI[BI)I
    .locals 6
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/IDEAEngine;->workingKey:[I

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IDEA engine not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_0
    add-int/lit8 v0, p2, 0x8

    array-length v1, p1

    if-le v0, v1, :cond_1

    .line 88
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_1
    add-int/lit8 v0, p4, 0x8

    array-length v1, p3

    if-le v0, v1, :cond_2

    .line 93
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_2
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/IDEAEngine;->workingKey:[I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/crypto/engines/IDEAEngine;->ideaFunc([I[BI[BI)V

    .line 98
    const/16 v0, 0x8

    return v0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method
