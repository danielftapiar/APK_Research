.class final Lbolts/Executors;
.super Ljava/lang/Object;
.source "Executors.java"


# static fields
.field static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field static final MAX_POOL_SIZE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    .line 53
    sput v0, Lbolts/Executors;->CPU_COUNT:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lbolts/Executors;->CORE_POOL_SIZE:I

    .line 54
    sget v0, Lbolts/Executors;->CPU_COUNT:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lbolts/Executors;->MAX_POOL_SIZE:I

    return-void
.end method

.method public static newCachedThreadPool()Ljava/util/concurrent/ExecutorService;
    .locals 8

    .prologue
    .line 69
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v1, Lbolts/Executors;->CORE_POOL_SIZE:I

    sget v2, Lbolts/Executors;->MAX_POOL_SIZE:I

    const-wide/16 v3, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v7, 0x80

    invoke-direct {v6, v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 75
    .local v0, "executor":Ljava/util/concurrent/ThreadPoolExecutor;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 77
    :cond_0
    return-object v0
.end method
