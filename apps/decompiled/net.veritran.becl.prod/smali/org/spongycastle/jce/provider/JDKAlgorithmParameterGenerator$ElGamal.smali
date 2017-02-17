.class public Lorg/spongycastle/jce/provider/JDKAlgorithmParameterGenerator$ElGamal;
.super Lorg/spongycastle/jce/provider/JDKAlgorithmParameterGenerator;
.source "JDKAlgorithmParameterGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jce/provider/JDKAlgorithmParameterGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ElGamal"
.end annotation


# instance fields
.field private l:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 190
    invoke-direct {p0}, Lorg/spongycastle/jce/provider/JDKAlgorithmParameterGenerator;-><init>()V

    .line 193
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/jce/provider/JDKAlgorithmParameterGenerator$ElGamal;->l:I

    return-void
.end method


# virtual methods
.method protected engineGenerateParameters()Ljava/security/AlgorithmParameters;
    .locals 8

    .prologue
    const/16 v6, 0x14

    .line 213
    new-instance v2, Lorg/spongycastle/crypto/generators/ElGamalParametersGenerator;

    invoke-direct {v2}, Lorg/spongycastle/crypto/generators/ElGamalParametersGenerator;-><init>()V

    .line 215
    .local v2, "pGen":Lorg/spongycastle/crypto/generators/ElGamalParametersGenerator;
    iget-object v4, p0, Lorg/spongycastle/jce/provider/JDKAlgorithmParameterGenerator$ElGamal;->random:Ljava/security/SecureRandom;

    if-eqz v4, :cond_0

    .line 217
    iget v4, p0, Lorg/spongycastle/jce/provider/JDKAlgorithmParameterGenerator$ElGamal;->strength:I

    iget-object v5, p0, Lorg/spongycastle/jce/provider/JDKAlgorithmParameterGenerator$ElGamal;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2, v4, v6, v5}, Lorg/spongycastle/crypto/generators/ElGamalParametersGenerator;->init(IILjava/security/SecureRandom;)V

    .line 224
    :goto_0
    invoke-virtual {v2}, Lorg/spongycastle/crypto/generators/ElGamalParametersGenerator;->generateParameters()Lorg/spongycastle/crypto/params/ElGamalParameters;

    move-result-object v1

    .line 230
    .local v1, "p":Lorg/spongycastle/crypto/params/ElGamalParameters;
    :try_start_0
    const-string v4, "ElGamal"

    sget-object v5, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->PROVIDER_NAME:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v3

    .line 231
    .local v3, "params":Ljava/security/AlgorithmParameters;
    new-instance v4, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ElGamalParameters;->getP()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ElGamalParameters;->getG()Ljava/math/BigInteger;

    move-result-object v6

    iget v7, p0, Lorg/spongycastle/jce/provider/JDKAlgorithmParameterGenerator$ElGamal;->l:I

    invoke-direct {v4, v5, v6, v7}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    invoke-virtual {v3, v4}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    return-object v3

    .line 221
    .end local v1    # "p":Lorg/spongycastle/crypto/params/ElGamalParameters;
    .end local v3    # "params":Ljava/security/AlgorithmParameters;
    :cond_0
    iget v4, p0, Lorg/spongycastle/jce/provider/JDKAlgorithmParameterGenerator$ElGamal;->strength:I

    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v4, v6, v5}, Lorg/spongycastle/crypto/generators/ElGamalParametersGenerator;->init(IILjava/security/SecureRandom;)V

    goto :goto_0

    .line 233
    .restart local v1    # "p":Lorg/spongycastle/crypto/params/ElGamalParameters;
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 3
    .param p1, "genParamSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 200
    instance-of v1, p1, Ljavax/crypto/spec/DHGenParameterSpec;

    if-nez v1, :cond_0

    .line 202
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v2, "DH parameter generator requires a DHGenParameterSpec for initialisation"

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v0, p1

    .line 204
    check-cast v0, Ljavax/crypto/spec/DHGenParameterSpec;

    .line 206
    .local v0, "spec":Ljavax/crypto/spec/DHGenParameterSpec;
    invoke-virtual {v0}, Ljavax/crypto/spec/DHGenParameterSpec;->getPrimeSize()I

    move-result v1

    iput v1, p0, Lorg/spongycastle/jce/provider/JDKAlgorithmParameterGenerator$ElGamal;->strength:I

    .line 207
    invoke-virtual {v0}, Ljavax/crypto/spec/DHGenParameterSpec;->getExponentSize()I

    move-result v1

    iput v1, p0, Lorg/spongycastle/jce/provider/JDKAlgorithmParameterGenerator$ElGamal;->l:I

    .line 208
    iput-object p2, p0, Lorg/spongycastle/jce/provider/JDKAlgorithmParameterGenerator$ElGamal;->random:Ljava/security/SecureRandom;

    .line 209
    return-void
.end method
