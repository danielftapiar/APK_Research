.class public Lorg/spongycastle/jce/provider/JCERSACipher$PKCS1v1_5Padding_PublicOnly;
.super Lorg/spongycastle/jce/provider/JCERSACipher;
.source "JCERSACipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jce/provider/JCERSACipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PKCS1v1_5Padding_PublicOnly"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 561
    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;

    new-instance v3, Lorg/spongycastle/crypto/engines/RSABlindedEngine;

    invoke-direct {v3}, Lorg/spongycastle/crypto/engines/RSABlindedEngine;-><init>()V

    invoke-direct {v2, v3}, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;-><init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;)V

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/jce/provider/JCERSACipher;-><init>(ZZLorg/spongycastle/crypto/AsymmetricBlockCipher;)V

    .line 562
    return-void
.end method
