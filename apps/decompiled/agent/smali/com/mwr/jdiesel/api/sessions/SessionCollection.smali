.class public Lcom/mwr/jdiesel/api/sessions/SessionCollection;
.super Lcom/mwr/jdiesel/connection/AbstractSessionCollection;
.source "SessionCollection.java"


# instance fields
.field private connector:Lcom/mwr/jdiesel/api/links/Link;


# direct methods
.method public constructor <init>(Lcom/mwr/jdiesel/api/links/Link;)V
    .locals 1
    .param p1, "connector"    # Lcom/mwr/jdiesel/api/links/Link;

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/mwr/jdiesel/connection/AbstractSessionCollection;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/sessions/SessionCollection;->connector:Lcom/mwr/jdiesel/api/links/Link;

    .line 14
    iput-object p1, p0, Lcom/mwr/jdiesel/api/sessions/SessionCollection;->connector:Lcom/mwr/jdiesel/api/links/Link;

    .line 18
    return-void
.end method


# virtual methods
.method public create()Lcom/mwr/jdiesel/api/sessions/Session;
    .locals 2

    .prologue
    .line 22
    new-instance v0, Lcom/mwr/jdiesel/api/sessions/Session;

    iget-object v1, p0, Lcom/mwr/jdiesel/api/sessions/SessionCollection;->connector:Lcom/mwr/jdiesel/api/links/Link;

    invoke-direct {v0, v1}, Lcom/mwr/jdiesel/api/sessions/Session;-><init>(Lcom/mwr/jdiesel/api/links/Link;)V

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/sessions/SessionCollection;->storeSession(Lcom/mwr/jdiesel/connection/AbstractSession;)Lcom/mwr/jdiesel/connection/AbstractSession;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/sessions/Session;

    return-object v0
.end method

.method public bridge synthetic create()Lcom/mwr/jdiesel/connection/AbstractSession;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/sessions/SessionCollection;->create()Lcom/mwr/jdiesel/api/sessions/Session;

    move-result-object v0

    return-object v0
.end method

.method public onSessionStarted(Lcom/mwr/jdiesel/connection/AbstractSession;)V
    .locals 2
    .param p1, "session"    # Lcom/mwr/jdiesel/connection/AbstractSession;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/mwr/jdiesel/api/sessions/SessionCollection;->connector:Lcom/mwr/jdiesel/api/links/Link;

    sget-object v1, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->ACTIVE:Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    invoke-virtual {v0, v1}, Lcom/mwr/jdiesel/api/links/Link;->setStatus(Lcom/mwr/jdiesel/api/connectors/Connector$Status;)V

    .line 34
    return-void
.end method

.method public onSessionStopped(Lcom/mwr/jdiesel/connection/AbstractSession;)V
    .locals 2
    .param p1, "session"    # Lcom/mwr/jdiesel/connection/AbstractSession;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mwr/jdiesel/api/sessions/SessionCollection;->connector:Lcom/mwr/jdiesel/api/links/Link;

    sget-object v1, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->ONLINE:Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    invoke-virtual {v0, v1}, Lcom/mwr/jdiesel/api/links/Link;->setStatus(Lcom/mwr/jdiesel/api/connectors/Connector$Status;)V

    .line 41
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/sessions/SessionCollection;->any()Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/mwr/jdiesel/api/sessions/SessionCollection;->connector:Lcom/mwr/jdiesel/api/links/Link;

    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/links/Link;->lastSessionStopped()V

    .line 43
    :cond_0
    return-void
.end method
