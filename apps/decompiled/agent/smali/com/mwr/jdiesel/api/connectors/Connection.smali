.class public Lcom/mwr/jdiesel/api/connectors/Connection;
.super Lcom/mwr/jdiesel/connection/AbstractConnection;
.source "Connection.java"

# interfaces
.implements Lcom/mwr/jdiesel/connection/SecureConnection;


# instance fields
.field private system_message_handler:Lcom/mwr/jdiesel/api/handlers/MessageHandler;


# direct methods
.method public constructor <init>(Lcom/mwr/jdiesel/connection/AbstractLink;Lcom/mwr/jdiesel/api/DeviceInfo;Lcom/mwr/jdiesel/api/transport/Transport;)V
    .locals 1
    .param p1, "connector"    # Lcom/mwr/jdiesel/connection/AbstractLink;
    .param p2, "device_info"    # Lcom/mwr/jdiesel/api/DeviceInfo;
    .param p3, "transport"    # Lcom/mwr/jdiesel/api/transport/Transport;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/mwr/jdiesel/connection/AbstractConnection;-><init>(Lcom/mwr/jdiesel/connection/AbstractLink;Lcom/mwr/jdiesel/api/DeviceInfo;Lcom/mwr/jdiesel/api/transport/Transport;)V

    .line 31
    new-instance v0, Lcom/mwr/jdiesel/api/handlers/SystemMessageHandler;

    invoke-direct {v0, p0, p2}, Lcom/mwr/jdiesel/api/handlers/SystemMessageHandler;-><init>(Lcom/mwr/jdiesel/api/connectors/Connection;Lcom/mwr/jdiesel/api/DeviceInfo;)V

    iput-object v0, p0, Lcom/mwr/jdiesel/api/connectors/Connection;->system_message_handler:Lcom/mwr/jdiesel/api/handlers/MessageHandler;

    .line 32
    return-void
.end method


# virtual methods
.method protected bindToServer(Lcom/mwr/jdiesel/api/DeviceInfo;)Z
    .locals 8
    .param p1, "device"    # Lcom/mwr/jdiesel/api/DeviceInfo;

    .prologue
    const/4 v1, 0x1

    .line 42
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/connectors/Connection;->mustBind()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 43
    const/4 v2, 0x3

    const-string v3, "Sending BIND_DEVICE to drozer server..."

    invoke-virtual {p0, v2, v3}, Lcom/mwr/jdiesel/api/connectors/Connection;->log(ILjava/lang/String;)V

    .line 45
    new-instance v2, Lcom/mwr/jdiesel/api/builders/MessageFactory;

    invoke-static {}, Lcom/mwr/jdiesel/api/builders/SystemRequestFactory;->bind()Lcom/mwr/jdiesel/api/builders/SystemRequestFactory;

    move-result-object v3

    .line 46
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/DeviceInfo;->getAndroidID()Ljava/lang/String;

    move-result-object v4

    .line 47
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/DeviceInfo;->getManufacturer()Ljava/lang/String;

    move-result-object v5

    .line 48
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/DeviceInfo;->getModel()Ljava/lang/String;

    move-result-object v6

    .line 49
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/DeviceInfo;->getSoftware()Ljava/lang/String;

    move-result-object v7

    .line 45
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/mwr/jdiesel/api/builders/SystemRequestFactory;->setDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mwr/jdiesel/api/builders/SystemRequestFactory;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/mwr/jdiesel/api/builders/MessageFactory;-><init>(Lcom/mwr/jdiesel/api/builders/SystemRequestFactory;)V

    .line 49
    invoke-virtual {v2, v1}, Lcom/mwr/jdiesel/api/builders/MessageFactory;->setId(I)Lcom/mwr/jdiesel/api/builders/MessageFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mwr/jdiesel/api/builders/MessageFactory;->build()Lcom/mwr/jdiesel/api/Protobuf$Message;

    move-result-object v2

    .line 45
    invoke-virtual {p0, v2}, Lcom/mwr/jdiesel/api/connectors/Connection;->send(Lcom/mwr/jdiesel/api/Protobuf$Message;)V

    .line 51
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/connectors/Connection;->receive()Lcom/mwr/jdiesel/api/Protobuf$Message;

    move-result-object v0

    .line 53
    .local v0, "message":Lcom/mwr/jdiesel/api/Protobuf$Message;
    if-eqz v0, :cond_1

    .line 54
    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message;->getType()Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;

    move-result-object v2

    sget-object v3, Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;->SYSTEM_RESPONSE:Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;

    if-ne v2, v3, :cond_1

    .line 55
    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message;->hasSystemResponse()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 56
    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message;->getSystemResponse()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->getStatus()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;

    move-result-object v2

    sget-object v3, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;->SUCCESS:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;

    if-ne v2, v3, :cond_1

    .line 57
    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message;->getSystemResponse()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->getType()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;

    move-result-object v2

    sget-object v3, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;->BOUND:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;

    if-ne v2, v3, :cond_1

    .line 58
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/connectors/Connection;->getConnector()Lcom/mwr/jdiesel/api/links/Link;

    move-result-object v2

    sget-object v3, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->ONLINE:Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    invoke-virtual {v2, v3}, Lcom/mwr/jdiesel/api/links/Link;->setStatus(Lcom/mwr/jdiesel/api/connectors/Connector$Status;)V

    .line 66
    .end local v0    # "message":Lcom/mwr/jdiesel/api/Protobuf$Message;
    :cond_0
    :goto_0
    return v1

    .line 63
    .restart local v0    # "message":Lcom/mwr/jdiesel/api/Protobuf$Message;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getConnector()Lcom/mwr/jdiesel/api/links/Link;
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Lcom/mwr/jdiesel/connection/AbstractConnection;->getConnector()Lcom/mwr/jdiesel/connection/AbstractLink;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/links/Link;

    return-object v0
