.class Lorg/spongycastle/math/ec/IntArray;
.super Ljava/lang/Object;
.source "IntArray.java"


# instance fields
.field private m_ints:[I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "intLen"    # I

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/spongycastle/math/ec/IntArray;->m_ints:[I

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "bigInt"    # Ljava/math/BigInteger;

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/math/ec/IntArray;-><init>(Ljava/math/BigInteger;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;I)V
    .locals 16
    .param p1, "bigInt"    # Ljava/math/BigInteger;
    .param p2, "minIntLen"    # I

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->signum()I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_0

    .line 32
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "Only positive Integers allowed"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 34
    :cond_0
    sget-object v13, Lorg/spongycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 36
    const/4 v13, 0x1

    new-array v13, v13, [I

    const/4 v14, 0x0

    const/4 v15, 0x0

    aput v15, v13, v14

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/spongycastle/math/ec/IntArray;->m_ints:[I

    .line 94
    :cond_1
    return-void

    .line 40
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    .line 41
    .local v1, "barr":[B
    array-length v5, v1

    .line 42
    .local v5, "barrLen":I
    const/4 v6, 0x0

    .line 43
    .local v6, "barrStart":I
    const/4 v13, 0x0

    aget-byte v13, v1, v13

    if-nez v13, :cond_3

    .line 47
    add-int/lit8 v5, v5, -0x1

    .line 48
    const/4 v6, 0x1

    .line 50
    :cond_3
    add-int/lit8 v13, v5, 0x3

    div-int/lit8 v10, v13, 0x4

    .line 51
    .local v10, "intLen":I
    move/from16 v0, p2

    if-ge v10, v0, :cond_5

    .line 53
    move/from16 v0, p2

    new-array v13, v0, [I

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/spongycastle/math/ec/IntArray;->m_ints:[I

    .line 60
    :goto_0
    add-int/lit8 v8, v10, -0x1

    .line 61
    .local v8, "iarrJ":I
    rem-int/lit8 v13, v5, 0x4

    add-int v11, v13, v6

    .line 62
    .local v11, "rem":I
    const/4 v12, 0x0

    .line 63
    .local v12, "temp":I
    move v3, v6

    .line 64
    .local v3, "barrI":I
    if-ge v6, v11, :cond_7

    .line 66
    :goto_1
    if-ge v3, v11, :cond_6

    .line 68
    shl-int/lit8 v12, v12, 0x8

    .line 69
    aget-byte v2, v1, v3

    .line 70
    .local v2, "barrBarrI":I
    if-gez v2, :cond_4

    .line 72
    add-int/lit16 v2, v2, 0x100

    .line 74
    :cond_4
    or-int/2addr v12, v2

    .line 66
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 57
    .end local v2    # "barrBarrI":I
    .end local v3    # "barrI":I
    .end local v8    # "iarrJ":I
    .end local v11    # "rem":I
    .end local v12    # "temp":I
    :cond_5
    new-array v13, v10, [I

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/spongycastle/math/ec/IntArray;->m_ints:[I

    goto :goto_0

    .line 76
    .restart local v3    # "barrI":I
    .restart local v8    # "iarrJ":I
    .restart local v11    # "rem":I
    .restart local v12    # "temp":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/spongycastle/math/ec/IntArray;->m_ints:[I

    add-int/lit8 v9, v8, -0x1

    .end local v8    # "iarrJ":I
    .local v9, "iarrJ":I
    aput v12, v13, v8

    move v8, v9

    .line 79
    .end local v9    # "iarrJ":I
    .restart local v8    # "iarrJ":I
    :cond_7
    :goto_2
    if-ltz v8, :cond_1

    .line 81
    const/4 v12, 0x0

    .line 82
    const/4 v7, 0x0

    .local v7, "i":I
    move v4, v3

    .end local v3    # "barrI":I
    .local v4, "barrI":I
    :goto_3
    const/4 v13, 0x4

    if-ge v7, v13, :cond_9

    .line 84
    shl-int/lit8 v12, v12, 0x8

    .line 85
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "barrI":I
    .restart local v3    # "barrI":I
    aget-byte v2, v1, v4

    .line 86
    .restart local v2    # "barrBarrI":I
    if-gez v2, :cond_8

    .line 88
    add-int/lit16 v2, v2, 0x100

    .line 90
    :cond_8
    or-int/2addr v12, v2

    .line 82
    add-int/lit8 v7, v7, 0x1

    move v4, v3

    .end local v3    # "barrI":I
    .restart local v4    # "barrI":I
    goto :goto_3

    .line 92
    .end local v2    # "barrBarrI":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/spongycastle/math/ec/IntArray;->m_ints:[I

    aput v12, v13, v8

    .line 79
    add-int/lit8 v8, v8, -0x1

    move v3, v4

    .end local v4    # "barrI":I
    .restart local v3    # "barrI":I
    goto :goto_2
.end method

.method public constructor <init>([I)V
    .locals 0
    .param p1, "ints"    # [I

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/spongycastle/math/ec/IntArray;->m_ints:[I

    .line 21
    return-void
.end method

.method private resizedInts(I)[I
    .locals 5
    .param p1, "newLen"    # I

    .prologue
    const/4 v4, 0x0

    .line 176
    new-array v1, p1, [I

    .line 177
    .local v1, "newInts":[I
    iget-object v3, p0, Lorg/spongycastle/math/ec/IntArray;->m_ints:[I

    array-length v2, v3

    .line 178
    .local v2, "oldLen":I
    if-ge v2, p1, :cond_0

    move v0, v2

    .line 179
    .local v0, "copyLen":I
    :goto_0
    iget-object v3, p0, Lorg/spongycastle/math/ec/IntArray;->m_ints:[I

    invoke-static {v3, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    return-object v1

    .end local v0    # "copyLen":I
    :cond_0
    move v0, p1

    .line 178
    goto :goto_0
.end method


# virtual methods
.method public addShifted(Lorg/spongycastle/math/ec/IntArray;I)V
    .locals 7
    .param p1, "other"    # Lorg/spongycastle/math/ec/IntArray;
    .param p2, "shift"    # I

    .prologue
    .line 292
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/IntArray;->getUsedLength()I

    move-result v2

    .line 293
    .local v2, "usedLenOther":I
    add-int v1, v2, p2

    .line 294
    .local v1, "newMinUsedLen":I
    iget-object v3, p0, Lorg/spongycastle/math/ec/IntArray;->m_ints:[I

    array-length v3, v3

    if-le v1, v3, :cond_0

    .line 296
    invoke-direct {p0, v1}, Lorg/spongycastle/math/ec/IntArray;->resizedInts(I)[I

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/math/ec/IntArray;->m_ints:[I

    .line 300
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 302
    iget-object v3, p0, Lorg/spongycastle/math/ec/IntArray;->m_ints:[I

    add-int v4, v0, p2

    aget v5, v3, v4

    iget-object v6, p1, Lorg/spongycastle/math/ec/IntArray;->m_ints:[I

    aget v6, v6, v0

    xor-int/2addr v5, v6

    aput v5, v3, v4

    .line 300
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 304
    :cond_1
    return-void
.end method

.method public bitLength()I
    .locals 5

    .prologue
    .line 135
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/IntArray;->getUsedLength()I

    move-result v2

    .line 136
    .local v2, "intLen":I
    if-nez v2, :cond_1

    .line 138
    const/4 v0, 0x0

    .line 171
    :cond_0
    return v0

    .line 141
    :cond_1
    add-int/lit8 v3, v2, -0x1

    .line 142
    .local v3, "last":I
    iget-object v4, p0, Lorg/spongycastle/math/ec/IntArray;->m_ints:[I

    aget v1, v4, v3

    .line 143
    .local v1, "highest":I
    shl-int/lit8 v4, v3, 0x5

    add-int/lit8 v0, v4, 0x1

    .line 146
    .local v0, "bits":I
    const/high16 v4, -0x10000

    and-int/2addr v4, v1

    if-eqz v4, :cond_4

    .line 148
    const/high16 v4, -0x1000000

    and-int/2addr v4, v1

    if-eqz v4, :cond_3

    .line 150
    add-int/lit8 v0, v0, 0x18

    .line 151
    ushr-int/lit8 v1, v1, 0x18

    .line 165
    :cond_2
    :goto_0
    const/4 v4, 0x1

    if-eq v1, v4, :cond_0

    .line 167
    add-int/lit8 v0, v0, 0x1

    .line 168
    ushr-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 155
    :cond_3
    add-int/lit8 v0, v0, 0x10

    .line 156
    ushr-int/lit8 v1, v1, 0x10

    goto :goto_0

    .line 159
    :cond_4
    const/16 v4, 0xff

    if-le v1, v4, :cond_2

    .line 161
    add-int/lit8 v0, v0, 0x8

    .line 162
    ushr-int/lit8 v1, v1, 0x8

    goto :goto_0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 492
    new-instance v0, Lorg/spongycastle/math/ec/IntArray;

    iget-object v1, p0, Lorg/spongycastle/math/ec/IntArray;->m_ints:[I

    invoke-static {v1}, Lorg/spongycastle/util/Arrays;->clone([I)[I

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/math/ec/IntArray;-><init>([I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 459
    instance-of v4, p1, Lorg/spongycastle/math/ec/IntArray;

    if-nez v4, :cond_1

    .line 476
    :cond_0
    :goto_0
    return v3

    :cond_1
    move-object v1, p1

    .line 463
    check-cast v1, Lorg/spongycastle/math/ec/IntArray;

    .line 464
    .local v1, "other":Lorg/spongycastle/math/ec/IntArray;
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/IntArray;->getUsedLength()I

    move-result v2

    .line 465
    .local v2, "usedLen":I
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/IntArray;->getUsedLength()I

    move-result v4

    if-ne v4, v2, :cond_0

    .line 469
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 471
    iget-object v4, p0, Lorg/spongycastle/math/ec/IntArray;->m_ints:[I

    aget v4, v4, v0

    iget-object v5, v1, Lorg/spongycastle/math/ec/IntArray;->m_ints:[I

    aget v5, v5, v0

    if-ne v4, v5, :cond_0

    .line 469
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 476
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public flipBit(I)V
    .locals 5
    .param p1, "n"    # I

    .prologue
    .line 324
    shr-int/lit8 v2, p1, 0x5

    .line 326
    .local v2, "theInt":I
    and-int/lit8 v1, p1, 0x1f

    .line 327
    .local v1, "theBit":I
    const/4 v3, 0x1

    shl-int v0, v3, v1

    .line 328
    .local v0, "flipper":I
    iget-object v3, p0, Lorg/spongycastle/math/ec/IntArray;->m_ints:[I

    aget v4, v3, v2

    xor-int/2addr v4, v0

    aput v4, v3, v2

    .line 329
    return-void
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lorg/spongycastle/math/ec/IntArray;->m_ints:[I

    array-length v0, v0

    return v0
.end method

.method public getUsedLength()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 104
    iget-object v2, p0, Lorg/spongycastle/math/ec/IntArray;->m_ints:[I

    array-length v0, v2

    .line 106
    .local v0, "highestIntPos":I
    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    .line 129
    :goto_0
    return v1

    .line 112
    :cond_0
    iget-object v2, p0, Lorg/spongycastle/math/ec/IntArray;->m_ints:[I

    aget v2, v2, v1

    if-eqz v2, :cond_2

    .line 114
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/math/ec/IntArray;->m_ints:[I

    add-int/lit8 v0, v0, -0x1

    aget v1, v1, v0

    if-eqz v1, :cond_1

    .line 117
    add-int/lit8 v1, v0, 0x1

    goto :goto_0

    .line 122
    :cond_2
    iget-object v2, p0, Lorg/spongycastle/math/ec/IntArray;->m_ints:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v2, v0

    if-eqz v2, :cond_3

    .line 124
    add-int/lit8 v1, v0, 0x1

    goto :goto_0

    .line 127
    :cond_3
    if-gtz v0, :cond_2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 481
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/IntArray;->getUsedLength()I

    move-result v2

    .line 482
    .local v2, "usedLen":I
    const/4 v0, 0x1

    .line 483
    .local v0, "hash":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 485
    mul-int/lit8 v3, v0, 0x1f

    iget-object v4, p0, Lorg/spongycastle/math/ec/IntArray;->m_ints:[I

    aget v4, v4, v1

    add-int v0, v3, v4

    .line 483
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 487
    :cond_0
    return v0
.end method

.method public isZero()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 98
    iget-object v1, p0, Lorg/spongycastle/math/ec/IntArray;->m_ints:[I

    array-length v1, v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/spongycastle/math/ec/IntArray;->m_ints:[I

    aget v1, v1, v0

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/IntArray;->getUsedLength()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public multiply(Lorg/spongycastle/math/ec/IntArray;I)Lorg/spongycastle/math/ec/IntArray;
    .locals 7
    .param p1, "other"    # Lorg/spongycastle/math/ec/IntArray;
    .param p2, "m"    # I

    .prologue
    .line 344
    add-int/lit8 v6, p2, 0x1f

    shr-int/lit8 v4, v6, 0x5

    .line 345
    .local v4, "t":I
    iget-object v6, p0, Lorg/spongycastle/math/ec/IntArray;->m_ints:[I

    array-length v6, v6

    if-ge v6, v4, :cond_0

    .line 347
    invoke-direct {p0, v4}, Lorg/spongycastle/math/ec/IntArray;->resizedInts(I)[I

    move-result-object v6

    iput-object v6, p0, Lorg/spongycastle/math/ec/IntArray;->m_ints:[I

    .line 350
    :cond_0
    new-instance v0, Lorg/spongycastle/math/ec/IntArray;

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/IntArray;->getLength()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-direct {p1, v6}, Lorg/spongycastle/math/ec/IntArray;->resizedInts(I)[I

    move-result-object v6

    invoke-direct {v0, v6}, Lorg/spongycastle/math/ec/IntArray;-><init>([I)V

    .line 351
    .local v0, "b":Lorg/spongycastle/math/ec/IntArray;
    new-instance v1, Lorg/spongycastle/math/ec/IntArray;

    add-int v6, p2, p2

    add-int/lit8 v6, v6, 0x1f

    shr-int/lit8 v6, v6, 0x5

    invoke-direct {v1, v6}, Lorg/spongycastle/math/ec/IntArray;-><init>(I)V

    .line 353
    .local v1, "c":Lorg/spongycastle/math/ec/IntArray;
    const/4 v5, 0x1

    .line 354
    .local v5, "testBit":I
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_0
    const/16 v6, 0x20

    if-ge v3, v6, :cond_3

    .line 356
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v4, :cond_2

    .line 358
    iget-object v6, p0, Lorg/spongycastle/math/ec/IntArray;->m_ints:[I

    aget v6, v6, v2

    and-int/2addr v6, v5

    if-eqz v6, :cond_1

    .line 361
    invoke-virtual {v1, v0, v2}, Lorg/spongycastle/math/ec/IntArray;->addShifted(Lorg/spongycastle/math/ec/IntArray;I)V

    .line 356
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 364
    :cond_2
    shl-int/lit8 v5, v5, 0x1

    .line 365
    invoke-virtual {v0}, Lorg/spongycastle/math/ec/IntArray;->shiftLeft()V

    .line 354
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 367
    .end local v2    # "j":I
    :cond_3
    return-object v1
.end method

.method public reduce(I[I)V
    .locals 4
    .param p1, "m"    # I
    .param p2, "redPol"    # [I

    .prologue
    .line 399
    add-int v3, p1, p1

    add-int/lit8 v1, v3, -0x2

    .local v1, "i":I
    :goto_0
    if-lt v1, p1, :cond_1

    .line 401
    invoke-virtual {p0, v1}, Lorg/spongycastle/math/ec/IntArray;->testBit(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 403
    sub-int v0, v1, p1

    .line 404
    .local v0, "bit":I
    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/IntArray;->flipBit(I)V

    .line 405
    invoke-virtual {p0, v1}, Lorg/spongycastle/math/ec/IntArray;->flipBit(I)V

    .line 406
    array-length v2, p2

    .line 407
    .local v2, "l":I
    :goto_1
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_0

    .line 409
    aget v3, p2, v2

    add-int/2addr v3, v0

    invoke-virtual {p0, v3}, Lorg/spongycastle/math/ec/IntArray;->flipBit(I)V

    goto :goto_1

    .line 399
    .end local v0    # "bit":I
    .end local v2    # "l":I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 413
    :cond_1
    add-int/lit8 v3, p1, 0x1f

    shr-int/lit8 v3, v3, 0x5

    invoke-direct {p0, v3}, Lorg/spongycastle/math/ec/IntArray;->resizedInts(I)[I

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/math/ec/IntArray;->m_ints:[I

    .line 414
    return-void
.end method

.method public setBit(I)V
    .locals 5
    .param p1, "n"    # I

    .prologue
    .line 334
    shr-int/lit8 v2, p1, 0x5

    .line 336
    .local v2, "theInt":I
    and-int/lit8 v1, p1, 0x1f

    .line 337
    .local v1, "theBit":I
    const/4 v3, 0x1

    shl-int v0, v3, v1

    .line 338
    .local v0, "setter":I
    iget-object v3, p0, Lorg/spongycastle/math/ec/IntArray;->m_ints:[I

    aget v4, v3, v2

    or-int/2addr v4, v0

    aput v4, v3, v2

    .line 339
    return-void
.end method

.method public shiftLeft(I)Lorg/spongycastle/math/ec/IntArray;
    .locals 7
    .param p1, "n"    # I

    .prologue
    const/4 v5, 0x0

    .line 260
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/IntArray;->getUsedLength()I

    move-result v3

    .line 261
    .local v3, "usedLen":I
    if-nez v3, :cond_1

    .line 287
    .end local p0    # "this":Lorg/spongycastle/math/ec/IntArray;
    :cond_0
    :goto_0
    return-object p0

    .line 266
    .restart local p0    # "this":Lorg/spongycastle/math/ec/IntArray;
    :cond_1
    if-eqz p1, :cond_0

    .line 271
    const/16 v4, 0x1f

    if-le p1, v4, :cond_2

    .line 273
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "shiftLeft() for max 31 bits , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "bit shift is not possible"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 277
    :cond_2
    add-int/lit8 v4, v3, 0x1

    new-array v1, v4, [I

    .line 279
    .local v1, "newInts":[I
    rsub-int/lit8 v2, p1, 0x20

    .line 280
    .local v2, "nm32":I
    iget-object v4, p0, Lorg/spongycastle/math/ec/IntArray;->m_ints:[I

    aget v4, v4, v5

    shl-int/2addr v4, p1

    aput v4, v1, v5

    .line 281
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_3

    .line 283
    iget-object v4, p0, Lorg/spongycastle/math/ec/IntArray;->m_ints:[I

    aget v4, v4, v0

    shl-int/2addr v4, p1

    iget-object v5, p0, Lorg/spongycastle/math/ec/IntArray;->m_ints:[I

    add-int/lit8 v6, v0, -0x1

    aget v5, v5, v6

    ushr-int/2addr v5, v2

    or-int/2addr v4, v5

    aput v4, v1, v0

    .line 281
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 285
    :cond_3
    iget-object v4, p0, Lorg/spongycastle/math/ec/IntArray;->m_ints:[I

    add-int/lit8 v5, v3, -0x1

    aget v4, v4, v5

    ushr-int/2addr v4, v2

    aput v4, v1, v3

    .line 287
    new-instance p0, Lorg/spongycastle/math/ec/IntArray;

    .end local p0    # "this":Lorg/spongycastle/math/ec/IntArray;
    invoke-direct {p0, v1}, Lorg/spongycastle/math/ec/IntArray;-><init>([I)V

    goto :goto_0
.end method

.method public shiftLeft()V
    .locals 6

    .prologue
    .line 225
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/IntArray;->getUsedLength()I

    move-result v3

    .line 226
    .local v3, "usedLen":I
    if-nez v3, :cond_1

    .line 256
    :cond_0
    return-void

    .line 230
    :cond_1
    iget-object v4, p0, Lorg/spongycastle/math/ec/IntArray;->m_ints:[I

    add-int/lit8 v5, v3, -0x1

    aget v4, v4, v5

    if-gez v4, :cond_2

    .line 234
    add-int/lit8 v3, v3, 0x1

    .line 235
    iget-object v4, p0, Lorg/spongycastle/math/ec/IntArray;->m_ints:[I

    array-length v4, v4

    if-le v3, v4, :cond_2

    .line 239
    iget-object v4, p0, Lorg/spongycastle/math/ec/IntArray;->m_ints:[I

    array-length v4, v4

    add-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v4}, Lorg/spongycastle/math/ec/IntArray;->resizedInts(I)[I

    move-result-object v4

    iput-object v4, p0, Lorg/spongycastle/math/ec/IntArray;->m_ints:[I

    .line 243
    :cond_2
    const/4 v0, 0x0

    .line 244
    .local v0, "carry":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 247
    iget-object v4, p0, Lorg/spongycastle/math/ec/IntArray;->m_ints:[I

    aget v4, v4, v1

    if-gez v4, :cond_4

    const/4 v2, 0x1

    .line 248
    .local v2, "nextCarry":Z
    :goto_1
    iget-object v4, p0, Lorg/spongycastle/math/ec/IntArray;->m_ints:[I

    aget v5, v4, v1

    shl-int/lit8 v5, v5, 0x1

    aput v5, v4, v1

    .line 249
    if-eqz v0, :cond_3

    .line 252
    iget-object v4, p0, Lorg/spongycastle/math/ec/IntArray;->m_ints:[I

    aget v5, v4, v1

    or-int/lit8 v5, v5, 0x1

    aput v5, v4, v1

    .line 254
    :cond_3
    move v0, v2

    .line 244
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 247
    .end local v2    # "nextCarry":Z
    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public square(I)Lorg/spongycastle/math/ec/IntArray;
    .locals 12
    .param p1, "m"    # I

    .prologue
    const/4 v11, 0x4

    .line 419
    const/16 v9, 0x10

    new-array v4, v9, [I

    fill-array-data v4, :array_0

    .line 422
    .local v4, "table":[I
    add-int/lit8 v9, p1, 0x1f

    shr-int/lit8 v3, v9, 0x5

    .line 423
    .local v3, "t":I
    iget-object v9, p0, Lorg/spongycastle/math/ec/IntArray;->m_ints:[I

    array-length v9, v9

    if-ge v9, v3, :cond_0

    .line 425
    invoke-direct {p0, v3}, Lorg/spongycastle/math/ec/IntArray;->resizedInts(I)[I

    move-result-object v9

    iput-object v9, p0, Lorg/spongycastle/math/ec/IntArray;->m_ints:[I

    .line 428
    :cond_0
    new-instance v0, Lorg/spongycastle/math/ec/IntArray;

    add-int v9, v3, v3

    invoke-direct {v0, v9}, Lorg/spongycastle/math/ec/IntArray;-><init>(I)V

    .line 431
    .local v0, "c":Lorg/spongycastle/math/ec/IntArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 433
    const/4 v7, 0x0

    .line 434
    .local v7, "v0":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v11, :cond_1

    .line 436
    ushr-int/lit8 v7, v7, 0x8

    .line 437
    iget-object v9, p0, Lorg/spongycastle/math/ec/IntArray;->m_ints:[I

    aget v9, v9, v1

    mul-int/lit8 v10, v2, 0x4

    ushr-int/2addr v9, v10

    and-int/lit8 v5, v9, 0xf

    .line 438
    .local v5, "u":I
    aget v9, v4, v5

    shl-int/lit8 v8, v9, 0x18

    .line 439
    .local v8, "w":I
    or-int/2addr v7, v8

    .line 434
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 441
    .end local v5    # "u":I
    .end local v8    # "w":I
    :cond_1
    iget-object v9, v0, Lorg/spongycastle/math/ec/IntArray;->m_ints:[I

    add-int v10, v1, v1

    aput v7, v9, v10

    .line 443
    const/4 v7, 0x0

    .line 444
    iget-object v9, p0, Lorg/spongycastle/math/ec/IntArray;->m_ints:[I

    aget v9, v9, v1

    ushr-int/lit8 v6, v9, 0x10

    .line 445
    .local v6, "upper":I
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v11, :cond_2

    .line 447
    ushr-int/lit8 v7, v7, 0x8

    .line 448
    mul-int/lit8 v9, v2, 0x4

    ushr-int v9, v6, v9

    and-int/lit8 v5, v9, 0xf

    .line 449
    .restart local v5    # "u":I
    aget v9, v4, v5

    shl-int/lit8 v8, v9, 0x18

    .line 450
    .restart local v8    # "w":I
    or-int/2addr v7, v8

    .line 445
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 452
    .end local v5    # "u":I
    .end local v8    # "w":I
    :cond_2
    iget-object v9, v0, Lorg/spongycastle/math/ec/IntArray;->m_ints:[I

    add-int v10, v1, v1

    add-int/lit8 v10, v10, 0x1

    aput v7, v9, v10

    .line 431
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 454
    .end local v2    # "j":I
    .end local v6    # "upper":I
    .end local v7    # "v0":I
    :cond_3
    return-object v0

    .line 419
    :array_0
    .array-data 4
        0x0
        0x1
        0x4
        0x5
        0x10
        0x11
        0x14
        0x15
        0x40
        0x41
        0x44
        0x45
        0x50
        0x51
        0x54
        0x55
    .end array-data
.end method

.method public testBit(I)Z
    .locals 5
    .param p1, "n"    # I

    .prologue
    const/4 v3, 0x1

    .line 314
    shr-int/lit8 v2, p1, 0x5

    .line 316
    .local v2, "theInt":I
    and-int/lit8 v1, p1, 0x1f

    .line 317
    .local v1, "theBit":I
    shl-int v0, v3, v1

    .line 318
    .local v0, "tester":I
    iget-object v4, p0, Lorg/spongycastle/math/ec/IntArray;->m_ints:[I

    aget v4, v4, v2

    and-int/2addr v4, v0

    if-eqz v4, :cond_0

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public toBigInteger()Ljava/math/BigInteger;
    .locals 13

    .prologue
    .line 185
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/IntArray;->getUsedLength()I

    move-result v10

    .line 186
    .local v10, "usedLen":I
    if-nez v10, :cond_0

    .line 188
    sget-object v11, Lorg/spongycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    .line 220
    :goto_0
    return-object v11

    .line 191
    :cond_0
    iget-object v11, p0, Lorg/spongycastle/math/ec/IntArray;->m_ints:[I

    add-int/lit8 v12, v10, -0x1

    aget v4, v11, v12

    .line 192
    .local v4, "highestInt":I
    const/4 v11, 0x4

    new-array v7, v11, [B

    .line 193
    .local v7, "temp":[B
    const/4 v1, 0x0

    .line 194
    .local v1, "barrI":I
    const/4 v9, 0x0

    .line 195
    .local v9, "trailingZeroBytesDone":Z
    const/4 v6, 0x3

    .local v6, "j":I
    move v2, v1

    .end local v1    # "barrI":I
    .local v2, "barrI":I
    :goto_1
    if-ltz v6, :cond_2

    .line 197
    mul-int/lit8 v11, v6, 0x8

    ushr-int v11, v4, v11

    int-to-byte v8, v11

    .line 198
    .local v8, "thisByte":B
    if-nez v9, :cond_1

    if-eqz v8, :cond_6

    .line 200
    :cond_1
    const/4 v9, 0x1

    .line 201
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "barrI":I
    .restart local v1    # "barrI":I
    aput-byte v8, v7, v2

    .line 195
    :goto_2
    add-int/lit8 v6, v6, -0x1

    move v2, v1

    .end local v1    # "barrI":I
    .restart local v2    # "barrI":I
    goto :goto_1

    .line 205
    .end local v8    # "thisByte":B
    :cond_2
    add-int/lit8 v11, v10, -0x1

    mul-int/lit8 v11, v11, 0x4

    add-int v3, v11, v2

    .line 206
    .local v3, "barrLen":I
    new-array v0, v3, [B

    .line 207
    .local v0, "barr":[B
    const/4 v6, 0x0

    :goto_3
    if-ge v6, v2, :cond_3

    .line 209
    aget-byte v11, v7, v6

    aput-byte v11, v0, v6

    .line 207
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 213
    :cond_3
    add-int/lit8 v5, v10, -0x2

    .local v5, "iarrJ":I
    move v1, v2

    .end local v2    # "barrI":I
    .restart local v1    # "barrI":I
    :goto_4
    if-ltz v5, :cond_5

    .line 215
    const/4 v6, 0x3

    move v2, v1

    .end local v1    # "barrI":I
    .restart local v2    # "barrI":I
    :goto_5
    if-ltz v6, :cond_4

    .line 217
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "barrI":I
    .restart local v1    # "barrI":I
    iget-object v11, p0, Lorg/spongycastle/math/ec/IntArray;->m_ints:[I

    aget v11, v11, v5

    mul-int/lit8 v12, v6, 0x8

    ushr-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v0, v2

    .line 215
    add-int/lit8 v6, v6, -0x1

    move v2, v1

    .end local v1    # "barrI":I
    .restart local v2    # "barrI":I
    goto :goto_5

    .line 213
    :cond_4
    add-int/lit8 v5, v5, -0x1

    move v1, v2

    .end local v2    # "barrI":I
    .restart local v1    # "barrI":I
    goto :goto_4

    .line 220
    :cond_5
    new-instance v11, Ljava/math/BigInteger;

    const/4 v12, 0x1

    invoke-direct {v11, v12, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    goto :goto_0

    .end local v0    # "barr":[B
    .end local v1    # "barrI":I
    .end local v3    # "barrLen":I
    .end local v5    # "iarrJ":I
    .restart local v2    # "barrI":I
    .restart local v8    # "thisByte":B
    :cond_6
    move v1, v2

    .end local v2    # "barrI":I
    .restart local v1    # "barrI":I
    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 497
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/IntArray;->getUsedLength()I

    move-result v4

    .line 498
    .local v4, "usedLen":I
    if-nez v4, :cond_0

    .line 500
    const-string v5, "0"

    .line 516
    :goto_0
    return-object v5

    .line 503
    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    iget-object v5, p0, Lorg/spongycastle/math/ec/IntArray;->m_ints:[I

    add-int/lit8 v6, v4, -0x1

    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 505
    .local v3, "sb":Ljava/lang/StringBuffer;
    add-int/lit8 v2, v4, -0x2

    .local v2, "iarrJ":I
    :goto_1
    if-ltz v2, :cond_2

    .line 507
    iget-object v5, p0, Lorg/spongycastle/math/ec/IntArray;->m_ints:[I

    aget v5, v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    .line 510
    .local v0, "hexString":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "i":I
    :goto_2
    const/16 v5, 0x8

    if-ge v1, v5, :cond_1

    .line 512
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 510
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 514
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 505
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 516
    .end local v0    # "hexString":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method
