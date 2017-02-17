.class public Lorg/microemu/device/ui/EventDispatcher;
.super Ljava/lang/Object;
.source "EventDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/microemu/device/ui/EventDispatcher$RunnableEvent;,
        Lorg/microemu/device/ui/EventDispatcher$HideNotifyEvent;,
        Lorg/microemu/device/ui/EventDispatcher$ShowNotifyEvent;,
        Lorg/microemu/device/ui/EventDispatcher$PointerEvent;,
        Lorg/microemu/device/ui/EventDispatcher$PaintEvent;,
        Lorg/microemu/device/ui/EventDispatcher$Event;
    }
.end annotation


# static fields
.field public static final EVENT_DISPATCHER_NAME:Ljava/lang/String; = "event-thread"

.field public static maxFps:I


# instance fields
.field private volatile cancelled:Z

.field private head:Lorg/microemu/device/ui/EventDispatcher$Event;

.field private lastPaintEventTime:J

.field private scheduledPaintEvent:Lorg/microemu/device/ui/EventDispatcher$PaintEvent;

.field private scheduledPointerDraggedEvent:Lorg/microemu/device/ui/EventDispatcher$PointerEvent;

.field private serviceRepaintsLock:Ljava/lang/Object;

.field private tail:Lorg/microemu/device/ui/EventDispatcher$Event;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, -0x1

    sput v0, Lorg/microemu/device/ui/EventDispatcher;->maxFps:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/microemu/device/ui/EventDispatcher;->cancelled:Z

    .line 37
    iput-object v1, p0, Lorg/microemu/device/ui/EventDispatcher;->head:Lorg/microemu/device/ui/EventDispatcher$Event;

    .line 39
    iput-object v1, p0, Lorg/microemu/device/ui/EventDispatcher;->tail:Lorg/microemu/device/ui/EventDispatcher$Event;

    .line 41
    iput-object v1, p0, Lorg/microemu/device/ui/EventDispatcher;->scheduledPaintEvent:Lorg/microemu/device/ui/EventDispatcher$PaintEvent;

    .line 43
    iput-object v1, p0, Lorg/microemu/device/ui/EventDispatcher;->scheduledPointerDraggedEvent:Lorg/microemu/device/ui/EventDispatcher$PointerEvent;

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/microemu/device/ui/EventDispatcher;->serviceRepaintsLock:Ljava/lang/Object;

    .line 47
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/microemu/device/ui/EventDispatcher;->lastPaintEventTime:J

    .line 50
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/microemu/device/ui/EventDispatcher;->cancelled:Z

    .line 110
    monitor-enter p0

    .line 111
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 112
    monitor-exit p0

    .line 113
    return-void

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected post(Lorg/microemu/device/ui/EventDispatcher$Event;)V
    .locals 0
    .param p1, "event"    # Lorg/microemu/device/ui/EventDispatcher$Event;

    .prologue
    .line 164
    invoke-virtual {p1}, Lorg/microemu/device/ui/EventDispatcher$Event;->run()V

    .line 165
    return-void
.end method

