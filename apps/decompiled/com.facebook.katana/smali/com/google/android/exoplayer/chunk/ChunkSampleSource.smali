.class public Lcom/google/android/exoplayer/chunk/ChunkSampleSource;
.super Ljava/lang/Object;
.source "ChunkSampleSource.java"

# interfaces
.implements Lcom/google/android/exoplayer/SampleSource;
.implements Lcom/google/android/exoplayer/upstream/Loader$Callback;


# instance fields
.field private A:Lcom/google/android/exoplayer/chunk/Format;

.field private final a:I

.field private final b:Lcom/google/android/exoplayer/LoadControl;

.field private final c:Lcom/google/android/exoplayer/chunk/ChunkSource;

.field private final d:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

.field private final e:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/exoplayer/chunk/BaseMediaChunk;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/chunk/BaseMediaChunk;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

.field private final h:I

.field private final i:Z

.field private final j:Landroid/os/Handler;

.field private final k:Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;

.field private final l:I

.field private m:I

.field private n:J

.field private o:J

.field private p:J

.field private q:J

.field private r:Z

.field private s:Lcom/google/android/exoplayer/upstream/Loader;

.field private t:Z

.field private u:Ljava/io/IOException;

.field private v:Z

.field private w:I

.field private x:J

.field private y:J

.field private z:Lcom/google/android/exoplayer/MediaFormat;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/chunk/ChunkSource;Lcom/google/android/exoplayer/LoadControl;I)V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;-><init>(Lcom/google/android/exoplayer/chunk/ChunkSource;Lcom/google/android/exoplayer/LoadControl;IZ)V

    .line 95
    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer/chunk/ChunkSource;Lcom/google/android/exoplayer/LoadControl;IZ)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 100
    const/4 v4, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, v5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;-><init>(Lcom/google/android/exoplayer/chunk/ChunkSource;Lcom/google/android/exoplayer/LoadControl;IZLandroid/os/Handler;Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;I)V

    .line 102
    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer/chunk/ChunkSource;Lcom/google/android/exoplayer/LoadControl;IZLandroid/os/Handler;Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;I)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->c:Lcom/google/android/exoplayer/chunk/ChunkSource;

    .line 108
    iput-object p2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->b:Lcom/google/android/exoplayer/LoadControl;

    .line 109
    iput p3, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->h:I

    .line 110
    iput-boolean p4, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->i:Z

    .line 111
    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->j:Landroid/os/Handler;

    .line 112
    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->k:Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;

    .line 113
    iput v2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->a:I

    .line 114
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->l:I

    .line 115
    new-instance v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    invoke-direct {v0}, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->d:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    .line 116
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->e:Ljava/util/LinkedList;

    .line 117
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->e:Ljava/util/LinkedList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->f:Ljava/util/List;

    .line 118
    new-instance v0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-interface {p2}, Lcom/google/android/exoplayer/LoadControl;->b()Lcom/google/android/exoplayer/upstream/Allocator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;-><init>(Lcom/google/android/exoplayer/upstream/Allocator;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->g:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    .line 119
    iput v2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->m:I

    .line 120
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->p:J

    .line 121
    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer/chunk/ChunkSampleSource;)I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->a:I

    return v0
.end method

.method private a(JIILcom/google/android/exoplayer/chunk/Format;JJ)V
    .locals 12

    .prologue
    .line 585
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->j:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->k:Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->j:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$1;

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    invoke-direct/range {v1 .. v11}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$1;-><init>(Lcom/google/android/exoplayer/chunk/ChunkSampleSource;JIILcom/google/android/exoplayer/chunk/Format;JJ)V

    const v2, -0x1a0382c4

    invoke-static {v0, v1, v2}, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->a(Landroid/os/Handler;Ljava/lang/Runnable;I)Z

    .line 594
    :cond_0
    return-void
.end method

