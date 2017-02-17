.class public Lorg/spongycastle/jce/provider/asymmetric/ec/KeyPairGenerator$ECMQV;
.super Lorg/spongycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;
.source "KeyPairGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jce/provider/asymmetric/ec/KeyPairGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECMQV"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 314
    const-string v0, "ECMQV"

    invoke-direct {p0, v0}, Lorg/spongycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;-><init>(Ljava/lang/String;)V

    .line 315
    return-void
.end method
