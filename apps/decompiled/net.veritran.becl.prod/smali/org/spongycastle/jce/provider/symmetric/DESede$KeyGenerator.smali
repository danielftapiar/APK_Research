.class public Lorg/spongycastle/jce/provider/symmetric/DESede$KeyGenerator;
.super Lorg/spongycastle/jce/provider/JCEKeyGenerator;
.source "DESede.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jce/provider/symmetric/DESede;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyGenerator"
.end annotation


# instance fields
.field private keySizeSet:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 140
    const-string v0, "DESede"

    const/16 v1, 0xc0

    new-instance v2, Lorg/spongycastle/crypto/generators/DESedeKeyGenerator;

    invoke-direct {v2}, Lorg/spongycastle/crypto/generators/DESedeKeyGenerator;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/jce/provider/JCEKeyGenerator;-><init>(Ljava/lang/String;ILorg/spongycastle/crypto/CipherKeyGenerator;)V

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/jce/provider/symmetric/DESede$KeyGenerator;->keySizeSet:Z

    .line 141
    return-void
.end method


# virtual methods
.method protected engineGenerateKey()Ljavax/crypto/SecretKey;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 153
    iget-boolean v1, p0, Lorg/spongycastle/jce/provider/symmetric/DESede$KeyGenerator;->uninitialised:Z

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lorg/spongycastle/jce/provider/symmetric/DESede$KeyGenerator;->engine:Lorg/spongycastle/crypto/CipherKeyGenerator;

    new-instance v2, Lorg/spongycastle/crypto/KeyGenerationParameters;

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    iget v4, p0, Lorg/spongycastle/jce/provider/symmetric/DESede$KeyGenerator;->defaultKeySize:I

    invoke-direct {v2, v3, v4}, Lorg/spongycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    invoke-virtual {v1, v2}, Lorg/spongycastle/crypto/CipherKeyGenerator;->init(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    .line 156
    iput-boolean v5, p0, Lorg/spongycastle/jce/provider/symmetric/DESede$KeyGenerator;->uninitialised:Z

    .line 163
    :cond_0
    iget-boolean v1, p0, Lorg/spongycastle/jce/provider/symmetric/DESede$KeyGenerator;->keySizeSet:Z

    if-nez v1, :cond_1

    .line 165
    iget-object v1, p0, Lorg/spongycastle/jce/provider/symmetric/DESede$KeyGenerator;->engine:Lorg/spongycastle/crypto/CipherKeyGenerator;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/CipherKeyGenerator;->generateKey()[B

    move-result-object v0

    .line 167
    .local v0, "k":[B
    const/16 v1, 0x10

    const/16 v2, 0x8

    invoke-static {v0, v5, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, p0, Lorg/spongycastle/jce/provider/symmetric/DESede$KeyGenerator;->algName:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 173
    .end local v0    # "k":[B
    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, p0, Lorg/spongycastle/jce/provider/symmetric/DESede$KeyGenerator;->engine:Lorg/spongycastle/crypto/CipherKeyGenerator;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/CipherKeyGenerator;->generateKey()[B

    move-result-object v2

    iget-object v3, p0, Lorg/spongycastle/jce/provider/symmetric/DESede$KeyGenerator;->algName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    goto :goto_0
.end method

.method protected engineInit(ILjava/security/SecureRandom;)V
    .locals 1
    .param p1, "keySize"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    .prologue
    .line 147
    invoke-super {p0, p1, p2}, Lorg/spongycastle/jce/provider/JCEKeyGenerator;->engineInit(ILjava/security/SecureRandom;)V

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/jce/provider/symmetric/DESede$KeyGenerator;->keySizeSet:Z

    .line 149
    return-void
.end method
