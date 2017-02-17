.class public Lorg/spongycastle/jce/provider/JCEIESCipher;
.super Lorg/spongycastle/jce/provider/WrapCipherSpi;
.source "JCEIESCipher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/jce/provider/JCEIESCipher$IES;,
        Lorg/spongycastle/jce/provider/JCEIESCipher$ECIES;,
        Lorg/spongycastle/jce/provider/JCEIESCipher$BrokenIES;,
        Lorg/spongycastle/jce/provider/JCEIESCipher$BrokenECIES;
    }
.end annotation


# instance fields
.field private availableSpecs:[Ljava/lang/Class;

.field private buffer:Ljava/io/ByteArrayOutputStream;

.field private cipher:Lorg/spongycastle/crypto/engines/IESEngine;

.field private engineParam:Ljava/security/AlgorithmParameters;

.field private engineParams:Lorg/spongycastle/jce/spec/IESParameterSpec;

.field private state:I


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/engines/IESEngine;)V
    .locals 3
    .param p1, "engine"    # Lorg/spongycastle/crypto/engines/IESEngine;

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Lorg/spongycastle/jce/provider/WrapCipherSpi;-><init>()V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lorg/spongycastle/jce/provider/JCEIESCipher;->state:I

    .line 36
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCEIESCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    .line 37
    iput-object v1, p0, Lorg/spongycastle/jce/provider/JCEIESCipher;->engineParam:Ljava/security/AlgorithmParameters;

    .line 38
    iput-object v1, p0, Lorg/spongycastle/jce/provider/JCEIESCipher;->engineParams:Lorg/spongycastle/jce/spec/IESParameterSpec;

    .line 43
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lorg/spongycastle/jce/spec/IESParameterSpec;

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCEIESCipher;->availableSpecs:[Ljava/lang/Class;

    .line 51
    iput-object p1, p0, Lorg/spongycastle/jce/provider/JCEIESCipher;->cipher:Lorg/spongycastle/crypto/engines/IESEngine;

    .line 52
    return-void
.end method


# virtual methods
.method protected engineDoFinal([BII[BI)I
    .locals 5
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 327
    if-eqz p3, :cond_0

    .line 329
    iget-object v2, p0, Lorg/spongycastle/jce/provider/JCEIESCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 334
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/spongycastle/jce/provider/JCEIESCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 336
    .local v0, "buf":[B
    iget-object v2, p0, Lorg/spongycastle/jce/provider/JCEIESCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 338
    iget-object v2, p0, Lorg/spongycastle/jce/provider/JCEIESCipher;->cipher:Lorg/spongycastle/crypto/engines/IESEngine;

    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {v2, v0, v3, v4}, Lorg/spongycastle/crypto/engines/IESEngine;->processBlock([BII)[B

    move-result-object v0

    .line 340
    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, p4, p5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 342
    array-length v2, v0
    :try_end_0
    .catch Lorg/spongycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 344
    .end local v0    # "buf":[B
    :catch_0
    move-exception v1

    .line 346
    .local v1, "e":Lorg/spongycastle/crypto/InvalidCipherTextException;
    new-instance v2, Ljavax/crypto/BadPaddingException;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/InvalidCipherTextException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected engineDoFinal([BII)[B
    .locals 5
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 300
    if-eqz p3, :cond_0

    .line 302
    iget-object v2, p0, Lorg/spongycastle/jce/provider/JCEIESCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 307
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/spongycastle/jce/provider/JCEIESCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 309
    .local v0, "buf":[B
    iget-object v2, p0, Lorg/spongycastle/jce/provider/JCEIESCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 311
    iget-object v2, p0, Lorg/spongycastle/jce/provider/JCEIESCipher;->cipher:Lorg/spongycastle/crypto/engines/IESEngine;

    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {v2, v0, v3, v4}, Lorg/spongycastle/crypto/engines/IESEngine;->processBlock([BII)[B
    :try_end_0
    .catch Lorg/spongycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 313
    .end local v0    # "buf":[B
    :catch_0
    move-exception v1

    .line 315
    .local v1, "e":Lorg/spongycastle/crypto/InvalidCipherTextException;
    new-instance v2, Ljavax/crypto/BadPaddingException;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/InvalidCipherTextException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected engineGetBlockSize()I
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method protected engineGetIV()[B
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineGetKeySize(Ljava/security/Key;)I
    .locals 4
    .param p1, "key"    # Ljava/security/Key;

    .prologue
    .line 67
    instance-of v2, p1, Lorg/spongycastle/jce/interfaces/IESKey;

    if-nez v2, :cond_0

    .line 69
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "must be passed IE key"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object v0, p1

    .line 72
    check-cast v0, Lorg/spongycastle/jce/interfaces/IESKey;

    .line 74
    .local v0, "ieKey":Lorg/spongycastle/jce/interfaces/IESKey;
    invoke-interface {v0}, Lorg/spongycastle/jce/interfaces/IESKey;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v2

    instance-of v2, v2, Ljavax/crypto/interfaces/DHPrivateKey;

    if-eqz v2, :cond_1

    .line 76
    invoke-interface {v0}, Lorg/spongycastle/jce/interfaces/IESKey;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    check-cast v1, Ljavax/crypto/interfaces/DHPrivateKey;

    .line 78
    .local v1, "k":Ljavax/crypto/interfaces/DHPrivateKey;
    invoke-interface {v1}, Ljavax/crypto/interfaces/DHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    .line 84
    .end local v1    # "k":Ljavax/crypto/interfaces/DHPrivateKey;
    :goto_0
    return v2

    .line 80
    :cond_1
    invoke-interface {v0}, Lorg/spongycastle/jce/interfaces/IESKey;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v2

    instance-of v2, v2, Lorg/spongycastle/jce/interfaces/ECPrivateKey;

    if-eqz v2, :cond_2

    .line 82
    invoke-interface {v0}, Lorg/spongycastle/jce/interfaces/IESKey;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/jce/interfaces/ECPrivateKey;

    .line 84
    .local v1, "k":Lorg/spongycastle/jce/interfaces/ECPrivateKey;
    invoke-interface {v1}, Lorg/spongycastle/jce/interfaces/ECPrivateKey;->getD()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    goto :goto_0

    .line 87
    .end local v1    # "k":Lorg/spongycastle/jce/interfaces/ECPrivateKey;
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "not an IE key!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected engineGetOutputSize(I)I
    .locals 2
    .param p1, "inputLen"    # I

    .prologue
    .line 93
    iget v0, p0, Lorg/spongycastle/jce/provider/JCEIESCipher;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/spongycastle/jce/provider/JCEIESCipher;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 95
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEIESCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x14

    .line 99
    :goto_0
    return v0

    .line 97
    :cond_1
    iget v0, p0, Lorg/spongycastle/jce/provider/JCEIESCipher;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget v0, p0, Lorg/spongycastle/jce/provider/JCEIESCipher;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 99
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEIESCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x14

    goto :goto_0

    .line 103
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cipher not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 4

    .prologue
    .line 109
    iget-object v2, p0, Lorg/spongycastle/jce/provider/JCEIESCipher;->engineParam:Ljava/security/AlgorithmParameters;

    if-nez v2, :cond_0

    .line 111
    iget-object v2, p0, Lorg/spongycastle/jce/provider/JCEIESCipher;->engineParams:Lorg/spongycastle/jce/spec/IESParameterSpec;

    if-eqz v2, :cond_0

    .line 113
    const-string v1, "IES"

    .line 117
    .local v1, "name":Ljava/lang/String;
    :try_start_0
    sget-object v2, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->PROVIDER_NAME:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/jce/provider/JCEIESCipher;->engineParam:Ljava/security/AlgorithmParameters;

    .line 118
    iget-object v2, p0, Lorg/spongycastle/jce/provider/JCEIESCipher;->engineParam:Ljava/security/AlgorithmParameters;

    iget-object v3, p0, Lorg/spongycastle/jce/provider/JCEIESCipher;->engineParams:Lorg/spongycastle/jce/spec/IESParameterSpec;

    invoke-virtual {v2, v3}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lorg/spongycastle/jce/provider/JCEIESCipher;->engineParam:Ljava/security/AlgorithmParameters;

    return-object v2

    .line 120
    .restart local v1    # "name":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 6
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "params"    # Ljava/security/AlgorithmParameters;
    .param p4, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 225
    const/4 v2, 0x0

    .line 227
    .local v2, "paramSpec":Ljava/security/spec/AlgorithmParameterSpec;
    if-eqz p3, :cond_1

    .line 229
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lorg/spongycastle/jce/provider/JCEIESCipher;->availableSpecs:[Ljava/lang/Class;

    array-length v3, v3

    if-eq v1, v3, :cond_0

    .line 233
    :try_start_0
    iget-object v3, p0, Lorg/spongycastle/jce/provider/JCEIESCipher;->availableSpecs:[Ljava/lang/Class;

    aget-object v3, v3, v1

    invoke-virtual {p3, v3}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 242
    :cond_0
    if-nez v2, :cond_1

    .line 244
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can\'t handle parameter "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3}, Ljava/security/AlgorithmParameters;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 236
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/Exception;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 248
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "i":I
    :cond_1
    iput-object p3, p0, Lorg/spongycastle/jce/provider/JCEIESCipher;->engineParam:Ljava/security/AlgorithmParameters;

    .line 249
    invoke-virtual {p0, p1, p2, v2, p4}, Lorg/spongycastle/jce/provider/JCEIESCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 250
    return-void
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 2
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 258
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 262
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    check-cast v0, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/spongycastle/jce/provider/JCEIESCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    return-void

    .line 265
    :catch_0
    move-exception v0

    .line 271
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "can\'t handle null parameter spec in IES"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 10
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p4, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x10

    const/4 v9, 0x1

    .line 150
    instance-of v6, p2, Lorg/spongycastle/jce/interfaces/IESKey;

    if-nez v6, :cond_0

    .line 152
    new-instance v6, Ljava/security/InvalidKeyException;

    const-string v7, "must be passed IES key"

    invoke-direct {v6, v7}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 155
    :cond_0
    if-nez p3, :cond_4

    if-eq p1, v9, :cond_1

    const/4 v6, 0x3

    if-ne p1, v6, :cond_4

    .line 161
    :cond_1
    new-array v0, v7, [B

    .line 162
    .local v0, "d":[B
    new-array v1, v7, [B

    .line 164
    .local v1, "e":[B
    if-nez p4, :cond_2

    .line 166
    new-instance p4, Ljava/security/SecureRandom;

    .end local p4    # "random":Ljava/security/SecureRandom;
    invoke-direct {p4}, Ljava/security/SecureRandom;-><init>()V

    .line 169
    .restart local p4    # "random":Ljava/security/SecureRandom;
    :cond_2
    invoke-virtual {p4, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 170
    invoke-virtual {p4, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 172
    new-instance p3, Lorg/spongycastle/jce/spec/IESParameterSpec;

    .end local p3    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    const/16 v6, 0x80

    invoke-direct {p3, v0, v1, v6}, Lorg/spongycastle/jce/spec/IESParameterSpec;-><init>([B[BI)V

    .end local v0    # "d":[B
    .end local v1    # "e":[B
    .restart local p3    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_3
    move-object v2, p2

    .line 179
    check-cast v2, Lorg/spongycastle/jce/interfaces/IESKey;

    .line 184
    .local v2, "ieKey":Lorg/spongycastle/jce/interfaces/IESKey;
    invoke-interface {v2}, Lorg/spongycastle/jce/interfaces/IESKey;->getPublic()Ljava/security/PublicKey;

    move-result-object v6

    instance-of v6, v6, Lorg/spongycastle/jce/interfaces/ECPublicKey;

    if-eqz v6, :cond_5

    .line 186
    invoke-interface {v2}, Lorg/spongycastle/jce/interfaces/IESKey;->getPublic()Ljava/security/PublicKey;

    move-result-object v6

    invoke-static {v6}, Lorg/spongycastle/jce/provider/asymmetric/ec/ECUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v5

    .line 187
    .local v5, "pubKey":Lorg/spongycastle/crypto/CipherParameters;
    invoke-interface {v2}, Lorg/spongycastle/jce/interfaces/IESKey;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v6

    invoke-static {v6}, Lorg/spongycastle/jce/provider/asymmetric/ec/ECUtil;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v4

    .line 195
    .local v4, "privKey":Lorg/spongycastle/crypto/CipherParameters;
    :goto_0
    check-cast p3, Lorg/spongycastle/jce/spec/IESParameterSpec;

    .end local p3    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    iput-object p3, p0, Lorg/spongycastle/jce/provider/JCEIESCipher;->engineParams:Lorg/spongycastle/jce/spec/IESParameterSpec;

    .line 197
    new-instance v3, Lorg/spongycastle/crypto/params/IESParameters;

    iget-object v6, p0, Lorg/spongycastle/jce/provider/JCEIESCipher;->engineParams:Lorg/spongycastle/jce/spec/IESParameterSpec;

    invoke-virtual {v6}, Lorg/spongycastle/jce/spec/IESParameterSpec;->getDerivationV()[B

    move-result-object v6

    iget-object v7, p0, Lorg/spongycastle/jce/provider/JCEIESCipher;->engineParams:Lorg/spongycastle/jce/spec/IESParameterSpec;

    invoke-virtual {v7}, Lorg/spongycastle/jce/spec/IESParameterSpec;->getEncodingV()[B

    move-result-object v7

    iget-object v8, p0, Lorg/spongycastle/jce/provider/JCEIESCipher;->engineParams:Lorg/spongycastle/jce/spec/IESParameterSpec;

    invoke-virtual {v8}, Lorg/spongycastle/jce/spec/IESParameterSpec;->getMacKeySize()I

    move-result v8

    invoke-direct {v3, v6, v7, v8}, Lorg/spongycastle/crypto/params/IESParameters;-><init>([B[BI)V

    .line 199
    .local v3, "p":Lorg/spongycastle/crypto/params/IESParameters;
    iput p1, p0, Lorg/spongycastle/jce/provider/JCEIESCipher;->state:I

    .line 201
    iget-object v6, p0, Lorg/spongycastle/jce/provider/JCEIESCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 203
    packed-switch p1, :pswitch_data_0

    .line 214
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "eeek!"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 216
    :goto_1
    return-void

    .line 174
    .end local v2    # "ieKey":Lorg/spongycastle/jce/interfaces/IESKey;
    .end local v3    # "p":Lorg/spongycastle/crypto/params/IESParameters;
    .end local v4    # "privKey":Lorg/spongycastle/crypto/CipherParameters;
    .end local v5    # "pubKey":Lorg/spongycastle/crypto/CipherParameters;
    .restart local p3    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_4
    instance-of v6, p3, Lorg/spongycastle/jce/spec/IESParameterSpec;

    if-nez v6, :cond_3

    .line 176
    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    const-string v7, "must be passed IES parameters"

    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 191
    .restart local v2    # "ieKey":Lorg/spongycastle/jce/interfaces/IESKey;
    :cond_5
    invoke-interface {v2}, Lorg/spongycastle/jce/interfaces/IESKey;->getPublic()Ljava/security/PublicKey;

    move-result-object v6

    invoke-static {v6}, Lorg/spongycastle/jce/provider/DHUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v5

    .line 192
    .restart local v5    # "pubKey":Lorg/spongycastle/crypto/CipherParameters;
    invoke-interface {v2}, Lorg/spongycastle/jce/interfaces/IESKey;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v6

    invoke-static {v6}, Lorg/spongycastle/jce/provider/DHUtil;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v4

    .restart local v4    # "privKey":Lorg/spongycastle/crypto/CipherParameters;
    goto :goto_0

    .line 207
    .end local p3    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .restart local v3    # "p":Lorg/spongycastle/crypto/params/IESParameters;
    :pswitch_0
    iget-object v6, p0, Lorg/spongycastle/jce/provider/JCEIESCipher;->cipher:Lorg/spongycastle/crypto/engines/IESEngine;

    invoke-virtual {v6, v9, v4, v5, v3}, Lorg/spongycastle/crypto/engines/IESEngine;->init(ZLorg/spongycastle/crypto/CipherParameters;Lorg/spongycastle/crypto/CipherParameters;Lorg/spongycastle/crypto/CipherParameters;)V

    goto :goto_1

    .line 211
    :pswitch_1
    iget-object v6, p0, Lorg/spongycastle/jce/provider/JCEIESCipher;->cipher:Lorg/spongycastle/crypto/engines/IESEngine;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v4, v5, v3}, Lorg/spongycastle/crypto/engines/IESEngine;->init(ZLorg/spongycastle/crypto/CipherParameters;Lorg/spongycastle/crypto/CipherParameters;Lorg/spongycastle/crypto/CipherParameters;)V

    goto :goto_1

    .line 203
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected engineSetMode(Ljava/lang/String;)V
    .locals 3
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 133
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t support mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSetPadding(Ljava/lang/String;)V
    .locals 3
    .param p1, "padding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 140
    new-instance v0, Ljavax/crypto/NoSuchPaddingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unavailable with RSA."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineUpdate([BII[BI)I
    .locals 1
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputOffset"    # I

    .prologue
    .line 290
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEIESCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 291
    const/4 v0, 0x0

    return v0
.end method

.method protected engineUpdate([BII)[B
    .locals 1
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I

    .prologue
    .line 279
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEIESCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 280
    const/4 v0, 0x0

    return-object v0
.end method
