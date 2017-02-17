.class public Lorg/spongycastle/jce/spec/ECPublicKeySpec;
.super Lorg/spongycastle/jce/spec/ECKeySpec;
.source "ECPublicKeySpec.java"


# instance fields
.field private q:Lorg/spongycastle/math/ec/ECPoint;


# direct methods
.method public constructor <init>(Lorg/spongycastle/math/ec/ECPoint;Lorg/spongycastle/jce/spec/ECParameterSpec;)V
    .locals 0
    .param p1, "q"    # Lorg/spongycastle/math/ec/ECPoint;
    .param p2, "spec"    # Lorg/spongycastle/jce/spec/ECParameterSpec;

    .prologue
    .line 23
    invoke-direct {p0, p2}, Lorg/spongycastle/jce/spec/ECKeySpec;-><init>(Lorg/spongycastle/jce/spec/ECParameterSpec;)V

    .line 25
    iput-object p1, p0, Lorg/spongycastle/jce/spec/ECPublicKeySpec;->q:Lorg/spongycastle/math/ec/ECPoint;

    .line 26
    return-void
.end method


# virtual methods
.method public getQ()Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lorg/spongycastle/jce/spec/ECPublicKeySpec;->q:Lorg/spongycastle/math/ec/ECPoint;

    return-object v0
.end method
