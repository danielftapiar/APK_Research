.class public Lcom/facebook/katana/app/FacebookApplication;
.super Lcom/facebook/base/app/DelegatingApplication;
.source "FacebookApplication.java"

# interfaces
.implements Lcom/facebook/inject/FbInjectorProvider;
.implements Lcom/facebook/resources/HasBaseResourcesAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/base/app/DelegatingApplication",
        "<",
        "Lcom/facebook/base/app/ApplicationLike;",
        ">;",
        "Lcom/facebook/inject/FbInjectorProvider;",
        "Lcom/facebook/resources/HasBaseResourcesAccess;"
    }
.end annotation


# static fields
.field private static final g:[Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;

.field private static final h:[Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;


# instance fields
.field private a:Lcom/facebook/config/application/FbAppType;

.field private b:Lcom/facebook/nobreak/CatchMeIfYouCan;

.field private c:J

.field private d:Lcom/facebook/base/lwperf/perfstats/PerfStats;

.field private e:Lcom/facebook/base/app/LightweightPerfEvents;

.field private f:Lcom/facebook/nobreak/RecoveryModeHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const/4 v3, 0x6

    const-wide/32 v10, 0x1d4c0

    const/4 v9, 0x3

    const/4 v6, 0x1

    const/4 v12, 0x0

    .line 81
    new-array v0, v6, [Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;

    new-instance v1, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;

    const-string v2, "dash"

    const-wide/32 v4, 0xea60

    move v7, v6

    move v8, v6

    invoke-direct/range {v1 .. v8}, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;-><init>(Ljava/lang/String;IJZZZ)V

    aput-object v1, v0, v12

    sput-object v0, Lcom/facebook/katana/app/FacebookApplication;->g:[Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;

    .line 91
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;

    new-instance v7, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;

    const-string v8, ""

    move v13, v12

    move v14, v12

    invoke-direct/range {v7 .. v14}, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;-><init>(Ljava/lang/String;IJZZZ)V

    aput-object v7, v0, v12

    new-instance v7, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;

    const-string v8, "dash_service"

    move v13, v12

    move v14, v12

    invoke-direct/range {v7 .. v14}, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;-><init>(Ljava/lang/String;IJZZZ)V

    aput-object v7, v0, v6

    const/4 v1, 0x2

    new-instance v7, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;

    const-string v8, "providers"

    move v13, v12

    move v14, v12

    invoke-direct/range {v7 .. v14}, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;-><init>(Ljava/lang/String;IJZZZ)V

    aput-object v7, v0, v1

    new-instance v1, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;

    const-string v2, "dash"

    const-wide/32 v4, 0xea60

    move v6, v12

    move v7, v12

    move v8, v12

    invoke-direct/range {v1 .. v8}, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;-><init>(Ljava/lang/String;IJZZZ)V

    aput-object v1, v0, v9

    sput-object v0, Lcom/facebook/katana/app/FacebookApplication;->h:[Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/facebook/base/app/DelegatingApplication;-><init>()V

    .line 99
    new-instance v0, Lcom/facebook/base/app/LightweightPerfEvents;

    invoke-direct {v0}, Lcom/facebook/base/app/LightweightPerfEvents;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/app/FacebookApplication;->e:Lcom/facebook/base/app/LightweightPerfEvents;

    .line 100
    new-instance v0, Lcom/facebook/base/lwperf/perfstats/PerfStats;

    invoke-direct {v0}, Lcom/facebook/base/lwperf/perfstats/PerfStats;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/app/FacebookApplication;->d:Lcom/facebook/base/lwperf/perfstats/PerfStats;

    .line 101
    return-void
.end method

.method private a(Lcom/facebook/base/app/LightweightPerfEvents;)Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;
    .locals 3

    .prologue
    .line 333
    :try_start_0
    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->c()Z

    move-result v0

    invoke-static {p0, v0, p1}, Lcom/facebook/common/dextricks/DexLibLoader;->a(Landroid/content/Context;ZLcom/facebook/base/lwperf/LightweightPerfEventsTracer;)Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;

    move-result-object v0

    .line 337
    invoke-static {}, Lcom/facebook/common/errorreporting/AcraDexLibLoaderBridge;->a()V

    .line 346
    invoke-static {p0}, Lcom/facebook/common/dextricks/MemoryReductionHack;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    return-object v0

    .line 348
    :catch_0
    move-exception v0

    .line 349
    invoke-static {}, Lcom/facebook/acra/ErrorReporter;->getInstance()Lcom/facebook/acra/ErrorReporter;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/facebook/katana/app/FacebookApplication;->a(Lcom/facebook/acra/ErrorReporter;)V

    .line 358
    invoke-static {}, Lcom/facebook/acra/ErrorReporter;->getInstance()Lcom/facebook/acra/ErrorReporter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/acra/ErrorReporter;->handleException(Ljava/lang/Throwable;)Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;

    move-result-object v1

    .line 359
    if-eqz v1, :cond_0

    .line 364
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 371
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/facebook/katana/app/FacebookApplication;->b:Lcom/facebook/nobreak/CatchMeIfYouCan;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/facebook/nobreak/CatchMeIfYouCan;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 373
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 374
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unreachable"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private a(Lcom/facebook/acra/ErrorReporter;)V
    .locals 4

    .prologue
    .line 379
    new-instance v0, Lcom/facebook/common/dextricks/DexDiagnostics;

    invoke-direct {v0, p0}, Lcom/facebook/common/dextricks/DexDiagnostics;-><init>(Landroid/content/Context;)V

    .line 381
    :try_start_0
    invoke-virtual {v0}, Lcom/facebook/common/dextricks/DexDiagnostics;->a()I

    move-result v1

    .line 382
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 383
    const-string v3, "application_uid"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 384
    const-string v2, "directory_owner_uid"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 387
    const-string v1, "/proc/mounts"

    const-string v2, " /data "

    invoke-static {v1, v2}, Lcom/facebook/common/dextricks/DexDiagnostics;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 388
    const-string v2, "mounts_file"

    invoke-virtual {p1, v2, v1}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 389
    const-string v1, "/proc/uptime"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/facebook/common/dextricks/DexDiagnostics;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 390
    const-string v2, "uptime_file"

    invoke-virtual {p1, v2, v1}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 391
    const-string v1, "/proc/loadavg"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/facebook/common/dextricks/DexDiagnostics;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 392
    const-string v2, "loadavg_file"

    invoke-virtual {p1, v2, v1}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 393
    invoke-virtual {v0}, Lcom/facebook/common/dextricks/DexDiagnostics;->c()Ljava/lang/String;

    move-result-object v0

    .line 394
    const-string v1, "dex_directories"

    invoke-virtual {p1, v1, v0}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 395
    invoke-static {}, Lcom/facebook/common/dextricks/DexDiagnostics;->d()Ljava/lang/String;

    move-result-object v0

    .line 396
    const-string v1, "logcat_dump"

    invoke-virtual {p1, v1, v0}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    :goto_0
    return-void

    .line 397
    :catch_0
    move-exception v0

    .line 398
    const-string v1, "FacebookApplication"

    const-string v2, "Unable to read directory owner uid for ACRA report"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private a(Z)V
    .locals 1

    .prologue
    .line 111
    invoke-static {}, Lcom/facebook/breakpad/BreakpadManager;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/facebook/breakpad/BreakpadManager;->a(Landroid/content/Context;ZI)V

    .line 113
    invoke-static {}, Lcom/facebook/breakpad/BreakpadManager;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-static {}, Lcom/facebook/breakpad/BreakpadManager;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/dalvik/DalvikInternals;->a(Ljava/lang/String;)V

    .line 118
    :cond_0
    return-void
.end method

.method private f()V
    .locals 4

    .prologue
    .line 186
    iget-object v0, p0, Lcom/facebook/katana/app/FacebookApplication;->e:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v1, "ACRA_Setup"

    invoke-virtual {v0, v1}, Lcom/facebook/base/app/LightweightPerfEvents;->a(Ljava/lang/String;)V

    .line 188
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/katana/app/FacebookApplication;->g()Lcom/facebook/config/application/FbAppType;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/app/FacebookApplication;->a:Lcom/facebook/config/application/FbAppType;

    .line 191
    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "https://b-www.facebook.com/mobile/android_beta_crash_logs/"

    .line 193
    :goto_0
    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    iget-object v0, p0, Lcom/facebook/katana/app/FacebookApplication;->a:Lcom/facebook/config/application/FbAppType;

    invoke-virtual {v0}, Lcom/facebook/config/application/FbAppType;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/errorreporting/FbCrashReporter;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 196
    :cond_0
    new-instance v1, Lcom/facebook/common/errorreporting/FbCrashReporter;

    invoke-direct {v1, p0}, Lcom/facebook/common/errorreporting/FbCrashReporter;-><init>(Landroid/app/Application;)V

    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->c()Z

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/facebook/acra/ACRA;->init(Lcom/facebook/acra/reporter/ReportsCrashes;Ljava/lang/String;Z)Lcom/facebook/acra/ErrorReporter;

    move-result-object v0

    .line 202
    const-string v1, "app"

    iget-object v2, p0, Lcom/facebook/katana/app/FacebookApplication;->a:Lcom/facebook/config/application/FbAppType;

    invoke-virtual {v2}, Lcom/facebook/config/application/FbAppType;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 203
    const-string v1, "fb_app_id"

    iget-object v2, p0, Lcom/facebook/katana/app/FacebookApplication;->a:Lcom/facebook/config/application/FbAppType;

    invoke-virtual {v2}, Lcom/facebook/config/application/FbAppType;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 204
    const-string v1, "app_backgrounded"

    new-instance v2, Lcom/facebook/katana/app/FacebookApplication$1;

    invoke-direct {v2, p0}, Lcom/facebook/katana/app/FacebookApplication$1;-><init>(Lcom/facebook/katana/app/FacebookApplication;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/acra/ErrorReporter;->putLazyCustomData(Ljava/lang/String;Lcom/facebook/acra/CustomReportDataSupplier;)V

    .line 213
    invoke-static {p0, v0}, Lcom/facebook/common/errorreporting/persisteduid/PersistedUid;->a(Landroid/content/Context;Lcom/facebook/acra/ErrorReporter;)V

    .line 215
    invoke-static {p0, v0}, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;->a(Landroid/content/Context;Lcom/facebook/acra/ErrorReporter;)V

    .line 217
    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 218
    const-wide/32 v2, 0x100000

    invoke-virtual {v0, v2, v3}, Lcom/facebook/acra/ErrorReporter;->setMaxReportSize(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/app/FacebookApplication;->e:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v1, "ACRA_Setup"

    invoke-virtual {v0, v1}, Lcom/facebook/base/app/LightweightPerfEvents;->b(Ljava/lang/String;)V

    .line 222
    return-void

    .line 191
    :cond_2
    :try_start_1
    const-string v0, "https://b-www.facebook.com/mobile/android_crash_logs/"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 221
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/katana/app/FacebookApplication;->e:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v2, "ACRA_Setup"

    invoke-virtual {v1, v2}, Lcom/facebook/base/app/LightweightPerfEvents;->b(Ljava/lang/String;)V

    throw v0
.end method

.method private g()Lcom/facebook/config/application/FbAppType;
    .locals 3

    .prologue
    .line 415
    iget-object v0, p0, Lcom/facebook/katana/app/FacebookApplication;->e:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v1, "FacebookApplication#getAppType"

    invoke-virtual {v0, v1}, Lcom/facebook/base/app/LightweightPerfEvents;->a(Ljava/lang/String;)V

    .line 417
    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 418
    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/katana/app/WorkAppTypes;->a:Lcom/facebook/config/application/FbAppType;

    .line 428
    :goto_0
    iget-object v1, p0, Lcom/facebook/katana/app/FacebookApplication;->e:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v2, "FacebookApplication#getAppType"

    invoke-virtual {v1, v2}, Lcom/facebook/base/app/LightweightPerfEvents;->b(Ljava/lang/String;)V

    .line 429
    return-object v0

    .line 418
    :cond_0
    sget-object v0, Lcom/facebook/katana/app/WorkAppTypes;->b:Lcom/facebook/config/application/FbAppType;

    goto :goto_0

    .line 423
    :cond_1
    sget-object v0, Lcom/facebook/katana/app/FacebookAppTypes;->a:Lcom/facebook/config/application/FbAppType;

    sget-object v1, Lcom/facebook/katana/app/FacebookAppTypes;->b:Lcom/facebook/config/application/FbAppType;

    sget-object v2, Lcom/facebook/katana/app/FacebookAppTypes;->c:Lcom/facebook/config/application/FbAppType;

    invoke-static {v0, v1, v2}, Lcom/facebook/config/application/FbAppTypeSelector;->a(Lcom/facebook/config/application/FbAppType;Lcom/facebook/config/application/FbAppType;Lcom/facebook/config/application/FbAppType;)Lcom/facebook/config/application/FbAppType;

    move-result-object v0

    goto :goto_0
.end method

.method private h()Lcom/facebook/common/process/ProcessName;
    .locals 1

    .prologue
    .line 438
    invoke-static {p0}, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->a(Landroid/content/Context;)Lcom/facebook/common/process/ProcessName;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final a()Lcom/facebook/base/app/ApplicationLike;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 227
    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    invoke-static {}, Lcom/facebook/systrace/Systrace;->a()V

    .line 234
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 236
    :try_start_0
    invoke-static {p0}, Lcom/facebook/common/dextricks/MemoryEnlargementHack;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/facebook/katana/app/FacebookApplication;->e:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v1, "ColdStart/FBApp.createDelegate"

    invoke-virtual {v0, v1}, Lcom/facebook/base/app/LightweightPerfEvents;->a(Ljava/lang/String;)V

    .line 245
    :try_start_1
    invoke-direct {p0}, Lcom/facebook/katana/app/FacebookApplication;->h()Lcom/facebook/common/process/ProcessName;

    move-result-object v0

    .line 246
    const-string v1, "recovery"

    invoke-virtual {v0}, Lcom/facebook/common/process/ProcessName;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 247
    iget-object v1, p0, Lcom/facebook/katana/app/FacebookApplication;->f:Lcom/facebook/nobreak/RecoveryModeHelper;

    invoke-virtual {v1, p0}, Lcom/facebook/nobreak/RecoveryModeHelper;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 248
    iget-object v1, p0, Lcom/facebook/katana/app/FacebookApplication;->f:Lcom/facebook/nobreak/RecoveryModeHelper;

    invoke-static {}, Lcom/facebook/nobreak/RecoveryModeHelper;->b()V

    .line 258
    :cond_2
    :goto_1
    const-string v1, "nodex"

    invoke-virtual {v0}, Lcom/facebook/common/process/ProcessName;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 261
    new-instance v0, Lcom/facebook/katana/app/NodexFacebookApplicationImpl;

    invoke-direct {v0}, Lcom/facebook/katana/app/NodexFacebookApplicationImpl;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 311
    iget-object v1, p0, Lcom/facebook/katana/app/FacebookApplication;->e:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v2, "ColdStart/FBApp.createDelegate"

    invoke-virtual {v1, v2}, Lcom/facebook/base/app/LightweightPerfEvents;->b(Ljava/lang/String;)V

    .line 328
    :goto_2
    return-object v0

    .line 237
    :catch_0
    move-exception v0

    .line 238
    const-string v1, "FacebookApplication"

    const-string v2, "Unable to set large heap mode"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 250
    :cond_3
    :try_start_2
    new-instance v0, Lcom/facebook/katana/app/RecoveryModeFacebookApplicationImpl;

    iget-object v1, p0, Lcom/facebook/katana/app/FacebookApplication;->f:Lcom/facebook/nobreak/RecoveryModeHelper;

    invoke-direct {v0, p0, v1}, Lcom/facebook/katana/app/RecoveryModeFacebookApplicationImpl;-><init>(Landroid/app/Application;Lcom/facebook/nobreak/RecoveryModeHelper;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 311
    iget-object v1, p0, Lcom/facebook/katana/app/FacebookApplication;->e:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v2, "ColdStart/FBApp.createDelegate"

    invoke-virtual {v1, v2}, Lcom/facebook/base/app/LightweightPerfEvents;->b(Ljava/lang/String;)V

    goto :goto_2

    .line 252
    :cond_4
    :try_start_3
    iget-object v1, p0, Lcom/facebook/katana/app/FacebookApplication;->f:Lcom/facebook/nobreak/RecoveryModeHelper;

    invoke-virtual {v1, p0}, Lcom/facebook/nobreak/RecoveryModeHelper;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 255
    iget-object v1, p0, Lcom/facebook/katana/app/FacebookApplication;->f:Lcom/facebook/nobreak/RecoveryModeHelper;

    invoke-static {}, Lcom/facebook/nobreak/RecoveryModeHelper;->b()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 311
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/katana/app/FacebookApplication;->e:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v2, "ColdStart/FBApp.createDelegate"

    invoke-virtual {v1, v2}, Lcom/facebook/base/app/LightweightPerfEvents;->b(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_5
    :try_start_4
    const-string v1, "videoplayer"

    invoke-virtual {v0}, Lcom/facebook/common/process/ProcessName;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 265
    new-instance v0, Lcom/facebook/katana/app/NodexFacebookApplicationImpl;

    invoke-direct {v0}, Lcom/facebook/katana/app/NodexFacebookApplicationImpl;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 311
    iget-object v1, p0, Lcom/facebook/katana/app/FacebookApplication;->e:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v2, "ColdStart/FBApp.createDelegate"

    invoke-virtual {v1, v2}, Lcom/facebook/base/app/LightweightPerfEvents;->b(Ljava/lang/String;)V

    goto :goto_2

    .line 268
    :cond_6
    :try_start_5
    const-string v0, "wallpaper"

    invoke-direct {p0}, Lcom/facebook/katana/app/FacebookApplication;->h()Lcom/facebook/common/process/ProcessName;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/common/process/ProcessName;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 271
    new-instance v0, Lcom/facebook/katana/app/WallpaperFacebookApplicationImpl;

    invoke-direct {v0}, Lcom/facebook/katana/app/WallpaperFacebookApplicationImpl;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 311
    iget-object v1, p0, Lcom/facebook/katana/app/FacebookApplication;->e:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v2, "ColdStart/FBApp.createDelegate"

    invoke-virtual {v1, v2}, Lcom/facebook/base/app/LightweightPerfEvents;->b(Ljava/lang/String;)V

    goto :goto_2

    .line 275
    :cond_7
    :try_start_6
    iget-object v0, p0, Lcom/facebook/katana/app/FacebookApplication;->e:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v1, "ColdStart/EnsureDexsLoaded"

    invoke-virtual {v0, v1}, Lcom/facebook/base/app/LightweightPerfEvents;->a(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 277
    :try_start_7
    iget-object v0, p0, Lcom/facebook/katana/app/FacebookApplication;->e:Lcom/facebook/base/app/LightweightPerfEvents;

    invoke-direct {p0, v0}, Lcom/facebook/katana/app/FacebookApplication;->a(Lcom/facebook/base/app/LightweightPerfEvents;)Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v3

    .line 279
    :try_start_8
    iget-object v0, p0, Lcom/facebook/katana/app/FacebookApplication;->e:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v1, "ColdStart/EnsureDexsLoaded"

    invoke-virtual {v0, v1}, Lcom/facebook/base/app/LightweightPerfEvents;->b(Ljava/lang/String;)V

    .line 282
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_8

    invoke-direct {p0}, Lcom/facebook/katana/app/FacebookApplication;->h()Lcom/facebook/common/process/ProcessName;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/common/process/ProcessName;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 285
    invoke-static {p0}, Lcom/facebook/common/gcinitopt/GcOptimizer;->a(Landroid/content/Context;)V

    .line 290
    :cond_8
    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/facebook/dalvik/DalvikLinearAllocType;->FBANDROID_DEBUG:Lcom/facebook/dalvik/DalvikLinearAllocType;

    .line 294
    :goto_3
    iget-object v1, p0, Lcom/facebook/katana/app/FacebookApplication;->e:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v2, "ColdStart/ReplaceLinearAllocBuffer"

    invoke-virtual {v1, v2}, Lcom/facebook/base/app/LightweightPerfEvents;->a(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 297
    :try_start_9
    invoke-static {v0}, Lcom/facebook/dalvik/DalvikReplaceBuffer;->a(Lcom/facebook/dalvik/DalvikLinearAllocType;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-result v0

    .line 299
    :try_start_a
    iget-object v1, p0, Lcom/facebook/katana/app/FacebookApplication;->e:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v2, "ColdStart/ReplaceLinearAllocBuffer"

    invoke-virtual {v1, v2}, Lcom/facebook/base/app/LightweightPerfEvents;->b(Ljava/lang/String;)V

    .line 302
    if-nez v0, :cond_9

    .line 303
    iget-object v0, p0, Lcom/facebook/katana/app/FacebookApplication;->e:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v1, "ColdStart/FallbackReplaceLinearAllocBuffer"

    invoke-virtual {v0, v1}, Lcom/facebook/base/app/LightweightPerfEvents;->a(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 305
    :try_start_b
    invoke-direct {p0}, Lcom/facebook/katana/app/FacebookApplication;->h()Lcom/facebook/common/process/ProcessName;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/common/process/ProcessName;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/dalviktelemetry/DalvikTelemetry;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 307
    :try_start_c
    iget-object v0, p0, Lcom/facebook/katana/app/FacebookApplication;->e:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v1, "ColdStart/FallbackReplaceLinearAllocBuffer"

    invoke-virtual {v0, v1}, Lcom/facebook/base/app/LightweightPerfEvents;->b(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 311
    :cond_9
    iget-object v0, p0, Lcom/facebook/katana/app/FacebookApplication;->e:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v1, "ColdStart/FBApp.createDelegate"

    invoke-virtual {v0, v1}, Lcom/facebook/base/app/LightweightPerfEvents;->b(Ljava/lang/String;)V

    .line 314
    const-string v0, "fbns"

    invoke-direct {p0}, Lcom/facebook/katana/app/FacebookApplication;->h()Lcom/facebook/common/process/ProcessName;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/common/process/ProcessName;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 315
    new-instance v0, Lcom/facebook/katana/app/FbnsApplicationImpl;

    invoke-direct {v0}, Lcom/facebook/katana/app/FbnsApplicationImpl;-><init>()V

    goto/16 :goto_2

    .line 279
    :catchall_1
    move-exception v0

    :try_start_d
    iget-object v1, p0, Lcom/facebook/katana/app/FacebookApplication;->e:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v2, "ColdStart/EnsureDexsLoaded"

    invoke-virtual {v1, v2}, Lcom/facebook/base/app/LightweightPerfEvents;->b(Ljava/lang/String;)V

    throw v0

    .line 290
    :cond_a
    sget-object v0, Lcom/facebook/dalvik/DalvikLinearAllocType;->FBANDROID_RELEASE:Lcom/facebook/dalvik/DalvikLinearAllocType;

    goto :goto_3

    .line 299
    :catchall_2
    move-exception v0

    iget-object v1, p0, Lcom/facebook/katana/app/FacebookApplication;->e:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v2, "ColdStart/ReplaceLinearAllocBuffer"

    invoke-virtual {v1, v2}, Lcom/facebook/base/app/LightweightPerfEvents;->b(Ljava/lang/String;)V

    throw v0

    .line 307
    :catchall_3
    move-exception v0

    iget-object v1, p0, Lcom/facebook/katana/app/FacebookApplication;->e:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v2, "ColdStart/FallbackReplaceLinearAllocBuffer"

    invoke-virtual {v1, v2}, Lcom/facebook/base/app/LightweightPerfEvents;->b(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 318
    :cond_b
    new-instance v0, Lcom/facebook/katana/app/FacebookApplicationImpl;

    iget-object v2, p0, Lcom/facebook/katana/app/FacebookApplication;->a:Lcom/facebook/config/application/FbAppType;

    iget-wide v4, p0, Lcom/facebook/katana/app/FacebookApplication;->c:J

    iget-object v6, p0, Lcom/facebook/katana/app/FacebookApplication;->d:Lcom/facebook/base/lwperf/perfstats/PerfStats;

    iget-object v7, p0, Lcom/facebook/katana/app/FacebookApplication;->e:Lcom/facebook/base/app/LightweightPerfEvents;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/facebook/katana/app/FacebookApplicationImpl;-><init>(Landroid/app/Application;Lcom/facebook/config/application/FbAppType;Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;JLcom/facebook/base/lwperf/perfstats/PerfStats;Lcom/facebook/base/app/LightweightPerfEvents;)V

    .line 326
    iput-object v8, p0, Lcom/facebook/katana/app/FacebookApplication;->e:Lcom/facebook/base/app/LightweightPerfEvents;

    .line 327
    iput-object v8, p0, Lcom/facebook/katana/app/FacebookApplication;->d:Lcom/facebook/base/lwperf/perfstats/PerfStats;

    goto/16 :goto_2
.end method

.method protected final b()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StringFormatUse",
            "BadMethodUse-android.util.Log.v",
            "BadMethodUse-android.util.Log.d",
            "BadMethodUse-android.util.Log.i",
            "BadMethodUse-android.util.Log.w",
            "BadMethodUse-android.util.Log.e"
        }
    .end annotation

    .prologue
    .line 131
    invoke-static {}, Lcom/facebook/base/lwperf/LightWeightPerfState;->a()Lcom/facebook/base/lwperf/LightWeightPerfState;

    invoke-static {}, Lcom/facebook/base/lwperf/LightWeightPerfState;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/katana/app/FacebookApplication;->c:J

    .line 133
    iget-object v0, p0, Lcom/facebook/katana/app/FacebookApplication;->d:Lcom/facebook/base/lwperf/perfstats/PerfStats;

    invoke-virtual {v0}, Lcom/facebook/base/lwperf/perfstats/PerfStats;->j()Lcom/facebook/base/lwperf/perfstats/PerfStats;

    .line 137
    iget-object v0, p0, Lcom/facebook/katana/app/FacebookApplication;->e:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v1, "ColdStart/FBAppImpl.onCreate"

    invoke-virtual {v0, v1}, Lcom/facebook/base/app/LightweightPerfEvents;->c(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/facebook/katana/app/FacebookApplication;->e:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v1, "ColdStart/FBApp.onBaseContextAttached"

    invoke-virtual {v0, v1}, Lcom/facebook/base/app/LightweightPerfEvents;->a(Ljava/lang/String;)V

    .line 141
    invoke-static {}, Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;->a()Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;->b()Z

    .line 146
    :try_start_0
    const-string v0, "true"

    new-instance v1, Lcom/facebook/common/manifest/ManifestReader;

    invoke-direct {v1, p0}, Lcom/facebook/common/manifest/ManifestReader;-><init>(Landroid/content/Context;)V

    const-string v2, "com.facebook.ndash"

    invoke-virtual {v1, v2}, Lcom/facebook/common/manifest/ManifestReader;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 151
    iget-object v1, p0, Lcom/facebook/katana/app/FacebookApplication;->e:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v2, "CatchMeIfYouCan_Setup"

    invoke-virtual {v1, v2}, Lcom/facebook/base/app/LightweightPerfEvents;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 153
    if-eqz v0, :cond_0

    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    .line 156
    :cond_0
    invoke-static {}, Lcom/facebook/nobreak/CatchMeIfYouCanHolder;->a()Lcom/facebook/nobreak/CatchMeIfYouCan;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/app/FacebookApplication;->b:Lcom/facebook/nobreak/CatchMeIfYouCan;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/facebook/katana/app/FacebookApplication;->e:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v1, "CatchMeIfYouCan_Setup"

    invoke-virtual {v0, v1}, Lcom/facebook/base/app/LightweightPerfEvents;->b(Ljava/lang/String;)V

    .line 166
    invoke-static {}, Lcom/facebook/nobreak/RecoveryModeHelper;->a()Lcom/facebook/nobreak/RecoveryModeHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/app/FacebookApplication;->f:Lcom/facebook/nobreak/RecoveryModeHelper;

    .line 168
    invoke-static {p0}, Lcom/facebook/nobreak/ExceptionHandlerToDispatchKnownExceptionRemedies;->a(Landroid/app/Application;)V

    .line 170
    invoke-direct {p0}, Lcom/facebook/katana/app/FacebookApplication;->f()V

    .line 172
    iget-object v0, p0, Lcom/facebook/katana/app/FacebookApplication;->e:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v1, "BreakpadManager_Setup"

    invoke-virtual {v0, v1}, Lcom/facebook/base/app/LightweightPerfEvents;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 174
    :try_start_3
    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->c()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/katana/app/FacebookApplication;->a(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 176
    :try_start_4
    iget-object v0, p0, Lcom/facebook/katana/app/FacebookApplication;->e:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v1, "BreakpadManager_Setup"

    invoke-virtual {v0, v1}, Lcom/facebook/base/app/LightweightPerfEvents;->b(Ljava/lang/String;)V

    .line 179
    invoke-static {}, Lcom/facebook/systrace/MemoryTracer;->a()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 181
    iget-object v0, p0, Lcom/facebook/katana/app/FacebookApplication;->e:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v1, "ColdStart/FBApp.onBaseContextAttached"

    invoke-virtual {v0, v1}, Lcom/facebook/base/app/LightweightPerfEvents;->b(Ljava/lang/String;)V

    .line 182
    return-void

    .line 160
    :cond_1
    :try_start_5
    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/facebook/katana/app/FacebookApplication;->h:[Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;

    :goto_1
    invoke-static {p0, v0}, Lcom/facebook/nobreak/CatchMeIfYouCanHolder;->a(Landroid/app/Application;[Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;)Lcom/facebook/nobreak/CatchMeIfYouCan;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/app/FacebookApplication;->b:Lcom/facebook/nobreak/CatchMeIfYouCan;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 164
    :catchall_0
    move-exception v0

    :try_start_6
    iget-object v1, p0, Lcom/facebook/katana/app/FacebookApplication;->e:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v2, "CatchMeIfYouCan_Setup"

    invoke-virtual {v1, v2}, Lcom/facebook/base/app/LightweightPerfEvents;->b(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 181
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/facebook/katana/app/FacebookApplication;->e:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v2, "ColdStart/FBApp.onBaseContextAttached"

    invoke-virtual {v1, v2}, Lcom/facebook/base/app/LightweightPerfEvents;->b(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_2
    :try_start_7
    sget-object v0, Lcom/facebook/katana/app/FacebookApplication;->g:[Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 176
    :catchall_2
    move-exception v0

    :try_start_8
    iget-object v1, p0, Lcom/facebook/katana/app/FacebookApplication;->e:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v2, "BreakpadManager_Setup"

    invoke-virtual {v1, v2}, Lcom/facebook/base/app/LightweightPerfEvents;->b(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
.end method

.method public final e()Lcom/facebook/inject/FbInjector;
    .locals 3

    .prologue
    .line 404
    invoke-virtual {p0}, Lcom/facebook/katana/app/FacebookApplication;->c()Lcom/facebook/base/app/ApplicationLike;

    move-result-object v0

    .line 405
    instance-of v1, v0, Lcom/facebook/katana/app/FacebookApplicationImpl;

    if-eqz v1, :cond_0

    .line 406
    check-cast v0, Lcom/facebook/katana/app/FacebookApplicationImpl;

    .line 407
    invoke-virtual {v0}, Lcom/facebook/katana/app/FacebookApplicationImpl;->e()Lcom/facebook/inject/FbInjector;

    move-result-object v0

    return-object v0

    .line 409
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Injector is not supported in process "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/facebook/katana/app/FacebookApplication;->h()Lcom/facebook/common/process/ProcessName;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/common/process/ProcessName;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
