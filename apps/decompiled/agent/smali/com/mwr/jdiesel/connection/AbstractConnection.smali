.class public abstract Lcom/mwr/jdiesel/connection/AbstractConnection;
.super Ljava/lang/Thread;
.source "AbstractConnection.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$mwr$jdiesel$api$Protobuf$Message$MessageType:[I = null

.field private static final LIVENESS_THRESHOLD:J = 0x7530L


# instance fields
.field private connector:Lcom/mwr/jdiesel/connection/AbstractLink;

.field private device_info:Lcom/mwr/jdiesel/api/DeviceInfo;

.field private last_message_at:J

.field public volatile running:Z

.field public volatile started:Z

.field private transport:Lcom/mwr/jdiesel/api/transport/Transport;


# direct methods
.method static synthetic $SWITCH_TABLE$com$mwr$jdiesel$api$Protobuf$Message$MessageType()[I
    .locals 3

    .prologue
    .line 17
    sget-object v0, Lcom/mwr/jdiesel/connection/AbstractConnection;->$SWITCH_TABLE$com$mwr$jdiesel$api$Protobuf$Message$MessageType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;->values()[Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;->REFLECTION_REQUEST:Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;->REFLECTION_RESPONSE:Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;->SYSTEM_REQUEST:Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;->SYSTEM_RESPONSE:Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/mwr/jdiesel/connection/AbstractConnection;->$SWITCH_TABLE$com$mwr$jdiesel$api$Protobuf$Message$MessageType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Lcom/mwr/jdiesel/connection/AbstractLink;Lcom/mwr/jdiesel/api/DeviceInfo;Lcom/mwr/jdiesel/api/transport/Transport;)V
    .locals 4
    .param p1, "connector"    # Lcom/mwr/jdiesel/connection/AbstractLink;
    .param p2, "device_info"    # Lcom/mwr/jdiesel/api/DeviceInfo;
    .param p3, "transport"    # Lcom/mwr/jdiesel/api/transport/Transport;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 21
    iput-object v3, p0, Lcom/mwr/jdiesel/connection/AbstractConnection;->connector:Lcom/mwr/jdiesel/connection/AbstractLink;

    .line 23
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mwr/jdiesel/connection/AbstractConnection;->last_message_at:J

    .line 24
    iput-boolean v2, p0, Lcom/mwr/jdiesel/connection/AbstractConnection;->running:Z

    .line 25
    iput-boolean v2, p0, Lcom/mwr/jdiesel/connection/AbstractConnection;->started:Z

    .line 26
    iput-object v3, p0, Lcom/mwr/jdiesel/connection/AbstractConnection;->transport:Lcom/mwr/jdiesel/api/transport/Transport;

    .line 29
    iput-object p1, p0, Lcom/mwr/jdiesel/connection/AbstractConnection;->connector:Lcom/mwr/jdiesel/connection/AbstractLink;

    .line 30
    iput-object p2, p0, Lcom/mwr/jdiesel/connection/AbstractConnection;->device_info:Lcom/mwr/jdiesel/api/DeviceInfo;

    .line 31
    iput-object p3, p0, Lcom/mwr/jdiesel/connection/AbstractConnection;->transport:Lcom/mwr/jdiesel/api/transport/Transport;

    .line 32
    return-void
.end method

.method private handleMessage(Lcom/mwr/jdiesel/api/Protobuf$Message;)V
    .locals 4
    .param p1, "message"    # Lcom/mwr/jdiesel/api/Protobuf$Message;

    .prologue
    .line 66
    const/4 v1, 0x0

    .line 68
    .local v1, "response":Lcom/mwr/jdiesel/api/Protobuf$Message;
    :try_start_0
    invoke-static {}, Lcom/mwr/jdiesel/connection/AbstractConnection;->$SWITCH_TABLE$com$mwr$jdiesel$api$Protobuf$Message$MessageType()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message;->getType()Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 86
    new-instance v2, Lcom/mwr/jdiesel/api/UnexpectedMessageException;

    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message;->getType()Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/mwr/jdiesel/api/UnexpectedMessageException;-><init>(Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;)V

    throw v2
    :try_end_0
    .catch Lcom/mwr/jdiesel/api/InvalidMessageException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Lcom/mwr/jdiesel/api/InvalidMessageException;
    new-instance v2, Lcom/mwr/jdiesel/api/InvalidMessageException;

    invoke-direct {v2, p1}, Lcom/mwr/jdiesel/api/InvalidMessageException;-><init>(Lcom/mwr/jdiesel/api/Protobuf$Message;)V

    throw v2

    .line 70
    .end local v0    # "e":Lcom/mwr/jdiesel/api/InvalidMessageException;
    :pswitch_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/connection/AbstractConnection;->handleReflectionRequest(Lcom/mwr/jdiesel/api/Protobuf$Message;)Lcom/mwr/jdiesel/api/Protobuf$Message;

    move-result-object v1

    .line 89
    :goto_0
    if-eqz v1, :cond_0

    .line 90
    invoke-virtual {p0, v1}, Lcom/mwr/jdiesel/connection/AbstractConnection;->send(Lcom/mwr/jdiesel/api/Protobuf$Message;)V
    :try_end_1
    .catch Lcom/mwr/jdiesel/api/InvalidMessageException; {:try_start_1 .. :try_end_1} :catch_0

    .line 96
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mwr/jdiesel/connection/AbstractConnection;->last_message_at:J

    .line 97
    return-void

    .line 74
    :pswitch_1
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/connection/AbstractConnection;->handleReflectionResponse(Lcom/mwr/jdiesel/api/Protobuf$Message;)Lcom/mwr/jdiesel/api/Protobuf$Message;

    move-result-object v1

    .line 75
    goto :goto_0

    .line 78
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/connection/AbstractConnection;->handleSystemRequest(Lcom/mwr/jdiesel/api/Protobuf$Message;)Lcom/mwr/jdiesel/api/Protobuf$Message;

    move-result-object v1

    .line 79
    goto :goto_0

    .line 82
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/connection/AbstractConnection;->handleSystemResponse(Lcom/mwr/jdiesel/api/Protobuf$Message;)Lcom/mwr/jdiesel/api/Protobuf$Message;
    :try_end_2
    .catch Lcom/mwr/jdiesel/api/InvalidMessageException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    .line 83
    goto :goto_0

    .line 68
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private tryAndNotifyAll()V
    .locals 3

    .prologue
    .line 262
    monitor-enter p0

    .line 264
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    :goto_0
    :try_start_1
    monitor-exit p0

    .line 270
    return-void

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Ljava/lang/IllegalMonitorStateException;
    const-string v1, "Connection"

    const-string v2, "could not notifyAll(), the Connection was not locked"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 262
    .end local v0    # "e":Ljava/lang/IllegalMonitorStateException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method protected abstract bindToServer(Lcom/mwr/jdiesel/api/DeviceInfo;)Z
.end method

.method protected checkForLiveness()V
    .locals 6

    .prologue
    .line 49
    iget-object v0, p0, Lcom/mwr/jdiesel/connection/AbstractConnection;->connector:Lcom/mwr/jdiesel/connection/AbstractLink;

    invoke-virtual {v0}, Lcom/mwr/jdiesel/connection/AbstractLink;->checkForLiveness()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mwr/jdiesel/connection/AbstractConnection;->last_message_at:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/connection/AbstractConnection;->transport:Lcom/mwr/jdiesel/api/transport/Transport;

    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/transport/Transport;->isLive()Z

    move-result v0

    if-nez v0, :cond_2

    .line 50
    :cond_1
    const-string v0, "connection"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "connection was reset, no message for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/mwr/jdiesel/connection/AbstractConnection;->last_message_at:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/connection/AbstractConnection;->stopConnection(Z)V

    .line 54
    :cond_2
    return-void
.end method

.method protected getConnector()Lcom/mwr/jdiesel/connection/AbstractLink;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/mwr/jdiesel/connection/AbstractConnection;->connector:Lcom/mwr/jdiesel/connection/AbstractLink;

    return-object v0
.end method

.method protected getTransport()Lcom/mwr/jdiesel/api/transport/Transport;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mwr/jdiesel/connection/AbstractConnection;->transport:Lcom/mwr/jdiesel/api/transport/Transport;

    return-object v0
.end method

.method protected abstract handleReflectionRequest(Lcom/mwr/jdiesel/api/Protobuf$Message;)Lcom/mwr/jdiesel/api/Protobuf$Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mwr/jdiesel/api/InvalidMessageException;
        }
    .end annotation
