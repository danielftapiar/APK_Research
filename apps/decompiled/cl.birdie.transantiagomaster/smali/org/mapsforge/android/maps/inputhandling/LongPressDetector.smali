.class final Lorg/mapsforge/android/maps/inputhandling/LongPressDetector;
.super Ljava/lang/Thread;
.source "LongPressDetector.java"


# instance fields
.field private eventHandled:Z

.field private pressStartTime:J

.field private final touchEventHandler:Lorg/mapsforge/android/maps/inputhandling/TouchEventHandler;


# direct methods
.method constructor <init>(Lorg/mapsforge/android/maps/inputhandling/TouchEventHandler;)V
    .locals 0
    .param p1, "touchEventHandler"    # Lorg/mapsforge/android/maps/inputhandling/TouchEventHandler;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/mapsforge/android/maps/inputhandling/LongPressDetector;->touchEventHandler:Lorg/mapsforge/android/maps/inputhandling/TouchEventHandler;

    .line 29
    return-void
.end method


# virtual methods
.method final isEventHandled()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lorg/mapsforge/android/maps/inputhandling/LongPressDetector;->eventHandled:Z

    return v0
.end method

.method final pressStart()V
    .locals 4

    .prologue
    .line 90
    iget-wide v0, p0, Lorg/mapsforge/android/maps/inputhandling/LongPressDetector;->pressStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mapsforge/android/maps/inputhandling/LongPressDetector;->eventHandled:Z

    .line 92
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/mapsforge/android/maps/inputhandling/LongPressDetector;->pressStartTime:J

    .line 93
    monitor-enter p0

    .line 94
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 95
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :cond_0
    return-void

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final pressStop()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 103
    iget-wide v0, p0, Lorg/mapsforge/android/maps/inputhandling/LongPressDetector;->pressStartTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 104
    iput-wide v2, p0, Lorg/mapsforge/android/maps/inputhandling/LongPressDetector;->pressStartTime:J

    .line 105
    monitor-enter p0

    .line 106
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 107
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :cond_0
    return-void

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final run()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 33
    const-string v2, "LongPressDetector"

    invoke-virtual {p0, v2}, Lorg/mapsforge/android/maps/inputhandling/LongPressDetector;->setName(Ljava/lang/String;)V

    .line 35
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/mapsforge/android/maps/inputhandling/LongPressDetector;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_3

    .line 36
    monitor-enter p0

    .line 37
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lorg/mapsforge/android/maps/inputhandling/LongPressDetector;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_1

    iget-wide v2, p0, Lorg/mapsforge/android/maps/inputhandling/LongPressDetector;->pressStartTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v2, v2, v6

    if-nez v2, :cond_1

    .line 39
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 42
    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {p0}, Lorg/mapsforge/android/maps/inputhandling/LongPressDetector;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 45
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 47
    invoke-virtual {p0}, Lorg/mapsforge/android/maps/inputhandling/LongPressDetector;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_3

    .line 48
    monitor-enter p0

    .line 53
    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/mapsforge/android/maps/inputhandling/LongPressDetector;->pressStartTime:J

    sub-long v0, v2, v4

    .line 55
    .local v0, "timeElapsed":J
    :goto_2
    invoke-virtual {p0}, Lorg/mapsforge/android/maps/inputhandling/LongPressDetector;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_2

    iget-wide v2, p0, Lorg/mapsforge/android/maps/inputhandling/LongPressDetector;->pressStartTime:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_2

    iget-object v2, p0, Lorg/mapsforge/android/maps/inputhandling/LongPressDetector;->touchEventHandler:Lorg/mapsforge/android/maps/inputhandling/TouchEventHandler;

    iget v2, v2, Lorg/mapsforge/android/maps/inputhandling/TouchEventHandler;->longPressTimeout:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    .line 58
    :try_start_5
    iget-object v2, p0, Lorg/mapsforge/android/maps/inputhandling/LongPressDetector;->touchEventHandler:Lorg/mapsforge/android/maps/inputhandling/TouchEventHandler;

    iget v2, v2, Lorg/mapsforge/android/maps/inputhandling/TouchEventHandler;->longPressTimeout:I

    int-to-long v2, v2

    sub-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 59
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/mapsforge/android/maps/inputhandling/LongPressDetector;->pressStartTime:J
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    sub-long v0, v2, v4

    goto :goto_2

    .line 62
    :catch_1
    move-exception v2

    :try_start_6
    invoke-virtual {p0}, Lorg/mapsforge/android/maps/inputhandling/LongPressDetector;->interrupt()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    .line 65
    .end local v0    # "timeElapsed":J
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    .restart local v0    # "timeElapsed":J
    :cond_2
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 67
    invoke-virtual {p0}, Lorg/mapsforge/android/maps/inputhandling/LongPressDetector;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_3

    .line 68
    iget-wide v2, p0, Lorg/mapsforge/android/maps/inputhandling/LongPressDetector;->pressStartTime:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_0

    .line 72
    iget-object v2, p0, Lorg/mapsforge/android/maps/inputhandling/LongPressDetector;->touchEventHandler:Lorg/mapsforge/android/maps/inputhandling/TouchEventHandler;

    invoke-virtual {v2}, Lorg/mapsforge/android/maps/inputhandling/TouchEventHandler;->forwardLongPressEvent()Z

    move-result v2

    iput-boolean v2, p0, Lorg/mapsforge/android/maps/inputhandling/LongPressDetector;->eventHandled:Z

    .line 74
    invoke-virtual {p0}, Lorg/mapsforge/android/maps/inputhandling/LongPressDetector;->pressStop()V

    goto :goto_0

    .line 77
    .end local v0    # "timeElapsed":J
    :cond_3
    return-void
.end method
