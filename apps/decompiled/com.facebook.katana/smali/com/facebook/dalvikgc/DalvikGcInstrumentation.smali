.class public Lcom/facebook/dalvikgc/DalvikGcInstrumentation;
.super Ljava/lang/Object;
.source "DalvikGcInstrumentation.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static volatile d:Lcom/facebook/dalvikgc/DalvikGcInstrumentation;


# instance fields
.field private final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/common/util/TriState;",
            ">;"
        }
    .end annotation
.end field

.field private volatile b:Z

.field private volatile c:Z


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 1
    .param p1    # Ljavax/inject/Provider;
        .annotation runtime Lcom/facebook/dalvikgc/DalvikGcInstrumentationEnabled;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/common/util/TriState;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/facebook/dalvikgc/DalvikGcInstrumentation;->a:Ljavax/inject/Provider;

    .line 30
    iget-object v0, p0, Lcom/facebook/dalvikgc/DalvikGcInstrumentation;->a:Ljavax/inject/Provider;

    if-nez v0, :cond_0

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/dalvikgc/DalvikGcInstrumentation;->c:Z

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/dalvikgc/DalvikGcInstrumentation;->b:Z

    .line 34
    :cond_0
    return-void
.end method

.method public static a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/dalvikgc/DalvikGcInstrumentation;
    .locals 5
    .param p0    # Lcom/facebook/inject/InjectorLike;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 42
    sget-object v0, Lcom/facebook/dalvikgc/DalvikGcInstrumentation;->d:Lcom/facebook/dalvikgc/DalvikGcInstrumentation;

    if-nez v0, :cond_1

    .line 43
    const-class v1, Lcom/facebook/dalvikgc/DalvikGcInstrumentation;

    monitor-enter v1

    .line 44
    :try_start_0
    sget-object v0, Lcom/facebook/dalvikgc/DalvikGcInstrumentation;->d:Lcom/facebook/dalvikgc/DalvikGcInstrumentation;

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

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/dalvikgc/DalvikGcInstrumentation;->b(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/dalvikgc/DalvikGcInstrumentation;

    move-result-object v0

    sput-object v0, Lcom/facebook/dalvikgc/DalvikGcInstrumentation;->d:Lcom/facebook/dalvikgc/DalvikGcInstrumentation;
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
    sget-object v0, Lcom/facebook/dalvikgc/DalvikGcInstrumentation;->d:Lcom/facebook/dalvikgc/DalvikGcInstrumentation;

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

.method private static b(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/dalvikgc/DalvikGcInstrumentation;
    .locals 2

    .prologue
    .line 13
    new-instance v0, Lcom/facebook/dalvikgc/DalvikGcInstrumentation;

    invoke-static {p0}, Lcom/facebook/dalvikgc/Provider_TriState_DalvikGcInstrumentationEnabledGatekeeperAutoProvider__com_facebook_common_util_TriState__com_facebook_dalvikgc_DalvikGcInstrumentationEnabled__INJECTED_BY_TemplateInjector;->a(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/dalvikgc/DalvikGcInstrumentation;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method private static b()Z
    .locals 2

    .prologue
    .line 69
    const-string v0, "java.vm.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_0

    const-string v1, "0."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    const/4 v0, 0x0

    .line 73
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private c()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/facebook/dalvikgc/DalvikGcInstrumentation;->c:Z

    if-nez v0, :cond_0

    .line 78
    invoke-direct {p0}, Lcom/facebook/dalvikgc/DalvikGcInstrumentation;->d()V

    .line 80
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/dalvikgc/DalvikGcInstrumentation;->b:Z

    return v0
.end method

.method private declared-synchronized d()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 84
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/dalvikgc/DalvikGcInstrumentation;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 99
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 88
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/facebook/dalvikgc/DalvikGcInstrumentation;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/util/TriState;

    .line 89
    sget-object v2, Lcom/facebook/common/util/TriState;->UNSET:Lcom/facebook/common/util/TriState;

    if-eq v0, v2, :cond_0

    .line 95
    sget-object v2, Lcom/facebook/common/util/TriState;->YES:Lcom/facebook/common/util/TriState;

    if-ne v0, v2, :cond_2

    invoke-static {}, Lcom/facebook/dalvikgc/DalvikGcInstrumentation;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/facebook/dalvik/DalvikInternals;->initGcInstrumentation()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/facebook/dalvikgc/DalvikGcInstrumentation;->b:Z

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/dalvikgc/DalvikGcInstrumentation;->c:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 95
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/facebook/dalvikgc/DalvikGcInstrumentation;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-static {}, Lcom/facebook/dalvik/DalvikInternals;->getElapsedGcMillis()J

    move-result-wide v0

    .line 48
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method
