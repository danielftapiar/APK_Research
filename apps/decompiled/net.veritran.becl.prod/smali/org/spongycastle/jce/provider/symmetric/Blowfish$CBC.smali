.class public Lorg/spongycastle/jce/provider/symmetric/Blowfish$CBC;
.super Lorg/spongycastle/jce/provider/JCEBlockCipher;
.source "Blowfish.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jce/provider/symmetric/Blowfish;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CBC"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    new-instance v1, Lorg/spongycastle/crypto/engines/BlowfishEngine;

    invoke-direct {v1}, Lorg/spongycastle/crypto/engines/BlowfishEngine;-><init>()V

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    const/16 v1, 0x40

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/provider/JCEBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;I)V

    .line 33
    return-void
.end method
