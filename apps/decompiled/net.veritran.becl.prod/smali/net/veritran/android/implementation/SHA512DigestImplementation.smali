.class public Lnet/veritran/android/implementation/SHA512DigestImplementation;
.super Ljava/lang/Object;
.source "SHA512DigestImplementation.java"

# interfaces
.implements Lnet/veritran/vtuserapplication/utils/security/DigestInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "SHA256DigestImplementation"


# instance fields
.field private messageDigest:Lorg/spongycastle/crypto/digests/SHA512Digest;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA512Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/SHA512Digest;-><init>()V

    iput-object v0, p0, Lnet/veritran/android/implementation/SHA512DigestImplementation;->messageDigest:Lorg/spongycastle/crypto/digests/SHA512Digest;

    .line 19
    return-void
.end method


# virtual methods
.method public doFinal([BI)V
    .locals 1
    .param p1, "out"    # [B
    .param p2, "outOff"    # I

    .prologue
    .line 41
    iget-object v0, p0, Lnet/veritran/android/implementation/SHA512DigestImplementation;->messageDigest:Lorg/spongycastle/crypto/digests/SHA512Digest;

    invoke-virtual {v0, p1, p2}, Lorg/spongycastle/crypto/digests/SHA512Digest;->doFinal([BI)I

    .line 49
    return-void
.end method

.method public getDigestSize()I
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lnet/veritran/android/implementation/SHA512DigestImplementation;->messageDigest:Lorg/spongycastle/crypto/digests/SHA512Digest;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lnet/veritran/android/implementation/SHA512DigestImplementation;->messageDigest:Lorg/spongycastle/crypto/digests/SHA512Digest;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/digests/SHA512Digest;->getDigestSize()I

    move-result v0

    return v0

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Digest could not be initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public update([BII)V
    .locals 2
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I

    .prologue
    .line 23
    iget-object v0, p0, Lnet/veritran/android/implementation/SHA512DigestImplementation;->messageDigest:Lorg/spongycastle/crypto/digests/SHA512Digest;

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lnet/veritran/android/implementation/SHA512DigestImplementation;->messageDigest:Lorg/spongycastle/crypto/digests/SHA512Digest;

    invoke-virtual {v0, p1, p2, p3}, Lorg/spongycastle/crypto/digests/SHA512Digest;->update([BII)V

    .line 28
    return-void

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Digest could not be initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
