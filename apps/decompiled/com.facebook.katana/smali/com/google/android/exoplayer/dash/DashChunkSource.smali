.class public Lcom/google/android/exoplayer/dash/DashChunkSource;
.super Ljava/lang/Object;
.source "DashChunkSource.java"

# interfaces
.implements Lcom/google/android/exoplayer/chunk/ChunkSource;


# instance fields
.field private final a:Lcom/google/android/exoplayer/TrackInfo;

.field private final b:Lcom/google/android/exoplayer/upstream/DataSource;

.field private final c:Lcom/google/android/exoplayer/chunk/FormatEvaluator;

.field private final d:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

.field private final e:Lcom/google/android/exoplayer/util/Clock;

.field private final f:Ljava/lang/StringBuilder;

.field private final g:J

.field private final h:J

.field private final i:I

.field private final j:I

.field private final k:[Lcom/google/android/exoplayer/chunk/Format;

.field private final l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Lcom/google/android/exoplayer/util/ManifestFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer/util/ManifestFetcher",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final n:I

.field private final o:[I

.field private p:Lcom/google/android/exoplayer/drm/DrmInitData;

.field private q:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

.field private r:Z

.field private s:Z

.field private t:Ljava/io/IOException;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;I[ILcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;Lcom/google/android/exoplayer/util/Clock;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;",
            "I[I",
            "Lcom/google/android/exoplayer/upstream/DataSource;",
            "Lcom/google/android/exoplayer/chunk/FormatEvaluator;",
            "Lcom/google/android/exoplayer/util/Clock;",
            ")V"
        }
    .end annotation

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->m:Lcom/google/android/exoplayer/util/ManifestFetcher;

    .line 184
    iput-object p1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->q:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    .line 185
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->n:I

    .line 186
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->o:[I

    .line 187
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->b:Lcom/google/android/exoplayer/upstream/DataSource;

    .line 188
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->c:Lcom/google/android/exoplayer/chunk/FormatEvaluator;

    .line 189
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->e:Lcom/google/android/exoplayer/util/Clock;

    .line 190
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->g:J

    .line 191
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->h:J

    .line 192
    new-instance v2, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    invoke-direct {v2}, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;-><init>()V

    iput-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->d:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->f:Ljava/lang/StringBuilder;

    .line 195
    iget-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->q:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/android/exoplayer/dash/DashChunkSource;->a(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;I)Lcom/google/android/exoplayer/drm/DrmInitData;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->p:Lcom/google/android/exoplayer/drm/DrmInitData;

    .line 196
    iget-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->q:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/google/android/exoplayer/dash/DashChunkSource;->a(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;I[I)[Lcom/google/android/exoplayer/dash/mpd/Representation;

    move-result-object v6

    .line 198
    const/4 v2, 0x0

    aget-object v2, v6, v2

    iget-wide v2, v2, Lcom/google/android/exoplayer/dash/mpd/Representation;->e:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const-wide/16 v2, -0x1

    .line 200
    :goto_0
    new-instance v4, Lcom/google/android/exoplayer/TrackInfo;

    const/4 v5, 0x0

    aget-object v5, v6, v5

    iget-object v5, v5, Lcom/google/android/exoplayer/dash/mpd/Representation;->c:Lcom/google/android/exoplayer/chunk/Format;

    iget-object v5, v5, Lcom/google/android/exoplayer/chunk/Format;->b:Ljava/lang/String;

    invoke-direct {v4, v5, v2, v3}, Lcom/google/android/exoplayer/TrackInfo;-><init>(Ljava/lang/String;J)V

    iput-object v4, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->a:Lcom/google/android/exoplayer/TrackInfo;

    .line 202
    array-length v2, v6

    new-array v2, v2, [Lcom/google/android/exoplayer/chunk/Format;

    iput-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->k:[Lcom/google/android/exoplayer/chunk/Format;

    .line 203
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->l:Ljava/util/HashMap;

    .line 204
    const/4 v4, 0x0

    .line 205
    const/4 v3, 0x0

    .line 206
    const/4 v2, 0x0

    :goto_1
    array-length v5, v6

    if-ge v2, v5, :cond_2

    .line 207
    iget-object v5, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->k:[Lcom/google/android/exoplayer/chunk/Format;

    aget-object v7, v6, v2

    iget-object v7, v7, Lcom/google/android/exoplayer/dash/mpd/Representation;->c:Lcom/google/android/exoplayer/chunk/Format;

    aput-object v7, v5, v2

    .line 208
    iget-object v5, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->k:[Lcom/google/android/exoplayer/chunk/Format;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/google/android/exoplayer/chunk/Format;->d:I

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 209
    iget-object v5, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->k:[Lcom/google/android/exoplayer/chunk/Format;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/google/android/exoplayer/chunk/Format;->e:I

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 210
    iget-object v5, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->k:[Lcom/google/android/exoplayer/chunk/Format;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/google/android/exoplayer/chunk/Format;->b:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/exoplayer/dash/DashChunkSource;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;

    invoke-direct {v5}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;-><init>()V

    .line 212
    :goto_2
    iget-object v7, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->l:Ljava/util/HashMap;

    iget-object v8, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->k:[Lcom/google/android/exoplayer/chunk/Format;

    aget-object v8, v8, v2

    iget-object v8, v8, Lcom/google/android/exoplayer/chunk/Format;->a:Ljava/lang/String;

    new-instance v9, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;

    aget-object v10, v6, v2

    new-instance v11, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;

    invoke-direct {v11, v5}, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;-><init>(Lcom/google/android/exoplayer/extractor/Extractor;)V

    invoke-direct {v9, v10, v11}, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;-><init>(Lcom/google/android/exoplayer/dash/mpd/Representation;Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;)V

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 198
    :cond_0
    const/4 v2, 0x0

    aget-object v2, v6, v2

    iget-wide v2, v2, Lcom/google/android/exoplayer/dash/mpd/Representation;->e:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    goto :goto_0

    .line 210
    :cond_1
    new-instance v5, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;

    invoke-direct {v5}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;-><init>()V

    goto :goto_2

    .line 215
    :cond_2
    iput v4, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->i:I

    .line 216
    iput v3, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->j:I

    .line 217
    iget-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->k:[Lcom/google/android/exoplayer/chunk/Format;

    new-instance v3, Lcom/google/android/exoplayer/chunk/Format$DecreasingBandwidthComparator;

    invoke-direct {v3}, Lcom/google/android/exoplayer/chunk/Format$DecreasingBandwidthComparator;-><init>()V

    invoke-static {v2, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 218
    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;)V
    .locals 7

    .prologue
    .line 144
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v6, Lcom/google/android/exoplayer/util/SystemClock;

    invoke-direct {v6}, Lcom/google/android/exoplayer/util/SystemClock;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer/dash/DashChunkSource;-><init>(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;I[ILcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;Lcom/google/android/exoplayer/util/Clock;)V

    .line 146
    return-void
.end method

.method public varargs constructor <init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;[Lcom/google/android/exoplayer/dash/mpd/Representation;)V
    .locals 1

    .prologue
    .line 116
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer/dash/DashChunkSource;->a(Ljava/util/List;)Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/exoplayer/dash/DashChunkSource;-><init>(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;)V

    .line 117
    return-void
.end method

.method private a(JZZ)J
    .locals 11

    .prologue
    const-wide/16 v8, 0x3e8

    .line 505
    if-eqz p3, :cond_1

    .line 506
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->q:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    iget-wide v0, v0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->a:J

    mul-long/2addr v0, v8

    sub-long v2, p1, v0

    .line 523
    :cond_0
    :goto_0
    iget-wide v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->g:J

    sub-long v0, v2, v0

    return-wide v0

    .line 508
    :cond_1
    const-wide/high16 v0, -0x8000000000000000L

    .line 509
    iget-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->l:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;

    .line 510
    iget-object v0, v0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->c:Lcom/google/android/exoplayer/dash/DashSegmentIndex;

    .line 511
    invoke-interface {v0}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->b()I

    move-result v1

    .line 512
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->a(I)J

    move-result-wide v6

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->b(I)J

    move-result-wide v0

    add-long/2addr v0, v6

    .line 514
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    move-wide v2, v0

    .line 515
    goto :goto_1

    .line 516
    :cond_2
    if-nez p4, :cond_0

    .line 519
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->q:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    iget-wide v0, v0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->a:J

    mul-long/2addr v0, v8

    sub-long v0, p1, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    goto :goto_0
.end method

.method private a(Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;Lcom/google/android/exoplayer/upstream/DataSource;II)Lcom/google/android/exoplayer/chunk/Chunk;
    .locals 20

    .prologue
    .line 460
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->a:Lcom/google/android/exoplayer/dash/mpd/Representation;

    .line 461
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->c:Lcom/google/android/exoplayer/dash/DashSegmentIndex;

    .line 463
    move/from16 v0, p3

    invoke-interface {v2, v0}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->a(I)J

    move-result-wide v18

    .line 464
    move/from16 v0, p3

    invoke-interface {v2, v0}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->b(I)J

    move-result-wide v4

    add-long v10, v18, v4

    .line 466
    move-object/from16 v0, p1

    iget v3, v0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->e:I

    add-int v12, p3, v3

    .line 467
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->q:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    iget-boolean v3, v3, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->d:Z

    if-nez v3, :cond_1

    invoke-interface {v2}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->b()I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_1

    const/4 v13, 0x1

    .line 470
    :goto_0
    move/from16 v0, p3

    invoke-interface {v2, v0}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->c(I)Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    move-result-object v6

    .line 471
    new-instance v2, Lcom/google/android/exoplayer/upstream/DataSpec;

    invoke-virtual {v6}, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->a()Landroid/net/Uri;

    move-result-object v3

    iget-wide v4, v6, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->a:J

    iget-wide v6, v6, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->b:J

    invoke-virtual {v9}, Lcom/google/android/exoplayer/dash/mpd/Representation;->g()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 474
    iget-wide v4, v9, Lcom/google/android/exoplayer/dash/mpd/Representation;->f:J

    .line 475
    iget-object v3, v9, Lcom/google/android/exoplayer/dash/mpd/Representation;->c:Lcom/google/android/exoplayer/chunk/Format;

    iget-object v3, v3, Lcom/google/android/exoplayer/chunk/Format;->b:Ljava/lang/String;

    const-string v6, "text/vtt"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 476
    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->f:J

    cmp-long v3, v6, v4

    if-eqz v3, :cond_0

    .line 478
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->f:Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 479
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->f:Ljava/lang/StringBuilder;

    const-string v6, "EXO-HEADER=OFFSET:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->g:[B

    .line 482
    move-object/from16 v0, p1

    iput-wide v4, v0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->f:J

    .line 484
    :cond_0
    new-instance v4, Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;

    iget-object v7, v9, Lcom/google/android/exoplayer/dash/mpd/Representation;->c:Lcom/google/android/exoplayer/chunk/Format;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->g:[B

    move-object/from16 v5, p2

    move-object v6, v2

    move-wide/from16 v8, v18

    invoke-direct/range {v4 .. v14}, Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;-><init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;Lcom/google/android/exoplayer/chunk/Format;JJIZ[B)V

    .line 488
    :goto_1
    return-object v4

    .line 467
    :cond_1
    const/4 v13, 0x0

    goto :goto_0

    .line 488
    :cond_2
    new-instance v3, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;

    iget-object v7, v9, Lcom/google/android/exoplayer/dash/mpd/Representation;->c:Lcom/google/android/exoplayer/chunk/Format;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->b:Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->d:Lcom/google/android/exoplayer/MediaFormat;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->p:Lcom/google/android/exoplayer/drm/DrmInitData;

    move-object/from16 v16, v0

    move-object/from16 v4, p2

    move-object v5, v2

    move/from16 v6, p4

    move-wide/from16 v8, v18

    invoke-direct/range {v3 .. v16}, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;-><init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;ILcom/google/android/exoplayer/chunk/Format;JJIZLcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;Lcom/google/android/exoplayer/MediaFormat;Lcom/google/android/exoplayer/drm/DrmInitData;)V

    move-object v4, v3

    goto :goto_1
.end method

.method private static a(Lcom/google/android/exoplayer/dash/mpd/RangedUri;Lcom/google/android/exoplayer/dash/mpd/RangedUri;Lcom/google/android/exoplayer/dash/mpd/Representation;Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;Lcom/google/android/exoplayer/upstream/DataSource;I)Lcom/google/android/exoplayer/chunk/Chunk;
    .locals 7

    .prologue
    .line 443
    if-eqz p0, :cond_0

    .line 446
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->a(Lcom/google/android/exoplayer/dash/mpd/RangedUri;)Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    move-result-object p1

    .line 447
    if-nez p1, :cond_1

    .line 453
    :goto_0
    new-instance v0, Lcom/google/android/exoplayer/upstream/DataSpec;

    invoke-virtual {p0}, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->a()Landroid/net/Uri;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->a:J

    iget-wide v4, p0, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->b:J

    invoke-virtual {p2}, Lcom/google/android/exoplayer/dash/mpd/Representation;->g()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 455
    new-instance v1, Lcom/google/android/exoplayer/chunk/InitializationChunk;

    iget-object v5, p2, Lcom/google/android/exoplayer/dash/mpd/Representation;->c:Lcom/google/android/exoplayer/chunk/Format;

    move-object v2, p4

    move-object v3, v0

    move v4, p5

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer/chunk/InitializationChunk;-><init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;ILcom/google/android/exoplayer/chunk/Format;Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;)V

    return-object v1

    :cond_0
    move-object p0, p1

    .line 451
    goto :goto_0

    :cond_1
    move-object p0, p1

    goto :goto_0
.end method

.method private static a(Ljava/util/List;)Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/Representation;",
            ">;)",
            "Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;"
        }
    .end annotation

    .prologue
    .line 565
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/google/android/exoplayer/dash/mpd/Representation;

    .line 566
    new-instance v6, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;

    invoke-direct {v6, p0}, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;-><init>(Ljava/util/List;)V

    .line 567
    new-instance v0, Lcom/google/android/exoplayer/dash/mpd/Period;

    const/4 v1, 0x0

    iget-wide v2, v7, Lcom/google/android/exoplayer/dash/mpd/Representation;->d:J

    iget-wide v4, v7, Lcom/google/android/exoplayer/dash/mpd/Representation;->e:J

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer/dash/mpd/Period;-><init>(Ljava/lang/String;JJLjava/util/List;)V

    .line 569
    iget-wide v2, v7, Lcom/google/android/exoplayer/dash/mpd/Representation;->e:J

    iget-wide v4, v7, Lcom/google/android/exoplayer/dash/mpd/Representation;->d:J

    sub-long v4, v2, v4

    .line 570
    new-instance v1, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    const-wide/16 v2, -0x1

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    const-wide/16 v9, -0x1

    const-wide/16 v11, -0x1

    const/4 v13, 0x0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-direct/range {v1 .. v14}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;-><init>(JJJZJJLcom/google/android/exoplayer/dash/mpd/UtcTimingElement;Ljava/util/List;)V

    return-object v1
.end method

.method private static a(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;I)Lcom/google/android/exoplayer/drm/DrmInitData;
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 545
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->g:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/dash/mpd/Period;

    iget-object v0, v0, Lcom/google/android/exoplayer/dash/mpd/Period;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;

    .line 546
    iget-object v1, v0, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;->c:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer/dash/mpd/Representation;

    iget-object v1, v1, Lcom/google/android/exoplayer/dash/mpd/Representation;->c:Lcom/google/android/exoplayer/chunk/Format;

    iget-object v1, v1, Lcom/google/android/exoplayer/chunk/Format;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/exoplayer/dash/DashChunkSource;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "video/webm"

    .line 548
    :goto_0
    iget-object v3, v0, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 560
    :cond_0
    return-object v2

    .line 546
    :cond_1
    const-string v1, "video/mp4"

    goto :goto_0

    .line 552
    :cond_2
    iget-object v0, v0, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/dash/mpd/ContentProtection;

    .line 553
    iget-object v4, v0, Lcom/google/android/exoplayer/dash/mpd/ContentProtection;->b:Ljava/util/UUID;

    if-eqz v4, :cond_3

    iget-object v4, v0, Lcom/google/android/exoplayer/dash/mpd/ContentProtection;->c:[B

    if-eqz v4, :cond_3

    .line 554
    if-nez v2, :cond_4

    .line 555
    new-instance v2, Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;

    invoke-direct {v2, v1}, Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;-><init>(Ljava/lang/String;)V

    .line 557
    :cond_4
    iget-object v4, v0, Lcom/google/android/exoplayer/dash/mpd/ContentProtection;->b:Ljava/util/UUID;

    iget-object v0, v0, Lcom/google/android/exoplayer/dash/mpd/ContentProtection;->c:[B

    invoke-virtual {v2, v4, v0}, Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;->a(Ljava/util/UUID;[B)V

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 436
    const-string v0, "video/webm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "audio/webm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;I[I)[Lcom/google/android/exoplayer/dash/mpd/Representation;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 528
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/dash/mpd/Period;

    iget-object v0, v0, Lcom/google/android/exoplayer/dash/mpd/Period;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;

    .line 529
    iget-object v3, v0, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;->c:Ljava/util/List;

    .line 530
    if-nez p2, :cond_0

    .line 531
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/exoplayer/dash/mpd/Representation;

    .line 532
    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 539
    :goto_0
    return-object v0

    .line 535
    :cond_0
    array-length v0, p2

    new-array v2, v0, [Lcom/google/android/exoplayer/dash/mpd/Representation;

    .line 536
    :goto_1
    array-length v0, p2

    if-ge v1, v0, :cond_1

    .line 537
    aget v0, p2, v1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/dash/mpd/Representation;

    aput-object v0, v2, v1

    .line 536
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    move-object v0, v2

    .line 539
    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/google/android/exoplayer/TrackInfo;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->a:Lcom/google/android/exoplayer/TrackInfo;

    return-object v0
.end method

.method public final a(Lcom/google/android/exoplayer/MediaFormat;)V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->a:Lcom/google/android/exoplayer/TrackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer/TrackInfo;->a:Ljava/lang/String;

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    iget v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->i:I

    iget v1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->j:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer/MediaFormat;->a(II)V

    .line 225
    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer/chunk/Chunk;)V
    .locals 4

    .prologue
    .line 410
    instance-of v0, p1, Lcom/google/android/exoplayer/chunk/InitializationChunk;

    if-eqz v0, :cond_2

    .line 411
    check-cast p1, Lcom/google/android/exoplayer/chunk/InitializationChunk;

    .line 412
    iget-object v0, p1, Lcom/google/android/exoplayer/chunk/InitializationChunk;->d:Lcom/google/android/exoplayer/chunk/Format;

    iget-object v0, v0, Lcom/google/android/exoplayer/chunk/Format;->a:Ljava/lang/String;

    .line 413
    iget-object v1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->l:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;

    .line 414
    invoke-virtual {p1}, Lcom/google/android/exoplayer/chunk/InitializationChunk;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 415
    invoke-virtual {p1}, Lcom/google/android/exoplayer/chunk/InitializationChunk;->b()Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->d:Lcom/google/android/exoplayer/MediaFormat;

    .line 417
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer/chunk/InitializationChunk;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 418
    new-instance v2, Lcom/google/android/exoplayer/dash/DashWrappingSegmentIndex;

    invoke-virtual {p1}, Lcom/google/android/exoplayer/chunk/InitializationChunk;->j()Lcom/google/android/exoplayer/extractor/SeekMap;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer/extractor/ChunkIndex;

    iget-object v3, p1, Lcom/google/android/exoplayer/chunk/InitializationChunk;->e:Lcom/google/android/exoplayer/upstream/DataSpec;

    iget-object v3, v3, Lcom/google/android/exoplayer/upstream/DataSpec;->a:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/google/android/exoplayer/dash/DashWrappingSegmentIndex;-><init>(Lcom/google/android/exoplayer/extractor/ChunkIndex;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->c:Lcom/google/android/exoplayer/dash/DashSegmentIndex;

    .line 424
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->p:Lcom/google/android/exoplayer/drm/DrmInitData;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/exoplayer/chunk/InitializationChunk;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 425
    invoke-virtual {p1}, Lcom/google/android/exoplayer/chunk/InitializationChunk;->d()Lcom/google/android/exoplayer/drm/DrmInitData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->p:Lcom/google/android/exoplayer/drm/DrmInitData;

    .line 428
    :cond_2
    return-void
.end method

.method public final a(Ljava/util/List;JLcom/google/android/exoplayer/chunk/ChunkOperationHolder;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/exoplayer/chunk/MediaChunk;",
            ">;J",
            "Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->t:Ljava/io/IOException;

    if-eqz v2, :cond_1

    .line 292
    const/4 v2, 0x0

    move-object/from16 v0, p4

    iput-object v2, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->b:Lcom/google/android/exoplayer/chunk/Chunk;

    .line 400
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->d:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    iput v3, v2, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->a:I

    .line 297
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->d:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    iget-object v2, v2, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->c:Lcom/google/android/exoplayer/chunk/Format;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->s:Z

    if-nez v2, :cond_3

    .line 298
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->c:Lcom/google/android/exoplayer/chunk/FormatEvaluator;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->k:[Lcom/google/android/exoplayer/chunk/Format;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->d:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    invoke-interface {v2, v3, v4}, Lcom/google/android/exoplayer/chunk/FormatEvaluator;->a([Lcom/google/android/exoplayer/chunk/Format;Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;)V

    .line 300
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->d:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    iget-object v2, v2, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->c:Lcom/google/android/exoplayer/chunk/Format;

    .line 301
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->d:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    iget v3, v3, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->a:I

    move-object/from16 v0, p4

    iput v3, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->a:I

    .line 303
    if-nez v2, :cond_4

    .line 304
    const/4 v2, 0x0

    move-object/from16 v0, p4

    iput-object v2, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->b:Lcom/google/android/exoplayer/chunk/Chunk;

    goto :goto_0

    .line 306
    :cond_4
    move-object/from16 v0, p4

    iget v3, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->a:I

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_5

    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->b:Lcom/google/android/exoplayer/chunk/Chunk;

    if-eqz v3, :cond_5

    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->b:Lcom/google/android/exoplayer/chunk/Chunk;

    iget-object v3, v3, Lcom/google/android/exoplayer/chunk/Chunk;->d:Lcom/google/android/exoplayer/chunk/Format;

    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer/chunk/Format;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 313
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->l:Ljava/util/HashMap;

    iget-object v2, v2, Lcom/google/android/exoplayer/chunk/Format;->a:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;

    .line 314
    iget-object v4, v6, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->a:Lcom/google/android/exoplayer/dash/mpd/Representation;

    .line 315
    iget-object v8, v6, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->c:Lcom/google/android/exoplayer/dash/DashSegmentIndex;

    .line 316
    iget-object v5, v6, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->b:Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;

    .line 318
    const/4 v2, 0x0

    .line 319
    const/4 v3, 0x0

    .line 321
    iget-object v7, v6, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->d:Lcom/google/android/exoplayer/MediaFormat;

    if-nez v7, :cond_6

    .line 322
    invoke-virtual {v4}, Lcom/google/android/exoplayer/dash/mpd/Representation;->d()Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    move-result-object v2

    .line 324
    :cond_6
    if-nez v8, :cond_7

    .line 325
    invoke-virtual {v4}, Lcom/google/android/exoplayer/dash/mpd/Representation;->e()Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    move-result-object v3

    .line 328
    :cond_7
    if-nez v2, :cond_8

    if-eqz v3, :cond_9

    .line 330
    :cond_8
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->b:Lcom/google/android/exoplayer/upstream/DataSource;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->d:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    iget v7, v7, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->b:I

    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplayer/dash/DashChunkSource;->a(Lcom/google/android/exoplayer/dash/mpd/RangedUri;Lcom/google/android/exoplayer/dash/mpd/RangedUri;Lcom/google/android/exoplayer/dash/mpd/Representation;Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;Lcom/google/android/exoplayer/upstream/DataSource;I)Lcom/google/android/exoplayer/chunk/Chunk;

    move-result-object v2

    .line 332
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->s:Z

    .line 333
    move-object/from16 v0, p4

    iput-object v2, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->b:Lcom/google/android/exoplayer/chunk/Chunk;

    goto/16 :goto_0

    .line 338
    :cond_9
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->h:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_c

    .line 339
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->e:Lcom/google/android/exoplayer/util/Clock;

    invoke-interface {v2}, Lcom/google/android/exoplayer/util/Clock;->a()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->h:J

    add-long/2addr v2, v4

    .line 344
    :goto_1
    invoke-interface {v8}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->a()I

    move-result v4

    .line 345
    invoke-interface {v8}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->b()I

    move-result v5

    .line 346
    const/4 v7, -0x1

    if-ne v5, v7, :cond_d

    const/4 v7, 0x1

    .line 347
    :goto_2
    if-eqz v7, :cond_15

    .line 350
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->q:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    iget-wide v10, v5, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->a:J

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    sub-long v10, v2, v10

    .line 351
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->q:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    iget-wide v12, v5, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->f:J

    const-wide/16 v14, -0x1

    cmp-long v5, v12, v14

    if-eqz v5, :cond_a

    .line 352
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->q:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    iget-wide v12, v5, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->f:J

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    .line 353
    sub-long v12, v10, v12

    invoke-interface {v8, v12, v13}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->a(J)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 358
    :cond_a
    invoke-interface {v8, v10, v11}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->a(J)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move/from16 v16, v5

    move v5, v4

    move/from16 v4, v16

    .line 362
    :goto_3
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 363
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->q:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    iget-boolean v9, v9, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->d:Z

    if-eqz v9, :cond_b

    .line 364
    invoke-interface {v8}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->c()Z

    move-result v9

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v7, v9}, Lcom/google/android/exoplayer/dash/DashChunkSource;->a(JZZ)J

    move-result-wide p2

    .line 366
    :cond_b
    move-wide/from16 v0, p2

    invoke-interface {v8, v0, v1}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->a(J)I

    move-result v2

    .line 373
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->q:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    iget-boolean v3, v3, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->d:Z

    if-eqz v3, :cond_13

    .line 374
    if-ge v2, v5, :cond_10

    .line 376
    new-instance v2, Lcom/google/android/exoplayer/BehindLiveWindowException;

    invoke-direct {v2}, Lcom/google/android/exoplayer/BehindLiveWindowException;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->t:Ljava/io/IOException;

    goto/16 :goto_0

    .line 341
    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    goto :goto_1

    .line 346
    :cond_d
    const/4 v7, 0x0

    goto :goto_2

    .line 368
    :cond_e
    move-object/from16 v0, p4

    iget v2, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->a:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer/chunk/MediaChunk;

    .line 369
    iget-boolean v3, v2, Lcom/google/android/exoplayer/chunk/MediaChunk;->j:Z

    if-eqz v3, :cond_f

    const/4 v2, -0x1

    goto :goto_4

    :cond_f
    iget v2, v2, Lcom/google/android/exoplayer/chunk/MediaChunk;->i:I

    add-int/lit8 v2, v2, 0x1

    iget v3, v6, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->e:I

    sub-int/2addr v2, v3

    goto :goto_4

    .line 378
    :cond_10
    if-le v2, v4, :cond_12

    .line 382
    if-nez v7, :cond_11

    const/4 v2, 0x1

    :goto_5
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->r:Z

    goto/16 :goto_0

    :cond_11
    const/4 v2, 0x0

    goto :goto_5

    .line 384
    :cond_12
    if-nez v7, :cond_13

    if-ne v2, v4, :cond_13

    .line 387
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->r:Z

    .line 391
    :cond_13
    const/4 v3, -0x1

    if-ne v2, v3, :cond_14

    .line 392
    const/4 v2, 0x0

    move-object/from16 v0, p4

    iput-object v2, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->b:Lcom/google/android/exoplayer/chunk/Chunk;

    goto/16 :goto_0

    .line 396
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->b:Lcom/google/android/exoplayer/upstream/DataSource;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->d:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    iget v4, v4, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->b:I

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v3, v2, v4}, Lcom/google/android/exoplayer/dash/DashChunkSource;->a(Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;Lcom/google/android/exoplayer/upstream/DataSource;II)Lcom/google/android/exoplayer/chunk/Chunk;

    move-result-object v2

    .line 398
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->s:Z

    .line 399
    move-object/from16 v0, p4

    iput-object v2, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->b:Lcom/google/android/exoplayer/chunk/Chunk;

    goto/16 :goto_0

    :cond_15
    move/from16 v16, v5

    move v5, v4

    move/from16 v4, v16

    goto/16 :goto_3
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->c:Lcom/google/android/exoplayer/chunk/FormatEvaluator;

    .line 235
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->m:Lcom/google/android/exoplayer/util/ManifestFetcher;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->m:Lcom/google/android/exoplayer/util/ManifestFetcher;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ManifestFetcher;->e()V

    .line 238
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->c:Lcom/google/android/exoplayer/chunk/FormatEvaluator;

    .line 243
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->m:Lcom/google/android/exoplayer/util/ManifestFetcher;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->m:Lcom/google/android/exoplayer/util/ManifestFetcher;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ManifestFetcher;->f()V

    .line 246
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 12

    .prologue
    const/4 v3, 0x0

    .line 250
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->m:Lcom/google/android/exoplayer/util/ManifestFetcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->q:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    iget-boolean v0, v0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->t:Ljava/io/IOException;

    if-eqz v0, :cond_1

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->m:Lcom/google/android/exoplayer/util/ManifestFetcher;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ManifestFetcher;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    .line 255
    iget-object v1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->q:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    if-eq v1, v0, :cond_3

    if-eqz v0, :cond_3

    .line 256
    iget v1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->n:I

    iget-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->o:[I

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer/dash/DashChunkSource;->a(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;I[I)[Lcom/google/android/exoplayer/dash/mpd/Representation;

    move-result-object v4

    .line 258
    array-length v5, v4

    move v2, v3

    :goto_1
    if-ge v2, v5, :cond_2

    aget-object v6, v4, v2

    .line 259
    iget-object v1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->l:Ljava/util/HashMap;

    iget-object v7, v6, Lcom/google/android/exoplayer/dash/mpd/Representation;->c:Lcom/google/android/exoplayer/chunk/Format;

    iget-object v7, v7, Lcom/google/android/exoplayer/chunk/Format;->a:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;

    .line 261
    iget-object v7, v1, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->c:Lcom/google/android/exoplayer/dash/DashSegmentIndex;

    .line 262
    invoke-virtual {v6}, Lcom/google/android/exoplayer/dash/mpd/Representation;->f()Lcom/google/android/exoplayer/dash/DashSegmentIndex;

    move-result-object v6

    .line 263
    invoke-interface {v6}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->a()I

    move-result v8

    .line 264
    invoke-interface {v6, v8}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->a(I)J

    move-result-wide v10

    invoke-interface {v7, v10, v11}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->a(J)I

    move-result v7

    sub-int/2addr v7, v8

    .line 266
    iget v8, v1, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->e:I

    add-int/2addr v7, v8

    iput v7, v1, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->e:I

    .line 267
    iput-object v6, v1, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->c:Lcom/google/android/exoplayer/dash/DashSegmentIndex;

    .line 258
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 269
    :cond_2
    iput-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->q:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    .line 270
    iput-boolean v3, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->r:Z

    .line 277
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->q:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    iget-wide v0, v0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->e:J

    .line 278
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_4

    .line 279
    const-wide/16 v0, 0x1388

    .line 282
    :cond_4
    iget-boolean v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->r:Z

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->m:Lcom/google/android/exoplayer/util/ManifestFetcher;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/util/ManifestFetcher;->b()J

    move-result-wide v4

    add-long/2addr v0, v4

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->m:Lcom/google/android/exoplayer/util/ManifestFetcher;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ManifestFetcher;->g()V

    goto :goto_0
.end method

.method public final e()Ljava/io/IOException;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->t:Ljava/io/IOException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->t:Ljava/io/IOException;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->m:Lcom/google/android/exoplayer/util/ManifestFetcher;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->m:Lcom/google/android/exoplayer/util/ManifestFetcher;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ManifestFetcher;->c()Ljava/io/IOException;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
