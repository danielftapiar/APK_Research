.class public Lorg/spongycastle/jce/provider/symmetric/Skipjack$MacCFB8;
.super Lorg/spongycastle/jce/provider/JCEMac;
.source "Skipjack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jce/provider/symmetric/Skipjack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MacCFB8"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 61
    new-instance v0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;

    new-instance v1, Lorg/spongycastle/crypto/engines/SkipjackEngine;

    invoke-direct {v1}, Lorg/spongycastle/crypto/engines/SkipjackEngine;-><init>()V

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    invoke-direct {p0, v0}, Lorg/spongycastle/jce/provider/JCEMac;-><init>(Lorg/spongycastle/crypto/Mac;)V

    .line 62
    return-void
.end method