.method private a(JIILcom/google/android/exoplayer/chunk/Format;JJJJ)V
    .locals 18

    .prologue
    .line 599
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->j:Landroid/os/Handler;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->k:Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;

    if-eqz v2, :cond_0

    .line 600
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->j:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$2;

    move-object/from16 v4, p0

    move-wide/from16 v5, p1

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    move-wide/from16 v14, p10

    move-wide/from16 v16, p12

    invoke-direct/range {v3 .. v17}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$2;-><init>(Lcom/google/android/exoplayer/chunk/ChunkSampleSource;JIILcom/google/android/exoplayer/chunk/Format;JJJJ)V

    const v4, 0x6a95e97

    invoke-static {v2, v3, v4}, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->a(Landroid/os/Handler;Ljava/lang/Runnable;I)Z

    .line 608
    :cond_0
    return-void
.end method

.method private a(JJ)V
    .locals 7

    .prologue
    .line 633
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->j:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->k:Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;

    if-eqz v0, :cond_0

    .line 634
    iget-object v6, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->j:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$5;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$5;-><init>(Lcom/google/android/exoplayer/chunk/ChunkSampleSource;JJ)V

    const v1, -0x3b3fe343

    invoke-static {v6, v0, v1}, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->a(Landroid/os/Handler;Ljava/lang/Runnable;I)Z

    .line 642
    :cond_0
    return-void
.end method

.method private a(Lcom/google/android/exoplayer/chunk/Format;IJ)V
    .locals 7

    .prologue
    .line 646
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->j:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->k:Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;

    if-eqz v0, :cond_0

    .line 647
    iget-object v6, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->j:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$6;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$6;-><init>(Lcom/google/android/exoplayer/chunk/ChunkSampleSource;Lcom/google/android/exoplayer/chunk/Format;IJ)V

    const v1, -0x4e14efa8

    invoke-static {v6, v0, v1}, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->a(Landroid/os/Handler;Ljava/lang/Runnable;I)Z

    .line 655
    :cond_0
    return-void
.end method

.method private a(Ljava/io/IOException;)V
    .locals 3

    .prologue
    .line 622
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->j:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->k:Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->j:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$4;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$4;-><init>(Lcom/google/android/exoplayer/chunk/ChunkSampleSource;Ljava/io/IOException;)V

    const v2, 0x1aa72c7c

    invoke-static {v0, v1, v2}, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->a(Landroid/os/Handler;Ljava/lang/Runnable;I)Z

    .line 630
    :cond_0
    return-void
.end method

.method private static a(Lcom/google/android/exoplayer/chunk/Chunk;)Z
    .locals 1

    .prologue
    .line 568
    instance-of v0, p0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;

    return v0
.end method

.method static synthetic b(Lcom/google/android/exoplayer/chunk/ChunkSampleSource;)Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->k:Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;

    return-object v0
.end method

.method private c(I)Z
    .locals 6

    .prologue
    .line 550
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    .line 551
    const/4 v0, 0x0

    .line 564
    :goto_0
    return v0

    .line 553
    :cond_0
    const-wide/16 v2, 0x0

    .line 554
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;

    iget-wide v4, v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->h:J

    .line 556
    const/4 v0, 0x0

    .line 557
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->e:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-le v1, p1, :cond_1

    .line 558
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;

    .line 559
    iget-wide v2, v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->g:J

    goto :goto_1

    .line 561
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->g:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->a()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->a(I)V

    .line 563
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->a(JJ)V

    .line 564
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private d(J)V
    .locals 1

    .prologue
    .line 377
    iput-wide p1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->p:J

    .line 378
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->t:Z

    .line 379
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->s:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->s:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader;->b()V

    .line 387
    :goto_0
    return-void

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->g:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->a()V

    .line 383
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 384
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->f()V

    .line 385
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->h()V

    goto :goto_0
.end method

.method private static e(J)J
    .locals 4

    .prologue
    .line 576
    const-wide/16 v0, 0x1

    sub-long v0, p0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->u:Ljava/io/IOException;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->v:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->w:I

    iget v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->l:I

    if-le v0, v1, :cond_1

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->u:Ljava/io/IOException;

    throw v0

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->g:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->d:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->b:Lcom/google/android/exoplayer/chunk/Chunk;

    if-nez v0, :cond_2

    .line 290
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->c:Lcom/google/android/exoplayer/chunk/ChunkSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer/chunk/ChunkSource;->e()Ljava/io/IOException;

    move-result-object v0

    .line 291
    if-eqz v0, :cond_2

    .line 292
    throw v0

    .line 295
    :cond_2
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 390
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->d:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->b:Lcom/google/android/exoplayer/chunk/Chunk;

    .line 391
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->g()V

    .line 392
    return-void
