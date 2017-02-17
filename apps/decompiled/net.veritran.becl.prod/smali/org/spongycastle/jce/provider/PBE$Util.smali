.class public Lorg/spongycastle/jce/provider/PBE$Util;
.super Ljava/lang/Object;
.source "PBE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jce/provider/PBE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Util"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static makePBEGenerator(II)Lorg/spongycastle/crypto/PBEParametersGenerator;
    .locals 3
    .param p0, "type"    # I
    .param p1, "hash"    # I

    .prologue
    .line 52
    if-nez p0, :cond_0

    .line 54
    packed-switch p1, :pswitch_data_0

    .line 66
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "PKCS5 scheme 1 only supports MD2, MD5 and SHA1."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 57
    :pswitch_1
    new-instance v0, Lorg/spongycastle/crypto/generators/PKCS5S1ParametersGenerator;

    new-instance v1, Lorg/spongycastle/crypto/digests/MD2Digest;

    invoke-direct {v1}, Lorg/spongycastle/crypto/digests/MD2Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/generators/PKCS5S1ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 104
    .local v0, "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    :goto_0
    return-object v0

    .line 60
    .end local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    :pswitch_2
    new-instance v0, Lorg/spongycastle/crypto/generators/PKCS5S1ParametersGenerator;

    new-instance v1, Lorg/spongycastle/crypto/digests/MD5Digest;

    invoke-direct {v1}, Lorg/spongycastle/crypto/digests/MD5Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/generators/PKCS5S1ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 61
    .restart local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    goto :goto_0

    .line 63
    .end local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    :pswitch_3
    new-instance v0, Lorg/spongycastle/crypto/generators/PKCS5S1ParametersGenerator;

    new-instance v1, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct {v1}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/generators/PKCS5S1ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 64
    .restart local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    goto :goto_0

    .line 69
    .end local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    :cond_0
    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    .line 71
    new-instance v0, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;

    invoke-direct {v0}, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>()V

    .restart local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    goto :goto_0

    .line 73
    .end local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    :cond_1
    const/4 v1, 0x2

    if-ne p0, v1, :cond_2

    .line 75
    packed-switch p1, :pswitch_data_1

    .line 96
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "unknown digest scheme for PBE encryption."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 78
    :pswitch_4
    new-instance v0, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;

    new-instance v1, Lorg/spongycastle/crypto/digests/MD2Digest;

    invoke-direct {v1}, Lorg/spongycastle/crypto/digests/MD2Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 79
    .restart local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    goto :goto_0

    .line 81
    .end local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    :pswitch_5
    new-instance v0, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;

    new-instance v1, Lorg/spongycastle/crypto/digests/MD5Digest;

    invoke-direct {v1}, Lorg/spongycastle/crypto/digests/MD5Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 82
    .restart local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    goto :goto_0

    .line 84
    .end local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    :pswitch_6
    new-instance v0, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;

    new-instance v1, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct {v1}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 85
    .restart local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    goto :goto_0

    .line 87
    .end local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    :pswitch_7
    new-instance v0, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;

    new-instance v1, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;

    invoke-direct {v1}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 88
    .restart local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    goto :goto_0

    .line 90
    .end local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    :pswitch_8
    new-instance v0, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;

    new-instance v1, Lorg/spongycastle/crypto/digests/TigerDigest;

    invoke-direct {v1}, Lorg/spongycastle/crypto/digests/TigerDigest;-><init>()V

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 91
    .restart local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    goto :goto_0

    .line 93
    .end local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    :pswitch_9
    new-instance v0, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;

    new-instance v1, Lorg/spongycastle/crypto/digests/SHA256Digest;

    invoke-direct {v1}, Lorg/spongycastle/crypto/digests/SHA256Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 94
    .restart local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    goto :goto_0

    .line 101
    .end local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    :cond_2
    new-instance v0, Lorg/spongycastle/crypto/generators/OpenSSLPBEParametersGenerator;

    invoke-direct {v0}, Lorg/spongycastle/crypto/generators/OpenSSLPBEParametersGenerator;-><init>()V

    .restart local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    goto :goto_0

    .line 54
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 75
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_4
    .end packed-switch
.end method

