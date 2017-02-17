.class abstract Lorg/spongycastle/crypto/modes/gcm/GCMUtil;
.super Ljava/lang/Object;
.source "GCMUtil.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static asInts([B)[I
    .locals 4
    .param p0, "bs"    # [B

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 24
    new-array v0, v3, [I

    .line 25
    .local v0, "us":[I
    invoke-static {p0, v2}, Lorg/spongycastle/crypto/util/Pack;->bigEndianToInt([BI)I

    move-result v1

    aput v1, v0, v2

    .line 26
    const/4 v1, 0x1

    invoke-static {p0, v3}, Lorg/spongycastle/crypto/util/Pack;->bigEndianToInt([BI)I

    move-result v2

    aput v2, v0, v1

    .line 27
    const/4 v1, 0x2

    const/16 v2, 0x8

    invoke-static {p0, v2}, Lorg/spongycastle/crypto/util/Pack;->bigEndianToInt([BI)I

    move-result v2

    aput v2, v0, v1

    .line 28
    const/4 v1, 0x3

    const/16 v2, 0xc

    invoke-static {p0, v2}, Lorg/spongycastle/crypto/util/Pack;->bigEndianToInt([BI)I

    move-result v2

    aput v2, v0, v1

    .line 29
    return-object v0
.end method

.method static multiply([B[B)V
    .locals 10
    .param p0, "block"    # [B
    .param p1, "val"    # [B

    .prologue
    const/4 v6, 0x1

    const/16 v9, 0x10

    const/4 v7, 0x0

    .line 34
    invoke-static {p0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v5

    .line 35
    .local v5, "tmp":[B
    new-array v1, v9, [B

    .line 37
    .local v1, "c":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v9, :cond_4

    .line 39
    aget-byte v0, p1, v2

    .line 40
    .local v0, "bits":B
    const/4 v3, 0x7

    .local v3, "j":I
    :goto_1
    if-ltz v3, :cond_3

    .line 42
    shl-int v8, v6, v3

    and-int/2addr v8, v0

    if-eqz v8, :cond_0

    .line 44
    invoke-static {v1, v5}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->xor([B[B)V

    .line 47
    :cond_0
    const/16 v8, 0xf

    aget-byte v8, v5, v8

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_2

    move v4, v6

    .line 48
    .local v4, "lsb":Z
    :goto_2
    invoke-static {v5}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->shiftRight([B)V

    .line 49
    if-eqz v4, :cond_1

    .line 53
    aget-byte v8, v5, v7

    xor-int/lit8 v8, v8, -0x1f

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    .line 40
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .end local v4    # "lsb":Z
    :cond_2
    move v4, v7

    .line 47
    goto :goto_2

    .line 37
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 58
    .end local v0    # "bits":B
    .end local v3    # "j":I
    :cond_4
    invoke-static {v1, v7, p0, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    return-void
.end method

.method static multiplyP([I)V
    .locals 4
    .param p0, "x"    # [I

    .prologue
    const/4 v1, 0x0

    .line 64
    const/4 v2, 0x3

    aget v2, p0, v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 65
    .local v0, "lsb":Z
    :goto_0
    invoke-static {p0}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->shiftRight([I)V

    .line 66
    if-eqz v0, :cond_0

    .line 70
    aget v2, p0, v1

    const/high16 v3, -0x1f000000

    xor-int/2addr v2, v3

    aput v2, p0, v1

    .line 72
    :cond_0
    return-void

    .end local v0    # "lsb":Z
    :cond_1
    move v0, v1

    .line 64
    goto :goto_0
.end method

.method static multiplyP8([I)V
    .locals 6
    .param p0, "x"    # [I

    .prologue
    .line 81
    const/4 v2, 0x3

    aget v1, p0, v2

    .line 82
    .local v1, "lsw":I
    const/16 v2, 0x8

    invoke-static {p0, v2}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->shiftRightN([II)V

    .line 83
    const/4 v0, 0x7

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 85
    const/4 v2, 0x1

    shl-int/2addr v2, v0

    and-int/2addr v2, v1

    if-eqz v2, :cond_0

    .line 87
    const/4 v2, 0x0

    aget v3, p0, v2

    const/high16 v4, -0x1f000000

    rsub-int/lit8 v5, v0, 0x7

    ushr-int/2addr v4, v5

    xor-int/2addr v3, v4

    aput v3, p0, v2

    .line 83
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 90
    :cond_1
    return-void
.end method

.method static oneAsBytes()[B
    .locals 3

    .prologue
    .line 10
    const/16 v1, 0x10

    new-array v0, v1, [B

    .line 11
    .local v0, "tmp":[B
    const/4 v1, 0x0

    const/16 v2, -0x80

    aput-byte v2, v0, v1

    .line 12
    return-object v0
.end method

.method static oneAsInts()[I
    .locals 3

    .prologue
    .line 17
    const/4 v1, 0x4

    new-array v0, v1, [I

    .line 18
    .local v0, "tmp":[I
    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    aput v2, v0, v1

    .line 19
    return-object v0
.end method

.method static shiftRight([B)V
    .locals 4
    .param p0, "block"    # [B

    .prologue
    .line 94
    const/4 v2, 0x0

    .line 95
    .local v2, "i":I
    const/4 v1, 0x0

    .line 98
    .local v1, "bit":I
    :goto_0
    aget-byte v3, p0, v2

    and-int/lit16 v0, v3, 0xff

    .line 99
    .local v0, "b":I
    ushr-int/lit8 v3, v0, 0x1

    or-int/2addr v3, v1

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    .line 100
    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x10

    if-ne v2, v3, :cond_0

    .line 106
    return-void

    .line 104
    :cond_0
    and-int/lit8 v3, v0, 0x1

    shl-int/lit8 v1, v3, 0x7

    .line 105
    goto :goto_0
.end method

.method static shiftRight([I)V
    .locals 4
    .param p0, "block"    # [I

    .prologue
    .line 110
    const/4 v2, 0x0

    .line 111
    .local v2, "i":I
    const/4 v1, 0x0

    .line 114
    .local v1, "bit":I
    :goto_0
    aget v0, p0, v2

    .line 115
    .local v0, "b":I
    ushr-int/lit8 v3, v0, 0x1

    or-int/2addr v3, v1

    aput v3, p0, v2

    .line 116
    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 122
    return-void

    .line 120
    :cond_0
    shl-int/lit8 v1, v0, 0x1f

    .line 121
    goto :goto_0
.end method

.method static shiftRightN([II)V
    .locals 4
    .param p0, "block"    # [I
    .param p1, "n"    # I

    .prologue
    .line 126
    const/4 v2, 0x0

    .line 127
    .local v2, "i":I
    const/4 v1, 0x0

    .line 130
    .local v1, "bits":I
    :goto_0
    aget v0, p0, v2

    .line 131
    .local v0, "b":I
    ushr-int v3, v0, p1

    or-int/2addr v3, v1

    aput v3, p0, v2

    .line 132
    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 138
    return-void

    .line 136
    :cond_0
    rsub-int/lit8 v3, p1, 0x20

    shl-int v1, v0, v3

    .line 137
    goto :goto_0
.end method

.method static xor([B[B)V
    .locals 3
    .param p0, "block"    # [B
    .param p1, "val"    # [B

    .prologue
    .line 142
    const/16 v0, 0xf

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 144
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 142
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 146
    :cond_0
    return-void
.end method

.method static xor([I[I)V
    .locals 3
    .param p0, "block"    # [I
    .param p1, "val"    # [I

    .prologue
    .line 150
    const/4 v0, 0x3

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 152
    aget v1, p0, v0

    aget v2, p1, v0

    xor-int/2addr v1, v2

    aput v1, p0, v0

    .line 150
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 154
    :cond_0
    return-void
.end method