.end method

.method private f(J)V
    .locals 3

    .prologue
    .line 611
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->j:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->k:Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->j:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$3;-><init>(Lcom/google/android/exoplayer/chunk/ChunkSampleSource;J)V

    const v2, -0x1705f2a7

    invoke-static {v0, v1, v2}, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->a(Landroid/os/Handler;Ljava/lang/Runnable;I)Z

    .line 619
    :cond_0
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 395
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->u:Ljava/io/IOException;

    .line 396
    iput v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->w:I

    .line 397
    iput-boolean v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->v:Z

    .line 398
    return-void
.end method

.method private h()V
    .locals 14

    .prologue
    .line 401
    iget-boolean v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->v:Z

    if-eqz v0, :cond_1

    .line 403
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->b:Lcom/google/android/exoplayer/LoadControl;

    iget-wide v2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->n:J

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    invoke-interface/range {v0 .. v7}, Lcom/google/android/exoplayer/LoadControl;->a(Ljava/lang/Object;JJZZ)Z

    .line 447
    :cond_0
    :goto_0
    return-void

    .line 407
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 408
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->i()J

    move-result-wide v4

    .line 409
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->u:Ljava/io/IOException;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    move v8, v0

    .line 410
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->s:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader;->a()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v8, :cond_7

    :cond_2
    const/4 v6, 0x1

    .line 414
    :goto_2
    if-nez v6, :cond_5

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->d:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->b:Lcom/google/android/exoplayer/chunk/Chunk;

    if-nez v0, :cond_3

    const-wide/16 v0, -0x1

    cmp-long v0, v4, v0

    if-nez v0, :cond_4

    :cond_3
    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->q:J

    sub-long v0, v10, v0

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    .line 417
    :cond_4
    iput-wide v10, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->q:J

    .line 418
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->d:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->a:I

    .line 419
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->c:Lcom/google/android/exoplayer/chunk/ChunkSource;

    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->f:Ljava/util/List;

    iget-wide v2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->p:J

    iget-wide v12, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->n:J

    iget-object v7, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->d:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    invoke-interface {v0, v1, v2, v3, v7}, Lcom/google/android/exoplayer/chunk/ChunkSource;->a(Ljava/util/List;JLcom/google/android/exoplayer/chunk/ChunkOperationHolder;)V

    .line 421
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->d:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget v0, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->a:I

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->c(I)Z

    move-result v0

    .line 423
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->d:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget-object v1, v1, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->b:Lcom/google/android/exoplayer/chunk/Chunk;

    if-nez v1, :cond_8

    .line 425
    const-wide/16 v4, -0x1

    .line 433
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->b:Lcom/google/android/exoplayer/LoadControl;

    iget-wide v2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->n:J

    const/4 v7, 0x0

    move-object v1, p0

    invoke-interface/range {v0 .. v7}, Lcom/google/android/exoplayer/LoadControl;->a(Ljava/lang/Object;JJZZ)Z

    move-result v0

    .line 436
    if-eqz v8, :cond_9

    .line 437
    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->x:J

    sub-long v0, v10, v0

    .line 438
    iget v2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->w:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->e(J)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 439
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->j()V

    goto :goto_0

    .line 409
    :cond_6
    const/4 v0, 0x0

    move v8, v0

    goto :goto_1

    .line 410
    :cond_7
    const/4 v6, 0x0

    goto :goto_2

    .line 426
    :cond_8
    if-eqz v0, :cond_5

    .line 428
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->i()J

    move-result-wide v4

    goto :goto_3

    .line 444
    :cond_9
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->s:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/upstream/Loader;->a()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 445
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->k()V

    goto/16 :goto_0
.end method

.method private i()J
    .locals 2

    .prologue
    .line 454
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->p:J

    .line 458
    :goto_0
    return-wide v0

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;

    .line 458
    iget-boolean v1, v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->j:Z

    if-eqz v1, :cond_1

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_1
    iget-wide v0, v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->h:J

    goto :goto_0
