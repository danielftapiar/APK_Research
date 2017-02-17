.class public Lorg/spongycastle/jce/provider/JDKMessageDigest$Whirlpool;
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
    name = "Whirlpool"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 324
    new-instance v0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;-><init>()V

    invoke-direct {p0, v0}, Lorg/spongycastle/jce/provider/JDKMessageDigest;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 325
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
    .line 330
    invoke-super {p0}, Lorg/spongycastle/jce/provider/JDKMessageDigest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/jce/provider/JDKMessageDigest$Whirlpool;

    .line 331
    .local v0, "d":Lorg/spongycastle/jce/provider/JDKMessageDigest$Whirlpool;
    new-instance v2, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;

    iget-object v1, p0, Lorg/spongycastle/jce/provider/JDKMessageDigest$Whirlpool;->digest:Lorg/spongycastle/crypto/Digest;

    check-cast v1, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;

    invoke-direct {v2, v1}, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;-><init>(Lorg/spongycastle/crypto/digests/WhirlpoolDigest;)V

    iput-object v2, v0, Lorg/spongycastle/jce/provider/JDKMessageDigest$Whirlpool;->digest:Lorg/spongycastle/crypto/Digest;

    .line 333
    return-object v0
.end method
