.class public final Lcom/google/android/exoplayer/upstream/Loader;
.super Ljava/lang/Object;
.source "Loader.java"


# instance fields
.field private final a:Ljava/util/concurrent/ExecutorService;

.field private b:Lcom/google/android/exoplayer/upstream/Loader$LoadTask;

.field private c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    invoke-static {p1}, Lcom/google/android/exoplayer/util/Util;->a(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/Loader;->a:Ljava/util/concurrent/ExecutorService;

    .line 115
    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer/upstream/Loader;)Z
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/upstream/Loader;->c:Z

    return v0
.end method

.method static synthetic b(Lcom/google/android/exoplayer/upstream/Loader;)Lcom/google/android/exoplayer/upstream/Loader$LoadTask;
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/Loader;->b:Lcom/google/android/exoplayer/upstream/Loader$LoadTask;

    return-object v0
.end method

.method private b(Landroid/os/Looper;Lcom/google/android/exoplayer/upstream/Loader$Loadable;Lcom/google/android/exoplayer/upstream/Loader$Callback;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 172
    iget-boolean v0, p0, Lcom/google/android/exoplayer/upstream/Loader;->c:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 173
    iput-boolean v1, p0, Lcom/google/android/exoplayer/upstream/Loader;->c:Z

    .line 174
    new-instance v0, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;-><init>(Lcom/google/android/exoplayer/upstream/Loader;Landroid/os/Looper;Lcom/google/android/exoplayer/upstream/Loader$Loadable;Lcom/google/android/exoplayer/upstream/Loader$Callback;I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/Loader;->b:Lcom/google/android/exoplayer/upstream/Loader$LoadTask;

    .line 175
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/Loader;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/Loader;->b:Lcom/google/android/exoplayer/upstream/Loader$LoadTask;

    const v2, 0x14bf016f

    invoke-static {v0, v1, v2}, Lcom/facebook/tools/dextr/runtime/detour/ExecutorDetour;->a(Ljava/util/concurrent/ExecutorService;Ljava/lang/Runnable;I)Ljava/util/concurrent/Future;

    .line 176
    return-void

    :cond_0
    move v0, v5

    .line 172
    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/os/Looper;Lcom/google/android/exoplayer/upstream/Loader$Loadable;Lcom/google/android/exoplayer/upstream/Loader$Callback;)V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer/upstream/Loader;->b(Landroid/os/Looper;Lcom/google/android/exoplayer/upstream/Loader$Loadable;Lcom/google/android/exoplayer/upstream/Loader$Callback;)V

    .line 158
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer/upstream/Loader$Loadable;Lcom/google/android/exoplayer/upstream/Loader$Callback;)V
    .locals 2

    .prologue
    .line 126
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    .line 127
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 128
    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/exoplayer/upstream/Loader;->a(Landroid/os/Looper;Lcom/google/android/exoplayer/upstream/Loader$Loadable;Lcom/google/android/exoplayer/upstream/Loader$Callback;)V

    .line 129
    return-void

    .line 127
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/google/android/exoplayer/upstream/Loader;->c:Z

    return v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/google/android/exoplayer/upstream/Loader;->c:Z

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 194
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/Loader;->b:Lcom/google/android/exoplayer/upstream/Loader$LoadTask;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->a()V

    .line 195
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/google/android/exoplayer/upstream/Loader;->c:Z

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/google/android/exoplayer/upstream/Loader;->b()V

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/Loader;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 207
    return-void
.end method