.end method

.method private j()V
    .locals 8

    .prologue
    .line 470
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->u:Ljava/io/IOException;

    .line 472
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->d:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget-object v2, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->b:Lcom/google/android/exoplayer/chunk/Chunk;

    .line 473
    invoke-static {v2}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->a(Lcom/google/android/exoplayer/chunk/Chunk;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 474
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->d:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->a:I

    .line 475
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->c:Lcom/google/android/exoplayer/chunk/ChunkSource;

    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->f:Ljava/util/List;

    iget-wide v4, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->p:J

    iget-wide v6, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->n:J

    iget-object v3, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->d:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    invoke-interface {v0, v1, v4, v5, v3}, Lcom/google/android/exoplayer/chunk/ChunkSource;->a(Ljava/util/List;JLcom/google/android/exoplayer/chunk/ChunkOperationHolder;)V

    .line 477
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->d:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget v0, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->a:I

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->c(I)Z

    .line 478
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->d:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->b:Lcom/google/android/exoplayer/chunk/Chunk;

    if-ne v0, v2, :cond_0

    .line 480
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->s:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0, v2, p0}, Lcom/google/android/exoplayer/upstream/Loader;->a(Lcom/google/android/exoplayer/upstream/Loader$Loadable;Lcom/google/android/exoplayer/upstream/Loader$Callback;)V

    .line 518
    :goto_0
    return-void

    .line 483
    :cond_0
    invoke-virtual {v2}, Lcom/google/android/exoplayer/chunk/Chunk;->e()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->f(J)V

    .line 485
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->k()V

    goto :goto_0

    .line 490
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    if-ne v2, v0, :cond_2

    .line 493
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->s:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0, v2, p0}, Lcom/google/android/exoplayer/upstream/Loader;->a(Lcom/google/android/exoplayer/upstream/Loader$Loadable;Lcom/google/android/exoplayer/upstream/Loader$Callback;)V

    goto :goto_0

    .line 499
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;

    .line 500
    if-ne v2, v0, :cond_3

    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 501
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->d:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget-object v3, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iput v3, v1, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->a:I

    .line 502
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->c:Lcom/google/android/exoplayer/chunk/ChunkSource;

    iget-object v3, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->f:Ljava/util/List;

    iget-wide v4, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->p:J

    iget-wide v6, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->n:J

    iget-object v6, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->d:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    invoke-interface {v1, v3, v4, v5, v6}, Lcom/google/android/exoplayer/chunk/ChunkSource;->a(Ljava/util/List;JLcom/google/android/exoplayer/chunk/ChunkOperationHolder;)V

    .line 504
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->e:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 506
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->d:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->b:Lcom/google/android/exoplayer/chunk/Chunk;

    if-ne v0, v2, :cond_4

    .line 508
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->s:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0, v2, p0}, Lcom/google/android/exoplayer/upstream/Loader;->a(Lcom/google/android/exoplayer/upstream/Loader$Loadable;Lcom/google/android/exoplayer/upstream/Loader$Callback;)V

    goto :goto_0

    .line 500
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 511
    :cond_4
    invoke-virtual {v2}, Lcom/google/android/exoplayer/chunk/Chunk;->e()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->f(J)V

    .line 514
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->d:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget v0, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->a:I

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->c(I)Z

    .line 515
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->g()V

    .line 516
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->k()V

    goto :goto_0
.end method

