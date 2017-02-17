.class public Lorg/spongycastle/jce/provider/symmetric/Camellia$KeyGen128;
.super Lorg/spongycastle/jce/provider/symmetric/Camellia$KeyGen;
.source "Camellia.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jce/provider/symmetric/Camellia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyGen128"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 85
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lorg/spongycastle/jce/provider/symmetric/Camellia$KeyGen;-><init>(I)V

    .line 86
    return-void
.end method
