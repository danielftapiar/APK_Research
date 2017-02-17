.class public abstract Lcom/facebook/base/app/DelegatingApplication;
.super Landroid/app/Application;
.source "DelegatingApplication.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/facebook/base/app/ApplicationLike;",
        ">",
        "Landroid/app/Application;"
    }
.end annotation


# static fields
.field private static a:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "DelegatingApplication.class"
    .end annotation
.end field


# instance fields
.field private b:Lcom/facebook/base/app/ApplicationLike;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/base/app/DelegatingApplication;->a:Z

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 42
    invoke-static {}, Lcom/facebook/base/app/DelegatingApplication;->e()V

    .line 43
    return-void
.end method

.method private static declared-synchronized e()V
    .locals 3

    .prologue
    .line 31
    const-class v1, Lcom/facebook/base/app/DelegatingApplication;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/facebook/base/app/DelegatingApplication;->a:Z

    if-eqz v0, :cond_0

    .line 32
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Multiple instances of the Application object were created."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 35
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Lcom/facebook/base/app/DelegatingApplication;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    monitor-exit v1

    return-void
.end method

.method private declared-synchronized f()V
    .locals 1

    .prologue
    .line 53
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/base/app/DelegatingApplication;->b:Lcom/facebook/base/app/ApplicationLike;

    if-nez v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/facebook/base/app/DelegatingApplication;->a()Lcom/facebook/base/app/ApplicationLike;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/base/app/DelegatingApplication;->b:Lcom/facebook/base/app/ApplicationLike;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :cond_0
    monitor-exit p0

    return-void

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected abstract a()Lcom/facebook/base/app/ApplicationLike;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 81
    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->d()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/facebook/sosource/FBSoLoader;->a(Landroid/content/Context;Z)V

    .line 82
    invoke-virtual {p0}, Lcom/facebook/base/app/DelegatingApplication;->b()V

    .line 83
    invoke-direct {p0}, Lcom/facebook/base/app/DelegatingApplication;->f()V

    .line 84
    return-void
.end method

.method protected b()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method protected final c()Lcom/facebook/base/app/ApplicationLike;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/facebook/base/app/DelegatingApplication;->f()V

    .line 73
    iget-object v0, p0, Lcom/facebook/base/app/DelegatingApplication;->b:Lcom/facebook/base/app/ApplicationLike;

    return-object v0
.end method

.method public final d()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 130
    invoke-super {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/facebook/base/app/DelegatingApplication;->b:Lcom/facebook/base/app/ApplicationLike;

    instance-of v0, v0, Lcom/facebook/resources/HasOverridingResources;

    if-eqz v0, :cond_1

    .line 113
    instance-of v0, p0, Lcom/facebook/resources/HasBaseResourcesAccess;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " illegally implements HasOverridingResources without HasBaseResourcesAccess."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/facebook/base/app/DelegatingApplication;->b:Lcom/facebook/base/app/ApplicationLike;

    check-cast v0, Lcom/facebook/resources/HasOverridingResources;

    invoke-interface {v0}, Lcom/facebook/resources/HasOverridingResources;->f()Landroid/content/res/Resources;

    move-result-object v0

    .line 118
    if-eqz v0, :cond_1

    .line 122
    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    invoke-static {p0}, Lcom/facebook/tools/dextr/runtime/LogUtils;->a(Landroid/app/Application;)I

    move-result v0

    .line 88
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 89
    invoke-direct {p0}, Lcom/facebook/base/app/DelegatingApplication;->f()V

    .line 90
    iget-object v1, p0, Lcom/facebook/base/app/DelegatingApplication;->b:Lcom/facebook/base/app/ApplicationLike;

    invoke-interface {v1}, Lcom/facebook/base/app/ApplicationLike;->b()V

    .line 91
    invoke-static {p0, v0}, Lcom/facebook/tools/dextr/runtime/LogUtils;->a(Landroid/app/Application;I)V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 95
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 96
    iget-object v0, p0, Lcom/facebook/base/app/DelegatingApplication;->b:Lcom/facebook/base/app/ApplicationLike;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/facebook/base/app/DelegatingApplication;->b:Lcom/facebook/base/app/ApplicationLike;

    invoke-interface {v0}, Lcom/facebook/base/app/ApplicationLike;->d()V

    .line 99
    :cond_0
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 104
    invoke-super {p0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    .line 105
    iget-object v0, p0, Lcom/facebook/base/app/DelegatingApplication;->b:Lcom/facebook/base/app/ApplicationLike;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/facebook/base/app/DelegatingApplication;->b:Lcom/facebook/base/app/ApplicationLike;

    invoke-interface {v0, p1}, Lcom/facebook/base/app/ApplicationLike;->a(I)V

    .line 108
    :cond_0
    return-void
.end method
