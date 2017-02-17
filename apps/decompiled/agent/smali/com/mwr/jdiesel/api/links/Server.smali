.class public Lcom/mwr/jdiesel/api/links/Server;
.super Lcom/mwr/jdiesel/api/links/Link;
.source "Server.java"


# instance fields
.field private server_socket:Ljava/net/ServerSocket;


# direct methods
.method public constructor <init>(Lcom/mwr/jdiesel/api/connectors/Server;Lcom/mwr/jdiesel/api/DeviceInfo;)V
    .locals 1
    .param p1, "parameters"    # Lcom/mwr/jdiesel/api/connectors/Server;
    .param p2, "device_info"    # Lcom/mwr/jdiesel/api/DeviceInfo;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/mwr/jdiesel/api/links/Link;-><init>(Lcom/mwr/jdiesel/api/connectors/Connector;Lcom/mwr/jdiesel/api/DeviceInfo;)V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/links/Server;->server_socket:Ljava/net/ServerSocket;

    .line 24
    return-void
.end method


# virtual methods
.method public checkForLiveness()Z
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public dieWithLastSession()Z
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method public getHostCertificateFingerprint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/mwr/jdiesel/api/links/Server;->connection:Lcom/mwr/jdiesel/connection/AbstractConnection;

    check-cast v0, Lcom/mwr/jdiesel/connection/SecureConnection;

    invoke-interface {v0}, Lcom/mwr/jdiesel/connection/SecureConnection;->getHostCertificateFingerprint()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPeerCertificateFingerprint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/mwr/jdiesel/api/links/Server;->connection:Lcom/mwr/jdiesel/connection/AbstractConnection;

    check-cast v0, Lcom/mwr/jdiesel/connection/SecureConnection;

    invoke-interface {v0}, Lcom/mwr/jdiesel/connection/SecureConnection;->getPeerCertificateFingerprint()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public mustBind()Z
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public resetConnection()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mwr/jdiesel/api/links/Server;->parameters:Lcom/mwr/jdiesel/api/connectors/Connector;

    sget-object v1, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->CONNECTING:Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    invoke-virtual {v0, v1}, Lcom/mwr/jdiesel/api/connectors/Connector;->setStatus(Lcom/mwr/jdiesel/api/connectors/Connector$Status;)V

    .line 47
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 49
    iget-object v0, p0, Lcom/mwr/jdiesel/api/links/Server;->server_socket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/links/Server;->server_socket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/links/Server;->server_socket:Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/mwr/jdiesel/api/links/Link;->resetConnection()V

    .line 59
    return-void

    .line 55
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x4

    .line 63
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mwr/jdiesel/api/links/Server;->running:Z

    .line 65
    const-string v2, "Starting Server..."

    invoke-virtual {p0, v5, v2}, Lcom/mwr/jdiesel/api/links/Server;->log(ILjava/lang/String;)V

    .line 66
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/mwr/jdiesel/api/links/Server;->running:Z

    if-nez v2, :cond_1

    .line 131
    const-string v2, "Stopped."

    invoke-virtual {p0, v5, v2}, Lcom/mwr/jdiesel/api/links/Server;->log(ILjava/lang/String;)V

    .line 132
    iget-object v2, p0, Lcom/mwr/jdiesel/api/links/Server;->parameters:Lcom/mwr/jdiesel/api/connectors/Connector;

    sget-object v3, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->OFFLINE:Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    invoke-virtual {v2, v3}, Lcom/mwr/jdiesel/api/connectors/Connector;->setStatus(Lcom/mwr/jdiesel/api/connectors/Connector$Status;)V

    .line 133
    return-void

    .line 68
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/mwr/jdiesel/api/links/Server;->connection:Lcom/mwr/jdiesel/connection/AbstractConnection;

    if-nez v2, :cond_2

    .line 69
    iget-object v2, p0, Lcom/mwr/jdiesel/api/links/Server;->parameters:Lcom/mwr/jdiesel/api/connectors/Connector;

    sget-object v3, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->CONNECTING:Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    invoke-virtual {v2, v3}, Lcom/mwr/jdiesel/api/connectors/Connector;->setStatus(Lcom/mwr/jdiesel/api/connectors/Connector$Status;)V

    .line 71
    const/4 v3, 0x4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v2, "Attempting to bind to port "

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mwr/jdiesel/api/links/Server;->parameters:Lcom/mwr/jdiesel/api/connectors/Connector;

    check-cast v2, Lcom/mwr/jdiesel/api/connectors/Server;

    invoke-virtual {v2}, Lcom/mwr/jdiesel/api/connectors/Server;->getPort()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "..."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/mwr/jdiesel/api/links/Server;->log(ILjava/lang/String;)V

    .line 72
    new-instance v3, Lcom/mwr/jdiesel/api/connectors/ServerSocketFactory;

    invoke-direct {v3}, Lcom/mwr/jdiesel/api/connectors/ServerSocketFactory;-><init>()V

    iget-object v2, p0, Lcom/mwr/jdiesel/api/links/Server;->parameters:Lcom/mwr/jdiesel/api/connectors/Connector;

    check-cast v2, Lcom/mwr/jdiesel/api/connectors/Server;

    invoke-virtual {v3, v2}, Lcom/mwr/jdiesel/api/connectors/ServerSocketFactory;->createSocket(Lcom/mwr/jdiesel/api/connectors/Server;)Ljava/net/ServerSocket;

    move-result-object v2

    iput-object v2, p0, Lcom/mwr/jdiesel/api/links/Server;->server_socket:Ljava/net/ServerSocket;

    .line 74
    const/4 v2, 0x4

    const-string v3, "Waiting for connections..."

    invoke-virtual {p0, v2, v3}, Lcom/mwr/jdiesel/api/links/Server;->log(ILjava/lang/String;)V

    .line 75
    iget-object v2, p0, Lcom/mwr/jdiesel/api/links/Server;->server_socket:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    .line 77
    .local v1, "socket":Ljava/net/Socket;
    if-eqz v1, :cond_0

    .line 78
    iget-object v2, p0, Lcom/mwr/jdiesel/api/links/Server;->parameters:Lcom/mwr/jdiesel/api/connectors/Connector;

    sget-object v3, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->ONLINE:Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    invoke-virtual {v2, v3}, Lcom/mwr/jdiesel/api/connectors/Connector;->setStatus(Lcom/mwr/jdiesel/api/connectors/Connector$Status;)V

    .line 80
    const/4 v2, 0x4

    const-string v3, "Accepted connection..."

    invoke-virtual {p0, v2, v3}, Lcom/mwr/jdiesel/api/links/Server;->log(ILjava/lang/String;)V

    .line 82
    const/4 v2, 0x4

    const-string v3, "Starting drozer thread..."

    invoke-virtual {p0, v2, v3}, Lcom/mwr/jdiesel/api/links/Server;->log(ILjava/lang/String;)V

    .line 83
    new-instance v2, Lcom/mwr/jdiesel/api/transport/SocketTransport;

    invoke-direct {v2, v1}, Lcom/mwr/jdiesel/api/transport/SocketTransport;-><init>(Ljava/net/Socket;)V

    invoke-virtual {p0, v2}, Lcom/mwr/jdiesel/api/links/Server;->createConnection(Lcom/mwr/jdiesel/api/transport/Transport;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    .line 103
    .end local v1    # "socket":Ljava/net/Socket;
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/security/cert/CertificateException;
    const-string v2, "Error loading key material for SSL."

    invoke-virtual {p0, v6, v2}, Lcom/mwr/jdiesel/api/links/Server;->log(ILjava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/links/Server;->stopConnector()V

    goto :goto_0

    .line 87
    .end local v0    # "e":Ljava/security/cert/CertificateException;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/mwr/jdiesel/api/links/Server;->connection:Lcom/mwr/jdiesel/connection/AbstractConnection;

    monitor-enter v3
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/KeyManagementException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_1 .. :try_end_1} :catch_4

    .line 89
    :try_start_2
    iget-object v2, p0, Lcom/mwr/jdiesel/api/links/Server;->connection:Lcom/mwr/jdiesel/connection/AbstractConnection;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 96
    :try_start_4
    iget-object v2, p0, Lcom/mwr/jdiesel/api/links/Server;->connection:Lcom/mwr/jdiesel/connection/AbstractConnection;

    iget-boolean v2, v2, Lcom/mwr/jdiesel/connection/AbstractConnection;->started:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mwr/jdiesel/api/links/Server;->connection:Lcom/mwr/jdiesel/connection/AbstractConnection;

    iget-boolean v2, v2, Lcom/mwr/jdiesel/connection/AbstractConnection;->running:Z

    if-nez v2, :cond_0

    .line 97
    const/4 v2, 0x5

    const-string v3, "Connection was reset."

    invoke-virtual {p0, v2, v3}, Lcom/mwr/jdiesel/api/links/Server;->log(ILjava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/links/Server;->resetConnection()V
    :try_end_4
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/security/KeyManagementException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/security/KeyStoreException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 108
    :catch_1
    move-exception v0

    .line 109
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "IO Error. Resetting connection."

    invoke-virtual {p0, v6, v2}, Lcom/mwr/jdiesel/api/links/Server;->log(ILjava/lang/String;)V

    .line 110
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/links/Server;->resetConnection()V

    goto/16 :goto_0

    .line 87
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v2
    :try_end_6
    .catch Ljava/security/cert/CertificateException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/security/KeyManagementException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/security/KeyStoreException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_6 .. :try_end_6} :catch_4

    .line 113
    :catch_2
    move-exception v0

    .line 114
    .local v0, "e":Ljava/security/KeyManagementException;
    const-string v2, "Error loading key material for SSL."

    invoke-virtual {p0, v6, v2}, Lcom/mwr/jdiesel/api/links/Server;->log(ILjava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/links/Server;->stopConnector()V

    goto/16 :goto_0

    .line 118
    .end local v0    # "e":Ljava/security/KeyManagementException;
    :catch_3
    move-exception v0

    .line 119
    .local v0, "e":Ljava/security/KeyStoreException;
    const-string v2, "Error loading key material for SSL."

    invoke-virtual {p0, v6, v2}, Lcom/mwr/jdiesel/api/links/Server;->log(ILjava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/links/Server;->stopConnector()V

    goto/16 :goto_0

    .line 123
    .end local v0    # "e":Ljava/security/KeyStoreException;
    :catch_4
    move-exception v0

    .line 124
    .local v0, "e":Ljava/security/UnrecoverableKeyException;
    const-string v2, "Error loading key material for SSL."

    invoke-virtual {p0, v6, v2}, Lcom/mwr/jdiesel/api/links/Server;->log(ILjava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/links/Server;->stopConnector()V

    goto/16 :goto_0

    .line 92
    .end local v0    # "e":Ljava/security/UnrecoverableKeyException;
    :catch_5
    move-exception v2

    goto :goto_1

    .line 91
    :catch_6
    move-exception v2

    goto :goto_1
.end method

.method public setStatus(Lcom/mwr/jdiesel/api/connectors/Connector$Status;)V
    .locals 1
    .param p1, "status"    # Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/mwr/jdiesel/api/links/Server;->parameters:Lcom/mwr/jdiesel/api/connectors/Connector;

    invoke-virtual {v0, p1}, Lcom/mwr/jdiesel/api/connectors/Connector;->setStatus(Lcom/mwr/jdiesel/api/connectors/Connector$Status;)V

    .line 138
    return-void
.end method

.method public stopConnector()V
    .locals 1

    .prologue
    .line 141
    invoke-super {p0}, Lcom/mwr/jdiesel/api/links/Link;->stopConnector()V

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/links/Server;->server_socket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/mwr/jdiesel/api/links/Server;->server_socket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/links/Server;->server_socket:Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 149
    :catch_0
    move-exception v0

    goto :goto_0
.end method
