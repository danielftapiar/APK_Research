.class public Lorg/spongycastle/jce/provider/WrapCipherSpi$RC2Wrap;
.super Lorg/spongycastle/jce/provider/WrapCipherSpi;
.source "WrapCipherSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jce/provider/WrapCipherSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RC2Wrap"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 428
    new-instance v0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;

    invoke-direct {v0}, Lorg/spongycastle/crypto/engines/RC2WrapEngine;-><init>()V

    invoke-direct {p0, v0}, Lorg/spongycastle/jce/provider/WrapCipherSpi;-><init>(Lorg/spongycastle/crypto/Wrapper;)V

    .line 429
    return-void
.end method
