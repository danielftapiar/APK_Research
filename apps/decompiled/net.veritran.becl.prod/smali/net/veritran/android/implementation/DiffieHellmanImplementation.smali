.class public Lnet/veritran/android/implementation/DiffieHellmanImplementation;
.super Ljava/lang/Object;
.source "DiffieHellmanImplementation.java"

# interfaces
.implements Lnet/veritran/vtuserapplication/utils/security/DiffieHellmanInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "DiffieHellmanImplementation"


# instance fields
.field private DHKeyPairGenerator:Ljava/security/KeyPairGenerator;

.field private gVal:Lnet/veritran/android/implementation/VTBigIntegerImplementation;

.field private keyPair:Ljava/security/KeyPair;

.field private keySize:I

.field private pVal:Lnet/veritran/android/implementation/VTBigIntegerImplementation;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    :try_start_0
    const-string v1, "DH"

    invoke-static {v1}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v1

    iput-object v1, p0, Lnet/veritran/android/implementation/DiffieHellmanImplementation;->DHKeyPairGenerator:Ljava/security/KeyPairGenerator;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_0
    return-void

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v1, "DiffieHellmanImplementation"

    const-string v2, "Catched exception empty (fortify)"

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getFinalKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "publicPeerKey"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 71
    iget-object v7, p0, Lnet/veritran/android/implementation/DiffieHellmanImplementation;->keyPair:Ljava/security/KeyPair;

    invoke-virtual {v7}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v5

    .line 74
    .local v5, "pvKey":Ljava/security/PrivateKey;
    :try_start_0
    const-string v7, "DH"

    invoke-static {v7}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object v0

    .line 75
    .local v0, "agreement":Ljavax/crypto/KeyAgreement;
    invoke-virtual {v0, v5}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V

    .line 76
    const-string v7, "DH"

    invoke-static {v7}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 77
    .local v2, "fac":Ljava/security/KeyFactory;
    new-instance v7, Ljavax/crypto/spec/DHPublicKeySpec;

    new-instance v8, Lnet/veritran/android/implementation/VTBigIntegerImplementation;

    const/16 v9, 0x10

    invoke-direct {v8, p1, v9}, Lnet/veritran/android/implementation/VTBigIntegerImplementation;-><init>(Ljava/lang/String;I)V

    iget-object v9, p0, Lnet/veritran/android/implementation/DiffieHellmanImplementation;->pVal:Lnet/veritran/android/implementation/VTBigIntegerImplementation;

    iget-object v10, p0, Lnet/veritran/android/implementation/DiffieHellmanImplementation;->gVal:Lnet/veritran/android/implementation/VTBigIntegerImplementation;

    invoke-direct {v7, v8, v9, v10}, Ljavax/crypto/spec/DHPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v2, v7}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v4

    .line 82
    .local v4, "pbKey":Ljava/security/PublicKey;
    const/4 v7, 0x0

    invoke-virtual {v0, v4, v7}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    move-result-object v3

    .line 88
    .local v3, "finalKey":Ljava/security/Key;
    invoke-interface {v3}, Ljava/security/Key;->getEncoded()[B

    move-result-object v7

    invoke-static {v7}, Lnet/veritran/vtuserapplication/utils/Hexa;->bytesToHexa([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v6

    .line 95
    .end local v0    # "agreement":Ljavax/crypto/KeyAgreement;
    .end local v2    # "fac":Ljava/security/KeyFactory;
    .end local v3    # "finalKey":Ljava/security/Key;
    .end local v4    # "pbKey":Ljava/security/PublicKey;
    :goto_0
    return-object v6

    .line 90
    :catch_0
    move-exception v1

    .line 91
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    goto :goto_0

    .line 92
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .line 93
    .local v1, "e":Ljava/security/InvalidKeyException;
    goto :goto_0

    .line 94
    .end local v1    # "e":Ljava/security/InvalidKeyException;
    :catch_2
    move-exception v1

    .line 95
    .local v1, "e":Ljava/security/spec/InvalidKeySpecException;
    goto :goto_0
.end method

.method public getPublicKey()Ljava/lang/String;
    .locals 6

    .prologue
    .line 58
    :try_start_0
    iget-object v1, p0, Lnet/veritran/android/implementation/DiffieHellmanImplementation;->DHKeyPairGenerator:Ljava/security/KeyPairGenerator;

    new-instance v2, Ljavax/crypto/spec/DHParameterSpec;

    iget-object v3, p0, Lnet/veritran/android/implementation/DiffieHellmanImplementation;->pVal:Lnet/veritran/android/implementation/VTBigIntegerImplementation;

    iget-object v4, p0, Lnet/veritran/android/implementation/DiffieHellmanImplementation;->gVal:Lnet/veritran/android/implementation/VTBigIntegerImplementation;

    iget v5, p0, Lnet/veritran/android/implementation/DiffieHellmanImplementation;->keySize:I

    invoke-direct {v2, v3, v4, v5}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    invoke-virtual {v1, v2}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 59
    iget-object v1, p0, Lnet/veritran/android/implementation/DiffieHellmanImplementation;->DHKeyPairGenerator:Ljava/security/KeyPairGenerator;

    invoke-virtual {v1}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v1

    iput-object v1, p0, Lnet/veritran/android/implementation/DiffieHellmanImplementation;->keyPair:Ljava/security/KeyPair;

    .line 61
    iget-object v1, p0, Lnet/veritran/android/implementation/DiffieHellmanImplementation;->keyPair:Ljava/security/KeyPair;

    invoke-virtual {v1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lnet/veritran/vtuserapplication/utils/Hexa;->bytesToHexa([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 65
    :goto_0
    return-object v1

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setG(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 42
    new-instance v0, Lnet/veritran/android/implementation/VTBigIntegerImplementation;

    const/16 v1, 0x10

    invoke-direct {v0, p1, v1}, Lnet/veritran/android/implementation/VTBigIntegerImplementation;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lnet/veritran/android/implementation/DiffieHellmanImplementation;->gVal:Lnet/veritran/android/implementation/VTBigIntegerImplementation;

    .line 43
    return-void
.end method

.method public setP(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 47
    new-instance v0, Lnet/veritran/android/implementation/VTBigIntegerImplementation;

    const/16 v1, 0x10

    invoke-direct {v0, p1, v1}, Lnet/veritran/android/implementation/VTBigIntegerImplementation;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lnet/veritran/android/implementation/DiffieHellmanImplementation;->pVal:Lnet/veritran/android/implementation/VTBigIntegerImplementation;

    .line 48
    return-void
.end method

.method public setPrivateKeySize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 52
    iput p1, p0, Lnet/veritran/android/implementation/DiffieHellmanImplementation;->keySize:I

    .line 53
    return-void
.end method
