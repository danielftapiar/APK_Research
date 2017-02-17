.class Lcom/facebook/tools/dextr/runtime/Bootstrap$Stage2And3Holder;
.super Ljava/lang/Object;
.source "Bootstrap.java"


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/facebook/tools/dextr/runtime/Bootstrap$Stage2And3Holder;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadArgument-FbInjector#get-0",
            "FbInjectorGet"
        }
    .end annotation

    .annotation build Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 191
    :try_start_0
    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 198
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/facebook/tools/dextr/runtime/Bootstrap$Stage2And3Holder;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic a(Landroid/content/Context;Lcom/facebook/inject/FbInjector;Lcom/facebook/tools/dextr/runtime/logger/FileManager;ZZ)V
    .locals 0

    .prologue
    .line 63
    invoke-static {p0, p1, p2, p3, p4}, Lcom/facebook/tools/dextr/runtime/Bootstrap$Stage2And3Holder;->b(Landroid/content/Context;Lcom/facebook/inject/FbInjector;Lcom/facebook/tools/dextr/runtime/logger/FileManager;ZZ)V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Lcom/facebook/tools/dextr/runtime/logger/FileManager;)V
    .locals 0

    .prologue
    .line 63
    invoke-static {p0, p1}, Lcom/facebook/tools/dextr/runtime/Bootstrap$Stage2And3Holder;->b(Landroid/content/Context;Lcom/facebook/tools/dextr/runtime/logger/FileManager;)V

    return-void
.end method

.method private static a(Lcom/facebook/inject/FbInjector;)Z
    .locals 1

    .prologue
    .line 68
    invoke-static {p0}, Lcom/facebook/common/process/ProcessNameMethodAutoProvider;->a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/common/process/ProcessName;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/process/ProcessName;

    invoke-virtual {v0}, Lcom/facebook/common/process/ProcessName;->e()Z

    move-result v0

    return v0
.end method

.method private static b(Landroid/content/Context;Lcom/facebook/inject/FbInjector;Lcom/facebook/tools/dextr/runtime/logger/FileManager;ZZ)V
    .locals 10

    .prologue
    .line 144
    invoke-static {}, Lcom/facebook/tools/dextr/runtime/logger/TraceManager;->b()Lcom/facebook/tools/dextr/runtime/logger/TraceManager;

    move-result-object v2

    .line 145
    if-nez v2, :cond_0

    .line 146
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Got to stage3 but still no TraceManager?!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 153
    invoke-static {p1}, Lcom/facebook/tools/dextr/bridge/DextrXConfigManager;->a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/tools/dextr/bridge/DextrXConfigManager;

    move-result-object v0

    check-cast v0, Lcom/facebook/tools/dextr/bridge/DextrXConfigManager;

    .line 154
    invoke-virtual {v0}, Lcom/facebook/tools/dextr/bridge/DextrXConfigManager;->b()Lcom/facebook/tools/dextr/bridge/upload/UploadConfiguration;

    move-result-object v4

    .line 155
    new-instance v3, Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;

    invoke-direct {v3, p1, v1, v4}, Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;-><init>(Lcom/facebook/inject/FbInjector;Landroid/content/Context;Lcom/facebook/tools/dextr/bridge/upload/UploadConfiguration;)V

    .line 159
    new-instance v5, Lcom/facebook/tools/dextr/runtime/Bootstrap$Stage2And3Holder$2;

    invoke-direct {v5}, Lcom/facebook/tools/dextr/runtime/Bootstrap$Stage2And3Holder$2;-><init>()V

    invoke-static {v5}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    .line 169
    new-instance v6, Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl;

    invoke-direct {v6, p1, v5, v3}, Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl;-><init>(Lcom/facebook/inject/FbInjector;Ljava/util/concurrent/ExecutorService;Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;)V

    .line 171
    invoke-static {p1}, Lcom/facebook/analytics/AnalyticsLoggerMethodAutoProvider;->a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/analytics/logger/AnalyticsLogger;

    move-result-object v7

    check-cast v7, Lcom/facebook/analytics/logger/AnalyticsLogger;

    .line 172
    invoke-virtual {v0}, Lcom/facebook/tools/dextr/bridge/DextrXConfigManager;->a()Lcom/facebook/tools/dextr/bridge/sampling/XConfigSamplingManager;

    move-result-object v3

    .line 175
    new-instance v0, Lcom/facebook/tools/dextr/runtime/DextrRuntime;

    move-object v5, p2

    move v8, p3

    move v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/facebook/tools/dextr/runtime/DextrRuntime;-><init>(Landroid/content/Context;Lcom/facebook/tools/dextr/runtime/logger/TraceManager;Lcom/facebook/tools/dextr/bridge/sampling/XConfigSamplingManager;Lcom/facebook/tools/dextr/bridge/upload/UploadConfiguration;Lcom/facebook/tools/dextr/runtime/logger/FileManager;Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadService;Lcom/facebook/analytics/logger/AnalyticsLogger;ZZ)V

    .line 185
    return-void
.end method

.method private static b(Landroid/content/Context;Lcom/facebook/tools/dextr/runtime/logger/FileManager;)V
    .locals 6

    .prologue
    .line 76
    invoke-static {p0}, Lcom/facebook/tools/dextr/runtime/Bootstrap$Stage2And3Holder;->a(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v4

    .line 78
    if-nez v4, :cond_0

    .line 79
    invoke-static {}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->b()V

    .line 131
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-static {v4}, Lcom/facebook/tools/dextr/runtime/Bootstrap$Stage2And3Holder;->a(Lcom/facebook/inject/FbInjector;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 87
    invoke-static {}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->b()V

    goto :goto_0

    .line 94
    :cond_1
    invoke-static {v4}, Lcom/facebook/prefs/shared/FbSharedPreferencesImpl;->a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/prefs/shared/FbSharedPreferencesImpl;

    move-result-object v1

    check-cast v1, Lcom/facebook/prefs/shared/FbSharedPreferences;

    .line 95
    invoke-static {v4}, Lcom/facebook/common/executors/ListeningExecutorService_DefaultExecutorServiceMethodAutoProvider;->a(Lcom/facebook/inject/InjectorLike;)Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ExecutorService;

    .line 101
    new-instance v0, Lcom/facebook/tools/dextr/runtime/Bootstrap$Stage2And3Holder$1;

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/tools/dextr/runtime/Bootstrap$Stage2And3Holder$1;-><init>(Lcom/facebook/prefs/shared/FbSharedPreferences;Ljava/util/concurrent/ExecutorService;Landroid/content/Context;Lcom/facebook/inject/FbInjector;Lcom/facebook/tools/dextr/runtime/logger/FileManager;)V

    .line 130
    invoke-interface {v1, v0}, Lcom/facebook/prefs/shared/FbSharedPreferences;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
