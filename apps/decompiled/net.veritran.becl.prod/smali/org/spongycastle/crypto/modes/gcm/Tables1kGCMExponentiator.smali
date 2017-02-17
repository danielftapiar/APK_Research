.class public Lorg/spongycastle/crypto/modes/gcm/Tables1kGCMExponentiator;
.super Ljava/lang/Object;
.source "Tables1kGCMExponentiator.java"

# interfaces
.implements Lorg/spongycastle/crypto/modes/gcm/GCMExponentiator;


# instance fields
.field lookupPowX2:[[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/16 v0, 0x40

    new-array v0, v0, [[B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/gcm/Tables1kGCMExponentiator;->lookupPowX2:[[B

    return-void
.end method


# virtual methods
.method public exponentiateX(J[B)V
    .locals 9
    .param p1, "pow"    # J
    .param p3, "output"    # [B

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 29
    invoke-static {}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->oneAsBytes()[B

    move-result-object v1

    .line 30
    .local v1, "y":[B
    const/4 v0, 0x1

    .line 32
    .local v0, "powX2":I
    :goto_0
    cmp-long v2, p1, v6

    if-lez v2, :cond_1

    .line 34
    const-wide/16 v2, 0x1

    and-long/2addr v2, p1

    cmp-long v2, v2, v6

    if-eqz v2, :cond_0

    .line 36
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/gcm/Tables1kGCMExponentiator;->lookupPowX2:[[B

    aget-object v2, v2, v0

    invoke-static {v1, v2}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->multiply([B[B)V

    .line 38
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 39
    const/4 v2, 0x1

    ushr-long/2addr p1, v2

    goto :goto_0

    .line 42
    :cond_1
    const/16 v2, 0x10

    invoke-static {v1, v4, p3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    return-void
.end method

.method public init([B)V
    .locals 5
    .param p1, "x"    # [B

    .prologue
    const/4 v4, 0x0

    .line 13
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/gcm/Tables1kGCMExponentiator;->lookupPowX2:[[B

    const/16 v3, 0x10

    new-array v3, v3, [B

    aput-object v3, v2, v4

    .line 14
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/gcm/Tables1kGCMExponentiator;->lookupPowX2:[[B

    aget-object v2, v2, v4

    const/16 v3, -0x80

    aput-byte v3, v2, v4

    .line 16
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/gcm/Tables1kGCMExponentiator;->lookupPowX2:[[B

    const/4 v3, 0x1

    invoke-static {p1}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v4

    aput-object v4, v2, v3

    .line 18
    const/4 v0, 0x2

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x40

    if-eq v0, v2, :cond_0

    .line 20
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/gcm/Tables1kGCMExponentiator;->lookupPowX2:[[B

    add-int/lit8 v3, v0, -0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    .line 21
    .local v1, "tmp":[B
    invoke-static {v1, v1}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->multiply([B[B)V

    .line 22
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/gcm/Tables1kGCMExponentiator;->lookupPowX2:[[B

    aput-object v1, v2, v0

    .line 18
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 24
    .end local v1    # "tmp":[B
    :cond_0
    return-void
.end method
