.class public Lorg/spongycastle/jce/provider/JDKDSASigner$dsa384;
.super Lorg/spongycastle/jce/provider/JDKDSASigner;
.source "JDKDSASigner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jce/provider/JDKDSASigner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dsa384"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 258
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA384Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/SHA384Digest;-><init>()V

    new-instance v1, Lorg/spongycastle/crypto/signers/DSASigner;

    invoke-direct {v1}, Lorg/spongycastle/crypto/signers/DSASigner;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/provider/JDKDSASigner;-><init>(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/DSA;)V

    .line 259
    return-void
.end method
