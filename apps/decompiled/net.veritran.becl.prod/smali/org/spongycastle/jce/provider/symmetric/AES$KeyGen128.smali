.class public Lorg/spongycastle/jce/provider/symmetric/AES$KeyGen128;
.super Lorg/spongycastle/jce/provider/symmetric/AES$KeyGen;
.source "AES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jce/provider/symmetric/AES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyGen128"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 117
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lorg/spongycastle/jce/provider/symmetric/AES$KeyGen;-><init>(I)V

    .line 118
    return-void
.end method
