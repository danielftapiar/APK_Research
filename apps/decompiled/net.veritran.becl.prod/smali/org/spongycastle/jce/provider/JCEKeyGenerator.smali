.class public Lorg/spongycastle/jce/provider/JCEKeyGenerator;
.super Ljavax/crypto/KeyGeneratorSpi;
.source "JCEKeyGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/jce/provider/JCEKeyGenerator$HMACTIGER;,
        Lorg/spongycastle/jce/provider/JCEKeyGenerator$HMACSHA512;,
        Lorg/spongycastle/jce/provider/JCEKeyGenerator$HMACSHA384;,
        Lorg/spongycastle/jce/provider/JCEKeyGenerator$HMACSHA256;,
        Lorg/spongycastle/jce/provider/JCEKeyGenerator$HMACSHA224;,
        Lorg/spongycastle/jce/provider/JCEKeyGenerator$HMACSHA1;,
        Lorg/spongycastle/jce/provider/JCEKeyGenerator$RIPEMD160HMAC;,
        Lorg/spongycastle/jce/provider/JCEKeyGenerator$RIPEMD128HMAC;,
        Lorg/spongycastle/jce/provider/JCEKeyGenerator$MD5HMAC;,
        Lorg/spongycastle/jce/provider/JCEKeyGenerator$MD4HMAC;,
        Lorg/spongycastle/jce/provider/JCEKeyGenerator$MD2HMAC;,
        Lorg/spongycastle/jce/provider/JCEKeyGenerator$GOST28147;,
        Lorg/spongycastle/jce/provider/JCEKeyGenerator$RC2;,
        Lorg/spongycastle/jce/provider/JCEKeyGenerator$DES;
    }
.end annotation


# instance fields
.field protected algName:Ljava/lang/String;

.field protected defaultKeySize:I

.field protected engine:Lorg/spongycastle/crypto/CipherKeyGenerator;

.field protected keySize:I

.field protected uninitialised:Z


# direct methods
.method protected constructor <init>(Ljava/lang/String;ILorg/spongycastle/crypto/CipherKeyGenerator;)V
    .locals 1
    .param p1, "algName"    # Ljava/lang/String;
    .param p2, "defaultKeySize"    # I
    .param p3, "engine"    # Lorg/spongycastle/crypto/CipherKeyGenerator;

    .prologue
    .line 30
    invoke-direct {p0}, Ljavax/crypto/KeyGeneratorSpi;-><init>()V

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/jce/provider/JCEKeyGenerator;->uninitialised:Z

    .line 31
    iput-object p1, p0, Lorg/spongycastle/jce/provider/JCEKeyGenerator;->algName:Ljava/lang/String;

    .line 32
    iput p2, p0, Lorg/spongycastle/jce/provider/JCEKeyGenerator;->defaultKeySize:I

    iput p2, p0, Lorg/spongycastle/jce/provider/JCEKeyGenerator;->keySize:I

    .line 33
    iput-object p3, p0, Lorg/spongycastle/jce/provider/JCEKeyGenerator;->engine:Lorg/spongycastle/crypto/CipherKeyGenerator;

    .line 34
    return-void
.end method


# virtual methods
.method protected engineGenerateKey()Ljavax/crypto/SecretKey;
    .locals 4

    .prologue
    .line 71
    iget-boolean v0, p0, Lorg/spongycastle/jce/provider/JCEKeyGenerator;->uninitialised:Z

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEKeyGenerator;->engine:Lorg/spongycastle/crypto/CipherKeyGenerator;

    new-instance v1, Lorg/spongycastle/crypto/KeyGenerationParameters;

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    iget v3, p0, Lorg/spongycastle/jce/provider/JCEKeyGenerator;->defaultKeySize:I

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/CipherKeyGenerator;->init(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/jce/provider/JCEKeyGenerator;->uninitialised:Z

    .line 77
    :cond_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v1, p0, Lorg/spongycastle/jce/provider/JCEKeyGenerator;->engine:Lorg/spongycastle/crypto/CipherKeyGenerator;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/CipherKeyGenerator;->generateKey()[B

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/jce/provider/JCEKeyGenerator;->algName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method protected engineInit(ILjava/security/SecureRandom;)V
    .locals 3
    .param p1, "keySize"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    .prologue
    .line 60
    :try_start_0
    iget-object v1, p0, Lorg/spongycastle/jce/provider/JCEKeyGenerator;->engine:Lorg/spongycastle/crypto/CipherKeyGenerator;

    new-instance v2, Lorg/spongycastle/crypto/KeyGenerationParameters;

    invoke-direct {v2, p2, p1}, Lorg/spongycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    invoke-virtual {v1, v2}, Lorg/spongycastle/crypto/CipherKeyGenerator;->init(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    .line 61
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/spongycastle/jce/provider/JCEKeyGenerator;->uninitialised:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineInit(Ljava/security/SecureRandom;)V
    .locals 3
    .param p1, "random"    # Ljava/security/SecureRandom;

    .prologue
    .line 47
    if-eqz p1, :cond_0

    .line 49
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEKeyGenerator;->engine:Lorg/spongycastle/crypto/CipherKeyGenerator;

    new-instance v1, Lorg/spongycastle/crypto/KeyGenerationParameters;

    iget v2, p0, Lorg/spongycastle/jce/provider/JCEKeyGenerator;->defaultKeySize:I

    invoke-direct {v1, p1, v2}, Lorg/spongycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/CipherKeyGenerator;->init(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/jce/provider/JCEKeyGenerator;->uninitialised:Z

    .line 52
    :cond_0
    return-void
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 2
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 41
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Not Implemented"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
