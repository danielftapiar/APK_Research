.class public Lorg/spongycastle/jce/provider/JCEMac$PBEWithSHA;
.super Lorg/spongycastle/jce/provider/JCEMac;
.source "JCEMac.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jce/provider/JCEMac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PBEWithSHA"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 411
    new-instance v0, Lorg/spongycastle/crypto/macs/HMac;

    new-instance v1, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct {v1}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/macs/HMac;-><init>(Lorg/spongycastle/crypto/Digest;)V

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/16 v3, 0xa0

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/jce/provider/JCEMac;-><init>(Lorg/spongycastle/crypto/Mac;III)V

    .line 412
    return-void
.end method
