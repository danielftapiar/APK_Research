.class public Lorg/spongycastle/crypto/digests/RIPEMD320Digest;
.super Lorg/spongycastle/crypto/digests/GeneralDigest;
.source "RIPEMD320Digest.java"


# static fields
.field private static final DIGEST_LENGTH:I = 0x28


# instance fields
.field private H0:I

.field private H1:I

.field private H2:I

.field private H3:I

.field private H4:I

.field private H5:I

.field private H6:I

.field private H7:I

.field private H8:I

.field private H9:I

.field private X:[I

.field private xOff:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lorg/spongycastle/crypto/digests/GeneralDigest;-><init>()V

    .line 17
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    .line 25
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->reset()V

    .line 26
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/digests/RIPEMD320Digest;)V
    .locals 4
    .param p1, "t"    # Lorg/spongycastle/crypto/digests/RIPEMD320Digest;

    .prologue
    const/4 v3, 0x0

    .line 34
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/digests/GeneralDigest;-><init>(Lorg/spongycastle/crypto/digests/GeneralDigest;)V

    .line 17
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    .line 36
    iget v0, p1, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->H0:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->H0:I

    .line 37
    iget v0, p1, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->H1:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->H1:I

    .line 38
    iget v0, p1, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->H2:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->H2:I

    .line 39
    iget v0, p1, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->H3:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->H3:I

    .line 40
    iget v0, p1, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->H4:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->H4:I

    .line 41
    iget v0, p1, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->H5:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->H5:I

    .line 42
    iget v0, p1, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->H6:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->H6:I

    .line 43
    iget v0, p1, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->H7:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->H7:I

    .line 44
    iget v0, p1, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->H8:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->H8:I

    .line 45
    iget v0, p1, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->H9:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->H9:I

    .line 47
    iget-object v0, p1, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    iget-object v2, p1, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    iget v0, p1, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->xOff:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->xOff:I

    .line 49
    return-void
.end method

.method private RL(II)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "n"    # I

    .prologue
    .line 152
    shl-int v0, p1, p2

    rsub-int/lit8 v1, p2, 0x20

    ushr-int v1, p1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private f1(III)I
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I

    .prologue
    .line 167
    xor-int v0, p1, p2

    xor-int/2addr v0, p3

    return v0
.end method

.method private f2(III)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I

    .prologue
    .line 178
    and-int v0, p1, p2

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v1, p3

    or-int/2addr v0, v1

    return v0
.end method

.method private f3(III)I
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I

    .prologue
    .line 189
    xor-int/lit8 v0, p2, -0x1

    or-int/2addr v0, p1

    xor-int/2addr v0, p3

    return v0
.end method

.method private f4(III)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I

    .prologue
    .line 200
    and-int v0, p1, p3

    xor-int/lit8 v1, p3, -0x1

    and-int/2addr v1, p2

    or-int/2addr v0, v1

    return v0
.end method

.method private f5(III)I
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I

    .prologue
    .line 211
    xor-int/lit8 v0, p3, -0x1

    or-int/2addr v0, p2

    xor-int/2addr v0, p1

    return v0
.end method

