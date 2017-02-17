.class public final Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;
.super Lcom/google/android/exoplayer/chunk/BaseMediaChunk;
.source "SingleSampleMediaChunk.java"


# instance fields
.field private final k:Lcom/google/android/exoplayer/MediaFormat;

.field private final l:Lcom/google/android/exoplayer/drm/DrmInitData;

.field private final m:[B

.field private n:Z

.field private volatile o:I

.field private volatile p:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;Lcom/google/android/exoplayer/chunk/Format;JJIZ[B)V
    .locals 16

    .prologue
    .line 61
    const/4 v6, 0x1

    const/4 v14, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move/from16 v12, p8

    move/from16 v13, p9

    invoke-direct/range {v3 .. v14}, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;-><init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;ILcom/google/android/exoplayer/chunk/Format;JJIZZ)V

    .line 63
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;->k:Lcom/google/android/exoplayer/MediaFormat;

    .line 64
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;->l:Lcom/google/android/exoplayer/drm/DrmInitData;

    .line 65
    move-object/from16 v0, p10

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;->m:[B

    .line 66
    return-void
.end method


# virtual methods
.method public final b()Lcom/google/android/exoplayer/MediaFormat;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;->k:Lcom/google/android/exoplayer/MediaFormat;

    return-object v0
.end method

.method public final c()Lcom/google/android/exoplayer/drm/DrmInitData;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;->l:Lcom/google/android/exoplayer/drm/DrmInitData;

    return-object v0
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 70
    iget v0, p0, Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;->o:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;->p:Z

    .line 88
    return-void
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;->p:Z

    return v0
.end method

.method public final h()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    const/4 v4, -0x1

    .line 98
    iget-boolean v1, p0, Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;->n:Z

    if-nez v1, :cond_1

    .line 99
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;->m:[B

    if-eqz v1, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;->d()Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v3, p0, Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;->m:[B

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>([B)V

    iget-object v3, p0, Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;->m:[B

    array-length v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->a(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 102
    :cond_0
    iput-boolean v5, p0, Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;->n:Z

    .line 105
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;->e:Lcom/google/android/exoplayer/upstream/DataSpec;

    iget v2, p0, Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;->o:I

    invoke-static {v1, v2}, Lcom/google/android/exoplayer/util/Util;->a(Lcom/google/android/exoplayer/upstream/DataSpec;I)Lcom/google/android/exoplayer/upstream/DataSpec;

    move-result-object v1

    .line 108
    :try_start_0
    iget-object v2, p0, Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;->f:Lcom/google/android/exoplayer/upstream/DataSource;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer/upstream/DataSource;->a(Lcom/google/android/exoplayer/upstream/DataSpec;)J

    .line 111
    :cond_2
    :goto_0
    if-eq v0, v4, :cond_3

    .line 112
    invoke-virtual {p0}, Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;->d()Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;->f:Lcom/google/android/exoplayer/upstream/DataSource;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->a(Lcom/google/android/exoplayer/upstream/DataSource;)I

    move-result v0

    .line 113
    if-eq v0, v4, :cond_2

    .line 114
    iget v1, p0, Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;->o:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;->o:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 123
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;->f:Lcom/google/android/exoplayer/upstream/DataSource;

    invoke-interface {v1}, Lcom/google/android/exoplayer/upstream/DataSource;->a()V

    throw v0

    .line 117
    :cond_3
    :try_start_1
    iget v5, p0, Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;->o:I

    .line 118
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;->m:[B

    if-eqz v0, :cond_4

    .line 119
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;->m:[B

    array-length v0, v0

    add-int/2addr v5, v0

    .line 121
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;->d()Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;->g:J

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->a(JIII[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;->f:Lcom/google/android/exoplayer/upstream/DataSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer/upstream/DataSource;->a()V

    .line 124
    return-void
.end method
