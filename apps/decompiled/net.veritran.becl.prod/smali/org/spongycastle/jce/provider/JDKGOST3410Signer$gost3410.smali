.class public Lorg/spongycastle/jce/provider/JDKGOST3410Signer$gost3410;
.super Lorg/spongycastle/jce/provider/JDKGOST3410Signer;
.source "JDKGOST3410Signer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jce/provider/JDKGOST3410Signer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "gost3410"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 236
    new-instance v0, Lorg/spongycastle/crypto/digests/GOST3411Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/GOST3411Digest;-><init>()V

    new-instance v1, Lorg/spongycastle/crypto/signers/GOST3410Signer;

    invoke-direct {v1}, Lorg/spongycastle/crypto/signers/GOST3410Signer;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/provider/JDKGOST3410Signer;-><init>(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/DSA;)V

    .line 237
    return-void
.end method
