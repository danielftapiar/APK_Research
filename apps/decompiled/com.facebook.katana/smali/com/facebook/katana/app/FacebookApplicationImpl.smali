.class public Lcom/facebook/katana/app/FacebookApplicationImpl;
.super Lcom/facebook/base/app/AbstractApplicationLike;
.source "FacebookApplicationImpl.java"

# interfaces
.implements Lcom/facebook/inject/FbInjectorProvider;
.implements Lcom/facebook/resources/HasOverridingResources;


# static fields
.field public static final m:Ljava/lang/String;


# instance fields
.field private final n:Landroid/content/Context;

.field private final o:Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;

.field private p:Lcom/facebook/katana/app/module/common/FbandroidProcessName;

.field private final q:J

.field private final r:Lcom/facebook/base/lwperf/perfstats/PerfStats;

.field private s:Lcom/facebook/base/app/LightweightPerfEvents;

.field private t:Z

.field private u:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const-class v0, Lcom/facebook/katana/app/FacebookApplication;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/katana/app/FacebookApplicationImpl;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lcom/facebook/config/application/FbAppType;Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;JLcom/facebook/base/lwperf/perfstats/PerfStats;Lcom/facebook/base/app/LightweightPerfEvents;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 93
    invoke-direct {p0, p1, p2, p7}, Lcom/facebook/base/app/AbstractApplicationLike;-><init>(Landroid/app/Application;Lcom/facebook/config/application/FbAppType;Lcom/facebook/base/app/LightweightPerfEvents;)V

    .line 83
    iput-boolean v0, p0, Lcom/facebook/katana/app/FacebookApplicationImpl;->t:Z

    .line 84
    iput-boolean v0, p0, Lcom/facebook/katana/app/FacebookApplicationImpl;->u:Z

    .line 94
    iput-object p3, p0, Lcom/facebook/katana/app/FacebookApplicationImpl;->o:Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;

    .line 95
    iput-wide p4, p0, Lcom/facebook/katana/app/FacebookApplicationImpl;->q:J

    .line 96
    iput-object p6, p0, Lcom/facebook/katana/app/FacebookApplicationImpl;->r:Lcom/facebook/base/lwperf/perfstats/PerfStats;

    .line 97
    iput-object p1, p0, Lcom/facebook/katana/app/FacebookApplicationImpl;->n:Landroid/content/Context;

    .line 98
    iput-object p7, p0, Lcom/facebook/katana/app/FacebookApplicationImpl;->s:Lcom/facebook/base/app/LightweightPerfEvents;

    .line 99
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/app/FacebookApplicationImpl;)Lcom/facebook/katana/app/module/common/FbandroidProcessName;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/facebook/katana/app/FacebookApplicationImpl;->p:Lcom/facebook/katana/app/module/common/FbandroidProcessName;

    return-object v0
.end method

