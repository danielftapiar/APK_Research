.class public Lorg/spongycastle/jce/provider/symmetric/Serpent$ECB;
.super Lorg/spongycastle/jce/provider/JCEBlockCipher;
.source "Serpent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jce/provider/symmetric/Serpent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECB"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lorg/spongycastle/crypto/engines/SerpentEngine;

    invoke-direct {v0}, Lorg/spongycastle/crypto/engines/SerpentEngine;-><init>()V

    invoke-direct {p0, v0}, Lorg/spongycastle/jce/provider/JCEBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    .line 23
    return-void
.end method