.end method

.method protected abstract handleReflectionResponse(Lcom/mwr/jdiesel/api/Protobuf$Message;)Lcom/mwr/jdiesel/api/Protobuf$Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mwr/jdiesel/api/InvalidMessageException;
        }
    .end annotation
.end method

.method protected abstract handleSystemRequest(Lcom/mwr/jdiesel/api/Protobuf$Message;)Lcom/mwr/jdiesel/api/Protobuf$Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mwr/jdiesel/api/InvalidMessageException;
        }
    .end annotation
.end method

.method protected abstract handleSystemResponse(Lcom/mwr/jdiesel/api/Protobuf$Message;)Lcom/mwr/jdiesel/api/Protobuf$Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mwr/jdiesel/api/InvalidMessageException;
        }
    .end annotation
.end method

.method public hasSessions()Z
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/mwr/jdiesel/connection/AbstractConnection;->connector:Lcom/mwr/jdiesel/connection/AbstractLink;

    invoke-virtual {v0}, Lcom/mwr/jdiesel/connection/AbstractLink;->hasSessions()Z

    move-result v0

    return v0
.end method

.method protected mustBind()Z
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/mwr/jdiesel/connection/AbstractConnection;->connector:Lcom/mwr/jdiesel/connection/AbstractLink;

    invoke-virtual {v0}, Lcom/mwr/jdiesel/connection/AbstractLink;->mustBind()Z

    move-result v0

    return v0