.method private a(Lcom/facebook/inject/FbInjector;)V
    .locals 6

    .prologue
    .line 378
    iget-object v0, p0, Lcom/facebook/katana/app/FacebookApplicationImpl;->o:Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/app/FacebookApplicationImpl;->o:Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;

    iget-object v0, v0, Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 379
    invoke-static {p1}, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/common/errorreporting/FbErrorReporterImpl;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/errorreporting/FbErrorReporter;

    .line 380
    iget-object v1, p0, Lcom/facebook/katana/app/FacebookApplicationImpl;->o:Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;

    iget-object v1, v1, Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 381
    iget-object v2, p0, Lcom/facebook/katana/app/FacebookApplicationImpl;->o:Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;

    iget-object v2, v2, Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, v1, :cond_1

    .line 382
    iget-object v1, p0, Lcom/facebook/katana/app/FacebookApplicationImpl;->o:Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;

    iget-object v1, v1, Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v1

    .line 384
    :goto_0
    const/4 v1, 0x0

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_0

    .line 385
    iget-object v1, p0, Lcom/facebook/katana/app/FacebookApplicationImpl;->o:Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;

    const-string v5, "DexLibLoader_ERROR_RECOVERY"

    iget-object v1, p0, Lcom/facebook/katana/app/FacebookApplicationImpl;->o:Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;

    iget-object v1, v1, Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/katana/app/FacebookApplicationImpl;->o:Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;

    iget-object v2, v2, Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    invoke-interface {v0, v5, v1, v2}, Lcom/facebook/common/errorreporting/FbErrorReporter;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 384
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    .line 391
    :cond_0
    return-void

    :cond_1
    move v3, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/katana/app/FacebookApplicationImpl;Lcom/facebook/inject/FbInjector;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/facebook/katana/app/FacebookApplicationImpl;->a(Lcom/facebook/inject/FbInjector;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/app/FacebookApplicationImpl;Lcom/facebook/perf/StartupPerfLogger;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/facebook/katana/app/FacebookApplicationImpl;->a(Lcom/facebook/perf/StartupPerfLogger;)V

    return-void
.end method

.method private a(Lcom/facebook/perf/StartupPerfLogger;)V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/facebook/katana/app/FacebookApplicationImpl;->s:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v1, "ColdStart/AppInitialization"

    invoke-virtual {v0, v1}, Lcom/facebook/base/app/LightweightPerfEvents;->e(Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/facebook/katana/app/FacebookApplicationImpl;->s:Lcom/facebook/base/app/LightweightPerfEvents;

    new-instance v1, Lcom/facebook/katana/app/FacebookApplicationImpl$3;

    invoke-direct {v1, p0, p1}, Lcom/facebook/katana/app/FacebookApplicationImpl$3;-><init>(Lcom/facebook/katana/app/FacebookApplicationImpl;Lcom/facebook/perf/StartupPerfLogger;)V

    invoke-virtual {v0, v1}, Lcom/facebook/base/app/LightweightPerfEvents;->a(Lcom/facebook/base/app/LightweightPerfEvents$Marker;)V

    .line 313
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/app/FacebookApplicationImpl;->u:Z

    .line 314
    invoke-direct {p0}, Lcom/facebook/katana/app/FacebookApplicationImpl;->h()V

    .line 315
    return-void
.end method

.method static synthetic a(Lcom/facebook/perf/StartupPerfLogger;ILjava/lang/String;JJLjava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 69
    invoke-static/range {p0 .. p7}, Lcom/facebook/katana/app/FacebookApplicationImpl;->b(Lcom/facebook/perf/StartupPerfLogger;ILjava/lang/String;JJLjava/lang/Boolean;)V

    return-void
.end method

.method private a(Lcom/facebook/performancelogger/PerformanceLogger;Lcom/facebook/feed/perf/FeedPerfLogger;J)V
    .locals 9

    .prologue
    .line 244
    const-string v0, "FacebookApplicationImpl.runPerfMarkers"

    const v1, 0x55a866a

    invoke-static {v0, v1}, Lcom/facebook/tools/dextr/runtime/detour/TracerDetour;->a(Ljava/lang/String;I)V

    .line 246
    :try_start_0
    sget-object v0, Lcom/facebook/katana/app/module/common/FbandroidProcessName;->DASH:Lcom/facebook/katana/app/module/common/FbandroidProcessName;

    iget-object v1, p0, Lcom/facebook/katana/app/FacebookApplicationImpl;->p:Lcom/facebook/katana/app/module/common/FbandroidProcessName;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/app/module/common/FbandroidProcessName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    new-instance v0, Lcom/facebook/performancelogger/MarkerConfig;

    const v1, 0xa0033

    const-string v2, "DashColdStart"

    invoke-direct {v0, v1, v2}, Lcom/facebook/performancelogger/MarkerConfig;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, p3, p4}, Lcom/facebook/performancelogger/MarkerConfig;->a(J)Lcom/facebook/performancelogger/MarkerConfig;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/facebook/analytics/tagging/AnalyticsTag;

    const/4 v2, 0x0

    sget-object v3, Lcom/facebook/analytics/tagging/AnalyticsTag;->DASH_ACTIVITY_NAME:Lcom/facebook/analytics/tagging/AnalyticsTag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/facebook/analytics/tagging/AnalyticsTag;->DASH_SPLASH_ANALYTICS_NAME:Lcom/facebook/analytics/tagging/AnalyticsTag;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/facebook/analytics/tagging/AnalyticsTag;->MODULE_DASH:Lcom/facebook/analytics/tagging/AnalyticsTag;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/facebook/analytics/tagging/AnalyticsTag;->MODULE_DASH_LAUNCHABLES:Lcom/facebook/analytics/tagging/AnalyticsTag;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/facebook/performancelogger/MarkerConfig;->a([Lcom/facebook/analytics/tagging/AnalyticsTag;)Lcom/facebook/performancelogger/MarkerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/performancelogger/MarkerConfig;->b()Lcom/facebook/performancelogger/MarkerConfig;

    move-result-object v0

    invoke-static {}, Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;->a()Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/performancelogger/MarkerConfig;->b(Z)Lcom/facebook/performancelogger/MarkerConfig;

    move-result-object v0

    const v1, 0x5972eccc

    invoke-static {p1, v0, v1}, Lcom/facebook/tools/dextr/runtime/detour/PerformanceLoggerDetour;->a(Lcom/facebook/performancelogger/PerformanceLogger;Lcom/facebook/performancelogger/MarkerConfig;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    :cond_0
    :goto_0
    const v0, -0x34d75887    # -1.1052921E7f

    invoke-static {v0}, Lcom/facebook/tools/dextr/runtime/detour/TracerDetour;->a(I)V

    .line 277
    return-void

    .line 257
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/facebook/katana/app/FacebookApplicationImpl;->p:Lcom/facebook/katana/app/module/common/FbandroidProcessName;

    invoke-virtual {v0}, Lcom/facebook/katana/app/module/common/FbandroidProcessName;->getProcessName()Lcom/facebook/common/process/ProcessName;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/common/process/ProcessName;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    iget-wide v2, p0, Lcom/facebook/katana/app/FacebookApplicationImpl;->q:J

    iget-object v4, p0, Lcom/facebook/katana/app/FacebookApplicationImpl;->r:Lcom/facebook/base/lwperf/perfstats/PerfStats;

    invoke-direct {p0}, Lcom/facebook/katana/app/FacebookApplicationImpl;->g()Z

    move-result v5

    invoke-static {}, Lcom/facebook/base/lwperf/LightWeightPerfState;->a()Lcom/facebook/base/lwperf/LightWeightPerfState;

    invoke-static {}, Lcom/facebook/base/lwperf/LightWeightPerfState;->e()J

    move-result-wide v6

    move-object v1, p2

    invoke-virtual/range {v1 .. v7}, Lcom/facebook/feed/perf/FeedPerfLogger;->a(JLcom/facebook/base/lwperf/perfstats/PerfStats;ZJ)V

    .line 264
    new-instance v0, Lcom/facebook/performancelogger/MarkerConfig;

    const v1, 0xa0034

    const-string v2, "NNF_PermalinkFromAndroidNotificationColdLoad"

    invoke-direct {v0, v1, v2}, Lcom/facebook/performancelogger/MarkerConfig;-><init>(ILjava/lang/String;)V

    iget-wide v2, p0, Lcom/facebook/katana/app/FacebookApplicationImpl;->q:J

    invoke-virtual {v0, v2, v3}, Lcom/facebook/performancelogger/MarkerConfig;->a(J)Lcom/facebook/performancelogger/MarkerConfig;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/facebook/analytics/tagging/AnalyticsTag;

    const/4 v2, 0x0

    sget-object v3, Lcom/facebook/analytics/tagging/AnalyticsTag;->STORY_VIEW:Lcom/facebook/analytics/tagging/AnalyticsTag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/facebook/apptab/state/TabTag;->Notifications:Lcom/facebook/apptab/state/TabTag;

    iget-object v3, v3, Lcom/facebook/apptab/state/TabTag;->analyticsTag:Lcom/facebook/analytics/tagging/AnalyticsTag;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/facebook/performancelogger/MarkerConfig;->a([Lcom/facebook/analytics/tagging/AnalyticsTag;)Lcom/facebook/performancelogger/MarkerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/performancelogger/MarkerConfig;->b()Lcom/facebook/performancelogger/MarkerConfig;

    move-result-object v0

    invoke-static {}, Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;->a()Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/performancelogger/MarkerConfig;->b(Z)Lcom/facebook/performancelogger/MarkerConfig;

    move-result-object v0

    const v1, 0x2572c84b

    invoke-static {p1, v0, v1}, Lcom/facebook/tools/dextr/runtime/detour/PerformanceLoggerDetour;->a(Lcom/facebook/performancelogger/PerformanceLogger;Lcom/facebook/performancelogger/MarkerConfig;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 276
    :catchall_0
    move-exception v0

    const v1, -0x30f5adc5

    invoke-static {v1}, Lcom/facebook/tools/dextr/runtime/detour/TracerDetour;->a(I)V

    throw v0
.end method

.method private static b(Lcom/facebook/perf/StartupPerfLogger;ILjava/lang/String;JJLjava/lang/Boolean;)V
    .locals 11

    .prologue
    .line 330
    if-nez p0, :cond_0

    .line 350
    :goto_0
    return-void

    .line 334
    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-wide v6, p3

    move-object/from16 v9, p7

    invoke-virtual/range {v1 .. v9}, Lcom/facebook/perf/StartupPerfLogger;->a(ILjava/lang/String;Ljava/lang/String;Lcom/google/common/collect/ImmutableMap;JLcom/facebook/base/lwperf/perfstats/PerfStats;Ljava/lang/Boolean;)Lcom/facebook/perf/StartupPerfLogger;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v2, p1

    move-object v3, p2

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/facebook/perf/StartupPerfLogger;->a(ILjava/lang/String;Ljava/lang/String;Lcom/google/common/collect/ImmutableMap;JLjava/lang/Boolean;)Lcom/facebook/perf/StartupPerfLogger;

    goto :goto_0
.end method

.method private g()Z
    .locals 1

    .prologue
    .line 281
    sget-object v0, Lcom/facebook/katana/app/FacebookApplicationImpl;->m:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/katana/app/FacebookApplicationImpl;->p:Lcom/facebook/katana/app/module/common/FbandroidProcessName;

    invoke-virtual {v0}, Lcom/facebook/katana/app/module/common/FbandroidProcessName;->getProcessName()Lcom/facebook/common/process/ProcessName;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/common/process/ProcessName;->b()Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/katana/app/FacebookApplicationImpl;->o:Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;

    iget-boolean v0, v0, Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;->c:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    invoke-static {}, Lcom/facebook/base/lwperf/LightWeightPerfState;->a()Lcom/facebook/base/lwperf/LightWeightPerfState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/base/lwperf/LightWeightPerfState;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 289
    iget-object v0, p0, Lcom/facebook/katana/app/FacebookApplicationImpl;->o:Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;

    iget-boolean v0, v0, Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;->c:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/facebook/base/lwperf/LightWeightPerfState;->a()Lcom/facebook/base/lwperf/LightWeightPerfState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/base/lwperf/LightWeightPerfState;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized h()V
    .locals 1

    .prologue
    .line 318
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/katana/app/FacebookApplicationImpl;->t:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/katana/app/FacebookApplicationImpl;->u:Z

    if-eqz v0, :cond_0

    .line 319
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/app/FacebookApplicationImpl;->s:Lcom/facebook/base/app/LightweightPerfEvents;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    :cond_0
    monitor-exit p0

    return-void

    .line 318
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private i()V
    .locals 3

    .prologue
    .line 357
    const-string v0, "FacebookApplicationImpl.startStrictMode"

    const v1, 0x4bcd61af    # 2.6919774E7f

    invoke-static {v0, v1}, Lcom/facebook/tools/dextr/runtime/detour/TracerDetour;->a(Ljava/lang/String;I)V

    .line 359
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/katana/app/FacebookApplicationImpl;->e()Lcom/facebook/inject/FbInjector;

    move-result-object v1

    .line 360
    invoke-static {v1}, Lcom/facebook/config/application/SignatureTypeMethodAutoProvider;->a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/common/build/SignatureType;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/build/SignatureType;

    .line 361
    if-eqz v0, :cond_0

    sget-object v2, Lcom/facebook/common/build/SignatureType;->DEBUG:Lcom/facebook/common/build/SignatureType;

    if-ne v0, v2, :cond_0

    .line 362
    new-instance v2, Lcom/facebook/strictmode/StrictModeAggregator;

    invoke-static {v1}, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/common/errorreporting/FbErrorReporterImpl;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/errorreporting/FbErrorReporter;

    invoke-static {}, Lcom/facebook/common/random/Random_InsecureRandomMethodAutoProvider;->a()Ljava/util/Random;

    move-result-object v1

    check-cast v1, Ljava/util/Random;

    invoke-direct {v2, v0, v1}, Lcom/facebook/strictmode/StrictModeAggregator;-><init>(Lcom/facebook/common/errorreporting/FbErrorReporter;Ljava/util/Random;)V

    .line 367
    invoke-virtual {v2}, Lcom/facebook/strictmode/StrictModeAggregator;->a()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    :cond_0
    const v0, -0x36aa365a

    invoke-static {v0}, Lcom/facebook/tools/dextr/runtime/detour/TracerDetour;->a(I)V

    .line 371
    return-void

    .line 370
    :catchall_0
    move-exception v0

    const v1, 0x5069fd38

    invoke-static {v1}, Lcom/facebook/tools/dextr/runtime/detour/TracerDetour;->a(I)V

    throw v0
.end method


# virtual methods
.method protected final a(Lcom/facebook/common/process/ProcessName;)V
    .locals 1

    .prologue
    .line 215
    invoke-static {p1}, Lcom/facebook/katana/app/module/common/FbandroidProcessName;->convertProcessNameToProcessEnum(Lcom/facebook/common/process/ProcessName;)Lcom/facebook/katana/app/module/common/FbandroidProcessName;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/app/FacebookApplicationImpl;->p:Lcom/facebook/katana/app/module/common/FbandroidProcessName;

    .line 216
    return-void
.end method

.method public final b()V
    .locals 10

    .prologue
    const v2, 0x4e0004

    const/4 v9, 0x1

    .line 103
    iget-object v0, p0, Lcom/facebook/katana/app/FacebookApplicationImpl;->s:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v1, "ColdStart/FBAppImpl.onCreate"

    invoke-virtual {v0, v1}, Lcom/facebook/base/app/LightweightPerfEvents;->e(Ljava/lang/String;)V

    .line 111
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 112
    const-string v0, "FacebookApplicationImpl.onCreate"

    const v1, -0x193c6f0a

    invoke-static {v0, v1}, Lcom/facebook/tools/dextr/runtime/detour/TracerDetour;->a(Ljava/lang/String;I)V

    .line 113
    const/4 v1, 0x0

    .line 116
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/katana/app/FacebookApplicationImpl;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/classpreloader/ClassPreloaderController;->a(Landroid/content/Context;)V

    .line 118
    invoke-static {}, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->a()Lcom/facebook/common/udppriming/client/EncryptChannelInformation;

    move-result-object v0

    iget-object v3, p0, Lcom/facebook/katana/app/FacebookApplicationImpl;->n:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->a(Landroid/content/Context;)Z

    .line 119
    invoke-static {}, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->a()Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;

    move-result-object v0

    iget-object v3, p0, Lcom/facebook/katana/app/FacebookApplicationImpl;->n:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->a(Landroid/content/Context;)Z

    .line 120
    invoke-static {}, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->a()Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;

    move-result-object v0

    iget-object v3, p0, Lcom/facebook/katana/app/FacebookApplicationImpl;->n:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->a(Landroid/content/Context;)Z

    .line 121
    new-instance v0, Lcom/facebook/reportaproblem/fb/FbReportAProblemConfigProvider;

    iget-object v3, p0, Lcom/facebook/katana/app/FacebookApplicationImpl;->n:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/facebook/reportaproblem/fb/FbReportAProblemConfigProvider;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/facebook/reportaproblem/base/ReportAProblem;->a(Lcom/facebook/reportaproblem/base/ReportAProblemConfigProvider;)V

    .line 122
    iget-object v0, p0, Lcom/facebook/katana/app/FacebookApplicationImpl;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/common/executors/gk/ThreadPriorityGatekeeperHandler;->a(Landroid/content/Context;)V

    .line 124
    const-string v0, "FacebookApplicationImpl.super.onCreate"

    const v3, -0x60595387

    invoke-static {v0, v3}, Lcom/facebook/tools/dextr/runtime/detour/TracerDetour;->a(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 126
    :try_start_1
    invoke-super {p0}, Lcom/facebook/base/app/AbstractApplicationLike;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    const v0, -0x27ccd49a

    :try_start_2
    invoke-static {v0}, Lcom/facebook/tools/dextr/runtime/detour/TracerDetour;->a(I)V

    .line 131
    invoke-static {}, Lcom/facebook/common/errorreporting/AcraBLogBridge;->a()V

    .line 132
    const-class v0, Lcom/google/common/base/FinalizableReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 134
    invoke-virtual {p0}, Lcom/facebook/katana/app/FacebookApplicationImpl;->e()Lcom/facebook/inject/FbInjector;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v3

    .line 137
    :try_start_3
    invoke-direct {p0}, Lcom/facebook/katana/app/FacebookApplicationImpl;->i()V

    .line 139
    invoke-static {v3}, Lcom/facebook/common/executors/ListeningExecutorService_DefaultExecutorServiceMethodAutoProvider;->a(Lcom/facebook/inject/InjectorLike;)Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    .line 141
    new-instance v1, Lcom/facebook/katana/app/FacebookApplicationImpl$1;

    invoke-direct {v1, p0, v3}, Lcom/facebook/katana/app/FacebookApplicationImpl$1;-><init>(Lcom/facebook/katana/app/FacebookApplicationImpl;Lcom/facebook/inject/FbInjector;)V

    const v6, -0x1175b27d

    invoke-static {v0, v1, v6}, Lcom/facebook/tools/dextr/runtime/detour/ExecutorDetour;->a(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;I)V

    .line 161
    invoke-static {v3}, Lcom/facebook/performancelogger/DelegatingPerformanceLogger;->a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/performancelogger/DelegatingPerformanceLogger;

    move-result-object v0

    check-cast v0, Lcom/facebook/performancelogger/PerformanceLogger;

    invoke-static {v3}, Lcom/facebook/feed/perf/FeedPerfLogger;->a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/feed/perf/FeedPerfLogger;

    move-result-object v1

    check-cast v1, Lcom/facebook/feed/perf/FeedPerfLogger;

    invoke-direct {p0, v0, v1, v4, v5}, Lcom/facebook/katana/app/FacebookApplicationImpl;->a(Lcom/facebook/performancelogger/PerformanceLogger;Lcom/facebook/feed/perf/FeedPerfLogger;J)V

    .line 166
    invoke-static {v3}, Lcom/facebook/common/init/AppInitLock;->a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/common/init/AppInitLock;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/init/AppInitLock;

    .line 167
    new-instance v1, Lcom/facebook/katana/app/FacebookApplicationImpl$2;

    invoke-direct {v1, p0, v3}, Lcom/facebook/katana/app/FacebookApplicationImpl$2;-><init>(Lcom/facebook/katana/app/FacebookApplicationImpl;Lcom/facebook/inject/FbInjector;)V

    invoke-virtual {v0, v1}, Lcom/facebook/common/init/AppInitLock;->a(Lcom/facebook/common/init/AppInitLock$Listener;)V

    .line 189
    iget-object v1, p0, Lcom/facebook/katana/app/FacebookApplicationImpl;->s:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v6, "ColdStart/UIThreadBlockedOnAppInit"

    invoke-virtual {v1, v6}, Lcom/facebook/base/app/LightweightPerfEvents;->d(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v0}, Lcom/facebook/common/init/AppInitLock;->b()V

    .line 193
    iget-object v0, p0, Lcom/facebook/katana/app/FacebookApplicationImpl;->s:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v1, "ColdStart/UIThreadBlockedOnAppInit"

    invoke-virtual {v0, v1}, Lcom/facebook/base/app/LightweightPerfEvents;->e(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 196
    const v0, -0x4a6d3904

    invoke-static {v0}, Lcom/facebook/tools/dextr/runtime/detour/TracerDetour;->a(I)V

    .line 197
    if-eqz v3, :cond_0

    .line 198
    invoke-static {v3}, Lcom/facebook/perf/StartupPerfLogger;->a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/perf/StartupPerfLogger;

    move-result-object v1

    check-cast v1, Lcom/facebook/perf/StartupPerfLogger;

    const-string v3, "ApplicationOnCreate"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {}, Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;->a()Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;->d()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static/range {v1 .. v8}, Lcom/facebook/katana/app/FacebookApplicationImpl;->b(Lcom/facebook/perf/StartupPerfLogger;ILjava/lang/String;JJLjava/lang/Boolean;)V

    .line 206
    :cond_0
    iput-boolean v9, p0, Lcom/facebook/katana/app/FacebookApplicationImpl;->t:Z

    .line 207
    invoke-direct {p0}, Lcom/facebook/katana/app/FacebookApplicationImpl;->h()V

    .line 208
    return-void

    .line 128
    :catchall_0
    move-exception v0

    const v3, -0x634a15f7

    :try_start_4
    invoke-static {v3}, Lcom/facebook/tools/dextr/runtime/detour/TracerDetour;->a(I)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 196
    :catchall_1
    move-exception v0

    :goto_0
    const v3, -0x7a45f51f

    invoke-static {v3}, Lcom/facebook/tools/dextr/runtime/detour/TracerDetour;->a(I)V

    .line 197
    if-eqz v1, :cond_1

    .line 198
    invoke-static {v1}, Lcom/facebook/perf/StartupPerfLogger;->a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/perf/StartupPerfLogger;

    move-result-object v1

    check-cast v1, Lcom/facebook/perf/StartupPerfLogger;

    const-string v3, "ApplicationOnCreate"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {}, Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;->a()Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;

    move-result-object v8

    invoke-virtual {v8}, Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;->d()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static/range {v1 .. v8}, Lcom/facebook/katana/app/FacebookApplicationImpl;->b(Lcom/facebook/perf/StartupPerfLogger;ILjava/lang/String;JJLjava/lang/Boolean;)V

    .line 206
    :cond_1
    iput-boolean v9, p0, Lcom/facebook/katana/app/FacebookApplicationImpl;->t:Z

    .line 207
    invoke-direct {p0}, Lcom/facebook/katana/app/FacebookApplicationImpl;->h()V

    throw v0

    .line 196
    :catchall_2
    move-exception v0

    move-object v1, v3

    goto :goto_0
.end method

.method protected final b(Lcom/facebook/common/process/ProcessName;)V
    .locals 4

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/facebook/katana/app/FacebookApplicationImpl;->e()Lcom/facebook/inject/FbInjector;

    move-result-object v1

    .line 222
    invoke-static {v1}, Lcom/facebook/backgroundtasks/BackgroundTaskController;->a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/backgroundtasks/BackgroundTaskController;

    move-result-object v0

    check-cast v0, Lcom/facebook/backgroundtasks/BackgroundTaskController;

    .line 224
    invoke-virtual {p1}, Lcom/facebook/common/process/ProcessName;->e()Z

    move-result v2

    if-nez v2, :cond_0

    .line 225
    const-class v1, Lcom/facebook/contacts/background/ContactsTaskTag;

    invoke-virtual {v0, v1}, Lcom/facebook/backgroundtasks/BackgroundTaskController;->a(Ljava/lang/Class;)V

    .line 226
    const-class v1, Lcom/facebook/messaging/background/MessagesDataTaskTag;

    invoke-virtual {v0, v1}, Lcom/facebook/backgroundtasks/BackgroundTaskController;->a(Ljava/lang/Class;)V

    .line 227
    const-class v1, Lcom/facebook/messaging/background/MessagesLocalTaskTag;

    invoke-virtual {v0, v1}, Lcom/facebook/backgroundtasks/BackgroundTaskController;->a(Ljava/lang/Class;)V

    .line 233
    :goto_0
    iget-object v0, p0, Lcom/facebook/katana/app/FacebookApplicationImpl;->s:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v1, "ColdStart/AppInitialization"

    invoke-virtual {v0, v1}, Lcom/facebook/base/app/LightweightPerfEvents;->c(Ljava/lang/String;)V

    .line 234
    return-void

    .line 230
    :cond_0
    invoke-static {v1}, Lcom/facebook/common/appstate/AppStateManager;->a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/common/appstate/AppStateManager;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/appstate/AppStateManager;

    iget-wide v2, p0, Lcom/facebook/katana/app/FacebookApplicationImpl;->q:J

    invoke-virtual {v0, v2, v3}, Lcom/facebook/common/appstate/AppStateManager;->a(J)V

    goto :goto_0
.end method
