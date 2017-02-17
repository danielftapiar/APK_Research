.class public Lcom/google/android/exoplayer/hls/HlsSampleSource;
.super Ljava/lang/Object;
.source "HlsSampleSource.java"

# interfaces
.implements Lcom/google/android/exoplayer/SampleSource;
.implements Lcom/google/android/exoplayer/upstream/Loader$Callback;


# instance fields
.field private A:Ljava/io/IOException;

.field private B:Z

.field private C:I

.field private D:J

.field private E:J

.field private final a:Lcom/google/android/exoplayer/hls/HlsChunkSource;

.field private final b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/exoplayer/upstream/Allocator;

.field private final d:Z

.field private final e:I

.field private final f:I

.field private final g:J

.field private final h:I

.field private final i:Landroid/os/Handler;

.field private final j:Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;

.field private k:I

.field private l:Z

.field private m:I

.field private n:I

.field private o:[Z

.field private p:[Z

.field private q:[Lcom/google/android/exoplayer/TrackInfo;

.field private r:[Lcom/google/android/exoplayer/MediaFormat;

.field private s:Lcom/google/android/exoplayer/chunk/Format;

.field private t:J

.field private u:J

.field private v:J

.field private w:Lcom/google/android/exoplayer/hls/TsChunk;

.field private x:Lcom/google/android/exoplayer/chunk/Chunk;

.field private y:Z

.field private z:Lcom/google/android/exoplayer/upstream/Loader;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/hls/HlsChunkSource;)V
    .locals 8

    .prologue
    .line 97
    const/4 v3, 0x1

    const/4 v4, 0x2

    const v5, 0x1e8480

    const-wide/16 v6, 0x3e8

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer/hls/HlsSampleSource;-><init>(Lcom/google/android/exoplayer/hls/HlsChunkSource;ZIIJ)V

    .line 99
    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer/hls/HlsChunkSource;ZIIJ)V
    .locals 11

    .prologue
    .line 104
    const/4 v3, 0x1

    const/4 v4, 0x2

    const v5, 0x1e8480

    const-wide/16 v6, 0x3e8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer/hls/HlsSampleSource;-><init>(Lcom/google/android/exoplayer/hls/HlsChunkSource;ZIIJLandroid/os/Handler;Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;I)V

    .line 107
    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer/hls/HlsChunkSource;ZIIJLandroid/os/Handler;Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->a:Lcom/google/android/exoplayer/hls/HlsChunkSource;

    .line 114
    iput-boolean p2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->d:Z

    .line 115
    iput p3, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->k:I

    .line 116
    iput p4, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->f:I

    .line 117
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p5

    iput-wide v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->g:J

    .line 118
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->e:I

    .line 119
    iput-object v2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->i:Landroid/os/Handler;

    .line 120
    iput-object v2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->j:Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;

    .line 121
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->h:I

    .line 122
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->v:J

    .line 123
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->b:Ljava/util/LinkedList;

    .line 124
    new-instance v0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;

    const/high16 v1, 0x40000

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/upstream/DefaultAllocator;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->c:Lcom/google/android/exoplayer/upstream/Allocator;

    .line 125
    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer/hls/HlsSampleSource;)I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->h:I

    return v0
.end method

.method private a(JIILcom/google/android/exoplayer/chunk/Format;JJ)V
    .locals 12

    .prologue
    .line 534
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->i:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->j:Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->i:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer/hls/HlsSampleSource$1;

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    invoke-direct/range {v1 .. v11}, Lcom/google/android/exoplayer/hls/HlsSampleSource$1;-><init>(Lcom/google/android/exoplayer/hls/HlsSampleSource;JIILcom/google/android/exoplayer/chunk/Format;JJ)V

    const v2, -0x3e393944

    invoke-static {v0, v1, v2}, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->a(Landroid/os/Handler;Ljava/lang/Runnable;I)Z

    .line 543
    :cond_0
    return-void
.end method

.method private a(JIILcom/google/android/exoplayer/chunk/Format;JJJJ)V
    .locals 18

    .prologue
    .line 548
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->i:Landroid/os/Handler;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->j:Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;

    if-eqz v2, :cond_0

    .line 549
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->i:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplayer/hls/HlsSampleSource$2;

    move-object/from16 v4, p0

    move-wide/from16 v5, p1

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    move-wide/from16 v14, p10

    move-wide/from16 v16, p12

    invoke-direct/range {v3 .. v17}, Lcom/google/android/exoplayer/hls/HlsSampleSource$2;-><init>(Lcom/google/android/exoplayer/hls/HlsSampleSource;JIILcom/google/android/exoplayer/chunk/Format;JJJJ)V

    const v4, 0xb14dc6f

    invoke-static {v2, v3, v4}, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->a(Landroid/os/Handler;Ljava/lang/Runnable;I)Z

    .line 557
    :cond_0
    return-void
.end method

.method private a(Lcom/google/android/exoplayer/chunk/Format;IJ)V
    .locals 7

    .prologue
    .line 583
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->i:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->j:Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;

    if-eqz v0, :cond_0

    .line 584
    iget-object v6, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->i:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/exoplayer/hls/HlsSampleSource$5;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/hls/HlsSampleSource$5;-><init>(Lcom/google/android/exoplayer/hls/HlsSampleSource;Lcom/google/android/exoplayer/chunk/Format;IJ)V

    const v1, -0x3fcbae39

    invoke-static {v6, v0, v1}, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->a(Landroid/os/Handler;Ljava/lang/Runnable;I)Z

    .line 592
    :cond_0
    return-void
.end method

.method private a(Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;J)V
    .locals 2

    .prologue
    .line 410
    invoke-virtual {p1}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 418
    :cond_0
    return-void

    .line 413
    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->o:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 414
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->o:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_2

    .line 415
    invoke-virtual {p1, v0, p2, p3}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->a(IJ)V

    .line 413
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a(Ljava/io/IOException;)V
    .locals 3

    .prologue
    .line 571
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->i:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->j:Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->i:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer/hls/HlsSampleSource$4;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer/hls/HlsSampleSource$4;-><init>(Lcom/google/android/exoplayer/hls/HlsSampleSource;Ljava/io/IOException;)V

    const v2, 0x7f2169ce

    invoke-static {v0, v1, v2}, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->a(Landroid/os/Handler;Ljava/lang/Runnable;I)Z

    .line 579
    :cond_0
    return-void
.end method

.method private static a(Lcom/google/android/exoplayer/chunk/Chunk;)Z
    .locals 1

    .prologue
    .line 517
    instance-of v0, p0, Lcom/google/android/exoplayer/hls/TsChunk;

    return v0
.end method

.method private a(Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 421
    invoke-virtual {p1}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 429
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    .line 424
    :goto_1
    iget-object v2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->o:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 425
    iget-object v2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->o:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_2

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->c(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 426
    const/4 v1, 0x1

    goto :goto_0

    .line 424
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method static synthetic b(Lcom/google/android/exoplayer/hls/HlsSampleSource;)Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->j:Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;

    return-object v0
.end method

.method private d(J)V
    .locals 1

    .prologue
    .line 440
    iput-wide p1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->v:J

    .line 441
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->y:Z

    .line 442
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->z:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->z:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader;->b()V

    .line 448
    :goto_0
    return-void

    .line 445
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->h()V

    .line 446
    invoke-direct {p0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->j()V

    goto :goto_0
.end method

.method private static e(J)J
    .locals 4

    .prologue
    .line 525
    const-wide/16 v0, 0x1

    sub-long v0, p0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private e()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 219
    invoke-direct {p0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->j()V

    .line 220
    invoke-direct {p0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->k()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->b:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 227
    :cond_0
    :goto_0
    return v0

    .line 223
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->l:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->f()Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->a(Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 224
    :cond_2
    if-nez v0, :cond_0

    .line 225
    invoke-direct {p0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->g()V

    goto :goto_0
.end method

.method private f()Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;
    .locals 3

    .prologue
    .line 400
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;

    .line 401
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->b:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->a(Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 403
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->d()V

    .line 404
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;

    goto :goto_0

    .line 406
    :cond_0
    return-object v0
.end method

.method private f(J)V
    .locals 3

    .prologue
    .line 560
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->i:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->j:Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->i:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer/hls/HlsSampleSource$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/exoplayer/hls/HlsSampleSource$3;-><init>(Lcom/google/android/exoplayer/hls/HlsSampleSource;J)V

    const v2, 0x7aad4b11

    invoke-static {v0, v1, v2}, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->a(Landroid/os/Handler;Ljava/lang/Runnable;I)Z

    .line 568
    :cond_0
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 433
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->A:Ljava/io/IOException;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->B:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->C:I

    iget v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->e:I

    if-le v0, v1, :cond_1

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->A:Ljava/io/IOException;

    throw v0

    .line 437
    :cond_1
    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    .line 451
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->d()V

    .line 451
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 455
    invoke-direct {p0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->i()V

    .line 456
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->w:Lcom/google/android/exoplayer/hls/TsChunk;

    .line 457
    return-void
.end method

.method private i()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 460
    iput-object v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->x:Lcom/google/android/exoplayer/chunk/Chunk;

    .line 461
    iput-object v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->A:Ljava/io/IOException;

    .line 462
    iput v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->C:I

    .line 463
    iput-boolean v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->B:Z

    .line 464
    return-void
.end method

.method private j()V
    .locals 11

    .prologue
    const-wide/16 v6, -0x1

    .line 467
    iget-boolean v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->B:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->y:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->z:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 514
    :cond_0
    :goto_0
    return-void

    .line 471
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->A:Ljava/io/IOException;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 472
    :goto_1
    if-eqz v0, :cond_3

    .line 473
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->D:J

    sub-long/2addr v0, v2

    .line 474
    iget v2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->C:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->e(J)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 475
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->A:Ljava/io/IOException;

    .line 476
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->z:Lcom/google/android/exoplayer/upstream/Loader;

    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->x:Lcom/google/android/exoplayer/chunk/Chunk;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/exoplayer/upstream/Loader;->a(Lcom/google/android/exoplayer/upstream/Loader$Loadable;Lcom/google/android/exoplayer/upstream/Loader$Callback;)V

    goto :goto_0

    .line 471
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 481
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->w:Lcom/google/android/exoplayer/hls/TsChunk;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->w:Lcom/google/android/exoplayer/hls/TsChunk;

    iget-wide v0, v0, Lcom/google/android/exoplayer/hls/TsChunk;->h:J

    iget-wide v2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->t:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->g:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->c:Lcom/google/android/exoplayer/upstream/Allocator;

    invoke-interface {v0}, Lcom/google/android/exoplayer/upstream/Allocator;->b()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->f:I

    if-ge v0, v1, :cond_0

    .line 488
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->a:Lcom/google/android/exoplayer/hls/HlsChunkSource;

    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->w:Lcom/google/android/exoplayer/hls/TsChunk;

    iget-wide v2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->v:J

    iget-wide v4, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->t:J

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->a(Lcom/google/android/exoplayer/hls/TsChunk;JJ)Lcom/google/android/exoplayer/chunk/Chunk;

    move-result-object v0

    .line 490
    if-eqz v0, :cond_0

    .line 494
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->E:J

    .line 495
    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->x:Lcom/google/android/exoplayer/chunk/Chunk;

    .line 496
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->x:Lcom/google/android/exoplayer/chunk/Chunk;

    invoke-static {v0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->a(Lcom/google/android/exoplayer/chunk/Chunk;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 497
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->x:Lcom/google/android/exoplayer/chunk/Chunk;

    move-object v10, v0

    check-cast v10, Lcom/google/android/exoplayer/hls/TsChunk;

    .line 498
    invoke-direct {p0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->k()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 499
    iput-wide v6, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->v:J

    .line 501
    :cond_5
    iget-object v0, v10, Lcom/google/android/exoplayer/hls/TsChunk;->a:Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;

    .line 502
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->b:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->b:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v0, :cond_7

    .line 503
    :cond_6
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->c:Lcom/google/android/exoplayer/upstream/Allocator;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->a(Lcom/google/android/exoplayer/upstream/Allocator;)V

    .line 504
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->b:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 506
    :cond_7
    iget-object v0, v10, Lcom/google/android/exoplayer/hls/TsChunk;->e:Lcom/google/android/exoplayer/upstream/DataSpec;

    iget-wide v1, v0, Lcom/google/android/exoplayer/upstream/DataSpec;->d:J

    iget v3, v10, Lcom/google/android/exoplayer/hls/TsChunk;->b:I

    iget v4, v10, Lcom/google/android/exoplayer/hls/TsChunk;->c:I

    iget-object v5, v10, Lcom/google/android/exoplayer/hls/TsChunk;->d:Lcom/google/android/exoplayer/chunk/Format;

    iget-wide v6, v10, Lcom/google/android/exoplayer/hls/TsChunk;->g:J

    iget-wide v8, v10, Lcom/google/android/exoplayer/hls/TsChunk;->h:J

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->a(JIILcom/google/android/exoplayer/chunk/Format;JJ)V

    .line 508
    iput-object v10, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->w:Lcom/google/android/exoplayer/hls/TsChunk;

    .line 513
    :goto_2
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->z:Lcom/google/android/exoplayer/upstream/Loader;

    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->x:Lcom/google/android/exoplayer/chunk/Chunk;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/exoplayer/upstream/Loader;->a(Lcom/google/android/exoplayer/upstream/Loader$Loadable;Lcom/google/android/exoplayer/upstream/Loader$Callback;)V

    goto/16 :goto_0

    .line 510
    :cond_8
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->x:Lcom/google/android/exoplayer/chunk/Chunk;

    iget-object v0, v0, Lcom/google/android/exoplayer/chunk/Chunk;->e:Lcom/google/android/exoplayer/upstream/DataSpec;

    iget-wide v1, v0, Lcom/google/android/exoplayer/upstream/DataSpec;->d:J

    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->x:Lcom/google/android/exoplayer/chunk/Chunk;

    iget v3, v0, Lcom/google/android/exoplayer/chunk/Chunk;->b:I

    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->x:Lcom/google/android/exoplayer/chunk/Chunk;

    iget v4, v0, Lcom/google/android/exoplayer/chunk/Chunk;->c:I

    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->x:Lcom/google/android/exoplayer/chunk/Chunk;

    iget-object v5, v0, Lcom/google/android/exoplayer/chunk/Chunk;->d:Lcom/google/android/exoplayer/chunk/Format;

    move-object v0, p0

    move-wide v8, v6

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->a(JIILcom/google/android/exoplayer/chunk/Format;JJ)V

    goto :goto_2
.end method

.method private k()Z
    .locals 4

    .prologue
    .line 521
    iget-wide v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->v:J

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
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v4, -0x2

    .line 233
    iget-boolean v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->l:Z

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 234
    iput-wide p2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->t:J

    .line 236
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->p:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->p:[Z

    aput-boolean v1, v0, p1

    .line 238
    const/4 v0, -0x5

    .line 295
    :goto_0
    return v0

    .line 241
    :cond_0
    if-eqz p6, :cond_1

    move v0, v4

    .line 242
    goto :goto_0

    .line 245
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 246
    invoke-direct {p0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->g()V

    move v0, v4

    .line 247
    goto :goto_0

    .line 250
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->f()Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;

    move-result-object v2

    .line 252
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->s:Lcom/google/android/exoplayer/chunk/Format;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->s:Lcom/google/android/exoplayer/chunk/Format;

    iget-object v5, v2, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->b:Lcom/google/android/exoplayer/chunk/Format;

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer/chunk/Format;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 254
    :cond_3
    iget-object v0, v2, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->b:Lcom/google/android/exoplayer/chunk/Format;

    iget v5, v2, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->a:I

    iget-wide v6, v2, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->c:J

    invoke-direct {p0, v0, v5, v6, v7}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->a(Lcom/google/android/exoplayer/chunk/Format;IJ)V

    .line 255
    iget-object v0, v2, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->b:Lcom/google/android/exoplayer/chunk/Format;

    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->s:Lcom/google/android/exoplayer/chunk/Format;

    .line 258
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, v3, :cond_5

    .line 261
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->a(Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;)V

    :cond_5
    move v0, v1

    .line 265
    :goto_1
    iget-object v5, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->b:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    add-int/lit8 v6, v0, 0x1

    if-le v5, v6, :cond_6

    invoke-virtual {v2, p1}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->c(I)Z

    move-result v5

    if-nez v5, :cond_6

    .line 268
    iget-object v5, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->b:Ljava/util/LinkedList;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v5, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;

    move v8, v2

    move-object v2, v0

    move v0, v8

    goto :goto_1

    .line 271
    :cond_6
    invoke-virtual {v2}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->c()Z

    move-result v0

    if-nez v0, :cond_7

    .line 272
    invoke-direct {p0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->g()V

    move v0, v4

    .line 273
    goto :goto_0

    .line 276
    :cond_7
    invoke-virtual {v2, p1}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->b(I)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    .line 277
    if-eqz v0, :cond_8

    iget-object v5, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->r:[Lcom/google/android/exoplayer/MediaFormat;

    aget-object v5, v5, p1

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer/MediaFormat;->a(Lcom/google/android/exoplayer/MediaFormat;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 278
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->a:Lcom/google/android/exoplayer/hls/HlsChunkSource;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->a(Lcom/google/android/exoplayer/MediaFormat;)V

    .line 279
    iput-object v0, p4, Lcom/google/android/exoplayer/MediaFormatHolder;->a:Lcom/google/android/exoplayer/MediaFormat;

    .line 280
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->r:[Lcom/google/android/exoplayer/MediaFormat;

    aput-object v0, v1, p1

    .line 281
    const/4 v0, -0x4

    goto/16 :goto_0

    .line 284
    :cond_8
    invoke-virtual {v2, p1, p5}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->a(ILcom/google/android/exoplayer/SampleHolder;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 285
    iget-boolean v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->d:Z

    if-eqz v0, :cond_a

    iget-wide v4, p5, Lcom/google/android/exoplayer/SampleHolder;->e:J

    iget-wide v6, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->u:J

    cmp-long v0, v4, v6

    if-gez v0, :cond_a

    move v0, v3

    .line 286
    :goto_2
    iget v2, p5, Lcom/google/android/exoplayer/SampleHolder;->d:I

    if-eqz v0, :cond_9

    const/high16 v1, 0x8000000

    :cond_9
    or-int v0, v2, v1

    iput v0, p5, Lcom/google/android/exoplayer/SampleHolder;->d:I

    .line 287
    const/4 v0, -0x3

    goto/16 :goto_0

    :cond_a
    move v0, v1

    .line 285
    goto :goto_2

    .line 290
    :cond_b
    iget-boolean v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->y:Z

    if-eqz v0, :cond_c

    .line 291
    const/4 v0, -0x1

    goto/16 :goto_0

    .line 294
    :cond_c
    invoke-direct {p0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->g()V

    move v0, v4

    .line 295
    goto/16 :goto_0
.end method

.method public final a(I)Lcom/google/android/exoplayer/TrackInfo;
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->l:Z

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 174
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->q:[Lcom/google/android/exoplayer/TrackInfo;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final a(IJ)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 179
    iget-boolean v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->l:Z

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 180
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->o:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 181
    iget v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->n:I

    .line 182
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->o:[Z

    aput-boolean v1, v0, p1

    .line 183
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->r:[Lcom/google/android/exoplayer/MediaFormat;

    aput-object v2, v0, p1

    .line 184
    iput-object v2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->s:Lcom/google/android/exoplayer/chunk/Format;

    .line 185
    iget v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->n:I

    if-ne v0, v1, :cond_0

    .line 186
    invoke-virtual {p0, p2, p3}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->c(J)V

    .line 188
    :cond_0
    return-void

    .line 180
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/exoplayer/upstream/Loader$Loadable;)V
    .locals 14

    .prologue
    const-wide/16 v6, -0x1

    .line 341
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 342
    iget-wide v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->E:J

    sub-long v12, v10, v0

    .line 343
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->a:Lcom/google/android/exoplayer/hls/HlsChunkSource;

    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->x:Lcom/google/android/exoplayer/chunk/Chunk;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->a(Lcom/google/android/exoplayer/chunk/Chunk;)V

    .line 344
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->x:Lcom/google/android/exoplayer/chunk/Chunk;

    invoke-static {v0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->a(Lcom/google/android/exoplayer/chunk/Chunk;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 345
    check-cast p1, Lcom/google/android/exoplayer/hls/TsChunk;

    .line 346
    iget-boolean v0, p1, Lcom/google/android/exoplayer/hls/TsChunk;->j:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->y:Z

    .line 347
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->x:Lcom/google/android/exoplayer/chunk/Chunk;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/chunk/Chunk;->e()J

    move-result-wide v1

    iget v3, p1, Lcom/google/android/exoplayer/hls/TsChunk;->b:I

    iget v4, p1, Lcom/google/android/exoplayer/hls/TsChunk;->c:I

    iget-object v5, p1, Lcom/google/android/exoplayer/hls/TsChunk;->d:Lcom/google/android/exoplayer/chunk/Format;

    iget-wide v6, p1, Lcom/google/android/exoplayer/hls/TsChunk;->g:J

    iget-wide v8, p1, Lcom/google/android/exoplayer/hls/TsChunk;->h:J

    move-object v0, p0

    invoke-direct/range {v0 .. v13}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->a(JIILcom/google/android/exoplayer/chunk/Format;JJJJ)V

    .line 353
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->B:Z

    if-nez v0, :cond_0

    .line 354
    invoke-direct {p0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->i()V

    .line 356
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->n:I

    if-lez v0, :cond_2

    .line 357
    invoke-direct {p0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->j()V

    .line 362
    :goto_1
    return-void

    .line 350
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->x:Lcom/google/android/exoplayer/chunk/Chunk;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/chunk/Chunk;->e()J

    move-result-wide v1

    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->x:Lcom/google/android/exoplayer/chunk/Chunk;

    iget v3, v0, Lcom/google/android/exoplayer/chunk/Chunk;->b:I

    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->x:Lcom/google/android/exoplayer/chunk/Chunk;

    iget v4, v0, Lcom/google/android/exoplayer/chunk/Chunk;->c:I

    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->x:Lcom/google/android/exoplayer/chunk/Chunk;

    iget-object v5, v0, Lcom/google/android/exoplayer/chunk/Chunk;->d:Lcom/google/android/exoplayer/chunk/Format;

    move-object v0, p0

    move-wide v8, v6

    invoke-direct/range {v0 .. v13}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->a(JIILcom/google/android/exoplayer/chunk/Format;JJJJ)V

    goto :goto_0

    .line 359
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->h()V

    .line 360
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->c:Lcom/google/android/exoplayer/upstream/Allocator;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/upstream/Allocator;->a(I)V

    goto :goto_1
.end method

.method public final a(Lcom/google/android/exoplayer/upstream/Loader$Loadable;Ljava/io/IOException;)V
    .locals 2

    .prologue
    .line 377
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->a:Lcom/google/android/exoplayer/hls/HlsChunkSource;

    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->x:Lcom/google/android/exoplayer/chunk/Chunk;

    invoke-virtual {v0, v1, p2}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->a(Lcom/google/android/exoplayer/chunk/Chunk;Ljava/io/IOException;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    invoke-direct {p0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->i()V

    .line 385
    :goto_0
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->a(Ljava/io/IOException;)V

    .line 386
    invoke-direct {p0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->j()V

    .line 387
    return-void

    .line 381
    :cond_0
    iput-object p2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->A:Ljava/io/IOException;

    .line 382
    iget v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->C:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->C:I

    .line 383
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->D:J

    goto :goto_0
.end method

.method public final a(J)Z
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 129
    iget-boolean v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->l:Z

    if-eqz v0, :cond_0

    move v1, v2

    .line 162
    :goto_0
    return v1

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 134
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;

    .line 135
    invoke-virtual {v0}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->c()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 136
    invoke-virtual {v0}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->b()I

    move-result v3

    iput v3, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->m:I

    .line 137
    iget v3, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->m:I

    new-array v3, v3, [Z

    iput-object v3, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->o:[Z

    .line 138
    iget v3, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->m:I

    new-array v3, v3, [Z

    iput-object v3, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->p:[Z

    .line 139
    iget v3, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->m:I

    new-array v3, v3, [Lcom/google/android/exoplayer/MediaFormat;

    iput-object v3, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->r:[Lcom/google/android/exoplayer/MediaFormat;

    .line 140
    iget v3, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->m:I

    new-array v3, v3, [Lcom/google/android/exoplayer/TrackInfo;

    iput-object v3, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->q:[Lcom/google/android/exoplayer/TrackInfo;

    .line 141
    :goto_1
    iget v3, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->m:I

    if-ge v1, v3, :cond_1

    .line 142
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->b(I)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v3

    .line 143
    iget-object v4, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->q:[Lcom/google/android/exoplayer/TrackInfo;

    new-instance v5, Lcom/google/android/exoplayer/TrackInfo;

    iget-object v3, v3, Lcom/google/android/exoplayer/MediaFormat;->a:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->a:Lcom/google/android/exoplayer/hls/HlsChunkSource;

    invoke-virtual {v6}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->a()J

    move-result-wide v6

    invoke-direct {v5, v3, v6, v7}, Lcom/google/android/exoplayer/TrackInfo;-><init>(Ljava/lang/String;J)V

    aput-object v5, v4, v1

    .line 141
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 145
    :cond_1
    iput-boolean v2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->l:Z

    move v1, v2

    .line 146
    goto :goto_0

    .line 150
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->z:Lcom/google/android/exoplayer/upstream/Loader;

    if-nez v0, :cond_3

    .line 151
    new-instance v0, Lcom/google/android/exoplayer/upstream/Loader;

    const-string v2, "Loader:HLS"

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->z:Lcom/google/android/exoplayer/upstream/Loader;

    .line 153
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->z:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader;->a()Z

    move-result v0

    if-nez v0, :cond_4

    .line 157
    iput-wide p1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->v:J

    .line 158
    iput-wide p1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->t:J

    .line 160
    :cond_4
    invoke-direct {p0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->j()V

    .line 161
    invoke-direct {p0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->g()V

    goto :goto_0
.end method

.method public final b()J
    .locals 4

    .prologue
    .line 317
    iget-boolean v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->l:Z

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 318
    iget v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->n:I

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 319
    invoke-direct {p0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 320
    iget-wide v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->v:J

    .line 325
    :cond_0
    :goto_1
    return-wide v0

    .line 318
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 321
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->y:Z

    if-eqz v0, :cond_3

    .line 322
    const-wide/16 v0, -0x3

    goto :goto_1

    .line 324
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->e()J

    move-result-wide v0

    .line 325
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->t:J

    goto :goto_1
.end method

.method public final b(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 192
    iget-boolean v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->l:Z

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 193
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->o:[Z

    aget-boolean v0, v0, p1

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 194
    iget v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->n:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->n:I

    .line 195
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->o:[Z

    aput-boolean v1, v0, p1

    .line 196
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->p:[Z

    aput-boolean v1, v0, p1

    .line 197
    iget v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->n:I

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->z:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->z:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader;->b()V

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->h()V

    .line 202
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->c:Lcom/google/android/exoplayer/upstream/Allocator;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/upstream/Allocator;->a(I)V

    goto :goto_0
.end method

.method public final b(J)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 209
    iget-boolean v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->l:Z

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 210
    iget v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->n:I

    if-lez v0, :cond_3

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 211
    iput-wide p1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->t:J

    .line 212
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;

    iget-wide v4, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->t:J

    invoke-direct {p0, v0, v4, v5}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->a(Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;J)V

    .line 215
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->y:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    return v2

    :cond_3
    move v0, v2

    .line 210
    goto :goto_0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 332
    iget v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->k:I

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 333
    iget v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->k:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->k:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->z:Lcom/google/android/exoplayer/upstream/Loader;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->z:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader;->c()V

    .line 335
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->z:Lcom/google/android/exoplayer/upstream/Loader;

    .line 337
    :cond_0
    return-void

    .line 332
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(J)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 300
    iget-boolean v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->l:Z

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 301
    iget v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->n:I

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 302
    iput-wide p1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->u:J

    .line 303
    invoke-direct {p0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v4, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->v:J

    :goto_1
    cmp-long v0, v4, p1

    if-nez v0, :cond_2

    .line 313
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 301
    goto :goto_0

    .line 303
    :cond_1
    iget-wide v4, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->t:J

    goto :goto_1

    .line 308
    :cond_2
    iput-wide p1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->t:J

    .line 309
    :goto_3
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->p:[Z

    array-length v0, v0

    if-ge v2, v0, :cond_3

    .line 310
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->p:[Z

    aput-boolean v1, v0, v2

    .line 309
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 312
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->d(J)V

    goto :goto_2
.end method

.method public final cn_()I
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->l:Z

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 168
    iget v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->m:I

    return v0
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->x:Lcom/google/android/exoplayer/chunk/Chunk;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/chunk/Chunk;->e()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->f(J)V

    .line 367
    iget v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->n:I

    if-lez v0, :cond_0

    .line 368
    iget-wide v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->v:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->d(J)V

    .line 373
    :goto_0
    return-void

    .line 370
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->h()V

    .line 371
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->c:Lcom/google/android/exoplayer/upstream/Allocator;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/upstream/Allocator;->a(I)V

    goto :goto_0
.end method
