.class public Lcom/mwr/dz/service_connectors/ClientServiceConnection;
.super Ljava/lang/Object;
.source "ClientServiceConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private bound:Z

.field private service:Landroid/os/Messenger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mwr/dz/service_connectors/ClientServiceConnection;->service:Landroid/os/Messenger;

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mwr/dz/service_connectors/ClientServiceConnection;->bound:Z

    .line 19
    return-void
.end method


# virtual methods
.method public getDetailedEndpointStatus(ILandroid/os/Messenger;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "replyTo"    # Landroid/os/Messenger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 29
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 31
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "endpoint:id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 33
    const/4 v2, 0x0

    const/16 v3, 0xb

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 34
    .local v1, "msg":Landroid/os/Message;
    invoke-static {}, Lcom/mwr/dz/Agent;->getInstance()Lcom/mwr/dz/Agent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mwr/dz/Agent;->getMessenger()Landroid/os/Messenger;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 35
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0, v1}, Lcom/mwr/dz/service_connectors/ClientServiceConnection;->send(Landroid/os/Message;)V

    .line 38
    return-void
.end method

.method public getEndpointStatuses(Landroid/os/Messenger;)V
    .locals 3
    .param p1, "replyTo"    # Landroid/os/Messenger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 41
    const/4 v1, 0x0

    const/16 v2, 0xc

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 42
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 44
    invoke-virtual {p0, v0}, Lcom/mwr/dz/service_connectors/ClientServiceConnection;->send(Landroid/os/Message;)V

    .line 45
    return-void
.end method

.method public getPeerFingerprint(ILandroid/os/Messenger;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "replyTo"    # Landroid/os/Messenger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 48
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 49
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "ctrl:no_cache_messenger"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 50
    const-string v2, "endpoint:id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 52
    const/4 v2, 0x0

    const/16 v3, 0xd

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 53
    .local v1, "msg":Landroid/os/Message;
    iput-object p2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 54
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0, v1}, Lcom/mwr/dz/service_connectors/ClientServiceConnection;->send(Landroid/os/Message;)V

    .line 57
    return-void
.end method

.method public isBound()Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/mwr/dz/service_connectors/ClientServiceConnection;->bound:Z

    return v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    const/4 v4, 0x1

    .line 61
    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v2, p0, Lcom/mwr/dz/service_connectors/ClientServiceConnection;->service:Landroid/os/Messenger;

    .line 62
    iput-boolean v4, p0, Lcom/mwr/dz/service_connectors/ClientServiceConnection;->bound:Z

    .line 64
    invoke-static {}, Lcom/mwr/dz/Agent;->getInstance()Lcom/mwr/dz/Agent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mwr/dz/Agent;->getSettings()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "restore_after_crash"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 65
    invoke-static {}, Lcom/mwr/dz/Agent;->getInstance()Lcom/mwr/dz/Agent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mwr/dz/Agent;->getEndpointManager()Lcom/mwr/dz/models/EndpointManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mwr/dz/models/EndpointManager;->all()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 77
    :cond_1
    return-void

    .line 65
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/connectors/Endpoint;

    .line 66
    .local v0, "e":Lcom/mwr/jdiesel/api/connectors/Endpoint;
    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->isActive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 68
    :try_start_0
    const-string v3, "ClientService"

    const-string v4, "Resuming connection to endpoint..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-static {}, Lcom/mwr/dz/Agent;->getInstance()Lcom/mwr/dz/Agent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mwr/dz/Agent;->getClientService()Lcom/mwr/dz/service_connectors/ClientServiceConnection;

    move-result-object v3

    invoke-static {}, Lcom/mwr/dz/Agent;->getInstance()Lcom/mwr/dz/Agent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mwr/dz/Agent;->getMessenger()Landroid/os/Messenger;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/mwr/dz/service_connectors/ClientServiceConnection;->startEndpoint(Lcom/mwr/jdiesel/api/connectors/Endpoint;Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 70
    :catch_0
    move-exception v1

    .line 71
    .local v1, "re":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mwr/dz/service_connectors/ClientServiceConnection;->service:Landroid/os/Messenger;

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mwr/dz/service_connectors/ClientServiceConnection;->bound:Z

    .line 83
    return-void
.end method

.method protected send(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/mwr/dz/service_connectors/ClientServiceConnection;->service:Landroid/os/Messenger;

    invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 87
    return-void
.end method

.method public startEndpoint(Lcom/mwr/jdiesel/api/connectors/Endpoint;Landroid/os/Messenger;)V
    .locals 4
    .param p1, "endpoint"    # Lcom/mwr/jdiesel/api/connectors/Endpoint;
    .param p2, "replyTo"    # Landroid/os/Messenger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 90
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 91
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "endpoint:id"

    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->getId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 93
    const/4 v2, 0x0

    const/16 v3, 0xe

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 94
    .local v1, "msg":Landroid/os/Message;
    iput-object p2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 95
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 97
    invoke-virtual {p0, v1}, Lcom/mwr/dz/service_connectors/ClientServiceConnection;->send(Landroid/os/Message;)V

    .line 99
    const/4 v2, 0x1

    iput-boolean v2, p1, Lcom/mwr/jdiesel/api/connectors/Endpoint;->enabled:Z

    .line 100
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->notifyObservers()V

    .line 101
    return-void
.end method

.method public stopEndpoint(Lcom/mwr/jdiesel/api/connectors/Endpoint;Landroid/os/Messenger;)V
    .locals 4
    .param p1, "endpoint"    # Lcom/mwr/jdiesel/api/connectors/Endpoint;
    .param p2, "replyTo"    # Landroid/os/Messenger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 104
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 106
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "endpoint:id"

    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->getId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 108
    const/4 v2, 0x0

    const/16 v3, 0xf

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 109
    .local v1, "msg":Landroid/os/Message;
    iput-object p2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 110
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 112
    invoke-virtual {p0, v1}, Lcom/mwr/dz/service_connectors/ClientServiceConnection;->send(Landroid/os/Message;)V

    .line 114
    const/4 v2, 0x0

    iput-boolean v2, p1, Lcom/mwr/jdiesel/api/connectors/Endpoint;->enabled:Z

    .line 115
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->notifyObservers()V

    .line 116
    return-void
.end method

.method public unbind(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/mwr/dz/service_connectors/ClientServiceConnection;->bound:Z

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mwr/dz/service_connectors/ClientServiceConnection;->bound:Z

    .line 123
    :cond_0
    return-void
.end method
