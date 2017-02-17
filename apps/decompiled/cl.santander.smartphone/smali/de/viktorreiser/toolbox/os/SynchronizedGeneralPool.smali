.class abstract Lde/viktorreiser/toolbox/os/SynchronizedGeneralPool;
.super Lde/viktorreiser/toolbox/os/GeneralPool;
.source "SynchronizedGeneralPool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lde/viktorreiser/toolbox/os/GeneralPool",
        "<TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    .local p0, "this":Lde/viktorreiser/toolbox/os/SynchronizedGeneralPool;, "Lde/viktorreiser/toolbox/os/SynchronizedGeneralPool<TT;>;"
    invoke-direct {p0}, Lde/viktorreiser/toolbox/os/GeneralPool;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 29
    .local p0, "this":Lde/viktorreiser/toolbox/os/SynchronizedGeneralPool;, "Lde/viktorreiser/toolbox/os/SynchronizedGeneralPool<TT;>;"
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lde/viktorreiser/toolbox/os/GeneralPool;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    monitor-exit p0

    return-void

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, "this":Lde/viktorreiser/toolbox/os/SynchronizedGeneralPool;, "Lde/viktorreiser/toolbox/os/SynchronizedGeneralPool<TT;>;"
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lde/viktorreiser/toolbox/os/GeneralPool;->get(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized put(ILjava/lang/Object;)V
    .locals 1
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p0, "this":Lde/viktorreiser/toolbox/os/SynchronizedGeneralPool;, "Lde/viktorreiser/toolbox/os/SynchronizedGeneralPool<TT;>;"
    .local p2, "object":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Lde/viktorreiser/toolbox/os/GeneralPool;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit p0

    return-void

    .line 19
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
