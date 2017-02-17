.class public Lorg/spongycastle/jce/provider/symmetric/Camellia$KeyGen192;
.super Lorg/spongycastle/jce/provider/symmetric/Camellia$KeyGen;
.source "Camellia.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jce/provider/symmetric/Camellia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyGen192"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 94
    const/16 v0, 0xc0

    invoke-direct {p0, v0}, Lorg/spongycastle/jce/provider/symmetric/Camellia$KeyGen;-><init>(I)V

    .line 95
    return-void
.end method
