.class public final Lcom/google/android/exoplayer/util/H264Util;
.super Ljava/lang/Object;
.source "H264Util.java"


# static fields
.field public static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer/util/H264Util;->a:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    return-void
.end method

.method public static a([BI)I
    .locals 1

    .prologue
    .line 64
    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public static a([BII[Z)I
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 90
    sub-int v3, p2, p1

    .line 92
    if-ltz v3, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 93
    if-nez v3, :cond_2

    .line 144
    :cond_0
    :goto_1
    return p2

    :cond_1
    move v0, v2

    .line 92
    goto :goto_0

    .line 97
    :cond_2
    if-eqz p3, :cond_5

    .line 98
    aget-boolean v0, p3, v2

    if-eqz v0, :cond_3

    .line 99
    invoke-static {p3}, Lcom/google/android/exoplayer/util/H264Util;->a([Z)V

    .line 100
    add-int/lit8 p2, p1, -0x3

    goto :goto_1

    .line 101
    :cond_3
    if-le v3, v1, :cond_4

    aget-boolean v0, p3, v1

    if-eqz v0, :cond_4

    aget-byte v0, p0, p1

    if-ne v0, v1, :cond_4

    .line 102
    invoke-static {p3}, Lcom/google/android/exoplayer/util/H264Util;->a([Z)V

    .line 103
    add-int/lit8 p2, p1, -0x2

    goto :goto_1

    .line 104
    :cond_4
    if-le v3, v6, :cond_5

    aget-boolean v0, p3, v6

    if-eqz v0, :cond_5

    aget-byte v0, p0, p1

    if-nez v0, :cond_5

    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    if-ne v0, v1, :cond_5

    .line 106
    invoke-static {p3}, Lcom/google/android/exoplayer/util/H264Util;->a([Z)V

    .line 107
    add-int/lit8 p2, p1, -0x1

    goto :goto_1

    .line 111
    :cond_5
    add-int/lit8 v4, p2, -0x1

    .line 115
    add-int/lit8 v0, p1, 0x2

    :goto_2
    if-ge v0, v4, :cond_9

    .line 116
    aget-byte v5, p0, v0

    and-int/lit16 v5, v5, 0xfe

    if-nez v5, :cond_8

    .line 119
    add-int/lit8 v5, v0, -0x2

    aget-byte v5, p0, v5

    if-nez v5, :cond_7

    add-int/lit8 v5, v0, -0x1

    aget-byte v5, p0, v5

    if-nez v5, :cond_7

    aget-byte v5, p0, v0

    if-ne v5, v1, :cond_7

    .line 120
    if-eqz p3, :cond_6

    .line 121
    invoke-static {p3}, Lcom/google/android/exoplayer/util/H264Util;->a([Z)V

    .line 123
    :cond_6
    add-int/lit8 p2, v0, -0x2

    goto :goto_1

    .line 127
    :cond_7
    add-int/lit8 v0, v0, -0x2

    .line 115
    :cond_8
    add-int/lit8 v0, v0, 0x3

    goto :goto_2

    .line 131
    :cond_9
    if-eqz p3, :cond_0

    .line 133
    if-le v3, v6, :cond_b

    add-int/lit8 v0, p2, -0x3

    aget-byte v0, p0, v0

    if-nez v0, :cond_a

    add-int/lit8 v0, p2, -0x2

    aget-byte v0, p0, v0

    if-nez v0, :cond_a

    add-int/lit8 v0, p2, -0x1

    aget-byte v0, p0, v0

    if-ne v0, v1, :cond_a

    move v0, v1

    :goto_3
    aput-boolean v0, p3, v2

    .line 138
    if-le v3, v1, :cond_10

    add-int/lit8 v0, p2, -0x2

    aget-byte v0, p0, v0

    if-nez v0, :cond_f

    add-int/lit8 v0, p2, -0x1

    aget-byte v0, p0, v0

    if-nez v0, :cond_f

    move v0, v1

    :goto_4
    aput-boolean v0, p3, v1

    .line 141
    add-int/lit8 v0, p2, -0x1

    aget-byte v0, p0, v0

    if-nez v0, :cond_12

    :goto_5
    aput-boolean v1, p3, v6

    goto/16 :goto_1

    :cond_a
    move v0, v2

    .line 133
    goto :goto_3

    :cond_b
    if-ne v3, v6, :cond_d

    aget-boolean v0, p3, v6

    if-eqz v0, :cond_c

    add-int/lit8 v0, p2, -0x2

    aget-byte v0, p0, v0

    if-nez v0, :cond_c

    add-int/lit8 v0, p2, -0x1

    aget-byte v0, p0, v0

    if-ne v0, v1, :cond_c

    move v0, v1

    goto :goto_3

    :cond_c
    move v0, v2

    goto :goto_3

    :cond_d
    aget-boolean v0, p3, v1

    if-eqz v0, :cond_e

    add-int/lit8 v0, p2, -0x1

    aget-byte v0, p0, v0

    if-ne v0, v1, :cond_e

    move v0, v1

    goto :goto_3

    :cond_e
    move v0, v2

    goto :goto_3

    :cond_f
    move v0, v2

    .line 138
    goto :goto_4

    :cond_10
    aget-boolean v0, p3, v6

    if-eqz v0, :cond_11

    add-int/lit8 v0, p2, -0x1

    aget-byte v0, p0, v0

    if-nez v0, :cond_11

    move v0, v1

    goto :goto_4

    :cond_11
    move v0, v2

    goto :goto_4

    :cond_12
    move v1, v2

    .line 141
    goto :goto_5
.end method

.method public static a([Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 153
    aput-boolean v1, p0, v1

    .line 154
    const/4 v0, 0x1

    aput-boolean v1, p0, v0

    .line 155
    const/4 v0, 0x2

    aput-boolean v1, p0, v0

    .line 156
    return-void
.end method

.method public static a(Lcom/google/android/exoplayer/util/ParsableByteArray;)[B
    .locals 3

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->e()I

    move-result v0

    .line 50
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->c()I

    move-result v1

    .line 51
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->c(I)V

    .line 52
    iget-object v2, p0, Lcom/google/android/exoplayer/util/ParsableByteArray;->a:[B

    invoke-static {v2, v1, v0}, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil;->a([BII)[B

    move-result-object v0

    return-object v0
.end method
