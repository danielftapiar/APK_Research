.class public Lorg/spongycastle/jce/provider/JCEMac;
.super Ljavax/crypto/MacSpi;
.source "JCEMac.java"

# interfaces
.implements Lorg/spongycastle/jce/provider/PBE;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/jce/provider/JCEMac$PBEWithTiger;,
        Lorg/spongycastle/jce/provider/JCEMac$PBEWithSHA;,
        Lorg/spongycastle/jce/provider/JCEMac$PBEWithRIPEMD160;,
        Lorg/spongycastle/jce/provider/JCEMac$Tiger;,
        Lorg/spongycastle/jce/provider/JCEMac$RIPEMD160;,
        Lorg/spongycastle/jce/provider/JCEMac$RIPEMD128;,
        Lorg/spongycastle/jce/provider/JCEMac$OldSHA512;,
        Lorg/spongycastle/jce/provider/JCEMac$SHA512;,
        Lorg/spongycastle/jce/provider/JCEMac$OldSHA384;,
        Lorg/spongycastle/jce/provider/JCEMac$SHA384;,
        Lorg/spongycastle/jce/provider/JCEMac$SHA256;,
        Lorg/spongycastle/jce/provider/JCEMac$SHA224;,
        Lorg/spongycastle/jce/provider/JCEMac$SHA1;,
        Lorg/spongycastle/jce/provider/JCEMac$MD5;,
        Lorg/spongycastle/jce/provider/JCEMac$MD4;,
        Lorg/spongycastle/jce/provider/JCEMac$MD2;,
        Lorg/spongycastle/jce/provider/JCEMac$DES9797Alg3;,
        Lorg/spongycastle/jce/provider/JCEMac$DES9797Alg3with7816d4;,
        Lorg/spongycastle/jce/provider/JCEMac$RC2CFB8;,
        Lorg/spongycastle/jce/provider/JCEMac$DESCFB8;,
        Lorg/spongycastle/jce/provider/JCEMac$GOST28147;,
        Lorg/spongycastle/jce/provider/JCEMac$RC2;,
        Lorg/spongycastle/jce/provider/JCEMac$DES;
    }
.end annotation


# instance fields
.field private keySize:I

.field private macEngine:Lorg/spongycastle/crypto/Mac;

.field private pbeHash:I

.field private pbeType:I


# direct methods
.method protected constructor <init>(Lorg/spongycastle/crypto/Mac;)V
    .locals 1
    .param p1, "macEngine"    # Lorg/spongycastle/crypto/Mac;

    .prologue
    .line 48
    invoke-direct {p0}, Ljavax/crypto/MacSpi;-><init>()V

    .line 42
    const/4 v0, 0x2

    iput v0, p0, Lorg/spongycastle/jce/provider/JCEMac;->pbeType:I

    .line 43
    const/4 v0, 0x1

    iput v0, p0, Lorg/spongycastle/jce/provider/JCEMac;->pbeHash:I

    .line 44
    const/16 v0, 0xa0

    iput v0, p0, Lorg/spongycastle/jce/provider/JCEMac;->keySize:I

    .line 49
    iput-object p1, p0, Lorg/spongycastle/jce/provider/JCEMac;->macEngine:Lorg/spongycastle/crypto/Mac;

    .line 50
    return-void
.end method

.method protected constructor <init>(Lorg/spongycastle/crypto/Mac;III)V
    .locals 1
    .param p1, "macEngine"    # Lorg/spongycastle/crypto/Mac;
    .param p2, "pbeType"    # I
    .param p3, "pbeHash"    # I
    .param p4, "keySize"    # I

    .prologue
    .line 57
    invoke-direct {p0}, Ljavax/crypto/MacSpi;-><init>()V

    .line 42
    const/4 v0, 0x2

    iput v0, p0, Lorg/spongycastle/jce/provider/JCEMac;->pbeType:I

    .line 43
    const/4 v0, 0x1

    iput v0, p0, Lorg/spongycastle/jce/provider/JCEMac;->pbeHash:I

    .line 44
    const/16 v0, 0xa0

    iput v0, p0, Lorg/spongycastle/jce/provider/JCEMac;->keySize:I

    .line 58
    iput-object p1, p0, Lorg/spongycastle/jce/provider/JCEMac;->macEngine:Lorg/spongycastle/crypto/Mac;

    .line 59
    iput p2, p0, Lorg/spongycastle/jce/provider/JCEMac;->pbeType:I

    .line 60
    iput p3, p0, Lorg/spongycastle/jce/provider/JCEMac;->pbeHash:I

    .line 61
    iput p4, p0, Lorg/spongycastle/jce/provider/JCEMac;->keySize:I

    .line 62
    return-void
