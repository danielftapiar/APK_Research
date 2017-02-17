.class Lorg/apache/commons/compress/archivers/cpio/CpioUtil;
.super Ljava/lang/Object;
.source "CpioUtil.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static byteArray2long([BZ)J
    .locals 8
    .param p0, "number"    # [B
    .param p1, "swapHalfWord"    # Z

    .prologue
    const/4 v7, 0x0

    .line 47
    array-length v6, p0

    rem-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_0

    .line 48
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v6}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v6

    .line 51
    :cond_0
    const-wide/16 v2, 0x0

    .line 52
    .local v2, "ret":J
    const/4 v0, 0x0

    .line 53
    .local v0, "pos":I
    array-length v6, p0

    new-array v5, v6, [B

    .line 54
    .local v5, "tmp_number":[B
    array-length v6, p0

    invoke-static {p0, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    if-nez p1, :cond_1

    .line 57
    const/4 v4, 0x0

    .line 58
    .local v4, "tmp":B
    const/4 v0, 0x0

    :goto_0
    array-length v6, v5

    if-ge v0, v6, :cond_1

    .line 59
    aget-byte v4, v5, v0

    .line 60
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "pos":I
    .local v1, "pos":I
    aget-byte v6, v5, v1

    aput-byte v6, v5, v0

    .line 61
    aput-byte v4, v5, v1

    .line 58
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "pos":I
    .restart local v0    # "pos":I
    goto :goto_0

    .line 65
    .end local v4    # "tmp":B
    :cond_1
    aget-byte v6, v5, v7

    and-int/lit16 v6, v6, 0xff

    int-to-long v2, v6

    .line 66
    const/4 v0, 0x1

    :goto_1
    array-length v6, v5

    if-ge v0, v6, :cond_2

    .line 67
    const/16 v6, 0x8

    shl-long/2addr v2, v6

    .line 68
    aget-byte v6, v5, v0

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    or-long/2addr v2, v6

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 70
    :cond_2
    return-wide v2
.end method

.method static fileType(J)J
    .locals 2
    .param p0, "mode"    # J

    .prologue
    .line 32
    const-wide/32 v0, 0xf000

    and-long/2addr v0, p0

    return-wide v0
.end method

.method static long2byteArray(JIZ)[B
    .locals 8
    .param p0, "number"    # J
    .param p2, "length"    # I
    .param p3, "swapHalfWord"    # Z

    .prologue
    .line 89
    new-array v2, p2, [B

    .line 90
    .local v2, "ret":[B
    const/4 v0, 0x0

    .line 91
    .local v0, "pos":I
    const-wide/16 v4, 0x0

    .line 93
    .local v4, "tmp_number":J
    rem-int/lit8 v6, p2, 0x2

    if-nez v6, :cond_0

    const/4 v6, 0x2

    if-ge p2, v6, :cond_1

    .line 94
    :cond_0
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v6}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v6

    .line 97
    :cond_1
    move-wide v4, p0

    .line 98
    add-int/lit8 v0, p2, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 99
    const-wide/16 v6, 0xff

    and-long/2addr v6, v4

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v2, v0

    .line 100
    const/16 v6, 0x8

    shr-long/2addr v4, v6

    .line 98
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 103
    :cond_2
    if-nez p3, :cond_4

    .line 104
    const/4 v3, 0x0

    .line 105
    .local v3, "tmp":B
    const/4 v0, 0x0

    move v1, v0

    .end local v0    # "pos":I
    .local v1, "pos":I
    :goto_1
    if-ge v1, p2, :cond_3

    .line 106
    aget-byte v3, v2, v1

    .line 107
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "pos":I
    .restart local v0    # "pos":I
    aget-byte v6, v2, v0

    aput-byte v6, v2, v1

    .line 108
    aput-byte v3, v2, v0

    .line 105
    add-int/lit8 v0, v0, 0x1

    move v1, v0

    .end local v0    # "pos":I
    .restart local v1    # "pos":I
    goto :goto_1

    :cond_3
    move v0, v1

    .line 112
    .end local v1    # "pos":I
    .end local v3    # "tmp":B
    .restart local v0    # "pos":I
    :cond_4
    return-object v2
.end method
