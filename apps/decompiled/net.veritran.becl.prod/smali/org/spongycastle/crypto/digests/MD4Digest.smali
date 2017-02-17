.class public Lorg/spongycastle/crypto/digests/MD4Digest;
.super Lorg/spongycastle/crypto/digests/GeneralDigest;
.source "MD4Digest.java"


# static fields
.field private static final DIGEST_LENGTH:I = 0x10

.field private static final S11:I = 0x3

.field private static final S12:I = 0x7

.field private static final S13:I = 0xb

.field private static final S14:I = 0x13

.field private static final S21:I = 0x3

.field private static final S22:I = 0x5

.field private static final S23:I = 0x9

.field private static final S24:I = 0xd

.field private static final S31:I = 0x3

.field private static final S32:I = 0x9

.field private static final S33:I = 0xb

.field private static final S34:I = 0xf


# instance fields
.field private H1:I

.field private H2:I

.field private H3:I

.field private H4:I

.field private X:[I

.field private xOff:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/spongycastle/crypto/digests/GeneralDigest;-><init>()V

    .line 18
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->X:[I

    .line 26
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/MD4Digest;->reset()V

    .line 27
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/digests/MD4Digest;)V
    .locals 4
    .param p1, "t"    # Lorg/spongycastle/crypto/digests/MD4Digest;

    .prologue
    const/4 v3, 0x0

    .line 35
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/digests/GeneralDigest;-><init>(Lorg/spongycastle/crypto/digests/GeneralDigest;)V

    .line 18
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->X:[I

    .line 37
    iget v0, p1, Lorg/spongycastle/crypto/digests/MD4Digest;->H1:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->H1:I

    .line 38
    iget v0, p1, Lorg/spongycastle/crypto/digests/MD4Digest;->H2:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->H2:I

    .line 39
    iget v0, p1, Lorg/spongycastle/crypto/digests/MD4Digest;->H3:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->H3:I

    .line 40
    iget v0, p1, Lorg/spongycastle/crypto/digests/MD4Digest;->H4:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->H4:I

    .line 42
    iget-object v0, p1, Lorg/spongycastle/crypto/digests/MD4Digest;->X:[I

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->X:[I

    iget-object v2, p1, Lorg/spongycastle/crypto/digests/MD4Digest;->X:[I

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    iget v0, p1, Lorg/spongycastle/crypto/digests/MD4Digest;->xOff:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->xOff:I

    .line 44
    return-void
.end method

.method private F(III)I
    .locals 2
    .param p1, "u"    # I
    .param p2, "v"    # I
    .param p3, "w"    # I

    .prologue
    .line 170
    and-int v0, p1, p2

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v1, p3

    or-int/2addr v0, v1

    return v0
.end method

.method private G(III)I
    .locals 2
    .param p1, "u"    # I
    .param p2, "v"    # I
    .param p3, "w"    # I

    .prologue
    .line 178
    and-int v0, p1, p2

    and-int v1, p1, p3

    or-int/2addr v0, v1

    and-int v1, p2, p3

    or-int/2addr v0, v1

    return v0
.end method

.method private H(III)I
    .locals 1
    .param p1, "u"    # I
    .param p2, "v"    # I
    .param p3, "w"    # I

    .prologue
    .line 186
    xor-int v0, p1, p2

    xor-int/2addr v0, p3

    return v0
.end method

.method private rotateLeft(II)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "n"    # I

    .prologue
    .line 159
    shl-int v0, p1, p2

    rsub-int/lit8 v1, p2, 0x20

    ushr-int v1, p1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private unpackWord(I[BI)V
    .locals 2
    .param p1, "word"    # I
    .param p2, "out"    # [B
    .param p3, "outOff"    # I

    .prologue
    .line 86
    int-to-byte v0, p1

    aput-byte v0, p2, p3

    .line 87
    add-int/lit8 v0, p3, 0x1

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 88
    add-int/lit8 v0, p3, 0x2

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 89
    add-int/lit8 v0, p3, 0x3

    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 90
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 2
    .param p1, "out"    # [B
    .param p2, "outOff"    # I

    .prologue
    .line 96
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/MD4Digest;->finish()V

    .line 98
    iget v0, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->H1:I

    invoke-direct {p0, v0, p1, p2}, Lorg/spongycastle/crypto/digests/MD4Digest;->unpackWord(I[BI)V

    .line 99
    iget v0, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->H2:I

    add-int/lit8 v1, p2, 0x4

    invoke-direct {p0, v0, p1, v1}, Lorg/spongycastle/crypto/digests/MD4Digest;->unpackWord(I[BI)V

    .line 100
    iget v0, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->H3:I

    add-int/lit8 v1, p2, 0x8

    invoke-direct {p0, v0, p1, v1}, Lorg/spongycastle/crypto/digests/MD4Digest;->unpackWord(I[BI)V

    .line 101
    iget v0, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->H4:I

    add-int/lit8 v1, p2, 0xc

    invoke-direct {p0, v0, p1, v1}, Lorg/spongycastle/crypto/digests/MD4Digest;->unpackWord(I[BI)V

    .line 103
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/MD4Digest;->reset()V

    .line 105
    const/16 v0, 0x10

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const-string v0, "MD4"

    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    .prologue
    .line 53
    const/16 v0, 0x10

    return v0
.end method

.method protected processBlock()V
    .locals 13

    .prologue
    const/16 v12, 0xb

    const/16 v11, 0x9

    const/4 v10, 0x3

    const v9, 0x6ed9eba1

    const v8, 0x5a827999

    .line 191
    iget v0, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->H1:I

    .line 192
    .local v0, "a":I
    iget v1, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->H2:I

    .line 193
    .local v1, "b":I
    iget v2, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->H3:I

    .line 194
    .local v2, "c":I
    iget v3, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->H4:I

    .line 199
    .local v3, "d":I
    invoke-direct {p0, v1, v2, v3}, Lorg/spongycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v10}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v0

    .line 200
    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    add-int/2addr v5, v6

    const/4 v6, 0x7

    invoke-direct {p0, v5, v6}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    .line 201
    invoke-direct {p0, v3, v0, v1}, Lorg/spongycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v7, 0x2

    aget v6, v6, v7

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v12}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    .line 202
    invoke-direct {p0, v2, v3, v0}, Lorg/spongycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->X:[I

    aget v6, v6, v10

    add-int/2addr v5, v6

    const/16 v6, 0x13

    invoke-direct {p0, v5, v6}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    .line 203
    invoke-direct {p0, v1, v2, v3}, Lorg/spongycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v7, 0x4

    aget v6, v6, v7

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v10}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v0

    .line 204
    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v7, 0x5

    aget v6, v6, v7

    add-int/2addr v5, v6

    const/4 v6, 0x7

    invoke-direct {p0, v5, v6}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    .line 205
    invoke-direct {p0, v3, v0, v1}, Lorg/spongycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v7, 0x6

    aget v6, v6, v7

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v12}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    .line 206
    invoke-direct {p0, v2, v3, v0}, Lorg/spongycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v7, 0x7

    aget v6, v6, v7

    add-int/2addr v5, v6

    const/16 v6, 0x13

    invoke-direct {p0, v5, v6}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    .line 207
    invoke-direct {p0, v1, v2, v3}, Lorg/spongycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v7, 0x8

    aget v6, v6, v7

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v10}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v0

    .line 208
    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->X:[I

    aget v6, v6, v11

    add-int/2addr v5, v6

    const/4 v6, 0x7

    invoke-direct {p0, v5, v6}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    .line 209
    invoke-direct {p0, v3, v0, v1}, Lorg/spongycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v7, 0xa

    aget v6, v6, v7

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v12}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    .line 210
    invoke-direct {p0, v2, v3, v0}, Lorg/spongycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->X:[I

    aget v6, v6, v12

    add-int/2addr v5, v6

    const/16 v6, 0x13

    invoke-direct {p0, v5, v6}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    .line 211
    invoke-direct {p0, v1, v2, v3}, Lorg/spongycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v7, 0xc

    aget v6, v6, v7

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v10}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v0

    .line 212
    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v7, 0xd

    aget v6, v6, v7

    add-int/2addr v5, v6

    const/4 v6, 0x7

    invoke-direct {p0, v5, v6}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    .line 213
    invoke-direct {p0, v3, v0, v1}, Lorg/spongycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v7, 0xe

    aget v6, v6, v7

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v12}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    .line 214
    invoke-direct {p0, v2, v3, v0}, Lorg/spongycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v7, 0xf

    aget v6, v6, v7

    add-int/2addr v5, v6

    const/16 v6, 0x13

    invoke-direct {p0, v5, v6}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    .line 219
    invoke-direct {p0, v1, v2, v3}, Lorg/spongycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    add-int/2addr v5, v6

    add-int/2addr v5, v8

    invoke-direct {p0, v5, v10}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v0

    .line 220
    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v7, 0x4

    aget v6, v6, v7

    add-int/2addr v5, v6

    add-int/2addr v5, v8

    const/4 v6, 0x5

    invoke-direct {p0, v5, v6}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    .line 221
    invoke-direct {p0, v3, v0, v1}, Lorg/spongycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v7, 0x8

    aget v6, v6, v7

    add-int/2addr v5, v6

    add-int/2addr v5, v8

    invoke-direct {p0, v5, v11}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    .line 222
    invoke-direct {p0, v2, v3, v0}, Lorg/spongycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v7, 0xc

    aget v6, v6, v7

    add-int/2addr v5, v6

    add-int/2addr v5, v8

    const/16 v6, 0xd

    invoke-direct {p0, v5, v6}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    .line 223
    invoke-direct {p0, v1, v2, v3}, Lorg/spongycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    add-int/2addr v5, v6

    add-int/2addr v5, v8

    invoke-direct {p0, v5, v10}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v0

    .line 224
    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v7, 0x5

    aget v6, v6, v7

    add-int/2addr v5, v6

    add-int/2addr v5, v8

    const/4 v6, 0x5

    invoke-direct {p0, v5, v6}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    .line 225
    invoke-direct {p0, v3, v0, v1}, Lorg/spongycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->X:[I

    aget v6, v6, v11

    add-int/2addr v5, v6

    add-int/2addr v5, v8

    invoke-direct {p0, v5, v11}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    .line 226
    invoke-direct {p0, v2, v3, v0}, Lorg/spongycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v7, 0xd

    aget v6, v6, v7

    add-int/2addr v5, v6

    add-int/2addr v5, v8

    const/16 v6, 0xd

    invoke-direct {p0, v5, v6}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    .line 227
    invoke-direct {p0, v1, v2, v3}, Lorg/spongycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v7, 0x2

    aget v6, v6, v7

    add-int/2addr v5, v6

    add-int/2addr v5, v8

    invoke-direct {p0, v5, v10}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v0

    .line 228
    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v7, 0x6

    aget v6, v6, v7

    add-int/2addr v5, v6

    add-int/2addr v5, v8

    const/4 v6, 0x5

    invoke-direct {p0, v5, v6}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    .line 229
    invoke-direct {p0, v3, v0, v1}, Lorg/spongycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v7, 0xa

    aget v6, v6, v7

    add-int/2addr v5, v6

    add-int/2addr v5, v8

    invoke-direct {p0, v5, v11}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    .line 230
    invoke-direct {p0, v2, v3, v0}, Lorg/spongycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v7, 0xe

    aget v6, v6, v7

    add-int/2addr v5, v6

    add-int/2addr v5, v8

    const/16 v6, 0xd

    invoke-direct {p0, v5, v6}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    .line 231
    invoke-direct {p0, v1, v2, v3}, Lorg/spongycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->X:[I

    aget v6, v6, v10

    add-int/2addr v5, v6

    add-int/2addr v5, v8

    invoke-direct {p0, v5, v10}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v0

    .line 232
    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v7, 0x7

    aget v6, v6, v7

    add-int/2addr v5, v6

    add-int/2addr v5, v8

    const/4 v6, 0x5

    invoke-direct {p0, v5, v6}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    .line 233
    invoke-direct {p0, v3, v0, v1}, Lorg/spongycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->X:[I

    aget v6, v6, v12

    add-int/2addr v5, v6

    add-int/2addr v5, v8

    invoke-direct {p0, v5, v11}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    .line 234
    invoke-direct {p0, v2, v3, v0}, Lorg/spongycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v7, 0xf

    aget v6, v6, v7

    add-int/2addr v5, v6

    add-int/2addr v5, v8

    const/16 v6, 0xd

    invoke-direct {p0, v5, v6}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    .line 239
    invoke-direct {p0, v1, v2, v3}, Lorg/spongycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    add-int/2addr v5, v6

    add-int/2addr v5, v9

    invoke-direct {p0, v5, v10}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v0

    .line 240
    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v7, 0x8

    aget v6, v6, v7

    add-int/2addr v5, v6

    add-int/2addr v5, v9

    invoke-direct {p0, v5, v11}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    .line 241
    invoke-direct {p0, v3, v0, v1}, Lorg/spongycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v7, 0x4

    aget v6, v6, v7

    add-int/2addr v5, v6

    add-int/2addr v5, v9

    invoke-direct {p0, v5, v12}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    .line 242
    invoke-direct {p0, v2, v3, v0}, Lorg/spongycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v7, 0xc

    aget v6, v6, v7

    add-int/2addr v5, v6

    add-int/2addr v5, v9

    const/16 v6, 0xf

    invoke-direct {p0, v5, v6}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    .line 243
    invoke-direct {p0, v1, v2, v3}, Lorg/spongycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v7, 0x2

    aget v6, v6, v7

    add-int/2addr v5, v6

    add-int/2addr v5, v9

    invoke-direct {p0, v5, v10}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v0

    .line 244
    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v7, 0xa

    aget v6, v6, v7

    add-int/2addr v5, v6

    add-int/2addr v5, v9

    invoke-direct {p0, v5, v11}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    .line 245
    invoke-direct {p0, v3, v0, v1}, Lorg/spongycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v7, 0x6

    aget v6, v6, v7

    add-int/2addr v5, v6

    add-int/2addr v5, v9

    invoke-direct {p0, v5, v12}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    .line 246
    invoke-direct {p0, v2, v3, v0}, Lorg/spongycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v7, 0xe

    aget v6, v6, v7

    add-int/2addr v5, v6

    add-int/2addr v5, v9

    const/16 v6, 0xf

    invoke-direct {p0, v5, v6}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    .line 247
    invoke-direct {p0, v1, v2, v3}, Lorg/spongycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    add-int/2addr v5, v6

    add-int/2addr v5, v9

    invoke-direct {p0, v5, v10}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v0

    .line 248
    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->X:[I

    aget v6, v6, v11

    add-int/2addr v5, v6

    add-int/2addr v5, v9

    invoke-direct {p0, v5, v11}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    .line 249
    invoke-direct {p0, v3, v0, v1}, Lorg/spongycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v7, 0x5

    aget v6, v6, v7

    add-int/2addr v5, v6

    add-int/2addr v5, v9

    invoke-direct {p0, v5, v12}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    .line 250
    invoke-direct {p0, v2, v3, v0}, Lorg/spongycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v7, 0xd

    aget v6, v6, v7

    add-int/2addr v5, v6

    add-int/2addr v5, v9

    const/16 v6, 0xf

    invoke-direct {p0, v5, v6}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    .line 251
    invoke-direct {p0, v1, v2, v3}, Lorg/spongycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->X:[I

    aget v6, v6, v10

    add-int/2addr v5, v6

    add-int/2addr v5, v9

    invoke-direct {p0, v5, v10}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v0

    .line 252
    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->X:[I

    aget v6, v6, v12

    add-int/2addr v5, v6

    add-int/2addr v5, v9

    invoke-direct {p0, v5, v11}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    .line 253
    invoke-direct {p0, v3, v0, v1}, Lorg/spongycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v7, 0x7

    aget v6, v6, v7

    add-int/2addr v5, v6

    add-int/2addr v5, v9

    invoke-direct {p0, v5, v12}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    .line 254
    invoke-direct {p0, v2, v3, v0}, Lorg/spongycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v7, 0xf

    aget v6, v6, v7

    add-int/2addr v5, v6

    add-int/2addr v5, v9

    const/16 v6, 0xf

    invoke-direct {p0, v5, v6}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    .line 256
    iget v5, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->H1:I

    add-int/2addr v5, v0

    iput v5, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->H1:I

    .line 257
    iget v5, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->H2:I

    add-int/2addr v5, v1

    iput v5, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->H2:I

    .line 258
    iget v5, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->H3:I

    add-int/2addr v5, v2

    iput v5, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->H3:I

    .line 259
    iget v5, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->H4:I

    add-int/2addr v5, v3

    iput v5, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->H4:I

    .line 264
    const/4 v5, 0x0

    iput v5, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->xOff:I

    .line 265
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v5, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->X:[I

    array-length v5, v5

    if-eq v4, v5, :cond_0

    .line 267
    iget-object v5, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v6, 0x0

    aput v6, v5, v4

    .line 265
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 269
    :cond_0
    return-void
.end method

.method protected processLength(J)V
    .locals 5
    .param p1, "bitLength"    # J

    .prologue
    const/16 v4, 0xe

    .line 72
    iget v0, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->xOff:I

    if-le v0, v4, :cond_0

    .line 74
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/MD4Digest;->processBlock()V

    .line 77
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->X:[I

    const-wide/16 v2, -0x1

    and-long/2addr v2, p1

    long-to-int v1, v2

    aput v1, v0, v4

    .line 78
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v1, 0xf

    const/16 v2, 0x20

    ushr-long v2, p1, v2

    long-to-int v2, v2

    aput v2, v0, v1

    .line 79
    return-void
.end method

.method protected processWord([BI)V
    .locals 4
    .param p1, "in"    # [B
    .param p2, "inOff"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->X:[I

    iget v1, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->xOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->xOff:I

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

    .line 63
    iget v0, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->xOff:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 65
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/MD4Digest;->processBlock()V

    .line 67
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 113
    invoke-super {p0}, Lorg/spongycastle/crypto/digests/GeneralDigest;->reset()V

    .line 115
    const v1, 0x67452301

    iput v1, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->H1:I

    .line 116
    const v1, -0x10325477

    iput v1, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->H2:I

    .line 117
    const v1, -0x67452302

    iput v1, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->H3:I

    .line 118
    const v1, 0x10325476

    iput v1, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->H4:I

    .line 120
    iput v2, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->xOff:I

    .line 122
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->X:[I

    array-length v1, v1

    if-eq v0, v1, :cond_0

    .line 124
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->X:[I

    aput v2, v1, v0

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    :cond_0
    return-void
.end method
