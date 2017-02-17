.class public final Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Protobuf.java"

# interfaces
.implements Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;",
        ">;",
        "Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private agentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$AgentOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private agent_:Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

.field private bitField0_:I

.field private deviceBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$Device;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$DeviceOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private device_:Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

.field private password_:Ljava/lang/Object;

.field private sessionId_:Ljava/lang/Object;

.field private type_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 6286
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 6514
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;->PING:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    .line 6538
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->device_:Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    .line 6628
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->agent_:Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    .line 6718
    const-string v0, ""

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->sessionId_:Ljava/lang/Object;

    .line 6754
    const-string v0, ""

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->password_:Ljava/lang/Object;

    .line 6287
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->maybeForceBuilderInitialization()V

    .line 6288
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 6291
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 6514
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;->PING:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    .line 6538
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->device_:Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    .line 6628
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->agent_:Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    .line 6718
    const-string v0, ""

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->sessionId_:Ljava/lang/Object;

    .line 6754
    const-string v0, ""

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->password_:Ljava/lang/Object;

    .line 6292
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->maybeForceBuilderInitialization()V

    .line 6293
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;)V
    .locals 0

    .prologue
    .line 6290
    invoke-direct {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6348
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$18()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;
    .locals 1

    .prologue
    .line 6300
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->create()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6350
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    move-result-object v0

    .line 6351
    .local v0, "result":Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;
    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6352
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    .line 6353
    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    .line 6352
    throw v1

    .line 6355
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;
    .locals 1

    .prologue
    .line 6301
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;

    invoke-direct {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;-><init>()V

    return-object v0
.end method

.method private getAgentFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$AgentOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6706
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->agentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 6707
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 6709
    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->agent_:Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    .line 6710
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    .line 6711
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    .line 6707
    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->agentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 6712
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->agent_:Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    .line 6714
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->agentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6277
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_SystemRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$29()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getDeviceFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$Device;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$DeviceOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6616
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->deviceBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 6617
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 6619
    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->device_:Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    .line 6620
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    .line 6621
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    .line 6617
    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->deviceBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 6622
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->device_:Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    .line 6624
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->deviceBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 6295
    # getter for: Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->access$7()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6296
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->getDeviceFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 6297
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->getAgentFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 6299
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;
    .locals 2

    .prologue
    .line 6341
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    move-result-object v0

    .line 6342
    .local v0, "result":Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;
    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6343
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 6345
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;
    .locals 5

    .prologue
    .line 6359
    new-instance v1, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;-><init>(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;)V

    .line 6360
    .local v1, "result":Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->bitField0_:I

    .line 6361
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 6362
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 6363
    or-int/lit8 v2, v2, 0x1

    .line 6365
    :cond_0
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->access$9(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;)V

    .line 6366
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 6367
    or-int/lit8 v2, v2, 0x2

    .line 6369
    :cond_1
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->deviceBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v3, :cond_5

    .line 6370
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->device_:Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->access$10(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;Lcom/mwr/jdiesel/api/Protobuf$Message$Device;)V

    .line 6374
    :goto_0
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 6375
    or-int/lit8 v2, v2, 0x4

    .line 6377
    :cond_2
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->agentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v3, :cond_6

    .line 6378
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->agent_:Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->access$11(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;)V

    .line 6382
    :goto_1
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 6383
    or-int/lit8 v2, v2, 0x8

    .line 6385
    :cond_3
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->sessionId_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->access$12(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;Ljava/lang/Object;)V

    .line 6386
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 6387
    or-int/lit8 v2, v2, 0x10

    .line 6389
    :cond_4
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->password_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->access$13(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;Ljava/lang/Object;)V

    .line 6390
    invoke-static {v1, v2}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->access$14(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;I)V

    .line 6391
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->onBuilt()V

    .line 6392
    return-object v1

    .line 6372
    :cond_5
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->deviceBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v3

    check-cast v3, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->access$10(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;Lcom/mwr/jdiesel/api/Protobuf$Message$Device;)V

    goto :goto_0

    .line 6380
    :cond_6
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->agentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v3

    check-cast v3, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->access$11(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;)V

    goto :goto_1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->clear()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->clear()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->clear()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;
    .locals 1

    .prologue
    .line 6305
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 6306
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;->PING:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    .line 6307
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->bitField0_:I

    .line 6308
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->deviceBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 6309
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->device_:Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    .line 6313
    :goto_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->bitField0_:I

    .line 6314
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->agentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 6315
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->agent_:Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    .line 6319
    :goto_1
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->bitField0_:I

    .line 6320
    const-string v0, ""

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->sessionId_:Ljava/lang/Object;

    .line 6321
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->bitField0_:I

    .line 6322
    const-string v0, ""

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->password_:Ljava/lang/Object;

    .line 6323
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->bitField0_:I

    .line 6324
    return-object p0

    .line 6311
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->deviceBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0

    .line 6317
    :cond_1
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->agentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public clearAgent()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;
    .locals 1

    .prologue
    .line 6682
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->agentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 6683
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->agent_:Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    .line 6684
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->onChanged()V

    .line 6688
    :goto_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->bitField0_:I

    .line 6689
    return-object p0

    .line 6686
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->agentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearDevice()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;
    .locals 1

    .prologue
    .line 6592
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->deviceBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 6593
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->device_:Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    .line 6594
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->onChanged()V

    .line 6598
    :goto_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->bitField0_:I

    .line 6599
    return-object p0

    .line 6596
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->deviceBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearPassword()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;
    .locals 1

    .prologue
    .line 6778
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->bitField0_:I

    .line 6779
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->getPassword()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->password_:Ljava/lang/Object;

    .line 6780
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->onChanged()V

    .line 6781
    return-object p0
.end method

.method public clearSessionId()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;
    .locals 1

    .prologue
    .line 6742
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->bitField0_:I

    .line 6743
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->getSessionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->sessionId_:Ljava/lang/Object;

    .line 6744
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->onChanged()V

    .line 6745
    return-object p0
.end method

.method public clearType()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;
    .locals 1

    .prologue
    .line 6531
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->bitField0_:I

    .line 6532
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;->PING:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    .line 6533
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->onChanged()V

    .line 6534
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->clone()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->clone()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->clone()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;
    .locals 2

    .prologue
    .line 6328
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->create()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAgent()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;
    .locals 1

    .prologue
    .line 6635
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->agentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 6636
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->agent_:Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    .line 6638
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->agentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    goto :goto_0
.end method

.method public getAgentBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;
    .locals 1

    .prologue
    .line 6692
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->bitField0_:I

    .line 6693
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->onChanged()V

    .line 6694
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->getAgentFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;

    return-object v0
.end method

.method public getAgentOrBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$AgentOrBuilder;
    .locals 1

    .prologue
    .line 6697
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->agentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 6698
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->agentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$AgentOrBuilder;

    .line 6700
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->agent_:Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    goto :goto_0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;
    .locals 1

    .prologue
    .line 6337
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6333
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDevice()Lcom/mwr/jdiesel/api/Protobuf$Message$Device;
    .locals 1

    .prologue
    .line 6545
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->deviceBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 6546
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->device_:Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    .line 6548
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->deviceBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    goto :goto_0
.end method

.method public getDeviceBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;
    .locals 1

    .prologue
    .line 6602
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->bitField0_:I

    .line 6603
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->onChanged()V

    .line 6604
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->getDeviceFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;

    return-object v0
.end method

.method public getDeviceOrBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$DeviceOrBuilder;
    .locals 1

    .prologue
    .line 6607
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->deviceBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 6608
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->deviceBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$DeviceOrBuilder;

    .line 6610
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->device_:Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    goto :goto_0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 3

    .prologue
    .line 6759
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->password_:Ljava/lang/Object;

    .line 6760
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 6761
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 6762
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->password_:Ljava/lang/Object;

    .line 6765
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "ref":Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 6723
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->sessionId_:Ljava/lang/Object;

    .line 6724
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 6725
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 6726
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->sessionId_:Ljava/lang/Object;

    .line 6729
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "ref":Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getType()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;
    .locals 1

    .prologue
    .line 6519
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    return-object v0
.end method

.method public hasAgent()Z
    .locals 2

    .prologue
    .line 6632
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->bitField0_:I

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
    .line 6542
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->bitField0_:I

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
    .line 6756
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->bitField0_:I

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
    .line 6720
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->bitField0_:I

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

    .line 6516
    iget v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->bitField0_:I

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
    .line 6282
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_SystemRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$63()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 6426
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->hasType()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6442
    :cond_0
    :goto_0
    return v0

    .line 6430
    :cond_1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->hasDevice()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6431
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->getDevice()Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6436
    :cond_2
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->hasAgent()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6437
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->getAgent()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6442
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public mergeAgent(Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    .prologue
    .line 6666
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->agentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 6667
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 6668
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->agent_:Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 6670
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->agent_:Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->newBuilder(Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;)Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;)Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    move-result-object v0

    .line 6669
    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->agent_:Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    .line 6674
    :goto_0
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->onChanged()V

    .line 6678
    :goto_1
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->bitField0_:I

    .line 6679
    return-object p0

    .line 6672
    :cond_0
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->agent_:Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    goto :goto_0

    .line 6676
    :cond_1
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->agentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public mergeDevice(Lcom/mwr/jdiesel/api/Protobuf$Message$Device;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    .prologue
    .line 6576
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->deviceBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 6577
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 6578
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->device_:Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 6580
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->device_:Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->newBuilder(Lcom/mwr/jdiesel/api/Protobuf$Message$Device;)Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$Device;)Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    move-result-object v0

    .line 6579
    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->device_:Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    .line 6584
    :goto_0
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->onChanged()V

    .line 6588
    :goto_1
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->bitField0_:I

    .line 6589
    return-object p0

    .line 6582
    :cond_0
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->device_:Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    goto :goto_0

    .line 6586
    :cond_1
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->deviceBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;
    .locals 6
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6451
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v5

    .line 6450
    invoke-static {v5}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v3

    .line 6453
    .local v3, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 6454
    .local v2, "tag":I
    sparse-switch v2, :sswitch_data_0

    .line 6460
    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    .line 6461
    if-nez v5, :cond_0

    .line 6462
    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 6463
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->onChanged()V

    .line 6464
    :goto_1
    return-object p0

    .line 6456
    :sswitch_0
    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 6457
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->onChanged()V

    goto :goto_1

    .line 6469
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 6470
    .local v0, "rawValue":I
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;->valueOf(I)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    move-result-object v4

    .line 6471
    .local v4, "value":Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;
    if-nez v4, :cond_1

    .line 6472
    const/4 v5, 0x1

    invoke-virtual {v3, v5, v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 6474
    :cond_1
    iget v5, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->bitField0_:I

    .line 6475
    iput-object v4, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    goto :goto_0

    .line 6480
    .end local v0    # "rawValue":I
    .end local v4    # "value":Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;
    :sswitch_2
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;

    move-result-object v1

    .line 6481
    .local v1, "subBuilder":Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->hasDevice()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 6482
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->getDevice()Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$Device;)Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;

    .line 6484
    :cond_2
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 6485
    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->setDevice(Lcom/mwr/jdiesel/api/Protobuf$Message$Device;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;

    goto :goto_0

    .line 6489
    .end local v1    # "subBuilder":Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;
    :sswitch_3
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;

    move-result-object v1

    .line 6490
    .local v1, "subBuilder":Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->hasAgent()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 6491
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->getAgent()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;)Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;

    .line 6493
    :cond_3
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 6494
    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->setAgent(Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;

    goto :goto_0

    .line 6498
    .end local v1    # "subBuilder":Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;
    :sswitch_4
    iget v5, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->bitField0_:I

    .line 6499
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->sessionId_:Ljava/lang/Object;

    goto :goto_0

    .line 6503
    :sswitch_5
    iget v5, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->bitField0_:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->bitField0_:I

    .line 6504
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->password_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 6454
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x2a -> :sswitch_2
        0x32 -> :sswitch_3
        0x3a -> :sswitch_4
        0x42 -> :sswitch_5
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 6396
    instance-of v0, p1, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    if-eqz v0, :cond_0

    .line 6397
    check-cast p1, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;

    move-result-object p0

    .line 6400
    .end local p0    # "this":Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;
    :goto_0
    return-object p0

    .line 6399
    .restart local p0    # "this":Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;
    .locals 1
    .param p1, "other"    # Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    .prologue
    .line 6405
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 6422
    :goto_0
    return-object p0

    .line 6406
    :cond_0
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->hasType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6407
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->getType()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->setType(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;

    .line 6409
    :cond_1
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->hasDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6410
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->getDevice()Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->mergeDevice(Lcom/mwr/jdiesel/api/Protobuf$Message$Device;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;

    .line 6412
    :cond_2
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->hasAgent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6413
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->getAgent()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->mergeAgent(Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;

    .line 6415
    :cond_3
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->hasSessionId()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6416
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->getSessionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->setSessionId(Ljava/lang/String;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;

    .line 6418
    :cond_4
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->hasPassword()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6419
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->setPassword(Ljava/lang/String;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;

    .line 6421
    :cond_5
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public setAgent(Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;

    .prologue
    .line 6656
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->agentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 6657
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->agent_:Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    .line 6658
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->onChanged()V

    .line 6662
    :goto_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->bitField0_:I

    .line 6663
    return-object p0

    .line 6660
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->agentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setAgent(Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    .prologue
    .line 6642
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->agentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 6643
    if-nez p1, :cond_0

    .line 6644
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6646
    :cond_0
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->agent_:Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    .line 6647
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->onChanged()V

    .line 6651
    :goto_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->bitField0_:I

    .line 6652
    return-object p0

    .line 6649
    :cond_1
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->agentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setDevice(Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;

    .prologue
    .line 6566
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->deviceBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 6567
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->device_:Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    .line 6568
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->onChanged()V

    .line 6572
    :goto_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->bitField0_:I

    .line 6573
    return-object p0

    .line 6570
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->deviceBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setDevice(Lcom/mwr/jdiesel/api/Protobuf$Message$Device;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    .prologue
    .line 6552
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->deviceBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 6553
    if-nez p1, :cond_0

    .line 6554
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6556
    :cond_0
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->device_:Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    .line 6557
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->onChanged()V

    .line 6561
    :goto_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->bitField0_:I

    .line 6562
    return-object p0

    .line 6559
    :cond_1
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->deviceBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setPassword(Ljava/lang/String;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6769
    if-nez p1, :cond_0

    .line 6770
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6772
    :cond_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->bitField0_:I

    .line 6773
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->password_:Ljava/lang/Object;

    .line 6774
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->onChanged()V

    .line 6775
    return-object p0
.end method

.method setPassword(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 6784
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->bitField0_:I

    .line 6785
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->password_:Ljava/lang/Object;

    .line 6786
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->onChanged()V

    .line 6787
    return-void
.end method

.method public setSessionId(Ljava/lang/String;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6733
    if-nez p1, :cond_0

    .line 6734
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6736
    :cond_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->bitField0_:I

    .line 6737
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->sessionId_:Ljava/lang/Object;

    .line 6738
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->onChanged()V

    .line 6739
    return-object p0
.end method

.method setSessionId(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 6748
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->bitField0_:I

    .line 6749
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->sessionId_:Ljava/lang/Object;

    .line 6750
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->onChanged()V

    .line 6751
    return-void
.end method

.method public setType(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    .prologue
    .line 6522
    if-nez p1, :cond_0

    .line 6523
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6525
    :cond_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->bitField0_:I

    .line 6526
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    .line 6527
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->onChanged()V

    .line 6528
    return-object p0
.end method
