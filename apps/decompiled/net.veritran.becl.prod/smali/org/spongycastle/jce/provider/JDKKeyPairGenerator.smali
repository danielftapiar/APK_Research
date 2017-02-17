.class public abstract Lorg/spongycastle/jce/provider/JDKKeyPairGenerator;
.super Ljava/security/KeyPairGenerator;
.source "JDKKeyPairGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/jce/provider/JDKKeyPairGenerator$GOST3410;,
        Lorg/spongycastle/jce/provider/JDKKeyPairGenerator$ElGamal;,
        Lorg/spongycastle/jce/provider/JDKKeyPairGenerator$DSA;,
        Lorg/spongycastle/jce/provider/JDKKeyPairGenerator$DH;,
        Lorg/spongycastle/jce/provider/JDKKeyPairGenerator$RSA;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "algorithmName"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    .line 56
    return-void
.end method


# virtual methods
.method public abstract generateKeyPair()Ljava/security/KeyPair;
.end method

.method public abstract initialize(ILjava/security/SecureRandom;)V
.end method
