.class public Lorg/spongycastle/jce/provider/JDKKeyPairGenerator$ElGamal;
.super Lorg/spongycastle/jce/provider/JDKKeyPairGenerator;
.source "JDKKeyPairGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jce/provider/JDKKeyPairGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ElGamal"
.end annotation


# instance fields
.field certainty:I

.field engine:Lorg/spongycastle/crypto/generators/ElGamalKeyPairGenerator;

.field initialised:Z

.field param:Lorg/spongycastle/crypto/params/ElGamalKeyGenerationParameters;

.field random:Ljava/security/SecureRandom;

.field strength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 275
    const-string v0, "ElGamal"

    invoke-direct {p0, v0}, Lorg/spongycastle/jce/provider/JDKKeyPairGenerator;-><init>(Ljava/lang/String;)V

    .line 267
    new-instance v0, Lorg/spongycastle/crypto/generators/ElGamalKeyPairGenerator;

    invoke-direct {v0}, Lorg/spongycastle/crypto/generators/ElGamalKeyPairGenerator;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JDKKeyPairGenerator$ElGamal;->engine:Lorg/spongycastle/crypto/generators/ElGamalKeyPairGenerator;

    .line 268
    const/16 v0, 0x400

    iput v0, p0, Lorg/spongycastle/jce/provider/JDKKeyPairGenerator$ElGamal;->strength:I

    .line 269
    const/16 v0, 0x14

    iput v0, p0, Lorg/spongycastle/jce/provider/JDKKeyPairGenerator$ElGamal;->certainty:I

    .line 270
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JDKKeyPairGenerator$ElGamal;->random:Ljava/security/SecureRandom;

    .line 271
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/jce/provider/JDKKeyPairGenerator$ElGamal;->initialised:Z

    .line 276
    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 7

    .prologue
    .line 315
    iget-boolean v4, p0, Lorg/spongycastle/jce/provider/JDKKeyPairGenerator$ElGamal;->initialised:Z

    if-nez v4, :cond_0

    .line 317
    new-instance v0, Lorg/spongycastle/crypto/generators/ElGamalParametersGenerator;

    invoke-direct {v0}, Lorg/spongycastle/crypto/generators/ElGamalParametersGenerator;-><init>()V

    .line 319
    .local v0, "pGen":Lorg/spongycastle/crypto/generators/ElGamalParametersGenerator;
    iget v4, p0, Lorg/spongycastle/jce/provider/JDKKeyPairGenerator$ElGamal;->strength:I

    iget v5, p0, Lorg/spongycastle/jce/provider/JDKKeyPairGenerator$ElGamal;->certainty:I

    iget-object v6, p0, Lorg/spongycastle/jce/provider/JDKKeyPairGenerator$ElGamal;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, v4, v5, v6}, Lorg/spongycastle/crypto/generators/ElGamalParametersGenerator;->init(IILjava/security/SecureRandom;)V

    .line 320
    new-instance v4, Lorg/spongycastle/crypto/params/ElGamalKeyGenerationParameters;

    iget-object v5, p0, Lorg/spongycastle/jce/provider/JDKKeyPairGenerator$ElGamal;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/generators/ElGamalParametersGenerator;->generateParameters()Lorg/spongycastle/crypto/params/ElGamalParameters;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/spongycastle/crypto/params/ElGamalKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/params/ElGamalParameters;)V

    iput-object v4, p0, Lorg/spongycastle/jce/provider/JDKKeyPairGenerator$ElGamal;->param:Lorg/spongycastle/crypto/params/ElGamalKeyGenerationParameters;

    .line 321
    iget-object v4, p0, Lorg/spongycastle/jce/provider/JDKKeyPairGenerator$ElGamal;->engine:Lorg/spongycastle/crypto/generators/ElGamalKeyPairGenerator;

    iget-object v5, p0, Lorg/spongycastle/jce/provider/JDKKeyPairGenerator$ElGamal;->param:Lorg/spongycastle/crypto/params/ElGamalKeyGenerationParameters;

    invoke-virtual {v4, v5}, Lorg/spongycastle/crypto/generators/ElGamalKeyPairGenerator;->init(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    .line 322
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/spongycastle/jce/provider/JDKKeyPairGenerator$ElGamal;->initialised:Z

    .line 325
    .end local v0    # "pGen":Lorg/spongycastle/crypto/generators/ElGamalParametersGenerator;
    :cond_0
    iget-object v4, p0, Lorg/spongycastle/jce/provider/JDKKeyPairGenerator$ElGamal;->engine:Lorg/spongycastle/crypto/generators/ElGamalKeyPairGenerator;

    invoke-virtual {v4}, Lorg/spongycastle/crypto/generators/ElGamalKeyPairGenerator;->generateKeyPair()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v1

    .line 326
    .local v1, "pair":Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;
    invoke-virtual {v1}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/crypto/params/ElGamalPublicKeyParameters;

    .line 327
    .local v3, "pub":Lorg/spongycastle/crypto/params/ElGamalPublicKeyParameters;
    invoke-virtual {v1}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/crypto/params/ElGamalPrivateKeyParameters;

    .line 329
    .local v2, "priv":Lorg/spongycastle/crypto/params/ElGamalPrivateKeyParameters;
    new-instance v4, Ljava/security/KeyPair;

    new-instance v5, Lorg/spongycastle/jce/provider/JCEElGamalPublicKey;

    invoke-direct {v5, v3}, Lorg/spongycastle/jce/provider/JCEElGamalPublicKey;-><init>(Lorg/spongycastle/crypto/params/ElGamalPublicKeyParameters;)V

    new-instance v6, Lorg/spongycastle/jce/provider/JCEElGamalPrivateKey;

    invoke-direct {v6, v2}, Lorg/spongycastle/jce/provider/JCEElGamalPrivateKey;-><init>(Lorg/spongycastle/crypto/params/ElGamalPrivateKeyParameters;)V

    invoke-direct {v4, v5, v6}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v4
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 0
    .param p1, "strength"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    .prologue
    .line 282
    iput p1, p0, Lorg/spongycastle/jce/provider/JDKKeyPairGenerator$ElGamal;->strength:I

    .line 283
    iput-object p2, p0, Lorg/spongycastle/jce/provider/JDKKeyPairGenerator$ElGamal;->random:Ljava/security/SecureRandom;

    .line 284
    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 7
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 291
    instance-of v2, p1, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    if-nez v2, :cond_0

    instance-of v2, p1, Ljavax/crypto/spec/DHParameterSpec;

    if-nez v2, :cond_0

    .line 293
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    const-string v3, "parameter object not a DHParameterSpec or an ElGamalParameterSpec"

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 296
    :cond_0
    instance-of v2, p1, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    if-eqz v2, :cond_1

    move-object v1, p1

    .line 298
    check-cast v1, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    .line 300
    .local v1, "elParams":Lorg/spongycastle/jce/spec/ElGamalParameterSpec;
    new-instance v2, Lorg/spongycastle/crypto/params/ElGamalKeyGenerationParameters;

    new-instance v3, Lorg/spongycastle/crypto/params/ElGamalParameters;

    invoke-virtual {v1}, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v1}, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/spongycastle/crypto/params/ElGamalParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v2, p2, v3}, Lorg/spongycastle/crypto/params/ElGamalKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/params/ElGamalParameters;)V

    iput-object v2, p0, Lorg/spongycastle/jce/provider/JDKKeyPairGenerator$ElGamal;->param:Lorg/spongycastle/crypto/params/ElGamalKeyGenerationParameters;

    .line 309
    .end local v1    # "elParams":Lorg/spongycastle/jce/spec/ElGamalParameterSpec;
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/jce/provider/JDKKeyPairGenerator$ElGamal;->engine:Lorg/spongycastle/crypto/generators/ElGamalKeyPairGenerator;

    iget-object v3, p0, Lorg/spongycastle/jce/provider/JDKKeyPairGenerator$ElGamal;->param:Lorg/spongycastle/crypto/params/ElGamalKeyGenerationParameters;

    invoke-virtual {v2, v3}, Lorg/spongycastle/crypto/generators/ElGamalKeyPairGenerator;->init(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    .line 310
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/spongycastle/jce/provider/JDKKeyPairGenerator$ElGamal;->initialised:Z

    .line 311
    return-void

    :cond_1
    move-object v0, p1

    .line 304
    check-cast v0, Ljavax/crypto/spec/DHParameterSpec;

    .line 306
    .local v0, "dhParams":Ljavax/crypto/spec/DHParameterSpec;
    new-instance v2, Lorg/spongycastle/crypto/params/ElGamalKeyGenerationParameters;

    new-instance v3, Lorg/spongycastle/crypto/params/ElGamalParameters;

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Lorg/spongycastle/crypto/params/ElGamalParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    invoke-direct {v2, p2, v3}, Lorg/spongycastle/crypto/params/ElGamalKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/params/ElGamalParameters;)V

    iput-object v2, p0, Lorg/spongycastle/jce/provider/JDKKeyPairGenerator$ElGamal;->param:Lorg/spongycastle/crypto/params/ElGamalKeyGenerationParameters;

    goto :goto_0
.end method
