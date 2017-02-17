.class public Lnet/veritran/android/implementation/AndroidDigestImplementation;
.super Ljava/lang/Object;
.source "AndroidDigestImplementation.java"

# interfaces
.implements Lnet/veritran/vtuserapplication/utils/security/DigestInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFinal([BI)V
    .locals 4
    .param p1, "out"    # [B
    .param p2, "outOff"    # I

    .prologue
    const/4 v3, 0x0

    .line 22
    const-string v0, "0123456789abcdef"

    .line 23
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v2, p1

    invoke-static {v1, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    return-void
.end method

.method public getDigestSize()I
    .locals 1

    .prologue
    .line 16
    const/16 v0, 0x10

    return v0
.end method

.method public update([BII)V
    .locals 0
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I

    .prologue
    .line 11
    return-void
.end method
