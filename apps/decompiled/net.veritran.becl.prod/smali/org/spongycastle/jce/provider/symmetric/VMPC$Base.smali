.class public Lorg/spongycastle/jce/provider/symmetric/VMPC$Base;
.super Lorg/spongycastle/jce/provider/JCEStreamCipher;
.source "VMPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jce/provider/symmetric/VMPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Base"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Lorg/spongycastle/crypto/engines/VMPCEngine;

    invoke-direct {v0}, Lorg/spongycastle/crypto/engines/VMPCEngine;-><init>()V

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/provider/JCEStreamCipher;-><init>(Lorg/spongycastle/crypto/StreamCipher;I)V

    .line 24
    return-void
.end method
