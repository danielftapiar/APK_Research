.class public Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;
.super Ljava/lang/Object;
.source "ISO9796d2PSSSigner.java"

# interfaces
.implements Lorg/spongycastle/crypto/SignerWithRecovery;


# static fields
.field public static final TRAILER_IMPLICIT:I = 0xbc

.field public static final TRAILER_RIPEMD128:I = 0x32cc

.field public static final TRAILER_RIPEMD160:I = 0x31cc

.field public static final TRAILER_SHA1:I = 0x33cc


# instance fields
.field private block:[B

.field private cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

.field private digest:Lorg/spongycastle/crypto/Digest;

.field private fullMessage:Z

.field private hLen:I

.field private keyBits:I

.field private mBuf:[B

.field private messageLength:I

.field private random:Ljava/security/SecureRandom;

.field private recoveredMessage:[B

.field private saltLength:I

.field private standardSalt:[B

.field private trailer:I


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;Lorg/spongycastle/crypto/Digest;I)V
    .locals 1
    .param p1, "cipher"    # Lorg/spongycastle/crypto/AsymmetricBlockCipher;
    .param p2, "digest"    # Lorg/spongycastle/crypto/Digest;
    .param p3, "saltLength"    # I

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;-><init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;Lorg/spongycastle/crypto/Digest;IZ)V

    .line 106
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;Lorg/spongycastle/crypto/Digest;IZ)V
    .locals 2
    .param p1, "cipher"    # Lorg/spongycastle/crypto/AsymmetricBlockCipher;
    .param p2, "digest"    # Lorg/spongycastle/crypto/Digest;
    .param p3, "saltLength"    # I
    .param p4, "implicit"    # Z

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    .line 64
    iput-object p2, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/spongycastle/crypto/Digest;

    .line 65
    invoke-interface {p2}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    .line 66
    iput p3, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->saltLength:I

    .line 68
    if-eqz p4, :cond_0

    .line 70
    const/16 v0, 0xbc

    iput v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->trailer:I

    .line 91
    :goto_0
    return-void

    .line 74
    :cond_0
    instance-of v0, p2, Lorg/spongycastle/crypto/digests/SHA1Digest;

    if-eqz v0, :cond_1

    .line 76
    const/16 v0, 0x33cc

    iput v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->trailer:I

    goto :goto_0

    .line 78
    :cond_1
    instance-of v0, p2, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;

    if-eqz v0, :cond_2

    .line 80
    const/16 v0, 0x31cc

    iput v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->trailer:I

    goto :goto_0

    .line 82
    :cond_2
    instance-of v0, p2, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;

    if-eqz v0, :cond_3

    .line 84
    const/16 v0, 0x32cc

    iput v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->trailer:I

    goto :goto_0

    .line 88
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "no valid trailer for digest"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ItoOSP(I[B)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "sp"    # [B

    .prologue
    .line 557
    const/4 v0, 0x0

    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 558
    const/4 v0, 0x1

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 559
    const/4 v0, 0x2

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 560
    const/4 v0, 0x3

    ushr-int/lit8 v1, p1, 0x0

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 561
    return-void
.end method

.method private LtoOSP(J[B)V
    .locals 5
    .param p1, "l"    # J
    .param p3, "sp"    # [B

    .prologue
    const/4 v4, 0x0

    .line 570
    const/16 v0, 0x38

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p3, v4

    .line 571
    const/4 v0, 0x1

    const/16 v1, 0x30

    ushr-long v2, p1, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 572
    const/4 v0, 0x2

    const/16 v1, 0x28

    ushr-long v2, p1, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 573
    const/4 v0, 0x3

    const/16 v1, 0x20

    ushr-long v2, p1, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 574
    const/4 v0, 0x4

    const/16 v1, 0x18

    ushr-long v2, p1, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 575
    const/4 v0, 0x5

    const/16 v1, 0x10

    ushr-long v2, p1, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 576
    const/4 v0, 0x6

    const/16 v1, 0x8

    ushr-long v2, p1, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 577
    const/4 v0, 0x7

    ushr-long v2, p1, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 578
    return-void
.end method

.method private clearBlock([B)V
    .locals 2
    .param p1, "block"    # [B

    .prologue
    .line 206
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 208
    const/4 v1, 0x0

    aput-byte v1, p1, v0

    .line 206
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 210
    :cond_0
    return-void
.end method

.method private isSameAs([B[B)Z
    .locals 4
    .param p1, "a"    # [B
    .param p2, "b"    # [B

    .prologue
    .line 182
    const/4 v1, 0x1

    .line 184
    .local v1, "isOkay":Z
    iget v2, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    array-length v3, p2

    if-eq v2, v3, :cond_0

    .line 186
    const/4 v1, 0x0

    .line 189
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-eq v0, v2, :cond_2

    .line 191
    aget-byte v2, p1, v0

    aget-byte v3, p2, v0

    if-eq v2, v3, :cond_1

    .line 193
    const/4 v1, 0x0

    .line 189
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 197
    :cond_2
    return v1
.end method

.method private maskGeneratorFunction1([BIII)[B
    .locals 8
    .param p1, "Z"    # [B
    .param p2, "zOff"    # I
    .param p3, "zLen"    # I
    .param p4, "length"    # I

    .prologue
    const/4 v7, 0x0

    .line 588
    new-array v3, p4, [B

    .line 589
    .local v3, "mask":[B
    iget v4, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    new-array v2, v4, [B

    .line 590
    .local v2, "hashBuf":[B
    const/4 v4, 0x4

    new-array v0, v4, [B

    .line 591
    .local v0, "C":[B
    const/4 v1, 0x0

    .line 593
    .local v1, "counter":I
    iget-object v4, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v4}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 595
    :goto_0
    iget v4, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    div-int v4, p4, v4

    if-ge v1, v4, :cond_0

    .line 597
    invoke-direct {p0, v1, v0}, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->ItoOSP(I[B)V

    .line 599
    iget-object v4, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v4, p1, p2, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 600
    iget-object v4, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/spongycastle/crypto/Digest;

    array-length v5, v0

    invoke-interface {v4, v0, v7, v5}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 601
    iget-object v4, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v4, v2, v7}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 603
    iget v4, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    mul-int/2addr v4, v1

    iget v5, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    invoke-static {v2, v7, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 605
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 608
    :cond_0
    iget v4, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    mul-int/2addr v4, v1

    if-ge v4, p4, :cond_1

    .line 610
    invoke-direct {p0, v1, v0}, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->ItoOSP(I[B)V

    .line 612
    iget-object v4, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v4, p1, p2, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 613
    iget-object v4, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/spongycastle/crypto/Digest;

    array-length v5, v0

    invoke-interface {v4, v0, v7, v5}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 614
    iget-object v4, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v4, v2, v7}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 616
    iget v4, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    mul-int/2addr v4, v1

    array-length v5, v3

    iget v6, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    mul-int/2addr v6, v1

    sub-int/2addr v5, v6

    invoke-static {v2, v7, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 619
    :cond_1
    return-object v3
.end method


# virtual methods
.method public generateSignature()[B
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/CryptoException;
        }
    .end annotation

    .prologue
    .line 281
    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v10}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    .line 283
    .local v3, "digSize":I
    new-array v6, v3, [B

    .line 285
    .local v6, "m2Hash":[B
    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/spongycastle/crypto/Digest;

    const/4 v11, 0x0

    invoke-interface {v10, v6, v11}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 287
    const/16 v10, 0x8

    new-array v0, v10, [B

    .line 288
    .local v0, "C":[B
    iget v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    mul-int/lit8 v10, v10, 0x8

    int-to-long v10, v10

    invoke-direct {p0, v10, v11, v0}, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->LtoOSP(J[B)V

    .line 290
    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/spongycastle/crypto/Digest;

    const/4 v11, 0x0

    array-length v12, v0

    invoke-interface {v10, v0, v11, v12}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 292
    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/spongycastle/crypto/Digest;

    iget-object v11, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    const/4 v12, 0x0

    iget v13, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    invoke-interface {v10, v11, v12, v13}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 294
    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/spongycastle/crypto/Digest;

    const/4 v11, 0x0

    array-length v12, v6

    invoke-interface {v10, v6, v11, v12}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 298
    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->standardSalt:[B

    if-eqz v10, :cond_1

    .line 300
    iget-object v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->standardSalt:[B

    .line 308
    .local v8, "salt":[B
    :goto_0
    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/spongycastle/crypto/Digest;

    const/4 v11, 0x0

    array-length v12, v8

    invoke-interface {v10, v8, v11, v12}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 310
    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v10}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v10

    new-array v4, v10, [B

    .line 312
    .local v4, "hash":[B
    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/spongycastle/crypto/Digest;

    const/4 v11, 0x0

    invoke-interface {v10, v4, v11}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 314
    const/4 v9, 0x2

    .line 315
    .local v9, "tLength":I
    iget v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->trailer:I

    const/16 v11, 0xbc

    if-ne v10, v11, :cond_0

    .line 317
    const/4 v9, 0x1

    .line 320
    :cond_0
    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    array-length v10, v10

    iget v11, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    sub-int/2addr v10, v11

    array-length v11, v8

    sub-int/2addr v10, v11

    iget v11, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    sub-int/2addr v10, v11

    sub-int/2addr v10, v9

    add-int/lit8 v7, v10, -0x1

    .line 322
    .local v7, "off":I
    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    const/4 v11, 0x1

    aput-byte v11, v10, v7

    .line 324
    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    add-int/lit8 v13, v7, 0x1

    iget v14, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    invoke-static {v10, v11, v12, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 325
    const/4 v10, 0x0

    iget-object v11, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    add-int/lit8 v12, v7, 0x1

    iget v13, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    add-int/2addr v12, v13

    array-length v13, v8

    invoke-static {v8, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 327
    const/4 v10, 0x0

    array-length v11, v4

    iget-object v12, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    array-length v12, v12

    iget v13, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    sub-int/2addr v12, v13

    sub-int/2addr v12, v9

    invoke-direct {p0, v4, v10, v11, v12}, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->maskGeneratorFunction1([BIII)[B

    move-result-object v2

    .line 328
    .local v2, "dbMask":[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v10, v2

    if-eq v5, v10, :cond_2

    .line 330
    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    aget-byte v11, v10, v5

    aget-byte v12, v2, v5

    xor-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v10, v5

    .line 328
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 304
    .end local v2    # "dbMask":[B
    .end local v4    # "hash":[B
    .end local v5    # "i":I
    .end local v7    # "off":I
    .end local v8    # "salt":[B
    .end local v9    # "tLength":I
    :cond_1
    iget v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->saltLength:I

    new-array v8, v10, [B

    .line 305
    .restart local v8    # "salt":[B
    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->random:Ljava/security/SecureRandom;

    invoke-virtual {v10, v8}, Ljava/security/SecureRandom;->nextBytes([B)V

    goto :goto_0

    .line 333
    .restart local v2    # "dbMask":[B
    .restart local v4    # "hash":[B
    .restart local v5    # "i":I
    .restart local v7    # "off":I
    .restart local v9    # "tLength":I
    :cond_2
    const/4 v10, 0x0

    iget-object v11, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    iget-object v12, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    array-length v12, v12

    iget v13, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    sub-int/2addr v12, v13

    sub-int/2addr v12, v9

    iget v13, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    invoke-static {v4, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 335
    iget v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->trailer:I

    const/16 v11, 0xbc

    if-ne v10, v11, :cond_3

    .line 337
    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    iget-object v11, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    array-length v11, v11

    add-int/lit8 v11, v11, -0x1

    const/16 v12, -0x44

    aput-byte v12, v10, v11

    .line 345
    :goto_2
    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    const/4 v11, 0x0

    aget-byte v12, v10, v11

    and-int/lit8 v12, v12, 0x7f

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    .line 347
    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    iget-object v11, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    const/4 v12, 0x0

    iget-object v13, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    array-length v13, v13

    invoke-interface {v10, v11, v12, v13}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v1

    .line 349
    .local v1, "b":[B
    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    invoke-direct {p0, v10}, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    .line 350
    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    invoke-direct {p0, v10}, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    .line 351
    const/4 v10, 0x0

    iput v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    .line 353
    return-object v1

    .line 341
    .end local v1    # "b":[B
    :cond_3
    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    iget-object v11, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    array-length v11, v11

    add-int/lit8 v11, v11, -0x2

    iget v12, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->trailer:I

    ushr-int/lit8 v12, v12, 0x8

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    .line 342
    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    iget-object v11, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    array-length v11, v11

    add-int/lit8 v11, v11, -0x1

    iget v12, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->trailer:I

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    goto :goto_2
.end method

.method public getRecoveredMessage()[B
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    return-object v0
.end method

.method public hasFullMessage()Z
    .locals 1

    .prologue
    .line 536
    iget-boolean v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->fullMessage:Z

    return v0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 5
    .param p1, "forSigning"    # Z
    .param p2, "param"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 124
    iget v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->saltLength:I

    .line 126
    .local v1, "lengthOfSalt":I
    instance-of v3, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v3, :cond_1

    move-object v2, p2

    .line 128
    check-cast v2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    .line 130
    .local v2, "p":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/RSAKeyParameters;

    .line 131
    .local v0, "kParam":Lorg/spongycastle/crypto/params/RSAKeyParameters;
    if-eqz p1, :cond_0

    .line 133
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->random:Ljava/security/SecureRandom;

    .line 157
    .end local v2    # "p":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v3, p1, v0}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 159
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    iput v3, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->keyBits:I

    .line 161
    iget v3, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->keyBits:I

    add-int/lit8 v3, v3, 0x7

    div-int/lit8 v3, v3, 0x8

    new-array v3, v3, [B

    iput-object v3, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    .line 163
    iget v3, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->trailer:I

    const/16 v4, 0xbc

    if-ne v3, v4, :cond_3

    .line 165
    iget-object v3, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    array-length v3, v3

    iget-object v4, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v4}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v3, v3, -0x1

    new-array v3, v3, [B

    iput-object v3, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    .line 172
    :goto_1
    invoke-virtual {p0}, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->reset()V

    .line 173
    return-void

    .line 136
    .end local v0    # "kParam":Lorg/spongycastle/crypto/params/RSAKeyParameters;
    :cond_1
    instance-of v3, p2, Lorg/spongycastle/crypto/params/ParametersWithSalt;

    if-eqz v3, :cond_2

    move-object v2, p2

    .line 138
    check-cast v2, Lorg/spongycastle/crypto/params/ParametersWithSalt;

    .line 140
    .local v2, "p":Lorg/spongycastle/crypto/params/ParametersWithSalt;
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ParametersWithSalt;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/RSAKeyParameters;

    .line 141
    .restart local v0    # "kParam":Lorg/spongycastle/crypto/params/RSAKeyParameters;
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ParametersWithSalt;->getSalt()[B

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->standardSalt:[B

    .line 142
    iget-object v3, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->standardSalt:[B

    array-length v1, v3

    .line 143
    iget-object v3, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->standardSalt:[B

    array-length v3, v3

    iget v4, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->saltLength:I

    if-eq v3, v4, :cond_0

    .line 145
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Fixed salt is of wrong length"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v0    # "kParam":Lorg/spongycastle/crypto/params/RSAKeyParameters;
    .end local v2    # "p":Lorg/spongycastle/crypto/params/ParametersWithSalt;
    :cond_2
    move-object v0, p2

    .line 150
    check-cast v0, Lorg/spongycastle/crypto/params/RSAKeyParameters;

    .line 151
    .restart local v0    # "kParam":Lorg/spongycastle/crypto/params/RSAKeyParameters;
    if-eqz p1, :cond_0

    .line 153
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    iput-object v3, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->random:Ljava/security/SecureRandom;

    goto :goto_0

    .line 169
    :cond_3
    iget-object v3, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    array-length v3, v3

    iget-object v4, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v4}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v3, v3, -0x2

    new-array v3, v3, [B

    iput-object v3, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    goto :goto_1
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 260
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 261
    iput v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    .line 262
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    .line 266
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    .line 269
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    .line 271
    :cond_1
    iput-boolean v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->fullMessage:Z

    .line 272
    return-void
.end method

.method public update(B)V
    .locals 3
    .param p1, "b"    # B

    .prologue
    .line 224
    iget v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 226
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    iget v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    aput-byte p1, v0, v1

    .line 232
    :goto_0
    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/Digest;->update(B)V

    goto :goto_0
.end method

.method public update([BII)V
    .locals 2
    .param p1, "in"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 242
    :goto_0
    if-lez p3, :cond_0

    iget v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 244
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->update(B)V

    .line 245
    add-int/lit8 p2, p2, 0x1

    .line 246
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 249
    :cond_0
    if-lez p3, :cond_1

    .line 251
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 253
    :cond_1
    return-void
.end method

.method public updateWithRecoveredMessage([B)V
    .locals 2
    .param p1, "signature"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    .line 215
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public verifySignature([B)Z
    .locals 21
    .param p1, "signature"    # [B

    .prologue
    .line 367
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 377
    .local v5, "block":[B
    array-length v0, v5

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->keyBits:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x7

    div-int/lit8 v18, v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 379
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->keyBits:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x7

    div-int/lit8 v17, v17, 0x8

    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v16, v0

    .line 381
    .local v16, "tmp":[B
    const/16 v17, 0x0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    array-length v0, v5

    move/from16 v19, v0

    sub-int v18, v18, v19

    array-length v0, v5

    move/from16 v19, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-static {v5, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 382
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    .line 383
    move-object/from16 v5, v16

    .line 388
    .end local v16    # "tmp":[B
    :cond_0
    array-length v0, v5

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    aget-byte v17, v5, v17

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v0, v17

    xor-int/lit16 v0, v0, 0xbc

    move/from16 v17, v0

    if-nez v17, :cond_1

    .line 390
    const/4 v15, 0x1

    .line 426
    .local v15, "tLength":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v11, v0, [B

    .line 427
    .local v11, "m2Hash":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v0, v11, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 432
    array-length v0, v5

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    sub-int v17, v17, v15

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    move/from16 v18, v0

    array-length v0, v5

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    sub-int v19, v19, v15

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v5, v1, v2, v3}, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->maskGeneratorFunction1([BIII)[B

    move-result-object v6

    .line 433
    .local v6, "dbMask":[B
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    array-length v0, v6

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v9, v0, :cond_3

    .line 435
    aget-byte v17, v5, v9

    aget-byte v18, v6, v9

    xor-int v17, v17, v18

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v5, v9

    .line 433
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 369
    .end local v5    # "block":[B
    .end local v6    # "dbMask":[B
    .end local v9    # "i":I
    .end local v11    # "m2Hash":[B
    .end local v15    # "tLength":I
    :catch_0
    move-exception v7

    .line 371
    .local v7, "e":Ljava/lang/Exception;
    const/16 v17, 0x0

    .line 525
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_2
    return v17

    .line 394
    .restart local v5    # "block":[B
    :cond_1
    array-length v0, v5

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x2

    aget-byte v17, v5, v17

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    shl-int/lit8 v17, v17, 0x8

    array-length v0, v5

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    aget-byte v18, v5, v18

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    or-int v14, v17, v18

    .line 396
    .local v14, "sigTrail":I
    sparse-switch v14, :sswitch_data_0

    .line 417
    new-instance v17, Ljava/lang/IllegalArgumentException;

    const-string v18, "unrecognised hash in signature"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 399
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    instance-of v0, v0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;

    move/from16 v17, v0

    if-nez v17, :cond_2

    .line 401
    new-instance v17, Ljava/lang/IllegalStateException;

    const-string v18, "signer should be initialised with RIPEMD160"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 405
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    instance-of v0, v0, Lorg/spongycastle/crypto/digests/SHA1Digest;

    move/from16 v17, v0

    if-nez v17, :cond_2

    .line 407
    new-instance v17, Ljava/lang/IllegalStateException;

    const-string v18, "signer should be initialised with SHA1"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 411
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    instance-of v0, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;

    move/from16 v17, v0

    if-nez v17, :cond_2

    .line 413
    new-instance v17, Ljava/lang/IllegalStateException;

    const-string v18, "signer should be initialised with RIPEMD128"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 420
    :cond_2
    const/4 v15, 0x2

    .restart local v15    # "tLength":I
    goto/16 :goto_0

    .line 438
    .end local v14    # "sigTrail":I
    .restart local v6    # "dbMask":[B
    .restart local v9    # "i":I
    .restart local v11    # "m2Hash":[B
    :cond_3
    const/16 v17, 0x0

    aget-byte v18, v5, v17

    and-int/lit8 v18, v18, 0x7f

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v5, v17

    .line 443
    const/4 v12, 0x0

    .line 444
    .local v12, "mStart":I
    :goto_3
    array-length v0, v5

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v12, v0, :cond_4

    .line 446
    aget-byte v17, v5, v12

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 452
    :cond_4
    add-int/lit8 v12, v12, 0x1

    .line 454
    array-length v0, v5

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v12, v0, :cond_6

    .line 456
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    .line 457
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 444
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 460
    :cond_6
    const/16 v17, 0x1

    move/from16 v0, v17

    if-le v12, v0, :cond_9

    const/16 v17, 0x1

    :goto_4
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->fullMessage:Z

    .line 462
    array-length v0, v6

    move/from16 v17, v0

    sub-int v17, v17, v12

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->saltLength:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v5, v12, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 469
    const/16 v17, 0x8

    move/from16 v0, v17

    new-array v4, v0, [B

    .line 470
    .local v4, "C":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0x8

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2, v4}, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->LtoOSP(J[B)V

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    array-length v0, v4

    move/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v4, v1, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    if-eqz v17, :cond_7

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    invoke-interface/range {v17 .. v20}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 479
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    array-length v0, v11

    move/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v11, v1, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    add-int v18, v18, v12

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->saltLength:I

    move/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v5, v1, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v17

    move/from16 v0, v17

    new-array v8, v0, [B

    .line 485
    .local v8, "hash":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v0, v8, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 487
    array-length v0, v5

    move/from16 v17, v0

    sub-int v17, v17, v15

    array-length v0, v8

    move/from16 v18, v0

    sub-int v13, v17, v18

    .line 489
    .local v13, "off":I
    const/4 v10, 0x1

    .line 491
    .local v10, "isOkay":Z
    const/4 v9, 0x0

    :goto_5
    array-length v0, v8

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v9, v0, :cond_a

    .line 493
    aget-byte v17, v8, v9

    add-int v18, v13, v9

    aget-byte v18, v5, v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_8

    .line 495
    const/4 v10, 0x0

    .line 491
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 460
    .end local v4    # "C":[B
    .end local v8    # "hash":[B
    .end local v10    # "isOkay":Z
    .end local v13    # "off":I
    :cond_9
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 499
    .restart local v4    # "C":[B
    .restart local v8    # "hash":[B
    .restart local v10    # "isOkay":Z
    .restart local v13    # "off":I
    :cond_a
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    .line 500
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    .line 502
    if-nez v10, :cond_b

    .line 504
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->fullMessage:Z

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    .line 506
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 513
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    move/from16 v17, v0

    if-eqz v17, :cond_d

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->isSameAs([B[B)Z

    move-result v17

    if-nez v17, :cond_c

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    .line 518
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 521
    :cond_c
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    .line 524
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    .line 525
    const/16 v17, 0x1

    goto/16 :goto_2

    .line 396
    :sswitch_data_0
    .sparse-switch
        0x31cc -> :sswitch_0
        0x32cc -> :sswitch_2
        0x33cc -> :sswitch_1
    .end sparse-switch
.end method
