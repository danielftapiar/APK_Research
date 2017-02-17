.class public abstract Lcom/google/android/exoplayer/MediaCodecTrackRenderer;
.super Lcom/google/android/exoplayer/TrackRenderer;
.source "MediaCodecTrackRenderer.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:J

.field private final a:Lcom/google/android/exoplayer/drm/DrmSessionManager;

.field public final b:Lcom/google/android/exoplayer/CodecCounters;

.field protected final c:Landroid/os/Handler;

.field private final d:Z

.field private final e:Lcom/google/android/exoplayer/SampleSource;

.field private final f:Lcom/google/android/exoplayer/SampleHolder;

.field private final g:Lcom/google/android/exoplayer/MediaFormatHolder;

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Landroid/media/MediaCodec$BufferInfo;

.field private final j:Lcom/google/android/exoplayer/MediaCodecTrackRenderer$EventListener;

.field private k:Lcom/google/android/exoplayer/MediaFormat;

.field private l:Lcom/google/android/exoplayer/drm/DrmInitData;

.field private m:Landroid/media/MediaCodec;

.field private n:Z

.field private o:[Ljava/nio/ByteBuffer;

.field private p:[Ljava/nio/ByteBuffer;

.field private q:J

.field private r:I

.field private s:I

.field private t:Z

.field private u:Z

.field private v:I

.field private w:I

.field private x:Z

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecTrackRenderer$EventListener;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 229
    invoke-direct {p0}, Lcom/google/android/exoplayer/TrackRenderer;-><init>()V

    .line 230
    sget v0, Lcom/google/android/exoplayer/util/Util;->a:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 231
    iput-object p1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->e:Lcom/google/android/exoplayer/SampleSource;

    .line 232
    iput-object p2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->a:Lcom/google/android/exoplayer/drm/DrmSessionManager;

    .line 233
    iput-boolean p3, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->d:Z

    .line 234
    iput-object p4, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->c:Landroid/os/Handler;

    .line 235
    iput-object p5, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->j:Lcom/google/android/exoplayer/MediaCodecTrackRenderer$EventListener;

    .line 236
    new-instance v0, Lcom/google/android/exoplayer/CodecCounters;

    invoke-direct {v0}, Lcom/google/android/exoplayer/CodecCounters;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->b:Lcom/google/android/exoplayer/CodecCounters;

    .line 237
    new-instance v0, Lcom/google/android/exoplayer/SampleHolder;

    invoke-direct {v0}, Lcom/google/android/exoplayer/SampleHolder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->f:Lcom/google/android/exoplayer/SampleHolder;

    .line 238
    new-instance v0, Lcom/google/android/exoplayer/MediaFormatHolder;

    invoke-direct {v0}, Lcom/google/android/exoplayer/MediaFormatHolder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->g:Lcom/google/android/exoplayer/MediaFormatHolder;

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->h:Ljava/util/List;

    .line 240
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->i:Landroid/media/MediaCodec$BufferInfo;

    .line 241
    iput v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->v:I

    .line 242
    iput v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->w:I

    .line 243
    return-void

    :cond_0
    move v0, v1

    .line 230
    goto :goto_0
.end method

.method private static a(Lcom/google/android/exoplayer/SampleHolder;I)Landroid/media/MediaCodec$CryptoInfo;
    .locals 4

    .prologue
    .line 686
    iget-object v0, p0, Lcom/google/android/exoplayer/SampleHolder;->a:Lcom/google/android/exoplayer/CryptoInfo;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/CryptoInfo;->a()Landroid/media/MediaCodec$CryptoInfo;

    move-result-object v0

    .line 687
    if-nez p1, :cond_0

    .line 697
    :goto_0
    return-object v0

    .line 693
    :cond_0
    iget-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    if-nez v1, :cond_1

    .line 694
    const/4 v1, 0x1

    new-array v1, v1, [I

    iput-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 696
    :cond_1
    iget-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    add-int/2addr v3, p1

    aput v3, v1, v2

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/exoplayer/MediaCodecTrackRenderer;)Lcom/google/android/exoplayer/MediaCodecTrackRenderer$EventListener;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->j:Lcom/google/android/exoplayer/MediaCodecTrackRenderer$EventListener;

    return-object v0
.end method

.method private a(Landroid/media/MediaCodec$CryptoException;)V
    .locals 3

    .prologue
    .line 883
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->j:Lcom/google/android/exoplayer/MediaCodecTrackRenderer$EventListener;

    if-eqz v0, :cond_0

    .line 884
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->c:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$2;-><init>(Lcom/google/android/exoplayer/MediaCodecTrackRenderer;Landroid/media/MediaCodec$CryptoException;)V

    const v2, -0x1db44a16

    invoke-static {v0, v1, v2}, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->a(Landroid/os/Handler;Ljava/lang/Runnable;I)Z

    .line 891
    :cond_0
    return-void
.end method

.method private a(Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;)V
    .locals 1

    .prologue
    .line 386
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->b(Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;)V

    .line 387
    new-instance v0, Lcom/google/android/exoplayer/ExoPlaybackException;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private a(Ljava/lang/String;JJ)V
    .locals 8

    .prologue
    .line 895
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->j:Lcom/google/android/exoplayer/MediaCodecTrackRenderer$EventListener;

    if-eqz v0, :cond_0

    .line 896
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->c:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$3;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$3;-><init>(Lcom/google/android/exoplayer/MediaCodecTrackRenderer;Ljava/lang/String;JJ)V

    const v2, 0x3450e52b

    invoke-static {v0, v1, v2}, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->a(Landroid/os/Handler;Ljava/lang/Runnable;I)Z

    .line 904
    :cond_0
    return-void
.end method

.method private a(Z)Z
    .locals 14

    .prologue
    const-wide/16 v4, 0x0

    const/4 v13, -0x1

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 561
    iget-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->A:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->w:I

    if-ne v0, v12, :cond_1

    .line 681
    :cond_0
    :goto_0
    return v2

    .line 568
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->r:I

    if-gez v0, :cond_2

    .line 569
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->m:Landroid/media/MediaCodec;

    invoke-virtual {v0, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->r:I

    .line 570
    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->r:I

    if-ltz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->f:Lcom/google/android/exoplayer/SampleHolder;

    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->o:[Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->r:I

    aget-object v1, v1, v3

    iput-object v1, v0, Lcom/google/android/exoplayer/SampleHolder;->b:Ljava/nio/ByteBuffer;

    .line 574
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->f:Lcom/google/android/exoplayer/SampleHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer/SampleHolder;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 577
    :cond_2
    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->w:I

    if-ne v0, v11, :cond_3

    .line 580
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->m:Landroid/media/MediaCodec;

    iget v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->r:I

    const/4 v6, 0x4

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 581
    iput v13, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->r:I

    .line 582
    iput v12, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->w:I

    goto :goto_0

    .line 587
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->C:Z

    if-eqz v0, :cond_5

    .line 589
    const/4 v0, -0x3

    .line 606
    :cond_4
    :goto_1
    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    .line 609
    const/4 v1, -0x5

    if-ne v0, v1, :cond_8

    .line 610
    invoke-direct {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->w()V

    move v2, v11

    .line 611
    goto :goto_0

    .line 593
    :cond_5
    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->v:I

    if-ne v0, v11, :cond_7

    move v1, v2

    .line 594
    :goto_2
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->k:Lcom/google/android/exoplayer/MediaFormat;

    iget-object v0, v0, Lcom/google/android/exoplayer/MediaFormat;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 595
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->k:Lcom/google/android/exoplayer/MediaFormat;

    iget-object v0, v0, Lcom/google/android/exoplayer/MediaFormat;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 596
    iget-object v3, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->f:Lcom/google/android/exoplayer/SampleHolder;

    iget-object v3, v3, Lcom/google/android/exoplayer/SampleHolder;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 594
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 598
    :cond_6
    iput v12, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->v:I

    .line 600
    :cond_7
    iget-object v4, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->e:Lcom/google/android/exoplayer/SampleSource;

    iget v5, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->y:I

    iget-wide v6, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->E:J

    iget-object v8, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->g:Lcom/google/android/exoplayer/MediaFormatHolder;

    iget-object v9, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->f:Lcom/google/android/exoplayer/SampleHolder;

    move v10, v2

    invoke-interface/range {v4 .. v10}, Lcom/google/android/exoplayer/SampleSource;->a(IJLcom/google/android/exoplayer/MediaFormatHolder;Lcom/google/android/exoplayer/SampleHolder;Z)I

    move-result v0

    .line 601
    if-eqz p1, :cond_4

    iget v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->z:I

    if-ne v1, v11, :cond_4

    const/4 v1, -0x2

    if-ne v0, v1, :cond_4

    .line 602
    iput v12, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->z:I

    goto :goto_1

    .line 613
    :cond_8
    const/4 v1, -0x4

    if-ne v0, v1, :cond_a

    .line 614
    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->v:I

    if-ne v0, v12, :cond_9

    .line 617
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->f:Lcom/google/android/exoplayer/SampleHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer/SampleHolder;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 618
    iput v11, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->v:I

    .line 620
    :cond_9
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->g:Lcom/google/android/exoplayer/MediaFormatHolder;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->a(Lcom/google/android/exoplayer/MediaFormatHolder;)V

    move v2, v11

    .line 621
    goto/16 :goto_0

    .line 623
    :cond_a
    if-ne v0, v13, :cond_c

    .line 624
    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->v:I

    if-ne v0, v12, :cond_b

    .line 628
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->f:Lcom/google/android/exoplayer/SampleHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer/SampleHolder;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 629
    iput v11, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->v:I

    .line 631
    :cond_b
    iput-boolean v11, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->A:Z

    .line 633
    :try_start_0
    iget-object v4, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->m:Landroid/media/MediaCodec;

    iget v5, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->r:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 634
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->r:I
    :try_end_0
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 635
    :catch_0
    move-exception v0

    .line 636
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->a(Landroid/media/MediaCodec$CryptoException;)V

    .line 637
    new-instance v1, Lcom/google/android/exoplayer/ExoPlaybackException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 641
    :cond_c
    iget-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->D:Z

    if-eqz v0, :cond_f

    .line 644
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->f:Lcom/google/android/exoplayer/SampleHolder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/SampleHolder;->c()Z

    move-result v0

    if-nez v0, :cond_e

    .line 645
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->f:Lcom/google/android/exoplayer/SampleHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer/SampleHolder;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 646
    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->v:I

    if-ne v0, v12, :cond_d

    .line 649
    iput v11, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->v:I

    :cond_d
    move v2, v11

    .line 651
    goto/16 :goto_0

    .line 653
    :cond_e
    iput-boolean v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->D:Z

    .line 655
    :cond_f
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->f:Lcom/google/android/exoplayer/SampleHolder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/SampleHolder;->a()Z

    move-result v0

    .line 656
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->b(Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->C:Z

    .line 657
    iget-boolean v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->C:Z

    if-nez v1, :cond_0

    .line 661
    :try_start_1
    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->f:Lcom/google/android/exoplayer/SampleHolder;

    iget-object v1, v1, Lcom/google/android/exoplayer/SampleHolder;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 662
    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->f:Lcom/google/android/exoplayer/SampleHolder;

    iget v1, v1, Lcom/google/android/exoplayer/SampleHolder;->c:I

    sub-int v1, v3, v1

    .line 663
    iget-object v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->f:Lcom/google/android/exoplayer/SampleHolder;

    iget-wide v4, v2, Lcom/google/android/exoplayer/SampleHolder;->e:J

    .line 664
    iget-object v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->f:Lcom/google/android/exoplayer/SampleHolder;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/SampleHolder;->b()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 665
    iget-object v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->h:Ljava/util/List;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 667
    :cond_10
    if-eqz v0, :cond_11

    .line 668
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->f:Lcom/google/android/exoplayer/SampleHolder;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->a(Lcom/google/android/exoplayer/SampleHolder;I)Landroid/media/MediaCodec$CryptoInfo;

    move-result-object v3

    .line 670
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->m:Landroid/media/MediaCodec;

    iget v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->r:I

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    .line 674
    :goto_3
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->r:I

    .line 675
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->x:Z

    .line 676
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->v:I

    move v2, v11

    .line 681
    goto/16 :goto_0

    .line 672
    :cond_11
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->m:Landroid/media/MediaCodec;

    iget v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->r:I

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_1
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 677
    :catch_1
    move-exception v0

    .line 678
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->a(Landroid/media/MediaCodec$CryptoException;)V

    .line 679
    new-instance v1, Lcom/google/android/exoplayer/ExoPlaybackException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private b(Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;)V
    .locals 3

    .prologue
    .line 872
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->j:Lcom/google/android/exoplayer/MediaCodecTrackRenderer$EventListener;

    if-eqz v0, :cond_0

    .line 873
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->c:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$1;-><init>(Lcom/google/android/exoplayer/MediaCodecTrackRenderer;Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;)V

    const v2, -0xebeb553

    invoke-static {v0, v1, v2}, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->a(Landroid/os/Handler;Ljava/lang/Runnable;I)Z

    .line 880
    :cond_0
    return-void
.end method

.method private b(JJ)Z
    .locals 11

    .prologue
    .line 814
    iget-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->B:Z

    if-eqz v0, :cond_0

    .line 815
    const/4 v0, 0x0

    .line 857
    :goto_0
    return v0

    .line 818
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->s:I

    if-gez v0, :cond_1

    .line 819
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->m:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->i:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->s:I

    .line 822
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->s:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_2

    .line 823
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->k:Lcom/google/android/exoplayer/MediaFormat;

    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->m:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->a(Lcom/google/android/exoplayer/MediaFormat;Landroid/media/MediaFormat;)V

    .line 824
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->b:Lcom/google/android/exoplayer/CodecCounters;

    iget v1, v0, Lcom/google/android/exoplayer/CodecCounters;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer/CodecCounters;->c:I

    .line 825
    const/4 v0, 0x1

    goto :goto_0

    .line 826
    :cond_2
    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->s:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_3

    .line 827
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->m:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->p:[Ljava/nio/ByteBuffer;

    .line 828
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->b:Lcom/google/android/exoplayer/CodecCounters;

    iget v1, v0, Lcom/google/android/exoplayer/CodecCounters;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer/CodecCounters;->d:I

    .line 829
    const/4 v0, 0x1

    goto :goto_0

    .line 830
    :cond_3
    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->s:I

    if-gez v0, :cond_4

    .line 831
    const/4 v0, 0x0

    goto :goto_0

    .line 834
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_6

    .line 835
    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->w:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 837
    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->n()V

    .line 838
    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->k()V

    .line 842
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 840
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->B:Z

    goto :goto_1

    .line 845
    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->i:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->d(J)I

    move-result v0

    .line 846
    iget-object v6, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->m:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->p:[Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->s:I

    aget-object v7, v1, v2

    iget-object v8, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v9, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->s:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v10, 0x1

    :goto_2
    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v1 .. v10}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->a(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;IZ)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 848
    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 849
    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 853
    :goto_3
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->s:I

    .line 854
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 846
    :cond_7
    const/4 v10, 0x0

    goto :goto_2

    .line 851
    :cond_8
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->i:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->E:J

    goto :goto_3

    .line 857
    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private b(Z)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 701
    iget-boolean v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->t:Z

    if-nez v1, :cond_1

    .line 712
    :cond_0
    :goto_0
    return v0

    .line 704
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->a:Lcom/google/android/exoplayer/drm/DrmSessionManager;

    invoke-interface {v1}, Lcom/google/android/exoplayer/drm/DrmSessionManager;->a()I

    move-result v1

    .line 705
    if-nez v1, :cond_2

    .line 706
    new-instance v0, Lcom/google/android/exoplayer/ExoPlaybackException;

    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->a:Lcom/google/android/exoplayer/drm/DrmSessionManager;

    invoke-interface {v1}, Lcom/google/android/exoplayer/drm/DrmSessionManager;->d()Ljava/lang/Exception;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 708
    :cond_2
    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    if-nez p1, :cond_3

    iget-boolean v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->d:Z

    if-nez v1, :cond_0

    .line 710
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private d(J)I
    .locals 7

    .prologue
    .line 907
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 908
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 909
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v4, p1

    if-nez v0, :cond_0

    move v0, v1

    .line 913
    :goto_1
    return v0

    .line 908
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 913
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private f()V
    .locals 7

    .prologue
    .line 514
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->e:Lcom/google/android/exoplayer/SampleSource;

    iget v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->y:I

    iget-wide v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->E:J

    iget-object v4, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->g:Lcom/google/android/exoplayer/MediaFormatHolder;

    iget-object v5, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->f:Lcom/google/android/exoplayer/SampleHolder;

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer/SampleSource;->a(IJLcom/google/android/exoplayer/MediaFormatHolder;Lcom/google/android/exoplayer/SampleHolder;Z)I

    move-result v0

    .line 515
    const/4 v1, -0x4

    if-ne v0, v1, :cond_0

    .line 516
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->g:Lcom/google/android/exoplayer/MediaFormatHolder;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->a(Lcom/google/android/exoplayer/MediaFormatHolder;)V

    .line 518
    :cond_0
    return-void
.end method

.method private v()V
    .locals 7

    .prologue
    .line 521
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->m:Landroid/media/MediaCodec;

    if-nez v0, :cond_1

    .line 528
    :cond_0
    :goto_0
    return-void

    .line 524
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->e:Lcom/google/android/exoplayer/SampleSource;

    iget v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->y:I

    iget-wide v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->E:J

    iget-object v4, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->g:Lcom/google/android/exoplayer/MediaFormatHolder;

    iget-object v5, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->f:Lcom/google/android/exoplayer/SampleHolder;

    const/4 v6, 0x1

    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer/SampleSource;->a(IJLcom/google/android/exoplayer/MediaFormatHolder;Lcom/google/android/exoplayer/SampleHolder;Z)I

    move-result v0

    .line 525
    const/4 v1, -0x5

    if-ne v0, v1, :cond_0

    .line 526
    invoke-direct {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->w()V

    goto :goto_0
.end method

.method private w()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 531
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->q:J

    .line 532
    iput v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->r:I

    .line 533
    iput v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->s:I

    .line 534
    iput-boolean v4, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->D:Z

    .line 535
    iput-boolean v3, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->C:Z

    .line 536
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 539
    sget v0, Lcom/google/android/exoplayer/util/Util;->a:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->w:I

    if-nez v0, :cond_1

    .line 540
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->m:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    .line 541
    iput-boolean v3, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->x:Z

    .line 546
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->u:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->k:Lcom/google/android/exoplayer/MediaFormat;

    if-eqz v0, :cond_0

    .line 549
    iput v4, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->v:I

    .line 551
    :cond_0
    return-void

    .line 543
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->n()V

    .line 544
    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->k()V

    goto :goto_0
.end method

.method private x()Z
    .locals 6

    .prologue
    .line 795
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->q:J

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final a(J)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 248
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->e:Lcom/google/android/exoplayer/SampleSource;

    invoke-interface {v1, p1, p2}, Lcom/google/android/exoplayer/SampleSource;->a(J)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 249
    if-nez v1, :cond_1

    .line 266
    :goto_0
    return v0

    .line 252
    :catch_0
    move-exception v0

    .line 253
    new-instance v1, Lcom/google/android/exoplayer/ExoPlaybackException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 256
    :cond_0
    add-int/lit8 v0, v0, 0x1

    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->e:Lcom/google/android/exoplayer/SampleSource;

    invoke-interface {v1}, Lcom/google/android/exoplayer/SampleSource;->cn_()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 260
    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->e:Lcom/google/android/exoplayer/SampleSource;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer/SampleSource;->a(I)Lcom/google/android/exoplayer/TrackInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/exoplayer/TrackInfo;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->y:I

    .line 262
    const/4 v0, 0x1

    goto :goto_0

    .line 266
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Z)Lcom/google/android/exoplayer/DecoderInfo;
    .locals 1

    .prologue
    .line 301
    invoke-static {p1, p2}, Lcom/google/android/exoplayer/MediaCodecUtil;->a(Ljava/lang/String;Z)Lcom/google/android/exoplayer/DecoderInfo;

    move-result-object v0

    return-object v0
.end method

.method protected final a(JJ)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 491
    :try_start_0
    iget-object v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->e:Lcom/google/android/exoplayer/SampleSource;

    invoke-interface {v2, p1, p2}, Lcom/google/android/exoplayer/SampleSource;->b(J)Z

    move-result v2

    if-eqz v2, :cond_6

    iget v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->z:I

    if-nez v1, :cond_5

    :goto_0
    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->z:I

    .line 494
    invoke-direct {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->v()V

    .line 495
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->k:Lcom/google/android/exoplayer/MediaFormat;

    if-nez v0, :cond_0

    .line 496
    invoke-direct {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->f()V

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->m:Landroid/media/MediaCodec;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 499
    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->k()V

    .line 501
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->m:Landroid/media/MediaCodec;

    if-eqz v0, :cond_4

    .line 502
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->b(JJ)Z

    move-result v0

    if-nez v0, :cond_2

    .line 503
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 504
    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->a(Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 507
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->b:Lcom/google/android/exoplayer/CodecCounters;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/CodecCounters;->a()V

    .line 510
    return-void

    .line 491
    :cond_5
    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->z:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_0

    .line 508
    :catch_0
    move-exception v0

    .line 509
    new-instance v1, Lcom/google/android/exoplayer/ExoPlaybackException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected a(JZ)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 283
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->e:Lcom/google/android/exoplayer/SampleSource;

    iget v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->y:I

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/exoplayer/SampleSource;->a(IJ)V

    .line 284
    iput v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->z:I

    .line 285
    iput-boolean v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->A:Z

    .line 286
    iput-boolean v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->B:Z

    .line 287
    iput-boolean v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->C:Z

    .line 288
    iput-wide p1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->E:J

    .line 289
    return-void
.end method

.method protected a(Landroid/media/MediaCodec;Ljava/lang/String;Landroid/media/MediaFormat;Landroid/media/MediaCrypto;)V
    .locals 2

    .prologue
    .line 315
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, p3, v0, p4, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 316
    return-void
.end method

.method protected a(Lcom/google/android/exoplayer/MediaFormat;Landroid/media/MediaFormat;)V
    .locals 0

    .prologue
    .line 751
    return-void
.end method

.method protected a(Lcom/google/android/exoplayer/MediaFormatHolder;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 722
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->k:Lcom/google/android/exoplayer/MediaFormat;

    .line 723
    iget-object v1, p1, Lcom/google/android/exoplayer/MediaFormatHolder;->a:Lcom/google/android/exoplayer/MediaFormat;

    iput-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->k:Lcom/google/android/exoplayer/MediaFormat;

    .line 724
    iget-object v1, p1, Lcom/google/android/exoplayer/MediaFormatHolder;->b:Lcom/google/android/exoplayer/drm/DrmInitData;

    iput-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->l:Lcom/google/android/exoplayer/drm/DrmInitData;

    .line 725
    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->m:Landroid/media/MediaCodec;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->m:Landroid/media/MediaCodec;

    iget-boolean v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->n:Z

    iget-object v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->k:Lcom/google/android/exoplayer/MediaFormat;

    invoke-virtual {p0, v1, v0, v2}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->a(ZLcom/google/android/exoplayer/MediaFormat;Lcom/google/android/exoplayer/MediaFormat;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 726
    iput-boolean v3, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->u:Z

    .line 727
    iput v3, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->v:I

    .line 738
    :goto_0
    return-void

    .line 729
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->x:Z

    if-eqz v0, :cond_1

    .line 731
    iput v3, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->w:I

    goto :goto_0

    .line 734
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->n()V

    .line 735
    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->k()V

    goto :goto_0
.end method

.method protected a()Z
    .locals 1

    .prologue
    .line 775
    iget-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->B:Z

    return v0
.end method

.method protected abstract a(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;IZ)Z
.end method

.method protected a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 276
    const/4 v0, 0x1

    return v0
.end method

.method protected a(ZLcom/google/android/exoplayer/MediaFormat;Lcom/google/android/exoplayer/MediaFormat;)Z
    .locals 1

    .prologue
    .line 770
    const/4 v0, 0x0

    return v0
.end method

.method protected b(J)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 471
    iput-wide p1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->E:J

    .line 472
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->e:Lcom/google/android/exoplayer/SampleSource;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer/SampleSource;->c(J)V

    .line 473
    iput v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->z:I

    .line 474
    iput-boolean v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->A:Z

    .line 475
    iput-boolean v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->B:Z

    .line 476
    return-void
.end method

.method protected b()Z
    .locals 1

    .prologue
    .line 780
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->k:Lcom/google/android/exoplayer/MediaFormat;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->C:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->z:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->s:I

    if-gez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->x()Z

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

.method protected final c()J
    .locals 2

    .prologue
    .line 459
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->e:Lcom/google/android/exoplayer/SampleSource;

    iget v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->y:I

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/SampleSource;->a(I)Lcom/google/android/exoplayer/TrackInfo;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/exoplayer/TrackInfo;->b:J

    return-wide v0
.end method

.method protected final d()J
    .locals 4

    .prologue
    .line 464
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->e:Lcom/google/android/exoplayer/SampleSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer/SampleSource;->b()J

    move-result-wide v0

    .line 465
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const-wide/16 v2, -0x3

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->e()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method protected e()J
    .locals 2

    .prologue
    .line 454
    iget-wide v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->E:J

    return-wide v0
.end method

.method protected h()V
    .locals 0

    .prologue
    .line 481
    return-void
.end method

.method protected i()V
    .locals 0

    .prologue
    .line 486
    return-void
.end method

.method protected j()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 404
    iput-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->k:Lcom/google/android/exoplayer/MediaFormat;

    .line 405
    iput-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->l:Lcom/google/android/exoplayer/drm/DrmInitData;

    .line 407
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 410
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->t:Z

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->a:Lcom/google/android/exoplayer/drm/DrmSessionManager;

    .line 412
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->t:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->e:Lcom/google/android/exoplayer/SampleSource;

    iget v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->y:I

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/SampleSource;->b(I)V

    .line 416
    return-void

    .line 415
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->e:Lcom/google/android/exoplayer/SampleSource;

    iget v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->y:I

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer/SampleSource;->b(I)V

    throw v0

    .line 417
    :catchall_1
    move-exception v0

    .line 410
    :try_start_2
    iget-boolean v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->t:Z

    if-eqz v1, :cond_1

    .line 411
    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->a:Lcom/google/android/exoplayer/drm/DrmSessionManager;

    .line 412
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->t:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 415
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->e:Lcom/google/android/exoplayer/SampleSource;

    iget v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->y:I

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer/SampleSource;->b(I)V

    throw v0

    :catchall_2
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->e:Lcom/google/android/exoplayer/SampleSource;

    iget v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->y:I

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer/SampleSource;->b(I)V

    throw v0
.end method

.method protected final k()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v3, 0x0

    .line 320
    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->l()Z

    move-result v0

    if-nez v0, :cond_1

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 324
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->k:Lcom/google/android/exoplayer/MediaFormat;

    iget-object v4, v0, Lcom/google/android/exoplayer/MediaFormat;->a:Ljava/lang/String;

    .line 326
    const/4 v0, 0x0

    .line 327
    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->l:Lcom/google/android/exoplayer/drm/DrmInitData;

    if-eqz v1, :cond_8

    .line 328
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->a:Lcom/google/android/exoplayer/drm/DrmSessionManager;

    if-nez v0, :cond_2

    .line 329
    new-instance v0, Lcom/google/android/exoplayer/ExoPlaybackException;

    const-string v1, "Media requires a DrmSessionManager"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 331
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->t:Z

    if-nez v0, :cond_3

    .line 332
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->a:Lcom/google/android/exoplayer/drm/DrmSessionManager;

    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->l:Lcom/google/android/exoplayer/drm/DrmInitData;

    .line 333
    iput-boolean v7, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->t:Z

    .line 335
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->a:Lcom/google/android/exoplayer/drm/DrmSessionManager;

    invoke-interface {v0}, Lcom/google/android/exoplayer/drm/DrmSessionManager;->a()I

    move-result v0

    .line 336
    if-nez v0, :cond_4

    .line 337
    new-instance v0, Lcom/google/android/exoplayer/ExoPlaybackException;

    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->a:Lcom/google/android/exoplayer/drm/DrmSessionManager;

    invoke-interface {v1}, Lcom/google/android/exoplayer/drm/DrmSessionManager;->d()Ljava/lang/Exception;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 338
    :cond_4
    if-eq v0, v8, :cond_5

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 340
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->a:Lcom/google/android/exoplayer/drm/DrmSessionManager;

    invoke-interface {v0}, Lcom/google/android/exoplayer/drm/DrmSessionManager;->b()Landroid/media/MediaCrypto;

    move-result-object v1

    .line 341
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->a:Lcom/google/android/exoplayer/drm/DrmSessionManager;

    invoke-interface {v0}, Lcom/google/android/exoplayer/drm/DrmSessionManager;->c()Z

    move-result v0

    move-object v2, v1

    .line 350
    :goto_1
    :try_start_0
    invoke-virtual {p0, v4, v0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->a(Ljava/lang/String;Z)Lcom/google/android/exoplayer/DecoderInfo;
    :try_end_0
    .catch Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 356
    :goto_2
    if-nez v0, :cond_6

    .line 357
    new-instance v1, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;

    iget-object v4, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->k:Lcom/google/android/exoplayer/MediaFormat;

    const v5, -0xc34f

    invoke-direct {v1, v4, v3, v5}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;-><init>(Lcom/google/android/exoplayer/MediaFormat;Ljava/lang/Throwable;I)V

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->a(Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;)V

    .line 361
    :cond_6
    iget-object v1, v0, Lcom/google/android/exoplayer/DecoderInfo;->a:Ljava/lang/String;

    .line 362
    iget-boolean v0, v0, Lcom/google/android/exoplayer/DecoderInfo;->b:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->n:Z

    .line 364
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 365
    invoke-static {v1}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->m:Landroid/media/MediaCodec;

    .line 366
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->m:Landroid/media/MediaCodec;

    iget-object v3, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->k:Lcom/google/android/exoplayer/MediaFormat;

    invoke-virtual {v3}, Lcom/google/android/exoplayer/MediaFormat;->e()Landroid/media/MediaFormat;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->a(Landroid/media/MediaCodec;Ljava/lang/String;Landroid/media/MediaFormat;Landroid/media/MediaCrypto;)V

    .line 367
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->m:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 368
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 369
    sub-long v4, v2, v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->a(Ljava/lang/String;JJ)V

    .line 371
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->m:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->o:[Ljava/nio/ByteBuffer;

    .line 372
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->m:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->p:[Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 376
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->q()I

    move-result v0

    if-ne v0, v8, :cond_7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    :goto_4
    iput-wide v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->q:J

    .line 378
    iput v6, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->r:I

    .line 379
    iput v6, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->s:I

    .line 380
    iput-boolean v7, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->D:Z

    .line 381
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->b:Lcom/google/android/exoplayer/CodecCounters;

    iget v1, v0, Lcom/google/android/exoplayer/CodecCounters;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer/CodecCounters;->a:I

    goto/16 :goto_0

    .line 351
    :catch_0
    move-exception v0

    .line 352
    new-instance v1, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;

    iget-object v4, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->k:Lcom/google/android/exoplayer/MediaFormat;

    const v5, -0xc34e

    invoke-direct {v1, v4, v0, v5}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;-><init>(Lcom/google/android/exoplayer/MediaFormat;Ljava/lang/Throwable;I)V

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->a(Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;)V

    move-object v0, v3

    goto :goto_2

    .line 373
    :catch_1
    move-exception v0

    .line 374
    new-instance v2, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;

    iget-object v3, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->k:Lcom/google/android/exoplayer/MediaFormat;

    invoke-direct {v2, v3, v0, v1}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;-><init>(Lcom/google/android/exoplayer/MediaFormat;Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->a(Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;)V

    goto :goto_3

    .line 376
    :cond_7
    const-wide/16 v0, -0x1

    goto :goto_4

    :cond_8
    move-object v2, v3

    goto/16 :goto_1
.end method

.method protected l()Z
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->m:Landroid/media/MediaCodec;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->k:Lcom/google/android/exoplayer/MediaFormat;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final m()Z
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->m:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final n()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 421
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->m:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 422
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->q:J

    .line 423
    iput v4, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->r:I

    .line 424
    iput v4, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->s:I

    .line 425
    iput-boolean v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->C:Z

    .line 426
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 427
    iput-object v3, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->o:[Ljava/nio/ByteBuffer;

    .line 428
    iput-object v3, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->p:[Ljava/nio/ByteBuffer;

    .line 429
    iput-boolean v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->u:Z

    .line 430
    iput-boolean v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->x:Z

    .line 431
    iput-boolean v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->n:Z

    .line 432
    iput v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->v:I

    .line 433
    iput v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->w:I

    .line 434
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->b:Lcom/google/android/exoplayer/CodecCounters;

    iget v1, v0, Lcom/google/android/exoplayer/CodecCounters;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer/CodecCounters;->b:I

    .line 436
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->m:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 439
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->m:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 441
    iput-object v3, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->m:Landroid/media/MediaCodec;

    .line 445
    :cond_0
    return-void

    .line 441
    :catchall_0
    move-exception v0

    iput-object v3, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->m:Landroid/media/MediaCodec;

    throw v0

    .line 443
    :catchall_1
    move-exception v0

    .line 439
    :try_start_2
    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->m:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 441
    iput-object v3, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->m:Landroid/media/MediaCodec;

    throw v0

    :catchall_2
    move-exception v0

    iput-object v3, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->m:Landroid/media/MediaCodec;

    throw v0
.end method

.method protected final o()V
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->e:Lcom/google/android/exoplayer/SampleSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer/SampleSource;->c()V

    .line 450
    return-void
.end method

.method protected final p()I
    .locals 1

    .prologue
    .line 791
    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->z:I

    return v0
.end method
