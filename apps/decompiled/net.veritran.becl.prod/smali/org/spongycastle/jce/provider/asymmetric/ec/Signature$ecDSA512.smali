.class public Lorg/spongycastle/jce/provider/asymmetric/ec/Signature$ecDSA512;
.super Lorg/spongycastle/jce/provider/asymmetric/ec/Signature;
.source "Signature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jce/provider/asymmetric/ec/Signature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ecDSA512"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 157
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA512Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/SHA512Digest;-><init>()V

    new-instance v1, Lorg/spongycastle/crypto/signers/ECDSASigner;

    invoke-direct {v1}, Lorg/spongycastle/crypto/signers/ECDSASigner;-><init>()V

    new-instance v2, Lorg/spongycastle/jce/provider/asymmetric/ec/Signature$StdDSAEncoder;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/spongycastle/jce/provider/asymmetric/ec/Signature$StdDSAEncoder;-><init>(Lorg/spongycastle/jce/provider/asymmetric/ec/Signature$1;)V

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/jce/provider/asymmetric/ec/Signature;-><init>(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/DSA;Lorg/spongycastle/jce/provider/DSAEncoder;)V

    .line 158
    return-void
.end method