.method private k()V
    .locals 11

    .prologue
    const-wide/16 v6, -0x1

    .line 521
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->d:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget-object v10, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->b:Lcom/google/android/exoplayer/chunk/Chunk;

    .line 522
    if-nez v10, :cond_0

    .line 541
    :goto_0
    return-void

    .line 526
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->y:J

    .line 527
    invoke-static {v10}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->a(Lcom/google/android/exoplayer/chunk/Chunk;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v10

    .line 528
    check-cast v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;

    .line 529
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->g:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->a(Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;)V

    .line 530
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->e:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 531
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 532
    iput-wide v6, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->p:J

    .line 534
    :cond_1
    iget-object v1, v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->e:Lcom/google/android/exoplayer/upstream/DataSpec;

    iget-wide v1, v1, Lcom/google/android/exoplayer/upstream/DataSpec;->d:J

    iget v3, v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->b:I

    iget v4, v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->c:I

    iget-object v5, v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->d:Lcom/google/android/exoplayer/chunk/Format;

    iget-wide v6, v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->g:J

    iget-wide v8, v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->h:J

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->a(JIILcom/google/android/exoplayer/chunk/Format;JJ)V

    .line 540
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->s:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0, v10, p0}, Lcom/google/android/exoplayer/upstream/Loader;->a(Lcom/google/android/exoplayer/upstream/Loader$Loadable;Lcom/google/android/exoplayer/upstream/Loader$Callback;)V

    goto :goto_0

    .line 537
    :cond_2
    iget-object v0, v10, Lcom/google/android/exoplayer/chunk/Chunk;->e:Lcom/google/android/exoplayer/upstream/DataSpec;

    iget-wide v1, v0, Lcom/google/android/exoplayer/upstream/DataSpec;->d:J

    iget v3, v10, Lcom/google/android/exoplayer/chunk/Chunk;->b:I

    iget v4, v10, Lcom/google/android/exoplayer/chunk/Chunk;->c:I

    iget-object v5, v10, Lcom/google/android/exoplayer/chunk/Chunk;->d:Lcom/google/android/exoplayer/chunk/Format;

    move-object v0, p0

    move-wide v8, v6

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->a(JIILcom/google/android/exoplayer/chunk/Format;JJ)V

    goto :goto_1
.end method

