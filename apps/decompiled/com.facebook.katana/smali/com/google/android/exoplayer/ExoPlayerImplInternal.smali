.class final Lcom/google/android/exoplayer/ExoPlayerImplInternal;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Landroid/os/HandlerThread;

.field private final c:Landroid/os/Handler;

.field private final d:Lcom/google/android/exoplayer/MediaClock;

.field private final e:[Z

.field private final f:J

.field private final g:J

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/TrackRenderer;",
            ">;"
        }
    .end annotation
.end field

.field private i:[Lcom/google/android/exoplayer/TrackRenderer;

.field private j:Lcom/google/android/exoplayer/TrackRenderer;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:I

.field private o:I

.field private p:I

.field private q:J

.field private volatile r:J

.field private volatile s:J

.field private volatile t:J


# direct methods
.method public constructor <init>(Landroid/os/Handler;Z[ZII)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    const-wide/16 v4, -0x1

    const/4 v0, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->o:I

    .line 79
    iput v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->p:I

    .line 88
    iput-object p1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->c:Landroid/os/Handler;

    .line 89
    iput-boolean p2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->l:Z

    .line 90
    array-length v1, p3

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->e:[Z

    .line 91
    int-to-long v2, p4

    mul-long/2addr v2, v6

    iput-wide v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->f:J

    .line 92
    int-to-long v2, p5

    mul-long/2addr v2, v6

    iput-wide v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->g:J

    .line 93
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->e:[Z

    aget-boolean v2, p3, v0

    aput-boolean v2, v1, v0

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->n:I

    .line 98
    iput-wide v4, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->r:J

    .line 99
    iput-wide v4, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->t:J

    .line 101
    new-instance v0, Lcom/google/android/exoplayer/MediaClock;

    invoke-direct {v0}, Lcom/google/android/exoplayer/MediaClock;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->d:Lcom/google/android/exoplayer/MediaClock;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->h:Ljava/util/List;

    .line 105
    new-instance v0, Lcom/google/android/exoplayer/util/PriorityHandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":Handler"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/PriorityHandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->b:Landroid/os/HandlerThread;

    .line 107
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 108
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a:Landroid/os/Handler;

    .line 109
    return-void
.end method

.method private a(I)V
    .locals 3

    .prologue
    .line 243
    iget v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->n:I

    if-eq v0, p1, :cond_0

    .line 244
    iput p1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->n:I

    .line 245
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->c:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 247
    :cond_0
    return-void
.end method

.method private a(IJJ)V
    .locals 4

    .prologue
    .line 451
    add-long v0, p2, p4

    .line 452
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 453
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 454
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 458
    :goto_0
    return-void

    .line 456
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a:Landroid/os/Handler;

    invoke-virtual {v2, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private a(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 540
    :try_start_0
    check-cast p2, Landroid/util/Pair;

    .line 541
    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer/ExoPlayer$ExoPlayerComponent;

    iget-object v1, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Lcom/google/android/exoplayer/ExoPlayer$ExoPlayerComponent;->a(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 543
    monitor-enter p0

    .line 544
    :try_start_1
    iget v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->p:I

    .line 545
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 546
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 548
    iget v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->n:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->n:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 550
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 552
    :cond_0
    return-void

    .line 546
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 547
    :catchall_1
    move-exception v0

    monitor-enter p0

    .line 544
    :try_start_2
    iget v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->p:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->p:I

    .line 545
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 546
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Lcom/google/android/exoplayer/TrackRenderer;)Z
    .locals 12

    .prologue
    const-wide/16 v10, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 321
    invoke-virtual {p1}, Lcom/google/android/exoplayer/TrackRenderer;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 333
    :cond_0
    :goto_0
    return v0

    .line 324
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer/TrackRenderer;->b()Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 325
    goto :goto_0

    .line 327
    :cond_2
    iget v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->n:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 330
    invoke-virtual {p1}, Lcom/google/android/exoplayer/TrackRenderer;->c()J

    move-result-wide v4

    .line 331
    invoke-virtual {p1}, Lcom/google/android/exoplayer/TrackRenderer;->d()J

    move-result-wide v6

    .line 332
    iget-boolean v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->m:Z

    if-eqz v2, :cond_4

    iget-wide v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->g:J

    .line 333
    :goto_1
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-lez v8, :cond_0

    cmp-long v8, v6, v10

    if-eqz v8, :cond_0

    const-wide/16 v8, -0x3

    cmp-long v8, v6, v8

    if-eqz v8, :cond_0

    iget-wide v8, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->s:J

    add-long/2addr v2, v8

    cmp-long v2, v6, v2

    if-gez v2, :cond_0

    cmp-long v2, v4, v10

    if-eqz v2, :cond_3

    const-wide/16 v2, -0x2

    cmp-long v2, v4, v2

    if-eqz v2, :cond_3

    cmp-long v2, v6, v4

    if-gez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 332
    :cond_4
    iget-wide v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->f:J

    goto :goto_1
.end method

.method private b(IZ)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x1

    .line 556
    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->e:[Z

    aget-boolean v1, v1, p1

    if-ne v1, p2, :cond_1

    .line 591
    :cond_0
    :goto_0
    return-void

    .line 560
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->e:[Z

    aput-boolean p2, v1, p1

    .line 561
    iget v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->n:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->n:I

    if-eq v1, v3, :cond_0

    .line 565
    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->i:[Lcom/google/android/exoplayer/TrackRenderer;

    aget-object v1, v1, p1

    .line 566
    invoke-virtual {v1}, Lcom/google/android/exoplayer/TrackRenderer;->q()I

    move-result v2

    .line 567
    if-eq v2, v0, :cond_2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 573
    :cond_2
    if-eqz p2, :cond_5

    .line 574
    iget-boolean v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->l:Z

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->n:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 575
    :goto_1
    iget-wide v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->s:J

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/exoplayer/TrackRenderer;->b(JZ)V

    .line 576
    iget-object v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->h:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 577
    if-eqz v0, :cond_3

    .line 578
    invoke-virtual {v1}, Lcom/google/android/exoplayer/TrackRenderer;->r()V

    .line 580
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 574
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 582
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->j:Lcom/google/android/exoplayer/TrackRenderer;

    if-ne v1, v0, :cond_6

    .line 585
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->d:Lcom/google/android/exoplayer/MediaClock;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/TrackRenderer;->e()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer/MediaClock;->a(J)V

    .line 587
    :cond_6
    invoke-static {v1}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->d(Lcom/google/android/exoplayer/TrackRenderer;)V

    .line 588
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 589
    invoke-virtual {v1}, Lcom/google/android/exoplayer/TrackRenderer;->t()V

    goto :goto_0
.end method

.method private b(J)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 461
    iput-boolean v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->m:Z

    .line 462
    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p1

    iput-wide v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->s:J

    .line 463
    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->d:Lcom/google/android/exoplayer/MediaClock;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/MediaClock;->b()V

    .line 464
    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->d:Lcom/google/android/exoplayer/MediaClock;

    iget-wide v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->s:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer/MediaClock;->a(J)V

    .line 465
    iget v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->n:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->n:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 475
    :cond_0
    :goto_0
    return-void

    :cond_1
    move v1, v0

    .line 468
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 469
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/TrackRenderer;

    .line 470
    invoke-static {v0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->d(Lcom/google/android/exoplayer/TrackRenderer;)V

    .line 471
    iget-wide v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->s:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer/TrackRenderer;->b(J)V

    .line 468
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 473
    :cond_2
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a(I)V

    .line 474
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private static b(Lcom/google/android/exoplayer/TrackRenderer;)V
    .locals 3

    .prologue
    .line 511
    :try_start_0
    invoke-static {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->d(Lcom/google/android/exoplayer/TrackRenderer;)V

    .line 512
    invoke-virtual {p0}, Lcom/google/android/exoplayer/TrackRenderer;->q()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 513
    invoke-virtual {p0}, Lcom/google/android/exoplayer/TrackRenderer;->t()V
    :try_end_0
    .catch Lcom/google/android/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 522
    :cond_0
    :goto_0
    return-void

    .line 515
    :catch_0
    move-exception v0

    .line 517
    const-string v1, "ExoPlayerImplInternal"

    const-string v2, "Stop failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 518
    :catch_1
    move-exception v0

    .line 520
    const-string v1, "ExoPlayerImplInternal"

    const-string v2, "Stop failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private b(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 344
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->m:Z

    .line 345
    iput-boolean p1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->l:Z

    .line 346
    if-nez p1, :cond_1

    .line 347
    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->h()V

    .line 348
    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->c:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 359
    return-void

    .line 350
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->n:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 351
    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->g()V

    .line 352
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 358
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->c:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    throw v0

    .line 353
    :cond_2
    :try_start_2
    iget v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->n:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 354
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private b([Lcom/google/android/exoplayer/TrackRenderer;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    .line 250
    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->m()V

    .line 251
    iput-object p1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->i:[Lcom/google/android/exoplayer/TrackRenderer;

    move v0, v1

    .line 252
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_2

    .line 253
    aget-object v2, p1, v0

    invoke-virtual {v2}, Lcom/google/android/exoplayer/TrackRenderer;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 254
    iget-object v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->j:Lcom/google/android/exoplayer/TrackRenderer;

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 255
    aget-object v2, p1, v0

    iput-object v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->j:Lcom/google/android/exoplayer/TrackRenderer;

    .line 252
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    .line 254
    goto :goto_1

    .line 258
    :cond_2
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a(I)V

    .line 259
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 260
    return-void
.end method

.method private static c(Lcom/google/android/exoplayer/TrackRenderer;)V
    .locals 3

    .prologue
    .line 526
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer/TrackRenderer;->u()V
    :try_end_0
    .catch Lcom/google/android/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 534
    :goto_0
    return-void

    .line 527
    :catch_0
    move-exception v0

    .line 529
    const-string v1, "ExoPlayerImplInternal"

    const-string v2, "Release failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 530
    :catch_1
    move-exception v0

    .line 532
    const-string v1, "ExoPlayerImplInternal"

    const-string v2, "Release failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static d(Lcom/google/android/exoplayer/TrackRenderer;)V
    .locals 2

    .prologue
    .line 594
    invoke-virtual {p0}, Lcom/google/android/exoplayer/TrackRenderer;->q()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 595
    invoke-virtual {p0}, Lcom/google/android/exoplayer/TrackRenderer;->s()V

    .line 597
    :cond_0
    return-void
.end method

.method private f()V
    .locals 10

    .prologue
    .line 263
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 264
    const/4 v1, 0x1

    .line 265
    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->i:[Lcom/google/android/exoplayer/TrackRenderer;

    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 266
    iget-object v4, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->i:[Lcom/google/android/exoplayer/TrackRenderer;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/google/android/exoplayer/TrackRenderer;->q()I

    move-result v4

    if-nez v4, :cond_0

    .line 267
    iget-object v4, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->i:[Lcom/google/android/exoplayer/TrackRenderer;

    aget-object v4, v4, v0

    iget-wide v6, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->s:J

    invoke-virtual {v4, v6, v7}, Lcom/google/android/exoplayer/TrackRenderer;->c(J)I

    move-result v4

    .line 268
    if-nez v4, :cond_0

    .line 269
    const/4 v1, 0x0

    .line 265
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 274
    :cond_1
    if-nez v1, :cond_2

    .line 276
    const/4 v1, 0x2

    const-wide/16 v4, 0xa

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a(IJJ)V

    .line 318
    :goto_1
    return-void

    .line 280
    :cond_2
    const-wide/16 v4, 0x0

    .line 281
    const/4 v2, 0x1

    .line 282
    const/4 v1, 0x1

    .line 283
    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->i:[Lcom/google/android/exoplayer/TrackRenderer;

    array-length v3, v3

    if-ge v0, v3, :cond_7

    .line 284
    iget-object v3, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->i:[Lcom/google/android/exoplayer/TrackRenderer;

    aget-object v3, v3, v0

    .line 285
    iget-object v6, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->e:[Z

    aget-boolean v6, v6, v0

    if-eqz v6, :cond_3

    invoke-virtual {v3}, Lcom/google/android/exoplayer/TrackRenderer;->q()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 286
    iget-wide v6, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->s:J

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v7, v8}, Lcom/google/android/exoplayer/TrackRenderer;->b(JZ)V

    .line 287
    iget-object v6, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->h:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    if-eqz v2, :cond_4

    invoke-virtual {v3}, Lcom/google/android/exoplayer/TrackRenderer;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    .line 289
    :goto_3
    if-eqz v1, :cond_5

    invoke-direct {p0, v3}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a(Lcom/google/android/exoplayer/TrackRenderer;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    .line 290
    :goto_4
    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-eqz v6, :cond_3

    .line 294
    invoke-virtual {v3}, Lcom/google/android/exoplayer/TrackRenderer;->c()J

    move-result-wide v6

    .line 295
    const-wide/16 v8, -0x1

    cmp-long v3, v6, v8

    if-nez v3, :cond_6

    .line 296
    const-wide/16 v4, -0x1

    .line 283
    :cond_3
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 288
    :cond_4
    const/4 v2, 0x0

    goto :goto_3

    .line 289
    :cond_5
    const/4 v1, 0x0

    goto :goto_4

    .line 297
    :cond_6
    const-wide/16 v8, -0x2

    cmp-long v3, v6, v8

    if-eqz v3, :cond_3

    .line 300
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    goto :goto_5

    .line 305
    :cond_7
    iput-wide v4, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->r:J

    .line 307
    if-eqz v2, :cond_9

    .line 309
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a(I)V

    .line 317
    :cond_8
    :goto_6
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 311
    :cond_9
    if-eqz v1, :cond_a

    const/4 v0, 0x4

    :goto_7
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a(I)V

    .line 312
    iget-boolean v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->l:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->n:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_8

    .line 313
    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->g()V

    goto :goto_6

    .line 311
    :cond_a
    const/4 v0, 0x3

    goto :goto_7
.end method

.method private g()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 363
    iput-boolean v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->m:Z

    .line 364
    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->d:Lcom/google/android/exoplayer/MediaClock;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/MediaClock;->a()V

    move v1, v0

    .line 365
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/TrackRenderer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/TrackRenderer;->r()V

    .line 365
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 368
    :cond_0
    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->d:Lcom/google/android/exoplayer/MediaClock;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/MediaClock;->b()V

    .line 372
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/TrackRenderer;

    invoke-static {v0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->d(Lcom/google/android/exoplayer/TrackRenderer;)V

    .line 372
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 375
    :cond_0
    return-void
.end method

.method private i()V
    .locals 4

    .prologue
    .line 378
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->j:Lcom/google/android/exoplayer/TrackRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->h:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->j:Lcom/google/android/exoplayer/TrackRenderer;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->j:Lcom/google/android/exoplayer/TrackRenderer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/TrackRenderer;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->j:Lcom/google/android/exoplayer/TrackRenderer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/TrackRenderer;->e()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->s:J

    .line 381
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->d:Lcom/google/android/exoplayer/MediaClock;

    iget-wide v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->s:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer/MediaClock;->a(J)V

    .line 385
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->q:J

    .line 386
    return-void

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->d:Lcom/google/android/exoplayer/MediaClock;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/MediaClock;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->s:J

    goto :goto_0
.end method

.method private j()V
    .locals 15

    .prologue
    .line 389
    const-string v0, "doSomeWork"

    invoke-static {v0}, Lcom/google/android/exoplayer/util/TraceUtil;->a(Ljava/lang/String;)V

    .line 390
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 391
    iget-wide v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->r:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->r:J

    .line 393
    :goto_0
    const/4 v6, 0x1

    .line 394
    const/4 v5, 0x1

    .line 395
    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->i()V

    .line 396
    const/4 v4, 0x0

    move v14, v4

    move v4, v5

    move v5, v6

    move-wide v6, v0

    move v1, v14

    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 397
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/TrackRenderer;

    .line 401
    iget-wide v8, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->s:J

    iget-wide v10, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->q:J

    invoke-virtual {v0, v8, v9, v10, v11}, Lcom/google/android/exoplayer/TrackRenderer;->a(JJ)V

    .line 402
    if-eqz v5, :cond_2

    invoke-virtual {v0}, Lcom/google/android/exoplayer/TrackRenderer;->a()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    .line 403
    :goto_2
    if-eqz v4, :cond_3

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a(Lcom/google/android/exoplayer/TrackRenderer;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    .line 405
    :goto_3
    const-wide/16 v8, -0x1

    cmp-long v8, v6, v8

    if-eqz v8, :cond_0

    .line 409
    invoke-virtual {v0}, Lcom/google/android/exoplayer/TrackRenderer;->c()J

    move-result-wide v8

    .line 410
    invoke-virtual {v0}, Lcom/google/android/exoplayer/TrackRenderer;->d()J

    move-result-wide v10

    .line 411
    const-wide/16 v12, -0x1

    cmp-long v0, v10, v12

    if-nez v0, :cond_4

    .line 412
    const-wide/16 v6, -0x1

    .line 396
    :cond_0
    :goto_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 391
    :cond_1
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    .line 402
    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    .line 403
    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    .line 413
    :cond_4
    const-wide/16 v12, -0x3

    cmp-long v0, v10, v12

    if-eqz v0, :cond_0

    const-wide/16 v12, -0x1

    cmp-long v0, v8, v12

    if-eqz v0, :cond_5

    const-wide/16 v12, -0x2

    cmp-long v0, v8, v12

    if-eqz v0, :cond_5

    cmp-long v0, v10, v8

    if-gez v0, :cond_0

    .line 419
    :cond_5
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    goto :goto_4

    .line 423
    :cond_6
    iput-wide v6, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->t:J

    .line 425
    if-eqz v5, :cond_b

    .line 426
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a(I)V

    .line 427
    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->h()V

    .line 439
    :cond_7
    :goto_5
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 440
    iget-boolean v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->l:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->n:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_9

    :cond_8
    iget v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->n:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_d

    .line 441
    :cond_9
    const/4 v1, 0x7

    const-wide/16 v4, 0xa

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a(IJJ)V

    .line 446
    :cond_a
    :goto_6
    invoke-static {}, Lcom/google/android/exoplayer/util/TraceUtil;->a()V

    .line 447
    return-void

    .line 428
    :cond_b
    iget v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->n:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_c

    if-eqz v4, :cond_c

    .line 429
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a(I)V

    .line 430
    iget-boolean v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->l:Z

    if-eqz v0, :cond_7

    .line 431
    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->g()V

    goto :goto_5

    .line 433
    :cond_c
    iget v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->n:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    if-nez v4, :cond_7

    .line 434
    iget-boolean v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->l:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->m:Z

    .line 435
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a(I)V

    .line 436
    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->h()V

    goto :goto_5

    .line 442
    :cond_d
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 443
    const/4 v1, 0x7

    const-wide/16 v4, 0x3e8

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a(IJJ)V

    goto :goto_6
.end method

.method private k()V
    .locals 1

    .prologue
    .line 478
    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->m()V

    .line 479
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a(I)V

    .line 480
    return-void
.end method

.method private l()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 483
    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->m()V

    .line 484
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a(I)V

    .line 485
    monitor-enter p0

    .line 486
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->k:Z

    .line 487
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 488
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private m()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 492
    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 493
    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 494
    iput-boolean v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->m:Z

    .line 495
    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->d:Lcom/google/android/exoplayer/MediaClock;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/MediaClock;->b()V

    .line 496
    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->i:[Lcom/google/android/exoplayer/TrackRenderer;

    if-nez v1, :cond_0

    .line 507
    :goto_0
    return-void

    .line 499
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->i:[Lcom/google/android/exoplayer/TrackRenderer;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 500
    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->i:[Lcom/google/android/exoplayer/TrackRenderer;

    aget-object v1, v1, v0

    .line 501
    invoke-static {v1}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->b(Lcom/google/android/exoplayer/TrackRenderer;)V

    .line 502
    invoke-static {v1}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->c(Lcom/google/android/exoplayer/TrackRenderer;)V

    .line 499
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 504
    :cond_1
    iput-object v3, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->i:[Lcom/google/android/exoplayer/TrackRenderer;

    .line 505
    iput-object v3, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->j:Lcom/google/android/exoplayer/TrackRenderer;

    .line 506
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method


# virtual methods
.method public final a()J
    .locals 4

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->s:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final a(IZ)V
    .locals 3

    .prologue
    .line 146
    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a:Landroid/os/Handler;

    const/16 v2, 0x8

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 147
    return-void

    .line 146
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(J)V
    .locals 3

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 139
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V
    .locals 5

    .prologue
    .line 150
    iget v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->o:I

    .line 151
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a:Landroid/os/Handler;

    const/16 v1, 0x9

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 152
    return-void
.end method

.method public final a(Z)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 134
    iget-object v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a:Landroid/os/Handler;

    const/4 v3, 0x3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 135
    return-void

    :cond_0
    move v0, v1

    .line 134
    goto :goto_0
.end method

.method public final varargs a([Lcom/google/android/exoplayer/TrackRenderer;)V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 131
    return-void
.end method

.method public final b()J
    .locals 4

    .prologue
    const-wide/16 v0, -0x1

    .line 120
    iget-wide v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->t:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->t:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    goto :goto_0
.end method

.method public final declared-synchronized b(Lcom/google/android/exoplayer/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V
    .locals 6

    .prologue
    .line 156
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->k:Z

    if-eqz v0, :cond_1

    .line 157
    const-string v0, "ExoPlayerImplInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sent message(1"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ") after release. Message ignored."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    :cond_0
    monitor-exit p0

    return-void

    .line 160
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->o:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->o:I

    .line 161
    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a:Landroid/os/Handler;

    const/16 v2, 0x9

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {p1, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 162
    :goto_0
    iget v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->p:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt v1, v0, :cond_0

    .line 164
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 166
    :catch_0
    move-exception v1

    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()J
    .locals 4

    .prologue
    const-wide/16 v0, -0x1

    .line 125
    iget-wide v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->r:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->r:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    goto :goto_0
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 143
    return-void
.end method

.method public final declared-synchronized e()V
    .locals 2

    .prologue
    .line 172
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 184
    :goto_0
    monitor-exit p0

    return-void

    .line 175
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 176
    :goto_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->k:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 178
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 180
    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 183
    :cond_1
    :try_start_4
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 189
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    move v0, v2

    .line 238
    :goto_0
    return v0

    .line 191
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Lcom/google/android/exoplayer/TrackRenderer;

    check-cast v0, [Lcom/google/android/exoplayer/TrackRenderer;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->b([Lcom/google/android/exoplayer/TrackRenderer;)V

    move v0, v1

    .line 192
    goto :goto_0

    .line 195
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->f()V

    move v0, v1

    .line 196
    goto :goto_0

    .line 199
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->b(Z)V

    move v0, v1

    .line 200
    goto :goto_0

    :cond_0
    move v0, v2

    .line 199
    goto :goto_1

    .line 203
    :pswitch_3
    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->j()V

    move v0, v1

    .line 204
    goto :goto_0

    .line 207
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->b(J)V

    move v0, v1

    .line 208
    goto :goto_0

    .line 211
    :pswitch_5
    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->k()V

    move v0, v1

    .line 212
    goto :goto_0

    .line 215
    :pswitch_6
    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->l()V

    move v0, v1

    .line 216
    goto :goto_0

    .line 219
    :pswitch_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v0, v3}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a(ILjava/lang/Object;)V

    move v0, v1

    .line 220
    goto :goto_0

    .line 223
    :pswitch_8
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v0, p1, Landroid/os/Message;->arg2:I

    if-eqz v0, :cond_1

    move v0, v1

    :goto_2
    invoke-direct {p0, v3, v0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->b(IZ)V
    :try_end_0
    .catch Lcom/google/android/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move v0, v1

    .line 224
    goto :goto_0

    :cond_1
    move v0, v2

    .line 223
    goto :goto_2

    .line 229
    :catch_0
    move-exception v0

    .line 230
    const-string v2, "ExoPlayerImplInternal"

    const-string v3, "Internal track renderer error."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    iget-object v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->c:Landroid/os/Handler;

    invoke-virtual {v2, v6, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 232
    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->k()V

    move v0, v1

    .line 233
    goto :goto_0

    .line 234
    :catch_1
    move-exception v0

    .line 235
    const-string v3, "ExoPlayerImplInternal"

    const-string v4, "Internal runtime error."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 236
    iget-object v3, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->c:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/exoplayer/ExoPlaybackException;

    invoke-direct {v4, v0, v2}, Lcom/google/android/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;B)V

    invoke-virtual {v3, v6, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 237
    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->k()V

    move v0, v1

    .line 238
    goto :goto_0

    .line 189
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method