.end method

.method protected receive()Lcom/mwr/jdiesel/api/Protobuf$Message;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 129
    :try_start_0
    iget-object v3, p0, Lcom/mwr/jdiesel/connection/AbstractConnection;->transport:Lcom/mwr/jdiesel/api/transport/Transport;

    invoke-virtual {v3}, Lcom/mwr/jdiesel/api/transport/Transport;->receive()Lcom/mwr/jdiesel/api/Frame;

    move-result-object v1

    .line 131
    .local v1, "f":Lcom/mwr/jdiesel/api/Frame;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Frame;->getPayload()Lcom/mwr/jdiesel/api/Protobuf$Message;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/mwr/jdiesel/api/APIVersionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/mwr/jdiesel/api/transport/TransportDisconnectedException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    .line 149
    .end local v1    # "f":Lcom/mwr/jdiesel/api/Frame;
    :cond_0
    :goto_0
    return-object v2

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/net/SocketTimeoutException;
    goto :goto_0

    .line 136
    .end local v0    # "e":Ljava/net/SocketTimeoutException;
    :catch_1
    move-exception v0

    .line 137
    .local v0, "e":Lcom/mwr/jdiesel/api/APIVersionException;
    invoke-virtual {p0}, Lcom/mwr/jdiesel/connection/AbstractConnection;->stopConnection()V

    goto :goto_0

    .line 141
    .end local v0    # "e":Lcom/mwr/jdiesel/api/APIVersionException;
    :catch_2
    move-exception v0

    .line 142
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/mwr/jdiesel/connection/AbstractConnection;->stopConnection()V

    goto :goto_0

    .line 146
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 147
    .local v0, "e":Lcom/mwr/jdiesel/api/transport/TransportDisconnectedException;
    invoke-virtual {p0}, Lcom/mwr/jdiesel/connection/AbstractConnection;->stopConnection()V

    goto :goto_0
.end method

