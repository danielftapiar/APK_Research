.class Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$InitRunnable;
.super Ljava/lang/Object;
.source "AbstractNodexSplashActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;


# direct methods
.method private constructor <init>(Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;)V
    .locals 0

    .prologue
    .line 395
    iput-object p1, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$InitRunnable;->a:Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;B)V
    .locals 0

    .prologue
    .line 395
    invoke-direct {p0, p1}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$InitRunnable;-><init>(Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 398
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$InitRunnable;->a:Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;

    invoke-static {v0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->d(Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;)Ljava/lang/String;

    .line 399
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 401
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$InitRunnable;->a:Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;

    invoke-static {v0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->c(Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$InitRunnable;->a:Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;

    iget-object v0, v0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$InitRunnable;->a:Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;

    invoke-static {v1}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->c(Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v4, 0xbb8

    const v6, 0x3091437a

    invoke-static {v0, v1, v4, v5, v6}, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->a(Landroid/os/Handler;Ljava/lang/Runnable;JI)Z

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$InitRunnable;->a:Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;

    invoke-static {v0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->e(Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 406
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$InitRunnable;->a:Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;

    iget-object v0, v0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$InitRunnable;->a:Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;

    invoke-static {v1}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->e(Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v4, 0x2710

    const v6, -0x5ed4abd6

    invoke-static {v0, v1, v4, v5, v6}, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->a(Landroid/os/Handler;Ljava/lang/Runnable;JI)Z

    .line 409
    :cond_1
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$InitRunnable;->a:Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;

    iget-object v1, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$InitRunnable;->a:Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;

    invoke-virtual {v1}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->a(Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$InitRunnable;->a:Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;

    invoke-static {v0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->f(Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;)Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;->a()Lcom/facebook/nodex/startup/splashscreen/NodexError;

    move-result-object v0

    .line 412
    if-eqz v0, :cond_2

    .line 413
    iget-object v1, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$InitRunnable;->a:Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;

    invoke-static {v1, v0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->a(Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;Lcom/facebook/nodex/startup/splashscreen/NodexError;)V

    .line 491
    :goto_0
    return-void

    .line 417
    :cond_2
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$InitRunnable;->a:Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;

    iget-object v1, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$InitRunnable;->a:Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;

    invoke-virtual {v1}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->a(Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;Ljava/lang/String;)V

    .line 423
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$InitRunnable;->a:Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;

    invoke-static {v0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->g(Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;)Lcom/facebook/nodex/startup/crashloop/CrashLoop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/nodex/startup/crashloop/CrashLoop;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$InitRunnable;->a:Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;

    invoke-static {v0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->g(Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;)Lcom/facebook/nodex/startup/crashloop/CrashLoop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/nodex/startup/crashloop/CrashLoop;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 424
    :cond_3
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$InitRunnable;->a:Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;

    invoke-static {v0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->g(Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;)Lcom/facebook/nodex/startup/crashloop/CrashLoop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/nodex/startup/crashloop/CrashLoop;->b()V

    .line 444
    :cond_4
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$InitRunnable;->a:Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;

    invoke-static {v0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->h(Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$InitRunnable;->a:Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;

    invoke-virtual {v1}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->g()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    .line 447
    if-eqz v1, :cond_5

    .line 449
    sget-object v0, Lcom/facebook/nodex/startup/warmup/NodexWarmupContentProvider$Action;->WaitForInit:Lcom/facebook/nodex/startup/warmup/NodexWarmupContentProvider$Action;

    iget-object v4, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$InitRunnable;->a:Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;

    invoke-static {v4}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->f(Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;)Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;->b()Z

    move-result v4

    invoke-static {}, Lcom/facebook/base/lwperf/LightWeightPerfState;->a()Lcom/facebook/base/lwperf/LightWeightPerfState;

    invoke-static {}, Lcom/facebook/base/lwperf/LightWeightPerfState;->c()J

    move-result-wide v6

    invoke-static {v0, v4, v6, v7}, Lcom/facebook/nodex/startup/warmup/NodexWarmupContentProvider;->a(Lcom/facebook/nodex/startup/warmup/NodexWarmupContentProvider$Action;ZJ)Landroid/content/ContentValues;

    move-result-object v0

    .line 464
    :try_start_0
    iget-object v4, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$InitRunnable;->a:Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;

    invoke-virtual {v4}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->g()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 471
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 482
    :goto_1
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$InitRunnable;->a:Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;

    iget-object v0, v0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->b:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$InitRunnable$1;

    invoke-direct {v1, p0, v2, v3}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$InitRunnable$1;-><init>(Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$InitRunnable;J)V

    const v2, 0xf2d55ce

    invoke-static {v0, v1, v2}, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->a(Landroid/os/Handler;Ljava/lang/Runnable;I)Z

    goto :goto_0

    .line 466
    :catch_0
    move-exception v0

    .line 469
    :try_start_1
    iget-object v4, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$InitRunnable;->a:Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;

    invoke-static {v4}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->d(Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Remote exception from main process."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 471
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    throw v0

    .line 474
    :cond_5
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$InitRunnable;->a:Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;

    invoke-static {v0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->d(Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to acquire provider to warmup the main process."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
