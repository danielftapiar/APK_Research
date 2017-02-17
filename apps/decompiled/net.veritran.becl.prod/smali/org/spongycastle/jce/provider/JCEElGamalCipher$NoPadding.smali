.class public Lorg/spongycastle/jce/provider/JCEElGamalCipher$NoPadding;
.super Lorg/spongycastle/jce/provider/JCEElGamalCipher;
.source "JCEElGamalCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jce/provider/JCEElGamalCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoPadding"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 330
    new-instance v0, Lorg/spongycastle/crypto/engines/ElGamalEngine;

    invoke-direct {v0}, Lorg/spongycastle/crypto/engines/ElGamalEngine;-><init>()V

    invoke-direct {p0, v0}, Lorg/spongycastle/jce/provider/JCEElGamalCipher;-><init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;)V

    .line 331
    return-void
.end method
