.class public Lorg/spongycastle/crypto/engines/ISAACEngine;
.super Ljava/lang/Object;
.source "ISAACEngine.java"

# interfaces
.implements Lorg/spongycastle/crypto/StreamCipher;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private engineState:[I

.field private index:I

.field private initialised:Z

.field private keyStream:[B

.field private results:[I

.field private final sizeL:I

.field private final stateArraySize:I

.field private workingKey:[B


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/16 v0, 0x8

    iput v0, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->sizeL:I

    const/16 v0, 0x100

    iput v0, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->stateArraySize:I

    .line 20
    iput-object v2, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->engineState:[I

    iput-object v2, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->results:[I

    .line 22
    iput v1, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->a:I

    iput v1, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->b:I

    iput v1, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->c:I

    .line 25
    iput v1, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->index:I

    .line 26
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->keyStream:[B

    iput-object v2, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->workingKey:[B

    .line 28
    iput-boolean v1, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->initialised:Z

    return-void
.end method

.method private byteToIntLittle([BI)I
    .locals 3
    .param p1, "x"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 220
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "offset":I
    .local v0, "offset":I
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 p2, v0, 0x1

    .end local v0    # "offset":I
    .restart local p2    # "offset":I
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v0, p2, 0x1

    .end local p2    # "offset":I
    .restart local v0    # "offset":I
    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 p2, v0, 0x1

    .end local v0    # "offset":I
    .restart local p2    # "offset":I
    aget-byte v2, p1, v0

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    return v1
.end method

.method private intToByteLittle(I)[B
    .locals 3
    .param p1, "x"    # I

    .prologue
    .line 228
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 229
    .local v0, "out":[B
    const/4 v1, 0x3

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 230
    const/4 v1, 0x2

    ushr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 231
    const/4 v1, 0x1

    ushr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 232
    const/4 v1, 0x0

    ushr-int/lit8 v2, p1, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 233
    return-object v0
.end method

.method private intToByteLittle([I)[B
    .locals 6
    .param p1, "x"    # [I

    .prologue
    .line 238
    array-length v3, p1

    mul-int/lit8 v3, v3, 0x4

    new-array v2, v3, [B

    .line 239
    .local v2, "out":[B
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 241
    aget v3, p1, v0

    invoke-direct {p0, v3}, Lorg/spongycastle/crypto/engines/ISAACEngine;->intToByteLittle(I)[B

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-static {v3, v4, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 239
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 243
    :cond_0
    return-object v2
.end method

.method private isaac()V
    .locals 6

    .prologue
    .line 189
    iget v3, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->b:I

    iget v4, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->c:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->c:I

    add-int/2addr v3, v4

    iput v3, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->b:I

    .line 190
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v3, 0x100

    if-ge v0, v3, :cond_0

    .line 192
    iget-object v3, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->engineState:[I

    aget v1, v3, v0

    .line 193
    .local v1, "x":I
    and-int/lit8 v3, v0, 0x3

    packed-switch v3, :pswitch_data_0

    .line 200
    :goto_1
    iget v3, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->a:I

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->engineState:[I

    add-int/lit16 v5, v0, 0x80

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    add-int/2addr v3, v4

    iput v3, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->a:I

    .line 201
    iget-object v3, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->engineState:[I

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->engineState:[I

    ushr-int/lit8 v5, v1, 0x2

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    iget v5, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->a:I

    add-int/2addr v4, v5

    iget v5, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->b:I

    add-int v2, v4, v5

    .local v2, "y":I
    aput v2, v3, v0

    .line 202
    iget-object v3, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->results:[I

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->engineState:[I

    ushr-int/lit8 v5, v2, 0xa

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    add-int/2addr v4, v1

    iput v4, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->b:I

    aput v4, v3, v0

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 195
    .end local v2    # "y":I
    :pswitch_0
    iget v3, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->a:I

    iget v4, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->a:I

    shl-int/lit8 v4, v4, 0xd

    xor-int/2addr v3, v4

    iput v3, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->a:I

    goto :goto_1

    .line 196
    :pswitch_1
    iget v3, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->a:I

    iget v4, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->a:I

    ushr-int/lit8 v4, v4, 0x6

    xor-int/2addr v3, v4

    iput v3, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->a:I

    goto :goto_1

    .line 197
    :pswitch_2
    iget v3, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->a:I

    iget v4, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->a:I

    shl-int/lit8 v4, v4, 0x2

    xor-int/2addr v3, v4

    iput v3, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->a:I

    goto :goto_1

    .line 198
    :pswitch_3
    iget v3, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->a:I

    iget v4, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->a:I

    ushr-int/lit8 v4, v4, 0x10

    xor-int/2addr v3, v4

    iput v3, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->a:I

    goto :goto_1

    .line 204
    .end local v1    # "x":I
    :cond_0
    return-void

    .line 193
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private mix([I)V
    .locals 8
    .param p1, "x"    # [I

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 208
    aget v0, p1, v3

    aget v1, p1, v4

    shl-int/lit8 v1, v1, 0xb

    xor-int/2addr v0, v1

    aput v0, p1, v3

    aget v0, p1, v6

    aget v1, p1, v3

    add-int/2addr v0, v1

    aput v0, p1, v6

    aget v0, p1, v4

    aget v1, p1, v5

    add-int/2addr v0, v1

    aput v0, p1, v4

    .line 209
    aget v0, p1, v4

    aget v1, p1, v5

    ushr-int/lit8 v1, v1, 0x2

    xor-int/2addr v0, v1

    aput v0, p1, v4

    aget v0, p1, v7

    aget v1, p1, v4

    add-int/2addr v0, v1

    aput v0, p1, v7

    aget v0, p1, v5

    aget v1, p1, v6

    add-int/2addr v0, v1

    aput v0, p1, v5

    .line 210
    aget v0, p1, v5

    aget v1, p1, v6

    shl-int/lit8 v1, v1, 0x8

    xor-int/2addr v0, v1

    aput v0, p1, v5

    const/4 v0, 0x5

    aget v1, p1, v0

    aget v2, p1, v5

    add-int/2addr v1, v2

    aput v1, p1, v0

    aget v0, p1, v6

    aget v1, p1, v7

    add-int/2addr v0, v1

    aput v0, p1, v6

    .line 211
    aget v0, p1, v6

    aget v1, p1, v7

    ushr-int/lit8 v1, v1, 0x10

    xor-int/2addr v0, v1

    aput v0, p1, v6

    const/4 v0, 0x6

    aget v1, p1, v0

    aget v2, p1, v6

    add-int/2addr v1, v2

    aput v1, p1, v0

    aget v0, p1, v7

    const/4 v1, 0x5

    aget v1, p1, v1

    add-int/2addr v0, v1

    aput v0, p1, v7

    .line 212
    aget v0, p1, v7

    const/4 v1, 0x5

    aget v1, p1, v1

    shl-int/lit8 v1, v1, 0xa

    xor-int/2addr v0, v1

    aput v0, p1, v7

    const/4 v0, 0x7

    aget v1, p1, v0

    aget v2, p1, v7

    add-int/2addr v1, v2

    aput v1, p1, v0

    const/4 v0, 0x5

    aget v1, p1, v0

    const/4 v2, 0x6

    aget v2, p1, v2

    add-int/2addr v1, v2

    aput v1, p1, v0

    .line 213
    const/4 v0, 0x5

    aget v1, p1, v0

    const/4 v2, 0x6

    aget v2, p1, v2

    ushr-int/lit8 v2, v2, 0x4

    xor-int/2addr v1, v2

    aput v1, p1, v0

    aget v0, p1, v3

    const/4 v1, 0x5

    aget v1, p1, v1

    add-int/2addr v0, v1

    aput v0, p1, v3

    const/4 v0, 0x6

    aget v1, p1, v0

    const/4 v2, 0x7

    aget v2, p1, v2

    add-int/2addr v1, v2

    aput v1, p1, v0

    .line 214
    const/4 v0, 0x6

    aget v1, p1, v0

    const/4 v2, 0x7

    aget v2, p1, v2

    shl-int/lit8 v2, v2, 0x8

    xor-int/2addr v1, v2

    aput v1, p1, v0

    aget v0, p1, v4

    const/4 v1, 0x6

    aget v1, p1, v1

    add-int/2addr v0, v1

    aput v0, p1, v4

    const/4 v0, 0x7

    aget v1, p1, v0

    aget v2, p1, v3

    add-int/2addr v1, v2

    aput v1, p1, v0

    .line 215
    const/4 v0, 0x7

    aget v1, p1, v0

    aget v2, p1, v3

    ushr-int/lit8 v2, v2, 0x9

    xor-int/2addr v1, v2

    aput v1, p1, v0

    aget v0, p1, v5

    const/4 v1, 0x7

    aget v1, p1, v1

    add-int/2addr v0, v1

    aput v0, p1, v5

    aget v0, p1, v3

    aget v1, p1, v4

    add-int/2addr v0, v1

    aput v0, p1, v3

    .line 216
    return-void
.end method

.method private setKey([B)V
    .locals 11
    .param p1, "keyBytes"    # [B

    .prologue
    const/4 v10, 0x1

    const/16 v9, 0x100

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 117
    iput-object p1, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->workingKey:[B

    .line 119
    iget-object v5, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->engineState:[I

    if-nez v5, :cond_0

    .line 121
    new-array v5, v9, [I

    iput-object v5, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->engineState:[I

    .line 124
    :cond_0
    iget-object v5, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->results:[I

    if-nez v5, :cond_1

    .line 126
    new-array v5, v9, [I

    iput-object v5, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->results:[I

    .line 132
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v9, :cond_2

    .line 134
    iget-object v5, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->engineState:[I

    iget-object v6, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->results:[I

    aput v7, v6, v1

    aput v7, v5, v1

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
    :cond_2
    iput v7, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->c:I

    iput v7, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->b:I

    iput v7, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->a:I

    .line 139
    iput v7, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->index:I

    .line 142
    array-length v5, p1

    array-length v6, p1

    and-int/lit8 v6, v6, 0x3

    add-int/2addr v5, v6

    new-array v4, v5, [B

    .line 143
    .local v4, "t":[B
    array-length v5, p1

    invoke-static {p1, v7, v4, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 144
    const/4 v1, 0x0

    :goto_1
    array-length v5, v4

    if-ge v1, v5, :cond_3

    .line 146
    iget-object v5, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->results:[I

    shr-int/lit8 v6, v1, 0x2

    invoke-direct {p0, v4, v1}, Lorg/spongycastle/crypto/engines/ISAACEngine;->byteToIntLittle([BI)I

    move-result v7

    aput v7, v5, v6

    .line 144
    add-int/lit8 v1, v1, 0x4

    goto :goto_1

    .line 150
    :cond_3
    new-array v0, v8, [I

    .line 152
    .local v0, "abcdefgh":[I
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v8, :cond_4

    .line 154
    const v5, -0x61c88647

    aput v5, v0, v1

    .line 152
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 157
    :cond_4
    const/4 v1, 0x0

    :goto_3
    const/4 v5, 0x4

    if-ge v1, v5, :cond_5

    .line 159
    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/engines/ISAACEngine;->mix([I)V

    .line 157
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 162
    :cond_5
    const/4 v1, 0x0

    :goto_4
    const/4 v5, 0x2

    if-ge v1, v5, :cond_a

    .line 164
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_5
    if-ge v2, v9, :cond_9

    .line 166
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_6
    if-ge v3, v8, :cond_7

    .line 168
    aget v6, v0, v3

    if-ge v1, v10, :cond_6

    iget-object v5, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->results:[I

    add-int v7, v2, v3

    aget v5, v5, v7

    :goto_7
    add-int/2addr v5, v6

    aput v5, v0, v3

    .line 166
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 168
    :cond_6
    iget-object v5, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->engineState:[I

    add-int v7, v2, v3

    aget v5, v5, v7

    goto :goto_7

    .line 171
    :cond_7
    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/engines/ISAACEngine;->mix([I)V

    .line 173
    const/4 v3, 0x0

    :goto_8
    if-ge v3, v8, :cond_8

    .line 175
    iget-object v5, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->engineState:[I

    add-int v6, v2, v3

    aget v7, v0, v3

    aput v7, v5, v6

    .line 173
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 164
    :cond_8
    add-int/lit8 v2, v2, 0x8

    goto :goto_5

    .line 162
    .end local v3    # "k":I
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 180
    .end local v2    # "j":I
    :cond_a
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/ISAACEngine;->isaac()V

    .line 182
    iput-boolean v10, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->initialised:Z

    .line 183
    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    const-string v0, "ISAAC"

    return-object v0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 4
    .param p1, "forEncryption"    # Z
    .param p2, "params"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 42
    instance-of v1, p2, Lorg/spongycastle/crypto/params/KeyParameter;

    if-nez v1, :cond_0

    .line 44
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid parameter passed to ISAAC init - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v0, p2

    .line 51
    check-cast v0, Lorg/spongycastle/crypto/params/KeyParameter;

    .line 52
    .local v0, "p":Lorg/spongycastle/crypto/params/KeyParameter;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/spongycastle/crypto/engines/ISAACEngine;->setKey([B)V

    .line 54
    return-void
.end method

.method public processBytes([BII[BI)V
    .locals 4
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .param p4, "out"    # [B
    .param p5, "outOff"    # I

    .prologue
    .line 77
    iget-boolean v1, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->initialised:Z

    if-nez v1, :cond_0

    .line 79
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/ISAACEngine;->getAlgorithmName()Ljava/lang/String;

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

    .line 82
    :cond_0
    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_1

    .line 84
    new-instance v1, Lorg/spongycastle/crypto/DataLengthException;

    const-string v2, "input buffer too short"

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 87
    :cond_1
    add-int v1, p5, p3

    array-length v2, p4

    if-le v1, v2, :cond_2

    .line 89
    new-instance v1, Lorg/spongycastle/crypto/DataLengthException;

    const-string v2, "output buffer too short"

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 92
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_4

    .line 94
    iget v1, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->index:I

    if-nez v1, :cond_3

    .line 96
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/ISAACEngine;->isaac()V

    .line 97
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->results:[I

    invoke-direct {p0, v1}, Lorg/spongycastle/crypto/engines/ISAACEngine;->intToByteLittle([I)[B

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->keyStream:[B

    .line 99
    :cond_3
    add-int v1, v0, p5

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->keyStream:[B

    iget v3, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->index:I

    aget-byte v2, v2, v3

    add-int v3, v0, p2

    aget-byte v3, p1, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p4, v1

    .line 100
    iget v1, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->index:I

    add-int/lit8 v1, v1, 0x1

    and-int/lit16 v1, v1, 0x3ff

    iput v1, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->index:I

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    :cond_4
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->workingKey:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/engines/ISAACEngine;->setKey([B)V

    .line 112
    return-void
.end method

.method public returnByte(B)B
    .locals 3
    .param p1, "in"    # B

    .prologue
    .line 59
    iget v1, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->index:I

    if-nez v1, :cond_0

    .line 61
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/ISAACEngine;->isaac()V

    .line 62
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->results:[I

    invoke-direct {p0, v1}, Lorg/spongycastle/crypto/engines/ISAACEngine;->intToByteLittle([I)[B

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->keyStream:[B

    .line 64
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->keyStream:[B

    iget v2, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->index:I

    aget-byte v1, v1, v2

    xor-int/2addr v1, p1

    int-to-byte v0, v1

    .line 65
    .local v0, "out":B
    iget v1, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->index:I

    add-int/lit8 v1, v1, 0x1

    and-int/lit16 v1, v1, 0x3ff

    iput v1, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->index:I

    .line 67
    return v0
.end method
