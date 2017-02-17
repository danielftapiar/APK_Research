.class public Lorg/spongycastle/jce/provider/symmetric/RC5$ECB64;
.super Lorg/spongycastle/jce/provider/JCEBlockCipher;
.source "RC5.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jce/provider/symmetric/RC5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECB64"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lorg/spongycastle/crypto/engines/RC564Engine;

    invoke-direct {v0}, Lorg/spongycastle/crypto/engines/RC564Engine;-><init>()V

    invoke-direct {p0, v0}, Lorg/spongycastle/jce/provider/JCEBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    .line 51
    return-void
.end method
