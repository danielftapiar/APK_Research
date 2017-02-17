.class public Lorg/spongycastle/jce/provider/JDKMessageDigest;
.super Ljava/security/MessageDigest;
.source "JDKMessageDigest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/jce/provider/JDKMessageDigest$Whirlpool;,
        Lorg/spongycastle/jce/provider/JDKMessageDigest$GOST3411;,
        Lorg/spongycastle/jce/provider/JDKMessageDigest$Tiger;,
        Lorg/spongycastle/jce/provider/JDKMessageDigest$RIPEMD320;,
        Lorg/spongycastle/jce/provider/JDKMessageDigest$RIPEMD256;,
        Lorg/spongycastle/jce/provider/JDKMessageDigest$RIPEMD160;,
        Lorg/spongycastle/jce/provider/JDKMessageDigest$RIPEMD128;,
        Lorg/spongycastle/jce/provider/JDKMessageDigest$MD5;,
        Lorg/spongycastle/jce/provider/JDKMessageDigest$MD4;,
        Lorg/spongycastle/jce/provider/JDKMessageDigest$MD2;,
        Lorg/spongycastle/jce/provider/JDKMessageDigest$SHA512;,
        Lorg/spongycastle/jce/provider/JDKMessageDigest$SHA384;,
        Lorg/spongycastle/jce/provider/JDKMessageDigest$SHA256;,
        Lorg/spongycastle/jce/provider/JDKMessageDigest$SHA224;,
        Lorg/spongycastle/jce/provider/JDKMessageDigest$SHA1;
    }
.end annotation


# instance fields
.field digest:Lorg/spongycastle/crypto/Digest;


# direct methods
.method protected constructor <init>(Lorg/spongycastle/crypto/Digest;)V
    .locals 1
    .param p1, "digest"    # Lorg/spongycastle/crypto/Digest;

    .prologue
    .line 16
    invoke-interface {p1}, Lorg/spongycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/MessageDigest;-><init>(Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lorg/spongycastle/jce/provider/JDKMessageDigest;->digest:Lorg/spongycastle/crypto/Digest;

    .line 19
    return-void
.end method


# virtual methods
.method public engineDigest()[B
    .locals 3

    .prologue
    .line 42
    iget-object v1, p0, Lorg/spongycastle/jce/provider/JDKMessageDigest;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v0, v1, [B

    .line 44
    .local v0, "digestBytes":[B
    iget-object v1, p0, Lorg/spongycastle/jce/provider/JDKMessageDigest;->digest:Lorg/spongycastle/crypto/Digest;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 46
    return-object v0
.end method

.method public engineReset()V
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JDKMessageDigest;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 24
    return-void
.end method

.method public engineUpdate(B)V
    .locals 1
    .param p1, "input"    # B

    .prologue
    .line 29
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JDKMessageDigest;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 30
    return-void
.end method

.method public engineUpdate([BII)V
    .locals 1
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 37
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JDKMessageDigest;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 38
    return-void
.end method
