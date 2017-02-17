.class public Lcom/mwr/jdiesel/api/builders/MessageFactory;
.super Ljava/lang/Object;
.source "MessageFactory.java"


# instance fields
.field builder:Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;


# direct methods
.method public constructor <init>(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;)V
    .locals 2
    .param p1, "reflection_request"    # Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/builders/MessageFactory;->builder:Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    .line 14
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/builders/MessageFactory;->builder:Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    .line 16
    iget-object v0, p0, Lcom/mwr/jdiesel/api/builders/MessageFactory;->builder:Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;->REFLECTION_REQUEST:Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;

    invoke-virtual {v0, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->setType(Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;)Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    .line 17
    iget-object v0, p0, Lcom/mwr/jdiesel/api/builders/MessageFactory;->builder:Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    invoke-virtual {v0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->setReflectionRequest(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;)Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;)V
    .locals 2
    .param p1, "reflection_response"    # Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/builders/MessageFactory;->builder:Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    .line 21
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/builders/MessageFactory;->builder:Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    .line 23
    iget-object v0, p0, Lcom/mwr/jdiesel/api/builders/MessageFactory;->builder:Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;->REFLECTION_RESPONSE:Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;

    invoke-virtual {v0, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->setType(Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;)Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    .line 24
    iget-object v0, p0, Lcom/mwr/jdiesel/api/builders/MessageFactory;->builder:Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    invoke-virtual {v0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->setReflectionResponse(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;)Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;)V
    .locals 2
    .param p1, "system_request"    # Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/builders/MessageFactory;->builder:Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    .line 32
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/builders/MessageFactory;->builder:Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    .line 34
    iget-object v0, p0, Lcom/mwr/jdiesel/api/builders/MessageFactory;->builder:Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;->SYSTEM_REQUEST:Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;

    invoke-virtual {v0, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->setType(Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;)Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    .line 35
    iget-object v0, p0, Lcom/mwr/jdiesel/api/builders/MessageFactory;->builder:Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    invoke-virtual {v0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->setSystemRequest(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;)Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;)V
    .locals 2
    .param p1, "system_response"    # Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/builders/MessageFactory;->builder:Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    .line 43
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/builders/MessageFactory;->builder:Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    .line 45
    iget-object v0, p0, Lcom/mwr/jdiesel/api/builders/MessageFactory;->builder:Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;->SYSTEM_RESPONSE:Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;

    invoke-virtual {v0, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->setType(Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;)Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    .line 46
    iget-object v0, p0, Lcom/mwr/jdiesel/api/builders/MessageFactory;->builder:Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    invoke-virtual {v0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->setSystemResponse(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;)Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;)V
    .locals 1
    .param p1, "reflection_response"    # Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;

    .prologue
    .line 28
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mwr/jdiesel/api/builders/MessageFactory;-><init>(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/mwr/jdiesel/api/builders/SystemRequestFactory;)V
    .locals 1
    .param p1, "system_request"    # Lcom/mwr/jdiesel/api/builders/SystemRequestFactory;

    .prologue
    .line 39
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/builders/SystemRequestFactory;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mwr/jdiesel/api/builders/MessageFactory;-><init>(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/mwr/jdiesel/api/builders/SystemResponseFactory;)V
    .locals 1
    .param p1, "system_response"    # Lcom/mwr/jdiesel/api/builders/SystemResponseFactory;

    .prologue
    .line 50
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/builders/SystemResponseFactory;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mwr/jdiesel/api/builders/MessageFactory;-><init>(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;)V

    .line 51
    return-void
.end method


# virtual methods
.method public build()Lcom/mwr/jdiesel/api/Protobuf$Message;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mwr/jdiesel/api/builders/MessageFactory;->builder:Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message;

    move-result-object v0

    return-object v0
.end method

.method public inReplyTo(Lcom/mwr/jdiesel/api/Protobuf$Message;)Lcom/mwr/jdiesel/api/builders/MessageFactory;
    .locals 2
    .param p1, "message"    # Lcom/mwr/jdiesel/api/Protobuf$Message;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/mwr/jdiesel/api/builders/MessageFactory;->builder:Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->setId(I)Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    .line 60
    return-object p0
.end method

.method public setId(I)Lcom/mwr/jdiesel/api/builders/MessageFactory;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mwr/jdiesel/api/builders/MessageFactory;->builder:Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    invoke-virtual {v0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->setId(I)Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    .line 66
    return-object p0
.end method
