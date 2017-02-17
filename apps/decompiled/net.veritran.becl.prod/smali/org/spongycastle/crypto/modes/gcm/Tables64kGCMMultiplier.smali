.class public Lorg/spongycastle/crypto/modes/gcm/Tables64kGCMMultiplier;
.super Ljava/lang/Object;
.source "Tables64kGCMMultiplier.java"

# interfaces
.implements Lorg/spongycastle/crypto/modes/gcm/GCMMultiplier;


# instance fields
.field private final M:[[[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/16 v0, 0x10

    const/16 v1, 0x100

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, [I

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[I

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->M:[[[I

    return-void
.end method


# virtual methods
.method public init([B)V
    .locals 9
    .param p1, "H"    # [B

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 12
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->M:[[[I

    aget-object v4, v4, v7

    new-array v5, v8, [I

    aput-object v5, v4, v7

    .line 13
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->M:[[[I

    aget-object v4, v4, v7

    const/16 v5, 0x80

    invoke-static {p1}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->asInts([B)[I

    move-result-object v6

    aput-object v6, v4, v5

    .line 14
    const/16 v1, 0x40

    .local v1, "j":I
    :goto_0
    const/4 v4, 0x1

    if-lt v1, v4, :cond_0

    .line 16
    new-array v3, v8, [I

    .line 17
    .local v3, "tmp":[I
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->M:[[[I

    aget-object v4, v4, v7

    add-int v5, v1, v1

    aget-object v4, v4, v5

    invoke-static {v4, v7, v3, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    invoke-static {v3}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->multiplyP([I)V

    .line 20
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->M:[[[I

    aget-object v4, v4, v7

    aput-object v3, v4, v1

    .line 14
    shr-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 23
    .end local v3    # "tmp":[I
    :cond_0
    const/4 v0, 0x0

    .line 26
    .local v0, "i":I
    :cond_1
    const/4 v1, 0x2

    :goto_1
    const/16 v4, 0x100

    if-ge v1, v4, :cond_3

    .line 28
    const/4 v2, 0x1

    .local v2, "k":I
    :goto_2
    if-ge v2, v1, :cond_2

    .line 30
    new-array v3, v8, [I

    .line 31
    .restart local v3    # "tmp":[I
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->M:[[[I

    aget-object v4, v4, v0

    aget-object v4, v4, v1

    invoke-static {v4, v7, v3, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->M:[[[I

    aget-object v4, v4, v0

    aget-object v4, v4, v2

    invoke-static {v3, v4}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->xor([I[I)V

    .line 34
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->M:[[[I

    aget-object v4, v4, v0

    add-int v5, v1, v2

    aput-object v3, v4, v5

    .line 28
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 26
    .end local v3    # "tmp":[I
    :cond_2
    add-int/2addr v1, v1

    goto :goto_1

    .line 38
    .end local v2    # "k":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    const/16 v4, 0x10

    if-ne v0, v4, :cond_4

    .line 40
    return-void

    .line 43
    :cond_4
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->M:[[[I

    aget-object v4, v4, v0

    new-array v5, v8, [I

    aput-object v5, v4, v7

    .line 44
    const/16 v1, 0x80

    :goto_3
    if-lez v1, :cond_1

    .line 46
    new-array v3, v8, [I

    .line 47
    .restart local v3    # "tmp":[I
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->M:[[[I

    add-int/lit8 v5, v0, -0x1

    aget-object v4, v4, v5

    aget-object v4, v4, v1

    invoke-static {v4, v7, v3, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    invoke-static {v3}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->multiplyP8([I)V

    .line 50
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->M:[[[I

    aget-object v4, v4, v0

    aput-object v3, v4, v1

    .line 44
    shr-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method public multiplyH([B)V
    .locals 10
    .param p1, "x"    # [B

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 59
    new-array v2, v9, [I

    .line 60
    .local v2, "z":[I
    const/16 v0, 0xf

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 63
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->M:[[[I

    aget-object v3, v3, v0

    aget-byte v4, p1, v0

    and-int/lit16 v4, v4, 0xff

    aget-object v1, v3, v4

    .line 64
    .local v1, "m":[I
    aget v3, v2, v5

    aget v4, v1, v5

    xor-int/2addr v3, v4

    aput v3, v2, v5

    .line 65
    aget v3, v2, v6

    aget v4, v1, v6

    xor-int/2addr v3, v4

    aput v3, v2, v6

    .line 66
    aget v3, v2, v7

    aget v4, v1, v7

    xor-int/2addr v3, v4

    aput v3, v2, v7

    .line 67
    aget v3, v2, v8

    aget v4, v1, v8

    xor-int/2addr v3, v4

    aput v3, v2, v8

    .line 60
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 70
    .end local v1    # "m":[I
    :cond_0
    aget v3, v2, v5

    invoke-static {v3, p1, v5}, Lorg/spongycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    .line 71
    aget v3, v2, v6

    invoke-static {v3, p1, v9}, Lorg/spongycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    .line 72
    aget v3, v2, v7

    const/16 v4, 0x8

    invoke-static {v3, p1, v4}, Lorg/spongycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    .line 73
    aget v3, v2, v8

    const/16 v4, 0xc

    invoke-static {v3, p1, v4}, Lorg/spongycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    .line 74
    return-void
.end method
