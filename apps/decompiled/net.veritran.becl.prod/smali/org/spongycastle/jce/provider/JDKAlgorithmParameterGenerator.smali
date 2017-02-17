.class public abstract Lorg/spongycastle/jce/provider/JDKAlgorithmParameterGenerator;
.super Ljava/security/AlgorithmParameterGeneratorSpi;
.source "JDKAlgorithmParameterGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/jce/provider/JDKAlgorithmParameterGenerator$RC2;,
        Lorg/spongycastle/jce/provider/JDKAlgorithmParameterGenerator$DES;,
        Lorg/spongycastle/jce/provider/JDKAlgorithmParameterGenerator$ElGamal;,
        Lorg/spongycastle/jce/provider/JDKAlgorithmParameterGenerator$GOST3410;,
        Lorg/spongycastle/jce/provider/JDKAlgorithmParameterGenerator$DSA;,
        Lorg/spongycastle/jce/provider/JDKAlgorithmParameterGenerator$DH;
    }
.end annotation


# instance fields
.field protected random:Ljava/security/SecureRandom;

.field protected strength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/security/AlgorithmParameterGeneratorSpi;-><init>()V

    .line 31
    const/16 v0, 0x400

    iput v0, p0, Lorg/spongycastle/jce/provider/JDKAlgorithmParameterGenerator;->strength:I

    .line 280
    return-void
.end method


# virtual methods
.method protected engineInit(ILjava/security/SecureRandom;)V
    .locals 0
    .param p1, "strength"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    .prologue
    .line 37
    iput p1, p0, Lorg/spongycastle/jce/provider/JDKAlgorithmParameterGenerator;->strength:I

    .line 38
    iput-object p2, p0, Lorg/spongycastle/jce/provider/JDKAlgorithmParameterGenerator;->random:Ljava/security/SecureRandom;

    .line 39
    return-void
.end method
