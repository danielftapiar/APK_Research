.class public Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl;
.super Ljava/lang/Object;
.source "BackgroundUploadServiceImpl.java"

# interfaces
.implements Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadService;


# instance fields
.field private final a:Ljava/util/concurrent/ExecutorService;

.field private final b:Ljava/util/concurrent/ExecutorService;

.field private final c:Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;

.field private final d:Lcom/facebook/http/protocol/SingleMethodRunner;

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mInFlightTraces"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/inject/FbInjector;Ljava/util/concurrent/ExecutorService;Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;)V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p2, p0, Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl;->b:Ljava/util/concurrent/ExecutorService;

    .line 40
    iput-object p3, p0, Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl;->c:Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;

    .line 41
    invoke-static {p1}, Lcom/facebook/common/executors/ListeningExecutorService_DefaultExecutorServiceMethodAutoProvider;->a(Lcom/facebook/inject/InjectorLike;)Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl;->a:Ljava/util/concurrent/ExecutorService;

    .line 42
    invoke-static {p1}, Lcom/facebook/http/protocol/SingleMethodRunnerImpl;->a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/http/protocol/SingleMethodRunnerImpl;

    move-result-object v0

    check-cast v0, Lcom/facebook/http/protocol/SingleMethodRunner;

    iput-object v0, p0, Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl;->d:Lcom/facebook/http/protocol/SingleMethodRunner;

    .line 43
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl;->e:Ljava/util/Set;

    .line 44
    return-void
.end method

.method static synthetic a(Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl;->e:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl;Ljava/io/File;Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadService$BackgroundUploadListener;Z)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl;->a(Ljava/io/File;Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadService$BackgroundUploadListener;Z)V

    return-void
.end method

.method private a(Ljava/io/File;Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadService$BackgroundUploadListener;)V
    .locals 3
    .param p2    # Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadService$BackgroundUploadListener;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 140
    if-eqz p2, :cond_0

    .line 141
    iget-object v0, p0, Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl$2;-><init>(Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl;Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadService$BackgroundUploadListener;Ljava/io/File;)V

    const v2, -0x6a2d8adc

    invoke-static {v0, v1, v2}, Lcom/facebook/tools/dextr/runtime/detour/ExecutorDetour;->a(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;I)V

    .line 149
    :cond_0
    return-void
.end method

.method private a(Ljava/io/File;Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadService$BackgroundUploadListener;Z)V
    .locals 7
    .param p2    # Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadService$BackgroundUploadListener;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 110
    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl;->c:Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;

    invoke-virtual {v0}, Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    :goto_0
    return-void

    .line 115
    :cond_0
    new-instance v0, Lcom/facebook/tools/dextr/bridge/upload/DextrUploadMethod;

    invoke-direct {v0}, Lcom/facebook/tools/dextr/bridge/upload/DextrUploadMethod;-><init>()V

    .line 116
    new-instance v1, Lcom/facebook/http/protocol/ApiMethodRunnerParams;

    invoke-direct {v1}, Lcom/facebook/http/protocol/ApiMethodRunnerParams;-><init>()V

    .line 117
    sget-object v2, Lcom/facebook/http/interfaces/RequestPriority;->CAN_WAIT:Lcom/facebook/http/interfaces/RequestPriority;

    invoke-virtual {v1, v2}, Lcom/facebook/http/protocol/ApiMethodRunnerParams;->a(Lcom/facebook/http/interfaces/RequestPriority;)V

    .line 118
    const-class v2, Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl;

    invoke-static {v2}, Lcom/facebook/common/callercontext/CallerContext;->a(Ljava/lang/Class;)Lcom/facebook/common/callercontext/CallerContext;

    move-result-object v2

    .line 121
    :try_start_0
    iget-object v3, p0, Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl;->d:Lcom/facebook/http/protocol/SingleMethodRunner;

    invoke-interface {v3, v0, p1, v1, v2}, Lcom/facebook/http/protocol/SingleMethodRunner;->a(Lcom/facebook/http/protocol/ApiMethod;Ljava/lang/Object;Lcom/facebook/http/protocol/ApiMethodRunnerParams;Lcom/facebook/common/callercontext/CallerContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 122
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    if-nez p3, :cond_1

    .line 124
    iget-object v0, p0, Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl;->c:Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;->a(J)V

    .line 126
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl;->a(Ljava/io/File;Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadService$BackgroundUploadListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    const-string v1, "Dextr"

    const-string v2, "Upload failed for trace %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v0, v2, v3}, Lcom/facebook/debug/log/BLog;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    invoke-direct {p0, p1, p2}, Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl;->b(Ljava/io/File;Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadService$BackgroundUploadListener;)V

    goto :goto_0

    .line 128
    :cond_2
    :try_start_1
    const-string v0, "Dextr"

    const-string v1, "Upload failed for trace %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    invoke-direct {p0, p1, p2}, Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl;->b(Ljava/io/File;Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadService$BackgroundUploadListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private declared-synchronized a(Ljava/util/List;Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadService$BackgroundUploadListener;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadService$BackgroundUploadListener;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 73
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 74
    iget-object v2, p0, Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl;->e:Ljava/util/Set;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 75
    :try_start_1
    iget-object v3, p0, Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl;->e:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 76
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 78
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 73
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 78
    :cond_1
    :try_start_3
    monitor-exit v2

    .line 81
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    iget-object v2, p0, Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl$1;

    invoke-direct {v3, p0, v0, p2, p3}, Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl$1;-><init>(Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl;Ljava/io/File;Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadService$BackgroundUploadListener;Z)V

    const v0, -0x71410b3f

    invoke-static {v2, v3, v0}, Lcom/facebook/tools/dextr/runtime/detour/ExecutorDetour;->a(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 104
    :cond_2
    monitor-exit p0

    return-void
.end method

.method private b(Ljava/io/File;Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadService$BackgroundUploadListener;)V
    .locals 3
    .param p2    # Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadService$BackgroundUploadListener;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 154
    if-eqz p2, :cond_0

    .line 155
    iget-object v0, p0, Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl$3;-><init>(Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl;Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadService$BackgroundUploadListener;Ljava/io/File;)V

    const v2, 0x67d24c8b

    invoke-static {v0, v1, v2}, Lcom/facebook/tools/dextr/runtime/detour/ExecutorDetour;->a(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;I)V

    .line 163
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadService$BackgroundUploadListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadService$BackgroundUploadListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl;->a(Ljava/util/List;Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadService$BackgroundUploadListener;Z)V

    .line 51
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl;->c:Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;

    invoke-virtual {v0}, Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Ljava/util/List;Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadService$BackgroundUploadListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadService$BackgroundUploadListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 57
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl;->a(Ljava/util/List;Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadService$BackgroundUploadListener;Z)V

    .line 58
    return-void
.end method
