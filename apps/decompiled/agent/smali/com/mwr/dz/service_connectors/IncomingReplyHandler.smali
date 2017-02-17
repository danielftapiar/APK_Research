.class public Lcom/mwr/dz/service_connectors/IncomingReplyHandler;
.super Landroid/os/Handler;
.source "IncomingReplyHandler.java"


# instance fields
.field private final agent:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/mwr/dz/Agent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mwr/dz/Agent;)V
    .locals 1
    .param p1, "agent"    # Lcom/mwr/dz/Agent;

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 22
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mwr/dz/service_connectors/IncomingReplyHandler;->agent:Ljava/lang/ref/WeakReference;

    .line 23
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 27
    iget-object v4, p0, Lcom/mwr/dz/service_connectors/IncomingReplyHandler;->agent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mwr/dz/Agent;

    .line 28
    .local v0, "agent":Lcom/mwr/dz/Agent;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 30
    .local v1, "data":Landroid/os/Bundle;
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 58
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 32
    :sswitch_0
    invoke-virtual {v0}, Lcom/mwr/dz/Agent;->getEndpointManager()Lcom/mwr/dz/models/EndpointManager;

    move-result-object v4

    const-string v5, "endpoint:id"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/mwr/dz/models/EndpointManager;->get(I)Lcom/mwr/jdiesel/api/connectors/Endpoint;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->setDetailedStatus(Landroid/os/Bundle;)V

    goto :goto_0

    .line 36
    :sswitch_1
    invoke-virtual {v0}, Lcom/mwr/dz/Agent;->getEndpointManager()Lcom/mwr/dz/models/EndpointManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mwr/dz/models/EndpointManager;->all()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mwr/jdiesel/api/connectors/Endpoint;

    .line 37
    .local v2, "e":Lcom/mwr/jdiesel/api/connectors/Endpoint;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "endpoint-"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 38
    invoke-static {}, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->values()[Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "endpoint-"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v2, v5}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->setStatus(Lcom/mwr/jdiesel/api/connectors/Connector$Status;)V

    goto :goto_1

    .line 42
    .end local v2    # "e":Lcom/mwr/jdiesel/api/connectors/Endpoint;
    :sswitch_2
    invoke-virtual {v0}, Lcom/mwr/dz/Agent;->getServerParameters()Lcom/mwr/jdiesel/api/connectors/Server;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/mwr/jdiesel/api/connectors/Server;->setDetailedStatus(Landroid/os/Bundle;)V

    goto :goto_0

    .line 46
    :sswitch_3
    invoke-virtual {v0}, Lcom/mwr/dz/Agent;->getServerParameters()Lcom/mwr/jdiesel/api/connectors/Server;

    move-result-object v4

    invoke-static {}, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->values()[Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    move-result-object v5

    const-string v6, "server"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Lcom/mwr/jdiesel/api/connectors/Server;->setStatus(Lcom/mwr/jdiesel/api/connectors/Connector$Status;)V

    goto :goto_0

    .line 50
    :sswitch_4
    new-instance v3, Lcom/mwr/jdiesel/logger/LogMessage;

    const-string v4, "connector:logmessage"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/mwr/jdiesel/logger/LogMessage;-><init>(Landroid/os/Bundle;)V

    .line 51
    .local v3, "log_message":Lcom/mwr/jdiesel/logger/LogMessage;
    const-string v4, "endpoint:id"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 52
    invoke-virtual {v0}, Lcom/mwr/dz/Agent;->getEndpointManager()Lcom/mwr/dz/models/EndpointManager;

    move-result-object v4

    const-string v5, "endpoint:id"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/mwr/dz/models/EndpointManager;->get(I)Lcom/mwr/jdiesel/api/connectors/Endpoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->getLogger()Lcom/mwr/jdiesel/logger/Logger;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/mwr/jdiesel/logger/Logger;->log(Lcom/mwr/jdiesel/logger/LogMessage;)V

    goto/16 :goto_0

    .line 54
    :cond_2
    invoke-virtual {v0}, Lcom/mwr/dz/Agent;->getServerParameters()Lcom/mwr/jdiesel/api/connectors/Server;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mwr/jdiesel/api/connectors/Server;->getLogger()Lcom/mwr/jdiesel/logger/Logger;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/mwr/jdiesel/logger/Logger;->log(Lcom/mwr/jdiesel/logger/LogMessage;)V

    goto/16 :goto_0

    .line 30
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0xb -> :sswitch_0
        0xc -> :sswitch_1
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
    .end sparse-switch
.end method
