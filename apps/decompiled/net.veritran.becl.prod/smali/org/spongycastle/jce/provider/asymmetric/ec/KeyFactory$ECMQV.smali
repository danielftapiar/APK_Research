.class public Lorg/spongycastle/jce/provider/asymmetric/ec/KeyFactory$ECMQV;
.super Lorg/spongycastle/jce/provider/asymmetric/ec/KeyFactory;
.source "KeyFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jce/provider/asymmetric/ec/KeyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECMQV"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 205
    const-string v0, "ECMQV"

    invoke-direct {p0, v0}, Lorg/spongycastle/jce/provider/asymmetric/ec/KeyFactory;-><init>(Ljava/lang/String;)V

    .line 206
    return-void
.end method
