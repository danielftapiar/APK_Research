.class public Lcom/facebook/tools/dextr/runtime/logger/RealLogger;
.super Lcom/facebook/tools/dextr/runtime/logger/Logger;
.source "RealLogger.java"


# instance fields
.field private final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final d:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/facebook/tools/dextr/runtime/logger/NativeRingBuffer$Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/facebook/tools/dextr/runtime/logger/NativeRingBuffer;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private volatile f:Z

.field private g:Lcom/facebook/tools/dextr/runtime/logger/LoggerWorkerThread;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private volatile h:Lcom/facebook/tools/dextr/runtime/logger/TraceSampler;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final i:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/facebook/tools/dextr/runtime/logger/LogEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/facebook/tools/dextr/runtime/logger/Logger;-><init>()V

    .line 27
    new-instance v0, Lcom/facebook/tools/dextr/runtime/logger/RealLogger$1;

    invoke-direct {v0, p0}, Lcom/facebook/tools/dextr/runtime/logger/RealLogger$1;-><init>(Lcom/facebook/tools/dextr/runtime/logger/RealLogger;)V

    iput-object v0, p0, Lcom/facebook/tools/dextr/runtime/logger/RealLogger;->i:Ljava/lang/ThreadLocal;

    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/tools/dextr/runtime/logger/RealLogger;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 36
    new-instance v0, Lcom/facebook/tools/dextr/runtime/logger/NativeRingBuffer;

    invoke-direct {v0}, Lcom/facebook/tools/dextr/runtime/logger/NativeRingBuffer;-><init>()V

    iput-object v0, p0, Lcom/facebook/tools/dextr/runtime/logger/RealLogger;->e:Lcom/facebook/tools/dextr/runtime/logger/NativeRingBuffer;

    .line 37
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/facebook/tools/dextr/runtime/logger/RealLogger;->d:Ljava/util/concurrent/BlockingQueue;

    .line 38
    return-void
.end method

.method private a(Lcom/facebook/tools/dextr/runtime/logger/NativeRingBuffer$Cursor;Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;IILjava/lang/String;J)I
    .locals 22
    .param p1    # Lcom/facebook/tools/dextr/runtime/logger/NativeRingBuffer$Cursor;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 86
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/tools/dextr/runtime/logger/RealLogger;->g:Lcom/facebook/tools/dextr/runtime/logger/LoggerWorkerThread;

    .line 87
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/facebook/tools/dextr/runtime/logger/RealLogger;->f:Z

    if-nez v3, :cond_0

    if-nez v2, :cond_2

    .line 88
    :cond_0
    const/4 v4, -0x1

    .line 131
    :cond_1
    :goto_0
    return v4

    .line 91
    :cond_2
    invoke-static {}, Lcom/facebook/tools/dextr/runtime/logger/TraceManager;->c()Z

    move-result v2

    .line 93
    invoke-static/range {p2 .. p2}, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->isControlEntry(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;)Z

    move-result v20

    .line 96
    if-eqz v2, :cond_3

    if-nez v20, :cond_3

    .line 97
    const/4 v4, -0x1

    goto :goto_0

    .line 102
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/tools/dextr/runtime/logger/RealLogger;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v4

    .line 104
    if-eqz v4, :cond_3

    const/4 v2, -0x1

    if-eq v4, v2, :cond_3

    .line 105
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 106
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v8

    .line 108
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/tools/dextr/runtime/logger/RealLogger;->i:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/tools/dextr/runtime/logger/LogEntry;

    move-object/from16 v5, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v11, p5

    move-wide/from16 v12, p6

    .line 109
    invoke-virtual/range {v3 .. v13}, Lcom/facebook/tools/dextr/runtime/logger/LogEntry;->a(ILcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;JIIILjava/lang/String;J)Lcom/facebook/tools/dextr/runtime/logger/LogEntry;

    .line 111
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/tools/dextr/runtime/logger/RealLogger;->h:Lcom/facebook/tools/dextr/runtime/logger/TraceSampler;

    .line 112
    if-eqz v2, :cond_4

    if-nez v20, :cond_4

    invoke-interface {v2, v3}, Lcom/facebook/tools/dextr/runtime/logger/TraceSampler;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 113
    const/4 v4, -0x1

    goto :goto_0

    .line 116
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->ordinal()I

    move-result v12

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move v11, v4

    move v13, v8

    move/from16 v14, p3

    move/from16 v15, p4

    move-wide/from16 v16, v6

    move-wide/from16 v18, p6

    invoke-direct/range {v9 .. v19}, Lcom/facebook/tools/dextr/runtime/logger/RealLogger;->a(Lcom/facebook/tools/dextr/runtime/logger/NativeRingBuffer$Cursor;IIIIIJJ)V

    .line 127
    if-eqz v2, :cond_1

    if-nez v20, :cond_1

    .line 128
    invoke-interface {v2, v3}, Lcom/facebook/tools/dextr/runtime/logger/TraceSampler;->b(Lcom/facebook/tools/dextr/runtime/logger/LogEntry;)Z

    goto :goto_0
.end method