.end method

.method protected bridge synthetic getConnector()Lcom/mwr/jdiesel/connection/AbstractLink;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/connectors/Connection;->getConnector()Lcom/mwr/jdiesel/api/links/Link;

    move-result-object v0

    return-object v0
.end method

.method public getHostCertificateFingerprint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/connectors/Connection;->getTransport()Lcom/mwr/jdiesel/api/transport/Transport;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/transport/SecureTransport;

    invoke-interface {v0}, Lcom/mwr/jdiesel/api/transport/SecureTransport;->getHostCertificateFingerprint()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPeerCertificateFingerprint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/connectors/Connection;->getTransport()Lcom/mwr/jdiesel/api/transport/Transport;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/transport/SecureTransport;

    invoke-interface {v0}, Lcom/mwr/jdiesel/api/transport/SecureTransport;->getPeerCertificateFingerprint()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleReflectionRequest(Lcom/mwr/jdiesel/api/Protobuf$Message;)Lcom/mwr/jdiesel/api/Protobuf$Message;
    .locals 3
    .param p1, "message"    # Lcom/mwr/jdiesel/api/Protobuf$Message;

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/connectors/Connection;->getConnector()Lcom/mwr/jdiesel/api/links/Link;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message;->getReflectionRequest()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mwr/jdiesel/api/links/Link;->getSession(Ljava/lang/String;)Lcom/mwr/jdiesel/api/sessions/Session;

    move-result-object v0

    .line 94
    .local v0, "session":Lcom/mwr/jdiesel/api/sessions/Session;
    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0, p1}, Lcom/mwr/jdiesel/api/sessions/Session;->deliverMessage(Lcom/mwr/jdiesel/api/Protobuf$Message;)V

    .line 97
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method protected handleReflectionResponse(Lcom/mwr/jdiesel/api/Protobuf$Message;)Lcom/mwr/jdiesel/api/Protobuf$Message;
    .locals 1
    .param p1, "message"    # Lcom/mwr/jdiesel/api/Protobuf$Message;

    .prologue
    .line 102
    const/4 v0, 0x0

    return-object v0
.end method

.method protected handleSystemRequest(Lcom/mwr/jdiesel/api/Protobuf$Message;)Lcom/mwr/jdiesel/api/Protobuf$Message;
    .locals 1
    .param p1, "message"    # Lcom/mwr/jdiesel/api/Protobuf$Message;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/mwr/jdiesel/api/connectors/Connection;->system_message_handler:Lcom/mwr/jdiesel/api/handlers/MessageHandler;

    invoke-interface {v0, p1}, Lcom/mwr/jdiesel/api/handlers/MessageHandler;->handle(Lcom/mwr/jdiesel/api/Protobuf$Message;)Lcom/mwr/jdiesel/api/Protobuf$Message;

    move-result-object v0

    return-object v0
