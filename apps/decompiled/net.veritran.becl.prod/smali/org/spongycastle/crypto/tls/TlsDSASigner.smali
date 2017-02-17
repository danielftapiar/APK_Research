.class abstract Lorg/spongycastle/crypto/tls/TlsDSASigner;
.super Ljava/lang/Object;
.source "TlsDSASigner.java"

# interfaces
.implements Lorg/spongycastle/crypto/tls/TlsSigner;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public calculateRawSignature(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;[B)[B
    .locals 3
    .param p1, "secureRandom"    # Ljava/security/SecureRandom;
    .param p2, "privateKey"    # Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    .param p3, "md5andsha1"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/CryptoException;
        }
    .end annotation

    .prologue
    .line 20
    new-instance v0, Lorg/spongycastle/crypto/signers/DSADigestSigner;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsDSASigner;->createDSAImpl()Lorg/spongycastle/crypto/DSA;

    move-result-object v1

    new-instance v2, Lorg/spongycastle/crypto/digests/NullDigest;

    invoke-direct {v2}, Lorg/spongycastle/crypto/digests/NullDigest;-><init>()V

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/signers/DSADigestSigner;-><init>(Lorg/spongycastle/crypto/DSA;Lorg/spongycastle/crypto/Digest;)V

    .line 21
    .local v0, "signer":Lorg/spongycastle/crypto/Signer;
    const/4 v1, 0x1

    new-instance v2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    invoke-direct {v2, p2, p1}, Lorg/spongycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/spongycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    invoke-interface {v0, v1, v2}, Lorg/spongycastle/crypto/Signer;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 22
    const/16 v1, 0x10

    const/16 v2, 0x14

    invoke-interface {v0, p3, v1, v2}, Lorg/spongycastle/crypto/Signer;->update([BII)V

    .line 23
    invoke-interface {v0}, Lorg/spongycastle/crypto/Signer;->generateSignature()[B

    move-result-object v1

    return-object v1
.end method

.method protected abstract createDSAImpl()Lorg/spongycastle/crypto/DSA;
.end method

.method public createVerifyer(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)Lorg/spongycastle/crypto/Signer;
    .locals 3
    .param p1, "publicKey"    # Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    .prologue
    .line 28
    new-instance v0, Lorg/spongycastle/crypto/signers/DSADigestSigner;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsDSASigner;->createDSAImpl()Lorg/spongycastle/crypto/DSA;

    move-result-object v1

    new-instance v2, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct {v2}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/signers/DSADigestSigner;-><init>(Lorg/spongycastle/crypto/DSA;Lorg/spongycastle/crypto/Digest;)V

    .line 29
    .local v0, "verifyer":Lorg/spongycastle/crypto/Signer;
    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lorg/spongycastle/crypto/Signer;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 30
    return-object v0
.end method
