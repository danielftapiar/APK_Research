.class public final Lcom/google/android/exoplayer/util/ParsableBitArray;
.super Ljava/lang/Object;
.source "ParsableBitArray.java"


# instance fields
.field public a:[B

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->a:[B

    .line 40
    return-void
.end method

.method private c(I)I
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->a:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private e()I
    .locals 3

    .prologue
    .line 158
    iget v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->c:I

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->a:[B

    iget v1, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->b:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->c:I

    shl-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->a:[B

    iget v2, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->b:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    iget v2, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->c:I

    rsub-int/lit8 v2, v2, 0x8

    ushr-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 164
    :goto_0
    iget v1, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->b:I

    .line 165
    and-int/lit16 v0, v0, 0xff

    return v0

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->a:[B

    iget v1, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->b:I

    aget-byte v0, v0, v1

    goto :goto_0
.end method

.method private f()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 173
    move v0, v1

    .line 174
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->b()Z

    move-result v2

    if-nez v2, :cond_0

    .line 175
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    :cond_0
    const/4 v2, 0x1

    shl-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    if-lez v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->b(I)I

    move-result v1

    :cond_1
    add-int v0, v2, v1

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->b:I

    .line 69
    iget v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->b:I

    mul-int/lit8 v0, v0, 0x8

    rsub-int/lit8 v0, v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->c:I

    .line 70
    return-void
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 78
    iget v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->b:I

    div-int/lit8 v1, p1, 0x8

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->b:I

    .line 79
    iget v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->c:I

    rem-int/lit8 v1, p1, 0x8

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->c:I

    .line 80
    iget v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->c:I

    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    .line 81
    iget v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->b:I

    .line 82
    iget v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->c:I

    add-int/lit8 v0, v0, -0x8

    iput v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->c:I

    .line 84
    :cond_0
    return-void
.end method

.method public final b(I)I
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/16 v5, 0x8

    .line 102
    if-nez p1, :cond_1

    .line 134
    :cond_0
    :goto_0
    return v0

    .line 109
    :cond_1
    :goto_1
    if-lt p1, v5, :cond_2

    .line 110
    add-int/lit8 p1, p1, -0x8

    .line 111
    invoke-direct {p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->e()I

    move-result v1

    shl-int/2addr v1, p1

    or-int/2addr v0, v1

    goto :goto_1

    .line 114
    :cond_2
    if-lez p1, :cond_0

    .line 115
    iget v1, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->c:I

    add-int/2addr v1, p1

    .line 116
    const/16 v2, 0xff

    rsub-int/lit8 v3, p1, 0x8

    shr-int/2addr v2, v3

    int-to-byte v2, v2

    .line 118
    if-le v1, v5, :cond_4

    .line 120
    iget v3, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->b:I

    invoke-direct {p0, v3}, Lcom/google/android/exoplayer/util/ParsableBitArray;->c(I)I

    move-result v3

    add-int/lit8 v4, v1, -0x8

    shl-int/2addr v3, v4

    iget v4, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->b:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v4}, Lcom/google/android/exoplayer/util/ParsableBitArray;->c(I)I

    move-result v4

    rsub-int/lit8 v5, v1, 0x10

    shr-int/2addr v4, v5

    or-int/2addr v3, v4

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 122
    iget v2, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->b:I

    .line 131
    :cond_3
    :goto_2
    rem-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->c:I

    goto :goto_0

    .line 125
    :cond_4
    iget v3, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->b:I

    invoke-direct {p0, v3}, Lcom/google/android/exoplayer/util/ParsableBitArray;->c(I)I

    move-result v3

    rsub-int/lit8 v4, v1, 0x8

    shr-int/2addr v3, v4

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 126
    if-ne v1, v5, :cond_3

    .line 127
    iget v2, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->b:I

    goto :goto_2
.end method

.method public final b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 92
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->b(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->f()I

    move-result v0

    return v0
.end method

.method public final d()I
    .locals 2

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->f()I

    move-result v1

    .line 153
    rem-int/lit8 v0, v1, 0x2

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    add-int/lit8 v1, v1, 0x1

    div-int/lit8 v1, v1, 0x2

    mul-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
