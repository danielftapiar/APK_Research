.class public final Lcom/mwr/jdiesel/api/Protobuf$Message;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Protobuf.java"

# interfaces
.implements Lcom/mwr/jdiesel/api/Protobuf$MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mwr/jdiesel/api/Protobuf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Message"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;,
        Lcom/mwr/jdiesel/api/Protobuf$Message$AgentOrBuilder;,
        Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;,
        Lcom/mwr/jdiesel/api/Protobuf$Message$ArgumentOrBuilder;,
        Lcom/mwr/jdiesel/api/Protobuf$Message$Array;,
        Lcom/mwr/jdiesel/api/Protobuf$Message$ArrayOrBuilder;,
        Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;,
        Lcom/mwr/jdiesel/api/Protobuf$Message$Device;,
        Lcom/mwr/jdiesel/api/Protobuf$Message$DeviceOrBuilder;,
        Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;,
        Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;,
        Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReferenceOrBuilder;,
        Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;,
        Lcom/mwr/jdiesel/api/Protobuf$Message$PrimitiveOrBuilder;,
        Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;,
        Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequestOrBuilder;,
        Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;,
        Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponseOrBuilder;,
        Lcom/mwr/jdiesel/api/Protobuf$Message$Session;,
        Lcom/mwr/jdiesel/api/Protobuf$Message$SessionOrBuilder;,
        Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;,
        Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequestOrBuilder;,
        Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;,
        Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponseOrBuilder;
    }
.end annotation


# static fields
.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final REFLECTION_REQUEST_FIELD_NUMBER:I = 0x7

.field public static final REFLECTION_RESPONSE_FIELD_NUMBER:I = 0x8

.field public static final SYSTEM_REQUEST_FIELD_NUMBER:I = 0x5

.field public static final SYSTEM_RESPONSE_FIELD_NUMBER:I = 0x6

.field public static final TYPE_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private id_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private reflectionRequest_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

.field private reflectionResponse_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

.field private systemRequest_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

.field private systemResponse_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

