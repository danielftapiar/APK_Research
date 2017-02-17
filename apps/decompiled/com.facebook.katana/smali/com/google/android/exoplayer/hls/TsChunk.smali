.class public final Lcom/google/android/exoplayer/hls/TsChunk;
.super Lcom/google/android/exoplayer/chunk/MediaChunk;
.source "TsChunk.java"


# instance fields
.field public final a:Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;

.field private final k:Z

.field private l:I

.field private volatile m:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;Lcom/google/android/exoplayer/chunk/Format;JJIZLcom/google/android/exoplayer/hls/HlsExtractorWrapper;[B[B)V
    .locals 14

    .prologue
    .line 61
    move-object/from16 v0, p11

    move-object/from16 v1, p12

    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer/hls/TsChunk;->a(Lcom/google/android/exoplayer/upstream/DataSource;[B[B)Lcom/google/android/exoplayer/upstream/DataSource;

    move-result-object v4

    const/4 v6, 0x0

    move-object v3, p0

    move-object/from16 v5, p2

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move/from16 v12, p8

    move/from16 v13, p9

    invoke-direct/range {v3 .. v13}, Lcom/google/android/exoplayer/chunk/MediaChunk;-><init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;ILcom/google/android/exoplayer/chunk/Format;JJIZ)V

    .line 63
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/google/android/exoplayer/hls/TsChunk;->a:Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;

    .line 65
    iget-object v2, p0, Lcom/google/android/exoplayer/hls/TsChunk;->f:Lcom/google/android/exoplayer/upstream/DataSource;

    instance-of v2, v2, Lcom/google/android/exoplayer/upstream/Aes128DataSource;

    iput-boolean v2, p0, Lcom/google/android/exoplayer/hls/TsChunk;->k:Z

    .line 66
    return-void
.end method

.method private static a(Lcom/google/android/exoplayer/upstream/DataSource;[B[B)Lcom/google/android/exoplayer/upstream/DataSource;
    .locals 1

    .prologue
    .line 128
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-object p0

    :cond_1
    new-instance v0, Lcom/google/android/exoplayer/upstream/Aes128DataSource;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/exoplayer/upstream/Aes128DataSource;-><init>(Lcom/google/android/exoplayer/upstream/DataSource;[B[B)V

    move-object p0, v0

    goto :goto_0
.end method


# virtual methods
.method public final e()J
    .locals 2

    .prologue
    .line 70
    iget v0, p0, Lcom/google/android/exoplayer/hls/TsChunk;->l:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/hls/TsChunk;->m:Z

    .line 78
    return-void
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/google/android/exoplayer/hls/TsChunk;->m:Z

    return v0
.end method

.method public final h()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 93
    iget-boolean v0, p0, Lcom/google/android/exoplayer/hls/TsChunk;->k:Z

    if-eqz v0, :cond_2

    .line 94
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/TsChunk;->e:Lcom/google/android/exoplayer/upstream/DataSpec;

    .line 95
    iget v0, p0, Lcom/google/android/exoplayer/hls/TsChunk;->l:I

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    move v7, v0

    move-object v4, v1

    .line 102
    :goto_1
    :try_start_0
    new-instance v0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;

    iget-object v1, p0, Lcom/google/android/exoplayer/hls/TsChunk;->f:Lcom/google/android/exoplayer/upstream/DataSource;

    iget-wide v2, v4, Lcom/google/android/exoplayer/upstream/DataSpec;->b:J

    iget-object v5, p0, Lcom/google/android/exoplayer/hls/TsChunk;->f:Lcom/google/android/exoplayer/upstream/DataSource;

    invoke-interface {v5, v4}, Lcom/google/android/exoplayer/upstream/DataSource;->a(Lcom/google/android/exoplayer/upstream/DataSpec;)J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;-><init>(Lcom/google/android/exoplayer/upstream/DataSource;JJ)V

    .line 104
    if-eqz v7, :cond_0

    .line 105
    iget v1, p0, Lcom/google/android/exoplayer/hls/TsChunk;->l:I

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 109
    :cond_0
    :goto_2
    if-nez v6, :cond_3

    :try_start_1
    iget-boolean v1, p0, Lcom/google/android/exoplayer/hls/TsChunk;->m:Z

    if-nez v1, :cond_3

    .line 110
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/TsChunk;->a:Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->a(Lcom/google/android/exoplayer/extractor/ExtractorInput;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    goto :goto_2

    :cond_1
    move v0, v6

    .line 95
    goto :goto_0

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/TsChunk;->e:Lcom/google/android/exoplayer/upstream/DataSpec;

    iget v1, p0, Lcom/google/android/exoplayer/hls/TsChunk;->l:I

    invoke-static {v0, v1}, Lcom/google/android/exoplayer/util/Util;->a(Lcom/google/android/exoplayer/upstream/DataSpec;I)Lcom/google/android/exoplayer/upstream/DataSpec;

    move-result-object v0

    move v7, v6

    move-object v4, v0

    .line 98
    goto :goto_1

    .line 113
    :cond_3
    :try_start_2
    invoke-interface {v0}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/exoplayer/hls/TsChunk;->e:Lcom/google/android/exoplayer/upstream/DataSpec;

    iget-wide v2, v2, Lcom/google/android/exoplayer/upstream/DataSpec;->b:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/google/android/exoplayer/hls/TsChunk;->l:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 116
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/TsChunk;->f:Lcom/google/android/exoplayer/upstream/DataSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer/upstream/DataSource;->a()V

    .line 117
    return-void

    .line 113
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-interface {v0}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->a()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/exoplayer/hls/TsChunk;->e:Lcom/google/android/exoplayer/upstream/DataSpec;

    iget-wide v4, v0, Lcom/google/android/exoplayer/upstream/DataSpec;->b:J

    sub-long/2addr v2, v4

    long-to-int v0, v2

    iput v0, p0, Lcom/google/android/exoplayer/hls/TsChunk;->l:I

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 116
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer/hls/TsChunk;->f:Lcom/google/android/exoplayer/upstream/DataSource;

    invoke-interface {v1}, Lcom/google/android/exoplayer/upstream/DataSource;->a()V

    throw v0
.end method
