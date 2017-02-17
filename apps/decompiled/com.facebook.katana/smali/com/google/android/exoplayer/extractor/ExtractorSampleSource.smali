.class public Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;
.super Ljava/lang/Object;
.source "ExtractorSampleSource.java"

# interfaces
.implements Lcom/google/android/exoplayer/SampleSource;
.implements Lcom/google/android/exoplayer/extractor/ExtractorOutput;
.implements Lcom/google/android/exoplayer/upstream/Loader$Callback;


# instance fields
.field private A:Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;

.field private B:Ljava/io/IOException;

.field private C:Z

.field private D:I

.field private E:J

.field private F:Z

.field private G:I

.field private H:I

.field private final a:Lcom/google/android/exoplayer/extractor/Extractor;

.field private final b:Lcom/google/android/exoplayer/upstream/DefaultAllocator;

.field private final c:I

.field private final d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;",
            ">;"
        }
    .end annotation
.end field

.field private final e:I

.field private final f:Z

.field private final g:Landroid/net/Uri;

.field private final h:Lcom/google/android/exoplayer/upstream/DataSource;

.field private volatile i:Z

.field private volatile j:Lcom/google/android/exoplayer/extractor/SeekMap;

.field private volatile k:Lcom/google/android/exoplayer/drm/DrmInitData;

.field private l:Z

.field private m:I

.field private n:[Lcom/google/android/exoplayer/TrackInfo;

.field private o:J

.field private p:[Z

.field private q:[Z

.field private r:[Z

.field private s:I

.field private t:J

.field private u:J

.field private v:J

.field private w:Z

.field private x:J

.field private y:J

.field private z:Lcom/google/android/exoplayer/upstream/Loader;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/extractor/Extractor;)V
    .locals 6

    .prologue
    .line 111
    const/4 v4, 0x2

    const v5, 0x1e8480

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/extractor/Extractor;II)V

    .line 113
    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/extractor/Extractor;II)V
    .locals 2

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->g:Landroid/net/Uri;

    .line 128
    iput-object p2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->h:Lcom/google/android/exoplayer/upstream/DataSource;

    .line 129
    iput-object p3, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->a:Lcom/google/android/exoplayer/extractor/Extractor;

    .line 130
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->s:I

    .line 131
    const v0, 0x1e8480

    iput v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->c:I

    .line 132
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->e:I

    .line 133
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->d:Landroid/util/SparseArray;

    .line 134
    new-instance v0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;

    const/high16 v1, 0x40000

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/upstream/DefaultAllocator;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->b:Lcom/google/android/exoplayer/upstream/DefaultAllocator;

    .line 135
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->v:J

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->f:Z

    .line 137
    invoke-interface {p3, p0}, Lcom/google/android/exoplayer/extractor/Extractor;->a(Lcom/google/android/exoplayer/extractor/ExtractorOutput;)V

    .line 138
    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;)I
    .locals 2

    .prologue
    .line 43
    iget v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->G:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->G:I

    return v0
.end method

.method private d(J)V
    .locals 1

    .prologue
    .line 395
    iput-wide p1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->v:J

    .line 400
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->z:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 411
    :goto_0
    return-void

    .line 404
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->F:Z

    .line 405
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->z:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 406
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->z:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader;->b()V

    goto :goto_0

    .line 408
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->k()V

    .line 409
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->f()V

    goto :goto_0
.end method

.method private e(J)Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;
    .locals 9

    .prologue
    .line 501
    new-instance v0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->g:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->h:Lcom/google/android/exoplayer/upstream/DataSource;

    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->a:Lcom/google/android/exoplayer/extractor/Extractor;

    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->b:Lcom/google/android/exoplayer/upstream/DefaultAllocator;

    iget v5, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->c:I

    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->j:Lcom/google/android/exoplayer/extractor/SeekMap;

    invoke-interface {v6, p1, p2}, Lcom/google/android/exoplayer/extractor/SeekMap;->b(J)J

    move-result-wide v6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/extractor/Extractor;Lcom/google/android/exoplayer/upstream/DefaultAllocator;IJ)V

    return-object v0
.end method

