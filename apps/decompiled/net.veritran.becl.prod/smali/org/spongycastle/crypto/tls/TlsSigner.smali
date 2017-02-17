.class interface abstract Lorg/spongycastle/crypto/tls/TlsSigner;
.super Ljava/lang/Object;
.source "TlsSigner.java"


# virtual methods
.method public abstract calculateRawSignature(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/CryptoException;
        }
    .end annotation
.end method

.method public abstract createVerifyer(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)Lorg/spongycastle/crypto/Signer;
.end method

.method public abstract isValidPublicKey(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)Z
.end method
