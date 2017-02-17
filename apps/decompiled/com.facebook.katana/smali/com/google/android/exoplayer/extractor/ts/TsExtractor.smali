.class public final Lcom/google/android/exoplayer/extractor/ts/TsExtractor;
.super Ljava/lang/Object;
.source "TsExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer/extractor/Extractor;
.implements Lcom/google/android/exoplayer/extractor/SeekMap;


# instance fields
.field final a:Landroid/util/SparseBooleanArray;

.field final b:Landroid/util/SparseBooleanArray;

.field final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/exoplayer/extractor/ts/TsExtractor$TsPayloadReader;",
            ">;"
        }
    .end annotation
.end field

.field d:Lcom/google/android/exoplayer/extractor/ts/Id3Reader;

.field private final e:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private final f:Lcom/google/android/exoplayer/util/ParsableBitArray;

.field private final g:J

.field private h:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

.field private i:J

.field private j:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 68
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;-><init>(JLcom/google/android/exoplayer/audio/AudioCapabilities;)V

    .line 69
    return-void
.end method

.method public constructor <init>(JLcom/google/android/exoplayer/audio/AudioCapabilities;)V
    .locals 3

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-wide p1, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->g:J

    .line 73
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/4 v1, 0x3

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->f:Lcom/google/android/exoplayer/util/ParsableBitArray;

    .line 74
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/16 v1, 0xbc

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->e:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 75
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->a:Landroid/util/SparseBooleanArray;

    .line 76
    invoke-static {p3}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->a(Lcom/google/android/exoplayer/audio/AudioCapabilities;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->b:Landroid/util/SparseBooleanArray;

    .line 77
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->c:Landroid/util/SparseArray;

    .line 78
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->c:Landroid/util/SparseArray;

    const/4 v1, 0x0

    new-instance v2, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;

    invoke-direct {v2, p0}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;-><init>(Lcom/google/android/exoplayer/extractor/ts/TsExtractor;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 79
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->j:J

    .line 80
    return-void
.end method

.method private static a(Lcom/google/android/exoplayer/audio/AudioCapabilities;)Landroid/util/SparseBooleanArray;
    .locals 3

    .prologue
    .line 186
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 187
    if-eqz p0, :cond_1

    .line 188
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer/audio/AudioCapabilities;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    const/16 v1, 0x81

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 191
    :cond_0
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer/audio/AudioCapabilities;->a(I)Z

    .line 196
    :cond_1
    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/PositionHolder;)I
    .locals 6

    .prologue
    const/16 v2, 0xbc

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 102
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->e:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->a:[B

    invoke-interface {p1, v0, v1, v2, v4}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->a([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    const/4 v0, -0x1

    .line 137
    :goto_0
    return v0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->e:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->b(I)V

    .line 107
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->e:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->a(I)V

    .line 108
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->e:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->d()I

    move-result v0

    .line 109
    const/16 v2, 0x47

    if-eq v0, v2, :cond_1

    move v0, v1

    .line 110
    goto :goto_0

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->e:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->f:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->a(Lcom/google/android/exoplayer/util/ParsableBitArray;I)V

    .line 114
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->f:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer/util/ParsableBitArray;->a(I)V

    .line 115
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->f:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->b()Z

    move-result v2

    .line 116
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->f:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer/util/ParsableBitArray;->a(I)V

    .line 117
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->f:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer/util/ParsableBitArray;->b(I)I

    move-result v0

    .line 118
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->f:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer/util/ParsableBitArray;->a(I)V

    .line 119
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->f:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v3}, Lcom/google/android/exoplayer/util/ParsableBitArray;->b()Z

    move-result v3

    .line 120
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->f:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/util/ParsableBitArray;->b()Z

    move-result v4

    .line 124
    if-eqz v3, :cond_2

    .line 125
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->e:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->d()I

    move-result v3

    .line 126
    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->e:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v5, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->c(I)V

    .line 130
    :cond_2
    if-eqz v4, :cond_3

    .line 131
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->c:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$TsPayloadReader;

    .line 132
    if-eqz v0, :cond_3

    .line 133
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->e:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->h:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    invoke-virtual {v0, v3, v2, v4}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$TsPayloadReader;->a(Lcom/google/android/exoplayer/util/ParsableByteArray;ZLcom/google/android/exoplayer/extractor/ExtractorOutput;)V

    :cond_3
    move v0, v1

    .line 137
    goto :goto_0
.end method

.method final a(J)J
    .locals 11

    .prologue
    const-wide/high16 v8, -0x8000000000000000L

    const-wide v4, 0x1ffffffffL

    .line 161
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->j:J

    cmp-long v0, v0, v8

    if-eqz v0, :cond_2

    .line 164
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->j:J

    const-wide v2, 0xffffffffL

    add-long/2addr v0, v2

    div-long v2, v0, v4

    .line 165
    const-wide/16 v0, 0x1

    sub-long v0, v2, v0

    mul-long/2addr v0, v4

    add-long/2addr v0, p1

    .line 166
    mul-long/2addr v2, v4

    add-long/2addr v2, p1

    .line 167
    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->j:J

    sub-long v4, v0, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->j:J

    sub-long v6, v2, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 171
    :goto_0
    const-wide/32 v2, 0xf4240

    mul-long/2addr v2, v0

    const-wide/32 v4, 0x15f90

    div-long/2addr v2, v4

    .line 173
    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->j:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_0

    .line 174
    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->g:J

    sub-long/2addr v4, v2

    iput-wide v4, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->i:J

    .line 177
    :cond_0
    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->j:J

    .line 178
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->i:J

    add-long/2addr v0, v2

    return-wide v0

    :cond_1
    move-wide v0, v2

    .line 167
    goto :goto_0

    :cond_2
    move-wide v0, p1

    goto :goto_0
.end method

.method public final a(Lcom/google/android/exoplayer/extractor/ExtractorOutput;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->h:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    .line 87
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->a(Lcom/google/android/exoplayer/extractor/SeekMap;)V

    .line 88
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public final b(J)J
    .locals 2

    .prologue
    .line 149
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 92
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->i:J

    .line 93
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->j:J

    .line 94
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$TsPayloadReader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$TsPayloadReader;->a()V

    .line 94
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 97
    :cond_0
    return-void
.end method
