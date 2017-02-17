.class public Lorg/spongycastle/jce/provider/JDKPSSSigner;
.super Ljava/security/SignatureSpi;
.source "JDKPSSSigner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/jce/provider/JDKPSSSigner$NullPssDigest;,
        Lorg/spongycastle/jce/provider/JDKPSSSigner$SHA512withRSA;,
        Lorg/spongycastle/jce/provider/JDKPSSSigner$SHA384withRSA;,
        Lorg/spongycastle/jce/provider/JDKPSSSigner$SHA256withRSA;,
        Lorg/spongycastle/jce/provider/JDKPSSSigner$SHA224withRSA;,
        Lorg/spongycastle/jce/provider/JDKPSSSigner$SHA1withRSA;,
        Lorg/spongycastle/jce/provider/JDKPSSSigner$PSSwithRSA;,
        Lorg/spongycastle/jce/provider/JDKPSSSigner$nonePSS;
    }
.end annotation


# instance fields
.field private contentDigest:Lorg/spongycastle/crypto/Digest;

.field private engineParams:Ljava/security/AlgorithmParameters;

.field private isRaw:Z

.field private mgfDigest:Lorg/spongycastle/crypto/Digest;

.field private originalSpec:Ljava/security/spec/PSSParameterSpec;

.field private paramSpec:Ljava/security/spec/PSSParameterSpec;

.field private pss:Lorg/spongycastle/crypto/signers/PSSSigner;

.field private saltLength:I

.field private signer:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

.field private trailer:B


# direct methods
.method protected constructor <init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;Ljava/security/spec/PSSParameterSpec;)V
    .locals 1
    .param p1, "signer"    # Lorg/spongycastle/crypto/AsymmetricBlockCipher;
    .param p2, "paramSpecArg"    # Ljava/security/spec/PSSParameterSpec;

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/spongycastle/jce/provider/JDKPSSSigner;-><init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;Ljava/security/spec/PSSParameterSpec;Z)V

    .line 70
    return-void
.end method

.method protected constructor <init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;Ljava/security/spec/PSSParameterSpec;Z)V
    .locals 1
    .param p1, "signer"    # Lorg/spongycastle/crypto/AsymmetricBlockCipher;
    .param p2, "baseParamSpec"    # Ljava/security/spec/PSSParameterSpec;
    .param p3, "isRaw"    # Z

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    .line 78
    iput-object p1, p0, Lorg/spongycastle/jce/provider/JDKPSSSigner;->signer:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    .line 79
    iput-object p2, p0, Lorg/spongycastle/jce/provider/JDKPSSSigner;->originalSpec:Ljava/security/spec/PSSParameterSpec;

    .line 81
    if-nez p2, :cond_0

    .line 83
    sget-object v0, Ljava/security/spec/PSSParameterSpec;->DEFAULT:Ljava/security/spec/PSSParameterSpec;

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JDKPSSSigner;->paramSpec:Ljava/security/spec/PSSParameterSpec;

    .line 90
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JDKPSSSigner;->paramSpec:Ljava/security/spec/PSSParameterSpec;

    invoke-virtual {v0}, Ljava/security/spec/PSSParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/jce/provider/JCEDigestUtil;->getDigest(Ljava/lang/String;)Lorg/spongycastle/crypto/Digest;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JDKPSSSigner;->mgfDigest:Lorg/spongycastle/crypto/Digest;

    .line 91
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JDKPSSSigner;->paramSpec:Ljava/security/spec/PSSParameterSpec;

    invoke-virtual {v0}, Ljava/security/spec/PSSParameterSpec;->getSaltLength()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/jce/provider/JDKPSSSigner;->saltLength:I

    .line 92
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JDKPSSSigner;->paramSpec:Ljava/security/spec/PSSParameterSpec;

    invoke-virtual {v0}, Ljava/security/spec/PSSParameterSpec;->getTrailerField()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/spongycastle/jce/provider/JDKPSSSigner;->getTrailer(I)B

    move-result v0

    iput-byte v0, p0, Lorg/spongycastle/jce/provider/JDKPSSSigner;->trailer:B

    .line 93
    iput-boolean p3, p0, Lorg/spongycastle/jce/provider/JDKPSSSigner;->isRaw:Z

    .line 95
    invoke-direct {p0}, Lorg/spongycastle/jce/provider/JDKPSSSigner;->setupContentDigest()V

    .line 96
    return-void

    .line 87
    :cond_0
    iput-object p2, p0, Lorg/spongycastle/jce/provider/JDKPSSSigner;->paramSpec:Ljava/security/spec/PSSParameterSpec;

    goto :goto_0
.end method

