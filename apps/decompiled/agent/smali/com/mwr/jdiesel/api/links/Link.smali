.class public abstract Lcom/mwr/jdiesel/api/links/Link;
.super Lcom/mwr/jdiesel/connection/AbstractLink;
.source "Link.java"


# instance fields
.field private device_info:Lcom/mwr/jdiesel/api/DeviceInfo;

.field private logger:Lcom/mwr/jdiesel/logger/Logger;

.field protected parameters:Lcom/mwr/jdiesel/api/connectors/Connector;


# direct methods
.method public constructor <init>(Lcom/mwr/jdiesel/api/connectors/Connector;Lcom/mwr/jdiesel/api/DeviceInfo;)V
    .locals 1
    .param p1, "parameters"    # Lcom/mwr/jdiesel/api/connectors/Connector;
    .param p2, "device_info"    # Lcom/mwr/jdiesel/api/DeviceInfo;

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Lcom/mwr/jdiesel/connection/AbstractLink;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/mwr/jdiesel/api/links/Link;->parameters:Lcom/mwr/jdiesel/api/connectors/Connector;

    .line 21
    iput-object v0, p0, Lcom/mwr/jdiesel/api/links/Link;->logger:Lcom/mwr/jdiesel/logger/Logger;

    .line 24
    iput-object p1, p0, Lcom/mwr/jdiesel/api/links/Link;->parameters:Lcom/mwr/jdiesel/api/connectors/Connector;

    .line 25
    iput-object p2, p0, Lcom/mwr/jdiesel/api/links/Link;->device_info:Lcom/mwr/jdiesel/api/DeviceInfo;

    .line 27
    new-instance v0, Lcom/mwr/jdiesel/api/sessions/SessionCollection;

    invoke-direct {v0, p0}, Lcom/mwr/jdiesel/api/sessions/SessionCollection;-><init>(Lcom/mwr/jdiesel/api/links/Link;)V

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/links/Link;->setSessionCollection(Lcom/mwr/jdiesel/connection/AbstractSessionCollection;)V

    .line 28
    return-void
.end method


# virtual methods
.method protected createConnection(Lcom/mwr/jdiesel/api/transport/Transport;)V
    .locals 2
    .param p1, "transport"    # Lcom/mwr/jdiesel/api/transport/Transport;

    .prologue
    .line 34
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/transport/Transport;->isLive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    new-instance v0, Lcom/mwr/jdiesel/api/connectors/Connection;

    iget-object v1, p0, Lcom/mwr/jdiesel/api/links/Link;->device_info:Lcom/mwr/jdiesel/api/DeviceInfo;

    invoke-direct {v0, p0, v1, p1}, Lcom/mwr/jdiesel/api/connectors/Connection;-><init>(Lcom/mwr/jdiesel/connection/AbstractLink;Lcom/mwr/jdiesel/api/DeviceInfo;Lcom/mwr/jdiesel/api/transport/Transport;)V

    iput-object v0, p0, Lcom/mwr/jdiesel/api/links/Link;->connection:Lcom/mwr/jdiesel/connection/AbstractConnection;

    .line 36
    iget-object v0, p0, Lcom/mwr/jdiesel/api/links/Link;->connection:Lcom/mwr/jdiesel/connection/AbstractConnection;

    invoke-virtual {v0}, Lcom/mwr/jdiesel/connection/AbstractConnection;->start()V

    .line 38
    :cond_0
    return-void
.end method

.method public getSession(Ljava/lang/String;)Lcom/mwr/jdiesel/api/sessions/Session;
    .locals 1
    .param p1, "session_id"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/mwr/jdiesel/connection/AbstractLink;->getSession(Ljava/lang/String;)Lcom/mwr/jdiesel/connection/AbstractSession;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/sessions/Session;

    return-object v0
.end method

.method public bridge synthetic getSession(Ljava/lang/String;)Lcom/mwr/jdiesel/connection/AbstractSession;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/links/Link;->getSession(Ljava/lang/String;)Lcom/mwr/jdiesel/api/sessions/Session;

    move-result-object v0

    return-object v0
.end method

.method public log(ILjava/lang/String;)V
    .locals 1
    .param p1, "level"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mwr/jdiesel/api/links/Link;->logger:Lcom/mwr/jdiesel/logger/Logger;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/mwr/jdiesel/api/links/Link;->logger:Lcom/mwr/jdiesel/logger/Logger;

    invoke-virtual {v0, p1, p2}, Lcom/mwr/jdiesel/logger/Logger;->log(ILjava/lang/String;)V

    .line 50
    :goto_0
    return-void

    .line 49
    :cond_0
    const-string v0, "link"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public log(Lcom/mwr/jdiesel/logger/LogMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/mwr/jdiesel/logger/LogMessage;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mwr/jdiesel/api/links/Link;->logger:Lcom/mwr/jdiesel/logger/Logger;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/mwr/jdiesel/api/links/Link;->logger:Lcom/mwr/jdiesel/logger/Logger;

    invoke-virtual {v0, p1}, Lcom/mwr/jdiesel/logger/Logger;->log(Lcom/mwr/jdiesel/logger/LogMessage;)V

    .line 57
    :goto_0
    return-void

    .line 56
    :cond_0
    const-string v0, "link"

    invoke-virtual {p1}, Lcom/mwr/jdiesel/logger/LogMessage;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setLogger(Lcom/mwr/jdiesel/logger/Logger;)V
    .locals 0
    .param p1, "logger"    # Lcom/mwr/jdiesel/logger/Logger;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/mwr/jdiesel/api/links/Link;->logger:Lcom/mwr/jdiesel/logger/Logger;

    .line 61
    return-void
.end method

.method public abstract setStatus(Lcom/mwr/jdiesel/api/connectors/Connector$Status;)V
.end method

.method public startSession(Ljava/lang/String;)Lcom/mwr/jdiesel/api/sessions/Session;
    .locals 1
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mwr/jdiesel/api/links/Link;->parameters:Lcom/mwr/jdiesel/api/connectors/Connector;

    invoke-virtual {v0, p1}, Lcom/mwr/jdiesel/api/connectors/Connector;->verifyPassword(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/links/Link;->createSession()Lcom/mwr/jdiesel/connection/AbstractSession;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/sessions/Session;

    .line 67
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic startSession(Ljava/lang/String;)Lcom/mwr/jdiesel/connection/AbstractSession;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/links/Link;->startSession(Ljava/lang/String;)Lcom/mwr/jdiesel/api/sessions/Session;

    move-result-object v0

    return-object v0
.end method
