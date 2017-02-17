.class public Lorg/spongycastle/jce/provider/symmetric/RC6$ECB;
.super Lorg/spongycastle/jce/provider/JCEBlockCipher;
.source "RC6.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jce/provider/symmetric/RC6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECB"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lorg/spongycastle/crypto/engines/RC6Engine;

    invoke-direct {v0}, Lorg/spongycastle/crypto/engines/RC6Engine;-><init>()V

    invoke-direct {p0, v0}, Lorg/spongycastle/jce/provider/JCEBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    .line 35
    return-void
.end method