.field private type_:Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13919
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message;-><init>(Z)V

    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message;->defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message;

    .line 13920
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message;->defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message;

    invoke-direct {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message;->initFields()V

    .line 13921
    return-void
.end method

.method private constructor <init>(Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    .prologue
    const/4 v0, -0x1

    .line 47
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 13026
    iput-byte v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message;->memoizedIsInitialized:B

    .line 13091
    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message;->memoizedSerializedSize:I

    .line 48
    return-void
.end method

.method synthetic constructor <init>(Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;Lcom/mwr/jdiesel/api/Protobuf$Message;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message;-><init>(Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 49
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 13026
    iput-byte v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message;->memoizedIsInitialized:B

    .line 13091
    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message;->memoizedSerializedSize:I

    .line 49
    return-void
.end method

.method static synthetic access$10(Lcom/mwr/jdiesel/api/Protobuf$Message;Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;)V
    .locals 0

    .prologue
    .line 12958
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;

    return-void
.end method

.method static synthetic access$11(Lcom/mwr/jdiesel/api/Protobuf$Message;Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;)V
    .locals 0

    .prologue
    .line 12968
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message;->systemRequest_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    return-void
.end method

.method static synthetic access$12(Lcom/mwr/jdiesel/api/Protobuf$Message;Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;)V
    .locals 0

    .prologue
    .line 12981
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message;->systemResponse_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    return-void
.end method

.method static synthetic access$13(Lcom/mwr/jdiesel/api/Protobuf$Message;Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;)V
    .locals 0

    .prologue
    .line 12994
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message;->reflectionRequest_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    return-void
.end method

.method static synthetic access$14(Lcom/mwr/jdiesel/api/Protobuf$Message;Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;)V
    .locals 0

    .prologue
    .line 13007
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message;->reflectionResponse_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

    return-void
.end method

.method static synthetic access$15(Lcom/mwr/jdiesel/api/Protobuf$Message;I)V
    .locals 0

    .prologue
    .line 12945
    iput p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message;->bitField0_:I

    return-void
.end method

.method static synthetic access$7()Z
    .locals 1

    .prologue
    .line 42
    sget-boolean v0, Lcom/mwr/jdiesel/api/Protobuf$Message;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$9(Lcom/mwr/jdiesel/api/Protobuf$Message;I)V
    .locals 0

    .prologue
    .line 12948
    iput p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message;->id_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message;->defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 62
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$2()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 13019
    const/4 v0, 0x0

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message;->id_:I

    .line 13020
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;->SYSTEM_REQUEST:Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;

    .line 13021
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message;->systemRequest_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    .line 13022
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message;->systemResponse_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    .line 13023
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message;->reflectionRequest_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    .line 13024
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message;->reflectionResponse_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

    .line 13025
    return-void
.end method

.method public static newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;
    .locals 1

    .prologue
    .line 13200
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->create()Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->access$18()Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/mwr/jdiesel/api/Protobuf$Message;)Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/mwr/jdiesel/api/Protobuf$Message;

    .prologue
    .line 13203
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message;)Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/mwr/jdiesel/api/Protobuf$Message;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13169
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    move-result-object v0

    .line 13170
    .local v0, "builder":Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;
    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13171
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message;

    move-result-object v1

    .line 13173
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13180
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    move-result-object v0

    .line 13181
    .local v0, "builder":Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13182
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message;

    move-result-object v1

    .line 13184
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/mwr/jdiesel/api/Protobuf$Message;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13136
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13142
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    .line 13143
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message;

    move-result-object v0

    .line 13142
    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/mwr/jdiesel/api/Protobuf$Message;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13190
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13196
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    move-result-object v0

    .line 13197
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message;

    move-result-object v0

    .line 13196
    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/mwr/jdiesel/api/Protobuf$Message;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13158
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13164
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    .line 13165
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message;

    move-result-object v0

    .line 13164
    return-object v0
.end method

.method public static parseFrom([B)Lcom/mwr/jdiesel/api/Protobuf$Message;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13147
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13153
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    .line 13154
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message;

    move-result-object v0

    .line 13153
    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message;->getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message;->getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message;->defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 12953
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message;->id_:I

    return v0
.end method

.method public getReflectionRequest()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;
    .locals 1

    .prologue
    .line 12999
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message;->reflectionRequest_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    return-object v0
.end method

.method public getReflectionRequestOrBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequestOrBuilder;
    .locals 1

    .prologue
    .line 13002
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message;->reflectionRequest_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    return-object v0
.end method

.method public getReflectionResponse()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;
    .locals 1

    .prologue
    .line 13012
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message;->reflectionResponse_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

    return-object v0
.end method

.method public getReflectionResponseOrBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponseOrBuilder;
    .locals 1

    .prologue
    .line 13015
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message;->reflectionResponse_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 13093
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message;->memoizedSerializedSize:I

    .line 13094
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 13123
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 13096
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 13097
    iget v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 13099
    iget v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message;->id_:I

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 13101
    :cond_1
    iget v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 13103
    iget-object v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;

    invoke-virtual {v2}, Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;->getNumber()I

    move-result v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 13105
    :cond_2
    iget v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 13107
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message;->systemRequest_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 13109
    :cond_3
    iget v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v5, :cond_4

    .line 13111
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message;->systemResponse_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 13113
    :cond_4
    iget v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 13115
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message;->reflectionRequest_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 13117
    :cond_5
    iget v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    .line 13119
    iget-object v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message;->reflectionResponse_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 13121
    :cond_6
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 13122
    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message;->memoizedSerializedSize:I

    move v1, v0

    .line 13123
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public getSystemRequest()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;
    .locals 1

    .prologue
    .line 12973
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message;->systemRequest_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    return-object v0
.end method

.method public getSystemRequestOrBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequestOrBuilder;
    .locals 1

    .prologue
    .line 12976
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message;->systemRequest_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    return-object v0
.end method

.method public getSystemResponse()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;
    .locals 1

    .prologue
    .line 12986
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message;->systemResponse_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    return-object v0
.end method

.method public getSystemResponseOrBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponseOrBuilder;
    .locals 1

    .prologue
    .line 12989
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message;->systemResponse_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    return-object v0
.end method

.method public getType()Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;
    .locals 1

    .prologue
    .line 12963
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;

    return-object v0
.end method

.method public hasId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 12950
    iget v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasReflectionRequest()Z
    .locals 2

    .prologue
    .line 12996
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message;->bitField0_:I

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

.method public hasReflectionResponse()Z
    .locals 2

    .prologue
    .line 13009
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSystemRequest()Z
    .locals 2

    .prologue
    .line 12970
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message;->bitField0_:I

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

.method public hasSystemResponse()Z
    .locals 2

    .prologue
    .line 12983
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message;->bitField0_:I

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
    .line 12960
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 67
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$72()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 13028
    iget-byte v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message;->memoizedIsInitialized:B

    .line 13029
    .local v0, "isInitialized":B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    .line 13064
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 13029
    goto :goto_0

    .line 13031
    :cond_1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message;->hasId()Z

    move-result v3

    if-nez v3, :cond_2

    .line 13032
    iput-byte v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message;->memoizedIsInitialized:B

    move v1, v2

    .line 13033
    goto :goto_0

    .line 13035
    :cond_2
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message;->hasType()Z

    move-result v3

    if-nez v3, :cond_3

    .line 13036
    iput-byte v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message;->memoizedIsInitialized:B

    move v1, v2

    .line 13037
    goto :goto_0

    .line 13039
    :cond_3
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message;->hasSystemRequest()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 13040
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message;->getSystemRequest()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_4

    .line 13041
    iput-byte v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message;->memoizedIsInitialized:B

    move v1, v2

    .line 13042
    goto :goto_0

    .line 13045
    :cond_4
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message;->hasSystemResponse()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 13046
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message;->getSystemResponse()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_5

    .line 13047
    iput-byte v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message;->memoizedIsInitialized:B

    move v1, v2

    .line 13048
    goto :goto_0

    .line 13051
    :cond_5
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message;->hasReflectionRequest()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 13052
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message;->getReflectionRequest()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_6

    .line 13053
    iput-byte v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message;->memoizedIsInitialized:B

    move v1, v2

    .line 13054
    goto :goto_0

    .line 13057
    :cond_6
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message;->hasReflectionResponse()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 13058
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message;->getReflectionResponse()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_7

    .line 13059
    iput-byte v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message;->memoizedIsInitialized:B

    move v1, v2

    .line 13060
    goto :goto_0

    .line 13063
    :cond_7
    iput-byte v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message;->newBuilderForType()Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message;->newBuilderForType()Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;
    .locals 1

    .prologue
    .line 13201
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 13210
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;)V

    .line 13211
    .local v0, "builder":Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message;->toBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message;->toBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;
    .locals 1

    .prologue
    .line 13205
    invoke-static {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message;->newBuilder(Lcom/mwr/jdiesel/api/Protobuf$Message;)Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

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
    .line 13130
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 13069
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message;->getSerializedSize()I

    .line 13070
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 13071
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message;->id_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 13073
    :cond_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 13074
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;

    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 13076
    :cond_1
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 13077
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message;->systemRequest_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 13079
    :cond_2
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v3, :cond_3

    .line 13080
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message;->systemResponse_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 13082
    :cond_3
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 13083
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message;->reflectionRequest_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 13085
    :cond_4
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 13086
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message;->reflectionResponse_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 13088
    :cond_5
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 13089
    return-void
.end method