.method private unpackWord(I[BI)V
    .locals 2
    .param p1, "word"    # I
    .param p2, "out"    # [B
    .param p3, "outOff"    # I

    .prologue
    .line 91
    int-to-byte v0, p1

    aput-byte v0, p2, p3

    .line 92
    add-int/lit8 v0, p3, 0x1

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 93
    add-int/lit8 v0, p3, 0x2

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 94
    add-int/lit8 v0, p3, 0x3

    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 95
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 2
    .param p1, "out"    # [B
    .param p2, "outOff"    # I

    .prologue
    .line 101
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->finish()V

    .line 103
    iget v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->H0:I

    invoke-direct {p0, v0, p1, p2}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->unpackWord(I[BI)V

    .line 104
    iget v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->H1:I

    add-int/lit8 v1, p2, 0x4

    invoke-direct {p0, v0, p1, v1}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->unpackWord(I[BI)V

    .line 105
    iget v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->H2:I

    add-int/lit8 v1, p2, 0x8

    invoke-direct {p0, v0, p1, v1}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->unpackWord(I[BI)V

    .line 106
    iget v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->H3:I

    add-int/lit8 v1, p2, 0xc

    invoke-direct {p0, v0, p1, v1}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->unpackWord(I[BI)V

    .line 107
    iget v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->H4:I

    add-int/lit8 v1, p2, 0x10

    invoke-direct {p0, v0, p1, v1}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->unpackWord(I[BI)V

    .line 108
    iget v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->H5:I

    add-int/lit8 v1, p2, 0x14

    invoke-direct {p0, v0, p1, v1}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->unpackWord(I[BI)V

    .line 109
    iget v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->H6:I

    add-int/lit8 v1, p2, 0x18

    invoke-direct {p0, v0, p1, v1}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->unpackWord(I[BI)V

    .line 110
    iget v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->H7:I

    add-int/lit8 v1, p2, 0x1c

    invoke-direct {p0, v0, p1, v1}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->unpackWord(I[BI)V

    .line 111
    iget v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->H8:I

    add-int/lit8 v1, p2, 0x20

    invoke-direct {p0, v0, p1, v1}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->unpackWord(I[BI)V

    .line 112
    iget v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->H9:I

    add-int/lit8 v1, p2, 0x24

    invoke-direct {p0, v0, p1, v1}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->unpackWord(I[BI)V

    .line 114
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->reset()V

    .line 116
    const/16 v0, 0x28

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    const-string v0, "RIPEMD320"

    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    .prologue
    .line 58
    const/16 v0, 0x28

    return v0
.end method

.method protected processBlock()V
    .locals 15

    .prologue
    .line 223
    iget v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->H0:I

    .line 224
    .local v0, "a":I
    iget v2, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->H1:I

    .line 225
    .local v2, "b":I
    iget v4, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->H2:I

    .line 226
    .local v4, "c":I
    iget v6, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->H3:I

    .line 227
    .local v6, "d":I
    iget v8, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->H4:I

    .line 228
    .local v8, "e":I
    iget v1, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->H5:I

    .line 229
    .local v1, "aa":I
    iget v3, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->H6:I

    .line 230
    .local v3, "bb":I
    iget v5, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->H7:I

    .line 231
    .local v5, "cc":I
    iget v7, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->H8:I

    .line 232
    .local v7, "dd":I
    iget v9, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->H9:I

    .line 238
    .local v9, "ee":I
    invoke-direct {p0, v2, v4, v6}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v0

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/16 v13, 0xb

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v0, v12, v8

    const/16 v12, 0xa

    invoke-direct {p0, v4, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    .line 239
    invoke-direct {p0, v0, v2, v4}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v8

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/16 v13, 0xe

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v8, v12, v6

    const/16 v12, 0xa

    invoke-direct {p0, v2, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    .line 240
    invoke-direct {p0, v8, v0, v2}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v6

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x2

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/16 v13, 0xf

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v6, v12, v4

    const/16 v12, 0xa

    invoke-direct {p0, v0, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v0

    .line 241
    invoke-direct {p0, v6, v8, v0}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v4

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x3

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/16 v13, 0xc

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v4, v12, v2

    const/16 v12, 0xa

    invoke-direct {p0, v8, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    .line 242
    invoke-direct {p0, v4, v6, v8}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v2

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x4

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/4 v13, 0x5

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v2, v12, v0

    const/16 v12, 0xa

    invoke-direct {p0, v6, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    .line 243
    invoke-direct {p0, v2, v4, v6}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v0

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x5

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/16 v13, 0x8

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v0, v12, v8

    const/16 v12, 0xa

    invoke-direct {p0, v4, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    .line 244
    invoke-direct {p0, v0, v2, v4}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v8

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x6

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/4 v13, 0x7

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v8, v12, v6

    const/16 v12, 0xa

    invoke-direct {p0, v2, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    .line 245
    invoke-direct {p0, v8, v0, v2}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v6

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x7

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/16 v13, 0x9

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v6, v12, v4

    const/16 v12, 0xa

    invoke-direct {p0, v0, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v0

    .line 246
    invoke-direct {p0, v6, v8, v0}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v4

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0x8

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/16 v13, 0xb

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v4, v12, v2

    const/16 v12, 0xa

    invoke-direct {p0, v8, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    .line 247
    invoke-direct {p0, v4, v6, v8}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v2

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0x9

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/16 v13, 0xd

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v2, v12, v0

    const/16 v12, 0xa

    invoke-direct {p0, v6, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    .line 248
    invoke-direct {p0, v2, v4, v6}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v0

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xa

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/16 v13, 0xe

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v0, v12, v8

    const/16 v12, 0xa

    invoke-direct {p0, v4, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    .line 249
    invoke-direct {p0, v0, v2, v4}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v8

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xb

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/16 v13, 0xf

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v8, v12, v6

    const/16 v12, 0xa

    invoke-direct {p0, v2, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    .line 250
    invoke-direct {p0, v8, v0, v2}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v6

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xc

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/4 v13, 0x6

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v6, v12, v4

    const/16 v12, 0xa

    invoke-direct {p0, v0, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v0

    .line 251
    invoke-direct {p0, v6, v8, v0}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v4

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xd

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/4 v13, 0x7

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v4, v12, v2

    const/16 v12, 0xa

    invoke-direct {p0, v8, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    .line 252
    invoke-direct {p0, v4, v6, v8}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v2

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xe

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/16 v13, 0x9

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v2, v12, v0

    const/16 v12, 0xa

    invoke-direct {p0, v6, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    .line 253
    invoke-direct {p0, v2, v4, v6}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v0

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xf

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/16 v13, 0x8

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v0, v12, v8

    const/16 v12, 0xa

    invoke-direct {p0, v4, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    .line 256
    invoke-direct {p0, v3, v5, v7}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v1

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x5

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x50a28be6

    add-int/2addr v12, v13

    const/16 v13, 0x8

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v1, v12, v9

    const/16 v12, 0xa

    invoke-direct {p0, v5, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    .line 257
    invoke-direct {p0, v1, v3, v5}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v9

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xe

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x50a28be6

    add-int/2addr v12, v13

    const/16 v13, 0x9

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v9, v12, v7

    const/16 v12, 0xa

    invoke-direct {p0, v3, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    .line 258
    invoke-direct {p0, v9, v1, v3}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v7

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x7

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x50a28be6

    add-int/2addr v12, v13

    const/16 v13, 0x9

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v7, v12, v5

    const/16 v12, 0xa

    invoke-direct {p0, v1, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    .line 259
    invoke-direct {p0, v7, v9, v1}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v5

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x50a28be6

    add-int/2addr v12, v13

    const/16 v13, 0xb

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v5, v12, v3

    const/16 v12, 0xa

    invoke-direct {p0, v9, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    .line 260
    invoke-direct {p0, v5, v7, v9}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v3

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0x9

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x50a28be6

    add-int/2addr v12, v13

    const/16 v13, 0xd

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v3, v12, v1

    const/16 v12, 0xa

    invoke-direct {p0, v7, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    .line 261
    invoke-direct {p0, v3, v5, v7}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v1

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x2

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x50a28be6

    add-int/2addr v12, v13

    const/16 v13, 0xf

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v1, v12, v9

    const/16 v12, 0xa

    invoke-direct {p0, v5, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    .line 262
    invoke-direct {p0, v1, v3, v5}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v9

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xb

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x50a28be6

    add-int/2addr v12, v13

    const/16 v13, 0xf

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v9, v12, v7

    const/16 v12, 0xa

    invoke-direct {p0, v3, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    .line 263
    invoke-direct {p0, v9, v1, v3}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v7

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x4

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x50a28be6

    add-int/2addr v12, v13

    const/4 v13, 0x5

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v7, v12, v5

    const/16 v12, 0xa

    invoke-direct {p0, v1, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    .line 264
    invoke-direct {p0, v7, v9, v1}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v5

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xd

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x50a28be6

    add-int/2addr v12, v13

    const/4 v13, 0x7

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v5, v12, v3

    const/16 v12, 0xa

    invoke-direct {p0, v9, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    .line 265
    invoke-direct {p0, v5, v7, v9}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v3

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x6

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x50a28be6

    add-int/2addr v12, v13

    const/4 v13, 0x7

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v3, v12, v1

    const/16 v12, 0xa

    invoke-direct {p0, v7, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    .line 266
    invoke-direct {p0, v3, v5, v7}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v1

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xf

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x50a28be6

    add-int/2addr v12, v13

    const/16 v13, 0x8

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v1, v12, v9

    const/16 v12, 0xa

    invoke-direct {p0, v5, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    .line 267
    invoke-direct {p0, v1, v3, v5}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v9

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0x8

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x50a28be6

    add-int/2addr v12, v13

    const/16 v13, 0xb

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v9, v12, v7

    const/16 v12, 0xa

    invoke-direct {p0, v3, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    .line 268
    invoke-direct {p0, v9, v1, v3}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v7

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x50a28be6

    add-int/2addr v12, v13

    const/16 v13, 0xe

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v7, v12, v5

    const/16 v12, 0xa

    invoke-direct {p0, v1, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    .line 269
    invoke-direct {p0, v7, v9, v1}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v5

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xa

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x50a28be6

    add-int/2addr v12, v13

    const/16 v13, 0xe

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v5, v12, v3

    const/16 v12, 0xa

    invoke-direct {p0, v9, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    .line 270
    invoke-direct {p0, v5, v7, v9}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v3

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x3

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x50a28be6

    add-int/2addr v12, v13

    const/16 v13, 0xc

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v3, v12, v1

    const/16 v12, 0xa

    invoke-direct {p0, v7, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    .line 271
    invoke-direct {p0, v3, v5, v7}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v1

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xc

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x50a28be6

    add-int/2addr v12, v13

    const/4 v13, 0x6

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v1, v12, v9

    const/16 v12, 0xa

    invoke-direct {p0, v5, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    .line 273
    move v11, v0

    .local v11, "t":I
    move v0, v1

    move v1, v11

    .line 279
    invoke-direct {p0, v0, v2, v4}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v8

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x7

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5a827999

    add-int/2addr v12, v13

    const/4 v13, 0x7

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v8, v12, v6

    const/16 v12, 0xa

    invoke-direct {p0, v2, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    .line 280
    invoke-direct {p0, v8, v0, v2}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v6

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x4

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5a827999

    add-int/2addr v12, v13

    const/4 v13, 0x6

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v6, v12, v4

    const/16 v12, 0xa

    invoke-direct {p0, v0, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v0

    .line 281
    invoke-direct {p0, v6, v8, v0}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v4

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xd

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5a827999

    add-int/2addr v12, v13

    const/16 v13, 0x8

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v4, v12, v2

    const/16 v12, 0xa

    invoke-direct {p0, v8, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    .line 282
    invoke-direct {p0, v4, v6, v8}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v2

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5a827999

    add-int/2addr v12, v13

    const/16 v13, 0xd

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v2, v12, v0

    const/16 v12, 0xa

    invoke-direct {p0, v6, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    .line 283
    invoke-direct {p0, v2, v4, v6}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v0

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xa

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5a827999

    add-int/2addr v12, v13

    const/16 v13, 0xb

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v0, v12, v8

    const/16 v12, 0xa

    invoke-direct {p0, v4, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    .line 284
    invoke-direct {p0, v0, v2, v4}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v8

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x6

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5a827999

    add-int/2addr v12, v13

    const/16 v13, 0x9

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v8, v12, v6

    const/16 v12, 0xa

    invoke-direct {p0, v2, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    .line 285
    invoke-direct {p0, v8, v0, v2}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v6

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xf

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5a827999

    add-int/2addr v12, v13

    const/4 v13, 0x7

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v6, v12, v4

    const/16 v12, 0xa

    invoke-direct {p0, v0, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v0

    .line 286
    invoke-direct {p0, v6, v8, v0}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v4

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x3

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5a827999

    add-int/2addr v12, v13

    const/16 v13, 0xf

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v4, v12, v2

    const/16 v12, 0xa

    invoke-direct {p0, v8, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    .line 287
    invoke-direct {p0, v4, v6, v8}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v2

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xc

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5a827999

    add-int/2addr v12, v13

    const/4 v13, 0x7

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v2, v12, v0

    const/16 v12, 0xa

    invoke-direct {p0, v6, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    .line 288
    invoke-direct {p0, v2, v4, v6}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v0

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5a827999

    add-int/2addr v12, v13

    const/16 v13, 0xc

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v0, v12, v8

    const/16 v12, 0xa

    invoke-direct {p0, v4, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    .line 289
    invoke-direct {p0, v0, v2, v4}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v8

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0x9

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5a827999

    add-int/2addr v12, v13

    const/16 v13, 0xf

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v8, v12, v6

    const/16 v12, 0xa

    invoke-direct {p0, v2, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    .line 290
    invoke-direct {p0, v8, v0, v2}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v6

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x5

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5a827999

    add-int/2addr v12, v13

    const/16 v13, 0x9

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v6, v12, v4

    const/16 v12, 0xa

    invoke-direct {p0, v0, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v0

    .line 291
    invoke-direct {p0, v6, v8, v0}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v4

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x2

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5a827999

    add-int/2addr v12, v13

    const/16 v13, 0xb

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v4, v12, v2

    const/16 v12, 0xa

    invoke-direct {p0, v8, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    .line 292
    invoke-direct {p0, v4, v6, v8}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v2

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xe

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5a827999

    add-int/2addr v12, v13

    const/4 v13, 0x7

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v2, v12, v0

    const/16 v12, 0xa

    invoke-direct {p0, v6, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    .line 293
    invoke-direct {p0, v2, v4, v6}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v0

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xb

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5a827999

    add-int/2addr v12, v13

    const/16 v13, 0xd

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v0, v12, v8

    const/16 v12, 0xa

    invoke-direct {p0, v4, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    .line 294
    invoke-direct {p0, v0, v2, v4}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v8

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0x8

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5a827999

    add-int/2addr v12, v13

    const/16 v13, 0xc

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v8, v12, v6

    const/16 v12, 0xa

    invoke-direct {p0, v2, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    .line 297
    invoke-direct {p0, v1, v3, v5}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v9

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x6

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5c4dd124

    add-int/2addr v12, v13

    const/16 v13, 0x9

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v9, v12, v7

    const/16 v12, 0xa

    invoke-direct {p0, v3, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    .line 298
    invoke-direct {p0, v9, v1, v3}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v7

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xb

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5c4dd124

    add-int/2addr v12, v13

    const/16 v13, 0xd

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v7, v12, v5

    const/16 v12, 0xa

    invoke-direct {p0, v1, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    .line 299
    invoke-direct {p0, v7, v9, v1}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v5

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x3

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5c4dd124

    add-int/2addr v12, v13

    const/16 v13, 0xf

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v5, v12, v3

    const/16 v12, 0xa

    invoke-direct {p0, v9, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    .line 300
    invoke-direct {p0, v5, v7, v9}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v3

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x7

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5c4dd124

    add-int/2addr v12, v13

    const/4 v13, 0x7

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v3, v12, v1

    const/16 v12, 0xa

    invoke-direct {p0, v7, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    .line 301
    invoke-direct {p0, v3, v5, v7}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v1

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5c4dd124

    add-int/2addr v12, v13

    const/16 v13, 0xc

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v1, v12, v9

    const/16 v12, 0xa

    invoke-direct {p0, v5, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    .line 302
    invoke-direct {p0, v1, v3, v5}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v9

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xd

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5c4dd124

    add-int/2addr v12, v13

    const/16 v13, 0x8

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v9, v12, v7

    const/16 v12, 0xa

    invoke-direct {p0, v3, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    .line 303
    invoke-direct {p0, v9, v1, v3}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v7

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x5

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5c4dd124

    add-int/2addr v12, v13

    const/16 v13, 0x9

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v7, v12, v5

    const/16 v12, 0xa

    invoke-direct {p0, v1, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    .line 304
    invoke-direct {p0, v7, v9, v1}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v5

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xa

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5c4dd124

    add-int/2addr v12, v13

    const/16 v13, 0xb

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v5, v12, v3

    const/16 v12, 0xa

    invoke-direct {p0, v9, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    .line 305
    invoke-direct {p0, v5, v7, v9}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v3

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xe

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5c4dd124

    add-int/2addr v12, v13

    const/4 v13, 0x7

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v3, v12, v1

    const/16 v12, 0xa

    invoke-direct {p0, v7, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    .line 306
    invoke-direct {p0, v3, v5, v7}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v1

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xf

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5c4dd124

    add-int/2addr v12, v13

    const/4 v13, 0x7

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v1, v12, v9

    const/16 v12, 0xa

    invoke-direct {p0, v5, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    .line 307
    invoke-direct {p0, v1, v3, v5}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v9

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0x8

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5c4dd124

    add-int/2addr v12, v13

    const/16 v13, 0xc

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v9, v12, v7

    const/16 v12, 0xa

    invoke-direct {p0, v3, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    .line 308
    invoke-direct {p0, v9, v1, v3}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v7

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xc

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5c4dd124

    add-int/2addr v12, v13

    const/4 v13, 0x7

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v7, v12, v5

    const/16 v12, 0xa

    invoke-direct {p0, v1, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    .line 309
    invoke-direct {p0, v7, v9, v1}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v5

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x4

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5c4dd124

    add-int/2addr v12, v13

    const/4 v13, 0x6

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v5, v12, v3

    const/16 v12, 0xa

    invoke-direct {p0, v9, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    .line 310
    invoke-direct {p0, v5, v7, v9}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v3

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0x9

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5c4dd124

    add-int/2addr v12, v13

    const/16 v13, 0xf

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v3, v12, v1

    const/16 v12, 0xa

    invoke-direct {p0, v7, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    .line 311
    invoke-direct {p0, v3, v5, v7}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v1

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5c4dd124

    add-int/2addr v12, v13

    const/16 v13, 0xd

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v1, v12, v9

    const/16 v12, 0xa

    invoke-direct {p0, v5, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    .line 312
    invoke-direct {p0, v1, v3, v5}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v9

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x2

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5c4dd124

    add-int/2addr v12, v13

    const/16 v13, 0xb

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v9, v12, v7

    const/16 v12, 0xa

    invoke-direct {p0, v3, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    .line 314
    move v11, v2

    move v2, v3

    move v3, v11

    .line 320
    invoke-direct {p0, v8, v0, v2}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v6

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x3

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6ed9eba1

    add-int/2addr v12, v13

    const/16 v13, 0xb

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v6, v12, v4

    const/16 v12, 0xa

    invoke-direct {p0, v0, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v0

    .line 321
    invoke-direct {p0, v6, v8, v0}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v4

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xa

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6ed9eba1

    add-int/2addr v12, v13

    const/16 v13, 0xd

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v4, v12, v2

    const/16 v12, 0xa

    invoke-direct {p0, v8, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    .line 322
    invoke-direct {p0, v4, v6, v8}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v2

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xe

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6ed9eba1

    add-int/2addr v12, v13

    const/4 v13, 0x6

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v2, v12, v0

    const/16 v12, 0xa

    invoke-direct {p0, v6, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    .line 323
    invoke-direct {p0, v2, v4, v6}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v0

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x4

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6ed9eba1

    add-int/2addr v12, v13

    const/4 v13, 0x7

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v0, v12, v8

    const/16 v12, 0xa

    invoke-direct {p0, v4, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    .line 324
    invoke-direct {p0, v0, v2, v4}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v8

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0x9

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6ed9eba1

    add-int/2addr v12, v13

    const/16 v13, 0xe

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v8, v12, v6

    const/16 v12, 0xa

    invoke-direct {p0, v2, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    .line 325
    invoke-direct {p0, v8, v0, v2}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v6

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xf

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6ed9eba1

    add-int/2addr v12, v13

    const/16 v13, 0x9

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v6, v12, v4

    const/16 v12, 0xa

    invoke-direct {p0, v0, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v0

    .line 326
    invoke-direct {p0, v6, v8, v0}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v4

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0x8

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6ed9eba1

    add-int/2addr v12, v13

    const/16 v13, 0xd

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v4, v12, v2

    const/16 v12, 0xa

    invoke-direct {p0, v8, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    .line 327
    invoke-direct {p0, v4, v6, v8}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v2

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6ed9eba1

    add-int/2addr v12, v13

    const/16 v13, 0xf

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v2, v12, v0

    const/16 v12, 0xa

    invoke-direct {p0, v6, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    .line 328
    invoke-direct {p0, v2, v4, v6}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v0

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x2

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6ed9eba1

    add-int/2addr v12, v13

    const/16 v13, 0xe

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v0, v12, v8

    const/16 v12, 0xa

    invoke-direct {p0, v4, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    .line 329
    invoke-direct {p0, v0, v2, v4}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v8

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x7

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6ed9eba1

    add-int/2addr v12, v13

    const/16 v13, 0x8

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v8, v12, v6

    const/16 v12, 0xa

    invoke-direct {p0, v2, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    .line 330
    invoke-direct {p0, v8, v0, v2}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v6

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6ed9eba1

    add-int/2addr v12, v13

    const/16 v13, 0xd

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v6, v12, v4

    const/16 v12, 0xa

    invoke-direct {p0, v0, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v0

    .line 331
    invoke-direct {p0, v6, v8, v0}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v4

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x6

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6ed9eba1

    add-int/2addr v12, v13

    const/4 v13, 0x6

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v4, v12, v2

    const/16 v12, 0xa

    invoke-direct {p0, v8, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    .line 332
    invoke-direct {p0, v4, v6, v8}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v2

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xd

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6ed9eba1

    add-int/2addr v12, v13

    const/4 v13, 0x5

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v2, v12, v0

    const/16 v12, 0xa

    invoke-direct {p0, v6, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    .line 333
    invoke-direct {p0, v2, v4, v6}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v0

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xb

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6ed9eba1

    add-int/2addr v12, v13

    const/16 v13, 0xc

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v0, v12, v8

    const/16 v12, 0xa

    invoke-direct {p0, v4, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    .line 334
    invoke-direct {p0, v0, v2, v4}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v8

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x5

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6ed9eba1

    add-int/2addr v12, v13

    const/4 v13, 0x7

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v8, v12, v6

    const/16 v12, 0xa

    invoke-direct {p0, v2, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    .line 335
    invoke-direct {p0, v8, v0, v2}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v6

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xc

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6ed9eba1

    add-int/2addr v12, v13

    const/4 v13, 0x5

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v6, v12, v4

    const/16 v12, 0xa

    invoke-direct {p0, v0, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v0

    .line 338
    invoke-direct {p0, v9, v1, v3}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v7

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xf

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6d703ef3

    add-int/2addr v12, v13

    const/16 v13, 0x9

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v7, v12, v5

    const/16 v12, 0xa

    invoke-direct {p0, v1, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    .line 339
    invoke-direct {p0, v7, v9, v1}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v5

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x5

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6d703ef3

    add-int/2addr v12, v13

    const/4 v13, 0x7

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v5, v12, v3

    const/16 v12, 0xa

    invoke-direct {p0, v9, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    .line 340
    invoke-direct {p0, v5, v7, v9}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v3

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6d703ef3

    add-int/2addr v12, v13

    const/16 v13, 0xf

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v3, v12, v1

    const/16 v12, 0xa

    invoke-direct {p0, v7, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    .line 341
    invoke-direct {p0, v3, v5, v7}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v1

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x3

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6d703ef3

    add-int/2addr v12, v13

    const/16 v13, 0xb

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v1, v12, v9

    const/16 v12, 0xa

    invoke-direct {p0, v5, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    .line 342
    invoke-direct {p0, v1, v3, v5}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v9

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x7

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6d703ef3

    add-int/2addr v12, v13

    const/16 v13, 0x8

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v9, v12, v7

    const/16 v12, 0xa

    invoke-direct {p0, v3, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    .line 343
    invoke-direct {p0, v9, v1, v3}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v7

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xe

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6d703ef3

    add-int/2addr v12, v13

    const/4 v13, 0x6

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v7, v12, v5

    const/16 v12, 0xa

    invoke-direct {p0, v1, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    .line 344
    invoke-direct {p0, v7, v9, v1}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v5

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x6

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6d703ef3

    add-int/2addr v12, v13

    const/4 v13, 0x6

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v5, v12, v3

    const/16 v12, 0xa

    invoke-direct {p0, v9, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    .line 345
    invoke-direct {p0, v5, v7, v9}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v3

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0x9

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6d703ef3

    add-int/2addr v12, v13

    const/16 v13, 0xe

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v3, v12, v1

    const/16 v12, 0xa

    invoke-direct {p0, v7, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    .line 346
    invoke-direct {p0, v3, v5, v7}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v1

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xb

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6d703ef3

    add-int/2addr v12, v13

    const/16 v13, 0xc

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v1, v12, v9

    const/16 v12, 0xa

    invoke-direct {p0, v5, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    .line 347
    invoke-direct {p0, v1, v3, v5}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v9

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0x8

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6d703ef3

    add-int/2addr v12, v13

    const/16 v13, 0xd

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v9, v12, v7

    const/16 v12, 0xa

    invoke-direct {p0, v3, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    .line 348
    invoke-direct {p0, v9, v1, v3}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v7

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xc

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6d703ef3

    add-int/2addr v12, v13

    const/4 v13, 0x5

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v7, v12, v5

    const/16 v12, 0xa

    invoke-direct {p0, v1, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    .line 349
    invoke-direct {p0, v7, v9, v1}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v5

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x2

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6d703ef3

    add-int/2addr v12, v13

    const/16 v13, 0xe

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v5, v12, v3

    const/16 v12, 0xa

    invoke-direct {p0, v9, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    .line 350
    invoke-direct {p0, v5, v7, v9}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v3

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xa

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6d703ef3

    add-int/2addr v12, v13

    const/16 v13, 0xd

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v3, v12, v1

    const/16 v12, 0xa

    invoke-direct {p0, v7, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    .line 351
    invoke-direct {p0, v3, v5, v7}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v1

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6d703ef3

    add-int/2addr v12, v13

    const/16 v13, 0xd

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v1, v12, v9

    const/16 v12, 0xa

    invoke-direct {p0, v5, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    .line 352
    invoke-direct {p0, v1, v3, v5}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v9

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x4

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6d703ef3

    add-int/2addr v12, v13

    const/4 v13, 0x7

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v9, v12, v7

    const/16 v12, 0xa

    invoke-direct {p0, v3, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    .line 353
    invoke-direct {p0, v9, v1, v3}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v7

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xd

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6d703ef3

    add-int/2addr v12, v13

    const/4 v13, 0x5

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v7, v12, v5

    const/16 v12, 0xa

    invoke-direct {p0, v1, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    .line 355
    move v11, v4

    move v4, v5

    move v5, v11

    .line 361
    invoke-direct {p0, v6, v8, v0}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v4

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x70e44324

    add-int/2addr v12, v13

    const/16 v13, 0xb

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v4, v12, v2

    const/16 v12, 0xa

    invoke-direct {p0, v8, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    .line 362
    invoke-direct {p0, v4, v6, v8}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v2

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0x9

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x70e44324

    add-int/2addr v12, v13

    const/16 v13, 0xc

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v2, v12, v0

    const/16 v12, 0xa

    invoke-direct {p0, v6, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    .line 363
    invoke-direct {p0, v2, v4, v6}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v0

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xb

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x70e44324

    add-int/2addr v12, v13

    const/16 v13, 0xe

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v0, v12, v8

    const/16 v12, 0xa

    invoke-direct {p0, v4, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    .line 364
    invoke-direct {p0, v0, v2, v4}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v8

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xa

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x70e44324

    add-int/2addr v12, v13

    const/16 v13, 0xf

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v8, v12, v6

    const/16 v12, 0xa

    invoke-direct {p0, v2, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    .line 365
    invoke-direct {p0, v8, v0, v2}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v6

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x70e44324

    add-int/2addr v12, v13

    const/16 v13, 0xe

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v6, v12, v4

    const/16 v12, 0xa

    invoke-direct {p0, v0, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v0

    .line 366
    invoke-direct {p0, v6, v8, v0}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v4

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0x8

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x70e44324

    add-int/2addr v12, v13

    const/16 v13, 0xf

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v4, v12, v2

    const/16 v12, 0xa

    invoke-direct {p0, v8, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    .line 367
    invoke-direct {p0, v4, v6, v8}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v2

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xc

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x70e44324

    add-int/2addr v12, v13

    const/16 v13, 0x9

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v2, v12, v0

    const/16 v12, 0xa

    invoke-direct {p0, v6, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    .line 368
    invoke-direct {p0, v2, v4, v6}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v0

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x4

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x70e44324

    add-int/2addr v12, v13

    const/16 v13, 0x8

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v0, v12, v8

    const/16 v12, 0xa

    invoke-direct {p0, v4, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    .line 369
    invoke-direct {p0, v0, v2, v4}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v8

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xd

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x70e44324

    add-int/2addr v12, v13

    const/16 v13, 0x9

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v8, v12, v6

    const/16 v12, 0xa

    invoke-direct {p0, v2, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    .line 370
    invoke-direct {p0, v8, v0, v2}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v6

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x3

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x70e44324

    add-int/2addr v12, v13

    const/16 v13, 0xe

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v6, v12, v4

    const/16 v12, 0xa

    invoke-direct {p0, v0, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v0

    .line 371
    invoke-direct {p0, v6, v8, v0}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v4

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x7

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x70e44324

    add-int/2addr v12, v13

    const/4 v13, 0x5

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v4, v12, v2

    const/16 v12, 0xa

    invoke-direct {p0, v8, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    .line 372
    invoke-direct {p0, v4, v6, v8}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v2

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xf

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x70e44324

    add-int/2addr v12, v13

    const/4 v13, 0x6

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v2, v12, v0

    const/16 v12, 0xa

    invoke-direct {p0, v6, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    .line 373
    invoke-direct {p0, v2, v4, v6}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v0

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xe

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x70e44324

    add-int/2addr v12, v13

    const/16 v13, 0x8

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v0, v12, v8

    const/16 v12, 0xa

    invoke-direct {p0, v4, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    .line 374
    invoke-direct {p0, v0, v2, v4}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v8

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x5

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x70e44324

    add-int/2addr v12, v13

    const/4 v13, 0x6

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v8, v12, v6

    const/16 v12, 0xa

    invoke-direct {p0, v2, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    .line 375
    invoke-direct {p0, v8, v0, v2}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v6

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x6

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x70e44324

    add-int/2addr v12, v13

    const/4 v13, 0x5

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v6, v12, v4

    const/16 v12, 0xa

    invoke-direct {p0, v0, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v0

    .line 376
    invoke-direct {p0, v6, v8, v0}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v4

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x2

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x70e44324

    add-int/2addr v12, v13

    const/16 v13, 0xc

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v4, v12, v2

    const/16 v12, 0xa

    invoke-direct {p0, v8, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    .line 379
    invoke-direct {p0, v7, v9, v1}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v5

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0x8

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x7a6d76e9

    add-int/2addr v12, v13

    const/16 v13, 0xf

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v5, v12, v3

    const/16 v12, 0xa

    invoke-direct {p0, v9, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    .line 380
    invoke-direct {p0, v5, v7, v9}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v3

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x6

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x7a6d76e9

    add-int/2addr v12, v13

    const/4 v13, 0x5

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v3, v12, v1

    const/16 v12, 0xa

    invoke-direct {p0, v7, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    .line 381
    invoke-direct {p0, v3, v5, v7}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v1

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x4

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x7a6d76e9

    add-int/2addr v12, v13

    const/16 v13, 0x8

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v1, v12, v9

    const/16 v12, 0xa

    invoke-direct {p0, v5, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    .line 382
    invoke-direct {p0, v1, v3, v5}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v9

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x7a6d76e9

    add-int/2addr v12, v13

    const/16 v13, 0xb

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v9, v12, v7

    const/16 v12, 0xa

    invoke-direct {p0, v3, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    .line 383
    invoke-direct {p0, v9, v1, v3}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v7

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x3

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x7a6d76e9

    add-int/2addr v12, v13

    const/16 v13, 0xe

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v7, v12, v5

    const/16 v12, 0xa

    invoke-direct {p0, v1, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    .line 384
    invoke-direct {p0, v7, v9, v1}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v5

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xb

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x7a6d76e9

    add-int/2addr v12, v13

    const/16 v13, 0xe

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v5, v12, v3

    const/16 v12, 0xa

    invoke-direct {p0, v9, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    .line 385
    invoke-direct {p0, v5, v7, v9}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v3

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xf

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x7a6d76e9

    add-int/2addr v12, v13

    const/4 v13, 0x6

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v3, v12, v1

    const/16 v12, 0xa

    invoke-direct {p0, v7, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    .line 386
    invoke-direct {p0, v3, v5, v7}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v1

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x7a6d76e9

    add-int/2addr v12, v13

    const/16 v13, 0xe

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v1, v12, v9

    const/16 v12, 0xa

    invoke-direct {p0, v5, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    .line 387
    invoke-direct {p0, v1, v3, v5}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v9

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x5

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x7a6d76e9

    add-int/2addr v12, v13

    const/4 v13, 0x6

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v9, v12, v7

    const/16 v12, 0xa

    invoke-direct {p0, v3, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    .line 388
    invoke-direct {p0, v9, v1, v3}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v7

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xc

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x7a6d76e9

    add-int/2addr v12, v13

    const/16 v13, 0x9

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v7, v12, v5

    const/16 v12, 0xa

    invoke-direct {p0, v1, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    .line 389
    invoke-direct {p0, v7, v9, v1}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v5

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x2

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x7a6d76e9

    add-int/2addr v12, v13

    const/16 v13, 0xc

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v5, v12, v3

    const/16 v12, 0xa

    invoke-direct {p0, v9, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    .line 390
    invoke-direct {p0, v5, v7, v9}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v3

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xd

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x7a6d76e9

    add-int/2addr v12, v13

    const/16 v13, 0x9

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v3, v12, v1

    const/16 v12, 0xa

    invoke-direct {p0, v7, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    .line 391
    invoke-direct {p0, v3, v5, v7}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v1

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0x9

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x7a6d76e9

    add-int/2addr v12, v13

    const/16 v13, 0xc

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v1, v12, v9

    const/16 v12, 0xa

    invoke-direct {p0, v5, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    .line 392
    invoke-direct {p0, v1, v3, v5}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v9

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x7

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x7a6d76e9

    add-int/2addr v12, v13

    const/4 v13, 0x5

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v9, v12, v7

    const/16 v12, 0xa

    invoke-direct {p0, v3, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    .line 393
    invoke-direct {p0, v9, v1, v3}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v7

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xa

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x7a6d76e9

    add-int/2addr v12, v13

    const/16 v13, 0xf

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v7, v12, v5

    const/16 v12, 0xa

    invoke-direct {p0, v1, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    .line 394
    invoke-direct {p0, v7, v9, v1}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v5

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xe

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x7a6d76e9

    add-int/2addr v12, v13

    const/16 v13, 0x8

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v5, v12, v3

    const/16 v12, 0xa

    invoke-direct {p0, v9, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    .line 396
    move v11, v6

    move v6, v7

    move v7, v11

    .line 402
    invoke-direct {p0, v4, v6, v8}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v2

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x4

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x56ac02b2

    add-int/2addr v12, v13

    const/16 v13, 0x9

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v2, v12, v0

    const/16 v12, 0xa

    invoke-direct {p0, v6, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    .line 403
    invoke-direct {p0, v2, v4, v6}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v0

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x56ac02b2

    add-int/2addr v12, v13

    const/16 v13, 0xf

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v0, v12, v8

    const/16 v12, 0xa

    invoke-direct {p0, v4, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    .line 404
    invoke-direct {p0, v0, v2, v4}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v8

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x5

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x56ac02b2

    add-int/2addr v12, v13

    const/4 v13, 0x5

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v8, v12, v6

    const/16 v12, 0xa

    invoke-direct {p0, v2, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    .line 405
    invoke-direct {p0, v8, v0, v2}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v6

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0x9

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x56ac02b2

    add-int/2addr v12, v13

    const/16 v13, 0xb

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v6, v12, v4

    const/16 v12, 0xa

    invoke-direct {p0, v0, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v0

    .line 406
    invoke-direct {p0, v6, v8, v0}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v4

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x7

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x56ac02b2

    add-int/2addr v12, v13

    const/4 v13, 0x6

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v4, v12, v2

    const/16 v12, 0xa

    invoke-direct {p0, v8, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    .line 407
    invoke-direct {p0, v4, v6, v8}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v2

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xc

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x56ac02b2

    add-int/2addr v12, v13

    const/16 v13, 0x8

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v2, v12, v0

    const/16 v12, 0xa

    invoke-direct {p0, v6, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    .line 408
    invoke-direct {p0, v2, v4, v6}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v0

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x2

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x56ac02b2

    add-int/2addr v12, v13

    const/16 v13, 0xd

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v0, v12, v8

    const/16 v12, 0xa

    invoke-direct {p0, v4, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    .line 409
    invoke-direct {p0, v0, v2, v4}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v8

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xa

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x56ac02b2

    add-int/2addr v12, v13

    const/16 v13, 0xc

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v8, v12, v6

    const/16 v12, 0xa

    invoke-direct {p0, v2, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    .line 410
    invoke-direct {p0, v8, v0, v2}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v6

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xe

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x56ac02b2

    add-int/2addr v12, v13

    const/4 v13, 0x5

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v6, v12, v4

    const/16 v12, 0xa

    invoke-direct {p0, v0, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v0

    .line 411
    invoke-direct {p0, v6, v8, v0}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v4

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x56ac02b2

    add-int/2addr v12, v13

    const/16 v13, 0xc

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v4, v12, v2

    const/16 v12, 0xa

    invoke-direct {p0, v8, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    .line 412
    invoke-direct {p0, v4, v6, v8}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v2

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x3

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x56ac02b2

    add-int/2addr v12, v13

    const/16 v13, 0xd

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v2, v12, v0

    const/16 v12, 0xa

    invoke-direct {p0, v6, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    .line 413
    invoke-direct {p0, v2, v4, v6}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v0

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0x8

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x56ac02b2

    add-int/2addr v12, v13

    const/16 v13, 0xe

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v0, v12, v8

    const/16 v12, 0xa

    invoke-direct {p0, v4, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    .line 414
    invoke-direct {p0, v0, v2, v4}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v8

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xb

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x56ac02b2

    add-int/2addr v12, v13

    const/16 v13, 0xb

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v8, v12, v6

    const/16 v12, 0xa

    invoke-direct {p0, v2, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    .line 415
    invoke-direct {p0, v8, v0, v2}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v6

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x6

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x56ac02b2

    add-int/2addr v12, v13

    const/16 v13, 0x8

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v6, v12, v4

    const/16 v12, 0xa

    invoke-direct {p0, v0, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v0

    .line 416
    invoke-direct {p0, v6, v8, v0}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v4

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xf

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x56ac02b2

    add-int/2addr v12, v13

    const/4 v13, 0x5

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v4, v12, v2

    const/16 v12, 0xa

    invoke-direct {p0, v8, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    .line 417
    invoke-direct {p0, v4, v6, v8}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v2

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xd

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x56ac02b2

    add-int/2addr v12, v13

    const/4 v13, 0x6

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v2, v12, v0

    const/16 v12, 0xa

    invoke-direct {p0, v6, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    .line 420
    invoke-direct {p0, v5, v7, v9}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v3

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xc

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/16 v13, 0x8

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v3, v12, v1

    const/16 v12, 0xa

    invoke-direct {p0, v7, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    .line 421
    invoke-direct {p0, v3, v5, v7}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v1

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xf

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/4 v13, 0x5

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v1, v12, v9

    const/16 v12, 0xa

    invoke-direct {p0, v5, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    .line 422
    invoke-direct {p0, v1, v3, v5}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v9

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xa

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/16 v13, 0xc

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v9, v12, v7

    const/16 v12, 0xa

    invoke-direct {p0, v3, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    .line 423
    invoke-direct {p0, v9, v1, v3}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v7

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x4

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/16 v13, 0x9

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v7, v12, v5

    const/16 v12, 0xa

    invoke-direct {p0, v1, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    .line 424
    invoke-direct {p0, v7, v9, v1}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v5

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/16 v13, 0xc

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v5, v12, v3

    const/16 v12, 0xa

    invoke-direct {p0, v9, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    .line 425
    invoke-direct {p0, v5, v7, v9}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v3

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x5

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/4 v13, 0x5

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v3, v12, v1

    const/16 v12, 0xa

    invoke-direct {p0, v7, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    .line 426
    invoke-direct {p0, v3, v5, v7}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v1

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0x8

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/16 v13, 0xe

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v1, v12, v9

    const/16 v12, 0xa

    invoke-direct {p0, v5, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    .line 427
    invoke-direct {p0, v1, v3, v5}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v9

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x7

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/4 v13, 0x6

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v9, v12, v7

    const/16 v12, 0xa

    invoke-direct {p0, v3, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    .line 428
    invoke-direct {p0, v9, v1, v3}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v7

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x6

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/16 v13, 0x8

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v7, v12, v5

    const/16 v12, 0xa

    invoke-direct {p0, v1, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    .line 429
    invoke-direct {p0, v7, v9, v1}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v5

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x2

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/16 v13, 0xd

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v5, v12, v3

    const/16 v12, 0xa

    invoke-direct {p0, v9, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    .line 430
    invoke-direct {p0, v5, v7, v9}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v3

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xd

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/4 v13, 0x6

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v3, v12, v1

    const/16 v12, 0xa

    invoke-direct {p0, v7, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    .line 431
    invoke-direct {p0, v3, v5, v7}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v1

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xe

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/4 v13, 0x5

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v1, v12, v9

    const/16 v12, 0xa

    invoke-direct {p0, v5, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    .line 432
    invoke-direct {p0, v1, v3, v5}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v9

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/16 v13, 0xf

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v9, v12, v7

    const/16 v12, 0xa

    invoke-direct {p0, v3, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    .line 433
    invoke-direct {p0, v9, v1, v3}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v7

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x3

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/16 v13, 0xd

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v7, v12, v5

    const/16 v12, 0xa

    invoke-direct {p0, v1, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    .line 434
    invoke-direct {p0, v7, v9, v1}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v5

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0x9

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/16 v13, 0xb

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v5, v12, v3

    const/16 v12, 0xa

    invoke-direct {p0, v9, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    .line 435
    invoke-direct {p0, v5, v7, v9}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v3

    iget-object v13, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xb

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/16 v13, 0xb

    invoke-direct {p0, v12, v13}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v3, v12, v1

    const/16 v12, 0xa

    invoke-direct {p0, v7, v12}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    .line 441
    iget v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->H0:I

    add-int/2addr v12, v0

    iput v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->H0:I

    .line 442
    iget v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->H1:I

    add-int/2addr v12, v2

    iput v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->H1:I

    .line 443
    iget v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->H2:I

    add-int/2addr v12, v4

    iput v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->H2:I

    .line 444
    iget v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->H3:I

    add-int/2addr v12, v6

    iput v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->H3:I

    .line 445
    iget v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->H4:I

    add-int/2addr v12, v9

    iput v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->H4:I

    .line 446
    iget v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->H5:I

    add-int/2addr v12, v1

    iput v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->H5:I

    .line 447
    iget v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->H6:I

    add-int/2addr v12, v3

    iput v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->H6:I

    .line 448
    iget v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->H7:I

    add-int/2addr v12, v5

    iput v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->H7:I

    .line 449
    iget v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->H8:I

    add-int/2addr v12, v7

    iput v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->H8:I

    .line 450
    iget v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->H9:I

    add-int/2addr v12, v8

    iput v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->H9:I

    .line 455
    const/4 v12, 0x0

    iput v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->xOff:I

    .line 456
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    array-length v12, v12

    if-eq v10, v12, :cond_0

    .line 458
    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v13, 0x0

    aput v13, v12, v10

    .line 456
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 460
    :cond_0
    return-void
.end method

.method protected processLength(J)V
    .locals 5
    .param p1, "bitLength"    # J

    .prologue
    const/16 v4, 0xe

    .line 77
    iget v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->xOff:I

    if-le v0, v4, :cond_0

    .line 79
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->processBlock()V

    .line 82
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const-wide/16 v2, -0x1

    and-long/2addr v2, p1

    long-to-int v1, v2

    aput v1, v0, v4

    .line 83
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v1, 0xf

    const/16 v2, 0x20

    ushr-long v2, p1, v2

    long-to-int v2, v2

    aput v2, v0, v1

    .line 84
    return-void
.end method

.method protected processWord([BI)V
    .locals 4
    .param p1, "in"    # [B
    .param p2, "inOff"    # I

    .prologue
    .line 65
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    iget v1, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->xOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->xOff:I

    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, p2, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x3

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    aput v2, v0, v1

    .line 68
    iget v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->xOff:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 70
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->processBlock()V

    .line 72
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 124
    invoke-super {p0}, Lorg/spongycastle/crypto/digests/GeneralDigest;->reset()V

    .line 126
    const v1, 0x67452301

    iput v1, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->H0:I

    .line 127
    const v1, -0x10325477

    iput v1, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->H1:I

    .line 128
    const v1, -0x67452302

    iput v1, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->H2:I

    .line 129
    const v1, 0x10325476

    iput v1, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->H3:I

    .line 130
    const v1, -0x3c2d1e10

    iput v1, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->H4:I

    .line 131
    const v1, 0x76543210

    iput v1, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->H5:I

    .line 132
    const v1, -0x1234568

    iput v1, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->H6:I

    .line 133
    const v1, -0x76543211

    iput v1, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->H7:I

    .line 134
    const v1, 0x1234567

    iput v1, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->H8:I

    .line 135
    const v1, 0x3c2d1e0f

    iput v1, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->H9:I

    .line 137
    iput v2, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->xOff:I

    .line 139
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    array-length v1, v1

    if-eq v0, v1, :cond_0

    .line 141
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aput v2, v1, v0

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    :cond_0
    return-void
.end method
