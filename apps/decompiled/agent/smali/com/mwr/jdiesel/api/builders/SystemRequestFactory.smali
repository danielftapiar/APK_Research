.class public Lcom/mwr/jdiesel/api/builders/SystemRequestFactory;
.super Ljava/lang/Object;
.source "SystemRequestFactory.java"


# instance fields
.field private builder:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;


# direct methods
.method private constructor <init>(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;)V
    .locals 1
    .param p1, "type"    # Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/builders/SystemRequestFactory;->builder:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;

    .line 19
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->setType(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/builders/SystemRequestFactory;->builder:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;

    .line 20
    return-void
.end method

.method public static bind()Lcom/mwr/jdiesel/api/builders/SystemRequestFactory;
    .locals 2

    .prologue
    .line 11
    new-instance v0, Lcom/mwr/jdiesel/api/builders/SystemRequestFactory;

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;->BIND_DEVICE:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    invoke-direct {v0, v1}, Lcom/mwr/jdiesel/api/builders/SystemRequestFactory;-><init>(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;)V

    return-object v0
.end method

.method public static unbind()Lcom/mwr/jdiesel/api/builders/SystemRequestFactory;
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lcom/mwr/jdiesel/api/builders/SystemRequestFactory;

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;->UNBIND_DEVICE:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    invoke-direct {v0, v1}, Lcom/mwr/jdiesel/api/builders/SystemRequestFactory;-><init>(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;)V

    return-object v0
.end method


# virtual methods
.method public build()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/mwr/jdiesel/api/builders/SystemRequestFactory;->builder:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;

    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    move-result-object v0

    return-object v0
.end method

.method public setDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mwr/jdiesel/api/builders/SystemRequestFactory;
    .locals 2
    .param p1, "device_id"    # Ljava/lang/String;
    .param p2, "manufacturer"    # Ljava/lang/String;
    .param p3, "model"    # Ljava/lang/String;
    .param p4, "software"    # Ljava/lang/String;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/mwr/jdiesel/api/builders/SystemRequestFactory;->builder:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;

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
    invoke-virtual {v0, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->setDevice(Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;

    .line 33
    return-object p0
.end method
