.class public Lcom/facebook/exoplayer/VideoPlayerService;
.super Landroid/app/Service;
.source "VideoPlayerService.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StringFormatUse",
        "BadMethodUse-android.util.Log.v",
        "BadMethodUse-android.util.Log.d",
        "BadMethodUse-android.util.Log.i",
        "BadMethodUse-android.util.Log.w",
        "BadMethodUse-android.util.Log.e"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/Timer;

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/facebook/exoplayer/ipc/VideoPlayerSession;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/exoplayer/ipc/VideoPlayerServiceListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/facebook/exoplayer/ipc/MediaRenderer;",
            "Lcom/google/android/exoplayer/MediaCodecTrackRenderer;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/facebook/exoplayer/ipc/VideoPlayerSession;",
            "Lcom/google/android/exoplayer/ExoPlayer;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/facebook/exoplayer/ipc/VideoPlayerServiceApi$Stub;

.field private final g:Ljava/util/TimerTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/facebook/exoplayer/VideoPlayerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/exoplayer/VideoPlayerService;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 103
    new-instance v0, Lcom/facebook/exoplayer/VideoPlayerService$1;

    invoke-direct {v0, p0}, Lcom/facebook/exoplayer/VideoPlayerService$1;-><init>(Lcom/facebook/exoplayer/VideoPlayerService;)V

    iput-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService;->f:Lcom/facebook/exoplayer/ipc/VideoPlayerServiceApi$Stub;

    .line 409
    new-instance v0, Lcom/facebook/exoplayer/VideoPlayerService$2;

    invoke-direct {v0, p0}, Lcom/facebook/exoplayer/VideoPlayerService$2;-><init>(Lcom/facebook/exoplayer/VideoPlayerService;)V

    iput-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService;->g:Ljava/util/TimerTask;

    .line 462
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/facebook/exoplayer/VideoPlayerService;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/exoplayer/VideoPlayerService;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService;->e:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/exoplayer/VideoPlayerService;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService;->c:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/exoplayer/VideoPlayerService;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService;->d:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 418
    sget-object v0, Lcom/facebook/exoplayer/VideoPlayerService;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bind by intent "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 419
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService;->f:Lcom/facebook/exoplayer/ipc/VideoPlayerServiceApi$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 7

    .prologue
    sget-object v0, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->LIFECYCLE_SERVICE_START:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    const v1, 0x3b357443

    invoke-static {v0, v1}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;I)I

    move-result v6

    .line 424
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 425
    sget-object v0, Lcom/facebook/exoplayer/VideoPlayerService;->a:Ljava/lang/String;

    .line 427
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService;->c:Ljava/util/HashMap;

    .line 428
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService;->d:Ljava/util/HashMap;

    .line 429
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService;->e:Ljava/util/HashMap;

    .line 431
    new-instance v0, Ljava/util/Timer;

    const-string v1, "VideoPlayerServiceTimer"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService;->b:Ljava/util/Timer;

    .line 432
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService;->b:Ljava/util/Timer;

    iget-object v1, p0, Lcom/facebook/exoplayer/VideoPlayerService;->g:Ljava/util/TimerTask;

    const-wide/16 v2, 0x3e8

    const-wide/32 v4, 0xea60

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 433
    sget-object v0, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->LIFECYCLE_SERVICE_END:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    const v1, -0x5f9ddd9f

    invoke-static {v0, v1, v6}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;II)I

    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    sget-object v0, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->LIFECYCLE_SERVICE_START:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    const v1, 0x632fe6d6

    invoke-static {v0, v1}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;I)I

    move-result v1

    .line 437
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 438
    sget-object v0, Lcom/facebook/exoplayer/VideoPlayerService;->a:Ljava/lang/String;

    .line 440
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService;->b:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 441
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService;->b:Ljava/util/Timer;

    .line 443
    iget-object v2, p0, Lcom/facebook/exoplayer/VideoPlayerService;->e:Ljava/util/HashMap;

    monitor-enter v2

    .line 444
    :try_start_0
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 445
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 447
    iget-object v2, p0, Lcom/facebook/exoplayer/VideoPlayerService;->e:Ljava/util/HashMap;

    monitor-enter v2

    .line 448
    :try_start_1
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 449
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 451
    iget-object v2, p0, Lcom/facebook/exoplayer/VideoPlayerService;->e:Ljava/util/HashMap;

    monitor-enter v2

    .line 452
    :try_start_2
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 453
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/ExoPlayer;

    .line 454
    if-eqz v0, :cond_0

    .line 455
    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->d()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 459
    :catchall_0
    move-exception v0

    monitor-exit v2

    const v2, 0x130789bd

    invoke-static {v2, v1}, Lcom/facebook/tools/dextr/runtime/LogUtils;->c(II)V

    throw v0

    .line 445
    :catchall_1
    move-exception v0

    monitor-exit v2

    const v2, -0x32755a40    # -2.907648E8f

    invoke-static {v2, v1}, Lcom/facebook/tools/dextr/runtime/LogUtils;->c(II)V

    throw v0

    .line 449
    :catchall_2
    move-exception v0

    monitor-exit v2

    const v2, 0x5b68884a

    invoke-static {v2, v1}, Lcom/facebook/tools/dextr/runtime/LogUtils;->c(II)V

    throw v0

    .line 458
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 459
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 460
    const v0, 0x59593030

    invoke-static {v0, v1}, Lcom/facebook/tools/dextr/runtime/LogUtils;->c(II)V

    return-void
.end method
