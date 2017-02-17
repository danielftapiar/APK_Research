.class public abstract Lcom/facebook/base/app/AbstractApplicationLike;
.super Ljava/lang/Object;
.source "AbstractApplicationLike.java"

# interfaces
.implements Lcom/facebook/base/app/ApplicationLike;
.implements Lcom/facebook/inject/InjectableComponentWithContext;


# static fields
.field private static final m:Ljava/lang/String;


# instance fields
.field protected final a:Landroid/app/Application;

.field b:Lcom/facebook/common/init/impl/FbAppInitializer;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcom/facebook/debug/activitytracer/ActivityTracer;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Ljava/util/concurrent/Executor;
    .annotation runtime Lcom/facebook/common/executors/ForUiThread;
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field volatile e:Lcom/facebook/resources/FbResources;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field f:Lcom/facebook/inject/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/inject/Lazy",
            "<",
            "Lcom/facebook/common/memory/MemoryManager;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field g:Lcom/facebook/common/errorreporting/FbErrorReporter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/common/errorreporting/FbCustomReportDataSupplier;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field i:Lcom/facebook/systrace/mainlooper/MainLooperTracerFactory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field j:Lcom/facebook/config/application/FbAppType;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field k:Lcom/facebook/debug/coldstart/ColdStartTimer;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field l:Lcom/facebook/messaging/analytics/MessagingPerformanceLogger;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final n:Ljava/util/concurrent/atomic/AtomicInteger;

.field private o:Lcom/facebook/base/app/LightweightPerfEvents;

.field private p:Lcom/facebook/inject/FbInjector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-class v0, Lcom/facebook/base/app/AbstractApplicationLike;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/base/app/AbstractApplicationLike;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lcom/facebook/config/application/FbAppType;Lcom/facebook/base/app/LightweightPerfEvents;)V
    .locals 1

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/facebook/base/app/AbstractApplicationLike;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 116
    iput-object p1, p0, Lcom/facebook/base/app/AbstractApplicationLike;->a:Landroid/app/Application;

    .line 117
    invoke-static {p2}, Lcom/facebook/config/application/FbAppType;->a(Lcom/facebook/config/application/FbAppType;)V

    .line 118
    iput-object p3, p0, Lcom/facebook/base/app/AbstractApplicationLike;->o:Lcom/facebook/base/app/LightweightPerfEvents;

    .line 119
    return-void
.end method

.method private static a(Lcom/facebook/inject/InjectableComponentWithContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/inject/InjectableComponentWithContext;",
            ">(TT;)V"
        }
    .end annotation

    invoke-interface {p0}, Lcom/facebook/inject/InjectableComponentWithContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/base/app/AbstractApplicationLike;->a(Ljava/lang/Object;Landroid/content/Context;)V

    return-void
.end method

