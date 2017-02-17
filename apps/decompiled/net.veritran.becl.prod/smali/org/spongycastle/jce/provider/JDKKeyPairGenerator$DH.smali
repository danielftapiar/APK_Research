.class public Lorg/spongycastle/jce/provider/JDKKeyPairGenerator$DH;
.super Lorg/spongycastle/jce/provider/JDKKeyPairGenerator;
.source "JDKKeyPairGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jce/provider/JDKKeyPairGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DH"
.end annotation


# static fields
.field private static params:Ljava/util/Hashtable;


# instance fields
.field certainty:I

.field engine:Lorg/spongycastle/crypto/generators/DHBasicKeyPairGenerator;

.field initialised:Z

.field param:Lorg/spongycastle/crypto/params/DHKeyGenerationParameters;

.field random:Ljava/security/SecureRandom;

.field strength:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 123
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/spongycastle/jce/provider/JDKKeyPairGenerator$DH;->params:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 134
    const-string v0, "DH"

    invoke-direct {p0, v0}, Lorg/spongycastle/jce/provider/JDKKeyPairGenerator;-><init>(Ljava/lang/String;)V

    .line 126
    new-instance v0, Lorg/spongycastle/crypto/generators/DHBasicKeyPairGenerator;

    invoke-direct {v0}, Lorg/spongycastle/crypto/generators/DHBasicKeyPairGenerator;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JDKKeyPairGenerator$DH;->engine:Lorg/spongycastle/crypto/generators/DHBasicKeyPairGenerator;

    .line 127
    const/16 v0, 0x400

    iput v0, p0, Lorg/spongycastle/jce/provider/JDKKeyPairGenerator$DH;->strength:I

    .line 128
    const/16 v0, 0x14

    iput v0, p0, Lorg/spongycastle/jce/provider/JDKKeyPairGenerator$DH;->certainty:I

    .line 129
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JDKKeyPairGenerator$DH;->random:Ljava/security/SecureRandom;

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/jce/provider/JDKKeyPairGenerator$DH;->initialised:Z

    .line 135
    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 8

    .prologue
    .line 164
    iget-boolean v5, p0, Lorg/spongycastle/jce/provider/JDKKeyPairGenerator$DH;->initialised:Z

    if-nez v5, :cond_0

    .line 166
    new-instance v2, Ljava/lang/Integer;

    iget v5, p0, Lorg/spongycastle/jce/provider/JDKKeyPairGenerator$DH;->strength:I

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    .line 168
    .local v2, "paramStrength":Ljava/lang/Integer;
    sget-object v5, Lorg/spongycastle/jce/provider/JDKKeyPairGenerator$DH;->params:Ljava/util/Hashtable;

    invoke-virtual {v5, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 170
    sget-object v5, Lorg/spongycastle/jce/provider/JDKKeyPairGenerator$DH;->params:Ljava/util/Hashtable;

    invoke-virtual {v5, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/crypto/params/DHKeyGenerationParameters;

    iput-object v5, p0, Lorg/spongycastle/jce/provider/JDKKeyPairGenerator$DH;->param:Lorg/spongycastle/crypto/params/DHKeyGenerationParameters;

    .line 183
    :goto_0
    iget-object v5, p0, Lorg/spongycastle/jce/provider/JDKKeyPairGenerator$DH;->engine:Lorg/spongycastle/crypto/generators/DHBasicKeyPairGenerator;

    iget-object v6, p0, Lorg/spongycastle/jce/provider/JDKKeyPairGenerator$DH;->param:Lorg/spongycastle/crypto/params/DHKeyGenerationParameters;

    invoke-virtual {v5, v6}, Lorg/spongycastle/crypto/generators/DHBasicKeyPairGenerator;->init(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    .line 185
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/spongycastle/jce/provider/JDKKeyPairGenerator$DH;->initialised:Z

    .line 188
    .end local v2    # "paramStrength":Ljava/lang/Integer;
    :cond_0
    iget-object v5, p0, Lorg/spongycastle/jce/provider/JDKKeyPairGenerator$DH;->engine:Lorg/spongycastle/crypto/generators/DHBasicKeyPairGenerator;

    invoke-virtual {v5}, Lorg/spongycastle/crypto/generators/DHBasicKeyPairGenerator;->generateKeyPair()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v1

    .line 189
    .local v1, "pair":Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;
    invoke-virtual {v1}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v4

    check-cast v4, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    .line 190
    .local v4, "pub":Lorg/spongycastle/crypto/params/DHPublicKeyParameters;
    invoke-virtual {v1}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    .line 192
    .local v3, "priv":Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;
    new-instance v5, Ljava/security/KeyPair;

    new-instance v6, Lorg/spongycastle/jce/provider/JCEDHPublicKey;

    invoke-direct {v6, v4}, Lorg/spongycastle/jce/provider/JCEDHPublicKey;-><init>(Lorg/spongycastle/crypto/params/DHPublicKeyParameters;)V

    new-instance v7, Lorg/spongycastle/jce/provider/JCEDHPrivateKey;

    invoke-direct {v7, v3}, Lorg/spongycastle/jce/provider/JCEDHPrivateKey;-><init>(Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;)V

    invoke-direct {v5, v6, v7}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v5

    .line 174
    .end local v1    # "pair":Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;
    .end local v3    # "priv":Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;
    .end local v4    # "pub":Lorg/spongycastle/crypto/params/DHPublicKeyParameters;
    .restart local v2    # "paramStrength":Ljava/lang/Integer;
    :cond_1
    new-instance v0, Lorg/spongycastle/crypto/generators/DHParametersGenerator;

    invoke-direct {v0}, Lorg/spongycastle/crypto/generators/DHParametersGenerator;-><init>()V

    .line 176
    .local v0, "pGen":Lorg/spongycastle/crypto/generators/DHParametersGenerator;
    iget v5, p0, Lorg/spongycastle/jce/provider/JDKKeyPairGenerator$DH;->strength:I

    iget v6, p0, Lorg/spongycastle/jce/provider/JDKKeyPairGenerator$DH;->certainty:I

    iget-object v7, p0, Lorg/spongycastle/jce/provider/JDKKeyPairGenerator$DH;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, v5, v6, v7}, Lorg/spongycastle/crypto/generators/DHParametersGenerator;->init(IILjava/security/SecureRandom;)V

    .line 178
    new-instance v5, Lorg/spongycastle/crypto/params/DHKeyGenerationParameters;

    iget-object v6, p0, Lorg/spongycastle/jce/provider/JDKKeyPairGenerator$DH;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/generators/DHParametersGenerator;->generateParameters()Lorg/spongycastle/crypto/params/DHParameters;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/spongycastle/crypto/params/DHKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/params/DHParameters;)V

    iput-object v5, p0, Lorg/spongycastle/jce/provider/JDKKeyPairGenerator$DH;->param:Lorg/spongycastle/crypto/params/DHKeyGenerationParameters;

    .line 180
    sget-object v5, Lorg/spongycastle/jce/provider/JDKKeyPairGenerator$DH;->params:Ljava/util/Hashtable;

    iget-object v6, p0, Lorg/spongycastle/jce/provider/JDKKeyPairGenerator$DH;->param:Lorg/spongycastle/crypto/params/DHKeyGenerationParameters;

    invoke-virtual {v5, v2, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 0
    .param p1, "strength"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    .prologue
    .line 141
    iput p1, p0, Lorg/spongycastle/jce/provider/JDKKeyPairGenerator$DH;->strength:I

    .line 142
    iput-object p2, p0, Lorg/spongycastle/jce/provider/JDKKeyPairGenerator$DH;->random:Ljava/security/SecureRandom;

    .line 143
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
    .line 150
    instance-of v1, p1, Ljavax/crypto/spec/DHParameterSpec;

    if-nez v1, :cond_0

    .line 152
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v2, "parameter object not a DHParameterSpec"

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v0, p1

    .line 154
    check-cast v0, Ljavax/crypto/spec/DHParameterSpec;

    .line 156
    .local v0, "dhParams":Ljavax/crypto/spec/DHParameterSpec;
    new-instance v1, Lorg/spongycastle/crypto/params/DHKeyGenerationParameters;

    new-instance v2, Lorg/spongycastle/crypto/params/DHParameters;

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/spongycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    invoke-direct {v1, p2, v2}, Lorg/spongycastle/crypto/params/DHKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/params/DHParameters;)V

    iput-object v1, p0, Lorg/spongycastle/jce/provider/JDKKeyPairGenerator$DH;->param:Lorg/spongycastle/crypto/params/DHKeyGenerationParameters;

    .line 158
    iget-object v1, p0, Lorg/spongycastle/jce/provider/JDKKeyPairGenerator$DH;->engine:Lorg/spongycastle/crypto/generators/DHBasicKeyPairGenerator;

    iget-object v2, p0, Lorg/spongycastle/jce/provider/JDKKeyPairGenerator$DH;->param:Lorg/spongycastle/crypto/params/DHKeyGenerationParameters;

    invoke-virtual {v1, v2}, Lorg/spongycastle/crypto/generators/DHBasicKeyPairGenerator;->init(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    .line 159
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/spongycastle/jce/provider/JDKKeyPairGenerator$DH;->initialised:Z

    .line 160
    return-void
.end method
