.class public Lorg/spongycastle/jce/provider/asymmetric/ec/KeyAgreement$MQV;
.super Lorg/spongycastle/jce/provider/asymmetric/ec/KeyAgreement;
.source "KeyAgreement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jce/provider/asymmetric/ec/KeyAgreement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MQV"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 295
    const-string v0, "ECMQV"

    new-instance v1, Lorg/spongycastle/crypto/agreement/ECMQVBasicAgreement;

    invoke-direct {v1}, Lorg/spongycastle/crypto/agreement/ECMQVBasicAgreement;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/jce/provider/asymmetric/ec/KeyAgreement;-><init>(Ljava/lang/String;Lorg/spongycastle/crypto/BasicAgreement;Lorg/spongycastle/crypto/DerivationFunction;)V

    .line 296
    return-void
.end method
