.class public Lorg/spongycastle/jce/provider/JCERSACipher$ISO9796d1Padding;
.super Lorg/spongycastle/jce/provider/JCERSACipher;
.source "JCERSACipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jce/provider/JCERSACipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ISO9796d1Padding"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 579
    new-instance v0, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;

    new-instance v1, Lorg/spongycastle/crypto/engines/RSABlindedEngine;

    invoke-direct {v1}, Lorg/spongycastle/crypto/engines/RSABlindedEngine;-><init>()V

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;-><init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;)V

    invoke-direct {p0, v0}, Lorg/spongycastle/jce/provider/JCERSACipher;-><init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;)V

    .line 580
    return-void
.end method
