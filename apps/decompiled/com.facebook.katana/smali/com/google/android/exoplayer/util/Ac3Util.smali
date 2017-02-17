.class public final Lcom/google/android/exoplayer/util/Ac3Util;
.super Ljava/lang/Object;
.source "Ac3Util.java"


# static fields
.field private static final a:[I

.field private static final b:[I

.field private static final c:[I

.field private static final d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x13

    .line 28
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer/util/Ac3Util;->a:[I

    .line 30
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/exoplayer/util/Ac3Util;->b:[I

    .line 32
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/exoplayer/util/Ac3Util;->c:[I

    .line 35
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/android/exoplayer/util/Ac3Util;->d:[I

    return-void

    .line 28
    :array_0
    .array-data 4
        0xbb80
        0xac44
        0x7d00
    .end array-data

    .line 30
    :array_1
    .array-data 4
        0x2
        0x1
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
    .end array-data

    .line 32
    :array_2
    .array-data 4
        0x20
        0x28
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0xa0
        0xc0
        0xe0
        0x100
        0x140
        0x180
        0x1c0
        0x200
        0x240
        0x280
    .end array-data

    .line 35
    :array_3
    .array-data 4
        0x45
        0x57
        0x68
        0x79
        0x8b
        0xae
        0xd0
        0xf3
        0x116
        0x15c
        0x1a1
        0x1e7
        0x22d
        0x2b8
        0x343
        0x3cf
        0x45a
        0x4e5
        0x571
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    return-void
.end method

.method public static a(II)I
    .locals 2

    .prologue
    .line 143
    mul-int/lit8 v0, p0, 0x8

    mul-int/2addr v0, p1

    .line 144
    const v1, 0xbb800

    add-int/2addr v0, v1

    const v1, 0x177000

    div-int/2addr v0, v1

    return v0
.end method

.method public static a(Lcom/google/android/exoplayer/util/ParsableBitArray;)Lcom/google/android/exoplayer/MediaFormat;
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x2

    .line 89
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->a(I)V

    .line 91
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer/util/ParsableBitArray;->b(I)I

    move-result v5

    .line 92
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->a(I)V

    .line 93
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->b(I)I

    move-result v6

    .line 94
    and-int/lit8 v0, v6, 0x1

    if-eqz v0, :cond_0

    if-eq v6, v4, :cond_0

    .line 95
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer/util/ParsableBitArray;->a(I)V

    .line 97
    :cond_0
    and-int/lit8 v0, v6, 0x4

    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer/util/ParsableBitArray;->a(I)V

    .line 100
    :cond_1
    if-ne v6, v1, :cond_2

    .line 101
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer/util/ParsableBitArray;->a(I)V

    .line 103
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->b()Z

    move-result v7

    .line 104
    const-string v0, "audio/ac3"

    const/4 v1, -0x1

    const-wide/16 v2, -0x1

    sget-object v8, Lcom/google/android/exoplayer/util/Ac3Util;->b:[I

    aget v6, v8, v6

    if-eqz v7, :cond_3

    :goto_0
    add-int/2addr v4, v6

    sget-object v6, Lcom/google/android/exoplayer/util/Ac3Util;->a:[I

    aget v5, v6, v5

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer/MediaFormat;->b(Ljava/lang/String;IJIILjava/util/List;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    return-object v0

    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/google/android/exoplayer/util/ParsableByteArray;)Lcom/google/android/exoplayer/MediaFormat;
    .locals 7

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->d()I

    move-result v0

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v0, v0, 0x6

    .line 45
    sget-object v1, Lcom/google/android/exoplayer/util/Ac3Util;->a:[I

    aget v5, v1, v0

    .line 46
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->d()I

    move-result v0

    .line 48
    sget-object v1, Lcom/google/android/exoplayer/util/Ac3Util;->b:[I

    and-int/lit8 v2, v0, 0x38

    shr-int/lit8 v2, v2, 0x3

    aget v4, v1, v2

    .line 50
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 51
    add-int/lit8 v4, v4, 0x1

    .line 53
    :cond_0
    const-string v0, "audio/ac3"

    const/4 v1, -0x1

    const-wide/16 v2, -0x1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer/MediaFormat;->b(Ljava/lang/String;IJIILjava/util/List;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lcom/google/android/exoplayer/util/ParsableBitArray;)I
    .locals 4

    .prologue
    .line 118
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->a(I)V

    .line 120
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->b(I)I

    move-result v0

    .line 121
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer/util/ParsableBitArray;->b(I)I

    move-result v1

    .line 122
    sget-object v2, Lcom/google/android/exoplayer/util/Ac3Util;->a:[I

    aget v0, v2, v0

    .line 123
    sget-object v2, Lcom/google/android/exoplayer/util/Ac3Util;->c:[I

    div-int/lit8 v3, v1, 0x2

    aget v2, v2, v3

    .line 124
    const/16 v3, 0x7d00

    if-ne v0, v3, :cond_0

    .line 125
    mul-int/lit8 v0, v2, 0x6

    .line 129
    :goto_0
    return v0

    .line 126
    :cond_0
    const v3, 0xac44

    if-ne v0, v3, :cond_1

    .line 127
    sget-object v0, Lcom/google/android/exoplayer/util/Ac3Util;->d:[I

    div-int/lit8 v2, v1, 0x2

    aget v0, v0, v2

    rem-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 129
    :cond_1
    mul-int/lit8 v0, v2, 0x4

    goto :goto_0
.end method

.method public static b(Lcom/google/android/exoplayer/util/ParsableByteArray;)Lcom/google/android/exoplayer/MediaFormat;
    .locals 4

    .prologue
    .line 62
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->c(I)V

    .line 67
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->d()I

    move-result v0

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v0, v0, 0x6

    .line 68
    sget-object v1, Lcom/google/android/exoplayer/util/Ac3Util;->a:[I

    aget v1, v1, v0

    .line 69
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->d()I

    move-result v2

    .line 71
    sget-object v0, Lcom/google/android/exoplayer/util/Ac3Util;->b:[I

    and-int/lit8 v3, v2, 0xe

    shr-int/lit8 v3, v3, 0x1

    aget v0, v0, v3

    .line 73
    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 74
    add-int/lit8 v0, v0, 0x1

    .line 76
    :cond_0
    const-string v2, "audio/eac3"

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v0, v1, v3}, Lcom/google/android/exoplayer/MediaFormat;->a(Ljava/lang/String;IILjava/util/List;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    return-object v0
.end method
