.class public Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;
.super Ljava/lang/Object;
.source "HandlerDetour.java"


# static fields
.field private static final a:Lcom/facebook/tools/dextr/runtime/detour/ChainedWeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/tools/dextr/runtime/detour/ChainedWeakReference",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    invoke-static {}, Lcom/facebook/tools/dextr/runtime/detour/ChainedWeakReference;->a()Lcom/facebook/tools/dextr/runtime/detour/ChainedWeakReference;

    move-result-object v0

    sput-object v0, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->a:Lcom/facebook/tools/dextr/runtime/detour/ChainedWeakReference;

    .line 31
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->b:Ljava/lang/ref/ReferenceQueue;

    .line 32
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->c:Ljava/lang/ref/ReferenceQueue;

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Runnable;I)Ljava/lang/Runnable;
    .locals 2

    .prologue
    .line 73
    invoke-static {}, Lcom/facebook/tools/dextr/runtime/logger/TraceManager;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    :goto_0
    return-object p0

    .line 77
    :cond_0
    sget-object v0, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->ASYNC_CALL:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    invoke-static {v0, p1}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;I)I

    move-result v1

    .line 78
    new-instance v0, Lcom/facebook/tools/dextr/runtime/detour/RunnableWrapper;

    invoke-direct {v0, p0, v1, p1}, Lcom/facebook/tools/dextr/runtime/detour/RunnableWrapper;-><init>(Ljava/lang/Runnable;II)V

    .line 80
    invoke-static {p0, v0}, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->a(Ljava/lang/Runnable;Lcom/facebook/tools/dextr/runtime/detour/RunnableWrapper;)V

    move-object p0, v0

    .line 81
    goto :goto_0
.end method

