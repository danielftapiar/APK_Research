.class public Lorg/spongycastle/jce/provider/JDKKeyFactory$ElGamal;
.super Lorg/spongycastle/jce/provider/JDKKeyFactory;
.source "JDKKeyFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jce/provider/JDKKeyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ElGamal"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 483
    invoke-direct {p0}, Lorg/spongycastle/jce/provider/JDKKeyFactory;-><init>()V

    .line 484
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/jce/provider/JDKKeyFactory$ElGamal;->elGamalFactory:Z

    .line 485
    return-void
.end method


# virtual methods
.method protected engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .locals 1
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 491
    instance-of v0, p1, Lorg/spongycastle/jce/spec/ElGamalPrivateKeySpec;

    if-eqz v0, :cond_0

    .line 493
    new-instance v0, Lorg/spongycastle/jce/provider/JCEElGamalPrivateKey;

    check-cast p1, Lorg/spongycastle/jce/spec/ElGamalPrivateKeySpec;

    .end local p1    # "keySpec":Ljava/security/spec/KeySpec;
    invoke-direct {v0, p1}, Lorg/spongycastle/jce/provider/JCEElGamalPrivateKey;-><init>(Lorg/spongycastle/jce/spec/ElGamalPrivateKeySpec;)V

    .line 500
    :goto_0
    return-object v0

    .line 495
    .restart local p1    # "keySpec":Ljava/security/spec/KeySpec;
    :cond_0
    instance-of v0, p1, Ljavax/crypto/spec/DHPrivateKeySpec;

    if-eqz v0, :cond_1

    .line 497
    new-instance v0, Lorg/spongycastle/jce/provider/JCEElGamalPrivateKey;

    check-cast p1, Ljavax/crypto/spec/DHPrivateKeySpec;

    .end local p1    # "keySpec":Ljava/security/spec/KeySpec;
    invoke-direct {v0, p1}, Lorg/spongycastle/jce/provider/JCEElGamalPrivateKey;-><init>(Ljavax/crypto/spec/DHPrivateKeySpec;)V

    goto :goto_0

    .line 500
    .restart local p1    # "keySpec":Ljava/security/spec/KeySpec;
    :cond_1
    invoke-super {p0, p1}, Lorg/spongycastle/jce/provider/JDKKeyFactory;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v0

    goto :goto_0
.end method

.method protected engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .locals 1
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 507
    instance-of v0, p1, Lorg/spongycastle/jce/spec/ElGamalPublicKeySpec;

    if-eqz v0, :cond_0

    .line 509
    new-instance v0, Lorg/spongycastle/jce/provider/JCEElGamalPublicKey;

    check-cast p1, Lorg/spongycastle/jce/spec/ElGamalPublicKeySpec;

    .end local p1    # "keySpec":Ljava/security/spec/KeySpec;
    invoke-direct {v0, p1}, Lorg/spongycastle/jce/provider/JCEElGamalPublicKey;-><init>(Lorg/spongycastle/jce/spec/ElGamalPublicKeySpec;)V

    .line 516
    :goto_0
    return-object v0

    .line 511
    .restart local p1    # "keySpec":Ljava/security/spec/KeySpec;
    :cond_0
    instance-of v0, p1, Ljavax/crypto/spec/DHPublicKeySpec;

    if-eqz v0, :cond_1

    .line 513
    new-instance v0, Lorg/spongycastle/jce/provider/JCEElGamalPublicKey;

    check-cast p1, Ljavax/crypto/spec/DHPublicKeySpec;

    .end local p1    # "keySpec":Ljava/security/spec/KeySpec;
    invoke-direct {v0, p1}, Lorg/spongycastle/jce/provider/JCEElGamalPublicKey;-><init>(Ljavax/crypto/spec/DHPublicKeySpec;)V

    goto :goto_0

    .line 516
    .restart local p1    # "keySpec":Ljava/security/spec/KeySpec;
    :cond_1
    invoke-super {p0, p1}, Lorg/spongycastle/jce/provider/JDKKeyFactory;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    goto :goto_0
.end method
