.class public Lorg/spongycastle/crypto/modes/gcm/BasicGCMExponentiator;
.super Ljava/lang/Object;
.source "BasicGCMExponentiator.java"

# interfaces
.implements Lorg/spongycastle/crypto/modes/gcm/GCMExponentiator;


# instance fields
.field private x:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exponentiateX(J[B)V
    .locals 7
    .param p1, "pow"    # J
    .param p3, "output"    # [B

    .prologue
    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    .line 17
    invoke-static {}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->oneAsBytes()[B

    move-result-object v1

    .line 19
    .local v1, "y":[B
    cmp-long v2, p1, v4

    if-lez v2, :cond_2

    .line 21
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/gcm/BasicGCMExponentiator;->x:[B

    invoke-static {v2}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    .line 24
    .local v0, "powX":[B
    :cond_0
    const-wide/16 v2, 0x1

    and-long/2addr v2, p1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 26
    invoke-static {v1, v0}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->multiply([B[B)V

    .line 28
    :cond_1
    invoke-static {v0, v0}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->multiply([B[B)V

    .line 29
    const/4 v2, 0x1

    ushr-long/2addr p1, v2

    .line 31
    cmp-long v2, p1, v4

    if-gtz v2, :cond_0

    .line 34
    .end local v0    # "powX":[B
    :cond_2
    const/16 v2, 0x10

    invoke-static {v1, v6, p3, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    return-void
.end method

.method public init([B)V
    .locals 1
    .param p1, "x"    # [B

    .prologue
    .line 11
    invoke-static {p1}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/gcm/BasicGCMExponentiator;->x:[B

    .line 12
    return-void
.end method
