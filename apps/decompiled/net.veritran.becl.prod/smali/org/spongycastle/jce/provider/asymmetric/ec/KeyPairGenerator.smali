.class public abstract Lorg/spongycastle/jce/provider/asymmetric/ec/KeyPairGenerator;
.super Lorg/spongycastle/jce/provider/JDKKeyPairGenerator;
.source "KeyPairGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/jce/provider/asymmetric/ec/KeyPairGenerator$ECMQV;,
        Lorg/spongycastle/jce/provider/asymmetric/ec/KeyPairGenerator$ECDHC;,
        Lorg/spongycastle/jce/provider/asymmetric/ec/KeyPairGenerator$ECDH;,
        Lorg/spongycastle/jce/provider/asymmetric/ec/KeyPairGenerator$ECGOST3410;,
        Lorg/spongycastle/jce/provider/asymmetric/ec/KeyPairGenerator$ECDSA;,
        Lorg/spongycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "algorithmName"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lorg/spongycastle/jce/provider/JDKKeyPairGenerator;-><init>(Ljava/lang/String;)V

    .line 40
    return-void
.end method
