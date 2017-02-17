.class public Lorg/spongycastle/jce/provider/symmetric/Camellia$KeyGen256;
.super Lorg/spongycastle/jce/provider/symmetric/Camellia$KeyGen;
.source "Camellia.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jce/provider/symmetric/Camellia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyGen256"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 103
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lorg/spongycastle/jce/provider/symmetric/Camellia$KeyGen;-><init>(I)V

    .line 104
    return-void
.end method
