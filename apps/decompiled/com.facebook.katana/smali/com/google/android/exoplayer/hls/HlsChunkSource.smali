.class public Lcom/google/android/exoplayer/hls/HlsChunkSource;
.super Ljava/lang/Object;
.source "HlsChunkSource.java"


# instance fields
.field a:[B

.field final b:[Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;

.field final c:[J

.field final d:[J

.field e:Z

.field f:J

.field private final g:Lcom/google/android/exoplayer/upstream/DataSource;

.field private final h:Lcom/google/android/exoplayer/hls/HlsPlaylistParser;

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/hls/Variant;",
            ">;"
        }
    .end annotation
.end field

.field private final j:[Lcom/google/android/exoplayer/chunk/Format;

.field private final k:Lcom/google/android/exoplayer/upstream/BandwidthMeter;

.field private final l:I

.field private final m:Ljava/lang/String;

.field private final n:I

.field private final o:I

.field private final p:J

.field private final q:J

.field private final r:Lcom/google/android/exoplayer/audio/AudioCapabilities;

.field private s:I

.field private t:Landroid/net/Uri;

.field private u:[B

.field private v:Ljava/lang/String;

.field private w:[B


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/upstream/DataSource;Ljava/lang/String;Lcom/google/android/exoplayer/hls/HlsPlaylist;Lcom/google/android/exoplayer/upstream/BandwidthMeter;)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 147
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer/hls/HlsChunkSource;-><init>(Lcom/google/android/exoplayer/upstream/DataSource;Ljava/lang/String;Lcom/google/android/exoplayer/hls/HlsPlaylist;Lcom/google/android/exoplayer/upstream/BandwidthMeter;[IILcom/google/android/exoplayer/audio/AudioCapabilities;)V

    .line 150
    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer/upstream/DataSource;Ljava/lang/String;Lcom/google/android/exoplayer/hls/HlsPlaylist;Lcom/google/android/exoplayer/upstream/BandwidthMeter;[IILcom/google/android/exoplayer/audio/AudioCapabilities;)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v5, -0x1

    const/4 v7, 0x1

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-object p1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->g:Lcom/google/android/exoplayer/upstream/DataSource;

    .line 175
    iput-object p4, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->k:Lcom/google/android/exoplayer/upstream/BandwidthMeter;

    .line 176
    iput v7, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->l:I

    .line 177
    iput-object v4, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->r:Lcom/google/android/exoplayer/audio/AudioCapabilities;

    .line 178
    const-wide/32 v2, 0x4c4b40

    iput-wide v2, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->p:J

    .line 179
    const-wide/32 v2, 0x1312d00

    iput-wide v2, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->q:J

    .line 180
    iget-object v0, p3, Lcom/google/android/exoplayer/hls/HlsPlaylist;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->m:Ljava/lang/String;

    .line 181
    new-instance v0, Lcom/google/android/exoplayer/hls/HlsPlaylistParser;

    invoke-direct {v0}, Lcom/google/android/exoplayer/hls/HlsPlaylistParser;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->h:Lcom/google/android/exoplayer/hls/HlsPlaylistParser;

    .line 183
    iget v0, p3, Lcom/google/android/exoplayer/hls/HlsPlaylist;->h:I

    if-ne v0, v7, :cond_1

    .line 184
    new-instance v0, Lcom/google/android/exoplayer/hls/Variant;

    move-object v2, p2

    move v3, v1

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer/hls/Variant;-><init>(ILjava/lang/String;ILjava/lang/String;II)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->i:Ljava/util/List;

    .line 185
    new-array v0, v7, [Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;

    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->b:[Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;

    .line 187
    new-array v0, v7, [J

    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->c:[J

    .line 188
    new-array v0, v7, [J

    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->d:[J

    .line 189
    check-cast p3, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;

    invoke-direct {p0, v1, p3}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->a(ILcom/google/android/exoplayer/hls/HlsMediaPlaylist;)V

    .line 198
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->i:Ljava/util/List;

    invoke-static {v0, v4}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->a(Ljava/util/List;[I)[Lcom/google/android/exoplayer/chunk/Format;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->j:[Lcom/google/android/exoplayer/chunk/Format;

    .line 203
    const v0, 0x7fffffff

    move v2, v5

    .line 204
    :goto_1
    iget-object v3, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->j:[Lcom/google/android/exoplayer/chunk/Format;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 205
    iget-object v3, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->j:[Lcom/google/android/exoplayer/chunk/Format;

    aget-object v3, v3, v1

    invoke-direct {p0, v3}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->a(Lcom/google/android/exoplayer/chunk/Format;)I

    move-result v3

    .line 206
    if-ge v3, v0, :cond_0

    .line 208
    iput v1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->s:I

    move v0, v3

    .line 210
    :cond_0
    iget-object v3, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->j:[Lcom/google/android/exoplayer/chunk/Format;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/google/android/exoplayer/chunk/Format;->d:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 211
    iget-object v3, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->j:[Lcom/google/android/exoplayer/chunk/Format;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/google/android/exoplayer/chunk/Format;->e:I

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 204
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 191
    :cond_1
    check-cast p3, Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;

    iget-object v0, p3, Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;->a:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->i:Ljava/util/List;

    .line 192
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 193
    new-array v2, v0, [Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;

    iput-object v2, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->b:[Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;

    .line 194
    new-array v2, v0, [J

    iput-object v2, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->c:[J

    .line 195
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->d:[J

    goto :goto_0

    .line 214
    :cond_2
    if-lez v2, :cond_3

    :goto_2
    iput v2, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->n:I

    .line 215
    if-lez v5, :cond_4

    :goto_3
    iput v5, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->o:I

    .line 216
    return-void

    .line 214
    :cond_3
    const/16 v2, 0x780

    goto :goto_2

    .line 215
    :cond_4
    const/16 v5, 0x438

    goto :goto_3
.end method

.method private a(I)I
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 441
    move v0, v1

    move v2, v3

    .line 442
    :goto_0
    iget-object v4, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->j:[Lcom/google/android/exoplayer/chunk/Format;

    array-length v4, v4

    if-ge v0, v4, :cond_2

    .line 443
    iget-object v4, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->j:[Lcom/google/android/exoplayer/chunk/Format;

    aget-object v4, v4, v0

    invoke-direct {p0, v4}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->a(Lcom/google/android/exoplayer/chunk/Format;)I

    move-result v4

    .line 444
    iget-object v5, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->c:[J

    aget-wide v4, v5, v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 445
    iget-object v2, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->j:[Lcom/google/android/exoplayer/chunk/Format;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/google/android/exoplayer/chunk/Format;->c:I

    if-gt v2, p1, :cond_0

    .line 453
    :goto_1
    return v0

    :cond_0
    move v2, v0

    .line 442
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 452
    :cond_2
    if-eq v2, v3, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-static {v1}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    move v0, v2

    .line 453
    goto :goto_1
.end method

.method private a(Lcom/google/android/exoplayer/chunk/Format;)I
    .locals 3

    .prologue
    .line 596
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 597
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/hls/Variant;

    iget-object v0, v0, Lcom/google/android/exoplayer/hls/Variant;->b:Lcom/google/android/exoplayer/chunk/Format;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer/chunk/Format;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 598
    return v1

    .line 596
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 602
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid format: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Lcom/google/android/exoplayer/hls/TsChunk;J)I
    .locals 8

    .prologue
    .line 409
    invoke-direct {p0}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->d()V

    .line 410
    if-nez p1, :cond_0

    .line 412
    iget v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->s:I

    .line 437
    :goto_0
    return v0

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->k:Lcom/google/android/exoplayer/upstream/BandwidthMeter;

    invoke-interface {v0}, Lcom/google/android/exoplayer/upstream/BandwidthMeter;->a()J

    move-result-wide v0

    .line 415
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 417
    iget v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->s:I

    goto :goto_0

    .line 419
    :cond_1
    long-to-float v0, v0

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->a(I)I

    move-result v2

    .line 421
    iget v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->s:I

    if-ne v2, v0, :cond_2

    .line 423
    iget v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->s:I

    goto :goto_0

    .line 427
    :cond_2
    iget v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->l:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    iget-wide v0, p1, Lcom/google/android/exoplayer/hls/TsChunk;->g:J

    .line 429
    :goto_1
    sub-long/2addr v0, p2

    .line 430
    iget-object v3, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->c:[J

    iget v4, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->s:I

    aget-wide v4, v3, v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    iget v3, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->s:I

    if-le v2, v3, :cond_3

    iget-wide v4, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->q:J

    cmp-long v3, v0, v4

    if-ltz v3, :cond_4

    :cond_3
    iget v3, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->s:I

    if-ge v2, v3, :cond_6

    iget-wide v4, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->p:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_6

    :cond_4
    move v0, v2

    .line 434
    goto :goto_0

    .line 427
    :cond_5
    iget-wide v0, p1, Lcom/google/android/exoplayer/hls/TsChunk;->h:J

    goto :goto_1

    .line 437
    :cond_6
    iget v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->s:I

    goto :goto_0
.end method

.method private a(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;
    .locals 8

    .prologue
    .line 480
    new-instance v0, Lcom/google/android/exoplayer/upstream/DataSpec;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    .line 481
    new-instance v1, Lcom/google/android/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;

    iget-object v2, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->g:Lcom/google/android/exoplayer/upstream/DataSource;

    iget-object v3, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->a:[B

    invoke-direct {v1, v2, v0, v3, p2}, Lcom/google/android/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;-><init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;[BLjava/lang/String;)V

    return-object v1
.end method

.method private a(ILcom/google/android/exoplayer/hls/HlsMediaPlaylist;)V
    .locals 4

    .prologue
    .line 512
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->d:[J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    aput-wide v2, v0, p1

    .line 513
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->b:[Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;

    aput-object p2, v0, p1

    .line 514
    iget-boolean v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->e:Z

    iget-boolean v1, p2, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->e:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->e:Z

    .line 515
    iget-wide v0, p2, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->f:J

    iput-wide v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->f:J

    .line 516
    return-void
.end method

.method private a(Landroid/net/Uri;Ljava/lang/String;[B)V
    .locals 5

    .prologue
    const/16 v3, 0x10

    .line 486
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 492
    :goto_0
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    .line 493
    new-array v2, v3, [B

    .line 494
    array-length v0, v1

    if-le v0, v3, :cond_1

    array-length v0, v1

    add-int/lit8 v0, v0, -0x10

    .line 495
    :goto_1
    array-length v3, v1

    rsub-int/lit8 v3, v3, 0x10

    add-int/2addr v3, v0

    array-length v4, v1

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 498
    iput-object p1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->t:Landroid/net/Uri;

    .line 499
    iput-object p3, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->u:[B

    .line 500
    iput-object p2, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->v:Ljava/lang/String;

    .line 501
    iput-object v2, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->w:[B

    .line 502
    return-void

    :cond_0
    move-object v0, p2

    .line 489
    goto :goto_0

    .line 494
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static a(Lcom/google/android/exoplayer/hls/Variant;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 563
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/Variant;->b:Lcom/google/android/exoplayer/chunk/Format;

    iget-object v0, v0, Lcom/google/android/exoplayer/chunk/Format;->i:Ljava/lang/String;

    .line 564
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 573
    :cond_0
    :goto_0
    return v1

    .line 567
    :cond_1
    const-string v2, "(\\s*,\\s*)|(\\s*$)"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    .line 568
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 569
    aget-object v3, v2, v0

    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 570
    const/4 v1, 0x1

    goto :goto_0

    .line 568
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static a(Ljava/util/List;[I)[Lcom/google/android/exoplayer/chunk/Format;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/hls/Variant;",
            ">;[I)[",
            "Lcom/google/android/exoplayer/chunk/Format;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 519
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 520
    if-eqz p1, :cond_0

    move v0, v1

    .line 521
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 522
    aget v2, p1, v0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 521
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 526
    :cond_0
    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 529
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 530
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v2, v1

    .line 531
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    .line 532
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/hls/Variant;

    .line 533
    iget-object v6, v0, Lcom/google/android/exoplayer/hls/Variant;->b:Lcom/google/android/exoplayer/chunk/Format;

    iget v6, v6, Lcom/google/android/exoplayer/chunk/Format;->e:I

    if-gtz v6, :cond_2

    const-string v6, "avc"

    invoke-static {v0, v6}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->a(Lcom/google/android/exoplayer/hls/Variant;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 534
    :cond_2
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    :cond_3
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 535
    :cond_4
    const-string v6, "mp4a"

    invoke-static {v0, v6}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->a(Lcom/google/android/exoplayer/hls/Variant;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 536
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 540
    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    move-object v2, v3

    .line 553
    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v3, v0, [Lcom/google/android/exoplayer/chunk/Format;

    .line 554
    :goto_4
    array-length v0, v3

    if-ge v1, v0, :cond_8

    .line 555
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/hls/Variant;

    iget-object v0, v0, Lcom/google/android/exoplayer/hls/Variant;->b:Lcom/google/android/exoplayer/chunk/Format;

    aput-object v0, v3, v1

    .line 554
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 545
    :cond_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_7

    .line 548
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_7
    move-object v2, v4

    goto :goto_3

    .line 558
    :cond_8
    new-instance v0, Lcom/google/android/exoplayer/chunk/Format$DecreasingBandwidthComparator;

    invoke-direct {v0}, Lcom/google/android/exoplayer/chunk/Format$DecreasingBandwidthComparator;-><init>()V

    invoke-static {v3, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 559
    return-object v3
.end method

.method private b()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 505
    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->t:Landroid/net/Uri;

    .line 506
    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->u:[B

    .line 507
    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->v:Ljava/lang/String;

    .line 508
    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->w:[B

    .line 509
    return-void
.end method

.method private b(I)Z
    .locals 6

    .prologue
    .line 458
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->b:[Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;

    aget-object v0, v0, p1

    .line 459
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->d:[J

    aget-wide v4, v1, p1

    sub-long/2addr v2, v4

    .line 461
    iget v0, v0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->b:I

    mul-int/lit16 v0, v0, 0x3e8

    div-int/lit8 v0, v0, 0x2

    int-to-long v0, v0

    cmp-long v0, v2, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(I)I
    .locals 3

    .prologue
    .line 466
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->b:[Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;

    aget-object v1, v0, p1

    .line 467
    iget-object v0, v1, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x3

    if-le v0, v2, :cond_0

    iget-object v0, v1, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    .line 468
    :goto_0
    iget v1, v1, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->a:I

    add-int/2addr v0, v1

    return v0

    .line 467
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 577
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->c:[J

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 578
    iget-object v2, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->c:[J

    aget-wide v2, v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 582
    :goto_1
    return v1

    .line 577
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 582
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private d(I)Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;
    .locals 9

    .prologue
    .line 472
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->m:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/hls/Variant;

    iget-object v0, v0, Lcom/google/android/exoplayer/hls/Variant;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/android/exoplayer/util/UriUtil;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 473
    new-instance v0, Lcom/google/android/exoplayer/upstream/DataSpec;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    .line 475
    new-instance v8, Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;

    iget-object v2, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->g:Lcom/google/android/exoplayer/upstream/DataSource;

    iget-object v4, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->a:[B

    iget-object v5, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->h:Lcom/google/android/exoplayer/hls/HlsPlaylistParser;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v1, v8

    move-object v3, v0

    move v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;-><init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;[BLcom/google/android/exoplayer/hls/HlsPlaylistParser;ILjava/lang/String;)V

    return-object v8
.end method

.method private d()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 586
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 587
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->c:[J

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 588
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->c:[J

    aget-wide v4, v1, v0

    cmp-long v1, v4, v8

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->c:[J

    aget-wide v4, v1, v0

    sub-long v4, v2, v4

    const-wide/32 v6, 0xea60

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    .line 590
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->c:[J

    aput-wide v8, v1, v0

    .line 587
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 593
    :cond_1
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->e:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->f:J

    goto :goto_0
.end method

.method public final a(Lcom/google/android/exoplayer/hls/TsChunk;JJ)Lcom/google/android/exoplayer/chunk/Chunk;
    .locals 24

    .prologue
    .line 247
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->l:I

    if-nez v4, :cond_1

    .line 248
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->s:I

    .line 252
    :cond_0
    const/4 v11, 0x0

    .line 256
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->j:[Lcom/google/android/exoplayer/chunk/Format;

    aget-object v5, v5, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->a(Lcom/google/android/exoplayer/chunk/Format;)I

    move-result v6

    .line 257
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->b:[Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;

    aget-object v14, v5, v6

    .line 258
    if-nez v14, :cond_2

    .line 260
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->d(I)Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;

    move-result-object v10

    .line 351
    :goto_1
    return-object v10

    .line 251
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->a(Lcom/google/android/exoplayer/hls/TsChunk;J)I

    move-result v4

    .line 252
    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->s:I

    if-eq v4, v5, :cond_0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->l:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    .line 263
    :cond_2
    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->s:I

    .line 264
    const/4 v5, 0x0

    .line 266
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->e:Z

    if-eqz v4, :cond_5

    .line 267
    if-nez p1, :cond_3

    .line 268
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->c(I)I

    move-result v4

    :goto_2
    move v13, v5

    move/from16 v18, v4

    .line 289
    :goto_3
    iget v4, v14, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->a:I

    sub-int v15, v18, v4

    .line 290
    iget-object v4, v14, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v15, v4, :cond_9

    .line 291
    iget-boolean v4, v14, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->e:Z

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->b(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 292
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->d(I)Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;

    move-result-object v10

    goto :goto_1

    .line 270
    :cond_3
    if-eqz v11, :cond_4

    move-object/from16 v0, p1

    iget v4, v0, Lcom/google/android/exoplayer/hls/TsChunk;->i:I

    .line 272
    :goto_4
    iget v7, v14, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->a:I

    if-ge v4, v7, :cond_14

    .line 274
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->c(I)I

    move-result v18

    .line 275
    const/4 v4, 0x1

    move v13, v4

    goto :goto_3

    .line 270
    :cond_4
    move-object/from16 v0, p1

    iget v4, v0, Lcom/google/android/exoplayer/hls/TsChunk;->i:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 280
    :cond_5
    if-nez p1, :cond_6

    .line 281
    iget-object v4, v14, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->d:Ljava/util/List;

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/google/android/exoplayer/util/Util;->a(Ljava/util/List;Ljava/lang/Object;)I

    move-result v4

    iget v7, v14, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->a:I

    add-int/2addr v4, v7

    goto :goto_2

    .line 284
    :cond_6
    if-eqz v11, :cond_7

    move-object/from16 v0, p1

    iget v4, v0, Lcom/google/android/exoplayer/hls/TsChunk;->i:I

    goto :goto_2

    :cond_7
    move-object/from16 v0, p1

    iget v4, v0, Lcom/google/android/exoplayer/hls/TsChunk;->i:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 294
    :cond_8
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 298
    :cond_9
    iget-object v4, v14, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->d:Ljava/util/List;

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;

    .line 299
    iget-object v4, v14, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->g:Ljava/lang/String;

    iget-object v5, v12, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->c:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/google/android/exoplayer/util/UriUtil;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 302
    iget-boolean v4, v12, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->e:Z

    if-eqz v4, :cond_d

    .line 303
    iget-object v4, v14, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->g:Ljava/lang/String;

    iget-object v6, v12, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->f:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/google/android/exoplayer/util/UriUtil;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 304
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->t:Landroid/net/Uri;

    invoke-virtual {v4, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 306
    iget-object v5, v12, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->g:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->a(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;

    move-result-object v10

    goto/16 :goto_1

    .line 309
    :cond_a
    iget-object v6, v12, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->g:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->v:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/android/exoplayer/util/Util;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 310
    iget-object v6, v12, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->g:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->u:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6, v7}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->a(Landroid/net/Uri;Ljava/lang/String;[B)V

    .line 317
    :cond_b
    :goto_5
    new-instance v4, Lcom/google/android/exoplayer/upstream/DataSpec;

    iget v6, v12, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->h:I

    int-to-long v6, v6

    iget v8, v12, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->i:I

    int-to-long v8, v8

    const/4 v10, 0x0

    invoke-direct/range {v4 .. v10}, Lcom/google/android/exoplayer/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 322
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->e:Z

    if-eqz v6, :cond_10

    .line 323
    if-nez p1, :cond_e

    .line 324
    const-wide/16 v8, 0x0

    .line 333
    :goto_6
    iget-wide v6, v12, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->b:D

    const-wide v16, 0x412e848000000000L    # 1000000.0

    mul-double v6, v6, v16

    double-to-long v6, v6

    add-long v16, v8, v6

    .line 334
    iget-boolean v6, v14, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->e:Z

    if-nez v6, :cond_11

    iget-object v6, v14, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->d:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v15, v6, :cond_11

    const/16 v19, 0x1

    .line 335
    :goto_7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->j:[Lcom/google/android/exoplayer/chunk/Format;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->s:I

    aget-object v7, v6, v7

    .line 340
    if-eqz p1, :cond_c

    iget-boolean v6, v12, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->a:Z

    if-nez v6, :cond_c

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/exoplayer/hls/TsChunk;->d:Lcom/google/android/exoplayer/chunk/Format;

    invoke-virtual {v7, v6}, Lcom/google/android/exoplayer/chunk/Format;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    if-eqz v13, :cond_13

    .line 342
    :cond_c
    invoke-virtual {v5}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".aac"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    new-instance v10, Lcom/google/android/exoplayer/extractor/ts/AdtsExtractor;

    invoke-direct {v10, v8, v9}, Lcom/google/android/exoplayer/extractor/ts/AdtsExtractor;-><init>(J)V

    .line 345
    :goto_8
    new-instance v6, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;

    invoke-direct/range {v6 .. v11}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;-><init>(Lcom/google/android/exoplayer/chunk/Format;JLcom/google/android/exoplayer/extractor/Extractor;Z)V

    move-object/from16 v20, v6

    .line 351
    :goto_9
    new-instance v10, Lcom/google/android/exoplayer/hls/TsChunk;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->g:Lcom/google/android/exoplayer/upstream/DataSource;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->u:[B

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->w:[B

    move-object/from16 v22, v0

    move-object v12, v4

    move-object v13, v7

    move-wide v14, v8

    invoke-direct/range {v10 .. v22}, Lcom/google/android/exoplayer/hls/TsChunk;-><init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;Lcom/google/android/exoplayer/chunk/Format;JJIZLcom/google/android/exoplayer/hls/HlsExtractorWrapper;[B[B)V

    goto/16 :goto_1

    .line 313
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->b()V

    goto/16 :goto_5

    .line 325
    :cond_e
    if-eqz v11, :cond_f

    .line 326
    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/google/android/exoplayer/hls/TsChunk;->g:J

    goto :goto_6

    .line 328
    :cond_f
    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/google/android/exoplayer/hls/TsChunk;->h:J

    goto :goto_6

    .line 331
    :cond_10
    iget-wide v8, v12, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->d:J

    goto :goto_6

    .line 334
    :cond_11
    const/16 v19, 0x0

    goto :goto_7

    .line 342
    :cond_12
    new-instance v10, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->r:Lcom/google/android/exoplayer/audio/AudioCapabilities;

    invoke-direct {v10, v8, v9, v5}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;-><init>(JLcom/google/android/exoplayer/audio/AudioCapabilities;)V

    goto :goto_8

    .line 348
    :cond_13
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/exoplayer/hls/TsChunk;->a:Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;

    move-object/from16 v20, v0

    goto :goto_9

    :cond_14
    move v13, v5

    move/from16 v18, v4

    goto/16 :goto_3
.end method

.method public final a(Lcom/google/android/exoplayer/MediaFormat;)V
    .locals 2

    .prologue
    .line 231
    iget v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->n:I

    iget v1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->o:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer/MediaFormat;->a(II)V

    .line 232
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer/chunk/Chunk;)V
    .locals 3

    .prologue
    .line 363
    instance-of v0, p1, Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;

    if-eqz v0, :cond_1

    .line 364
    check-cast p1, Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;

    .line 365
    invoke-virtual {p1}, Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;->a()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->a:[B

    .line 366
    iget v0, p1, Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;->a:I

    invoke-virtual {p1}, Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;->b()Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->a(ILcom/google/android/exoplayer/hls/HlsMediaPlaylist;)V

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    instance-of v0, p1, Lcom/google/android/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;

    if-eqz v0, :cond_0

    .line 368
    check-cast p1, Lcom/google/android/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;

    .line 369
    invoke-virtual {p1}, Lcom/google/android/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;->a()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->a:[B

    .line 370
    iget-object v0, p1, Lcom/google/android/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;->e:Lcom/google/android/exoplayer/upstream/DataSpec;

    iget-object v0, v0, Lcom/google/android/exoplayer/upstream/DataSpec;->a:Landroid/net/Uri;

    iget-object v1, p1, Lcom/google/android/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;->b()[B

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->a(Landroid/net/Uri;Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/exoplayer/chunk/Chunk;Ljava/io/IOException;)Z
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    .line 384
    invoke-virtual {p1}, Lcom/google/android/exoplayer/chunk/Chunk;->e()J

    move-result-wide v2

    cmp-long v1, v2, v6

    if-nez v1, :cond_1

    instance-of v1, p1, Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;

    if-eqz v1, :cond_1

    instance-of v1, p2, Lcom/google/android/exoplayer/upstream/HttpDataSource$InvalidResponseCodeException;

    if-eqz v1, :cond_1

    .line 386
    check-cast p2, Lcom/google/android/exoplayer/upstream/HttpDataSource$InvalidResponseCodeException;

    .line 387
    iget v1, p2, Lcom/google/android/exoplayer/upstream/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    .line 388
    const/16 v2, 0x194

    if-eq v1, v2, :cond_0

    const/16 v2, 0x19a

    if-ne v1, v2, :cond_1

    .line 389
    :cond_0
    check-cast p1, Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;

    .line 390
    iget-object v2, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->c:[J

    iget v3, p1, Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;->a:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 391
    invoke-direct {p0}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->c()Z

    move-result v2

    if-nez v2, :cond_2

    .line 393
    const-string v0, "HlsChunkSource"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Blacklisted playlist ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;->e:Lcom/google/android/exoplayer/upstream/DataSpec;

    iget-object v2, v2, Lcom/google/android/exoplayer/upstream/DataSpec;->a:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const/4 v0, 0x1

    .line 405
    :cond_1
    :goto_0
    return v0

    .line 398
    :cond_2
    const-string v2, "HlsChunkSource"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Final playlist not blacklisted ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;->e:Lcom/google/android/exoplayer/upstream/DataSpec;

    iget-object v3, v3, Lcom/google/android/exoplayer/upstream/DataSpec;->a:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->c:[J

    iget v2, p1, Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;->a:I

    aput-wide v6, v1, v2

    goto :goto_0
.end method
