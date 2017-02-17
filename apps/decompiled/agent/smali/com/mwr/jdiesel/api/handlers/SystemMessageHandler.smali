.class public Lcom/mwr/jdiesel/api/handlers/SystemMessageHandler;
.super Ljava/lang/Object;
.source "SystemMessageHandler.java"

# interfaces
.implements Lcom/mwr/jdiesel/api/handlers/MessageHandler;


# static fields
.field private static synthetic $SWITCH_TABLE$com$mwr$jdiesel$api$Protobuf$Message$SystemRequest$RequestType:[I


# instance fields
.field private connection:Lcom/mwr/jdiesel/api/connectors/Connection;

.field private device_info:Lcom/mwr/jdiesel/api/DeviceInfo;


# direct methods
.method static synthetic $SWITCH_TABLE$com$mwr$jdiesel$api$Protobuf$Message$SystemRequest$RequestType()[I
    .locals 3

    .prologue
    .line 11
    sget-object v0, Lcom/mwr/jdiesel/api/handlers/SystemMessageHandler;->$SWITCH_TABLE$com$mwr$jdiesel$api$Protobuf$Message$SystemRequest$RequestType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;->values()[Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;->BIND_DEVICE:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_1
    :try_start_1
    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;->LIST_DEVICES:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_2
    :try_start_2
    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;->LIST_SESSIONS:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_3
    :try_start_3
    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;->PING:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_4
    :try_start_4
    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;->RESTART_SESSION:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_5
    :try_start_5
    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;->START_SESSION:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_6
    :try_start_6
    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;->STOP_SESSION:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_7
    :try_start_7
    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;->UNBIND_DEVICE:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_8
    sput-object v0, Lcom/mwr/jdiesel/api/handlers/SystemMessageHandler;->$SWITCH_TABLE$com$mwr$jdiesel$api$Protobuf$Message$SystemRequest$RequestType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_8

    :catch_1
    move-exception v1

    goto :goto_7

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Lcom/mwr/jdiesel/api/connectors/Connection;Lcom/mwr/jdiesel/api/DeviceInfo;)V
    .locals 1
    .param p1, "connection"    # Lcom/mwr/jdiesel/api/connectors/Connection;
    .param p2, "device_info"    # Lcom/mwr/jdiesel/api/DeviceInfo;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/handlers/SystemMessageHandler;->connection:Lcom/mwr/jdiesel/api/connectors/Connection;

    .line 17
    iput-object p1, p0, Lcom/mwr/jdiesel/api/handlers/SystemMessageHandler;->connection:Lcom/mwr/jdiesel/api/connectors/Connection;

    .line 18
    iput-object p2, p0, Lcom/mwr/jdiesel/api/handlers/SystemMessageHandler;->device_info:Lcom/mwr/jdiesel/api/DeviceInfo;

    .line 19
    return-void
.end method


# virtual methods
.method public handle(Lcom/mwr/jdiesel/api/Protobuf$Message;)Lcom/mwr/jdiesel/api/Protobuf$Message;
    .locals 2
    .param p1, "message"    # Lcom/mwr/jdiesel/api/Protobuf$Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mwr/jdiesel/api/InvalidMessageException;
        }
    .end annotation

    .prologue
    .line 23
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message;->getType()Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;

    move-result-object v0

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;->SYSTEM_REQUEST:Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;

    if-eq v0, v1, :cond_0

    .line 24
    new-instance v0, Lcom/mwr/jdiesel/api/InvalidMessageException;

    invoke-direct {v0, p1}, Lcom/mwr/jdiesel/api/InvalidMessageException;-><init>(Lcom/mwr/jdiesel/api/Protobuf$Message;)V

    throw v0

    .line 25
    :cond_0
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message;->hasSystemRequest()Z

    move-result v0

    if-nez v0, :cond_1

    .line 26
    new-instance v0, Lcom/mwr/jdiesel/api/InvalidMessageException;

    invoke-direct {v0, p1}, Lcom/mwr/jdiesel/api/InvalidMessageException;-><init>(Lcom/mwr/jdiesel/api/Protobuf$Message;)V

    throw v0

    .line 28
    :cond_1
    invoke-static {}, Lcom/mwr/jdiesel/api/handlers/SystemMessageHandler;->$SWITCH_TABLE$com$mwr$jdiesel$api$Protobuf$Message$SystemRequest$RequestType()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message;->getSystemRequest()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->getType()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 45
    :pswitch_0
    new-instance v0, Lcom/mwr/jdiesel/api/InvalidMessageException;

    invoke-direct {v0, p1}, Lcom/mwr/jdiesel/api/InvalidMessageException;-><init>(Lcom/mwr/jdiesel/api/Protobuf$Message;)V

    throw v0

    .line 30
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/handlers/SystemMessageHandler;->handleListDevices(Lcom/mwr/jdiesel/api/Protobuf$Message;)Lcom/mwr/jdiesel/api/Protobuf$Message;

    move-result-object v0

    .line 42
    :goto_0
    return-object v0

    .line 33
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/handlers/SystemMessageHandler;->handleListSessions(Lcom/mwr/jdiesel/api/Protobuf$Message;)Lcom/mwr/jdiesel/api/Protobuf$Message;

    move-result-object v0

    goto :goto_0

    .line 36
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/handlers/SystemMessageHandler;->handlePing(Lcom/mwr/jdiesel/api/Protobuf$Message;)Lcom/mwr/jdiesel/api/Protobuf$Message;

    move-result-object v0

    goto :goto_0

    .line 39
    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/handlers/SystemMessageHandler;->startSession(Lcom/mwr/jdiesel/api/Protobuf$Message;)Lcom/mwr/jdiesel/api/Protobuf$Message;

    move-result-object v0

    goto :goto_0

    .line 42
    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/handlers/SystemMessageHandler;->stopSession(Lcom/mwr/jdiesel/api/Protobuf$Message;)Lcom/mwr/jdiesel/api/Protobuf$Message;

    move-result-object v0

    goto :goto_0

    .line 28
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected handleListDevices(Lcom/mwr/jdiesel/api/Protobuf$Message;)Lcom/mwr/jdiesel/api/Protobuf$Message;
    .locals 6
    .param p1, "message"    # Lcom/mwr/jdiesel/api/Protobuf$Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mwr/jdiesel/api/InvalidMessageException;
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Lcom/mwr/jdiesel/api/builders/MessageFactory;

    invoke-static {p1}, Lcom/mwr/jdiesel/api/builders/SystemResponseFactory;->deviceList(Lcom/mwr/jdiesel/api/Protobuf$Message;)Lcom/mwr/jdiesel/api/builders/SystemResponseFactory;

    move-result-object v1

    .line 51
    iget-object v2, p0, Lcom/mwr/jdiesel/api/handlers/SystemMessageHandler;->device_info:Lcom/mwr/jdiesel/api/DeviceInfo;

    invoke-virtual {v2}, Lcom/mwr/jdiesel/api/DeviceInfo;->getAndroidID()Ljava/lang/String;

    move-result-object v2

    .line 52
    iget-object v3, p0, Lcom/mwr/jdiesel/api/handlers/SystemMessageHandler;->device_info:Lcom/mwr/jdiesel/api/DeviceInfo;

    invoke-virtual {v3}, Lcom/mwr/jdiesel/api/DeviceInfo;->getManufacturer()Ljava/lang/String;

    move-result-object v3

    .line 53
    iget-object v4, p0, Lcom/mwr/jdiesel/api/handlers/SystemMessageHandler;->device_info:Lcom/mwr/jdiesel/api/DeviceInfo;

    invoke-virtual {v4}, Lcom/mwr/jdiesel/api/DeviceInfo;->getModel()Ljava/lang/String;

    move-result-object v4

    .line 54
    iget-object v5, p0, Lcom/mwr/jdiesel/api/handlers/SystemMessageHandler;->device_info:Lcom/mwr/jdiesel/api/DeviceInfo;

    invoke-virtual {v5}, Lcom/mwr/jdiesel/api/DeviceInfo;->getSoftware()Ljava/lang/String;

    move-result-object v5

    .line 50
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/mwr/jdiesel/api/builders/SystemResponseFactory;->addDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mwr/jdiesel/api/builders/SystemResponseFactory;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mwr/jdiesel/api/builders/MessageFactory;-><init>(Lcom/mwr/jdiesel/api/builders/SystemResponseFactory;)V

    .line 56
    .local v0, "factory":Lcom/mwr/jdiesel/api/builders/MessageFactory;
    invoke-virtual {v0, p1}, Lcom/mwr/jdiesel/api/builders/MessageFactory;->inReplyTo(Lcom/mwr/jdiesel/api/Protobuf$Message;)Lcom/mwr/jdiesel/api/builders/MessageFactory;

    .line 58
    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/builders/MessageFactory;->build()Lcom/mwr/jdiesel/api/Protobuf$Message;

    move-result-object v1

    return-object v1
.end method

.method protected handleListSessions(Lcom/mwr/jdiesel/api/Protobuf$Message;)Lcom/mwr/jdiesel/api/Protobuf$Message;
    .locals 3
    .param p1, "message"    # Lcom/mwr/jdiesel/api/Protobuf$Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mwr/jdiesel/api/InvalidMessageException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-static {p1}, Lcom/mwr/jdiesel/api/builders/SystemResponseFactory;->sessionList(Lcom/mwr/jdiesel/api/Protobuf$Message;)Lcom/mwr/jdiesel/api/builders/SystemResponseFactory;

    move-result-object v1

    .line 67
    .local v1, "response":Lcom/mwr/jdiesel/api/builders/SystemResponseFactory;
    new-instance v0, Lcom/mwr/jdiesel/api/builders/MessageFactory;

    invoke-direct {v0, v1}, Lcom/mwr/jdiesel/api/builders/MessageFactory;-><init>(Lcom/mwr/jdiesel/api/builders/SystemResponseFactory;)V

    .line 69
    .local v0, "factory":Lcom/mwr/jdiesel/api/builders/MessageFactory;
    invoke-virtual {v0, p1}, Lcom/mwr/jdiesel/api/builders/MessageFactory;->inReplyTo(Lcom/mwr/jdiesel/api/Protobuf$Message;)Lcom/mwr/jdiesel/api/builders/MessageFactory;

    .line 71
    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/builders/MessageFactory;->build()Lcom/mwr/jdiesel/api/Protobuf$Message;

    move-result-object v2

    return-object v2
.end method

.method protected handlePing(Lcom/mwr/jdiesel/api/Protobuf$Message;)Lcom/mwr/jdiesel/api/Protobuf$Message;
    .locals 2
    .param p1, "message"    # Lcom/mwr/jdiesel/api/Protobuf$Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mwr/jdiesel/api/InvalidMessageException;
        }
    .end annotation

    .prologue
    .line 75
    new-instance v0, Lcom/mwr/jdiesel/api/builders/MessageFactory;

    invoke-static {p1}, Lcom/mwr/jdiesel/api/builders/SystemResponseFactory;->pong(Lcom/mwr/jdiesel/api/Protobuf$Message;)Lcom/mwr/jdiesel/api/builders/SystemResponseFactory;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mwr/jdiesel/api/builders/MessageFactory;-><init>(Lcom/mwr/jdiesel/api/builders/SystemResponseFactory;)V

    .line 77
    .local v0, "factory":Lcom/mwr/jdiesel/api/builders/MessageFactory;
    invoke-virtual {v0, p1}, Lcom/mwr/jdiesel/api/builders/MessageFactory;->inReplyTo(Lcom/mwr/jdiesel/api/Protobuf$Message;)Lcom/mwr/jdiesel/api/builders/MessageFactory;

    .line 79
    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/builders/MessageFactory;->build()Lcom/mwr/jdiesel/api/Protobuf$Message;

    move-result-object v1

    return-object v1