.method private l()Z
    .locals 4

    .prologue
    .line 572
    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->p:J

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
    .line 196
    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->m:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 197
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 198
    iput-wide p2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->n:J

    .line 200
    iget-boolean v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->r:Z

    if-eqz v0, :cond_2

    .line 201
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->r:Z

    .line 202
    const/4 v0, -0x5

    .line 255
    :goto_2
    return v0

    .line 196
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 197
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 205
    :cond_2
    if-eqz p6, :cond_3

    .line 206
    const/4 v0, -0x2

    goto :goto_2

    .line 209
    :cond_3
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->l()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 210
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->e()V

    .line 211
    const/4 v0, -0x2

    goto :goto_2

    .line 214
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->g:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->g()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    move v1, v0

    .line 215
    :goto_3
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;

    move-object v2, v0

    .line 217
    :goto_4
    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_6

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->e:Ljava/util/LinkedList;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->a()I

    move-result v0

    iget-object v3, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->g:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v3}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->c()I

    move-result v3

    if-ne v0, v3, :cond_6

    .line 218
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 219
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;

    move-object v2, v0

    goto :goto_4

    .line 214
    :cond_5
    const/4 v0, 0x0

    move v1, v0

    goto :goto_3

    .line 222
    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->A:Lcom/google/android/exoplayer/chunk/Format;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->A:Lcom/google/android/exoplayer/chunk/Format;

    iget-object v3, v2, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->d:Lcom/google/android/exoplayer/chunk/Format;

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer/chunk/Format;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 223
    :cond_7
    iget-object v0, v2, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->d:Lcom/google/android/exoplayer/chunk/Format;

    iget v3, v2, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->c:I

    iget-wide v4, v2, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->g:J

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->a(Lcom/google/android/exoplayer/chunk/Format;IJ)V

    .line 225
    iget-object v0, v2, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->d:Lcom/google/android/exoplayer/chunk/Format;

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->A:Lcom/google/android/exoplayer/chunk/Format;

    .line 228
    :cond_8
    if-nez v1, :cond_9

    iget-boolean v0, v2, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->a:Z

    if-eqz v0, :cond_a

    .line 229
    :cond_9
    invoke-virtual {v2}, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->b()Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    .line 230
    if-eqz v0, :cond_a

    iget-object v3, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->z:Lcom/google/android/exoplayer/MediaFormat;

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer/MediaFormat;->a(Lcom/google/android/exoplayer/MediaFormat;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 231
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->c:Lcom/google/android/exoplayer/chunk/ChunkSource;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer/chunk/ChunkSource;->a(Lcom/google/android/exoplayer/MediaFormat;)V

    .line 232
    iput-object v0, p4, Lcom/google/android/exoplayer/MediaFormatHolder;->a:Lcom/google/android/exoplayer/MediaFormat;

    .line 233
    invoke-virtual {v2}, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->c()Lcom/google/android/exoplayer/drm/DrmInitData;

    move-result-object v1

    iput-object v1, p4, Lcom/google/android/exoplayer/MediaFormatHolder;->b:Lcom/google/android/exoplayer/drm/DrmInitData;

    .line 234
    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->z:Lcom/google/android/exoplayer/MediaFormat;

    .line 235
    const/4 v0, -0x4

    goto/16 :goto_2

    .line 239
    :cond_a
    if-nez v1, :cond_c

    .line 240
    iget-boolean v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->t:Z

    if-eqz v0, :cond_b

    .line 241
    const/4 v0, -0x1

    goto/16 :goto_2

    .line 243
    :cond_b
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->e()V

    .line 244
    const/4 v0, -0x2

    goto/16 :goto_2

    .line 247
    :cond_c
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->g:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v0, p5}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->a(Lcom/google/android/exoplayer/SampleHolder;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 248
    iget-boolean v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->i:Z

    if-eqz v0, :cond_d

    iget-wide v0, p5, Lcom/google/android/exoplayer/SampleHolder;->e:J

    iget-wide v2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->o:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_d

    const/4 v0, 0x1

    .line 249
    :goto_5
    iget v1, p5, Lcom/google/android/exoplayer/SampleHolder;->d:I

    if-eqz v0, :cond_e

    const/high16 v0, 0x8000000

    :goto_6
    or-int/2addr v0, v1

    iput v0, p5, Lcom/google/android/exoplayer/SampleHolder;->d:I

    .line 250
    const/4 v0, -0x3

    goto/16 :goto_2

    .line 248
    :cond_d
    const/4 v0, 0x0

    goto :goto_5

    .line 249
    :cond_e
    const/4 v0, 0x0

    goto :goto_6

    .line 254
    :cond_f
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->e()V

    .line 255
    const/4 v0, -0x2

    goto/16 :goto_2
.end method

.method public final a(I)Lcom/google/android/exoplayer/TrackInfo;
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 139
    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->m:I

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 140
    if-nez p1, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 141
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->c:Lcom/google/android/exoplayer/chunk/ChunkSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer/chunk/ChunkSource;->a()Lcom/google/android/exoplayer/TrackInfo;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    .line 139
    goto :goto_0

    :cond_1
    move v1, v2

    .line 140
    goto :goto_1
.end method

.method public final a(IJ)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 146
    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->m:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 147
    if-nez p1, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 148
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->m:I

    .line 149
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->c:Lcom/google/android/exoplayer/chunk/ChunkSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer/chunk/ChunkSource;->b()V

    .line 150
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->b:Lcom/google/android/exoplayer/LoadControl;

    iget v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->h:I

    invoke-interface {v0, p0, v1}, Lcom/google/android/exoplayer/LoadControl;->a(Ljava/lang/Object;I)V

    .line 151
    iput-object v3, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->A:Lcom/google/android/exoplayer/chunk/Format;

    .line 152
    iput-object v3, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->z:Lcom/google/android/exoplayer/MediaFormat;

    .line 153
    iput-wide p2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->n:J

    .line 154
    iput-wide p2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->o:J

    .line 155
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->d(J)V

    .line 156
    return-void

    :cond_0
    move v0, v2

    .line 146
    goto :goto_0

    :cond_1
    move v1, v2

    .line 147
    goto :goto_1
.end method

.method public final a(Lcom/google/android/exoplayer/upstream/Loader$Loadable;)V
    .locals 15

    .prologue
    .line 323
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 324
    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->y:J

    sub-long v12, v10, v0

    .line 325
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->d:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget-object v14, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->b:Lcom/google/android/exoplayer/chunk/Chunk;

    .line 326
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->c:Lcom/google/android/exoplayer/chunk/ChunkSource;

    invoke-interface {v0, v14}, Lcom/google/android/exoplayer/chunk/ChunkSource;->a(Lcom/google/android/exoplayer/chunk/Chunk;)V

    .line 327
    invoke-static {v14}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->a(Lcom/google/android/exoplayer/chunk/Chunk;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v14

    .line 328
    check-cast v0, Lcom/google/android/exoplayer/chunk/MediaChunk;

    .line 329
    invoke-virtual {v14}, Lcom/google/android/exoplayer/chunk/Chunk;->e()J

    move-result-wide v1

    iget v3, v0, Lcom/google/android/exoplayer/chunk/MediaChunk;->b:I

    iget v4, v0, Lcom/google/android/exoplayer/chunk/MediaChunk;->c:I

    iget-object v5, v0, Lcom/google/android/exoplayer/chunk/MediaChunk;->d:Lcom/google/android/exoplayer/chunk/Format;

    iget-wide v6, v0, Lcom/google/android/exoplayer/chunk/MediaChunk;->g:J

    iget-wide v8, v0, Lcom/google/android/exoplayer/chunk/MediaChunk;->h:J

    move-object v0, p0

    invoke-direct/range {v0 .. v13}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->a(JIILcom/google/android/exoplayer/chunk/Format;JJJJ)V

    .line 331
    check-cast v14, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;

    iget-boolean v0, v14, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->j:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->t:Z

    .line 336
    :goto_0
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->f()V

    .line 337
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->h()V

    .line 338
    return-void

    .line 333
    :cond_0
    invoke-virtual {v14}, Lcom/google/android/exoplayer/chunk/Chunk;->e()J

    move-result-wide v1

    iget v3, v14, Lcom/google/android/exoplayer/chunk/Chunk;->b:I

    iget v4, v14, Lcom/google/android/exoplayer/chunk/Chunk;->c:I

    iget-object v5, v14, Lcom/google/android/exoplayer/chunk/Chunk;->d:Lcom/google/android/exoplayer/chunk/Format;

    const-wide/16 v6, -0x1

    const-wide/16 v8, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v13}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->a(JIILcom/google/android/exoplayer/chunk/Format;JJJJ)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/exoplayer/upstream/Loader$Loadable;Ljava/io/IOException;)V
    .locals 2

    .prologue
    .line 357
    iput-object p2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->u:Ljava/io/IOException;

    .line 358
    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->w:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->w:I

    .line 359
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->x:J

    .line 360
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->a(Ljava/io/IOException;)V

    .line 361
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->c:Lcom/google/android/exoplayer/chunk/ChunkSource;

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->d:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->b:Lcom/google/android/exoplayer/chunk/Chunk;

    .line 362
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->h()V

    .line 363
    return-void
