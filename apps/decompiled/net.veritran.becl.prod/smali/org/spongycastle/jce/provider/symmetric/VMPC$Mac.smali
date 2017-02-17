.class public Lorg/spongycastle/jce/provider/symmetric/VMPC$Mac;
.super Lorg/spongycastle/jce/provider/JCEMac;
.source "VMPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jce/provider/symmetric/VMPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mac"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lorg/spongycastle/crypto/macs/VMPCMac;

    invoke-direct {v0}, Lorg/spongycastle/crypto/macs/VMPCMac;-><init>()V

    invoke-direct {p0, v0}, Lorg/spongycastle/jce/provider/JCEMac;-><init>(Lorg/spongycastle/crypto/Mac;)V

    .line 42
    return-void
.end method
