.class public Lorg/spongycastle/jce/provider/symmetric/CAST6$ECB;
.super Lorg/spongycastle/jce/provider/JCEBlockCipher;
.source "CAST6.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jce/provider/symmetric/CAST6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECB"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lorg/spongycastle/crypto/engines/CAST6Engine;

    invoke-direct {v0}, Lorg/spongycastle/crypto/engines/CAST6Engine;-><init>()V

    invoke-direct {p0, v0}, Lorg/spongycastle/jce/provider/JCEBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    .line 22
    return-void
.end method
