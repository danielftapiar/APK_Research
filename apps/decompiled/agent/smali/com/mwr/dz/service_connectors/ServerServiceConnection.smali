.class public Lcom/mwr/dz/service_connectors/ServerServiceConnection;
.super Ljava/lang/Object;
.source "ServerServiceConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private bound:Z

.field private service:Landroid/os/Messenger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mwr/dz/service_connectors/ServerServiceConnection;->service:Landroid/os/Messenger;

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mwr/dz/service_connectors/ServerServiceConnection;->bound:Z

    .line 18
    return-void
.end method


# virtual methods
.method public getDetailedServerStatus(Landroid/os/Messenger;)V
    .locals 3
    .param p1, "replyTo"    # Landroid/os/Messenger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 24
    const/4 v1, 0x0

    const/16 v2, 0x15

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 25
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 27
    invoke-virtual {p0, v0}, Lcom/mwr/dz/service_connectors/ServerServiceConnection;->send(Landroid/os/Message;)V

    .line 28
    return-void
.end method

.method public getHostFingerprint(Landroid/os/Messenger;)V
    .locals 4
    .param p1, "replyTo"    # Landroid/os/Messenger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 32
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "ctrl:no_cache_messenger"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 34
    const/4 v2, 0x0

    const/16 v3, 0x17

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 35
    .local v1, "msg":Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 36
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0, v1}, Lcom/mwr/dz/service_connectors/ServerServiceConnection;->send(Landroid/os/Message;)V

    .line 39
    return-void
.end method

.method public getServerStatus(Landroid/os/Messenger;)V
    .locals 3
    .param p1, "replyTo"    # Landroid/os/Messenger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 42
    const/4 v1, 0x0

    const/16 v2, 0x16

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 43
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 45
    invoke-virtual {p0, v0}, Lcom/mwr/dz/service_connectors/ServerServiceConnection;->send(Landroid/os/Message;)V

    .line 46
    return-void
.end method

.method public isBound()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/mwr/dz/service_connectors/ServerServiceConnection;->bound:Z

    return v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    const/4 v7, 0x1

    .line 54
    new-instance v4, Landroid/os/Messenger;

    invoke-direct {v4, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v4, p0, Lcom/mwr/dz/service_connectors/ServerServiceConnection;->service:Landroid/os/Messenger;

    .line 55
    iput-boolean v7, p0, Lcom/mwr/dz/service_connectors/ServerServiceConnection;->bound:Z

    .line 56
    invoke-static {}, Lcom/mwr/dz/Agent;->getInstance()Lcom/mwr/dz/Agent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mwr/dz/Agent;->getSettings()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "localServerEnabled"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/mwr/dz/Agent;->getInstance()Lcom/mwr/dz/Agent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mwr/dz/Agent;->getSettings()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "restore_after_crash"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 58
    :try_start_0
    invoke-static {}, Lcom/mwr/dz/Agent;->getInstance()Lcom/mwr/dz/Agent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mwr/dz/Agent;->getServerService()Lcom/mwr/dz/service_connectors/ServerServiceConnection;

    move-result-object v3

    .line 59
    .local v3, "ssc":Lcom/mwr/dz/service_connectors/ServerServiceConnection;
    invoke-static {}, Lcom/mwr/dz/Agent;->getInstance()Lcom/mwr/dz/Agent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mwr/dz/Agent;->getServerParameters()Lcom/mwr/jdiesel/api/connectors/Server;

    move-result-object v2

    .line 60
    .local v2, "server":Lcom/mwr/jdiesel/api/connectors/Server;
    invoke-static {}, Lcom/mwr/dz/Agent;->getInstance()Lcom/mwr/dz/Agent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mwr/dz/Agent;->getMessenger()Landroid/os/Messenger;

    move-result-object v1

    .line 62
    .local v1, "messenger":Landroid/os/Messenger;
    invoke-virtual {v3, v2, v1}, Lcom/mwr/dz/service_connectors/ServerServiceConnection;->startServer(Lcom/mwr/jdiesel/api/connectors/Server;Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v1    # "messenger":Landroid/os/Messenger;
    .end local v2    # "server":Lcom/mwr/jdiesel/api/connectors/Server;
    .end local v3    # "ssc":Lcom/mwr/dz/service_connectors/ServerServiceConnection;
    :cond_0
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mwr/dz/service_connectors/ServerServiceConnection;->service:Landroid/os/Messenger;

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mwr/dz/service_connectors/ServerServiceConnection;->bound:Z

    .line 73
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
    .line 76
    iget-object v0, p0, Lcom/mwr/dz/service_connectors/ServerServiceConnection;->service:Landroid/os/Messenger;

    invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 77
    return-void
.end method

.method public startServer(Lcom/mwr/jdiesel/api/connectors/Server;Landroid/os/Messenger;)V
    .locals 5
    .param p1, "server"    # Lcom/mwr/jdiesel/api/connectors/Server;
    .param p2, "replyTo"    # Landroid/os/Messenger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 80
    const/4 v2, 0x0

    const/16 v3, 0x18

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 81
    .local v1, "msg":Landroid/os/Message;
    iput-object p2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 83
    invoke-virtual {p0, v1}, Lcom/mwr/dz/service_connectors/ServerServiceConnection;->send(Landroid/os/Message;)V

    .line 85
    invoke-static {}, Lcom/mwr/dz/Agent;->getInstance()Lcom/mwr/dz/Agent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mwr/dz/Agent;->getSettings()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 86
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "localServerEnabled"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 87
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 89
    iput-boolean v4, p1, Lcom/mwr/jdiesel/api/connectors/Server;->enabled:Z

    .line 90
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/connectors/Server;->notifyObservers()V

    .line 91
    return-void
.end method

.method public stopServer(Lcom/mwr/jdiesel/api/connectors/Server;Landroid/os/Messenger;)V
    .locals 5
    .param p1, "server"    # Lcom/mwr/jdiesel/api/connectors/Server;
    .param p2, "replyTo"    # Landroid/os/Messenger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 94
    const/4 v2, 0x0

    const/16 v3, 0x19

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 95
    .local v1, "msg":Landroid/os/Message;
    iput-object p2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 97
    invoke-virtual {p0, v1}, Lcom/mwr/dz/service_connectors/ServerServiceConnection;->send(Landroid/os/Message;)V

    .line 99
    invoke-static {}, Lcom/mwr/dz/Agent;->getInstance()Lcom/mwr/dz/Agent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mwr/dz/Agent;->getSettings()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 100
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "localServerEnabled"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 101
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 103
    iput-boolean v4, p1, Lcom/mwr/jdiesel/api/connectors/Server;->enabled:Z

    .line 104
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/connectors/Server;->notifyObservers()V

    .line 105
    return-void
.end method

.method public unbind(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/mwr/dz/service_connectors/ServerServiceConnection;->bound:Z

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mwr/dz/service_connectors/ServerServiceConnection;->bound:Z

    .line 112
    :cond_0
    return-void
.end method
