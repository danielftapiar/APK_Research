.class public Lcom/mwr/jdiesel/api/builders/SystemResponseFactory;
.super Ljava/lang/Object;
.source "SystemResponseFactory.java"


# instance fields
.field private builder:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;


# direct methods
.method private constructor <init>(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;)V
    .locals 1
    .param p1, "type"    # Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;
    .param p2, "status"    # Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/builders/SystemResponseFactory;->builder:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;

    .line 23
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->setType(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->setStatus(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/builders/SystemResponseFactory;->builder:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;

    .line 24
    return-void
.end method

.method public static deviceList(Lcom/mwr/jdiesel/api/Protobuf$Message;)Lcom/mwr/jdiesel/api/builders/SystemResponseFactory;
    .locals 3
    .param p0, "request"    # Lcom/mwr/jdiesel/api/Protobuf$Message;

    .prologue
    .line 11
    new-instance v0, Lcom/mwr/jdiesel/api/builders/SystemResponseFactory;

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;->DEVICE_LIST:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;

    sget-object v2, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;->SUCCESS:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;

    invoke-direct {v0, v1, v2}, Lcom/mwr/jdiesel/api/builders/SystemResponseFactory;-><init>(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;)V

    return-object v0
.end method

.method public static pong(Lcom/mwr/jdiesel/api/Protobuf$Message;)Lcom/mwr/jdiesel/api/builders/SystemResponseFactory;
    .locals 3
    .param p0, "ping"    # Lcom/mwr/jdiesel/api/Protobuf$Message;

    .prologue
    .line 15
    new-instance v0, Lcom/mwr/jdiesel/api/builders/SystemResponseFactory;

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;->PONG:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;

    sget-object v2, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;->SUCCESS:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;

    invoke-direct {v0, v1, v2}, Lcom/mwr/jdiesel/api/builders/SystemResponseFactory;-><init>(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;)V

    return-object v0
.end method

.method public static session(Ljava/lang/String;)Lcom/mwr/jdiesel/api/builders/SystemResponseFactory;
    .locals 3
    .param p0, "session_id"    # Ljava/lang/String;

    .prologue
    .line 19
    new-instance v0, Lcom/mwr/jdiesel/api/builders/SystemResponseFactory;

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;->SESSION_ID:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;

    sget-object v2, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;->SUCCESS:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;

    invoke-direct {v0, v1, v2}, Lcom/mwr/jdiesel/api/builders/SystemResponseFactory;-><init>(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;)V

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/builders/SystemResponseFactory;->setSessionId(Ljava/lang/String;)Lcom/mwr/jdiesel/api/builders/SystemResponseFactory;

    move-result-object v0

    return-object v0
.end method

.method public static sessionList(Lcom/mwr/jdiesel/api/Protobuf$Message;)Lcom/mwr/jdiesel/api/builders/SystemResponseFactory;
    .locals 3
    .param p0, "request"    # Lcom/mwr/jdiesel/api/Protobuf$Message;

    .prologue
    .line 53
    new-instance v0, Lcom/mwr/jdiesel/api/builders/SystemResponseFactory;

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;->SESSION_LIST:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;

    sget-object v2, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;->SUCCESS:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;

    invoke-direct {v0, v1, v2}, Lcom/mwr/jdiesel/api/builders/SystemResponseFactory;-><init>(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;)V

    return-object v0
.end method


# virtual methods
.method public addDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mwr/jdiesel/api/builders/SystemResponseFactory;
    .locals 2
    .param p1, "device_id"    # Ljava/lang/String;
    .param p2, "manufacturer"    # Ljava/lang/String;
    .param p3, "model"    # Ljava/lang/String;
    .param p4, "software"    # Ljava/lang/String;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/mwr/jdiesel/api/builders/SystemResponseFactory;->builder:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;

    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;

    move-result-object v1

    .line 28
    invoke-virtual {v1, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->setId(Ljava/lang/String;)Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;

    move-result-object v1

    .line 29
    invoke-virtual {v1, p2}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->setManufacturer(Ljava/lang/String;)Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;

    move-result-object v1

    .line 30
    invoke-virtual {v1, p3}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->setModel(Ljava/lang/String;)Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;

    move-result-object v1

    .line 31
    invoke-virtual {v1, p4}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->setSoftware(Ljava/lang/String;)Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;

    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->addDevices(Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;

    .line 33
    return-object p0
.end method

.method public build()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/mwr/jdiesel/api/builders/SystemResponseFactory;->builder:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;

    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    move-result-object v0

    return-object v0
.end method

.method public isError()Lcom/mwr/jdiesel/api/builders/SystemResponseFactory;
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mwr/jdiesel/api/builders/SystemResponseFactory;->builder:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;->ERROR:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;

    invoke-virtual {v0, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->setStatus(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;

    .line 43
    return-object p0
.end method

.method public isSuccess()Lcom/mwr/jdiesel/api/builders/SystemResponseFactory;
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/mwr/jdiesel/api/builders/SystemResponseFactory;->builder:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;->SUCCESS:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;

    invoke-virtual {v0, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->setStatus(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;

    .line 49
    return-object p0
.end method

.method public setSessionId(Ljava/lang/String;)Lcom/mwr/jdiesel/api/builders/SystemResponseFactory;
    .locals 1
    .param p1, "session_id"    # Ljava/lang/String;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/mwr/jdiesel/api/builders/SystemResponseFactory;->builder:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;

    invoke-virtual {v0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->setSessionId(Ljava/lang/String;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;

    .line 59
    return-object p0
.end method