.end method

.method public final a(J)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 125
    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->m:I

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 126
    new-instance v0, Lcom/google/android/exoplayer/upstream/Loader;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Loader:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->c:Lcom/google/android/exoplayer/chunk/ChunkSource;

    invoke-interface {v3}, Lcom/google/android/exoplayer/chunk/ChunkSource;->a()Lcom/google/android/exoplayer/TrackInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/exoplayer/TrackInfo;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->s:Lcom/google/android/exoplayer/upstream/Loader;

    .line 127
    iput v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->m:I

    .line 128
    return v1

    .line 125
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()J
    .locals 4

    .prologue
    .line 299
    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->m:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 300
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 301
    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->p:J

    .line 306
    :cond_0
    :goto_1
    return-wide v0

    .line 299
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 302
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->t:Z

    if-eqz v0, :cond_3

    .line 303
    const-wide/16 v0, -0x3

    goto :goto_1

    .line 305
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->g:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->f()J

    move-result-wide v0

    .line 306
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->n:J

    goto :goto_1
.end method

.method public final b(I)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 160
    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->m:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 161
    if-nez p1, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 162
    iput-boolean v2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->r:Z

    .line 163
    iput v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->m:I

    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->c:Lcom/google/android/exoplayer/chunk/ChunkSource;

    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->e:Ljava/util/LinkedList;

    invoke-interface {v0}, Lcom/google/android/exoplayer/chunk/ChunkSource;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->b:Lcom/google/android/exoplayer/LoadControl;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer/LoadControl;->a(Ljava/lang/Object;)V

    .line 168
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->s:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 169
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->s:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader;->b()V

    .line 176
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 160
    goto :goto_0

    :cond_1
    move v0, v2

    .line 161
    goto :goto_1

    .line 171
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->g:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->a()V

    .line 172
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 173
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->f()V

    .line 174
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->b:Lcom/google/android/exoplayer/LoadControl;

    invoke-interface {v0}, Lcom/google/android/exoplayer/LoadControl;->a()V

    goto :goto_2

    .line 167
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->b:Lcom/google/android/exoplayer/LoadControl;

    invoke-interface {v1, p0}, Lcom/google/android/exoplayer/LoadControl;->a(Ljava/lang/Object;)V

    .line 168
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->s:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/upstream/Loader;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 169
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->s:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/upstream/Loader;->b()V

    .line 174
    :goto_3
    throw v0

    .line 171
    :cond_3
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->g:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->a()V

    .line 172
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->e:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 173
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->f()V

    .line 174
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->b:Lcom/google/android/exoplayer/LoadControl;

    invoke-interface {v1}, Lcom/google/android/exoplayer/LoadControl;->a()V

    goto :goto_3
