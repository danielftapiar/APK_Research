.class public Lorg/spongycastle/jce/provider/symmetric/HC256$Base;
.super Lorg/spongycastle/jce/provider/JCEStreamCipher;
.source "HC256.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jce/provider/symmetric/HC256;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Base"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Lorg/spongycastle/crypto/engines/HC256Engine;

    invoke-direct {v0}, Lorg/spongycastle/crypto/engines/HC256Engine;-><init>()V

    const/16 v1, 0x20

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/provider/JCEStreamCipher;-><init>(Lorg/spongycastle/crypto/StreamCipher;I)V

    .line 22
    return-void
.end method
