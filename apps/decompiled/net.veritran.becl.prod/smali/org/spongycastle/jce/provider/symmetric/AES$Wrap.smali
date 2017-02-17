.class public Lorg/spongycastle/jce/provider/symmetric/AES$Wrap;
.super Lorg/spongycastle/jce/provider/WrapCipherSpi;
.source "AES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jce/provider/symmetric/AES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Wrap"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 85
    new-instance v0, Lorg/spongycastle/crypto/engines/AESWrapEngine;

    invoke-direct {v0}, Lorg/spongycastle/crypto/engines/AESWrapEngine;-><init>()V

    invoke-direct {p0, v0}, Lorg/spongycastle/jce/provider/WrapCipherSpi;-><init>(Lorg/spongycastle/crypto/Wrapper;)V

    .line 86
    return-void
.end method
