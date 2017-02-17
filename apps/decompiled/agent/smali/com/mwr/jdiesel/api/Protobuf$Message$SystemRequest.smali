.class public final Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Protobuf.java"

# interfaces
.implements Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mwr/jdiesel/api/Protobuf$Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SystemRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;,
        Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;
    }
.end annotation


# static fields
.field public static final AGENT_FIELD_NUMBER:I = 0x6

.field public static final DEVICE_FIELD_NUMBER:I = 0x5

.field public static final PASSWORD_FIELD_NUMBER:I = 0x8

.field public static final SESSION_ID_FIELD_NUMBER:I = 0x7

.field public static final TYPE_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

.field private static final serialVersionUID:J


# instance fields
.field private agent_:Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

.field private bitField0_:I

.field private device_:Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private password_:Ljava/lang/Object;

.field private sessionId_:Ljava/lang/Object;

.field private type_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 6793
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;-><init>(Z)V

    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    .line 6794
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    invoke-direct {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->initFields()V

    .line 6795
    return-void
.end method

.method private constructor <init>(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;

    .prologue
    const/4 v0, -0x1

    .line 5890
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 6108
    iput-byte v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->memoizedIsInitialized:B

    .line 6154
    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->memoizedSerializedSize:I

    .line 5891
    return-void
.end method

.method synthetic constructor <init>(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;)V
    .locals 0

    .prologue
    .line 5889
    invoke-direct {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;-><init>(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 5892
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 6108
    iput-byte v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->memoizedIsInitialized:B

    .line 6154
    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->memoizedSerializedSize:I

    .line 5892
    return-void
.end method

.method static synthetic access$10(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;Lcom/mwr/jdiesel/api/Protobuf$Message$Device;)V
    .locals 0

    .prologue
    .line 6013
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->device_:Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    return-void
.end method

.method static synthetic access$11(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;)V
    .locals 0

    .prologue
    .line 6026
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->agent_:Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    return-void
.end method

.method static synthetic access$12(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 6039
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->sessionId_:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$13(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 6071
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->password_:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$14(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;I)V
    .locals 0

    .prologue
    .line 6000
    iput p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->bitField0_:I

    return-void
.end method

.method static synthetic access$7()Z
    .locals 1

    .prologue
    .line 5885
    sget-boolean v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$9(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;)V
    .locals 0

    .prologue
    .line 6003
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    return-void
.end method

.method public static getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;
    .locals 1

    .prologue
    .line 5896
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5905
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_SystemRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$29()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getPasswordBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 6090
    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->password_:Ljava/lang/Object;

    .line 6091
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 6093
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6094
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->password_:Ljava/lang/Object;

    .line 6097
    .end local v0    # "b":Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1    # "ref":Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method private getSessionIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 6058
    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->sessionId_:Ljava/lang/Object;

    .line 6059
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 6061
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6062
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->sessionId_:Ljava/lang/Object;

    .line 6065
    .end local v0    # "b":Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1    # "ref":Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 6102
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;->PING:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    .line 6103
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->device_:Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    .line 6104
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->agent_:Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    .line 6105
    const-string v0, ""

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->sessionId_:Ljava/lang/Object;

    .line 6106
    const-string v0, ""

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->password_:Ljava/lang/Object;

    .line 6107
    return-void
.end method

.method public static newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;
    .locals 1

    .prologue
    .line 6259
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->create()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->access$18()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    .prologue
    .line 6262
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6228
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;

    move-result-object v0

    .line 6229
    .local v0, "builder":Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;
    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6230
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    move-result-object v1

    .line 6232
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6239
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;

    move-result-object v0

    .line 6240
    .local v0, "builder":Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6241
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    move-result-object v1

    .line 6243
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6195
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;

    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6201
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;

    .line 6202
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    move-result-object v0

    .line 6201
    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6249
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;

    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6255
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;

    move-result-object v0

    .line 6256
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    move-result-object v0

    .line 6255
    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6217
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;

    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6223
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;

    .line 6224
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    move-result-object v0

    .line 6223
    return-object v0
.end method

.method public static parseFrom([B)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6206
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;

    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6212
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;

    .line 6213
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    move-result-object v0

    .line 6212
    return-object v0
.end method


# virtual methods
.method public getAgent()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;
    .locals 1

    .prologue
    .line 6031
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->agent_:Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    return-object v0
.end method

.method public getAgentOrBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$AgentOrBuilder;
    .locals 1

    .prologue
    .line 6034
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->agent_:Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;
    .locals 1

    .prologue
    .line 5900
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    return-object v0
.end method

.method public getDevice()Lcom/mwr/jdiesel/api/Protobuf$Message$Device;
    .locals 1

    .prologue
    .line 6018
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->device_:Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    return-object v0
.end method

.method public getDeviceOrBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$DeviceOrBuilder;
    .locals 1

    .prologue
    .line 6021
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->device_:Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 4

    .prologue
    .line 6076
    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->password_:Ljava/lang/Object;

    .line 6077
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 6078
    check-cast v1, Ljava/lang/String;

    .line 6086
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 6081
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 6082
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 6083
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6084
    iput-object v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->password_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 6086
    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    .line 6156
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->memoizedSerializedSize:I

    .line 6157
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 6182
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 6159
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 6160
    iget v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 6162
    iget-object v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    invoke-virtual {v2}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 6164
    :cond_1
    iget v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 6166
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->device_:Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 6168
    :cond_2
    iget v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 6170
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->agent_:Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 6172
    :cond_3
    iget v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v4, :cond_4

    .line 6174
    const/4 v2, 0x7

    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->getSessionIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 6176
    :cond_4
    iget v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 6178
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->getPasswordBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 6180
    :cond_5
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 6181
    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 6182
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 6044
    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->sessionId_:Ljava/lang/Object;

    .line 6045
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 6046
    check-cast v1, Ljava/lang/String;

    .line 6054
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 6049
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 6050
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 6051
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6052
    iput-object v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->sessionId_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 6054
    goto :goto_0
.end method

.method public getType()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;
    .locals 1

    .prologue
    .line 6008
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    return-object v0
.end method

.method public hasAgent()Z
    .locals 2

    .prologue
    .line 6028
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDevice()Z
    .locals 2

    .prologue
    .line 6015
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPassword()Z
    .locals 2

    .prologue
    .line 6073
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSessionId()Z
    .locals 2

    .prologue
    .line 6041
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasType()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 6005
    iget v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5910
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_SystemRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$63()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 6110
    iget-byte v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->memoizedIsInitialized:B

    .line 6111
    .local v0, "isInitialized":B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    .line 6130
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 6111
    goto :goto_0

    .line 6113
    :cond_1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->hasType()Z

    move-result v3

    if-nez v3, :cond_2

    .line 6114
    iput-byte v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->memoizedIsInitialized:B

    move v1, v2

    .line 6115
    goto :goto_0

    .line 6117
    :cond_2
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->hasDevice()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6118
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->getDevice()Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_3

    .line 6119
    iput-byte v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->memoizedIsInitialized:B

    move v1, v2

    .line 6120
    goto :goto_0

    .line 6123
    :cond_3
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->hasAgent()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 6124
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->getAgent()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_4

    .line 6125
    iput-byte v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->memoizedIsInitialized:B

    move v1, v2

    .line 6126
    goto :goto_0

    .line 6129
    :cond_4
    iput-byte v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->newBuilderForType()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->newBuilderForType()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;
    .locals 1

    .prologue
    .line 6260
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 6269
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;)V

    .line 6270
    .local v0, "builder":Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->toBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->toBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;
    .locals 1

    .prologue
    .line 6264
    invoke-static {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->newBuilder(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 6189
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x1

    .line 6135
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->getSerializedSize()I

    .line 6136
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 6137
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 6139
    :cond_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 6140
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->device_:Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 6142
    :cond_1
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 6143
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->agent_:Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 6145
    :cond_2
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v2, :cond_3

    .line 6146
    const/4 v0, 0x7

    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->getSessionIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 6148
    :cond_3
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 6149
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->getPasswordBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 6151
    :cond_4
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 6152
    return-void
.end method
