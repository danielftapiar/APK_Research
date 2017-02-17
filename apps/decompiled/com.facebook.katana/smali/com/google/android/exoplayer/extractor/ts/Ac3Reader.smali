.class final Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;
.super Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
.source "Ac3Reader.java"


# instance fields
.field private final b:Lcom/google/android/exoplayer/util/ParsableBitArray;

.field private final c:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private d:I

.field private e:I

.field private f:Z

.field private g:J

.field private h:Lcom/google/android/exoplayer/MediaFormat;

.field private i:I

.field private j:I

.field private k:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V

    .line 56
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/16 v1, 0x8

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->b:Lcom/google/android/exoplayer/util/ParsableBitArray;

    .line 57
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->b:Lcom/google/android/exoplayer/util/ParsableBitArray;

    iget-object v1, v1, Lcom/google/android/exoplayer/util/ParsableBitArray;->a:[B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->c:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->d:I

    .line 59
    return-void
.end method

.method private a(Lcom/google/android/exoplayer/util/ParsableByteArray;)Z
    .locals 5

    .prologue
    const/16 v4, 0xb

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 134
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->a()I

    move-result v0

    if-lez v0, :cond_4

    .line 135
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->f:Z

    if-nez v0, :cond_1

    .line 136
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->d()I

    move-result v0

    if-ne v0, v4, :cond_0

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->f:Z

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    .line 139
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->d()I

    move-result v0

    .line 140
    const/16 v3, 0x77

    if-ne v0, v3, :cond_2

    .line 141
    iput-boolean v2, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->f:Z

    .line 147
    :goto_2
    return v1

    .line 144
    :cond_2
    if-ne v0, v4, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->f:Z

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v1, v2

    .line 147
    goto :goto_2
.end method

.method private a(Lcom/google/android/exoplayer/util/ParsableByteArray;[B)Z
    .locals 2

    .prologue
    .line 120
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->a()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->e:I

    rsub-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 121
    iget v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->e:I

    invoke-virtual {p1, p2, v1, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->a([BII)V

    .line 122
    iget v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->e:I

    .line 123
    iget v0, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->e:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->b:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->a()V

    .line 155
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->b:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Ac3Util;->b(Lcom/google/android/exoplayer/util/ParsableBitArray;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->i:I

    .line 156
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->h:Lcom/google/android/exoplayer/MediaFormat;

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->b:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->a()V

    .line 158
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->b:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Ac3Util;->a(Lcom/google/android/exoplayer/util/ParsableBitArray;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->h:Lcom/google/android/exoplayer/MediaFormat;

    .line 159
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->a:Lcom/google/android/exoplayer/extractor/TrackOutput;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->h:Lcom/google/android/exoplayer/MediaFormat;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/extractor/TrackOutput;->a(Lcom/google/android/exoplayer/MediaFormat;)V

    .line 160
    iget v0, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->i:I

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->h:Lcom/google/android/exoplayer/MediaFormat;

    iget v1, v1, Lcom/google/android/exoplayer/MediaFormat;->h:I

    invoke-static {v0, v1}, Lcom/google/android/exoplayer/util/Ac3Util;->a(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->j:I

    .line 162
    :cond_0
    const-wide/16 v0, 0x1f40

    iget v2, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->i:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget v2, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->j:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->g:J

    .line 163
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->d:I

    .line 64
    iput v0, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->e:I

    .line 65
    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->f:Z

    .line 66
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer/util/ParsableByteArray;JZ)V
    .locals 10

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 70
    if-eqz p4, :cond_0

    .line 71
    iput-wide p2, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->k:J

    .line 73
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->a()I

    move-result v0

    if-lez v0, :cond_1

    .line 74
    iget v0, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 76
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->a(Lcom/google/android/exoplayer/util/ParsableByteArray;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iput v4, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->d:I

    .line 78
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->c:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->a:[B

    const/16 v1, 0xb

    aput-byte v1, v0, v6

    .line 79
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->c:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->a:[B

    const/16 v1, 0x77

    aput-byte v1, v0, v4

    .line 80
    iput v8, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->e:I

    goto :goto_0

    .line 84
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->c:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->a:[B

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->a(Lcom/google/android/exoplayer/util/ParsableByteArray;[B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->c()V

    .line 86
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->c:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->b(I)V

    .line 87
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->a:Lcom/google/android/exoplayer/extractor/TrackOutput;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->c:Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/16 v2, 0x8

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer/extractor/TrackOutput;->a(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 88
    iput v8, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->d:I

    goto :goto_0

    .line 92
    :pswitch_2
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->a()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->i:I

    iget v2, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->e:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 93
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->a:Lcom/google/android/exoplayer/extractor/TrackOutput;

    invoke-interface {v1, p1, v0}, Lcom/google/android/exoplayer/extractor/TrackOutput;->a(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 94
    iget v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->e:I

    .line 95
    iget v0, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->e:I

    iget v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->i:I

    if-ne v0, v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->a:Lcom/google/android/exoplayer/extractor/TrackOutput;

    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->k:J

    iget v5, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->i:I

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer/extractor/TrackOutput;->a(JIII[B)V

    .line 97
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->k:J

    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->g:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->k:J

    .line 98
    iput v6, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->d:I

    goto :goto_0

    .line 103
    :cond_1
    return-void

    .line 74
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 108
    return-void
.end method
