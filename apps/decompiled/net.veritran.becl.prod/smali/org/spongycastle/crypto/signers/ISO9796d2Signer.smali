.class public Lorg/spongycastle/crypto/signers/ISO9796d2Signer;
.super Ljava/lang/Object;
.source "ISO9796d2Signer.java"

# interfaces
.implements Lorg/spongycastle/crypto/SignerWithRecovery;


# static fields
.field public static final TRAILER_IMPLICIT:I = 0xbc

.field public static final TRAILER_RIPEMD128:I = 0x32cc

.field public static final TRAILER_RIPEMD160:I = 0x31cc

.field public static final TRAILER_SHA1:I = 0x33cc

.field public static final TRAILER_SHA256:I = 0x34cc

.field public static final TRAILER_SHA384:I = 0x36cc

.field public static final TRAILER_SHA512:I = 0x35cc

.field public static final TRAILER_WHIRLPOOL:I = 0x37cc

.field private static trailerMap:Ljava/util/Hashtable;


# instance fields
.field private block:[B

.field private cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

.field private digest:Lorg/spongycastle/crypto/Digest;

.field private fullMessage:Z

.field private keyBits:I

.field private mBuf:[B

.field private messageLength:I

.field private preBlock:[B

.field private preSig:[B

.field private recoveredMessage:[B

.field private trailer:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 29
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->trailerMap:Ljava/util/Hashtable;

    .line 33
    sget-object v0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->trailerMap:Ljava/util/Hashtable;

    const-string v1, "RIPEMD128"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x32cc

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->trailerMap:Ljava/util/Hashtable;

    const-string v1, "RIPEMD160"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x31cc

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->trailerMap:Ljava/util/Hashtable;

    const-string v1, "SHA-1"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x33cc

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->trailerMap:Ljava/util/Hashtable;

    const-string v1, "SHA-256"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x34cc

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->trailerMap:Ljava/util/Hashtable;

    const-string v1, "SHA-384"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x36cc

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->trailerMap:Ljava/util/Hashtable;

    const-string v1, "SHA-512"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x35cc

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->trailerMap:Ljava/util/Hashtable;

    const-string v1, "Whirlpool"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x37cc

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;Lorg/spongycastle/crypto/Digest;)V
    .locals 1
    .param p1, "cipher"    # Lorg/spongycastle/crypto/AsymmetricBlockCipher;
    .param p2, "digest"    # Lorg/spongycastle/crypto/Digest;

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;-><init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;Lorg/spongycastle/crypto/Digest;Z)V

    .line 104
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;Lorg/spongycastle/crypto/Digest;Z)V
    .locals 3
    .param p1, "cipher"    # Lorg/spongycastle/crypto/AsymmetricBlockCipher;
    .param p2, "digest"    # Lorg/spongycastle/crypto/Digest;
    .param p3, "implicit"    # Z

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    .line 72
    iput-object p2, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/spongycastle/crypto/Digest;

    .line 74
    if-eqz p3, :cond_0

    .line 76
    const/16 v1, 0xbc

    iput v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->trailer:I

    .line 91
    :goto_0
    return-void

    .line 80
    :cond_0
    sget-object v1, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->trailerMap:Ljava/util/Hashtable;

    invoke-interface {p2}, Lorg/spongycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 82
    .local v0, "trailerObj":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->trailer:I

    goto :goto_0

    .line 88
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "no valid trailer for digest"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private clearBlock([B)V
    .locals 2
    .param p1, "block"    # [B

    .prologue
    .line 179
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 181
    const/4 v1, 0x0

    aput-byte v1, p1, v0

    .line 179
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 183
    :cond_0
    return-void
.end method

.method private isSameAs([B[B)Z
    .locals 4
    .param p1, "a"    # [B
    .param p2, "b"    # [B

    .prologue
    .line 137
    const/4 v1, 0x1

    .line 139
    .local v1, "isOkay":Z
    iget v2, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    iget-object v3, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    array-length v3, v3

    if-le v2, v3, :cond_2

    .line 141
    iget-object v2, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    array-length v2, v2

    array-length v3, p2

    if-le v2, v3, :cond_0

    .line 143
    const/4 v1, 0x0

    .line 146
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    array-length v2, v2

    if-eq v0, v2, :cond_5

    .line 148
    aget-byte v2, p1, v0

    aget-byte v3, p2, v0

    if-eq v2, v3, :cond_1

    .line 150
    const/4 v1, 0x0

    .line 146
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    .end local v0    # "i":I
    :cond_2
    iget v2, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    array-length v3, p2

    if-eq v2, v3, :cond_3

    .line 158
    const/4 v1, 0x0

    .line 161
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    array-length v2, p2

    if-eq v0, v2, :cond_5

    .line 163
    aget-byte v2, p1, v0

    aget-byte v3, p2, v0

    if-eq v2, v3, :cond_4

    .line 165
    const/4 v1, 0x0

    .line 161
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 170
    :cond_5
    return v1
.end method

.method private returnFalse([B)Z
    .locals 1
    .param p1, "block"    # [B

    .prologue
    .line 587
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    .line 588
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    .line 590
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public generateSignature()[B
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/CryptoException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 338
    iget-object v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v8}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    .line 340
    .local v2, "digSize":I
    const/4 v6, 0x0

    .line 341
    .local v6, "t":I
    const/4 v1, 0x0

    .line 343
    .local v1, "delta":I
    iget v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->trailer:I

    const/16 v9, 0xbc

    if-ne v8, v9, :cond_0

    .line 345
    const/16 v6, 0x8

    .line 346
    iget-object v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->block:[B

    array-length v8, v8

    sub-int/2addr v8, v2

    add-int/lit8 v1, v8, -0x1

    .line 347
    iget-object v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/spongycastle/crypto/Digest;

    iget-object v9, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->block:[B

    invoke-interface {v8, v9, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 348
    iget-object v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->block:[B

    iget-object v9, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->block:[B

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    const/16 v10, -0x44

    aput-byte v10, v8, v9

    .line 359
    :goto_0
    const/4 v3, 0x0

    .line 360
    .local v3, "header":B
    iget v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    add-int/2addr v8, v2

    mul-int/lit8 v8, v8, 0x8

    add-int/2addr v8, v6

    add-int/lit8 v8, v8, 0x4

    iget v9, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->keyBits:I

    sub-int v7, v8, v9

    .line 362
    .local v7, "x":I
    if-lez v7, :cond_1

    .line 364
    iget v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    add-int/lit8 v9, v7, 0x7

    div-int/lit8 v9, v9, 0x8

    sub-int v5, v8, v9

    .line 365
    .local v5, "mR":I
    const/16 v3, 0x60

    .line 367
    sub-int/2addr v1, v5

    .line 369
    iget-object v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    iget-object v9, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->block:[B

    invoke-static {v8, v11, v9, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 379
    .end local v5    # "mR":I
    :goto_1
    add-int/lit8 v8, v1, -0x1

    if-lez v8, :cond_3

    .line 381
    add-int/lit8 v4, v1, -0x1

    .local v4, "i":I
    :goto_2
    if-eqz v4, :cond_2

    .line 383
    iget-object v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->block:[B

    const/16 v9, -0x45

    aput-byte v9, v8, v4

    .line 381
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 352
    .end local v3    # "header":B
    .end local v4    # "i":I
    .end local v7    # "x":I
    :cond_0
    const/16 v6, 0x10

    .line 353
    iget-object v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->block:[B

    array-length v8, v8

    sub-int/2addr v8, v2

    add-int/lit8 v1, v8, -0x2

    .line 354
    iget-object v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/spongycastle/crypto/Digest;

    iget-object v9, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->block:[B

    invoke-interface {v8, v9, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 355
    iget-object v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->block:[B

    iget-object v9, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->block:[B

    array-length v9, v9

    add-int/lit8 v9, v9, -0x2

    iget v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->trailer:I

    ushr-int/lit8 v10, v10, 0x8

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    .line 356
    iget-object v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->block:[B

    iget-object v9, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->block:[B

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    iget v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->trailer:I

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    goto :goto_0

    .line 373
    .restart local v3    # "header":B
    .restart local v7    # "x":I
    :cond_1
    const/16 v3, 0x40

    .line 374
    iget v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    sub-int/2addr v1, v8

    .line 376
    iget-object v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    iget-object v9, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->block:[B

    iget v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    invoke-static {v8, v11, v9, v1, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 385
    .restart local v4    # "i":I
    :cond_2
    iget-object v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->block:[B

    add-int/lit8 v9, v1, -0x1

    aget-byte v10, v8, v9

    xor-int/lit8 v10, v10, 0x1

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    .line 386
    iget-object v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->block:[B

    const/16 v9, 0xb

    aput-byte v9, v8, v11

    .line 387
    iget-object v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->block:[B

    aget-byte v9, v8, v11

    or-int/2addr v9, v3

    int-to-byte v9, v9

    aput-byte v9, v8, v11

    .line 395
    .end local v4    # "i":I
    :goto_3
    iget-object v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    iget-object v9, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->block:[B

    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->block:[B

    array-length v10, v10

    invoke-interface {v8, v9, v11, v10}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v0

    .line 397
    .local v0, "b":[B
    iget-object v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    invoke-direct {p0, v8}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    .line 398
    iget-object v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->block:[B

    invoke-direct {p0, v8}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    .line 400
    return-object v0

    .line 391
    .end local v0    # "b":[B
    :cond_3
    iget-object v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->block:[B

    const/16 v9, 0xa

    aput-byte v9, v8, v11

    .line 392
    iget-object v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->block:[B

    aget-byte v9, v8, v11

    or-int/2addr v9, v3

    int-to-byte v9, v9

    aput-byte v9, v8, v11

    goto :goto_3
.end method

.method public getRecoveredMessage()[B
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    return-object v0
.end method

.method public hasFullMessage()Z
    .locals 1

    .prologue
    .line 601
    iget-boolean v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->fullMessage:Z

    return v0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 3
    .param p1, "forSigning"    # Z
    .param p2, "param"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 110
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/RSAKeyParameters;

    .line 112
    .local v0, "kParam":Lorg/spongycastle/crypto/params/RSAKeyParameters;
    iget-object v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1, p1, v0}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 114
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    iput v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->keyBits:I

    .line 116
    iget v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->keyBits:I

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x8

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->block:[B

    .line 118
    iget v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->trailer:I

    const/16 v2, 0xbc

    if-ne v1, v2, :cond_0

    .line 120
    iget-object v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->block:[B

    array-length v1, v1

    iget-object v2, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v2}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x2

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    .line 127
    :goto_0
    invoke-virtual {p0}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->reset()V

    .line 128
    return-void

    .line 124
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->block:[B

    array-length v1, v1

    iget-object v2, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v2}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x3

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 318
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 319
    iput v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    .line 320
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    .line 322
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    .line 327
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    .line 328
    iput-boolean v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->fullMessage:Z

    .line 329
    return-void
.end method

.method public update(B)V
    .locals 2
    .param p1, "b"    # B

    .prologue
    .line 282
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 284
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->preSig:[B

    if-nez v0, :cond_0

    iget v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 286
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    iget v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    aput-byte p1, v0, v1

    .line 289
    :cond_0
    iget v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    .line 290
    return-void
.end method

.method public update([BII)V
    .locals 4
    .param p1, "in"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 300
    iget-object v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v1, p1, p2, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 302
    iget-object v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->preSig:[B

    if-nez v1, :cond_0

    iget v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    iget-object v2, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 304
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    iget v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 306
    iget-object v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    iget v2, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    add-int/2addr v2, v0

    add-int v3, p2, v0

    aget-byte v3, p1, v3

    aput-byte v3, v1, v2

    .line 304
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 310
    .end local v0    # "i":I
    :cond_0
    iget v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    add-int/2addr v1, p3

    iput v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    .line 311
    return-void
.end method

.method public updateWithRecoveredMessage([B)V
    .locals 10
    .param p1, "signature"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 188
    iget-object v6, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    array-length v7, p1

    invoke-interface {v6, p1, v9, v7}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v0

    .line 190
    .local v0, "block":[B
    aget-byte v6, v0, v9

    and-int/lit16 v6, v6, 0xc0

    xor-int/lit8 v6, v6, 0x40

    if-eqz v6, :cond_0

    .line 192
    new-instance v6, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v7, "malformed signature"

    invoke-direct {v6, v7}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 195
    :cond_0
    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    aget-byte v6, v0, v6

    and-int/lit8 v6, v6, 0xf

    xor-int/lit8 v6, v6, 0xc

    if-eqz v6, :cond_1

    .line 197
    new-instance v6, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v7, "malformed signature"

    invoke-direct {v6, v7}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 200
    :cond_1
    const/4 v1, 0x0

    .line 202
    .local v1, "delta":I
    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    xor-int/lit16 v6, v6, 0xbc

    if-nez v6, :cond_3

    .line 204
    const/4 v1, 0x1

    .line 229
    :goto_0
    const/4 v2, 0x0

    .line 231
    .local v2, "mStart":I
    const/4 v2, 0x0

    :goto_1
    array-length v6, v0

    if-eq v2, v6, :cond_2

    .line 233
    aget-byte v6, v0, v2

    and-int/lit8 v6, v6, 0xf

    xor-int/lit8 v6, v6, 0xa

    if-nez v6, :cond_6

    .line 239
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 241
    array-length v6, v0

    sub-int/2addr v6, v1

    iget-object v7, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v7}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v7

    sub-int v3, v6, v7

    .line 246
    .local v3, "off":I
    sub-int v6, v3, v2

    if-gtz v6, :cond_7

    .line 248
    new-instance v6, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v7, "malformed block"

    invoke-direct {v6, v7}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 208
    .end local v2    # "mStart":I
    .end local v3    # "off":I
    :cond_3
    array-length v6, v0

    add-int/lit8 v6, v6, -0x2

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    array-length v7, v0

    add-int/lit8 v7, v7, -0x1

    aget-byte v7, v0, v7

    and-int/lit16 v7, v7, 0xff

    or-int v4, v6, v7

    .line 209
    .local v4, "sigTrail":I
    sget-object v6, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->trailerMap:Ljava/util/Hashtable;

    iget-object v7, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v7}, Lorg/spongycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 211
    .local v5, "trailerObj":Ljava/lang/Integer;
    if-eqz v5, :cond_4

    .line 213
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v4, v6, :cond_5

    .line 215
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "signer initialised with wrong digest for trailer "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 220
    :cond_4
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "unrecognised hash in signature"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 223
    :cond_5
    const/4 v1, 0x2

    goto :goto_0

    .line 231
    .end local v4    # "sigTrail":I
    .end local v5    # "trailerObj":Ljava/lang/Integer;
    .restart local v2    # "mStart":I
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 254
    .restart local v3    # "off":I
    :cond_7
    aget-byte v6, v0, v9

    and-int/lit8 v6, v6, 0x20

    if-nez v6, :cond_8

    .line 256
    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->fullMessage:Z

    .line 258
    sub-int v6, v3, v2

    new-array v6, v6, [B

    iput-object v6, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    .line 259
    iget-object v6, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    iget-object v7, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    array-length v7, v7

    invoke-static {v0, v2, v6, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 269
    :goto_2
    iput-object p1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->preSig:[B

    .line 270
    iput-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->preBlock:[B

    .line 272
    iget-object v6, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/spongycastle/crypto/Digest;

    iget-object v7, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    iget-object v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    array-length v8, v8

    invoke-interface {v6, v7, v9, v8}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 273
    iget-object v6, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    array-length v6, v6

    iput v6, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    .line 274
    return-void

    .line 263
    :cond_8
    iput-boolean v9, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->fullMessage:Z

    .line 265
    sub-int v6, v3, v2

    new-array v6, v6, [B

    iput-object v6, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    .line 266
    iget-object v6, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    iget-object v7, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    array-length v7, v7

    invoke-static {v0, v2, v6, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2
.end method

.method public verifySignature([B)Z
    .locals 14
    .param p1, "signature"    # [B

    .prologue
    .line 410
    const/4 v0, 0x0

    .line 413
    .local v0, "block":[B
    iget-object v11, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->preSig:[B

    if-nez v11, :cond_0

    .line 415
    const/4 v10, 0x0

    .line 418
    .local v10, "updateWithRecoveredCalled":Z
    :try_start_0
    iget-object v11, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    const/4 v12, 0x0

    array-length v13, p1

    invoke-interface {v11, p1, v12, v13}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 439
    :goto_0
    const/4 v11, 0x0

    aget-byte v11, v0, v11

    and-int/lit16 v11, v11, 0xc0

    xor-int/lit8 v11, v11, 0x40

    if-eqz v11, :cond_2

    .line 441
    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->returnFalse([B)Z

    move-result v11

    .line 582
    :goto_1
    return v11

    .line 420
    :catch_0
    move-exception v2

    .line 422
    .local v2, "e":Ljava/lang/Exception;
    const/4 v11, 0x0

    goto :goto_1

    .line 427
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v10    # "updateWithRecoveredCalled":Z
    :cond_0
    iget-object v11, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->preSig:[B

    invoke-static {v11, p1}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z

    move-result v11

    if-nez v11, :cond_1

    .line 429
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "updateWithRecoveredMessage called on different signature"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 432
    :cond_1
    const/4 v10, 0x1

    .line 433
    .restart local v10    # "updateWithRecoveredCalled":Z
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->preBlock:[B

    .line 435
    const/4 v11, 0x0

    iput-object v11, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->preSig:[B

    .line 436
    const/4 v11, 0x0

    iput-object v11, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->preBlock:[B

    goto :goto_0

    .line 444
    :cond_2
    array-length v11, v0

    add-int/lit8 v11, v11, -0x1

    aget-byte v11, v0, v11

    and-int/lit8 v11, v11, 0xf

    xor-int/lit8 v11, v11, 0xc

    if-eqz v11, :cond_3

    .line 446
    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->returnFalse([B)Z

    move-result v11

    goto :goto_1

    .line 449
    :cond_3
    const/4 v1, 0x0

    .line 451
    .local v1, "delta":I
    array-length v11, v0

    add-int/lit8 v11, v11, -0x1

    aget-byte v11, v0, v11

    and-int/lit16 v11, v11, 0xff

    xor-int/lit16 v11, v11, 0xbc

    if-nez v11, :cond_5

    .line 453
    const/4 v1, 0x1

    .line 478
    :goto_2
    const/4 v6, 0x0

    .line 480
    .local v6, "mStart":I
    const/4 v6, 0x0

    :goto_3
    array-length v11, v0

    if-eq v6, v11, :cond_4

    .line 482
    aget-byte v11, v0, v6

    and-int/lit8 v11, v11, 0xf

    xor-int/lit8 v11, v11, 0xa

    if-nez v11, :cond_8

    .line 488
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 493
    iget-object v11, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v11}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v11

    new-array v3, v11, [B

    .line 495
    .local v3, "hash":[B
    array-length v11, v0

    sub-int/2addr v11, v1

    array-length v12, v3

    sub-int v7, v11, v12

    .line 500
    .local v7, "off":I
    sub-int v11, v7, v6

    if-gtz v11, :cond_9

    .line 502
    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->returnFalse([B)Z

    move-result v11

    goto :goto_1

    .line 457
    .end local v3    # "hash":[B
    .end local v6    # "mStart":I
    .end local v7    # "off":I
    :cond_5
    array-length v11, v0

    add-int/lit8 v11, v11, -0x2

    aget-byte v11, v0, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x8

    array-length v12, v0

    add-int/lit8 v12, v12, -0x1

    aget-byte v12, v0, v12

    and-int/lit16 v12, v12, 0xff

    or-int v8, v11, v12

    .line 458
    .local v8, "sigTrail":I
    sget-object v11, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->trailerMap:Ljava/util/Hashtable;

    iget-object v12, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v12}, Lorg/spongycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 460
    .local v9, "trailerObj":Ljava/lang/Integer;
    if-eqz v9, :cond_6

    .line 462
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-eq v8, v11, :cond_7

    .line 464
    new-instance v11, Ljava/lang/IllegalStateException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "signer initialised with wrong digest for trailer "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 469
    :cond_6
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "unrecognised hash in signature"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 472
    :cond_7
    const/4 v1, 0x2

    goto :goto_2

    .line 480
    .end local v8    # "sigTrail":I
    .end local v9    # "trailerObj":Ljava/lang/Integer;
    .restart local v6    # "mStart":I
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 508
    .restart local v3    # "hash":[B
    .restart local v7    # "off":I
    :cond_9
    const/4 v11, 0x0

    aget-byte v11, v0, v11

    and-int/lit8 v11, v11, 0x20

    if-nez v11, :cond_e

    .line 510
    const/4 v11, 0x1

    iput-boolean v11, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->fullMessage:Z

    .line 513
    iget v11, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    sub-int v12, v7, v6

    if-le v11, v12, :cond_a

    .line 515
    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->returnFalse([B)Z

    move-result v11

    goto/16 :goto_1

    .line 518
    :cond_a
    iget-object v11, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v11}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 519
    iget-object v11, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/spongycastle/crypto/Digest;

    sub-int v12, v7, v6

    invoke-interface {v11, v0, v6, v12}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 520
    iget-object v11, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/spongycastle/crypto/Digest;

    const/4 v12, 0x0

    invoke-interface {v11, v3, v12}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 522
    const/4 v5, 0x1

    .line 524
    .local v5, "isOkay":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    array-length v11, v3

    if-eq v4, v11, :cond_c

    .line 526
    add-int v11, v7, v4

    aget-byte v12, v0, v11

    aget-byte v13, v3, v4

    xor-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, v0, v11

    .line 527
    add-int v11, v7, v4

    aget-byte v11, v0, v11

    if-eqz v11, :cond_b

    .line 529
    const/4 v5, 0x0

    .line 524
    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 533
    :cond_c
    if-nez v5, :cond_d

    .line 535
    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->returnFalse([B)Z

    move-result v11

    goto/16 :goto_1

    .line 538
    :cond_d
    sub-int v11, v7, v6

    new-array v11, v11, [B

    iput-object v11, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    .line 539
    iget-object v11, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    const/4 v12, 0x0

    iget-object v13, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    array-length v13, v13

    invoke-static {v0, v6, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 571
    :goto_5
    iget v11, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    if-eqz v11, :cond_12

    if-nez v10, :cond_12

    .line 573
    iget-object v11, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    iget-object v12, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->isSameAs([B[B)Z

    move-result v11

    if-nez v11, :cond_12

    .line 575
    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->returnFalse([B)Z

    move-result v11

    goto/16 :goto_1

    .line 543
    .end local v4    # "i":I
    .end local v5    # "isOkay":Z
    :cond_e
    const/4 v11, 0x0

    iput-boolean v11, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->fullMessage:Z

    .line 545
    iget-object v11, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/spongycastle/crypto/Digest;

    const/4 v12, 0x0

    invoke-interface {v11, v3, v12}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 547
    const/4 v5, 0x1

    .line 549
    .restart local v5    # "isOkay":Z
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_6
    array-length v11, v3

    if-eq v4, v11, :cond_10

    .line 551
    add-int v11, v7, v4

    aget-byte v12, v0, v11

    aget-byte v13, v3, v4

    xor-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, v0, v11

    .line 552
    add-int v11, v7, v4

    aget-byte v11, v0, v11

    if-eqz v11, :cond_f

    .line 554
    const/4 v5, 0x0

    .line 549
    :cond_f
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 558
    :cond_10
    if-nez v5, :cond_11

    .line 560
    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->returnFalse([B)Z

    move-result v11

    goto/16 :goto_1

    .line 563
    :cond_11
    sub-int v11, v7, v6

    new-array v11, v11, [B

    iput-object v11, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    .line 564
    iget-object v11, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    const/4 v12, 0x0

    iget-object v13, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    array-length v13, v13

    invoke-static {v0, v6, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5

    .line 579
    :cond_12
    iget-object v11, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    invoke-direct {p0, v11}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    .line 580
    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    .line 582
    const/4 v11, 0x1

    goto/16 :goto_1
.end method
