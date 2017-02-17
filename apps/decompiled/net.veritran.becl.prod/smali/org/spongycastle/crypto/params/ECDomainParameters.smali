.class public Lorg/spongycastle/crypto/params/ECDomainParameters;
.super Ljava/lang/Object;
.source "ECDomainParameters.java"

# interfaces
.implements Lorg/spongycastle/math/ec/ECConstants;


# instance fields
.field G:Lorg/spongycastle/math/ec/ECPoint;

.field curve:Lorg/spongycastle/math/ec/ECCurve;

.field h:Ljava/math/BigInteger;

.field n:Ljava/math/BigInteger;

.field seed:[B


# direct methods
.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "curve"    # Lorg/spongycastle/math/ec/ECCurve;
    .param p2, "G"    # Lorg/spongycastle/math/ec/ECPoint;
    .param p3, "n"    # Ljava/math/BigInteger;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/spongycastle/crypto/params/ECDomainParameters;->curve:Lorg/spongycastle/math/ec/ECCurve;

    .line 24
    iput-object p2, p0, Lorg/spongycastle/crypto/params/ECDomainParameters;->G:Lorg/spongycastle/math/ec/ECPoint;

    .line 25
    iput-object p3, p0, Lorg/spongycastle/crypto/params/ECDomainParameters;->n:Ljava/math/BigInteger;

    .line 26
    sget-object v0, Lorg/spongycastle/crypto/params/ECDomainParameters;->ONE:Ljava/math/BigInteger;

    iput-object v0, p0, Lorg/spongycastle/crypto/params/ECDomainParameters;->h:Ljava/math/BigInteger;

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/params/ECDomainParameters;->seed:[B

    .line 28
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "curve"    # Lorg/spongycastle/math/ec/ECCurve;
    .param p2, "G"    # Lorg/spongycastle/math/ec/ECPoint;
    .param p3, "n"    # Ljava/math/BigInteger;
    .param p4, "h"    # Ljava/math/BigInteger;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/spongycastle/crypto/params/ECDomainParameters;->curve:Lorg/spongycastle/math/ec/ECCurve;

    .line 37
    iput-object p2, p0, Lorg/spongycastle/crypto/params/ECDomainParameters;->G:Lorg/spongycastle/math/ec/ECPoint;

    .line 38
    iput-object p3, p0, Lorg/spongycastle/crypto/params/ECDomainParameters;->n:Ljava/math/BigInteger;

    .line 39
    iput-object p4, p0, Lorg/spongycastle/crypto/params/ECDomainParameters;->h:Ljava/math/BigInteger;

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/params/ECDomainParameters;->seed:[B

    .line 41
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .locals 0
    .param p1, "curve"    # Lorg/spongycastle/math/ec/ECCurve;
    .param p2, "G"    # Lorg/spongycastle/math/ec/ECPoint;
    .param p3, "n"    # Ljava/math/BigInteger;
    .param p4, "h"    # Ljava/math/BigInteger;
    .param p5, "seed"    # [B

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/spongycastle/crypto/params/ECDomainParameters;->curve:Lorg/spongycastle/math/ec/ECCurve;

    .line 51
    iput-object p2, p0, Lorg/spongycastle/crypto/params/ECDomainParameters;->G:Lorg/spongycastle/math/ec/ECPoint;

    .line 52
    iput-object p3, p0, Lorg/spongycastle/crypto/params/ECDomainParameters;->n:Ljava/math/BigInteger;

    .line 53
    iput-object p4, p0, Lorg/spongycastle/crypto/params/ECDomainParameters;->h:Ljava/math/BigInteger;

    .line 54
    iput-object p5, p0, Lorg/spongycastle/crypto/params/ECDomainParameters;->seed:[B

    .line 55
    return-void
.end method


# virtual methods
.method public getCurve()Lorg/spongycastle/math/ec/ECCurve;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/spongycastle/crypto/params/ECDomainParameters;->curve:Lorg/spongycastle/math/ec/ECCurve;

    return-object v0
.end method

.method public getG()Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/spongycastle/crypto/params/ECDomainParameters;->G:Lorg/spongycastle/math/ec/ECPoint;

    return-object v0
.end method

.method public getH()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/spongycastle/crypto/params/ECDomainParameters;->h:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getN()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/spongycastle/crypto/params/ECDomainParameters;->n:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getSeed()[B
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/spongycastle/crypto/params/ECDomainParameters;->seed:[B

    return-object v0
.end method