.end method

.method protected startSession(Lcom/mwr/jdiesel/api/Protobuf$Message;)Lcom/mwr/jdiesel/api/Protobuf$Message;
    .locals 4
    .param p1, "message"    # Lcom/mwr/jdiesel/api/Protobuf$Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mwr/jdiesel/api/InvalidMessageException;
        }
    .end annotation

    .prologue
    .line 83
    iget-object v2, p0, Lcom/mwr/jdiesel/api/handlers/SystemMessageHandler;->connection:Lcom/mwr/jdiesel/api/connectors/Connection;

    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message;->getSystemRequest()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mwr/jdiesel/api/connectors/Connection;->startSession(Ljava/lang/String;)Lcom/mwr/jdiesel/connection/AbstractSession;

    move-result-object v1

    check-cast v1, Lcom/mwr/jdiesel/api/sessions/Session;

    .line 85
    .local v1, "session":Lcom/mwr/jdiesel/api/sessions/Session;
    if-eqz v1, :cond_0

    .line 86
    new-instance v0, Lcom/mwr/jdiesel/api/builders/MessageFactory;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/sessions/Session;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mwr/jdiesel/api/builders/SystemResponseFactory;->session(Ljava/lang/String;)Lcom/mwr/jdiesel/api/builders/SystemResponseFactory;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/mwr/jdiesel/api/builders/MessageFactory;-><init>(Lcom/mwr/jdiesel/api/builders/SystemResponseFactory;)V

    .line 88
    .local v0, "factory":Lcom/mwr/jdiesel/api/builders/MessageFactory;
    invoke-virtual {v0, p1}, Lcom/mwr/jdiesel/api/builders/MessageFactory;->inReplyTo(Lcom/mwr/jdiesel/api/Protobuf$Message;)Lcom/mwr/jdiesel/api/builders/MessageFactory;

    .line 90
    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/builders/MessageFactory;->build()Lcom/mwr/jdiesel/api/Protobuf$Message;

    move-result-object v2

    .line 97
    :goto_0
    return-object v2

    .line 93
    .end local v0    # "factory":Lcom/mwr/jdiesel/api/builders/MessageFactory;
    :cond_0
    new-instance v0, Lcom/mwr/jdiesel/api/builders/MessageFactory;

    invoke-static {}, Lcom/mwr/jdiesel/api/sessions/Session;->nullSession()Lcom/mwr/jdiesel/api/sessions/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mwr/jdiesel/api/sessions/Session;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mwr/jdiesel/api/builders/SystemResponseFactory;->session(Ljava/lang/String;)Lcom/mwr/jdiesel/api/builders/SystemResponseFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mwr/jdiesel/api/builders/SystemResponseFactory;->isError()Lcom/mwr/jdiesel/api/builders/SystemResponseFactory;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/mwr/jdiesel/api/builders/MessageFactory;-><init>(Lcom/mwr/jdiesel/api/builders/SystemResponseFactory;)V

    .line 95
    .restart local v0    # "factory":Lcom/mwr/jdiesel/api/builders/MessageFactory;
    invoke-virtual {v0, p1}, Lcom/mwr/jdiesel/api/builders/MessageFactory;->inReplyTo(Lcom/mwr/jdiesel/api/Protobuf$Message;)Lcom/mwr/jdiesel/api/builders/MessageFactory;

    .line 97
    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/builders/MessageFactory;->build()Lcom/mwr/jdiesel/api/Protobuf$Message;

    move-result-object v2

    goto :goto_0
