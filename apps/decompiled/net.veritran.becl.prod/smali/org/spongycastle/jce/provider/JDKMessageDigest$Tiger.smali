.class public Lorg/spongycastle/jce/provider/JDKMessageDigest$Tiger;
.super Lorg/spongycastle/jce/provider/JDKMessageDigest;
.source "JDKMessageDigest.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jce/provider/JDKMessageDigest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tiger"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 286
    new-instance v0, Lorg/spongycastle/crypto/digests/TigerDigest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/TigerDigest;-><init>()V

    invoke-direct {p0, v0}, Lorg/spongycastle/jce/provider/JDKMessageDigest;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 287
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 292
    invoke-super {p0}, Lorg/spongycastle/jce/provider/JDKMessageDigest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/jce/provider/JDKMessageDigest$Tiger;

    .line 293
    .local v0, "d":Lorg/spongycastle/jce/provider/JDKMessageDigest$Tiger;
    new-instance v2, Lorg/spongycastle/crypto/digests/TigerDigest;

    iget-object v1, p0, Lorg/spongycastle/jce/provider/JDKMessageDigest$Tiger;->digest:Lorg/spongycastle/crypto/Digest;

    check-cast v1, Lorg/spongycastle/crypto/digests/TigerDigest;

    invoke-direct {v2, v1}, Lorg/spongycastle/crypto/digests/TigerDigest;-><init>(Lorg/spongycastle/crypto/digests/TigerDigest;)V

    iput-object v2, v0, Lorg/spongycastle/jce/provider/JDKMessageDigest$Tiger;->digest:Lorg/spongycastle/crypto/Digest;

    .line 295
    return-object v0
.end method
