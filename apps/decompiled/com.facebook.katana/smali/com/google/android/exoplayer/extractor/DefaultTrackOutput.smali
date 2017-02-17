.class public Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;
.super Ljava/lang/Object;
.source "DefaultTrackOutput.java"

# interfaces
.implements Lcom/google/android/exoplayer/extractor/TrackOutput;


# instance fields
.field private final a:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;

.field private final b:Lcom/google/android/exoplayer/SampleHolder;

.field private c:Z

.field private d:J

.field private e:J

.field private volatile f:J

.field private volatile g:Lcom/google/android/exoplayer/MediaFormat;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/upstream/Allocator;)V
    .locals 4

    .prologue
    const-wide/high16 v2, -0x8000000000000000L

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;-><init>(Lcom/google/android/exoplayer/upstream/Allocator;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->a:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;

    .line 49
    new-instance v0, Lcom/google/android/exoplayer/SampleHolder;

    invoke-direct {v0}, Lcom/google/android/exoplayer/SampleHolder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->b:Lcom/google/android/exoplayer/SampleHolder;

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->c:Z

    .line 51
    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->d:J

    .line 52
    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->e:J

    .line 53
    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->f:J

    .line 54
    return-void
.end method

.method private h()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 210
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->a:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->b:Lcom/google/android/exoplayer/SampleHolder;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->a(Lcom/google/android/exoplayer/SampleHolder;)Z

    move-result v1

    .line 211
    iget-boolean v2, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->c:Z

    if-eqz v2, :cond_0

    .line 212
    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->b:Lcom/google/android/exoplayer/SampleHolder;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/SampleHolder;->c()Z

    move-result v2

    if-nez v2, :cond_0

    .line 213
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->a:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->d()V

    .line 214
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->a:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->b:Lcom/google/android/exoplayer/SampleHolder;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->a(Lcom/google/android/exoplayer/SampleHolder;)Z

    move-result v1

    goto :goto_0

    .line 217
    :cond_0
    if-nez v1, :cond_2

    .line 223
    :cond_1
    :goto_1
    return v0

    .line 220
    :cond_2
    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->e:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->b:Lcom/google/android/exoplayer/SampleHolder;

    iget-wide v2, v1, Lcom/google/android/exoplayer/SampleHolder;->e:J

    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->e:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 223
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer/extractor/ExtractorInput;I)I
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->a:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->a(Lcom/google/android/exoplayer/extractor/ExtractorInput;I)I

    move-result v0

    return v0
.end method

.method public final a(Lcom/google/android/exoplayer/upstream/DataSource;)I
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->a:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;

    const v1, 0x7fffffff

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->a(Lcom/google/android/exoplayer/upstream/DataSource;I)I

    move-result v0

    return v0
.end method

.method public final a()V
    .locals 4

    .prologue
    const-wide/high16 v2, -0x8000000000000000L

    .line 62
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->a:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->a()V

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->c:Z

    .line 64
    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->d:J

    .line 65
    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->e:J

    .line 66
    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->f:J

    .line 67
    return-void
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->a:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->a(I)V

    .line 83
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->a:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->b:Lcom/google/android/exoplayer/SampleHolder;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->a(Lcom/google/android/exoplayer/SampleHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->b:Lcom/google/android/exoplayer/SampleHolder;

    iget-wide v0, v0, Lcom/google/android/exoplayer/SampleHolder;->e:J

    :goto_0
    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->f:J

    .line 85
    return-void

    .line 83
    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0
.end method

.method public final a(J)V
    .locals 3

    .prologue
    .line 152
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->a:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->b:Lcom/google/android/exoplayer/SampleHolder;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->a(Lcom/google/android/exoplayer/SampleHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->b:Lcom/google/android/exoplayer/SampleHolder;

    iget-wide v0, v0, Lcom/google/android/exoplayer/SampleHolder;->e:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->a:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->d()V

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->c:Z

    goto :goto_0

    .line 157
    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->d:J

    .line 158
    return-void
.end method

.method public a(JIII[B)V
    .locals 9

    .prologue
    .line 251
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->f:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->f:J

    .line 252
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->a:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->a:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->e()J

    move-result-wide v2

    int-to-long v4, p4

    sub-long/2addr v2, v4

    int-to-long v4, p5

    sub-long v4, v2, v4

    move-wide v1, p1

    move v3, p3

    move v6, p4

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->a(JIJI[B)V

    .line 254
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer/MediaFormat;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->g:Lcom/google/android/exoplayer/MediaFormat;

    .line 237
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->a:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->a(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 247
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer/SampleHolder;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 135
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->h()Z

    move-result v1

    .line 136
    if-nez v1, :cond_0

    .line 143
    :goto_0
    return v0

    .line 140
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->a:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->b(Lcom/google/android/exoplayer/SampleHolder;)Z

    .line 141
    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->c:Z

    .line 142
    iget-wide v0, p1, Lcom/google/android/exoplayer/SampleHolder;->e:J

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->d:J

    .line 143
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final a(Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 177
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->e:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    move v0, v2

    .line 200
    :goto_0
    return v0

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->a:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->b:Lcom/google/android/exoplayer/SampleHolder;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->a(Lcom/google/android/exoplayer/SampleHolder;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 183
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->b:Lcom/google/android/exoplayer/SampleHolder;

    iget-wide v0, v0, Lcom/google/android/exoplayer/SampleHolder;->e:J

    .line 187
    :goto_1
    iget-object v3, p1, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->a:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;

    .line 189
    :goto_2
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->b:Lcom/google/android/exoplayer/SampleHolder;

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->a(Lcom/google/android/exoplayer/SampleHolder;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->b:Lcom/google/android/exoplayer/SampleHolder;

    iget-wide v4, v4, Lcom/google/android/exoplayer/SampleHolder;->e:J

    cmp-long v4, v4, v0

    if-ltz v4, :cond_1

    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->b:Lcom/google/android/exoplayer/SampleHolder;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/SampleHolder;->c()Z

    move-result v4

    if-nez v4, :cond_3

    .line 192
    :cond_1
    invoke-virtual {v3}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->d()V

    goto :goto_2

    .line 185
    :cond_2
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->d:J

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    goto :goto_1

    .line 194
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->b:Lcom/google/android/exoplayer/SampleHolder;

    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->a(Lcom/google/android/exoplayer/SampleHolder;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 197
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->b:Lcom/google/android/exoplayer/SampleHolder;

    iget-wide v0, v0, Lcom/google/android/exoplayer/SampleHolder;->e:J

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->e:J

    move v0, v2

    .line 198
    goto :goto_0

    .line 200
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->a:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->b()I

    move-result v0

    return v0
.end method

.method public final b(J)Z
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->a:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->a(J)Z

    move-result v0

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->a:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->c()I

    move-result v0

    return v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->g:Lcom/google/android/exoplayer/MediaFormat;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Lcom/google/android/exoplayer/MediaFormat;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->g:Lcom/google/android/exoplayer/MediaFormat;

    return-object v0
.end method

.method public final f()J
    .locals 2

    .prologue
    .line 115
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->f:J

    return-wide v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->h()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
