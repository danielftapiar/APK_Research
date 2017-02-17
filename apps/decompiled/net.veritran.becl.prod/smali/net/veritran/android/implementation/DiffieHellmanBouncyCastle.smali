.class public Lnet/veritran/android/implementation/DiffieHellmanBouncyCastle;
.super Ljava/lang/Object;
.source "DiffieHellmanBouncyCastle.java"

# interfaces
.implements Lnet/veritran/vtuserapplication/utils/security/DiffieHellmanInterface;


# instance fields
.field private G:Ljava/math/BigInteger;

.field private P:Ljava/math/BigInteger;

.field private dhParams:Lorg/spongycastle/crypto/params/DHParameters;

.field private finalKey:Ljava/math/BigInteger;

.field private privateKey:Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

.field private privateValueSize:I

.field private publicKey:Lorg/spongycastle/crypto/params/DHPublicKeyParameters;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/16 v0, 0x40

    iput v0, p0, Lnet/veritran/android/implementation/DiffieHellmanBouncyCastle;->privateValueSize:I

    .line 33
    return-void
.end method

.method private generateKeyPair()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 50
    new-instance v3, Lorg/spongycastle/crypto/params/DHParameters;

    iget-object v4, p0, Lnet/veritran/android/implementation/DiffieHellmanBouncyCastle;->P:Ljava/math/BigInteger;

    iget-object v5, p0, Lnet/veritran/android/implementation/DiffieHellmanBouncyCastle;->G:Ljava/math/BigInteger;

    iget v6, p0, Lnet/veritran/android/implementation/DiffieHellmanBouncyCastle;->privateValueSize:I

    invoke-direct {v3, v4, v5, v7, v6}, Lorg/spongycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    iput-object v3, p0, Lnet/veritran/android/implementation/DiffieHellmanBouncyCastle;->dhParams:Lorg/spongycastle/crypto/params/DHParameters;

    .line 51
    new-instance v2, Lorg/spongycastle/crypto/params/DHKeyGenerationParameters;

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    iget-object v4, p0, Lnet/veritran/android/implementation/DiffieHellmanBouncyCastle;->dhParams:Lorg/spongycastle/crypto/params/DHParameters;

    invoke-direct {v2, v3, v4}, Lorg/spongycastle/crypto/params/DHKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/params/DHParameters;)V

    .line 53
    .local v2, "params":Lorg/spongycastle/crypto/params/DHKeyGenerationParameters;
    new-instance v0, Lorg/spongycastle/crypto/generators/DHBasicKeyPairGenerator;

    invoke-direct {v0}, Lorg/spongycastle/crypto/generators/DHBasicKeyPairGenerator;-><init>()V

    .line 57
    .local v0, "kpGen":Lorg/spongycastle/crypto/generators/DHBasicKeyPairGenerator;
    invoke-virtual {v0, v2}, Lorg/spongycastle/crypto/generators/DHBasicKeyPairGenerator;->init(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    .line 59
    invoke-virtual {v0}, Lorg/spongycastle/crypto/generators/DHBasicKeyPairGenerator;->generateKeyPair()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v1

    .line 60
    .local v1, "pair":Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;
    invoke-virtual {v1}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    iput-object v3, p0, Lnet/veritran/android/implementation/DiffieHellmanBouncyCastle;->publicKey:Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    .line 61
    invoke-virtual {v1}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    iput-object v3, p0, Lnet/veritran/android/implementation/DiffieHellmanBouncyCastle;->privateKey:Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    .line 62
    iput-object v7, p0, Lnet/veritran/android/implementation/DiffieHellmanBouncyCastle;->P:Ljava/math/BigInteger;

    .line 63
    iput-object v7, p0, Lnet/veritran/android/implementation/DiffieHellmanBouncyCastle;->G:Ljava/math/BigInteger;

    .line 72
    return-void
.end method


# virtual methods
.method public getFinalKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "publicPeerKey"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x10

    .line 90
    iget-object v3, p0, Lnet/veritran/android/implementation/DiffieHellmanBouncyCastle;->finalKey:Ljava/math/BigInteger;

    if-eqz v3, :cond_0

    .line 91
    iget-object v3, p0, Lnet/veritran/android/implementation/DiffieHellmanBouncyCastle;->finalKey:Ljava/math/BigInteger;

    invoke-virtual {v3, v5}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 118
    :goto_0
    return-object v2

    .line 101
    :cond_0
    new-instance v0, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, p1, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    iget-object v4, p0, Lnet/veritran/android/implementation/DiffieHellmanBouncyCastle;->dhParams:Lorg/spongycastle/crypto/params/DHParameters;

    invoke-direct {v0, v3, v4}, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/DHParameters;)V

    .line 103
    .local v0, "aux":Lorg/spongycastle/crypto/params/DHPublicKeyParameters;
    new-instance v1, Lorg/spongycastle/crypto/agreement/DHBasicAgreement;

    invoke-direct {v1}, Lorg/spongycastle/crypto/agreement/DHBasicAgreement;-><init>()V

    .line 105
    .local v1, "e1":Lorg/spongycastle/crypto/agreement/DHBasicAgreement;
    iget-object v3, p0, Lnet/veritran/android/implementation/DiffieHellmanBouncyCastle;->privateKey:Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    invoke-virtual {v1, v3}, Lorg/spongycastle/crypto/agreement/DHBasicAgreement;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 107
    invoke-virtual {v1, v0}, Lorg/spongycastle/crypto/agreement/DHBasicAgreement;->calculateAgreement(Lorg/spongycastle/crypto/CipherParameters;)Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, p0, Lnet/veritran/android/implementation/DiffieHellmanBouncyCastle;->finalKey:Ljava/math/BigInteger;

    .line 108
    iput-object v6, p0, Lnet/veritran/android/implementation/DiffieHellmanBouncyCastle;->dhParams:Lorg/spongycastle/crypto/params/DHParameters;

    .line 109
    iput-object v6, p0, Lnet/veritran/android/implementation/DiffieHellmanBouncyCastle;->privateKey:Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    .line 113
    iget-object v3, p0, Lnet/veritran/android/implementation/DiffieHellmanBouncyCastle;->finalKey:Ljava/math/BigInteger;

    invoke-virtual {v3, v5}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, "res":Ljava/lang/String;
    goto :goto_0
.end method

.method public getPublicKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    invoke-direct {p0}, Lnet/veritran/android/implementation/DiffieHellmanBouncyCastle;->generateKeyPair()V

    .line 85
    iget-object v0, p0, Lnet/veritran/android/implementation/DiffieHellmanBouncyCastle;->publicKey:Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;->getY()Ljava/math/BigInteger;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x80

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTStringUtils;->leftZeros(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setG(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 40
    new-instance v0, Ljava/math/BigInteger;

    const/16 v1, 0x10

    invoke-direct {v0, p1, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lnet/veritran/android/implementation/DiffieHellmanBouncyCastle;->G:Ljava/math/BigInteger;

    .line 41
    return-void
.end method

.method public setP(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 44
    new-instance v0, Ljava/math/BigInteger;

    const/16 v1, 0x10

    invoke-direct {v0, p1, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lnet/veritran/android/implementation/DiffieHellmanBouncyCastle;->P:Ljava/math/BigInteger;

    .line 45
    return-void
.end method

.method public setPrivateKeySize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 36
    iput p1, p0, Lnet/veritran/android/implementation/DiffieHellmanBouncyCastle;->privateValueSize:I

    .line 37
    return-void
.end method
