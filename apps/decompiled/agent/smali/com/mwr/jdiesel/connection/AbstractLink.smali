.class public abstract Lcom/mwr/jdiesel/connection/AbstractLink;
.super Ljava/lang/Thread;
.source "AbstractLink.java"


# instance fields
.field protected volatile connection:Lcom/mwr/jdiesel/connection/AbstractConnection;

.field public volatile running:Z

.field private sessions:Lcom/mwr/jdiesel/connection/AbstractSessionCollection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mwr/jdiesel/connection/AbstractLink;->running:Z

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mwr/jdiesel/connection/AbstractLink;->connection:Lcom/mwr/jdiesel/connection/AbstractConnection;

    .line 6
    return-void
.end method


# virtual methods
.method public checkForLiveness()Z
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract createConnection(Lcom/mwr/jdiesel/api/transport/Transport;)V
.end method

.method protected createSession()Lcom/mwr/jdiesel/connection/AbstractSession;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/mwr/jdiesel/connection/AbstractLink;->sessions:Lcom/mwr/jdiesel/connection/AbstractSessionCollection;

    invoke-virtual {v0}, Lcom/mwr/jdiesel/connection/AbstractSessionCollection;->create()Lcom/mwr/jdiesel/connection/AbstractSession;

    move-result-object v0

    return-object v0
.end method

.method public dieWithLastSession()Z
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public getSession(Ljava/lang/String;)Lcom/mwr/jdiesel/connection/AbstractSession;
    .locals 1
    .param p1, "session_id"    # Ljava/lang/String;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/mwr/jdiesel/connection/AbstractLink;->sessions:Lcom/mwr/jdiesel/connection/AbstractSessionCollection;

    invoke-virtual {v0, p1}, Lcom/mwr/jdiesel/connection/AbstractSessionCollection;->get(Ljava/lang/String;)Lcom/mwr/jdiesel/connection/AbstractSession;

    move-result-object v0

    return-object v0
.end method

.method public hasSessions()Z
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/mwr/jdiesel/connection/AbstractLink;->sessions:Lcom/mwr/jdiesel/connection/AbstractSessionCollection;

    invoke-virtual {v0}, Lcom/mwr/jdiesel/connection/AbstractSessionCollection;->any()Z

    move-result v0

    return v0
.end method

.method public lastSessionStopped()V
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/mwr/jdiesel/connection/AbstractLink;->dieWithLastSession()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/mwr/jdiesel/connection/AbstractLink;->stopConnection()V

    .line 34
    :cond_0
    return-void
.end method

.method public mustBind()Z
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x1

    return v0
.end method

.method public resetConnection()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mwr/jdiesel/connection/AbstractLink;->connection:Lcom/mwr/jdiesel/connection/AbstractConnection;

    .line 48
    return-void
.end method

.method public send(Lcom/mwr/jdiesel/api/Protobuf$Message;)V
    .locals 1
    .param p1, "message"    # Lcom/mwr/jdiesel/api/Protobuf$Message;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/mwr/jdiesel/connection/AbstractLink;->connection:Lcom/mwr/jdiesel/connection/AbstractConnection;

    invoke-virtual {v0, p1}, Lcom/mwr/jdiesel/connection/AbstractConnection;->send(Lcom/mwr/jdiesel/api/Protobuf$Message;)V

    .line 38
    return-void
.end method

.method protected setSessionCollection(Lcom/mwr/jdiesel/connection/AbstractSessionCollection;)V
    .locals 0
    .param p1, "sessions"    # Lcom/mwr/jdiesel/connection/AbstractSessionCollection;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/mwr/jdiesel/connection/AbstractLink;->sessions:Lcom/mwr/jdiesel/connection/AbstractSessionCollection;

    .line 52
    return-void
.end method

.method public startSession()Lcom/mwr/jdiesel/connection/AbstractSession;
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/connection/AbstractLink;->startSession(Ljava/lang/String;)Lcom/mwr/jdiesel/connection/AbstractSession;

    move-result-object v0

    return-object v0
.end method

.method public abstract startSession(Ljava/lang/String;)Lcom/mwr/jdiesel/connection/AbstractSession;
.end method

.method protected stopConnection()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mwr/jdiesel/connection/AbstractLink;->connection:Lcom/mwr/jdiesel/connection/AbstractConnection;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/mwr/jdiesel/connection/AbstractLink;->connection:Lcom/mwr/jdiesel/connection/AbstractConnection;

    invoke-virtual {v0}, Lcom/mwr/jdiesel/connection/AbstractConnection;->stopConnection()V

    .line 57
    :cond_0
    return-void
.end method

.method public stopConnector()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mwr/jdiesel/connection/AbstractLink;->running:Z

    .line 62
    invoke-virtual {p0}, Lcom/mwr/jdiesel/connection/AbstractLink;->stopConnection()V

    .line 63
    return-void
.end method

.method public stopSession(Ljava/lang/String;)Lcom/mwr/jdiesel/connection/AbstractSession;
    .locals 1
    .param p1, "session_id"    # Ljava/lang/String;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mwr/jdiesel/connection/AbstractLink;->sessions:Lcom/mwr/jdiesel/connection/AbstractSessionCollection;

    invoke-virtual {v0, p1}, Lcom/mwr/jdiesel/connection/AbstractSessionCollection;->stop(Ljava/lang/String;)Lcom/mwr/jdiesel/connection/AbstractSession;

    move-result-object v0

    return-object v0
.end method

.method public stopSessions()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/mwr/jdiesel/connection/AbstractLink;->sessions:Lcom/mwr/jdiesel/connection/AbstractSessionCollection;

    invoke-virtual {v0}, Lcom/mwr/jdiesel/connection/AbstractSessionCollection;->stopAll()V

    .line 71
    return-void
.end method