.method private e()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 383
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->f()V

    .line 384
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 391
    :cond_0
    :goto_0
    return v0

    .line 387
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->l:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->j()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 388
    :cond_2
    if-nez v0, :cond_0

    .line 389
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->g()V

    goto :goto_0
.end method

.method private f()V
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 414
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->C:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->F:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->z:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 474
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->B:Ljava/io/IOException;

    if-eqz v0, :cond_7

    .line 419
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->A:Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 420
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->E:J

    sub-long/2addr v4, v6

    .line 421
    iget v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->D:I

    int-to-long v6, v0

    invoke-static {v6, v7}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->g(J)J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-ltz v0, :cond_0

    .line 422
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->B:Ljava/io/IOException;

    .line 423
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->l:Z

    if-nez v0, :cond_5

    .line 427
    :goto_2
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 428
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;->a()V

    .line 427
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    move v0, v2

    .line 419
    goto :goto_1

    .line 430
    :cond_3
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->h()Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->A:Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;

    .line 448
    :cond_4
    :goto_3
    iget v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->G:I

    iput v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->H:I

    .line 449
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->z:Lcom/google/android/exoplayer/upstream/Loader;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->A:Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/exoplayer/upstream/Loader;->a(Lcom/google/android/exoplayer/upstream/Loader$Loadable;Lcom/google/android/exoplayer/upstream/Loader$Callback;)V

    goto :goto_0

    .line 431
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->j:Lcom/google/android/exoplayer/extractor/SeekMap;

    invoke-interface {v0}, Lcom/google/android/exoplayer/extractor/SeekMap;->a()Z

    move-result v0

    if-nez v0, :cond_4

    .line 436
    :goto_4
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 437
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;->a()V

    .line 436
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 439
    :cond_6
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->h()Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->A:Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;

    .line 442
    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->t:J

    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->x:J

    .line 443
    iput-boolean v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->w:Z

    goto :goto_3

    .line 457
    :cond_7
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->y:J

    .line 458
    iput-boolean v2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->w:Z

    .line 460
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->l:Z

    if-nez v0, :cond_8

    .line 461
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->h()Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->A:Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;

    .line 472
    :goto_5
    iget v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->G:I

    iput v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->H:I

    .line 473
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->z:Lcom/google/android/exoplayer/upstream/Loader;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->A:Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/exoplayer/upstream/Loader;->a(Lcom/google/android/exoplayer/upstream/Loader$Loadable;Lcom/google/android/exoplayer/upstream/Loader$Callback;)V

    goto/16 :goto_0

    .line 463
    :cond_8
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->l()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 464
    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->o:J

    cmp-long v0, v2, v6

    if-eqz v0, :cond_9

    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->v:J

    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->o:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_9

    .line 465
    iput-boolean v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->F:Z

    .line 466
    iput-wide v6, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->v:J

    goto/16 :goto_0

    .line 469
    :cond_9
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->v:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->e(J)Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->A:Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;

    .line 470
    iput-wide v6, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->v:J

    goto :goto_5
.end method