.method static makePBEMacParameters(Ljavax/crypto/spec/PBEKeySpec;III)Lorg/spongycastle/crypto/CipherParameters;
    .locals 6
    .param p0, "keySpec"    # Ljavax/crypto/spec/PBEKeySpec;
    .param p1, "type"    # I
    .param p2, "hash"    # I
    .param p3, "keySize"    # I

    .prologue
    .line 256
    invoke-static {p1, p2}, Lorg/spongycastle/jce/provider/PBE$Util;->makePBEGenerator(II)Lorg/spongycastle/crypto/PBEParametersGenerator;

    move-result-object v0

    .line 260
    .local v0, "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    const/4 v4, 0x2

    if-ne p1, v4, :cond_0

    .line 262
    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/crypto/PBEParametersGenerator;->PKCS12PasswordToBytes([C)[B

    move-result-object v2

    .line 269
    .local v2, "key":[B
    :goto_0
    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object v4

    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    move-result v5

    invoke-virtual {v0, v2, v4, v5}, Lorg/spongycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 271
    invoke-virtual {v0, p3}, Lorg/spongycastle/crypto/PBEParametersGenerator;->generateDerivedMacParameters(I)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v3

    .line 273
    .local v3, "param":Lorg/spongycastle/crypto/CipherParameters;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, v2

    if-eq v1, v4, :cond_1

    .line 275
    const/4 v4, 0x0

    aput-byte v4, v2, v1

    .line 273
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 266
    .end local v1    # "i":I
    .end local v2    # "key":[B
    .end local v3    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_0
    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/crypto/PBEParametersGenerator;->PKCS5PasswordToBytes([C)[B

    move-result-object v2

    .restart local v2    # "key":[B
    goto :goto_0

    .line 278
    .restart local v1    # "i":I
    .restart local v3    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_1
    return-object v3
.end method

.method static makePBEMacParameters(Lorg/spongycastle/jce/provider/JCEPBEKey;Ljava/security/spec/AlgorithmParameterSpec;)Lorg/spongycastle/crypto/CipherParameters;
    .locals 7
    .param p0, "pbeKey"    # Lorg/spongycastle/jce/provider/JCEPBEKey;
    .param p1, "spec"    # Ljava/security/spec/AlgorithmParameterSpec;

    .prologue
    .line 175
    if-eqz p1, :cond_0

    instance-of v5, p1, Ljavax/crypto/spec/PBEParameterSpec;

    if-nez v5, :cond_1

    .line 177
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Need a PBEParameter spec with a PBE key."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    move-object v4, p1

    .line 180
    check-cast v4, Ljavax/crypto/spec/PBEParameterSpec;

    .line 181
    .local v4, "pbeParam":Ljavax/crypto/spec/PBEParameterSpec;
    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/JCEPBEKey;->getType()I

    move-result v5

    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/JCEPBEKey;->getDigest()I

    move-result v6

    invoke-static {v5, v6}, Lorg/spongycastle/jce/provider/PBE$Util;->makePBEGenerator(II)Lorg/spongycastle/crypto/PBEParametersGenerator;

    move-result-object v0

    .line 182
    .local v0, "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/JCEPBEKey;->getEncoded()[B

    move-result-object v2

    .line 185
    .local v2, "key":[B
    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/JCEPBEKey;->shouldTryWrongPKCS12()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 187
    const/4 v5, 0x2

    new-array v2, v5, [B

    .line 190
    :cond_2
    invoke-virtual {v4}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v5

    invoke-virtual {v4}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result v6

    invoke-virtual {v0, v2, v5, v6}, Lorg/spongycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 192
    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/JCEPBEKey;->getKeySize()I

    move-result v5

    invoke-virtual {v0, v5}, Lorg/spongycastle/crypto/PBEParametersGenerator;->generateDerivedMacParameters(I)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v3

    .line 194
    .local v3, "param":Lorg/spongycastle/crypto/CipherParameters;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v2

    if-eq v1, v5, :cond_3

    .line 196
    const/4 v5, 0x0

    aput-byte v5, v2, v1

    .line 194
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 199
    :cond_3
    return-object v3
.end method

.method static makePBEParameters(Ljavax/crypto/spec/PBEKeySpec;IIII)Lorg/spongycastle/crypto/CipherParameters;
    .locals 6
    .param p0, "keySpec"    # Ljavax/crypto/spec/PBEKeySpec;
    .param p1, "type"    # I
    .param p2, "hash"    # I
    .param p3, "keySize"    # I
    .param p4, "ivSize"    # I

    .prologue
    .line 213
    invoke-static {p1, p2}, Lorg/spongycastle/jce/provider/PBE$Util;->makePBEGenerator(II)Lorg/spongycastle/crypto/PBEParametersGenerator;

    move-result-object v0

    .line 217
    .local v0, "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    const/4 v4, 0x2

    if-ne p1, v4, :cond_0

    .line 219
    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/crypto/PBEParametersGenerator;->PKCS12PasswordToBytes([C)[B

    move-result-object v2

    .line 226
    .local v2, "key":[B
    :goto_0
    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object v4

    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    move-result v5

    invoke-virtual {v0, v2, v4, v5}, Lorg/spongycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 228
    if-eqz p4, :cond_1

    .line 230
    invoke-virtual {v0, p3, p4}, Lorg/spongycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(II)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v3

    .line 237
    .local v3, "param":Lorg/spongycastle/crypto/CipherParameters;
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v4, v2

    if-eq v1, v4, :cond_2

    .line 239
    const/4 v4, 0x0

    aput-byte v4, v2, v1

    .line 237
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 223
    .end local v1    # "i":I
    .end local v2    # "key":[B
    .end local v3    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_0
    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/crypto/PBEParametersGenerator;->PKCS5PasswordToBytes([C)[B

    move-result-object v2

    .restart local v2    # "key":[B
    goto :goto_0

    .line 234
    :cond_1
    invoke-virtual {v0, p3}, Lorg/spongycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(I)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v3

    .restart local v3    # "param":Lorg/spongycastle/crypto/CipherParameters;
    goto :goto_1

    .line 242
    .restart local v1    # "i":I
    :cond_2
    return-object v3
.end method

.method static makePBEParameters(Lorg/spongycastle/jce/provider/JCEPBEKey;Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Lorg/spongycastle/crypto/CipherParameters;
    .locals 8
    .param p0, "pbeKey"    # Lorg/spongycastle/jce/provider/JCEPBEKey;
    .param p1, "spec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "targetAlgorithm"    # Ljava/lang/String;

    .prologue
    .line 116
    if-eqz p1, :cond_0

    instance-of v6, p1, Ljavax/crypto/spec/PBEParameterSpec;

    if-nez v6, :cond_1

    .line 118
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Need a PBEParameter spec with a PBE key."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    move-object v5, p1

    .line 121
    check-cast v5, Ljavax/crypto/spec/PBEParameterSpec;

    .line 122
    .local v5, "pbeParam":Ljavax/crypto/spec/PBEParameterSpec;
    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/JCEPBEKey;->getType()I

    move-result v6

    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/JCEPBEKey;->getDigest()I

    move-result v7

    invoke-static {v6, v7}, Lorg/spongycastle/jce/provider/PBE$Util;->makePBEGenerator(II)Lorg/spongycastle/crypto/PBEParametersGenerator;

    move-result-object v0

    .line 123
    .local v0, "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/JCEPBEKey;->getEncoded()[B

    move-result-object v3

    .line 126
    .local v3, "key":[B
    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/JCEPBEKey;->shouldTryWrongPKCS12()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 128
    const/4 v6, 0x2

    new-array v3, v6, [B

    .line 131
    :cond_2
    invoke-virtual {v5}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v6

    invoke-virtual {v5}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result v7

    invoke-virtual {v0, v3, v6, v7}, Lorg/spongycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 133
    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/JCEPBEKey;->getIvSize()I

    move-result v6

    if-eqz v6, :cond_4

    .line 135
    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/JCEPBEKey;->getKeySize()I

    move-result v6

    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/JCEPBEKey;->getIvSize()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Lorg/spongycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(II)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v4

    .line 142
    .local v4, "param":Lorg/spongycastle/crypto/CipherParameters;
    :goto_0
    const-string v6, "DES"

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 144
    instance-of v6, v4, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-eqz v6, :cond_5

    move-object v6, v4

    .line 146
    check-cast v6, Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v6}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/crypto/params/KeyParameter;

    .line 148
    .local v2, "kParam":Lorg/spongycastle/crypto/params/KeyParameter;
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v6

    invoke-static {v6}, Lorg/spongycastle/crypto/params/DESParameters;->setOddParity([B)V

    .line 158
    .end local v2    # "kParam":Lorg/spongycastle/crypto/params/KeyParameter;
    :cond_3
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v6, v3

    if-eq v1, v6, :cond_6

    .line 160
    const/4 v6, 0x0

    aput-byte v6, v3, v1

    .line 158
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 139
    .end local v1    # "i":I
    .end local v4    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_4
    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/JCEPBEKey;->getKeySize()I

    move-result v6

    invoke-virtual {v0, v6}, Lorg/spongycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(I)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v4

    .restart local v4    # "param":Lorg/spongycastle/crypto/CipherParameters;
    goto :goto_0

    :cond_5
    move-object v2, v4

    .line 152
    check-cast v2, Lorg/spongycastle/crypto/params/KeyParameter;

    .line 154
    .restart local v2    # "kParam":Lorg/spongycastle/crypto/params/KeyParameter;
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v6

    invoke-static {v6}, Lorg/spongycastle/crypto/params/DESParameters;->setOddParity([B)V

    goto :goto_1

    .line 163
    .end local v2    # "kParam":Lorg/spongycastle/crypto/params/KeyParameter;
    .restart local v1    # "i":I
    :cond_6
    return-object v4
.end method
