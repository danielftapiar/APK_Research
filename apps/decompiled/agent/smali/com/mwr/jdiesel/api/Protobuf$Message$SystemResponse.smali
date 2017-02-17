.class public final Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Protobuf.java"

# interfaces
.implements Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mwr/jdiesel/api/Protobuf$Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SystemResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;,
        Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;,
        Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;
    }
.end annotation


# static fields
.field public static final AGENT_FIELD_NUMBER:I = 0xa

.field public static final DEVICES_FIELD_NUMBER:I = 0x6

.field public static final ERROR_MESSAGE_FIELD_NUMBER:I = 0x8

.field public static final SESSIONS_FIELD_NUMBER:I = 0x9

.field public static final SESSION_ID_FIELD_NUMBER:I = 0x7

.field public static final STATUS_FIELD_NUMBER:I = 0x2

.field public static final TYPE_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

.field private static final serialVersionUID:J


# instance fields
.field private agent_:Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

.field private bitField0_:I

.field private devices_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$Device;",
            ">;"
        }
    .end annotation
.end field

.field private errorMessage_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private sessionId_:Ljava/lang/Object;

.field private sessions_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$Session;",
            ">;"
        }
    .end annotation
.end field

.field private status_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;

.field private type_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 8285
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;-><init>(Z)V

    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    .line 8286
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    invoke-direct {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->initFields()V

    .line 8287
    return-void
.end method

.method private constructor <init>(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;

    .prologue
    const/4 v0, -0x1

    .line 6849
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 7171
    iput-byte v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->memoizedIsInitialized:B

    .line 7233
    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->memoizedSerializedSize:I

    .line 6850
    return-void
.end method

.method synthetic constructor <init>(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;)V
    .locals 0

    .prologue
    .line 6848
    invoke-direct {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;-><init>(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 6851
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 7171
    iput-byte v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->memoizedIsInitialized:B

    .line 7233
    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->memoizedSerializedSize:I

    .line 6851
    return-void
.end method

.method static synthetic access$10(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;)V
    .locals 0

    .prologue
    .line 7035
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->status_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;

    return-void
.end method

.method static synthetic access$11(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 7045
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->devices_:Ljava/util/List;

    return-void
.end method

.method static synthetic access$12(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;)V
    .locals 0

    .prologue
    .line 7066
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->agent_:Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    return-void
.end method

.method static synthetic access$13(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 7079
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->sessionId_:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$14(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 7111
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->errorMessage_:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$15(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 7143
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->sessions_:Ljava/util/List;

    return-void
.end method

.method static synthetic access$16(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;I)V
    .locals 0

    .prologue
    .line 7022
    iput p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->bitField0_:I

    return-void
.end method

.method static synthetic access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;)Ljava/util/List;
    .locals 1

    .prologue
    .line 7045
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->devices_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$18(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;)Ljava/util/List;
    .locals 1

    .prologue
    .line 7143
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->sessions_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$7()Z
    .locals 1

    .prologue
    .line 6844
    sget-boolean v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$9(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;)V
    .locals 0

    .prologue
    .line 7025
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;

    return-void
.end method

.method public static getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;
    .locals 1

    .prologue
    .line 6855
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6864
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_SystemResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$32()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getErrorMessageBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 7130
    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->errorMessage_:Ljava/lang/Object;

    .line 7131
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 7133
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 7134
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->errorMessage_:Ljava/lang/Object;

    .line 7137
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
    .line 7098
    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->sessionId_:Ljava/lang/Object;

    .line 7099
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 7101
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 7102
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->sessionId_:Ljava/lang/Object;

    .line 7105
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
    .line 7163
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;->PONG:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;

    .line 7164
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;->SUCCESS:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->status_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;

    .line 7165
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->devices_:Ljava/util/List;

    .line 7166
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->agent_:Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    .line 7167
    const-string v0, ""

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->sessionId_:Ljava/lang/Object;

    .line 7168
    const-string v0, ""

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->errorMessage_:Ljava/lang/Object;

    .line 7169
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->sessions_:Ljava/util/List;

    .line 7170
    return-void
.end method

.method public static newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;
    .locals 1

    .prologue
    .line 7346
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->create()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->access$18()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    .prologue
    .line 7349
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7315
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;

    move-result-object v0

    .line 7316
    .local v0, "builder":Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;
    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7317
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    move-result-object v1

    .line 7319
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7326
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;

    move-result-object v0

    .line 7327
    .local v0, "builder":Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7328
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    move-result-object v1

    .line 7330
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7282
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;

    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7288
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;

    .line 7289
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    move-result-object v0

    .line 7288
    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7336
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;

    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7342
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;

    move-result-object v0

    .line 7343
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    move-result-object v0

    .line 7342
    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7304
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;

    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7310
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;

    .line 7311
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    move-result-object v0

    .line 7310
    return-object v0
.end method

.method public static parseFrom([B)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7293
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;

    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7299
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;

    .line 7300
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    move-result-object v0

    .line 7299
    return-object v0
.end method


# virtual methods
.method public getAgent()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;
    .locals 1

    .prologue
    .line 7071
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->agent_:Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    return-object v0
.end method

.method public getAgentOrBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$AgentOrBuilder;
    .locals 1

    .prologue
    .line 7074
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->agent_:Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;
    .locals 1

    .prologue
    .line 6859
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    return-object v0
.end method

.method public getDevices(I)Lcom/mwr/jdiesel/api/Protobuf$Message$Device;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 7057
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->devices_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    return-object v0
.end method

.method public getDevicesCount()I
    .locals 1

    .prologue
    .line 7054
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->devices_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDevicesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$Device;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7047
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->devices_:Ljava/util/List;

    return-object v0
.end method

.method public getDevicesOrBuilder(I)Lcom/mwr/jdiesel/api/Protobuf$Message$DeviceOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 7061
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->devices_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$DeviceOrBuilder;

    return-object v0
.end method

.method public getDevicesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$DeviceOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7051
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->devices_:Ljava/util/List;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 7116
    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->errorMessage_:Ljava/lang/Object;

    .line 7117
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 7118
    check-cast v1, Ljava/lang/String;

    .line 7126
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 7121
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 7122
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 7123
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7124
    iput-object v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->errorMessage_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 7126
    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 7235
    iget v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->memoizedSerializedSize:I

    .line 7236
    .local v1, "size":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 7269
    .end local v1    # "size":I
    .local v2, "size":I
    :goto_0
    return v2

    .line 7238
    .end local v2    # "size":I
    .restart local v1    # "size":I
    :cond_0
    const/4 v1, 0x0

    .line 7239
    iget v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1

    .line 7241
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;

    invoke-virtual {v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;->getNumber()I

    move-result v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 7243
    :cond_1
    iget v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_2

    .line 7245
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->status_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;

    invoke-virtual {v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;->getNumber()I

    move-result v3

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 7247
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->devices_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_6

    .line 7251
    iget v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-ne v3, v6, :cond_3

    .line 7253
    const/4 v3, 0x7

    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->getSessionIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 7255
    :cond_3
    iget v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 7257
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->getErrorMessageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 7259
    :cond_4
    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->sessions_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_7

    .line 7263
    iget v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_5

    .line 7265
    const/16 v3, 0xa

    iget-object v4, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->agent_:Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 7267
    :cond_5
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v3

    add-int/2addr v1, v3

    .line 7268
    iput v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->memoizedSerializedSize:I

    move v2, v1

    .line 7269
    .end local v1    # "size":I
    .restart local v2    # "size":I
    goto :goto_0

    .line 7249
    .end local v2    # "size":I
    .restart local v1    # "size":I
    :cond_6
    const/4 v4, 0x6

    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->devices_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 7247
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 7261
    :cond_7
    const/16 v4, 0x9

    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->sessions_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 7259
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 7084
    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->sessionId_:Ljava/lang/Object;

    .line 7085
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 7086
    check-cast v1, Ljava/lang/String;

    .line 7094
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 7089
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 7090
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 7091
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7092
    iput-object v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->sessionId_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 7094
    goto :goto_0
.end method

.method public getSessions(I)Lcom/mwr/jdiesel/api/Protobuf$Message$Session;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 7155
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->sessions_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;

    return-object v0
.end method

.method public getSessionsCount()I
    .locals 1

    .prologue
    .line 7152
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->sessions_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSessionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$Session;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7145
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->sessions_:Ljava/util/List;

    return-object v0
.end method

.method public getSessionsOrBuilder(I)Lcom/mwr/jdiesel/api/Protobuf$Message$SessionOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 7159
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->sessions_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SessionOrBuilder;

    return-object v0
.end method

.method public getSessionsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$SessionOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7149
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->sessions_:Ljava/util/List;

    return-object v0
.end method

.method public getStatus()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;
    .locals 1

    .prologue
    .line 7040
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->status_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;

    return-object v0
.end method

.method public getType()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;
    .locals 1

    .prologue
    .line 7030
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;

    return-object v0
.end method

.method public hasAgent()Z
    .locals 2

    .prologue
    .line 7068
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->bitField0_:I

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

.method public hasErrorMessage()Z
    .locals 2

    .prologue
    .line 7113
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->bitField0_:I

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
    .line 7081
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->bitField0_:I

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

.method public hasStatus()Z
    .locals 2

    .prologue
    .line 7037
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->bitField0_:I

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

.method public hasType()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 7027
    iget v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->bitField0_:I

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
    .line 6869
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_SystemResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$64()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 7173
    iget-byte v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->memoizedIsInitialized:B

    .line 7174
    .local v1, "isInitialized":B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    if-ne v1, v2, :cond_0

    .line 7203
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 7174
    goto :goto_0

    .line 7176
    :cond_1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->hasType()Z

    move-result v4

    if-nez v4, :cond_2

    .line 7177
    iput-byte v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->memoizedIsInitialized:B

    move v2, v3

    .line 7178
    goto :goto_0

    .line 7180
    :cond_2
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->hasStatus()Z

    move-result v4

    if-nez v4, :cond_3

    .line 7181
    iput-byte v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->memoizedIsInitialized:B

    move v2, v3

    .line 7182
    goto :goto_0

    .line 7184
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->getDevicesCount()I

    move-result v4

    if-lt v0, v4, :cond_4

    .line 7190
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->hasAgent()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 7191
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->getAgent()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_6

    .line 7192
    iput-byte v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->memoizedIsInitialized:B

    move v2, v3

    .line 7193
    goto :goto_0

    .line 7185
    :cond_4
    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->getDevices(I)Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_5

    .line 7186
    iput-byte v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->memoizedIsInitialized:B

    move v2, v3

    .line 7187
    goto :goto_0

    .line 7184
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 7196
    :cond_6
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->getSessionsCount()I

    move-result v4

    if-lt v0, v4, :cond_7

    .line 7202
    iput-byte v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->memoizedIsInitialized:B

    goto :goto_0

    .line 7197
    :cond_7
    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->getSessions(I)Lcom/mwr/jdiesel/api/Protobuf$Message$Session;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_8

    .line 7198
    iput-byte v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->memoizedIsInitialized:B

    move v2, v3

    .line 7199
    goto :goto_0

    .line 7196
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->newBuilderForType()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->newBuilderForType()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;
    .locals 1

    .prologue
    .line 7347
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 7356
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;)V

    .line 7357
    .local v0, "builder":Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->toBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->toBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;
    .locals 1

    .prologue
    .line 7351
    invoke-static {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->newBuilder(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;

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
    .line 7276
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 5
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 7208
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->getSerializedSize()I

    .line 7209
    iget v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_0

    .line 7210
    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 7212
    :cond_0
    iget v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_1

    .line 7213
    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->status_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;->getNumber()I

    move-result v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 7215
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->devices_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_5

    .line 7218
    iget v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v4, :cond_2

    .line 7219
    const/4 v1, 0x7

    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->getSessionIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 7221
    :cond_2
    iget v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_3

    .line 7222
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->getErrorMessageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 7224
    :cond_3
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->sessions_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_6

    .line 7227
    iget v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 7228
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->agent_:Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 7230
    :cond_4
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 7231
    return-void

    .line 7216
    :cond_5
    const/4 v2, 0x6

    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->devices_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 7215
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7225
    :cond_6
    const/16 v2, 0x9

    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->sessions_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 7224
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
