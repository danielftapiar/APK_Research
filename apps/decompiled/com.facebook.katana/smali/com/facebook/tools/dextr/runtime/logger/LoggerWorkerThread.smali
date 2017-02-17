.class Lcom/facebook/tools/dextr/runtime/logger/LoggerWorkerThread;
.super Ljava/lang/Thread;
.source "LoggerWorkerThread.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "BadMethodUse-android.util.Log.v",
        "BadMethodUse-android.util.Log.d",
        "BadMethodUse-android.util.Log.i",
        "BadMethodUse-android.util.Log.w",
        "BadMethodUse-android.util.Log.e"
    }
.end annotation


# instance fields
.field private final a:Ljava/io/File;

.field private volatile b:Z

.field private volatile c:Lcom/facebook/tools/dextr/runtime/logger/NativeRingBuffer;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final d:Lcom/facebook/tools/dextr/runtime/logger/LogEntry;

.field private final e:Lcom/facebook/tools/dextr/runtime/logger/Trace$ClosedListener;

.field private final f:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/facebook/tools/dextr/runtime/logger/NativeRingBuffer$Cursor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/facebook/tools/dextr/runtime/logger/NativeRingBuffer;Ljava/io/File;Lcom/facebook/tools/dextr/runtime/logger/Trace$ClosedListener;Ljava/util/concurrent/BlockingQueue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/tools/dextr/runtime/logger/NativeRingBuffer;",
            "Ljava/io/File;",
            "Lcom/facebook/tools/dextr/runtime/logger/Trace$ClosedListener;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/facebook/tools/dextr/runtime/logger/NativeRingBuffer$Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    const-string v0, "dextr-worker"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 57
    new-instance v0, Lcom/facebook/tools/dextr/runtime/logger/LoggerWorkerThread$1;

    invoke-direct {v0, p0}, Lcom/facebook/tools/dextr/runtime/logger/LoggerWorkerThread$1;-><init>(Lcom/facebook/tools/dextr/runtime/logger/LoggerWorkerThread;)V

    invoke-virtual {p0, v0}, Lcom/facebook/tools/dextr/runtime/logger/LoggerWorkerThread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 66
    new-instance v0, Lcom/facebook/tools/dextr/runtime/logger/LogEntry;

    invoke-direct {v0}, Lcom/facebook/tools/dextr/runtime/logger/LogEntry;-><init>()V

    iput-object v0, p0, Lcom/facebook/tools/dextr/runtime/logger/LoggerWorkerThread;->d:Lcom/facebook/tools/dextr/runtime/logger/LogEntry;

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/tools/dextr/runtime/logger/LoggerWorkerThread;->b:Z

    .line 68
    iput-object p1, p0, Lcom/facebook/tools/dextr/runtime/logger/LoggerWorkerThread;->c:Lcom/facebook/tools/dextr/runtime/logger/NativeRingBuffer;

    .line 69
    iput-object p3, p0, Lcom/facebook/tools/dextr/runtime/logger/LoggerWorkerThread;->e:Lcom/facebook/tools/dextr/runtime/logger/Trace$ClosedListener;

    .line 70
    iput-object p2, p0, Lcom/facebook/tools/dextr/runtime/logger/LoggerWorkerThread;->a:Ljava/io/File;

    .line 71
    iput-object p4, p0, Lcom/facebook/tools/dextr/runtime/logger/LoggerWorkerThread;->f:Ljava/util/concurrent/BlockingQueue;

    .line 72
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/io/File;I)Lcom/facebook/tools/dextr/runtime/logger/LogWriter;
    .locals 3

    .prologue
    .line 193
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 194
    new-instance v1, Lcom/facebook/tools/dextr/runtime/logger/FileLogWriter;

    invoke-direct {v1, p0, v0}, Lcom/facebook/tools/dextr/runtime/logger/FileLogWriter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    and-int/lit8 v0, p2, 0x2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 196
    new-instance v0, Lcom/facebook/tools/dextr/runtime/logger/FilteringLogWriter;

    sget-object v2, Lcom/facebook/tools/dextr/bridge/constants/FilterType;->ASYNC:Lcom/facebook/tools/dextr/bridge/constants/FilterType;

    invoke-static {v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/tools/dextr/runtime/logger/FilteringLogWriter;-><init>(Lcom/facebook/tools/dextr/runtime/logger/LogWriter;Ljava/util/EnumSet;)V

    .line 198
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private a(JLjava/io/File;I)Lcom/facebook/tools/dextr/runtime/logger/Trace;
    .locals 5
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 171
    invoke-static {p1, p2}, Lcom/facebook/fbtrace/FbTraceIdHelper;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 173
    const-string v1, "[^\\p{Alnum}]"

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 174
    new-instance v2, Ljava/io/File;

    invoke-static {v1}, Lcom/facebook/tools/dextr/runtime/logger/Trace;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, p3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 175
    invoke-static {v0, v2, p4}, Lcom/facebook/tools/dextr/runtime/logger/LoggerWorkerThread;->a(Ljava/lang/String;Ljava/io/File;I)Lcom/facebook/tools/dextr/runtime/logger/LogWriter;

    move-result-object v0

    .line 181
    new-instance v1, Lcom/facebook/tools/dextr/runtime/logger/Trace;

    iget-object v3, p0, Lcom/facebook/tools/dextr/runtime/logger/LoggerWorkerThread;->e:Lcom/facebook/tools/dextr/runtime/logger/Trace$ClosedListener;

    invoke-direct {v1, v2, v0, p4, v3}, Lcom/facebook/tools/dextr/runtime/logger/Trace;-><init>(Ljava/io/File;Lcom/facebook/tools/dextr/runtime/logger/LogWriter;ILcom/facebook/tools/dextr/runtime/logger/Trace$ClosedListener;)V

    return-object v1
.end method

.method private a(Lcom/facebook/tools/dextr/runtime/logger/LogWriter;Lcom/facebook/tools/dextr/runtime/logger/NativeRingBuffer$Cursor;)V
    .locals 2

    .prologue
    .line 146
    invoke-virtual {p2}, Lcom/facebook/tools/dextr/runtime/logger/NativeRingBuffer$Cursor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/tools/dextr/runtime/logger/NativeRingBuffer$Cursor;

    .line 147
    :goto_0
    iget-object v1, p0, Lcom/facebook/tools/dextr/runtime/logger/LoggerWorkerThread;->d:Lcom/facebook/tools/dextr/runtime/logger/LogEntry;

    invoke-virtual {v0, v1}, Lcom/facebook/tools/dextr/runtime/logger/NativeRingBuffer$Cursor;->tryReadBackward(Lcom/facebook/tools/dextr/runtime/logger/LogEntry;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/facebook/tools/dextr/runtime/logger/LoggerWorkerThread;->d:Lcom/facebook/tools/dextr/runtime/logger/LogEntry;

    invoke-virtual {p1, v1}, Lcom/facebook/tools/dextr/runtime/logger/LogWriter;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry;)J

    goto :goto_0

    .line 150
    :cond_0
    return-void
.end method

.method private static a(Lcom/facebook/tools/dextr/runtime/logger/Trace;)V
    .locals 0
    .param p0    # Lcom/facebook/tools/dextr/runtime/logger/Trace;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 154
    if-eqz p0, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/facebook/tools/dextr/runtime/logger/Trace;->d()V

    .line 156
    invoke-static {p0}, Lcom/facebook/tools/dextr/runtime/logger/Closeables;->a(Ljava/io/Closeable;)V

    .line 158
    :cond_0
    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/tools/dextr/runtime/logger/LoggerWorkerThread;->b:Z

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/tools/dextr/runtime/logger/LoggerWorkerThread;->c:Lcom/facebook/tools/dextr/runtime/logger/NativeRingBuffer;

    .line 163
    return-void
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 75
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 77
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/logger/LoggerWorkerThread;->c:Lcom/facebook/tools/dextr/runtime/logger/NativeRingBuffer;

    .line 78
    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/tools/dextr/runtime/logger/LoggerWorkerThread;->b:Z

    if-nez v0, :cond_2

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/tools/dextr/runtime/logger/LoggerWorkerThread;->a()V

    .line 143
    :cond_1
    return-void

    .line 84
    :cond_2
    iget-object v3, p0, Lcom/facebook/tools/dextr/runtime/logger/LoggerWorkerThread;->f:Ljava/util/concurrent/BlockingQueue;

    move-object v1, v2

    .line 91
    :goto_0
    iget-boolean v0, p0, Lcom/facebook/tools/dextr/runtime/logger/LoggerWorkerThread;->b:Z

    if-eqz v0, :cond_1

    .line 95
    :try_start_0
    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/tools/dextr/runtime/logger/NativeRingBuffer$Cursor;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :cond_3
    iget-object v4, p0, Lcom/facebook/tools/dextr/runtime/logger/LoggerWorkerThread;->d:Lcom/facebook/tools/dextr/runtime/logger/LogEntry;

    invoke-virtual {v0, v4}, Lcom/facebook/tools/dextr/runtime/logger/NativeRingBuffer$Cursor;->waitAndTryReadForward(Lcom/facebook/tools/dextr/runtime/logger/LogEntry;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 103
    iget-object v5, p0, Lcom/facebook/tools/dextr/runtime/logger/LoggerWorkerThread;->d:Lcom/facebook/tools/dextr/runtime/logger/LogEntry;

    invoke-virtual {v5}, Lcom/facebook/tools/dextr/runtime/logger/LogEntry;->b()Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    move-result-object v5

    .line 105
    sget-object v6, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->TRACE_START:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    if-eq v5, v6, :cond_4

    sget-object v6, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->TRACE_BACKWARDS:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    if-ne v5, v6, :cond_5

    .line 106
    :cond_4
    invoke-static {v1}, Lcom/facebook/tools/dextr/runtime/logger/LoggerWorkerThread;->a(Lcom/facebook/tools/dextr/runtime/logger/Trace;)V

    .line 107
    iget-object v1, p0, Lcom/facebook/tools/dextr/runtime/logger/LoggerWorkerThread;->d:Lcom/facebook/tools/dextr/runtime/logger/LogEntry;

    invoke-virtual {v1}, Lcom/facebook/tools/dextr/runtime/logger/LogEntry;->h()J

    move-result-wide v6

    iget-object v1, p0, Lcom/facebook/tools/dextr/runtime/logger/LoggerWorkerThread;->a:Ljava/io/File;

    iget-object v8, p0, Lcom/facebook/tools/dextr/runtime/logger/LoggerWorkerThread;->d:Lcom/facebook/tools/dextr/runtime/logger/LogEntry;

    invoke-virtual {v8}, Lcom/facebook/tools/dextr/runtime/logger/LogEntry;->f()I

    move-result v8

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/facebook/tools/dextr/runtime/logger/LoggerWorkerThread;->a(JLjava/io/File;I)Lcom/facebook/tools/dextr/runtime/logger/Trace;

    move-result-object v1

    .line 110
    :cond_5
    if-eqz v1, :cond_a

    .line 112
    invoke-virtual {v1}, Lcom/facebook/tools/dextr/runtime/logger/Trace;->a()Lcom/facebook/tools/dextr/runtime/logger/LogWriter;

    move-result-object v6

    .line 116
    iget-object v7, p0, Lcom/facebook/tools/dextr/runtime/logger/LoggerWorkerThread;->d:Lcom/facebook/tools/dextr/runtime/logger/LogEntry;

    invoke-virtual {v6, v7}, Lcom/facebook/tools/dextr/runtime/logger/LogWriter;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry;)J

    .line 118
    sget-object v7, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->TRACE_BACKWARDS:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    if-ne v5, v7, :cond_6

    .line 119
    invoke-direct {p0, v6, v0}, Lcom/facebook/tools/dextr/runtime/logger/LoggerWorkerThread;->a(Lcom/facebook/tools/dextr/runtime/logger/LogWriter;Lcom/facebook/tools/dextr/runtime/logger/NativeRingBuffer$Cursor;)V

    .line 122
    :cond_6
    sget-object v6, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->TRACE_ABORT:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    if-ne v5, v6, :cond_7

    .line 123
    invoke-virtual {v1}, Lcom/facebook/tools/dextr/runtime/logger/Trace;->d()V

    .line 126
    :cond_7
    sget-object v6, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->TRACE_ABORT:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    if-eq v5, v6, :cond_8

    sget-object v6, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->TRACE_END:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    if-ne v5, v6, :cond_9

    .line 127
    :cond_8
    invoke-static {v1}, Lcom/facebook/tools/dextr/runtime/logger/Closeables;->a(Ljava/io/Closeable;)V

    move-object v1, v2

    .line 131
    :cond_9
    if-nez v1, :cond_3

    :cond_a
    move-object v0, v1

    .line 133
    if-nez v4, :cond_b

    .line 139
    invoke-static {v0}, Lcom/facebook/tools/dextr/runtime/logger/LoggerWorkerThread;->a(Lcom/facebook/tools/dextr/runtime/logger/Trace;)V

    move-object v0, v2

    :cond_b
    move-object v1, v0

    .line 142
    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    new-instance v0, Lcom/facebook/tools/dextr/runtime/logger/LoggerWorkerThread$LoggerException;

    const-string v1, "Interrupted take() call"

    invoke-direct {v0, v1}, Lcom/facebook/tools/dextr/runtime/logger/LoggerWorkerThread$LoggerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
