.class public Lcom/prey/actions/PreyExecutionWaitNotify;
.super Ljava/lang/Object;
.source "PreyExecutionWaitNotify.java"


# instance fields
.field myMonitorObject:Lcom/prey/actions/MonitorObject;

.field wasSignalled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/prey/actions/MonitorObject;

    invoke-direct {v0}, Lcom/prey/actions/MonitorObject;-><init>()V

    iput-object v0, p0, Lcom/prey/actions/PreyExecutionWaitNotify;->myMonitorObject:Lcom/prey/actions/MonitorObject;

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prey/actions/PreyExecutionWaitNotify;->wasSignalled:Z

    return-void
.end method


# virtual methods
.method public doNotify()V
    .locals 2

    .prologue
    .line 33
    iget-object v1, p0, Lcom/prey/actions/PreyExecutionWaitNotify;->myMonitorObject:Lcom/prey/actions/MonitorObject;

    monitor-enter v1

    .line 34
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/prey/actions/PreyExecutionWaitNotify;->wasSignalled:Z

    .line 35
    iget-object v0, p0, Lcom/prey/actions/PreyExecutionWaitNotify;->myMonitorObject:Lcom/prey/actions/MonitorObject;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 36
    monitor-exit v1

    .line 37
    return-void

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public doWait()V
    .locals 3

    .prologue
    .line 19
    iget-object v2, p0, Lcom/prey/actions/PreyExecutionWaitNotify;->myMonitorObject:Lcom/prey/actions/MonitorObject;

    monitor-enter v2

    .line 20
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/prey/actions/PreyExecutionWaitNotify;->wasSignalled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 22
    :try_start_1
    iget-object v1, p0, Lcom/prey/actions/PreyExecutionWaitNotify;->myMonitorObject:Lcom/prey/actions/MonitorObject;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v1, "doWait interrupted!"

    invoke-static {v1, v0}, Lcom/prey/PreyLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 29
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 28
    :cond_0
    const/4 v1, 0x0

    :try_start_3
    iput-boolean v1, p0, Lcom/prey/actions/PreyExecutionWaitNotify;->wasSignalled:Z

    .line 29
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 30
    return-void
.end method
