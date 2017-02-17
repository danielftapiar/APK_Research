.class public Lcom/mwr/dz/service_connectors/SessionServiceConnection;
.super Ljava/lang/Object;
.source "SessionServiceConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private bound:Z

.field private service:Landroid/os/Messenger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mwr/dz/service_connectors/SessionServiceConnection;->service:Landroid/os/Messenger;

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mwr/dz/service_connectors/SessionServiceConnection;->bound:Z

    .line 12
    return-void
.end method


# virtual methods
.method public isBound()Z
    .locals 1

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/mwr/dz/service_connectors/SessionServiceConnection;->bound:Z

    return v0
.end method

.method public notifySessionStarted(Ljava/lang/String;)V
    .locals 2
    .param p1, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 23
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mwr/dz/service_connectors/SessionServiceConnection;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :goto_0
    return-void

    .line 25
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public notifySessionStopped(Ljava/lang/String;)V
    .locals 2
    .param p1, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 30
    const/4 v0, 0x0

    const/4 v1, 0x2

    :try_start_0
    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mwr/dz/service_connectors/SessionServiceConnection;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 37
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/mwr/dz/service_connectors/SessionServiceConnection;->service:Landroid/os/Messenger;

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mwr/dz/service_connectors/SessionServiceConnection;->bound:Z

    .line 39
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mwr/dz/service_connectors/SessionServiceConnection;->service:Landroid/os/Messenger;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mwr/dz/service_connectors/SessionServiceConnection;->bound:Z

    .line 45
    return-void
.end method

.method public send(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mwr/dz/service_connectors/SessionServiceConnection;->service:Landroid/os/Messenger;

    invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 49
    return-void
.end method

.method public unbind(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/mwr/dz/service_connectors/SessionServiceConnection;->bound:Z

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mwr/dz/service_connectors/SessionServiceConnection;->bound:Z

    .line 56
    :cond_0
    return-void
.end method