.end method

.method protected handleSystemResponse(Lcom/mwr/jdiesel/api/Protobuf$Message;)Lcom/mwr/jdiesel/api/Protobuf$Message;
    .locals 1
    .param p1, "message"    # Lcom/mwr/jdiesel/api/Protobuf$Message;

    .prologue
    .line 112
    const/4 v0, 0x0

    return-object v0
.end method

.method public log(ILjava/lang/String;)V
    .locals 1
    .param p1, "level"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/connectors/Connection;->getConnector()Lcom/mwr/jdiesel/api/links/Link;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mwr/jdiesel/api/links/Link;->log(ILjava/lang/String;)V

    .line 120
    return-void
.end method

.method protected unbindFromServer(Lcom/mwr/jdiesel/api/DeviceInfo;)V
    .locals 7
    .param p1, "device"    # Lcom/mwr/jdiesel/api/DeviceInfo;

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/connectors/Connection;->mustBind()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    const/4 v1, 0x3

    const-string v2, "Sending UNBIND_DEVICE to drozer server..."

    invoke-virtual {p0, v1, v2}, Lcom/mwr/jdiesel/api/connectors/Connection;->log(ILjava/lang/String;)V

    .line 131
    new-instance v1, Lcom/mwr/jdiesel/api/builders/MessageFactory;

    invoke-static {}, Lcom/mwr/jdiesel/api/builders/SystemRequestFactory;->unbind()Lcom/mwr/jdiesel/api/builders/SystemRequestFactory;

    move-result-object v2

    .line 132
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/DeviceInfo;->getAndroidID()Ljava/lang/String;

    move-result-object v3

    .line 133
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/DeviceInfo;->getManufacturer()Ljava/lang/String;

    move-result-object v4

    .line 134
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/DeviceInfo;->getModel()Ljava/lang/String;

    move-result-object v5

    .line 135
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/DeviceInfo;->getSoftware()Ljava/lang/String;

    move-result-object v6

    .line 131
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/mwr/jdiesel/api/builders/SystemRequestFactory;->setDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mwr/jdiesel/api/builders/SystemRequestFactory;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mwr/jdiesel/api/builders/MessageFactory;-><init>(Lcom/mwr/jdiesel/api/builders/SystemRequestFactory;)V

    .line 135
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mwr/jdiesel/api/builders/MessageFactory;->setId(I)Lcom/mwr/jdiesel/api/builders/MessageFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/builders/MessageFactory;->build()Lcom/mwr/jdiesel/api/Protobuf$Message;

    move-result-object v1

    .line 131
    invoke-virtual {p0, v1}, Lcom/mwr/jdiesel/api/connectors/Connection;->send(Lcom/mwr/jdiesel/api/Protobuf$Message;)V

    .line 137
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/connectors/Connection;->receive()Lcom/mwr/jdiesel/api/Protobuf$Message;

    move-result-object v0

    .line 139
    .local v0, "message":Lcom/mwr/jdiesel/api/Protobuf$Message;
    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message;->getType()Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;

    move-result-object v1

    sget-object v2, Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;->SYSTEM_RESPONSE:Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;

    if-ne v1, v2, :cond_0

    .line 141
    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message;->hasSystemResponse()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message;->getSystemResponse()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->getStatus()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;

    move-result-object v1

    sget-object v2, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;->SUCCESS:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;

    if-ne v1, v2, :cond_0

    .line 143
    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message;->getSystemResponse()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->getType()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;

    move-result-object v1

    sget-object v2, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;->UNBOUND:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;

    if-ne v1, v2, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/connectors/Connection;->getConnector()Lcom/mwr/jdiesel/api/links/Link;

    move-result-object v1

    sget-object v2, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->OFFLINE:Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    invoke-virtual {v1, v2}, Lcom/mwr/jdiesel/api/links/Link;->setStatus(Lcom/mwr/jdiesel/api/connectors/Connector$Status;)V

    .line 147
    .end local v0    # "message":Lcom/mwr/jdiesel/api/Protobuf$Message;
    :cond_0
    return-void
.end method
