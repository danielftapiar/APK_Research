.class public Lorg/spongycastle/jce/provider/JCEElGamalCipher$PKCS1v1_5Padding;
.super Lorg/spongycastle/jce/provider/JCEElGamalCipher;
.source "JCEElGamalCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jce/provider/JCEElGamalCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PKCS1v1_5Padding"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 339
    new-instance v0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;

    new-instance v1, Lorg/spongycastle/crypto/engines/ElGamalEngine;

    invoke-direct {v1}, Lorg/spongycastle/crypto/engines/ElGamalEngine;-><init>()V

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;-><init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;)V

    invoke-direct {p0, v0}, Lorg/spongycastle/jce/provider/JCEElGamalCipher;-><init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;)V

    .line 340
    return-void
.end method