.end method


# virtual methods
.method protected engineDoFinal()[B
    .locals 3

    .prologue
    .line 135
    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/JCEMac;->engineGetMacLength()I

    move-result v1

    new-array v0, v1, [B

    .line 137
    .local v0, "out":[B
    iget-object v1, p0, Lorg/spongycastle/jce/provider/JCEMac;->macEngine:Lorg/spongycastle/crypto/Mac;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/spongycastle/crypto/Mac;->doFinal([BI)I

    .line 139
    return-object v0
.end method

.method protected engineGetMacLength()I
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEMac;->macEngine:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Mac;->getMacSize()I

    move-result v0

    return v0
.end method

.method protected engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 4
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 71
    if-nez p1, :cond_0

    .line 73
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "key is null"

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 76
    :cond_0
    instance-of v2, p1, Lorg/spongycastle/jce/provider/JCEPBEKey;

    if-eqz v2, :cond_3

    move-object v0, p1

    .line 78
    check-cast v0, Lorg/spongycastle/jce/provider/JCEPBEKey;

    .line 80
    .local v0, "k":Lorg/spongycastle/jce/provider/JCEPBEKey;
    invoke-virtual {v0}, Lorg/spongycastle/jce/provider/JCEPBEKey;->getParam()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 82
    invoke-virtual {v0}, Lorg/spongycastle/jce/provider/JCEPBEKey;->getParam()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v1

    .line 106
    .end local v0    # "k":Lorg/spongycastle/jce/provider/JCEPBEKey;
    .end local p2    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .local v1, "param":Lorg/spongycastle/crypto/CipherParameters;
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/jce/provider/JCEMac;->macEngine:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v2, v1}, Lorg/spongycastle/crypto/Mac;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 107
    return-void

    .line 84
    .end local v1    # "param":Lorg/spongycastle/crypto/CipherParameters;
    .restart local v0    # "k":Lorg/spongycastle/jce/provider/JCEPBEKey;
    .restart local p2    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_1
    instance-of v2, p2, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v2, :cond_2

    .line 86
    invoke-static {v0, p2}, Lorg/spongycastle/jce/provider/PBE$Util;->makePBEMacParameters(Lorg/spongycastle/jce/provider/JCEPBEKey;Ljava/security/spec/AlgorithmParameterSpec;)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v1

    .restart local v1    # "param":Lorg/spongycastle/crypto/CipherParameters;
    goto :goto_0

    .line 90
    .end local v1    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_2
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    const-string v3, "PBE requires PBE parameters to be set."

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 93
    .end local v0    # "k":Lorg/spongycastle/jce/provider/JCEPBEKey;
    :cond_3
    instance-of v2, p2, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v2, :cond_4

    .line 95
    new-instance v1, Lorg/spongycastle/crypto/params/ParametersWithIV;

    new-instance v2, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    check-cast p2, Ljavax/crypto/spec/IvParameterSpec;

    .end local p2    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    invoke-virtual {p2}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    .restart local v1    # "param":Lorg/spongycastle/crypto/CipherParameters;
    goto :goto_0

    .line 97
    .end local v1    # "param":Lorg/spongycastle/crypto/CipherParameters;
    .restart local p2    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_4
    if-nez p2, :cond_5

    .line 99
    new-instance v1, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    .restart local v1    # "param":Lorg/spongycastle/crypto/CipherParameters;
    goto :goto_0

    .line 103
    .end local v1    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_5
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    const-string v3, "unknown parameter type."

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected engineReset()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEMac;->macEngine:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Mac;->reset()V

    .line 117
    return-void
.end method

.method protected engineUpdate(B)V
    .locals 1
    .param p1, "input"    # B

    .prologue
    .line 122
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEMac;->macEngine:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/Mac;->update(B)V

    .line 123
    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 1
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 130
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEMac;->macEngine:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v0, p1, p2, p3}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 131
    return-void
.end method
