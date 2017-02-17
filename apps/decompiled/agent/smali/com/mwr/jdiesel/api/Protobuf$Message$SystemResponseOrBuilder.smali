.class public interface abstract Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponseOrBuilder;
.super Ljava/lang/Object;
.source "Protobuf.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mwr/jdiesel/api/Protobuf$Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SystemResponseOrBuilder"
.end annotation


# virtual methods
.method public abstract getAgent()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;
.end method

.method public abstract getAgentOrBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$AgentOrBuilder;
.end method

.method public abstract getDevices(I)Lcom/mwr/jdiesel/api/Protobuf$Message$Device;
.end method

.method public abstract getDevicesCount()I
.end method

.method public abstract getDevicesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$Device;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDevicesOrBuilder(I)Lcom/mwr/jdiesel/api/Protobuf$Message$DeviceOrBuilder;
.end method

.method public abstract getDevicesOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$DeviceOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getErrorMessage()Ljava/lang/String;
.end method

.method public abstract getSessionId()Ljava/lang/String;
.end method

.method public abstract getSessions(I)Lcom/mwr/jdiesel/api/Protobuf$Message$Session;
.end method

.method public abstract getSessionsCount()I
.end method

.method public abstract getSessionsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$Session;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSessionsOrBuilder(I)Lcom/mwr/jdiesel/api/Protobuf$Message$SessionOrBuilder;
.end method

.method public abstract getSessionsOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$SessionOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStatus()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;
.end method

.method public abstract getType()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;
.end method

.method public abstract hasAgent()Z
.end method

.method public abstract hasErrorMessage()Z
.end method

.method public abstract hasSessionId()Z
.end method

.method public abstract hasStatus()Z
.end method

.method public abstract hasType()Z
.end method