.method private static a(Ljava/lang/Object;Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Lcom/facebook/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v1

    check-cast p0, Lcom/facebook/base/app/AbstractApplicationLike;

    invoke-static {v1}, Lcom/facebook/common/init/impl/FbAppInitializer;->a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/common/init/impl/FbAppInitializer;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/init/impl/FbAppInitializer;

    iput-object v0, p0, Lcom/facebook/base/app/AbstractApplicationLike;->b:Lcom/facebook/common/init/impl/FbAppInitializer;

    invoke-static {v1}, Lcom/facebook/debug/activitytracer/ActivityTracer;->a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/debug/activitytracer/ActivityTracer;

    move-result-object v0

    check-cast v0, Lcom/facebook/debug/activitytracer/ActivityTracer;

    iput-object v0, p0, Lcom/facebook/base/app/AbstractApplicationLike;->c:Lcom/facebook/debug/activitytracer/ActivityTracer;

    invoke-static {v1}, Lcom/facebook/common/executors/ListeningScheduledExecutorService_ForUiThreadMethodAutoProvider;->a(Lcom/facebook/inject/InjectorLike;)Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/facebook/base/app/AbstractApplicationLike;->d:Ljava/util/concurrent/Executor;

    invoke-static {v1}, Lcom/facebook/resources/impl/DownloadedFbResources;->a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/resources/impl/DownloadedFbResources;

    move-result-object v0

    check-cast v0, Lcom/facebook/resources/FbResources;

    iput-object v0, p0, Lcom/facebook/base/app/AbstractApplicationLike;->e:Lcom/facebook/resources/FbResources;

    invoke-static {v1}, Lcom/facebook/common/memory/Provider_MemoryManager__com_facebook_common_memory_MemoryManager__INJECTED_BY_TemplateInjector;->a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/inject/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/base/app/AbstractApplicationLike;->f:Lcom/facebook/inject/Lazy;

    invoke-static {v1}, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/common/errorreporting/FbErrorReporterImpl;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/errorreporting/FbErrorReporter;

    iput-object v0, p0, Lcom/facebook/base/app/AbstractApplicationLike;->g:Lcom/facebook/common/errorreporting/FbErrorReporter;

    invoke-static {v1}, Lcom/facebook/common/errorreporting/STATICDI_MULTIBIND_PROVIDER$FbCustomReportDataSupplier;->a(Lcom/facebook/inject/InjectorLike;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/base/app/AbstractApplicationLike;->h:Ljava/util/Set;

    invoke-static {v1}, Lcom/facebook/systrace/mainlooper/FbMainLooperTracerFactory;->a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/systrace/mainlooper/FbMainLooperTracerFactory;

    move-result-object v0

    check-cast v0, Lcom/facebook/systrace/mainlooper/MainLooperTracerFactory;

    iput-object v0, p0, Lcom/facebook/base/app/AbstractApplicationLike;->i:Lcom/facebook/systrace/mainlooper/MainLooperTracerFactory;

    const-class v0, Lcom/facebook/config/application/FbAppType;

    invoke-virtual {v1, v0}, Lcom/facebook/inject/FbInjector;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/config/application/FbAppType;

    iput-object v0, p0, Lcom/facebook/base/app/AbstractApplicationLike;->j:Lcom/facebook/config/application/FbAppType;

    invoke-static {v1}, Lcom/facebook/debug/coldstart/ColdStartTimer;->a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/debug/coldstart/ColdStartTimer;

    move-result-object v0

    check-cast v0, Lcom/facebook/debug/coldstart/ColdStartTimer;

    iput-object v0, p0, Lcom/facebook/base/app/AbstractApplicationLike;->k:Lcom/facebook/debug/coldstart/ColdStartTimer;

    invoke-static {v1}, Lcom/facebook/messaging/analytics/MessagingPerformanceLogger;->a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/messaging/analytics/MessagingPerformanceLogger;

    move-result-object v0

    check-cast v0, Lcom/facebook/messaging/analytics/MessagingPerformanceLogger;

    iput-object v0, p0, Lcom/facebook/base/app/AbstractApplicationLike;->l:Lcom/facebook/messaging/analytics/MessagingPerformanceLogger;

    return-void
.end method

.method private static c(Lcom/facebook/common/process/ProcessName;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/process/ProcessName;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/inject/Module;",
            ">;"
        }
    .end annotation

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/facebook/common/process/ProcessName;->d()Lcom/facebook/common/process/PrivateProcessName;

    move-result-object v0

    .line 244
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->i()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    new-instance v2, Lcom/facebook/inject/autorequire/AutoRequireLoaderModule;

    invoke-direct {v2, v0}, Lcom/facebook/inject/autorequire/AutoRequireLoaderModule;-><init>(Lcom/facebook/common/process/PrivateProcessName;)V

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableList$Builder;->c(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    invoke-static {p0}, Lcom/facebook/inject/rootmodule/RootModuleProvider;->a(Lcom/facebook/common/process/ProcessName;)Lcom/facebook/inject/LibraryModule;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->c(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method protected static c()V
    .locals 0

    .prologue
    .line 275
    return-void
.end method

.method private static d(Lcom/facebook/common/process/ProcessName;)V
    .locals 3

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/facebook/common/process/ProcessName;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    const-string v0, "empty"

    .line 318
    :goto_0
    invoke-static {}, Lcom/facebook/acra/ErrorReporter;->getInstance()Lcom/facebook/acra/ErrorReporter;

    move-result-object v1

    const-string v2, "process_name_on_start"

    invoke-virtual {v1, v2, v0}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 319
    return-void

    .line 316
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/common/process/ProcessName;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static g()V
    .locals 1

    .prologue
    .line 222
    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/facebook/debug/log/BLog;->a(I)V

    .line 225
    :cond_0
    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    .line 229
    sget-object v0, Lcom/facebook/base/app/AbstractApplicationLike$3;->a:[I

    iget-object v1, p0, Lcom/facebook/base/app/AbstractApplicationLike;->j:Lcom/facebook/config/application/FbAppType;

    invoke-virtual {v1}, Lcom/facebook/config/application/FbAppType;->g()Lcom/facebook/config/application/IntendedAudience;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/config/application/IntendedAudience;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 236
    const/4 v0, 0x5

    .line 239
    :goto_0
    invoke-static {v0}, Lcom/facebook/debug/log/BLog;->a(I)V

    .line 240
    return-void

    .line 231
    :pswitch_0
    const/4 v0, 0x3

    .line 232
    goto :goto_0

    .line 229
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private i()Lcom/facebook/common/process/ProcessName;
    .locals 4

    .prologue
    .line 304
    iget-object v0, p0, Lcom/facebook/base/app/AbstractApplicationLike;->a:Landroid/app/Application;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 306
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/google/inject/util/Providers;->a(Ljava/lang/Object;)Ljavax/inject/Provider;

    move-result-object v1

    .line 307
    new-instance v2, Lcom/facebook/common/process/DefaultProcessUtil;

    iget-object v3, p0, Lcom/facebook/base/app/AbstractApplicationLike;->a:Landroid/app/Application;

    invoke-direct {v2, v3, v0, v1}, Lcom/facebook/common/process/DefaultProcessUtil;-><init>(Landroid/content/Context;Landroid/app/ActivityManager;Ljavax/inject/Provider;)V

    .line 308
    invoke-interface {v2}, Lcom/facebook/common/process/ProcessUtil;->a()Lcom/facebook/common/process/ProcessName;

    move-result-object v0

    return-object v0
.end method

.method private j()V
    .locals 3

    .prologue
    .line 326
    invoke-static {}, Lcom/facebook/acra/ErrorReporter;->getInstance()Lcom/facebook/acra/ErrorReporter;

    move-result-object v0

    .line 327
    iget-object v1, p0, Lcom/facebook/base/app/AbstractApplicationLike;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    .line 328
    const-string v2, "app_on_create_count"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 329
    return-void
.end method

.method private k()V
    .locals 0

    .prologue
    .line 332
    invoke-static {}, Lcom/facebook/base/app/AbstractApplicationLike;->l()V

    .line 333
    invoke-direct {p0}, Lcom/facebook/base/app/AbstractApplicationLike;->m()V

    .line 334
    return-void
.end method

.method private static l()V
    .locals 3

    .prologue
    .line 338
    sget-object v0, Lcom/facebook/base/app/AbstractApplicationLike;->m:Ljava/lang/String;

    .line 340
    :try_start_0
    const-string v0, "android.os.AsyncTask"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    :goto_0
    return-void

    .line 341
    :catch_0
    move-exception v0

    .line 342
    sget-object v1, Lcom/facebook/base/app/AbstractApplicationLike;->m:Ljava/lang/String;

    const-string v2, "Exception trying to initialize AsyncTask"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private m()V
    .locals 2

    .prologue
    .line 353
    :try_start_0
    iget-object v0, p0, Lcom/facebook/base/app/AbstractApplicationLike;->a:Landroid/app/Application;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    .line 362
    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a()Landroid/app/Application;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/facebook/base/app/AbstractApplicationLike;->a:Landroid/app/Application;

    return-object v0
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/facebook/base/app/AbstractApplicationLike;->f:Lcom/facebook/inject/Lazy;

    invoke-interface {v0}, Lcom/facebook/inject/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/memory/MemoryManager;

    invoke-virtual {v0, p1}, Lcom/facebook/common/memory/MemoryManager;->a(I)V

    .line 285
    return-void
.end method

.method protected a(Lcom/facebook/common/process/ProcessName;)V
    .locals 0

    .prologue
    .line 255
    return-void
.end method

.method public b()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 127
    const-class v0, Lcom/google/common/base/FinalizableReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 128
    invoke-static {}, Lcom/facebook/base/app/AbstractApplicationLike;->g()V

    .line 130
    const-string v0, "Application startup"

    invoke-static {v0}, Lcom/facebook/debug/tracer/AsyncTracer;->a(Ljava/lang/String;)Lcom/facebook/debug/tracer/AsyncTracer;

    move-result-object v1

    .line 131
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 132
    invoke-static {}, Lcom/facebook/systrace/SystraceMetadata;->c()V

    .line 134
    invoke-direct {p0}, Lcom/facebook/base/app/AbstractApplicationLike;->k()V

    .line 135
    invoke-direct {p0}, Lcom/facebook/base/app/AbstractApplicationLike;->j()V

    .line 138
    new-instance v0, Lcom/facebook/base/app/AbstractApplicationLike$1;

    invoke-direct {v0, p0}, Lcom/facebook/base/app/AbstractApplicationLike$1;-><init>(Lcom/facebook/base/app/AbstractApplicationLike;)V

    invoke-static {v0}, Lcom/facebook/common/soloader/SoLoaderShim;->a(Lcom/facebook/common/soloader/SoLoaderShim$Handler;)V

    .line 146
    invoke-direct {p0}, Lcom/facebook/base/app/AbstractApplicationLike;->i()Lcom/facebook/common/process/ProcessName;

    move-result-object v4

    .line 147
    invoke-virtual {p0, v4}, Lcom/facebook/base/app/AbstractApplicationLike;->a(Lcom/facebook/common/process/ProcessName;)V

    .line 148
    invoke-static {v4}, Lcom/facebook/base/app/AbstractApplicationLike;->d(Lcom/facebook/common/process/ProcessName;)V

    .line 150
    monitor-enter p0

    .line 152
    :try_start_0
    invoke-static {v4}, Lcom/facebook/base/app/AbstractApplicationLike;->c(Lcom/facebook/common/process/ProcessName;)Ljava/util/List;

    move-result-object v0

    .line 153
    invoke-virtual {v4}, Lcom/facebook/common/process/ProcessName;->d()Lcom/facebook/common/process/PrivateProcessName;

    move-result-object v5

    .line 154
    iget-object v6, p0, Lcom/facebook/base/app/AbstractApplicationLike;->o:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v7, "ColdStart/FBInjector.create"

    invoke-virtual {v6, v7}, Lcom/facebook/base/app/LightweightPerfEvents;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 156
    :try_start_1
    invoke-virtual {p0}, Lcom/facebook/base/app/AbstractApplicationLike;->a()Landroid/app/Application;

    move-result-object v6

    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->c()Z

    move-result v7

    invoke-static {v6, v0, v5, v7}, Lcom/facebook/inject/FbInjector;->a(Landroid/content/Context;Ljava/util/List;Lcom/facebook/common/process/PrivateProcessName;Z)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/base/app/AbstractApplicationLike;->p:Lcom/facebook/inject/FbInjector;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    :try_start_2
    iget-object v0, p0, Lcom/facebook/base/app/AbstractApplicationLike;->o:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v5, "ColdStart/FBInjector.create"

    invoke-virtual {v0, v5}, Lcom/facebook/base/app/LightweightPerfEvents;->b(Ljava/lang/String;)V

    .line 161
    const-string v0, "ApplicationLike.onCreate#notifyAll"

    const v5, -0x14147071

    invoke-static {v0, v5}, Lcom/facebook/tools/dextr/runtime/detour/TracerDetour;->a(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 163
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 165
    const v0, 0x4586f79f

    :try_start_4
    invoke-static {v0}, Lcom/facebook/tools/dextr/runtime/detour/TracerDetour;->a(I)V

    .line 167
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 169
    iget-object v0, p0, Lcom/facebook/base/app/AbstractApplicationLike;->o:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v5, "ColdStart/FBInjector.inject"

    invoke-virtual {v0, v5}, Lcom/facebook/base/app/LightweightPerfEvents;->a(Ljava/lang/String;)V

    .line 171
    :try_start_5
    invoke-static {p0}, Lcom/facebook/base/app/AbstractApplicationLike;->a(Lcom/facebook/inject/InjectableComponentWithContext;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 173
    iget-object v0, p0, Lcom/facebook/base/app/AbstractApplicationLike;->o:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v5, "ColdStart/FBInjector.inject"

    invoke-virtual {v0, v5}, Lcom/facebook/base/app/LightweightPerfEvents;->b(Ljava/lang/String;)V

    .line 174
    iput-object v8, p0, Lcom/facebook/base/app/AbstractApplicationLike;->o:Lcom/facebook/base/app/LightweightPerfEvents;

    .line 178
    invoke-direct {p0}, Lcom/facebook/base/app/AbstractApplicationLike;->h()V

    .line 180
    iget-object v0, p0, Lcom/facebook/base/app/AbstractApplicationLike;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/errorreporting/FbCustomReportDataSupplier;

    .line 181
    iget-object v6, p0, Lcom/facebook/base/app/AbstractApplicationLike;->g:Lcom/facebook/common/errorreporting/FbErrorReporter;

    invoke-interface {v0}, Lcom/facebook/common/errorreporting/FbCustomReportDataSupplier;->c()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v0}, Lcom/facebook/common/errorreporting/FbErrorReporter;->a(Ljava/lang/String;Lcom/facebook/common/errorreporting/FbCustomReportDataSupplier;)V

    goto :goto_0

    .line 159
    :catchall_0
    move-exception v0

    :try_start_6
    iget-object v1, p0, Lcom/facebook/base/app/AbstractApplicationLike;->o:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v2, "ColdStart/FBInjector.create"

    invoke-virtual {v1, v2}, Lcom/facebook/base/app/LightweightPerfEvents;->b(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 167
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 165
    :catchall_2
    move-exception v0

    const v1, -0x3c10f1a7

    :try_start_7
    invoke-static {v1}, Lcom/facebook/tools/dextr/runtime/detour/TracerDetour;->a(I)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 173
    :catchall_3
    move-exception v0

    iget-object v1, p0, Lcom/facebook/base/app/AbstractApplicationLike;->o:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v2, "ColdStart/FBInjector.inject"

    invoke-virtual {v1, v2}, Lcom/facebook/base/app/LightweightPerfEvents;->b(Ljava/lang/String;)V

    .line 174
    iput-object v8, p0, Lcom/facebook/base/app/AbstractApplicationLike;->o:Lcom/facebook/base/app/LightweightPerfEvents;

    throw v0

    .line 184
    :cond_0
    iput-object v8, p0, Lcom/facebook/base/app/AbstractApplicationLike;->h:Ljava/util/Set;

    .line 186
    invoke-virtual {p0, v4}, Lcom/facebook/base/app/AbstractApplicationLike;->b(Lcom/facebook/common/process/ProcessName;)V

    .line 187
    const-string v0, "FbAppInitializer.run"

    const v4, 0x78f53b04

    invoke-static {v0, v4}, Lcom/facebook/tools/dextr/runtime/detour/TracerDetour;->a(Ljava/lang/String;I)V

    .line 190
    :try_start_8
    iget-object v0, p0, Lcom/facebook/base/app/AbstractApplicationLike;->b:Lcom/facebook/common/init/impl/FbAppInitializer;

    invoke-virtual {v0}, Lcom/facebook/common/init/impl/FbAppInitializer;->a()Lcom/google/common/util/concurrent/ListenableFuture;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    move-result-object v0

    .line 192
    const v4, -0x2551280b

    invoke-static {v4}, Lcom/facebook/tools/dextr/runtime/detour/TracerDetour;->a(I)V

    .line 194
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v2, v4, v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    .line 195
    iget-object v4, p0, Lcom/facebook/base/app/AbstractApplicationLike;->l:Lcom/facebook/messaging/analytics/MessagingPerformanceLogger;

    invoke-virtual {v4, v2, v3}, Lcom/facebook/messaging/analytics/MessagingPerformanceLogger;->a(J)V

    .line 196
    iget-object v4, p0, Lcom/facebook/base/app/AbstractApplicationLike;->k:Lcom/facebook/debug/coldstart/ColdStartTimer;

    invoke-virtual {v4, v2, v3}, Lcom/facebook/debug/coldstart/ColdStartTimer;->a(J)V

    .line 197
    iget-object v2, p0, Lcom/facebook/base/app/AbstractApplicationLike;->c:Lcom/facebook/debug/activitytracer/ActivityTracer;

    const-string v3, "cold_start"

    invoke-virtual {v2, v1, v3}, Lcom/facebook/debug/activitytracer/ActivityTracer;->a(Lcom/facebook/debug/tracer/AsyncTracer;Ljava/lang/String;)Lcom/facebook/debug/activitytracer/ActivityTrace;

    .line 201
    iget-object v1, p0, Lcom/facebook/base/app/AbstractApplicationLike;->c:Lcom/facebook/debug/activitytracer/ActivityTracer;

    invoke-virtual {v1}, Lcom/facebook/debug/activitytracer/ActivityTracer;->a()Lcom/facebook/debug/activitytracer/ActivityTrace;

    move-result-object v1

    .line 202
    if-eqz v1, :cond_1

    .line 203
    sget-object v2, Lcom/facebook/debug/activitytracer/AppStartupType;->COLD_START:Lcom/facebook/debug/activitytracer/AppStartupType;

    invoke-virtual {v1, v2}, Lcom/facebook/debug/activitytracer/ActivityTrace;->a(Lcom/facebook/debug/activitytracer/AppStartupType;)V

    .line 205
    :cond_1
    new-instance v1, Lcom/facebook/base/app/AbstractApplicationLike$2;

    invoke-direct {v1, p0}, Lcom/facebook/base/app/AbstractApplicationLike$2;-><init>(Lcom/facebook/base/app/AbstractApplicationLike;)V

    iget-object v2, p0, Lcom/facebook/base/app/AbstractApplicationLike;->d:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lcom/google/common/util/concurrent/Futures;->a(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    .line 217
    iget-object v0, p0, Lcom/facebook/base/app/AbstractApplicationLike;->i:Lcom/facebook/systrace/mainlooper/MainLooperTracerFactory;

    invoke-static {v0}, Lcom/facebook/systrace/mainlooper/MainLooperTracer;->a(Lcom/facebook/systrace/mainlooper/MainLooperTracerFactory;)V

    .line 218
    invoke-static {}, Lcom/facebook/perftestutils/FrameRateEventsTraceListener;->c()V

    .line 219
    return-void

    .line 192
    :catchall_4
    move-exception v0

    const v1, 0x6698d2a1

    invoke-static {v1}, Lcom/facebook/tools/dextr/runtime/detour/TracerDetour;->a(I)V

    throw v0
.end method

.method protected b(Lcom/facebook/common/process/ProcessName;)V
    .locals 0

    .prologue
    .line 269
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/facebook/base/app/AbstractApplicationLike;->f:Lcom/facebook/inject/Lazy;

    invoke-interface {v0}, Lcom/facebook/inject/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/memory/MemoryManager;

    invoke-virtual {v0}, Lcom/facebook/common/memory/MemoryManager;->b()V

    .line 280
    return-void
.end method

.method public final declared-synchronized e()Lcom/facebook/inject/FbInjector;
    .locals 2

    .prologue
    .line 291
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/base/app/AbstractApplicationLike;->p:Lcom/facebook/inject/FbInjector;

    if-nez v0, :cond_0

    .line 292
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 295
    :catch_0
    move-exception v0

    .line 296
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 291
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 294
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/facebook/base/app/AbstractApplicationLike;->p:Lcom/facebook/inject/FbInjector;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public final f()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/facebook/base/app/AbstractApplicationLike;->e:Lcom/facebook/resources/FbResources;

    return-object v0
.end method

.method public synthetic getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/facebook/base/app/AbstractApplicationLike;->a()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method
