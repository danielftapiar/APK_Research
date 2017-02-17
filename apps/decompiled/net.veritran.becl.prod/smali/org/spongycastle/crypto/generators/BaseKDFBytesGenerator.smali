.class public Lorg/spongycastle/crypto/generators/BaseKDFBytesGenerator;
.super Ljava/lang/Object;
.source "BaseKDFBytesGenerator.java"

# interfaces
.implements Lorg/spongycastle/crypto/DerivationFunction;


# instance fields
.field private counterStart:I

.field private digest:Lorg/spongycastle/crypto/Digest;

.field private iv:[B

.field private shared:[B


# direct methods
.method protected constructor <init>(ILorg/spongycastle/crypto/Digest;)V
    .locals 0
    .param p1, "counterStart"    # I
    .param p2, "digest"    # Lorg/spongycastle/crypto/Digest;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lorg/spongycastle/crypto/generators/BaseKDFBytesGenerator;->counterStart:I

    .line 34
    iput-object p2, p0, Lorg/spongycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    .line 35
    return-void
.end method


# virtual methods
.method public generateBytes([BII)I
    .locals 12
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 81
    array-length v7, p1

    sub-int/2addr v7, p3

    if-ge v7, p2, :cond_0

    .line 83
    new-instance v7, Lorg/spongycastle/crypto/DataLengthException;

    const-string v8, "output buffer too small"

    invoke-direct {v7, v8}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 86
    :cond_0
    int-to-long v4, p3

    .line 87
    .local v4, "oBytes":J
    iget-object v7, p0, Lorg/spongycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v7}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v6

    .line 95
    .local v6, "outLen":I
    const-wide v8, 0x1ffffffffL

    cmp-long v7, v4, v8

    if-lez v7, :cond_1

    .line 97
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Output length too large"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 100
    :cond_1
    int-to-long v8, v6

    add-long/2addr v8, v4

    const-wide/16 v10, 0x1

    sub-long/2addr v8, v10

    int-to-long v10, v6

    div-long/2addr v8, v10

    long-to-int v0, v8

    .line 102
    .local v0, "cThreshold":I
    const/4 v2, 0x0

    .line 104
    .local v2, "dig":[B
    iget-object v7, p0, Lorg/spongycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v7}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v7

    new-array v2, v7, [B

    .line 106
    iget v1, p0, Lorg/spongycastle/crypto/generators/BaseKDFBytesGenerator;->counterStart:I

    .line 108
    .local v1, "counter":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_4

    .line 110
    iget-object v7, p0, Lorg/spongycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    iget-object v8, p0, Lorg/spongycastle/crypto/generators/BaseKDFBytesGenerator;->shared:[B

    const/4 v9, 0x0

    iget-object v10, p0, Lorg/spongycastle/crypto/generators/BaseKDFBytesGenerator;->shared:[B

    array-length v10, v10

    invoke-interface {v7, v8, v9, v10}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 112
    iget-object v7, p0, Lorg/spongycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    shr-int/lit8 v8, v1, 0x18

    int-to-byte v8, v8

    invoke-interface {v7, v8}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 113
    iget-object v7, p0, Lorg/spongycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    shr-int/lit8 v8, v1, 0x10

    int-to-byte v8, v8

    invoke-interface {v7, v8}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 114
    iget-object v7, p0, Lorg/spongycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    shr-int/lit8 v8, v1, 0x8

    int-to-byte v8, v8

    invoke-interface {v7, v8}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 115
    iget-object v7, p0, Lorg/spongycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    int-to-byte v8, v1

    invoke-interface {v7, v8}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 117
    iget-object v7, p0, Lorg/spongycastle/crypto/generators/BaseKDFBytesGenerator;->iv:[B

    if-eqz v7, :cond_2

    .line 119
    iget-object v7, p0, Lorg/spongycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    iget-object v8, p0, Lorg/spongycastle/crypto/generators/BaseKDFBytesGenerator;->iv:[B

    const/4 v9, 0x0

    iget-object v10, p0, Lorg/spongycastle/crypto/generators/BaseKDFBytesGenerator;->iv:[B

    array-length v10, v10

    invoke-interface {v7, v8, v9, v10}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 122
    :cond_2
    iget-object v7, p0, Lorg/spongycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    const/4 v8, 0x0

    invoke-interface {v7, v2, v8}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 124
    if-le p3, v6, :cond_3

    .line 126
    const/4 v7, 0x0

    invoke-static {v2, v7, p1, p2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    add-int/2addr p2, v6

    .line 128
    sub-int/2addr p3, v6

    .line 135
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 108
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 132
    :cond_3
    const/4 v7, 0x0

    invoke-static {v2, v7, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 138
    :cond_4
    iget-object v7, p0, Lorg/spongycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v7}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 140
    return p3
.end method

.method public getDigest()Lorg/spongycastle/crypto/Digest;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    return-object v0
.end method

.method public init(Lorg/spongycastle/crypto/DerivationParameters;)V
    .locals 3
    .param p1, "param"    # Lorg/spongycastle/crypto/DerivationParameters;

    .prologue
    .line 40
    instance-of v1, p1, Lorg/spongycastle/crypto/params/KDFParameters;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 42
    check-cast v0, Lorg/spongycastle/crypto/params/KDFParameters;

    .line 44
    .local v0, "p":Lorg/spongycastle/crypto/params/KDFParameters;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/KDFParameters;->getSharedSecret()[B

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/generators/BaseKDFBytesGenerator;->shared:[B

    .line 45
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/KDFParameters;->getIV()[B

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/generators/BaseKDFBytesGenerator;->iv:[B

    .line 58
    .end local v0    # "p":Lorg/spongycastle/crypto/params/KDFParameters;
    :goto_0
    return-void

    .line 47
    :cond_0
    instance-of v1, p1, Lorg/spongycastle/crypto/params/ISO18033KDFParameters;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 49
    check-cast v0, Lorg/spongycastle/crypto/params/ISO18033KDFParameters;

    .line 51
    .local v0, "p":Lorg/spongycastle/crypto/params/ISO18033KDFParameters;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ISO18033KDFParameters;->getSeed()[B

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/generators/BaseKDFBytesGenerator;->shared:[B

    .line 52
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/spongycastle/crypto/generators/BaseKDFBytesGenerator;->iv:[B

    goto :goto_0

    .line 56
    .end local v0    # "p":Lorg/spongycastle/crypto/params/ISO18033KDFParameters;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "KDF parameters required for KDF2Generator"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
