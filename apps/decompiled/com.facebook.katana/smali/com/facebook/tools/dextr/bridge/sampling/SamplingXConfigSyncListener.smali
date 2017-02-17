.class public Lcom/facebook/tools/dextr/bridge/sampling/SamplingXConfigSyncListener;
.super Ljava/lang/Object;
.source "SamplingXConfigSyncListener.java"

# interfaces
.implements Lcom/facebook/xconfig/core/XConfigSyncListener;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static volatile b:Lcom/facebook/tools/dextr/bridge/sampling/SamplingXConfigSyncListener;


# instance fields
.field private volatile a:Lcom/facebook/tools/dextr/bridge/sampling/SamplingXConfigSyncListener$Listener;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/tools/dextr/bridge/sampling/SamplingXConfigSyncListener;
    .locals 5
    .param p0    # Lcom/facebook/inject/InjectorLike;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 42
    sget-object v0, Lcom/facebook/tools/dextr/bridge/sampling/SamplingXConfigSyncListener;->b:Lcom/facebook/tools/dextr/bridge/sampling/SamplingXConfigSyncListener;

    if-nez v0, :cond_1

    .line 43
    const-class v1, Lcom/facebook/tools/dextr/bridge/sampling/SamplingXConfigSyncListener;

    monitor-enter v1

    .line 44
    :try_start_0
    sget-object v0, Lcom/facebook/tools/dextr/bridge/sampling/SamplingXConfigSyncListener;->b:Lcom/facebook/tools/dextr/bridge/sampling/SamplingXConfigSyncListener;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 45
    invoke-static {}, Lcom/facebook/inject/ScopeSet;->a()Lcom/facebook/inject/ScopeSet;

    move-result-object v2

    .line 46
    invoke-virtual {v2}, Lcom/facebook/inject/ScopeSet;->b()B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result v3

    .line 48
    :try_start_1
    const-class v0, Lcom/facebook/inject/SingletonScope;

    invoke-interface {p0, v0}, Lcom/facebook/inject/InjectorLike;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/inject/SingletonScope;

    .line 49
    invoke-virtual {v0}, Lcom/facebook/inject/SingletonScope;->enterScope()Lcom/facebook/inject/InjectorThreadStack;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    .line 51
    :try_start_2
    invoke-interface {p0}, Lcom/facebook/inject/InjectorLike;->getApplicationInjector()Lcom/facebook/inject/FbInjector;

    invoke-static {}, Lcom/facebook/tools/dextr/bridge/sampling/SamplingXConfigSyncListener;->c()Lcom/facebook/tools/dextr/bridge/sampling/SamplingXConfigSyncListener;

    move-result-object v0

    sput-object v0, Lcom/facebook/tools/dextr/bridge/sampling/SamplingXConfigSyncListener;->b:Lcom/facebook/tools/dextr/bridge/sampling/SamplingXConfigSyncListener;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    :try_start_3
    invoke-static {v4}, Lcom/facebook/inject/SingletonScope;->a(Lcom/facebook/inject/InjectorThreadStack;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 56
    :try_start_4
    invoke-virtual {v2, v3}, Lcom/facebook/inject/ScopeSet;->c(B)V

    .line 59
    :cond_0
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 61
    :cond_1
    sget-object v0, Lcom/facebook/tools/dextr/bridge/sampling/SamplingXConfigSyncListener;->b:Lcom/facebook/tools/dextr/bridge/sampling/SamplingXConfigSyncListener;

    return-object v0

    .line 53
    :catchall_0
    move-exception v0

    :try_start_5
    invoke-static {v4}, Lcom/facebook/inject/SingletonScope;->a(Lcom/facebook/inject/InjectorThreadStack;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 56
    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {v2, v3}, Lcom/facebook/inject/ScopeSet;->c(B)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 59
    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static c()Lcom/facebook/tools/dextr/bridge/sampling/SamplingXConfigSyncListener;
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/facebook/tools/dextr/bridge/sampling/SamplingXConfigSyncListener;

    invoke-direct {v0}, Lcom/facebook/tools/dextr/bridge/sampling/SamplingXConfigSyncListener;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/facebook/tools/dextr/bridge/sampling/SamplingXConfigSyncListener;->a:Lcom/facebook/tools/dextr/bridge/sampling/SamplingXConfigSyncListener$Listener;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/facebook/tools/dextr/bridge/sampling/SamplingXConfigSyncListener;->a:Lcom/facebook/tools/dextr/bridge/sampling/SamplingXConfigSyncListener$Listener;

    invoke-interface {v0}, Lcom/facebook/tools/dextr/bridge/sampling/SamplingXConfigSyncListener$Listener;->a()V

    .line 29
    :cond_0
    return-void
.end method

.method public final a(Lcom/facebook/tools/dextr/bridge/sampling/SamplingXConfigSyncListener$Listener;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/facebook/tools/dextr/bridge/sampling/SamplingXConfigSyncListener;->a:Lcom/facebook/tools/dextr/bridge/sampling/SamplingXConfigSyncListener$Listener;

    .line 38
    return-void
.end method

.method public final b()Lcom/facebook/xconfig/core/XConfigName;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/facebook/tools/dextr/bridge/sampling/SamplingXConfig;->a:Lcom/facebook/xconfig/core/XConfigName;

    return-object v0
.end method
