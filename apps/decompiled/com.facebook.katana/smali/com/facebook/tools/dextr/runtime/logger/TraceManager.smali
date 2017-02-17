.class public Lcom/facebook/tools/dextr/runtime/logger/TraceManager;
.super Ljava/lang/Object;
.source "TraceManager.java"


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


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/facebook/tools/dextr/runtime/logger/TraceManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/facebook/tools/dextr/runtime/logger/TraceManager$TracingMode;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/atomic/AtomicLong;

.field private final d:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/facebook/tools/dextr/runtime/logger/TraceManager;->a:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/facebook/tools/dextr/runtime/logger/TraceManager$TracingMode;->DISABLED:Lcom/facebook/tools/dextr/runtime/logger/TraceManager$TracingMode;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/tools/dextr/runtime/logger/TraceManager;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 60
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/facebook/tools/dextr/runtime/logger/TraceManager;->c:Ljava/util/concurrent/atomic/AtomicLong;

    .line 61
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/facebook/tools/dextr/runtime/logger/TraceManager;->d:Ljava/util/Random;

    .line 62
    return-void
.end method

.method public static a()V
    .locals 3

    .prologue
    .line 36
    new-instance v0, Lcom/facebook/tools/dextr/runtime/logger/TraceManager;

    invoke-direct {v0}, Lcom/facebook/tools/dextr/runtime/logger/TraceManager;-><init>()V

    .line 37
    sget-object v1, Lcom/facebook/tools/dextr/runtime/logger/TraceManager;->a:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    return-void
.end method

.method public static b()Lcom/facebook/tools/dextr/runtime/logger/TraceManager;
    .locals 1
    .annotation build Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 42
    sget-object v0, Lcom/facebook/tools/dextr/runtime/logger/TraceManager;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/tools/dextr/runtime/logger/TraceManager;

    return-object v0
.end method

.method public static c()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 46
    sget-object v0, Lcom/facebook/tools/dextr/runtime/logger/TraceManager;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/tools/dextr/runtime/logger/TraceManager;

    .line 48
    if-nez v0, :cond_0

    move v0, v1

    .line 51
    :goto_0
    return v0

    :cond_0
    iget-object v0, v0, Lcom/facebook/tools/dextr/runtime/logger/TraceManager;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/facebook/tools/dextr/runtime/logger/TraceManager$TracingMode;->DISABLED:Lcom/facebook/tools/dextr/runtime/logger/TraceManager$TracingMode;

    if-ne v0, v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j()J
    .locals 6

    .prologue
    .line 155
    :cond_0
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/logger/TraceManager;->d:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 156
    iget-object v2, p0, Lcom/facebook/tools/dextr/runtime/logger/TraceManager;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 157
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/facebook/tools/dextr/runtime/logger/TraceManager;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4, v2, v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 159
    return-wide v0
.end method


# virtual methods
.method public final a(Lcom/facebook/tools/dextr/runtime/logger/TraceManager$TracingMode;)V
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/facebook/tools/dextr/runtime/logger/TraceManager;->i()V

    .line 66
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/logger/TraceManager;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 67
    return-void
.end method

.method public final a(Z)V
    .locals 3

    .prologue
    .line 130
    if-eqz p1, :cond_0

    .line 131
    invoke-static {}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->d()V

    .line 136
    :goto_0
    const/4 v0, 0x0

    .line 137
    :goto_1
    if-nez v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/logger/TraceManager;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/facebook/tools/dextr/runtime/logger/TraceManager$TracingMode;->SAMPLING_SAVING:Lcom/facebook/tools/dextr/runtime/logger/TraceManager$TracingMode;

    if-ne v0, v1, :cond_1

    .line 139
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/logger/TraceManager;->b:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/facebook/tools/dextr/runtime/logger/TraceManager$TracingMode;->SAMPLING_SAVING:Lcom/facebook/tools/dextr/runtime/logger/TraceManager$TracingMode;

    sget-object v2, Lcom/facebook/tools/dextr/runtime/logger/TraceManager$TracingMode;->SAMPLING:Lcom/facebook/tools/dextr/runtime/logger/TraceManager$TracingMode;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    .line 133
    :cond_0
    invoke-static {}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->c()V

    goto :goto_0

    .line 145
    :cond_1
    return-void
.end method

.method public final a(I)Z
    .locals 3

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/facebook/tools/dextr/runtime/logger/TraceManager;->j()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(JI)V

    .line 107
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/logger/TraceManager;->b:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/facebook/tools/dextr/runtime/logger/TraceManager$TracingMode;->SAMPLING:Lcom/facebook/tools/dextr/runtime/logger/TraceManager$TracingMode;

    sget-object v2, Lcom/facebook/tools/dextr/runtime/logger/TraceManager$TracingMode;->SAMPLING_SAVING:Lcom/facebook/tools/dextr/runtime/logger/TraceManager$TracingMode;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    const/4 v0, 0x1

    .line 110
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/logger/TraceManager;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/tools/dextr/runtime/logger/TraceManager$TracingMode;

    .line 72
    sget-object v1, Lcom/facebook/tools/dextr/runtime/logger/TraceManager$TracingMode;->SAMPLING:Lcom/facebook/tools/dextr/runtime/logger/TraceManager$TracingMode;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/facebook/tools/dextr/runtime/logger/TraceManager$TracingMode;->SAMPLING_SAVING:Lcom/facebook/tools/dextr/runtime/logger/TraceManager$TracingMode;

    if-eq v0, v1, :cond_0

    .line 73
    sget-object v0, Lcom/facebook/tools/dextr/runtime/logger/TraceManager$TracingMode;->SAMPLING:Lcom/facebook/tools/dextr/runtime/logger/TraceManager$TracingMode;

    invoke-virtual {p0, v0}, Lcom/facebook/tools/dextr/runtime/logger/TraceManager;->a(Lcom/facebook/tools/dextr/runtime/logger/TraceManager$TracingMode;)V

    .line 75
    :cond_0
    return-void
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/logger/TraceManager;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public final f()Z
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/logger/TraceManager;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/facebook/tools/dextr/runtime/logger/TraceManager$TracingMode;->DISABLED:Lcom/facebook/tools/dextr/runtime/logger/TraceManager$TracingMode;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Z
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/logger/TraceManager;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/facebook/tools/dextr/runtime/logger/TraceManager$TracingMode;->SAMPLING_SAVING:Lcom/facebook/tools/dextr/runtime/logger/TraceManager$TracingMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Z
    .locals 3

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/facebook/tools/dextr/runtime/logger/TraceManager;->j()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(J)V

    .line 116
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/logger/TraceManager;->b:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/facebook/tools/dextr/runtime/logger/TraceManager$TracingMode;->SAMPLING:Lcom/facebook/tools/dextr/runtime/logger/TraceManager$TracingMode;

    sget-object v2, Lcom/facebook/tools/dextr/runtime/logger/TraceManager$TracingMode;->SAMPLING_SAVING:Lcom/facebook/tools/dextr/runtime/logger/TraceManager$TracingMode;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    const/4 v0, 0x1

    .line 119
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final declared-synchronized i()V
    .locals 1

    .prologue
    .line 149
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/facebook/tools/dextr/runtime/logger/TraceManager;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    monitor-exit p0

    return-void

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
