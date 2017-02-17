.class public Lorg/spongycastle/jce/provider/asymmetric/ec/Signature;
.super Lorg/spongycastle/jce/provider/DSABase;
.source "Signature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/jce/provider/asymmetric/ec/Signature$1;,
        Lorg/spongycastle/jce/provider/asymmetric/ec/Signature$CVCDSAEncoder;,
        Lorg/spongycastle/jce/provider/asymmetric/ec/Signature$StdDSAEncoder;,
        Lorg/spongycastle/jce/provider/asymmetric/ec/Signature$ecCVCDSA256;,
        Lorg/spongycastle/jce/provider/asymmetric/ec/Signature$ecCVCDSA224;,
        Lorg/spongycastle/jce/provider/asymmetric/ec/Signature$ecCVCDSA;,
        Lorg/spongycastle/jce/provider/asymmetric/ec/Signature$ecNR512;,
        Lorg/spongycastle/jce/provider/asymmetric/ec/Signature$ecNR384;,
        Lorg/spongycastle/jce/provider/asymmetric/ec/Signature$ecNR256;,
        Lorg/spongycastle/jce/provider/asymmetric/ec/Signature$ecNR224;,
        Lorg/spongycastle/jce/provider/asymmetric/ec/Signature$ecNR;,
        Lorg/spongycastle/jce/provider/asymmetric/ec/Signature$ecDSARipeMD160;,
        Lorg/spongycastle/jce/provider/asymmetric/ec/Signature$ecDSA512;,
        Lorg/spongycastle/jce/provider/asymmetric/ec/Signature$ecDSA384;,
        Lorg/spongycastle/jce/provider/asymmetric/ec/Signature$ecDSA256;,
        Lorg/spongycastle/jce/provider/asymmetric/ec/Signature$ecDSA224;,
        Lorg/spongycastle/jce/provider/asymmetric/ec/Signature$ecDSAnone;,
        Lorg/spongycastle/jce/provider/asymmetric/ec/Signature$ecDSA;
    }
.end annotation


# direct methods
.method constructor <init>(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/DSA;Lorg/spongycastle/jce/provider/DSAEncoder;)V
    .locals 0
    .param p1, "digest"    # Lorg/spongycastle/crypto/Digest;
    .param p2, "signer"    # Lorg/spongycastle/crypto/DSA;
    .param p3, "encoder"    # Lorg/spongycastle/jce/provider/DSAEncoder;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/jce/provider/DSABase;-><init>(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/DSA;Lorg/spongycastle/jce/provider/DSAEncoder;)V

    .line 41
    return-void
.end method


# virtual methods
.method protected engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .locals 4
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 86
    instance-of v1, p1, Lorg/spongycastle/jce/interfaces/ECKey;

    if-eqz v1, :cond_0

    .line 88
    invoke-static {p1}, Lorg/spongycastle/jce/provider/asymmetric/ec/ECUtil;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    .line 95
    .local v0, "param":Lorg/spongycastle/crypto/CipherParameters;
    iget-object v1, p0, Lorg/spongycastle/jce/provider/asymmetric/ec/Signature;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 97
    if-eqz p2, :cond_1

    .line 99
    iget-object v1, p0, Lorg/spongycastle/jce/provider/asymmetric/ec/Signature;->signer:Lorg/spongycastle/crypto/DSA;

    new-instance v2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    invoke-direct {v2, v0, p2}, Lorg/spongycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/spongycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    invoke-interface {v1, v3, v2}, Lorg/spongycastle/crypto/DSA;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 105
    :goto_0
    return-void

    .line 92
    .end local v0    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_0
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "can\'t recognise key type in ECDSA based signer"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 103
    .restart local v0    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/jce/provider/asymmetric/ec/Signature;->signer:Lorg/spongycastle/crypto/DSA;

    invoke-interface {v1, v3, v0}, Lorg/spongycastle/crypto/DSA;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    goto :goto_0
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .locals 5
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 48
    instance-of v3, p1, Ljava/security/interfaces/ECPublicKey;

    if-eqz v3, :cond_0

    .line 50
    invoke-static {p1}, Lorg/spongycastle/jce/provider/asymmetric/ec/ECUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    .line 75
    .local v2, "param":Lorg/spongycastle/crypto/CipherParameters;
    :goto_0
    iget-object v3, p0, Lorg/spongycastle/jce/provider/asymmetric/ec/Signature;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v3}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 76
    iget-object v3, p0, Lorg/spongycastle/jce/provider/asymmetric/ec/Signature;->signer:Lorg/spongycastle/crypto/DSA;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v2}, Lorg/spongycastle/crypto/DSA;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 77
    return-void

    .line 56
    .end local v2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    .line 58
    .local v0, "bytes":[B
    invoke-static {v0}, Lorg/spongycastle/jce/provider/JDKKeyFactory;->createPublicKeyFromDERStream([B)Ljava/security/PublicKey;

    move-result-object p1

    .line 60
    instance-of v3, p1, Ljava/security/interfaces/ECPublicKey;

    if-eqz v3, :cond_1

    .line 62
    invoke-static {p1}, Lorg/spongycastle/jce/provider/asymmetric/ec/ECUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    .restart local v2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    goto :goto_0

    .line 66
    .end local v2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_1
    new-instance v3, Ljava/security/InvalidKeyException;

    const-string v4, "can\'t recognise key type in ECDSA based signer"

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .end local v0    # "bytes":[B
    :catch_0
    move-exception v1

    .line 71
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/security/InvalidKeyException;

    const-string v4, "can\'t recognise key type in ECDSA based signer"

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