.method private a(Lcom/facebook/tools/dextr/runtime/logger/NativeRingBuffer$Cursor;IIIIIJJ)V
    .locals 11
    .param p1    # Lcom/facebook/tools/dextr/runtime/logger/NativeRingBuffer$Cursor;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 144
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/logger/RealLogger;->e:Lcom/facebook/tools/dextr/runtime/logger/NativeRingBuffer;

    .line 145
    if-nez v0, :cond_0

    .line 154
    :goto_0
    return-void

    .line 149
    :cond_0
    if-nez p1, :cond_1

    move v1, p2

    move v2, p3

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-wide/from16 v6, p7

    move-wide/from16 v8, p9

    .line 150
    invoke-virtual/range {v0 .. v9}, Lcom/facebook/tools/dextr/runtime/logger/NativeRingBuffer;->a(IIIIIJJ)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    .line 152
    invoke-virtual/range {v0 .. v10}, Lcom/facebook/tools/dextr/runtime/logger/NativeRingBuffer;->a(Lcom/facebook/tools/dextr/runtime/logger/NativeRingBuffer$Cursor;IIIIIJJ)V

    goto :goto_0
.end method


# virtual methods
.method protected final a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;IILjava/lang/String;J)I
    .locals 9
    .param p4    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 56
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/facebook/tools/dextr/runtime/logger/RealLogger;->a(Lcom/facebook/tools/dextr/runtime/logger/NativeRingBuffer$Cursor;Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;IILjava/lang/String;J)I

    move-result v0

    return v0
.end method

.method protected final a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;IJ)I
    .locals 9

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/facebook/tools/dextr/runtime/logger/RealLogger;->f:Z

    if-eqz v0, :cond_0

    .line 63
    const/4 v0, -0x1

    .line 75
    :goto_0
    return v0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/logger/RealLogger;->e:Lcom/facebook/tools/dextr/runtime/logger/NativeRingBuffer;

    .line 67
    if-nez v0, :cond_1

    .line 68
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Logger enabled but buffer is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/tools/dextr/runtime/logger/NativeRingBuffer;->a()Lcom/facebook/tools/dextr/runtime/logger/NativeRingBuffer$Cursor;

    move-result-object v1

    .line 72
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move v4, p2

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/facebook/tools/dextr/runtime/logger/RealLogger;->a(Lcom/facebook/tools/dextr/runtime/logger/NativeRingBuffer$Cursor;Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;IILjava/lang/String;J)I

    move-result v0

    .line 73
    iget-object v2, p0, Lcom/facebook/tools/dextr/runtime/logger/RealLogger;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected final a()V
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/tools/dextr/runtime/logger/RealLogger;->f:Z

    .line 179
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/tools/dextr/runtime/logger/RealLogger;->e:Lcom/facebook/tools/dextr/runtime/logger/NativeRingBuffer;

    .line 180
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/logger/RealLogger;->g:Lcom/facebook/tools/dextr/runtime/logger/LoggerWorkerThread;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/logger/RealLogger;->g:Lcom/facebook/tools/dextr/runtime/logger/LoggerWorkerThread;

    invoke-virtual {v0}, Lcom/facebook/tools/dextr/runtime/logger/LoggerWorkerThread;->a()V

    .line 183
    :cond_0
    return-void
.end method

.method protected final declared-synchronized a(Ljava/io/File;Lcom/facebook/tools/dextr/runtime/logger/Trace$ClosedListener;)V
    .locals 3

    .prologue
    .line 163
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/logger/RealLogger;->e:Lcom/facebook/tools/dextr/runtime/logger/NativeRingBuffer;

    .line 164
    iget-boolean v1, p0, Lcom/facebook/tools/dextr/runtime/logger/RealLogger;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    if-nez v0, :cond_1

    .line 174
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 168
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/facebook/tools/dextr/runtime/logger/RealLogger;->g:Lcom/facebook/tools/dextr/runtime/logger/LoggerWorkerThread;

    if-eqz v1, :cond_2

    .line 169
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to start a second worker thread!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 172
    :cond_2
    :try_start_2
    new-instance v1, Lcom/facebook/tools/dextr/runtime/logger/LoggerWorkerThread;

    iget-object v2, p0, Lcom/facebook/tools/dextr/runtime/logger/RealLogger;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {v1, v0, p1, p2, v2}, Lcom/facebook/tools/dextr/runtime/logger/LoggerWorkerThread;-><init>(Lcom/facebook/tools/dextr/runtime/logger/NativeRingBuffer;Ljava/io/File;Lcom/facebook/tools/dextr/runtime/logger/Trace$ClosedListener;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/facebook/tools/dextr/runtime/logger/RealLogger;->g:Lcom/facebook/tools/dextr/runtime/logger/LoggerWorkerThread;

    .line 173
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/logger/RealLogger;->g:Lcom/facebook/tools/dextr/runtime/logger/LoggerWorkerThread;

    invoke-virtual {v0}, Lcom/facebook/tools/dextr/runtime/logger/LoggerWorkerThread;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected final declared-synchronized a(Lcom/facebook/tools/dextr/runtime/logger/TraceSampler;)Z
    .locals 1
    .param p1    # Lcom/facebook/tools/dextr/runtime/logger/TraceSampler;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 42
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/logger/RealLogger;->h:Lcom/facebook/tools/dextr/runtime/logger/TraceSampler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    .line 43
    const/4 v0, 0x0

    .line 46
    :goto_0
    monitor-exit p0

    return v0

    .line 45
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/facebook/tools/dextr/runtime/logger/RealLogger;->h:Lcom/facebook/tools/dextr/runtime/logger/TraceSampler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    const/4 v0, 0x1

    goto :goto_0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