.method public run()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 167
    iput-boolean v1, p0, Lcom/mwr/jdiesel/connection/AbstractConnection;->running:Z

    .line 168
    iput-boolean v1, p0, Lcom/mwr/jdiesel/connection/AbstractConnection;->started:Z

    .line 169
    invoke-direct {p0}, Lcom/mwr/jdiesel/connection/AbstractConnection;->tryAndNotifyAll()V

    .line 171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/mwr/jdiesel/connection/AbstractConnection;->last_message_at:J

    .line 173
    const/4 v0, 0x0

    .line 175
    .local v0, "request":Lcom/mwr/jdiesel/api/Protobuf$Message;
    iget-object v1, p0, Lcom/mwr/jdiesel/connection/AbstractConnection;->device_info:Lcom/mwr/jdiesel/api/DeviceInfo;

    invoke-virtual {p0, v1}, Lcom/mwr/jdiesel/connection/AbstractConnection;->bindToServer(Lcom/mwr/jdiesel/api/DeviceInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/mwr/jdiesel/connection/AbstractConnection;->stopConnection()V

    .line 178
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/mwr/jdiesel/connection/AbstractConnection;->running:Z

    if-nez v1, :cond_1

    .line 192
    iget-object v1, p0, Lcom/mwr/jdiesel/connection/AbstractConnection;->device_info:Lcom/mwr/jdiesel/api/DeviceInfo;

    invoke-virtual {p0, v1}, Lcom/mwr/jdiesel/connection/AbstractConnection;->unbindFromServer(Lcom/mwr/jdiesel/api/DeviceInfo;)V

    .line 193
    return-void

    .line 179
    :cond_1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/connection/AbstractConnection;->receive()Lcom/mwr/jdiesel/api/Protobuf$Message;

    move-result-object v0

    .line 181
    if-eqz v0, :cond_2

    .line 182
    invoke-direct {p0, v0}, Lcom/mwr/jdiesel/connection/AbstractConnection;->handleMessage(Lcom/mwr/jdiesel/api/Protobuf$Message;)V

    .line 184
    const/4 v0, 0x0

    .line 187
    :cond_2
    invoke-virtual {p0}, Lcom/mwr/jdiesel/connection/AbstractConnection;->checkForLiveness()V

    .line 189
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0
.end method

.method protected send(Lcom/mwr/jdiesel/api/Protobuf$Message;)V
    .locals 3
    .param p1, "message"    # Lcom/mwr/jdiesel/api/Protobuf$Message;

    .prologue
    .line 200
    :try_start_0
    iget-object v1, p0, Lcom/mwr/jdiesel/connection/AbstractConnection;->transport:Lcom/mwr/jdiesel/api/transport/Transport;

    new-instance v2, Lcom/mwr/jdiesel/api/Frame;

    invoke-direct {v2, p1}, Lcom/mwr/jdiesel/api/Frame;-><init>(Lcom/mwr/jdiesel/api/Protobuf$Message;)V

    invoke-virtual {v1, v2}, Lcom/mwr/jdiesel/api/transport/Transport;->send(Lcom/mwr/jdiesel/api/Frame;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :goto_0
    return-void

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/mwr/jdiesel/connection/AbstractConnection;->stopConnection(Z)V

    goto :goto_0
.end method

.method public startSession()Lcom/mwr/jdiesel/connection/AbstractSession;
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/connection/AbstractConnection;->startSession(Ljava/lang/String;)Lcom/mwr/jdiesel/connection/AbstractSession;

    move-result-object v0

    return-object v0
.end method

.method public startSession(Ljava/lang/String;)Lcom/mwr/jdiesel/connection/AbstractSession;
    .locals 1
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 221
    iget-object v0, p0, Lcom/mwr/jdiesel/connection/AbstractConnection;->connector:Lcom/mwr/jdiesel/connection/AbstractLink;

    invoke-virtual {v0, p1}, Lcom/mwr/jdiesel/connection/AbstractLink;->startSession(Ljava/lang/String;)Lcom/mwr/jdiesel/connection/AbstractSession;

    move-result-object v0

    return-object v0
.end method

.method public stopConnection()V
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/connection/AbstractConnection;->stopConnection(Z)V

    .line 229
    return-void
.end method

.method public stopConnection(Z)V
    .locals 1
    .param p1, "kill_sessions"    # Z

    .prologue
    .line 235
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mwr/jdiesel/connection/AbstractConnection;->running:Z

    .line 236
    invoke-direct {p0}, Lcom/mwr/jdiesel/connection/AbstractConnection;->tryAndNotifyAll()V

    .line 238
    if-eqz p1, :cond_0

    .line 239
    invoke-virtual {p0}, Lcom/mwr/jdiesel/connection/AbstractConnection;->stopSessions()V

    .line 240
    :cond_0
    return-void
.end method

.method public stopSession(Ljava/lang/String;)Lcom/mwr/jdiesel/connection/AbstractSession;
    .locals 1
    .param p1, "session_id"    # Ljava/lang/String;

    .prologue
    .line 251
    iget-object v0, p0, Lcom/mwr/jdiesel/connection/AbstractConnection;->connector:Lcom/mwr/jdiesel/connection/AbstractLink;

    invoke-virtual {v0, p1}, Lcom/mwr/jdiesel/connection/AbstractLink;->stopSession(Ljava/lang/String;)Lcom/mwr/jdiesel/connection/AbstractSession;

    move-result-object v0

    return-object v0
.end method

.method public stopSessions()V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/mwr/jdiesel/connection/AbstractConnection;->connector:Lcom/mwr/jdiesel/connection/AbstractLink;

    invoke-virtual {v0}, Lcom/mwr/jdiesel/connection/AbstractLink;->stopSessions()V

    .line 259
    return-void
.end method

.method protected abstract unbindFromServer(Lcom/mwr/jdiesel/api/DeviceInfo;)V
.end method
