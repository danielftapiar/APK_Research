.class public final Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Protobuf.java"

# interfaces
.implements Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mwr/jdiesel/api/Protobuf$Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReflectionResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;,
        Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;
    }
.end annotation


# static fields
.field public static final ERRORMESSAGE_FIELD_NUMBER:I = 0x8

.field public static final RESULT_FIELD_NUMBER:I = 0x3

.field public static final SESSION_ID_FIELD_NUMBER:I = 0x1

.field public static final STATUS_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private errormessage_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private result_:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

.field private sessionId_:Ljava/lang/Object;

.field private status_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 5853
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;-><init>(Z)V

    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

    .line 5854
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

    invoke-direct {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->initFields()V

    .line 5855
    return-void
.end method

.method private constructor <init>(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;

    .prologue
    const/4 v0, -0x1

    .line 5107
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 5296
    iput-byte v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->memoizedIsInitialized:B

    .line 5337
    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->memoizedSerializedSize:I

    .line 5108
    return-void
.end method

.method synthetic constructor <init>(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;)V
    .locals 0

    .prologue
    .line 5106
    invoke-direct {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;-><init>(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 5109
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 5296
    iput-byte v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->memoizedIsInitialized:B

    .line 5337
    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->memoizedSerializedSize:I

    .line 5109
    return-void
.end method

.method static synthetic access$10(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;)V
    .locals 0

    .prologue
    .line 5237
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->status_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;

    return-void
.end method

.method static synthetic access$11(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;)V
    .locals 0

    .prologue
    .line 5247
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->result_:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    return-void
.end method

.method static synthetic access$12(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 5260
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->errormessage_:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$13(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;I)V
    .locals 0

    .prologue
    .line 5202
    iput p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->bitField0_:I

    return-void
.end method

.method static synthetic access$7()Z
    .locals 1

    .prologue
    .line 5102
    sget-boolean v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$9(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 5205
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->sessionId_:Ljava/lang/Object;

    return-void
.end method

.method public static getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;
    .locals 1

    .prologue
    .line 5113
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5122
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_ReflectionResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$26()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getErrormessageBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 5279
    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->errormessage_:Ljava/lang/Object;

    .line 5280
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5282
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5283
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->errormessage_:Ljava/lang/Object;

    .line 5286
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
    .line 5224
    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->sessionId_:Ljava/lang/Object;

    .line 5225
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5227
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5228
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->sessionId_:Ljava/lang/Object;

    .line 5231
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
    .line 5291
    const-string v0, ""

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->sessionId_:Ljava/lang/Object;

    .line 5292
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;->SUCCESS:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->status_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;

    .line 5293
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->result_:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    .line 5294
    const-string v0, ""

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->errormessage_:Ljava/lang/Object;

    .line 5295
    return-void
.end method

.method public static newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;
    .locals 1

    .prologue
    .line 5438
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->create()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->access$18()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

    .prologue
    .line 5441
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5407
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;

    move-result-object v0

    .line 5408
    .local v0, "builder":Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;
    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5409
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

    move-result-object v1

    .line 5411
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5418
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;

    move-result-object v0

    .line 5419
    .local v0, "builder":Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5420
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

    move-result-object v1

    .line 5422
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5374
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;

    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5380
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;

    .line 5381
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

    move-result-object v0

    .line 5380
    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5428
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;

    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5434
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;

    move-result-object v0

    .line 5435
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

    move-result-object v0

    .line 5434
    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5396
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;

    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5402
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;

    .line 5403
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

    move-result-object v0

    .line 5402
    return-object v0
.end method

.method public static parseFrom([B)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5385
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;

    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5391
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;

    .line 5392
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

    move-result-object v0

    .line 5391
    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;
    .locals 1

    .prologue
    .line 5117
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

    return-object v0
.end method

.method public getErrormessage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 5265
    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->errormessage_:Ljava/lang/Object;

    .line 5266
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 5267
    check-cast v1, Ljava/lang/String;

    .line 5275
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 5270
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 5271
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 5272
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5273
    iput-object v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->errormessage_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 5275
    goto :goto_0
.end method

.method public getResult()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;
    .locals 1

    .prologue
    .line 5252
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->result_:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    return-object v0
.end method

.method public getResultOrBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ArgumentOrBuilder;
    .locals 1

    .prologue
    .line 5255
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->result_:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 5339
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->memoizedSerializedSize:I

    .line 5340
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 5361
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 5342
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 5343
    iget v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 5345
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->getSessionIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5347
    :cond_1
    iget v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 5349
    iget-object v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->status_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;

    invoke-virtual {v2}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;->getNumber()I

    move-result v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 5351
    :cond_2
    iget v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 5353
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->result_:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5355
    :cond_3
    iget v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v5, :cond_4

    .line 5357
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->getErrormessageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5359
    :cond_4
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 5360
    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 5361
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 5210
    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->sessionId_:Ljava/lang/Object;

    .line 5211
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 5212
    check-cast v1, Ljava/lang/String;

    .line 5220
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 5215
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 5216
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 5217
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5218
    iput-object v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->sessionId_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 5220
    goto :goto_0
.end method

.method public getStatus()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;
    .locals 1

    .prologue
    .line 5242
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->status_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;

    return-object v0
.end method

.method public hasErrormessage()Z
    .locals 2

    .prologue
    .line 5262
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->bitField0_:I

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

.method public hasResult()Z
    .locals 2

    .prologue
    .line 5249
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->bitField0_:I

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

.method public hasSessionId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 5207
    iget v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStatus()Z
    .locals 2

    .prologue
    .line 5239
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->bitField0_:I

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
    .line 5127
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_ReflectionResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$62()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5298
    iget-byte v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->memoizedIsInitialized:B

    .line 5299
    .local v0, "isInitialized":B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    .line 5316
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 5299
    goto :goto_0

    .line 5301
    :cond_1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->hasSessionId()Z

    move-result v3

    if-nez v3, :cond_2

    .line 5302
    iput-byte v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->memoizedIsInitialized:B

    move v1, v2

    .line 5303
    goto :goto_0

    .line 5305
    :cond_2
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->hasStatus()Z

    move-result v3

    if-nez v3, :cond_3

    .line 5306
    iput-byte v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->memoizedIsInitialized:B

    move v1, v2

    .line 5307
    goto :goto_0

    .line 5309
    :cond_3
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->hasResult()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 5310
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->getResult()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_4

    .line 5311
    iput-byte v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->memoizedIsInitialized:B

    move v1, v2

    .line 5312
    goto :goto_0

    .line 5315
    :cond_4
    iput-byte v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->newBuilderForType()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->newBuilderForType()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;
    .locals 1

    .prologue
    .line 5439
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 5448
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;)V

    .line 5449
    .local v0, "builder":Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->toBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->toBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;
    .locals 1

    .prologue
    .line 5443
    invoke-static {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->newBuilder(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;

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
    .line 5368
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

    .line 5321
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->getSerializedSize()I

    .line 5322
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 5323
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->getSessionIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 5325
    :cond_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 5326
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->status_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;

    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;->getNumber()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 5328
    :cond_1
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 5329
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->result_:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 5331
    :cond_2
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v3, :cond_3

    .line 5332
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->getErrormessageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 5334
    :cond_3
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 5335
    return-void
.end method
