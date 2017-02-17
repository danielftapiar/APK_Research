.class public Lcom/mwr/jdiesel/api/links/Client;
.super Lcom/mwr/jdiesel/api/links/Link;
.source "Client.java"


# static fields
.field public static final RESET_TIMEOUT:I = 0x1388


# direct methods
.method public constructor <init>(Lcom/mwr/jdiesel/api/connectors/Endpoint;Lcom/mwr/jdiesel/api/DeviceInfo;)V
    .locals 0
    .param p1, "endpoint"    # Lcom/mwr/jdiesel/api/connectors/Endpoint;
    .param p2, "device_info"    # Lcom/mwr/jdiesel/api/DeviceInfo;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/mwr/jdiesel/api/links/Link;-><init>(Lcom/mwr/jdiesel/api/connectors/Connector;Lcom/mwr/jdiesel/api/DeviceInfo;)V

    .line 22
    return-void
.end method


# virtual methods
.method public getHostCertificateFingerprint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/mwr/jdiesel/api/links/Client;->connection:Lcom/mwr/jdiesel/connection/AbstractConnection;

    check-cast v0, Lcom/mwr/jdiesel/connection/SecureConnection;

    invoke-interface {v0}, Lcom/mwr/jdiesel/connection/SecureConnection;->getHostCertificateFingerprint()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPeerCertificateFingerprint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/mwr/jdiesel/api/links/Client;->connection:Lcom/mwr/jdiesel/connection/AbstractConnection;

    check-cast v0, Lcom/mwr/jdiesel/connection/SecureConnection;

    invoke-interface {v0}, Lcom/mwr/jdiesel/connection/SecureConnection;->getPeerCertificateFingerprint()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public resetConnection()V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mwr/jdiesel/api/links/Client;->parameters:Lcom/mwr/jdiesel/api/connectors/Connector;

    sget-object v1, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->CONNECTING:Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    invoke-virtual {v0, v1}, Lcom/mwr/jdiesel/api/connectors/Connector;->setStatus(Lcom/mwr/jdiesel/api/connectors/Connector$Status;)V

    .line 37
    const-wide/16 v0, 0x1388

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_0
    invoke-super {p0}, Lcom/mwr/jdiesel/api/links/Link;->resetConnection()V

    .line 42
    return-void

    .line 39
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x4

    .line 46
    iget-object v1, p0, Lcom/mwr/jdiesel/api/links/Client;->parameters:Lcom/mwr/jdiesel/api/connectors/Connector;

    check-cast v1, Lcom/mwr/jdiesel/api/connectors/Endpoint;

    .line 48
    .local v1, "endpoint":Lcom/mwr/jdiesel/api/connectors/Endpoint;
    const-string v3, "Starting..."

    invoke-virtual {p0, v6, v3}, Lcom/mwr/jdiesel/api/links/Client;->log(ILjava/lang/String;)V

    .line 49
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/mwr/jdiesel/api/links/Client;->running:Z

    .line 51
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/mwr/jdiesel/api/links/Client;->running:Z

    if-nez v3, :cond_1

    .line 100
    const-string v3, "Stopped."

    invoke-virtual {p0, v6, v3}, Lcom/mwr/jdiesel/api/links/Client;->log(ILjava/lang/String;)V

    .line 101
    return-void

    .line 53
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/mwr/jdiesel/api/links/Client;->connection:Lcom/mwr/jdiesel/connection/AbstractConnection;

    if-nez v3, :cond_2

    .line 54
    iget-object v3, p0, Lcom/mwr/jdiesel/api/links/Client;->parameters:Lcom/mwr/jdiesel/api/connectors/Connector;

    sget-object v4, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->CONNECTING:Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    invoke-virtual {v3, v4}, Lcom/mwr/jdiesel/api/connectors/Connector;->setStatus(Lcom/mwr/jdiesel/api/connectors/Connector$Status;)V

    .line 56
    const/4 v3, 0x4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Attempting connection to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->toConnectionString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/mwr/jdiesel/api/links/Client;->log(ILjava/lang/String;)V

    .line 57
    new-instance v3, Lcom/mwr/jdiesel/api/connectors/EndpointSocketFactory;

    invoke-direct {v3}, Lcom/mwr/jdiesel/api/connectors/EndpointSocketFactory;-><init>()V

    invoke-virtual {v3, v1}, Lcom/mwr/jdiesel/api/connectors/EndpointSocketFactory;->createSocket(Lcom/mwr/jdiesel/api/connectors/Endpoint;)Ljava/net/Socket;

    move-result-object v2

    .line 59
    .local v2, "socket":Ljava/net/Socket;
    if-eqz v2, :cond_0

    .line 60
    const/4 v3, 0x4

    const-string v4, "Socket connected."

    invoke-virtual {p0, v3, v4}, Lcom/mwr/jdiesel/api/links/Client;->log(ILjava/lang/String;)V

    .line 62
    const/4 v3, 0x4

    const-string v4, "Attempting to start drozer thread..."

    invoke-virtual {p0, v3, v4}, Lcom/mwr/jdiesel/api/links/Client;->log(ILjava/lang/String;)V

    .line 63
    new-instance v3, Lcom/mwr/jdiesel/api/transport/SocketTransport;

    invoke-direct {v3, v2}, Lcom/mwr/jdiesel/api/transport/SocketTransport;-><init>(Ljava/net/Socket;)V

    invoke-virtual {p0, v3}, Lcom/mwr/jdiesel/api/links/Client;->createConnection(Lcom/mwr/jdiesel/api/transport/Transport;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 82
    .end local v2    # "socket":Ljava/net/Socket;
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/net/UnknownHostException;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown Host: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v7, v3}, Lcom/mwr/jdiesel/api/links/Client;->log(ILjava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/links/Client;->stopConnector()V

    goto :goto_0

    .line 67
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/mwr/jdiesel/api/links/Client;->connection:Lcom/mwr/jdiesel/connection/AbstractConnection;

    monitor-enter v4
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/KeyManagementException; {:try_start_1 .. :try_end_1} :catch_2

    .line 69
    :try_start_2
    iget-object v3, p0, Lcom/mwr/jdiesel/api/links/Client;->connection:Lcom/mwr/jdiesel/connection/AbstractConnection;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    :goto_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 75
    :try_start_4
    iget-object v3, p0, Lcom/mwr/jdiesel/api/links/Client;->connection:Lcom/mwr/jdiesel/connection/AbstractConnection;

    iget-boolean v3, v3, Lcom/mwr/jdiesel/connection/AbstractConnection;->started:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mwr/jdiesel/api/links/Client;->connection:Lcom/mwr/jdiesel/connection/AbstractConnection;

    iget-boolean v3, v3, Lcom/mwr/jdiesel/connection/AbstractConnection;->running:Z

    if-nez v3, :cond_0

    .line 76
    const/4 v3, 0x4

    const-string v4, "Connection was reset."

    invoke-virtual {p0, v3, v4}, Lcom/mwr/jdiesel/api/links/Client;->log(ILjava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/links/Client;->resetConnection()V
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/security/KeyManagementException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 87
    :catch_1
    move-exception v0

    .line 88
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "IO Error. Resetting connection."

    invoke-virtual {p0, v7, v3}, Lcom/mwr/jdiesel/api/links/Client;->log(ILjava/lang/String;)V

    .line 89
    const/4 v3, 0x3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/mwr/jdiesel/api/links/Client;->log(ILjava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/links/Client;->resetConnection()V

    goto/16 :goto_0

    .line 67
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v3
    :try_end_6
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/security/KeyManagementException; {:try_start_6 .. :try_end_6} :catch_2

    .line 93
    :catch_2
    move-exception v0

    .line 94
    .local v0, "e":Ljava/security/KeyManagementException;
    const-string v3, "Error loading key material for SSL."

    invoke-virtual {p0, v7, v3}, Lcom/mwr/jdiesel/api/links/Client;->log(ILjava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/links/Client;->stopConnector()V

    goto/16 :goto_0

    .line 72
    .end local v0    # "e":Ljava/security/KeyManagementException;
    :catch_3
    move-exception v3

    goto :goto_1

    .line 71
    :catch_4
    move-exception v3

    goto :goto_1
.end method

.method public setStatus(Lcom/mwr/jdiesel/api/connectors/Connector$Status;)V
    .locals 1
    .param p1, "status"    # Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/mwr/jdiesel/api/links/Client;->parameters:Lcom/mwr/jdiesel/api/connectors/Connector;

    invoke-virtual {v0, p1}, Lcom/mwr/jdiesel/api/connectors/Connector;->setStatus(Lcom/mwr/jdiesel/api/connectors/Connector$Status;)V

    .line 106
    return-void
.end method