.end method

.method protected stopSession(Lcom/mwr/jdiesel/api/Protobuf$Message;)Lcom/mwr/jdiesel/api/Protobuf$Message;
    .locals 4
    .param p1, "message"    # Lcom/mwr/jdiesel/api/Protobuf$Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mwr/jdiesel/api/InvalidMessageException;
        }
    .end annotation

    .prologue
    .line 102
    iget-object v2, p0, Lcom/mwr/jdiesel/api/handlers/SystemMessageHandler;->connection:Lcom/mwr/jdiesel/api/connectors/Connection;

    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message;->getSystemRequest()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->getSessionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mwr/jdiesel/api/connectors/Connection;->stopSession(Ljava/lang/String;)Lcom/mwr/jdiesel/connection/AbstractSession;

    move-result-object v1

    check-cast v1, Lcom/mwr/jdiesel/api/sessions/Session;

    .line 104
    .local v1, "session":Lcom/mwr/jdiesel/api/sessions/Session;
    if-eqz v1, :cond_0

    .line 105
    new-instance v0, Lcom/mwr/jdiesel/api/builders/MessageFactory;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/sessions/Session;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mwr/jdiesel/api/builders/SystemResponseFactory;->session(Ljava/lang/String;)Lcom/mwr/jdiesel/api/builders/SystemResponseFactory;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/mwr/jdiesel/api/builders/MessageFactory;-><init>(Lcom/mwr/jdiesel/api/builders/SystemResponseFactory;)V

    .line 107
    .local v0, "factory":Lcom/mwr/jdiesel/api/builders/MessageFactory;
    invoke-virtual {v0, p1}, Lcom/mwr/jdiesel/api/builders/MessageFactory;->inReplyTo(Lcom/mwr/jdiesel/api/Protobuf$Message;)Lcom/mwr/jdiesel/api/builders/MessageFactory;

    .line 109
    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/builders/MessageFactory;->build()Lcom/mwr/jdiesel/api/Protobuf$Message;

    move-result-object v2

    .line 116
    :goto_0
    return-object v2

    .line 112
    .end local v0    # "factory":Lcom/mwr/jdiesel/api/builders/MessageFactory;
    :cond_0
    new-instance v0, Lcom/mwr/jdiesel/api/builders/MessageFactory;

    invoke-static {}, Lcom/mwr/jdiesel/api/sessions/Session;->nullSession()Lcom/mwr/jdiesel/api/sessions/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mwr/jdiesel/api/sessions/Session;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mwr/jdiesel/api/builders/SystemResponseFactory;->session(Ljava/lang/String;)Lcom/mwr/jdiesel/api/builders/SystemResponseFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mwr/jdiesel/api/builders/SystemResponseFactory;->isError()Lcom/mwr/jdiesel/api/builders/SystemResponseFactory;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/mwr/jdiesel/api/builders/MessageFactory;-><init>(Lcom/mwr/jdiesel/api/builders/SystemResponseFactory;)V

    .line 114
    .restart local v0    # "factory":Lcom/mwr/jdiesel/api/builders/MessageFactory;
    invoke-virtual {v0, p1}, Lcom/mwr/jdiesel/api/builders/MessageFactory;->inReplyTo(Lcom/mwr/jdiesel/api/Protobuf$Message;)Lcom/mwr/jdiesel/api/builders/MessageFactory;

    .line 116
    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/builders/MessageFactory;->build()Lcom/mwr/jdiesel/api/Protobuf$Message;

    move-result-object v2

    goto :goto_0
.end method
