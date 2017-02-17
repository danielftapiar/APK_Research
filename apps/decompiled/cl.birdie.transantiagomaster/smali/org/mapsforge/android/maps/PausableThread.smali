.class public abstract Lorg/mapsforge/android/maps/PausableThread;
.super Ljava/lang/Thread;
.source "PausableThread.java"


# instance fields
.field private pausing:Z

.field private shouldPause:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method private declared-synchronized isPausing()Z
    .locals 1

    .prologue
    .line 44
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/mapsforge/android/maps/PausableThread;->pausing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected afterPause()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method protected afterRun()V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method public final awaitPausing()V
    .locals 2

    .prologue
    .line 28
    monitor-enter p0

    .line 29
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/mapsforge/android/maps/PausableThread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/mapsforge/android/maps/PausableThread;->isPausing()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 31
    const-wide/16 v0, 0x64

    :try_start_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method protected abstract doWork()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method protected abstract getThreadName()Ljava/lang/String;
.end method

.method protected getThreadPriority()I
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x5

    return v0
.end method

.method protected abstract hasWork()Z
.end method

.method public final declared-synchronized pause()V
    .locals 1

    .prologue
    .line 51
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/mapsforge/android/maps/PausableThread;->shouldPause:Z

    if-nez v0, :cond_0

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mapsforge/android/maps/PausableThread;->shouldPause:Z

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :cond_0
    monitor-exit p0

    return-void

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized proceed()V
    .locals 1

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/mapsforge/android/maps/PausableThread;->shouldPause:Z

    if-eqz v0, :cond_0

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mapsforge/android/maps/PausableThread;->shouldPause:Z

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mapsforge/android/maps/PausableThread;->pausing:Z

    .line 64
    invoke-virtual {p0}, Lorg/mapsforge/android/maps/PausableThread;->afterPause()V

    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :cond_0
    monitor-exit p0

    return-void

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final run()V
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lorg/mapsforge/android/maps/PausableThread;->getThreadName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mapsforge/android/maps/PausableThread;->setName(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lorg/mapsforge/android/maps/PausableThread;->getThreadPriority()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/mapsforge/android/maps/PausableThread;->setPriority(I)V

    .line 74
    :goto_0
    invoke-virtual {p0}, Lorg/mapsforge/android/maps/PausableThread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_3

    .line 75
    monitor-enter p0

    .line 76
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lorg/mapsforge/android/maps/PausableThread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/mapsforge/android/maps/PausableThread;->shouldPause:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/mapsforge/android/maps/PausableThread;->hasWork()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 78
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lorg/mapsforge/android/maps/PausableThread;->shouldPause:Z

    if-eqz v0, :cond_1

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mapsforge/android/maps/PausableThread;->pausing:Z

    .line 81
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 84
    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {p0}, Lorg/mapsforge/android/maps/PausableThread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 89
    invoke-virtual {p0}, Lorg/mapsforge/android/maps/PausableThread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_3

    .line 90
    :try_start_4
    invoke-virtual {p0}, Lorg/mapsforge/android/maps/PausableThread;->doWork()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 97
    :catch_1
    move-exception v0

    invoke-virtual {p0}, Lorg/mapsforge/android/maps/PausableThread;->interrupt()V

    goto :goto_0

    .line 101
    :cond_3
    invoke-virtual {p0}, Lorg/mapsforge/android/maps/PausableThread;->afterRun()V

    .line 102
    return-void
.end method
