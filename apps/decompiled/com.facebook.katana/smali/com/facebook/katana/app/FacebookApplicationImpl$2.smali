.class Lcom/facebook/katana/app/FacebookApplicationImpl$2;
.super Lcom/facebook/common/init/AppInitLock$Listener;
.source "FacebookApplicationImpl.java"


# instance fields
.field final synthetic a:Lcom/facebook/inject/FbInjector;

.field final synthetic b:Lcom/facebook/katana/app/FacebookApplicationImpl;


# direct methods
.method constructor <init>(Lcom/facebook/katana/app/FacebookApplicationImpl;Lcom/facebook/inject/FbInjector;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/facebook/katana/app/FacebookApplicationImpl$2;->b:Lcom/facebook/katana/app/FacebookApplicationImpl;

    iput-object p2, p0, Lcom/facebook/katana/app/FacebookApplicationImpl$2;->a:Lcom/facebook/inject/FbInjector;

    invoke-direct {p0}, Lcom/facebook/common/init/AppInitLock$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 171
    const-string v0, "FacebookApplicationImpl.AppInitLock.onInitialized"

    const v1, 0x721d3fd6

    invoke-static {v0, v1}, Lcom/facebook/tools/dextr/runtime/detour/TracerDetour;->a(Ljava/lang/String;I)V

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/facebook/katana/app/FacebookApplicationImpl$2;->b:Lcom/facebook/katana/app/FacebookApplicationImpl;

    invoke-static {v0}, Lcom/facebook/katana/app/FacebookApplicationImpl;->a(Lcom/facebook/katana/app/FacebookApplicationImpl;)Lcom/facebook/katana/app/module/common/FbandroidProcessName;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/app/module/common/FbandroidProcessName;->getProcessName()Lcom/facebook/common/process/ProcessName;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/common/process/ProcessName;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/facebook/katana/app/FacebookApplicationImpl$2;->b:Lcom/facebook/katana/app/FacebookApplicationImpl;

    invoke-virtual {v0}, Lcom/facebook/katana/app/FacebookApplicationImpl;->e()Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/feed/perf/FeedPerfLogger;->a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/feed/perf/FeedPerfLogger;

    move-result-object v0

    check-cast v0, Lcom/facebook/feed/perf/FeedPerfLogger;

    invoke-virtual {v0}, Lcom/facebook/feed/perf/FeedPerfLogger;->l()V

    .line 176
    iget-object v1, p0, Lcom/facebook/katana/app/FacebookApplicationImpl$2;->b:Lcom/facebook/katana/app/FacebookApplicationImpl;

    iget-object v0, p0, Lcom/facebook/katana/app/FacebookApplicationImpl$2;->a:Lcom/facebook/inject/FbInjector;

    invoke-static {v0}, Lcom/facebook/perf/StartupPerfLogger;->a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/perf/StartupPerfLogger;

    move-result-object v0

    check-cast v0, Lcom/facebook/perf/StartupPerfLogger;

    invoke-static {v1, v0}, Lcom/facebook/katana/app/FacebookApplicationImpl;->a(Lcom/facebook/katana/app/FacebookApplicationImpl;Lcom/facebook/perf/StartupPerfLogger;)V

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/app/FacebookApplicationImpl$2;->a:Lcom/facebook/inject/FbInjector;

    invoke-static {v0}, Lcom/facebook/dalviktelemetry/DalvikTelemetry;->a(Lcom/facebook/inject/FbInjector;)V

    .line 180
    iget-object v0, p0, Lcom/facebook/katana/app/FacebookApplicationImpl$2;->b:Lcom/facebook/katana/app/FacebookApplicationImpl;

    iget-object v1, p0, Lcom/facebook/katana/app/FacebookApplicationImpl$2;->a:Lcom/facebook/inject/FbInjector;

    invoke-static {v0, v1}, Lcom/facebook/katana/app/FacebookApplicationImpl;->a(Lcom/facebook/katana/app/FacebookApplicationImpl;Lcom/facebook/inject/FbInjector;)V

    .line 181
    sget-object v0, Lcom/facebook/classpreloader/ClassPreloaderConfig$PreloadStopTriggers;->APP_INIT_DONE:Lcom/facebook/classpreloader/ClassPreloaderConfig$PreloadStopTriggers;

    invoke-static {v0}, Lcom/facebook/classpreloader/ClassPreloaderController;->a(Lcom/facebook/classpreloader/ClassPreloaderConfig$PreloadStopTriggers;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    const v0, 0xc223fb4

    invoke-static {v0}, Lcom/facebook/tools/dextr/runtime/detour/TracerDetour;->a(I)V

    .line 185
    return-void

    .line 184
    :catchall_0
    move-exception v0

    const v1, -0x35596d94    # -5458230.0f

    invoke-static {v1}, Lcom/facebook/tools/dextr/runtime/detour/TracerDetour;->a(I)V

    throw v0
.end method