.method private getTrailer(I)B
    .locals 2
    .param p1, "trailerField"    # I

    .prologue
    .line 44
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 46
    const/16 v0, -0x44

    return v0

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown trailer field"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setupContentDigest()V
    .locals 2

    .prologue
    .line 54
    iget-boolean v0, p0, Lorg/spongycastle/jce/provider/JDKPSSSigner;->isRaw:Z

    if-eqz v0, :cond_0

    .line 56
    new-instance v0, Lorg/spongycastle/jce/provider/JDKPSSSigner$NullPssDigest;

    iget-object v1, p0, Lorg/spongycastle/jce/provider/JDKPSSSigner;->mgfDigest:Lorg/spongycastle/crypto/Digest;

    invoke-direct {v0, p0, v1}, Lorg/spongycastle/jce/provider/JDKPSSSigner$NullPssDigest;-><init>(Lorg/spongycastle/jce/provider/JDKPSSSigner;Lorg/spongycastle/crypto/Digest;)V

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JDKPSSSigner;->contentDigest:Lorg/spongycastle/crypto/Digest;

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JDKPSSSigner;->mgfDigest:Lorg/spongycastle/crypto/Digest;

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JDKPSSSigner;->contentDigest:Lorg/spongycastle/crypto/Digest;

    goto :goto_0
.end method


# virtual methods
.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 262
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineGetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 3

    .prologue
    .line 230
    iget-object v1, p0, Lorg/spongycastle/jce/provider/JDKPSSSigner;->engineParams:Ljava/security/AlgorithmParameters;

    if-nez v1, :cond_0

    .line 232
    iget-object v1, p0, Lorg/spongycastle/jce/provider/JDKPSSSigner;->paramSpec:Ljava/security/spec/PSSParameterSpec;

    if-eqz v1, :cond_0

    .line 236
    :try_start_0
    const-string v1, "PSS"

    sget-object v2, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->PROVIDER_NAME:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/jce/provider/JDKPSSSigner;->engineParams:Ljava/security/AlgorithmParameters;

    .line 237
    iget-object v1, p0, Lorg/spongycastle/jce/provider/JDKPSSSigner;->engineParams:Ljava/security/AlgorithmParameters;

    iget-object v2, p0, Lorg/spongycastle/jce/provider/JDKPSSSigner;->paramSpec:Ljava/security/spec/PSSParameterSpec;

    invoke-virtual {v1, v2}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/jce/provider/JDKPSSSigner;->engineParams:Ljava/security/AlgorithmParameters;

    return-object v1

    .line 239
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .locals 6
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 130
    instance-of v0, p1, Ljava/security/interfaces/RSAPrivateKey;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Supplied key is not a RSAPrivateKey instance"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_0
    new-instance v0, Lorg/spongycastle/crypto/signers/PSSSigner;

    iget-object v1, p0, Lorg/spongycastle/jce/provider/JDKPSSSigner;->signer:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    iget-object v2, p0, Lorg/spongycastle/jce/provider/JDKPSSSigner;->contentDigest:Lorg/spongycastle/crypto/Digest;

    iget-object v3, p0, Lorg/spongycastle/jce/provider/JDKPSSSigner;->mgfDigest:Lorg/spongycastle/crypto/Digest;

    iget v4, p0, Lorg/spongycastle/jce/provider/JDKPSSSigner;->saltLength:I

    iget-byte v5, p0, Lorg/spongycastle/jce/provider/JDKPSSSigner;->trailer:B

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/crypto/signers/PSSSigner;-><init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/Digest;IB)V

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JDKPSSSigner;->pss:Lorg/spongycastle/crypto/signers/PSSSigner;

    .line 136
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JDKPSSSigner;->pss:Lorg/spongycastle/crypto/signers/PSSSigner;

    const/4 v1, 0x1

    check-cast p1, Ljava/security/interfaces/RSAPrivateKey;

    .end local p1    # "privateKey":Ljava/security/PrivateKey;
    invoke-static {p1}, Lorg/spongycastle/jce/provider/RSAUtil;->generatePrivateKeyParameter(Ljava/security/interfaces/RSAPrivateKey;)Lorg/spongycastle/crypto/params/RSAKeyParameters;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/crypto/signers/PSSSigner;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 137
    return-void
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .locals 6
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 117
    instance-of v0, p1, Ljava/security/interfaces/RSAPrivateKey;

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Supplied key is not a RSAPrivateKey instance"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    new-instance v0, Lorg/spongycastle/crypto/signers/PSSSigner;

    iget-object v1, p0, Lorg/spongycastle/jce/provider/JDKPSSSigner;->signer:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    iget-object v2, p0, Lorg/spongycastle/jce/provider/JDKPSSSigner;->contentDigest:Lorg/spongycastle/crypto/Digest;

    iget-object v3, p0, Lorg/spongycastle/jce/provider/JDKPSSSigner;->mgfDigest:Lorg/spongycastle/crypto/Digest;

    iget v4, p0, Lorg/spongycastle/jce/provider/JDKPSSSigner;->saltLength:I

    iget-byte v5, p0, Lorg/spongycastle/jce/provider/JDKPSSSigner;->trailer:B

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/crypto/signers/PSSSigner;-><init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/Digest;IB)V

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JDKPSSSigner;->pss:Lorg/spongycastle/crypto/signers/PSSSigner;

    .line 123
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JDKPSSSigner;->pss:Lorg/spongycastle/crypto/signers/PSSSigner;

    const/4 v1, 0x1

    new-instance v2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    check-cast p1, Ljava/security/interfaces/RSAPrivateKey;

    .end local p1    # "privateKey":Ljava/security/PrivateKey;
    invoke-static {p1}, Lorg/spongycastle/jce/provider/RSAUtil;->generatePrivateKeyParameter(Ljava/security/interfaces/RSAPrivateKey;)Lorg/spongycastle/crypto/params/RSAKeyParameters;

    move-result-object v3

    invoke-direct {v2, v3, p2}, Lorg/spongycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/spongycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/crypto/signers/PSSSigner;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 124
    return-void
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .locals 6
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 102
    instance-of v0, p1, Ljava/security/interfaces/RSAPublicKey;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Supplied key is not a RSAPublicKey instance"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    new-instance v0, Lorg/spongycastle/crypto/signers/PSSSigner;

    iget-object v1, p0, Lorg/spongycastle/jce/provider/JDKPSSSigner;->signer:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    iget-object v2, p0, Lorg/spongycastle/jce/provider/JDKPSSSigner;->contentDigest:Lorg/spongycastle/crypto/Digest;

    iget-object v3, p0, Lorg/spongycastle/jce/provider/JDKPSSSigner;->mgfDigest:Lorg/spongycastle/crypto/Digest;

    iget v4, p0, Lorg/spongycastle/jce/provider/JDKPSSSigner;->saltLength:I

    iget-byte v5, p0, Lorg/spongycastle/jce/provider/JDKPSSSigner;->trailer:B

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/crypto/signers/PSSSigner;-><init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/Digest;IB)V

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JDKPSSSigner;->pss:Lorg/spongycastle/crypto/signers/PSSSigner;

    .line 108
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JDKPSSSigner;->pss:Lorg/spongycastle/crypto/signers/PSSSigner;

    const/4 v1, 0x0

    check-cast p1, Ljava/security/interfaces/RSAPublicKey;

    .end local p1    # "publicKey":Ljava/security/PublicKey;
    invoke-static {p1}, Lorg/spongycastle/jce/provider/RSAUtil;->generatePublicKeyParameter(Ljava/security/interfaces/RSAPublicKey;)Lorg/spongycastle/crypto/params/RSAKeyParameters;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/crypto/signers/PSSSigner;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 110
    return-void
