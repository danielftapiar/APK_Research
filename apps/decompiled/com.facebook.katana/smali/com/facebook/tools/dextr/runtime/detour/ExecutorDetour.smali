.class public Lcom/facebook/tools/dextr/runtime/detour/ExecutorDetour;
.super Ljava/lang/Object;
.source "ExecutorDetour.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Runnable;I)Ljava/lang/Runnable;
    .locals 2

    .prologue
    .line 26
    invoke-static {}, Lcom/facebook/tools/dextr/runtime/logger/TraceManager;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    :goto_0
    return-object p0

    .line 30
    :cond_0
    sget-object v0, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->ASYNC_CALL:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    invoke-static {v0, p1}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;I)I

    move-result v1

    .line 31
    new-instance v0, Lcom/facebook/tools/dextr/runtime/detour/RunnableWrapper;

    invoke-direct {v0, p0, v1, p1}, Lcom/facebook/tools/dextr/runtime/detour/RunnableWrapper;-><init>(Ljava/lang/Runnable;II)V

    move-object p0, v0

    .line 33
    goto :goto_0
.end method

.method private static a(Ljava/util/concurrent/Callable;I)Ljava/util/concurrent/Callable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Object;",
            ">;I)",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    invoke-static {}, Lcom/facebook/tools/dextr/runtime/logger/TraceManager;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    :goto_0
    return-object p0

    .line 41
    :cond_0
    sget-object v0, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->ASYNC_CALL:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    invoke-static {v0, p1}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;I)I

    move-result v1

    .line 42
    new-instance v0, Lcom/facebook/tools/dextr/runtime/detour/CallableWrapper;

    invoke-direct {v0, p0, v1, p1}, Lcom/facebook/tools/dextr/runtime/detour/CallableWrapper;-><init>(Ljava/util/concurrent/Callable;II)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static a(Ljava/util/concurrent/ExecutorCompletionService;Ljava/util/concurrent/Callable;I)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ExecutorCompletionService",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Object;",
            ">;I)",
            "Ljava/util/concurrent/Future;"
        }
    .end annotation

    .prologue
    .line 49
    invoke-static {p1, p2}, Lcom/facebook/tools/dextr/runtime/detour/ExecutorDetour;->a(Ljava/util/concurrent/Callable;I)Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ExecutorCompletionService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/concurrent/ExecutorService;Ljava/lang/Runnable;I)Ljava/util/concurrent/Future;
    .locals 1

    .prologue
    .line 59
    invoke-static {p1, p2}, Lcom/facebook/tools/dextr/runtime/detour/ExecutorDetour;->a(Ljava/lang/Runnable;I)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/concurrent/ExecutorService;Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 1

    .prologue
    .line 67
    const v0, -0x72bc3ea1

    invoke-static {p1, v0}, Lcom/facebook/tools/dextr/runtime/detour/ExecutorDetour;->a(Ljava/lang/Runnable;I)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {p0, v0, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Callable;I)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Object;",
            ">;I)",
            "Ljava/util/concurrent/Future;"
        }
    .end annotation

    .prologue
    .line 74
    invoke-static {p1, p2}, Lcom/facebook/tools/dextr/runtime/detour/ExecutorDetour;->a(Ljava/util/concurrent/Callable;I)Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;I)V
    .locals 1

    .prologue
    .line 18
    invoke-static {p1, p2}, Lcom/facebook/tools/dextr/runtime/detour/ExecutorDetour;->a(Ljava/lang/Runnable;I)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 19
    return-void
.end method