.method public put(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 143
    new-instance v0, Lorg/microemu/device/ui/EventDispatcher$RunnableEvent;

    invoke-direct {v0, p0, p1}, Lorg/microemu/device/ui/EventDispatcher$RunnableEvent;-><init>(Lorg/microemu/device/ui/EventDispatcher;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lorg/microemu/device/ui/EventDispatcher;->put(Lorg/microemu/device/ui/EventDispatcher$Event;)V

    .line 144
    return-void
.end method

.method public put(Lorg/microemu/device/ui/EventDispatcher$Event;)V
    .locals 3
    .param p1, "event"    # Lorg/microemu/device/ui/EventDispatcher$Event;

    .prologue
    const/4 v2, 0x2

    .line 116
    monitor-enter p0

    .line 117
    :try_start_0
    instance-of v1, p1, Lorg/microemu/device/ui/EventDispatcher$PaintEvent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/microemu/device/ui/EventDispatcher;->scheduledPaintEvent:Lorg/microemu/device/ui/EventDispatcher$PaintEvent;

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lorg/microemu/device/ui/EventDispatcher;->scheduledPaintEvent:Lorg/microemu/device/ui/EventDispatcher$PaintEvent;

    check-cast p1, Lorg/microemu/device/ui/EventDispatcher$PaintEvent;

    .end local p1    # "event":Lorg/microemu/device/ui/EventDispatcher$Event;
    invoke-virtual {v1, p1}, Lorg/microemu/device/ui/EventDispatcher$PaintEvent;->merge(Lorg/microemu/device/ui/EventDispatcher$PaintEvent;)V

    .line 139
    :goto_0
    monitor-exit p0

    .line 140
    return-void

    .line 119
    .restart local p1    # "event":Lorg/microemu/device/ui/EventDispatcher$Event;
    :cond_0
    instance-of v1, p1, Lorg/microemu/device/ui/EventDispatcher$PointerEvent;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/microemu/device/ui/EventDispatcher;->scheduledPointerDraggedEvent:Lorg/microemu/device/ui/EventDispatcher$PointerEvent;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Lorg/microemu/device/ui/EventDispatcher$PointerEvent;

    move-object v1, v0

    invoke-static {v1}, Lorg/microemu/device/ui/EventDispatcher$PointerEvent;->access$000(Lorg/microemu/device/ui/EventDispatcher$PointerEvent;)S

    move-result v1

    if-ne v1, v2, :cond_1

    .line 121
    iget-object v2, p0, Lorg/microemu/device/ui/EventDispatcher;->scheduledPointerDraggedEvent:Lorg/microemu/device/ui/EventDispatcher$PointerEvent;

    move-object v0, p1

    check-cast v0, Lorg/microemu/device/ui/EventDispatcher$PointerEvent;

    move-object v1, v0

    invoke-static {v1}, Lorg/microemu/device/ui/EventDispatcher$PointerEvent;->access$100(Lorg/microemu/device/ui/EventDispatcher$PointerEvent;)I

    move-result v1

    invoke-static {v2, v1}, Lorg/microemu/device/ui/EventDispatcher$PointerEvent;->access$102(Lorg/microemu/device/ui/EventDispatcher$PointerEvent;I)I

    .line 122
    iget-object v1, p0, Lorg/microemu/device/ui/EventDispatcher;->scheduledPointerDraggedEvent:Lorg/microemu/device/ui/EventDispatcher$PointerEvent;

    check-cast p1, Lorg/microemu/device/ui/EventDispatcher$PointerEvent;

    .end local p1    # "event":Lorg/microemu/device/ui/EventDispatcher$Event;
    invoke-static {p1}, Lorg/microemu/device/ui/EventDispatcher$PointerEvent;->access$200(Lorg/microemu/device/ui/EventDispatcher$PointerEvent;)I

    move-result v2

    invoke-static {v1, v2}, Lorg/microemu/device/ui/EventDispatcher$PointerEvent;->access$202(Lorg/microemu/device/ui/EventDispatcher$PointerEvent;I)I

    goto :goto_0

    .line 139
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 124
    .restart local p1    # "event":Lorg/microemu/device/ui/EventDispatcher$Event;
    :cond_1
    :try_start_1
    instance-of v1, p1, Lorg/microemu/device/ui/EventDispatcher$PaintEvent;

    if-eqz v1, :cond_2

    .line 125
    move-object v0, p1

    check-cast v0, Lorg/microemu/device/ui/EventDispatcher$PaintEvent;

    move-object v1, v0

    iput-object v1, p0, Lorg/microemu/device/ui/EventDispatcher;->scheduledPaintEvent:Lorg/microemu/device/ui/EventDispatcher$PaintEvent;

    .line 127
    :cond_2
    instance-of v1, p1, Lorg/microemu/device/ui/EventDispatcher$PointerEvent;

    if-eqz v1, :cond_3

    move-object v0, p1

    check-cast v0, Lorg/microemu/device/ui/EventDispatcher$PointerEvent;

    move-object v1, v0

    invoke-static {v1}, Lorg/microemu/device/ui/EventDispatcher$PointerEvent;->access$000(Lorg/microemu/device/ui/EventDispatcher$PointerEvent;)S

    move-result v1

    if-ne v1, v2, :cond_3

    .line 128
    move-object v0, p1

    check-cast v0, Lorg/microemu/device/ui/EventDispatcher$PointerEvent;

    move-object v1, v0

    iput-object v1, p0, Lorg/microemu/device/ui/EventDispatcher;->scheduledPointerDraggedEvent:Lorg/microemu/device/ui/EventDispatcher$PointerEvent;

    .line 130
    :cond_3
    iget-object v1, p0, Lorg/microemu/device/ui/EventDispatcher;->tail:Lorg/microemu/device/ui/EventDispatcher$Event;

    if-eqz v1, :cond_4

    .line 131
    iget-object v1, p0, Lorg/microemu/device/ui/EventDispatcher;->tail:Lorg/microemu/device/ui/EventDispatcher$Event;

    iput-object p1, v1, Lorg/microemu/device/ui/EventDispatcher$Event;->next:Lorg/microemu/device/ui/EventDispatcher$Event;

    .line 133
    :cond_4
    iput-object p1, p0, Lorg/microemu/device/ui/EventDispatcher;->tail:Lorg/microemu/device/ui/EventDispatcher$Event;

    .line 134
    iget-object v1, p0, Lorg/microemu/device/ui/EventDispatcher;->head:Lorg/microemu/device/ui/EventDispatcher$Event;

    if-nez v1, :cond_5

    .line 135
    iput-object p1, p0, Lorg/microemu/device/ui/EventDispatcher;->head:Lorg/microemu/device/ui/EventDispatcher$Event;

    .line 137
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public run()V
    .locals 10

    .prologue
    .line 54
    :cond_0
    :goto_0
    iget-boolean v5, p0, Lorg/microemu/device/ui/EventDispatcher;->cancelled:Z

    if-nez v5, :cond_6

    .line 55
    const/4 v4, 0x0

    .line 56
    .local v4, "event":Lorg/microemu/device/ui/EventDispatcher$Event;
    monitor-enter p0

    .line 57
    :try_start_0
    iget-object v5, p0, Lorg/microemu/device/ui/EventDispatcher;->head:Lorg/microemu/device/ui/EventDispatcher$Event;

    if-eqz v5, :cond_4

    .line 58
    iget-object v4, p0, Lorg/microemu/device/ui/EventDispatcher;->head:Lorg/microemu/device/ui/EventDispatcher$Event;

    .line 60
    sget v5, Lorg/microemu/device/ui/EventDispatcher;->maxFps:I

    if-lez v5, :cond_1

    instance-of v5, v4, Lorg/microemu/device/ui/EventDispatcher$PaintEvent;

    if-eqz v5, :cond_1

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lorg/microemu/device/ui/EventDispatcher;->lastPaintEventTime:J

    sub-long v2, v6, v8

    .line 62
    .local v2, "difference":J
    const/16 v5, 0x3e8

    sget v6, Lorg/microemu/device/ui/EventDispatcher;->maxFps:I

    div-int/2addr v5, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    int-to-long v6, v5

    cmp-long v5, v2, v6

    if-gez v5, :cond_1

    .line 63
    const/4 v4, 0x0

    .line 65
    const/16 v5, 0x3e8

    :try_start_1
    sget v6, Lorg/microemu/device/ui/EventDispatcher;->maxFps:I

    div-int/2addr v5, v6

    int-to-long v6, v5

    sub-long/2addr v6, v2

    invoke-virtual {p0, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 71
    .end local v2    # "difference":J
    :cond_1
    :goto_1
    if-eqz v4, :cond_3

    .line 72
    :try_start_2
    iget-object v5, v4, Lorg/microemu/device/ui/EventDispatcher$Event;->next:Lorg/microemu/device/ui/EventDispatcher$Event;

    iput-object v5, p0, Lorg/microemu/device/ui/EventDispatcher;->head:Lorg/microemu/device/ui/EventDispatcher$Event;

    .line 73
    iget-object v5, p0, Lorg/microemu/device/ui/EventDispatcher;->head:Lorg/microemu/device/ui/EventDispatcher$Event;

    if-nez v5, :cond_2

    .line 74
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/microemu/device/ui/EventDispatcher;->tail:Lorg/microemu/device/ui/EventDispatcher$Event;

    .line 76
    :cond_2
    instance-of v5, v4, Lorg/microemu/device/ui/EventDispatcher$PointerEvent;

    if-eqz v5, :cond_3

    move-object v0, v4

    check-cast v0, Lorg/microemu/device/ui/EventDispatcher$PointerEvent;

    move-object v5, v0

    invoke-static {v5}, Lorg/microemu/device/ui/EventDispatcher$PointerEvent;->access$000(Lorg/microemu/device/ui/EventDispatcher$PointerEvent;)S

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 77
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/microemu/device/ui/EventDispatcher;->scheduledPointerDraggedEvent:Lorg/microemu/device/ui/EventDispatcher$PointerEvent;

    .line 86
    :cond_3
    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 88
    if-eqz v4, :cond_0

    .line 89
    instance-of v5, v4, Lorg/microemu/device/ui/EventDispatcher$PaintEvent;

    if-eqz v5, :cond_5

    .line 90
    iget-object v6, p0, Lorg/microemu/device/ui/EventDispatcher;->serviceRepaintsLock:Ljava/lang/Object;

    monitor-enter v6

    .line 91
    :try_start_3
    monitor-enter p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 92
    const/4 v5, 0x0

    :try_start_4
    iput-object v5, p0, Lorg/microemu/device/ui/EventDispatcher;->scheduledPaintEvent:Lorg/microemu/device/ui/EventDispatcher$PaintEvent;

    .line 93
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 94
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lorg/microemu/device/ui/EventDispatcher;->lastPaintEventTime:J

    .line 95
    invoke-virtual {p0, v4}, Lorg/microemu/device/ui/EventDispatcher;->post(Lorg/microemu/device/ui/EventDispatcher$Event;)V

    .line 96
    iget-object v5, p0, Lorg/microemu/device/ui/EventDispatcher;->serviceRepaintsLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 97
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v5

    .line 82
    :cond_4
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    .line 83
    :catch_0
    move-exception v5

    goto :goto_2

    .line 86
    :catchall_1
    move-exception v5

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v5

    .line 93
    :catchall_2
    move-exception v5

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 99
    :cond_5
    invoke-virtual {p0, v4}, Lorg/microemu/device/ui/EventDispatcher;->post(Lorg/microemu/device/ui/EventDispatcher$Event;)V

    goto/16 :goto_0

    .line 103
    .end local v4    # "event":Lorg/microemu/device/ui/EventDispatcher$Event;
    :cond_6
    return-void

    .line 66
    .restart local v2    # "difference":J
    .restart local v4    # "event":Lorg/microemu/device/ui/EventDispatcher$Event;
    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method public serviceRepaints()V
    .locals 2

    .prologue
    .line 147
    iget-object v1, p0, Lorg/microemu/device/ui/EventDispatcher;->serviceRepaintsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 148
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    :try_start_1
    iget-object v0, p0, Lorg/microemu/device/ui/EventDispatcher;->scheduledPaintEvent:Lorg/microemu/device/ui/EventDispatcher$PaintEvent;

    if-nez v0, :cond_0

    .line 150
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 161
    :goto_0
    return-void

    .line 154
    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 157
    :try_start_4
    iget-object v0, p0, Lorg/microemu/device/ui/EventDispatcher;->serviceRepaintsLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 160
    :goto_1
    :try_start_5
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    .line 154
    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 158
    :catch_0
    move-exception v0

    goto :goto_1
.end method