.method private f(J)V
    .locals 3

    .prologue
    .line 524
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->r:[Z

    array-length v0, v0

    if-ge v1, v0, :cond_1

    .line 525
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->r:[Z

    aget-boolean v0, v0, v1

    if-nez v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;->a(J)V

    .line 524
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 529
    :cond_1
    return-void
.end method

.method private static g(J)J
    .locals 4

    .prologue
    .line 546
    const-wide/16 v0, 0x1

    sub-long v0, p0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 477
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->B:Ljava/io/IOException;

    if-nez v0, :cond_1

    .line 494
    :cond_0
    return-void

    .line 480
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->C:Z

    if-eqz v0, :cond_2

    .line 481
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->B:Ljava/io/IOException;

    throw v0

    .line 484
    :cond_2
    iget v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 485
    iget v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->e:I

    .line 491
    :goto_0
    iget v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->D:I

    if-le v1, v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->B:Ljava/io/IOException;

    throw v0

    .line 487
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->j:Lcom/google/android/exoplayer/extractor/SeekMap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->j:Lcom/google/android/exoplayer/extractor/SeekMap;

    invoke-interface {v0}, Lcom/google/android/exoplayer/extractor/SeekMap;->a()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x6

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private h()Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;
    .locals 8

    .prologue
    .line 497
    new-instance v0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->g:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->h:Lcom/google/android/exoplayer/upstream/DataSource;

    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->a:Lcom/google/android/exoplayer/extractor/Extractor;

    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->b:Lcom/google/android/exoplayer/upstream/DefaultAllocator;

    iget v5, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->c:I

    const-wide/16 v6, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/extractor/Extractor;Lcom/google/android/exoplayer/upstream/DefaultAllocator;IJ)V

    return-object v0
.end method

.method private i()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 506
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 507
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 511
    :goto_1
    return v2

    .line 506
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 511
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private j()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 515
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->r:[Z

    array-length v0, v0

    if-ge v1, v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->r:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;->g()Z

    move-result v0

    if-nez v0, :cond_1

    .line 517
    const/4 v2, 0x1

    .line 520
    :cond_0
    return v2

    .line 515
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private k()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 532
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;->a()V

    .line 532
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 535
    :cond_0
    iput-object v3, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->A:Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;

    .line 536
    iput-object v3, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->B:Ljava/io/IOException;

    .line 537
    iput v2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->D:I

    .line 538
    iput-boolean v2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->C:Z

    .line 539
    return-void
.end method

.method private l()Z
    .locals 4

    .prologue
    .line 542
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->v:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(IJLcom/google/android/exoplayer/MediaFormatHolder;Lcom/google/android/exoplayer/SampleHolder;Z)I
    .locals 6

    .prologue
    const/4 v2, -0x2

    const/4 v1, 0x0

    .line 228
    iput-wide p2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->t:J

    .line 230
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->q:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->q:[Z

    aput-boolean v1, v0, p1

    .line 232
    const/4 v0, -0x5

    .line 265
    :goto_0
    return v0

    .line 235
    :cond_0
    if-nez p6, :cond_1

    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 236
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->g()V

    move v0, v2

    .line 237
    goto :goto_0

    .line 240
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;

    .line 241
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->p:[Z

    aget-boolean v3, v3, p1

    if-eqz v3, :cond_3

    .line 242
    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;->e()Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    iput-object v0, p4, Lcom/google/android/exoplayer/MediaFormatHolder;->a:Lcom/google/android/exoplayer/MediaFormat;

    .line 243
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->k:Lcom/google/android/exoplayer/drm/DrmInitData;

    iput-object v0, p4, Lcom/google/android/exoplayer/MediaFormatHolder;->b:Lcom/google/android/exoplayer/drm/DrmInitData;

    .line 244
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->p:[Z

    aput-boolean v1, v0, p1

    .line 245
    const/4 v0, -0x4

    goto :goto_0

    .line 248
    :cond_3
    invoke-virtual {v0, p5}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;->a(Lcom/google/android/exoplayer/SampleHolder;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 249
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->f:Z

    if-eqz v0, :cond_5

    iget-wide v2, p5, Lcom/google/android/exoplayer/SampleHolder;->e:J

    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->u:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_5

    const/4 v0, 0x1

    .line 250
    :goto_1
    iget v2, p5, Lcom/google/android/exoplayer/SampleHolder;->d:I

    if-eqz v0, :cond_6

    const/high16 v0, 0x8000000

    :goto_2
    or-int/2addr v0, v2

    iput v0, p5, Lcom/google/android/exoplayer/SampleHolder;->d:I

    .line 251
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->w:Z

    if-eqz v0, :cond_4

    .line 253
    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->x:J

    iget-wide v4, p5, Lcom/google/android/exoplayer/SampleHolder;->e:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->y:J

    .line 254
    iput-boolean v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->w:Z

    .line 256
    :cond_4
    iget-wide v0, p5, Lcom/google/android/exoplayer/SampleHolder;->e:J

    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->y:J

    add-long/2addr v0, v2

    iput-wide v0, p5, Lcom/google/android/exoplayer/SampleHolder;->e:J

    .line 257
    const/4 v0, -0x3

    goto :goto_0

    :cond_5
    move v0, v1

    .line 249
    goto :goto_1

    :cond_6
    move v0, v1

    .line 250
    goto :goto_2

    .line 260
    :cond_7
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->F:Z

    if-eqz v0, :cond_8

    .line 261
    const/4 v0, -0x1

    goto :goto_0

    .line 264
    :cond_8
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->g()V

    move v0, v2

    .line 265
    goto :goto_0
.end method

.method public final a(I)Lcom/google/android/exoplayer/TrackInfo;
    .locals 1

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->l:Z

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 184
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->n:[Lcom/google/android/exoplayer/TrackInfo;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 367
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->i:Z

    .line 368
    return-void
.end method

.method public final a(IJ)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 189
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->l:Z

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 190
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->r:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 191
    iget v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->m:I

    .line 192
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->r:[Z

    aput-boolean v1, v0, p1

    .line 193
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->p:[Z

    aput-boolean v1, v0, p1

    .line 194
    iget v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->m:I

    if-ne v0, v1, :cond_0

    .line 195
    invoke-virtual {p0, p2, p3}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->c(J)V

    .line 197
    :cond_0
    return-void

    .line 190
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/exoplayer/drm/DrmInitData;)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->k:Lcom/google/android/exoplayer/drm/DrmInitData;

    .line 378
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer/extractor/SeekMap;)V
    .locals 0

    .prologue
    .line 372
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->j:Lcom/google/android/exoplayer/extractor/SeekMap;

    .line 373
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer/upstream/Loader$Loadable;)V
    .locals 1

    .prologue
    .line 331
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->F:Z

    .line 332
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer/upstream/Loader$Loadable;Ljava/io/IOException;)V
    .locals 2

    .prologue
    .line 346
    iput-object p2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->B:Ljava/io/IOException;

    .line 347
    iget v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->G:I

    iget v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->H:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->D:I

    .line 349
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->E:J

    .line 350
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->f()V

    .line 351
    return-void

    .line 347
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->D:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final a(J)Z
    .locals 12

    .prologue
    const-wide/16 v10, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 142
    iget-boolean v2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->l:Z

    if-eqz v2, :cond_0

    move v0, v1

    .line 172
    :goto_0
    return v0

    .line 145
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->z:Lcom/google/android/exoplayer/upstream/Loader;

    if-nez v2, :cond_1

    .line 146
    new-instance v2, Lcom/google/android/exoplayer/upstream/Loader;

    const-string v3, "Loader:ExtractorSampleSource"

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->z:Lcom/google/android/exoplayer/upstream/Loader;

    .line 149
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->e()Z

    .line 154
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->j:Lcom/google/android/exoplayer/extractor/SeekMap;

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->i:Z

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->i()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 155
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->d:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 156
    new-array v2, v3, [Z

    iput-object v2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->r:[Z

    .line 157
    new-array v2, v3, [Z

    iput-object v2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->q:[Z

    .line 158
    new-array v2, v3, [Z

    iput-object v2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->p:[Z

    .line 159
    new-array v2, v3, [Lcom/google/android/exoplayer/TrackInfo;

    iput-object v2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->n:[Lcom/google/android/exoplayer/TrackInfo;

    .line 160
    iput-wide v10, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->o:J

    move v2, v0

    .line 161
    :goto_1
    if-ge v2, v3, :cond_3

    .line 162
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;->e()Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    .line 163
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->n:[Lcom/google/android/exoplayer/TrackInfo;

    new-instance v5, Lcom/google/android/exoplayer/TrackInfo;

    iget-object v6, v0, Lcom/google/android/exoplayer/MediaFormat;->a:Ljava/lang/String;

    iget-wide v8, v0, Lcom/google/android/exoplayer/MediaFormat;->c:J

    invoke-direct {v5, v6, v8, v9}, Lcom/google/android/exoplayer/TrackInfo;-><init>(Ljava/lang/String;J)V

    aput-object v5, v4, v2

    .line 164
    iget-wide v4, v0, Lcom/google/android/exoplayer/MediaFormat;->c:J

    cmp-long v4, v4, v10

    if-eqz v4, :cond_2

    iget-wide v4, v0, Lcom/google/android/exoplayer/MediaFormat;->c:J

    iget-wide v6, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->o:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 165
    iget-wide v4, v0, Lcom/google/android/exoplayer/MediaFormat;->c:J

    iput-wide v4, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->o:J

    .line 161
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 168
    :cond_3
    iput-boolean v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->l:Z

    move v0, v1

    .line 169
    goto :goto_0

    .line 171
    :cond_4
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->g()V

    goto :goto_0
.end method

.method public final b()J
    .locals 8

    .prologue
    const-wide/high16 v4, -0x8000000000000000L

    .line 303
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->F:Z

    if-eqz v0, :cond_1

    .line 304
    const-wide/16 v2, -0x3

    .line 313
    :cond_0
    :goto_0
    return-wide v2

    .line 305
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 306
    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->v:J

    goto :goto_0

    .line 309
    :cond_2
    const/4 v0, 0x0

    move v1, v0

    move-wide v2, v4

    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 310
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;->f()J

    move-result-wide v6

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 309
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 313
    :cond_3
    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->t:J

    goto :goto_0
.end method

.method public final b(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 201
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->l:Z

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 202
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->r:[Z

    aget-boolean v0, v0, p1

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 203
    iget v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->m:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->m:I

    .line 204
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->r:[Z

    aput-boolean v1, v0, p1

    .line 205
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->q:[Z

    aput-boolean v1, v0, p1

    .line 206
    iget v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->m:I

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->z:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->z:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader;->b()V

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->k()V

    .line 211
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->b:Lcom/google/android/exoplayer/upstream/DefaultAllocator;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->a(I)V

    goto :goto_0
.end method

.method public final b(J)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 218
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->l:Z

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 219
    iget v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->m:I

    if-lez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 220
    iput-wide p1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->t:J

    .line 221
    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->t:J

    invoke-direct {p0, v4, v5}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->f(J)V

    .line 222
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->F:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    return v2

    :cond_2
    move v0, v2

    .line 219
    goto :goto_0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 320
    iget v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->s:I

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 321
    iget v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->s:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->s:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->z:Lcom/google/android/exoplayer/upstream/Loader;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->z:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader;->c()V

    .line 323
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->z:Lcom/google/android/exoplayer/upstream/Loader;

    .line 325
    :cond_0
    return-void

    .line 320
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(J)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 270
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->l:Z

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 271
    iget v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->m:I

    if-lez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 272
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->j:Lcom/google/android/exoplayer/extractor/SeekMap;

    invoke-interface {v0}, Lcom/google/android/exoplayer/extractor/SeekMap;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    const-wide/16 p1, 0x0

    .line 277
    :cond_0
    iput-wide p1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->u:J

    .line 278
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->v:J

    :goto_1
    cmp-long v0, v4, p1

    if-nez v0, :cond_4

    .line 299
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 271
    goto :goto_0

    .line 278
    :cond_3
    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->t:J

    goto :goto_1

    .line 282
    :cond_4
    iput-wide p1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->t:J

    .line 285
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->l()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_2
    move v3, v2

    move v4, v0

    .line 286
    :goto_3
    if-eqz v4, :cond_6

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v3, v0, :cond_6

    .line 287
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;->b(J)Z

    move-result v0

    and-int/2addr v4, v0

    .line 286
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    :cond_5
    move v0, v2

    .line 285
    goto :goto_2

    .line 291
    :cond_6
    if-nez v4, :cond_7

    .line 292
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->d(J)V

    .line 296
    :cond_7
    :goto_4
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->q:[Z

    array-length v0, v0

    if-ge v2, v0, :cond_1

    .line 297
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->q:[Z

    aput-boolean v1, v0, v2

    .line 296
    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method

.method public final cn_()I
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 336
    iget v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->m:I

    if-lez v0, :cond_0

    .line 337
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->v:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->d(J)V

    .line 342
    :goto_0
    return-void

    .line 339
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->k()V

    .line 340
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->b:Lcom/google/android/exoplayer/upstream/DefaultAllocator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->a(I)V

    goto :goto_0
.end method

.method public final r_(I)Lcom/google/android/exoplayer/extractor/TrackOutput;
    .locals 2

    .prologue
    .line 357
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;

    .line 358
    if-nez v0, :cond_0

    .line 359
    new-instance v0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->b:Lcom/google/android/exoplayer/upstream/DefaultAllocator;

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;-><init>(Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;Lcom/google/android/exoplayer/upstream/Allocator;)V

    .line 360
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->d:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 362
    :cond_0
    return-object v0
.end method