.end method

.method public final b(J)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 181
    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->m:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 182
    iput-wide p1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->n:J

    .line 183
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->c:Lcom/google/android/exoplayer/chunk/ChunkSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer/chunk/ChunkSource;->d()V

    .line 184
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->h()V

    .line 186
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->g:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->g()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 187
    :goto_1
    if-nez v0, :cond_0

    .line 188
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->e()V

    .line 190
    :cond_0
    iget-boolean v3, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->t:Z

    if-nez v3, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    return v2

    :cond_3
    move v0, v2

    .line 181
    goto :goto_0

    :cond_4
    move v0, v2

    .line 186
    goto :goto_1
.end method

.method public final c()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 313
    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->m:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 314
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->s:Lcom/google/android/exoplayer/upstream/Loader;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->s:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader;->c()V

    .line 316
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->s:Lcom/google/android/exoplayer/upstream/Loader;

    .line 318
    :cond_0
    iput v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->m:I

    .line 319
    return-void

    :cond_1
    move v0, v1

    .line 313
    goto :goto_0
.end method

.method public final c(J)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 260
    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->m:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 261
    iput-wide p1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->o:J

    .line 262
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v4, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->p:J

    :goto_1
    cmp-long v0, v4, p1

    if-nez v0, :cond_2

    .line 282
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 260
    goto :goto_0

    .line 262
    :cond_1
    iget-wide v4, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->n:J

    goto :goto_1

    .line 266
    :cond_2
    iput-wide p1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->n:J

    .line 268
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->l()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->g:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->b(J)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 269
    :goto_3
    if-eqz v0, :cond_5

    .line 271
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->g:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->g()Z

    move-result v0

    if-nez v0, :cond_3

    move v2, v1

    .line 273
    :cond_3
    :goto_4
    if-eqz v2, :cond_6

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->e:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->a()I

    move-result v0

    iget-object v3, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->g:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v3}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->c()I

    move-result v3

    if-gt v0, v3, :cond_6

    .line 274
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_4

    :cond_4
    move v0, v2

    .line 268
    goto :goto_3

    .line 278
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->d(J)V

    .line 281
    :cond_6
    iput-boolean v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->r:Z

    goto :goto_2
.end method

.method public final cn_()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 133
    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->m:I

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 134
    return v1

    .line 133
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->d:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->b:Lcom/google/android/exoplayer/chunk/Chunk;

    .line 343
    invoke-virtual {v0}, Lcom/google/android/exoplayer/chunk/Chunk;->e()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->f(J)V

    .line 344
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->f()V

    .line 345
    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->m:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 346
    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->p:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->d(J)V

    .line 353
    :goto_0
    return-void

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->g:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->a()V

    .line 349
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 350
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->f()V

    .line 351
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->b:Lcom/google/android/exoplayer/LoadControl;

    invoke-interface {v0}, Lcom/google/android/exoplayer/LoadControl;->a()V

    goto :goto_0
.end method