.end method

.method protected engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 256
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 6
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 179
    instance-of v3, p1, Ljava/security/spec/PSSParameterSpec;

    if-eqz v3, :cond_5

    move-object v2, p1

    .line 181
    check-cast v2, Ljava/security/spec/PSSParameterSpec;

    .line 183
    .local v2, "newParamSpec":Ljava/security/spec/PSSParameterSpec;
    iget-object v3, p0, Lorg/spongycastle/jce/provider/JDKPSSSigner;->originalSpec:Ljava/security/spec/PSSParameterSpec;

    if-eqz v3, :cond_0

    .line 185
    iget-object v3, p0, Lorg/spongycastle/jce/provider/JDKPSSSigner;->originalSpec:Ljava/security/spec/PSSParameterSpec;

    invoke-virtual {v3}, Ljava/security/spec/PSSParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/security/spec/PSSParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/spongycastle/jce/provider/JCEDigestUtil;->isSameDigest(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 187
    new-instance v3, Ljava/security/InvalidParameterException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parameter must be using "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/spongycastle/jce/provider/JDKPSSSigner;->originalSpec:Ljava/security/spec/PSSParameterSpec;

    invoke-virtual {v5}, Ljava/security/spec/PSSParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 190
    :cond_0
    invoke-virtual {v2}, Ljava/security/spec/PSSParameterSpec;->getMGFAlgorithm()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MGF1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/security/spec/PSSParameterSpec;->getMGFAlgorithm()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_mgf1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 192
    new-instance v3, Ljava/security/InvalidParameterException;

    const-string v4, "unknown mask generation function specified"

    invoke-direct {v3, v4}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 195
    :cond_1
    invoke-virtual {v2}, Ljava/security/spec/PSSParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v3

    instance-of v3, v3, Ljava/security/spec/MGF1ParameterSpec;

    if-nez v3, :cond_2

    .line 197
    new-instance v3, Ljava/security/InvalidParameterException;

    const-string v4, "unkown MGF parameters"

    invoke-direct {v3, v4}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 200
    :cond_2
    invoke-virtual {v2}, Ljava/security/spec/PSSParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    check-cast v0, Ljava/security/spec/MGF1ParameterSpec;

    .line 202
    .local v0, "mgfParams":Ljava/security/spec/MGF1ParameterSpec;
    invoke-virtual {v0}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/security/spec/PSSParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/spongycastle/jce/provider/JCEDigestUtil;->isSameDigest(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 204
    new-instance v3, Ljava/security/InvalidParameterException;

    const-string v4, "digest algorithm for MGF should be the same as for PSS parameters."

    invoke-direct {v3, v4}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 207
    :cond_3
    invoke-virtual {v0}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/jce/provider/JCEDigestUtil;->getDigest(Ljava/lang/String;)Lorg/spongycastle/crypto/Digest;

    move-result-object v1

    .line 209
    .local v1, "newDigest":Lorg/spongycastle/crypto/Digest;
    if-nez v1, :cond_4

    .line 211
    new-instance v3, Ljava/security/InvalidParameterException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no match on MGF digest algorithm: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 214
    :cond_4
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/spongycastle/jce/provider/JDKPSSSigner;->engineParams:Ljava/security/AlgorithmParameters;

    .line 215
    iput-object v2, p0, Lorg/spongycastle/jce/provider/JDKPSSSigner;->paramSpec:Ljava/security/spec/PSSParameterSpec;

    .line 216
    iput-object v1, p0, Lorg/spongycastle/jce/provider/JDKPSSSigner;->mgfDigest:Lorg/spongycastle/crypto/Digest;

    .line 217
    iget-object v3, p0, Lorg/spongycastle/jce/provider/JDKPSSSigner;->paramSpec:Ljava/security/spec/PSSParameterSpec;

    invoke-virtual {v3}, Ljava/security/spec/PSSParameterSpec;->getSaltLength()I

    move-result v3

    iput v3, p0, Lorg/spongycastle/jce/provider/JDKPSSSigner;->saltLength:I

    .line 218
    iget-object v3, p0, Lorg/spongycastle/jce/provider/JDKPSSSigner;->paramSpec:Ljava/security/spec/PSSParameterSpec;

    invoke-virtual {v3}, Ljava/security/spec/PSSParameterSpec;->getTrailerField()I

    move-result v3

    invoke-direct {p0, v3}, Lorg/spongycastle/jce/provider/JDKPSSSigner;->getTrailer(I)B

    move-result v3

    iput-byte v3, p0, Lorg/spongycastle/jce/provider/JDKPSSSigner;->trailer:B

    .line 220
    invoke-direct {p0}, Lorg/spongycastle/jce/provider/JDKPSSSigner;->setupContentDigest()V

    .line 226
    return-void

    .line 224
    .end local v0    # "mgfParams":Ljava/security/spec/MGF1ParameterSpec;
    .end local v1    # "newDigest":Lorg/spongycastle/crypto/Digest;
    .end local v2    # "newParamSpec":Ljava/security/spec/PSSParameterSpec;
    :cond_5
    new-instance v3, Ljava/security/InvalidParameterException;

    const-string v4, "Only PSSParameterSpec supported"

    invoke-direct {v3, v4}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected engineSign()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 160
    :try_start_0
    iget-object v1, p0, Lorg/spongycastle/jce/provider/JDKPSSSigner;->pss:Lorg/spongycastle/crypto/signers/PSSSigner;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/signers/PSSSigner;->generateSignature()[B
    :try_end_0
    .catch Lorg/spongycastle/crypto/CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 162
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Lorg/spongycastle/crypto/CryptoException;
    new-instance v1, Ljava/security/SignatureException;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/CryptoException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineUpdate(B)V
    .locals 1
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JDKPSSSigner;->pss:Lorg/spongycastle/crypto/signers/PSSSigner;

    invoke-virtual {v0, p1}, Lorg/spongycastle/crypto/signers/PSSSigner;->update(B)V

    .line 144
    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JDKPSSSigner;->pss:Lorg/spongycastle/crypto/signers/PSSSigner;

    invoke-virtual {v0, p1, p2, p3}, Lorg/spongycastle/crypto/signers/PSSSigner;->update([BII)V

    .line 153
    return-void
.end method

.method protected engineVerify([B)Z
    .locals 1
    .param p1, "sigBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JDKPSSSigner;->pss:Lorg/spongycastle/crypto/signers/PSSSigner;

    invoke-virtual {v0, p1}, Lorg/spongycastle/crypto/signers/PSSSigner;->verifySignature([B)Z

    move-result v0

    return v0
.end method
