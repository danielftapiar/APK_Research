.class public Lorg/spongycastle/jce/provider/JDKKeyPairGenerator$GOST3410;
.super Lorg/spongycastle/jce/provider/JDKKeyPairGenerator;
.source "JDKKeyPairGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jce/provider/JDKKeyPairGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GOST3410"
.end annotation


# instance fields
.field engine:Lorg/spongycastle/crypto/generators/GOST3410KeyPairGenerator;

.field gost3410Params:Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;

.field initialised:Z

.field param:Lorg/spongycastle/crypto/params/GOST3410KeyGenerationParameters;

.field random:Ljava/security/SecureRandom;

.field strength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 346
    const-string v0, "GOST3410"

    invoke-direct {p0, v0}, Lorg/spongycastle/jce/provider/JDKKeyPairGenerator;-><init>(Ljava/lang/String;)V

    .line 338
    new-instance v0, Lorg/spongycastle/crypto/generators/GOST3410KeyPairGenerator;

    invoke-direct {v0}, Lorg/spongycastle/crypto/generators/GOST3410KeyPairGenerator;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JDKKeyPairGenerator$GOST3410;->engine:Lorg/spongycastle/crypto/generators/GOST3410KeyPairGenerator;

    .line 340
    const/16 v0, 0x400

    iput v0, p0, Lorg/spongycastle/jce/provider/JDKKeyPairGenerator$GOST3410;->strength:I

    .line 341
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JDKKeyPairGenerator$GOST3410;->random:Ljava/security/SecureRandom;

    .line 342
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/jce/provider/JDKKeyPairGenerator$GOST3410;->initialised:Z

    .line 347
    return-void
.end method

.method private init(Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;Ljava/security/SecureRandom;)V
    .locals 6
    .param p1, "gParams"    # Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;

    .prologue
    .line 361
    invoke-virtual {p1}, Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;->getPublicKeyParameters()Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;

    move-result-object v0

    .line 363
    .local v0, "spec":Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;
    new-instance v1, Lorg/spongycastle/crypto/params/GOST3410KeyGenerationParameters;

    new-instance v2, Lorg/spongycastle/crypto/params/GOST3410Parameters;

    invoke-virtual {v0}, Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0}, Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->getQ()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0}, Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->getA()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lorg/spongycastle/crypto/params/GOST3410Parameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v1, p2, v2}, Lorg/spongycastle/crypto/params/GOST3410KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/params/GOST3410Parameters;)V

    iput-object v1, p0, Lorg/spongycastle/jce/provider/JDKKeyPairGenerator$GOST3410;->param:Lorg/spongycastle/crypto/params/GOST3410KeyGenerationParameters;

    .line 365
    iget-object v1, p0, Lorg/spongycastle/jce/provider/JDKKeyPairGenerator$GOST3410;->engine:Lorg/spongycastle/crypto/generators/GOST3410KeyPairGenerator;

    iget-object v2, p0, Lorg/spongycastle/jce/provider/JDKKeyPairGenerator$GOST3410;->param:Lorg/spongycastle/crypto/params/GOST3410KeyGenerationParameters;

    invoke-virtual {v1, v2}, Lorg/spongycastle/crypto/generators/GOST3410KeyPairGenerator;->init(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    .line 367
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/spongycastle/jce/provider/JDKKeyPairGenerator$GOST3410;->initialised:Z

    .line 368
    iput-object p1, p0, Lorg/spongycastle/jce/provider/JDKKeyPairGenerator$GOST3410;->gost3410Params:Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;

    .line 369
    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 7

    .prologue
    .line 386
    iget-boolean v3, p0, Lorg/spongycastle/jce/provider/JDKKeyPairGenerator$GOST3410;->initialised:Z

    if-nez v3, :cond_0

    .line 388
    new-instance v3, Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;

    sget-object v4, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_94_CryptoPro_A:Lorg/spongycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v4}, Lorg/spongycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-direct {p0, v3, v4}, Lorg/spongycastle/jce/provider/JDKKeyPairGenerator$GOST3410;->init(Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;Ljava/security/SecureRandom;)V

    .line 391
    :cond_0
    iget-object v3, p0, Lorg/spongycastle/jce/provider/JDKKeyPairGenerator$GOST3410;->engine:Lorg/spongycastle/crypto/generators/GOST3410KeyPairGenerator;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/generators/GOST3410KeyPairGenerator;->generateKeyPair()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    .line 392
    .local v0, "pair":Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/crypto/params/GOST3410PublicKeyParameters;

    .line 393
    .local v2, "pub":Lorg/spongycastle/crypto/params/GOST3410PublicKeyParameters;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/crypto/params/GOST3410PrivateKeyParameters;

    .line 395
    .local v1, "priv":Lorg/spongycastle/crypto/params/GOST3410PrivateKeyParameters;
    new-instance v3, Ljava/security/KeyPair;

    new-instance v4, Lorg/spongycastle/jce/provider/JDKGOST3410PublicKey;

    iget-object v5, p0, Lorg/spongycastle/jce/provider/JDKKeyPairGenerator$GOST3410;->gost3410Params:Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;

    invoke-direct {v4, v2, v5}, Lorg/spongycastle/jce/provider/JDKGOST3410PublicKey;-><init>(Lorg/spongycastle/crypto/params/GOST3410PublicKeyParameters;Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;)V

    new-instance v5, Lorg/spongycastle/jce/provider/JDKGOST3410PrivateKey;

    iget-object v6, p0, Lorg/spongycastle/jce/provider/JDKKeyPairGenerator$GOST3410;->gost3410Params:Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;

    invoke-direct {v5, v1, v6}, Lorg/spongycastle/jce/provider/JDKGOST3410PrivateKey;-><init>(Lorg/spongycastle/crypto/params/GOST3410PrivateKeyParameters;Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;)V

    invoke-direct {v3, v4, v5}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v3
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 0
    .param p1, "strength"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    .prologue
    .line 353
    iput p1, p0, Lorg/spongycastle/jce/provider/JDKKeyPairGenerator$GOST3410;->strength:I

    .line 354
    iput-object p2, p0, Lorg/spongycastle/jce/provider/JDKKeyPairGenerator$GOST3410;->random:Ljava/security/SecureRandom;

    .line 355
    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 2
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 376
    instance-of v0, p1, Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;

    if-nez v0, :cond_0

    .line 378
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "parameter object not a GOST3410ParameterSpec"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 381
    :cond_0
    check-cast p1, Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;

    .end local p1    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/jce/provider/JDKKeyPairGenerator$GOST3410;->init(Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;Ljava/security/SecureRandom;)V

    .line 382
    return-void
.end method