.method private static a()V
    .locals 5

    .prologue
    const/16 v4, 0x32

    .line 136
    invoke-static {}, Lcom/facebook/tools/dextr/runtime/logger/TraceManager;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    sget-object v0, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    if-lt v0, v4, :cond_0

    .line 143
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 148
    sget-object v1, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->a:Lcom/facebook/tools/dextr/runtime/detour/ChainedWeakReference;

    monitor-enter v1

    .line 149
    :try_start_0
    sget-object v0, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ge v0, v4, :cond_2

    .line 151
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 156
    :cond_2
    :goto_1
    :try_start_1
    sget-object v0, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->b:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 157
    check-cast v0, Lcom/facebook/tools/dextr/runtime/detour/ChainedWeakReference;

    .line 158
    invoke-virtual {v0}, Lcom/facebook/tools/dextr/runtime/detour/ChainedWeakReference;->b()V

    goto :goto_1

    .line 161
    :cond_3
    :goto_2
    sget-object v0, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->c:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 162
    check-cast v0, Lcom/facebook/tools/dextr/runtime/detour/ChainedWeakReference;

    .line 163
    invoke-virtual {v0}, Lcom/facebook/tools/dextr/runtime/detour/ChainedWeakReference;->b()V

    goto :goto_2

    .line 165
    :cond_4
    sget-object v0, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 166
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public static a(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 108
    sget-object v2, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->a:Lcom/facebook/tools/dextr/runtime/detour/ChainedWeakReference;

    monitor-enter v2

    .line 109
    :try_start_0
    sget-object v0, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->a:Lcom/facebook/tools/dextr/runtime/detour/ChainedWeakReference;

    invoke-static {v0, p1}, Lcom/facebook/tools/dextr/runtime/detour/ChainedWeakReference;->a(Lcom/facebook/tools/dextr/runtime/detour/ChainedWeakReference;Ljava/lang/Object;)Lcom/facebook/tools/dextr/runtime/detour/ChainedWeakReference;

    move-result-object v3

    .line 112
    sget-object v0, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->a:Lcom/facebook/tools/dextr/runtime/detour/ChainedWeakReference;

    if-eq v3, v0, :cond_1

    .line 114
    iget-object v0, v3, Lcom/facebook/tools/dextr/runtime/detour/ChainedWeakReference;->b:Lcom/facebook/tools/dextr/runtime/detour/ChainedWeakReference;

    move-object v1, v0

    .line 115
    :goto_0
    if-eq v1, v3, :cond_1

    .line 116
    invoke-virtual {v1}, Lcom/facebook/tools/dextr/runtime/detour/ChainedWeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 117
    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 120
    :cond_0
    iget-object v0, v1, Lcom/facebook/tools/dextr/runtime/detour/ChainedWeakReference;->b:Lcom/facebook/tools/dextr/runtime/detour/ChainedWeakReference;

    move-object v1, v0

    .line 121
    goto :goto_0

    .line 123
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    invoke-static {}, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->a()V

    .line 126
    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private static a(Ljava/lang/Runnable;Lcom/facebook/tools/dextr/runtime/detour/RunnableWrapper;)V
    .locals 4

    .prologue
    .line 85
    sget-object v1, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->a:Lcom/facebook/tools/dextr/runtime/detour/ChainedWeakReference;

    monitor-enter v1

    .line 86
    :try_start_0
    sget-object v0, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->a:Lcom/facebook/tools/dextr/runtime/detour/ChainedWeakReference;

    invoke-static {v0, p0}, Lcom/facebook/tools/dextr/runtime/detour/ChainedWeakReference;->a(Lcom/facebook/tools/dextr/runtime/detour/ChainedWeakReference;Ljava/lang/Object;)Lcom/facebook/tools/dextr/runtime/detour/ChainedWeakReference;

    move-result-object v0

    .line 89
    sget-object v2, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->a:Lcom/facebook/tools/dextr/runtime/detour/ChainedWeakReference;

    if-ne v0, v2, :cond_0

    .line 91
    new-instance v0, Lcom/facebook/tools/dextr/runtime/detour/ChainedWeakReference;

    sget-object v2, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->b:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p0, v2}, Lcom/facebook/tools/dextr/runtime/detour/ChainedWeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 92
    sget-object v2, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->a:Lcom/facebook/tools/dextr/runtime/detour/ChainedWeakReference;

    invoke-virtual {v2, v0}, Lcom/facebook/tools/dextr/runtime/detour/ChainedWeakReference;->b(Lcom/facebook/tools/dextr/runtime/detour/ChainedWeakReference;)V

    .line 94
    :cond_0
    new-instance v2, Lcom/facebook/tools/dextr/runtime/detour/ChainedWeakReference;

    sget-object v3, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->c:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v2, p1, v3}, Lcom/facebook/tools/dextr/runtime/detour/ChainedWeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {v0, v2}, Lcom/facebook/tools/dextr/runtime/detour/ChainedWeakReference;->a(Lcom/facebook/tools/dextr/runtime/detour/ChainedWeakReference;)V

    .line 95
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    invoke-static {}, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->a()V

    .line 98
    return-void

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/os/Handler;Ljava/lang/Runnable;I)Z
    .locals 1

    .prologue
    .line 37
    invoke-static {p1, p2}, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->a(Ljava/lang/Runnable;I)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/os/Handler;Ljava/lang/Runnable;J)Z
    .locals 2

    .prologue
    .line 50
    const v0, -0x38704db9

    invoke-static {p1, v0}, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->a(Ljava/lang/Runnable;I)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/os/Handler;Ljava/lang/Runnable;JI)Z
    .locals 2

    .prologue
    .line 69
    invoke-static {p1, p4}, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->a(Ljava/lang/Runnable;I)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;J)Z
    .locals 1

    .prologue
    .line 60
    const v0, -0x6d4dfab3

    invoke-static {p1, v0}, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->a(Ljava/lang/Runnable;I)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/os/Handler;Ljava/lang/Runnable;I)Z
    .locals 1

    .prologue
    .line 41
    invoke-static {p1, p2}, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->a(Ljava/lang/Runnable;I)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method
