.class public final Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Protobuf.java"

# interfaces
.implements Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;",
        ">;",
        "Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponseOrBuilder;"
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

.field private devicesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$Device;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$DeviceOrBuilder;",
            ">;"
        }
    .end annotation
.end field

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

.field private sessionId_:Ljava/lang/Object;

.field private sessionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$Session;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$SessionOrBuilder;",
            ">;"
        }
    .end annotation
.end field

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
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 7373
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 7700
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;->PONG:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;

    .line 7724
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;->SUCCESS:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->status_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;

    .line 7749
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->devices_:Ljava/util/List;

    .line 7934
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->agent_:Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    .line 8024
    const-string v0, ""

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->sessionId_:Ljava/lang/Object;

    .line 8060
    const-string v0, ""

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->errorMessage_:Ljava/lang/Object;

    .line 8097
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->sessions_:Ljava/util/List;

    .line 7374
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->maybeForceBuilderInitialization()V

    .line 7375
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 7378
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 7700
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;->PONG:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;

    .line 7724
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;->SUCCESS:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->status_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;

    .line 7749
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->devices_:Ljava/util/List;

    .line 7934
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->agent_:Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    .line 8024
    const-string v0, ""

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->sessionId_:Ljava/lang/Object;

    .line 8060
    const-string v0, ""

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->errorMessage_:Ljava/lang/Object;

    .line 8097
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->sessions_:Ljava/util/List;

    .line 7379
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->maybeForceBuilderInitialization()V

    .line 7380
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;)V
    .locals 0

    .prologue
    .line 7377
    invoke-direct {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7444
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$18()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;
    .locals 1

    .prologue
    .line 7388
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->create()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7446
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    move-result-object v0

    .line 7447
    .local v0, "result":Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;
    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7448
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    .line 7449
    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    .line 7448
    throw v1

    .line 7451
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;
    .locals 1

    .prologue
    .line 7389
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;

    invoke-direct {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;-><init>()V

    return-object v0
.end method

.method private ensureDevicesIsMutable()V
    .locals 2

    .prologue
    .line 7751
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 7752
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->devices_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->devices_:Ljava/util/List;

    .line 7753
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    .line 7755
    :cond_0
    return-void
.end method

.method private ensureSessionsIsMutable()V
    .locals 2

    .prologue
    .line 8099
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-eq v0, v1, :cond_0

    .line 8100
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->sessions_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->sessions_:Ljava/util/List;

    .line 8101
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    .line 8103
    :cond_0
    return-void
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
    .line 8012
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->agentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 8013
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 8015
    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->agent_:Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    .line 8016
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    .line 8017
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    .line 8013
    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->agentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 8018
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->agent_:Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    .line 8020
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->agentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 7364
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_SystemResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$32()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getDevicesFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$Device;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$DeviceOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7921
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->devicesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 7922
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 7924
    iget-object v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->devices_:Ljava/util/List;

    .line 7925
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    .line 7926
    :goto_0
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    .line 7927
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    .line 7922
    iput-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->devicesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 7928
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->devices_:Ljava/util/List;

    .line 7930
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->devicesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 7925
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSessionsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$Session;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$SessionOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8269
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->sessionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 8270
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 8272
    iget-object v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->sessions_:Ljava/util/List;

    .line 8273
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v3, 0x40

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    .line 8274
    :goto_0
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    .line 8275
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    .line 8270
    iput-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->sessionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 8276
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->sessions_:Ljava/util/List;

    .line 8278
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->sessionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 8273
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 7382
    # getter for: Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->access$7()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7383
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->getDevicesFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 7384
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->getAgentFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 7385
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->getSessionsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 7387
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllDevices(Ljava/lang/Iterable;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$Device;",
            ">;)",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 7857
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/mwr/jdiesel/api/Protobuf$Message$Device;>;"
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->devicesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 7858
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->ensureDevicesIsMutable()V

    .line 7859
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->devices_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 7860
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->onChanged()V

    .line 7864
    :goto_0
    return-object p0

    .line 7862
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->devicesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addAllSessions(Ljava/lang/Iterable;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$Session;",
            ">;)",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 8205
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/mwr/jdiesel/api/Protobuf$Message$Session;>;"
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->sessionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 8206
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->ensureSessionsIsMutable()V

    .line 8207
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->sessions_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 8208
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->onChanged()V

    .line 8212
    :goto_0
    return-object p0

    .line 8210
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->sessionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addDevices(ILcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;

    .prologue
    .line 7846
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->devicesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 7847
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->ensureDevicesIsMutable()V

    .line 7848
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->devices_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 7849
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->onChanged()V

    .line 7853
    :goto_0
    return-object p0

    .line 7851
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->devicesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addDevices(ILcom/mwr/jdiesel/api/Protobuf$Message$Device;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    .prologue
    .line 7821
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->devicesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 7822
    if-nez p2, :cond_0

    .line 7823
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7825
    :cond_0
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->ensureDevicesIsMutable()V

    .line 7826
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->devices_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 7827
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->onChanged()V

    .line 7831
    :goto_0
    return-object p0

    .line 7829
    :cond_1
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->devicesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addDevices(Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;

    .prologue
    .line 7835
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->devicesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 7836
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->ensureDevicesIsMutable()V

    .line 7837
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->devices_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7838
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->onChanged()V

    .line 7842
    :goto_0
    return-object p0

    .line 7840
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->devicesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addDevices(Lcom/mwr/jdiesel/api/Protobuf$Message$Device;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    .prologue
    .line 7807
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->devicesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 7808
    if-nez p1, :cond_0

    .line 7809
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7811
    :cond_0
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->ensureDevicesIsMutable()V

    .line 7812
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->devices_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7813
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->onChanged()V

    .line 7817
    :goto_0
    return-object p0

    .line 7815
    :cond_1
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->devicesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addDevicesBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;
    .locals 2

    .prologue
    .line 7906
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->getDevicesFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    .line 7907
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    move-result-object v1

    .line 7906
    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;

    return-object v0
.end method

.method public addDevicesBuilder(I)Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 7911
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->getDevicesFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    .line 7912
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    move-result-object v1

    .line 7911
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;

    return-object v0
.end method

.method public addSessions(ILcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;

    .prologue
    .line 8194
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->sessionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 8195
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->ensureSessionsIsMutable()V

    .line 8196
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->sessions_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$Session;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 8197
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->onChanged()V

    .line 8201
    :goto_0
    return-object p0

    .line 8199
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->sessionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$Session;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addSessions(ILcom/mwr/jdiesel/api/Protobuf$Message$Session;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/mwr/jdiesel/api/Protobuf$Message$Session;

    .prologue
    .line 8169
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->sessionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 8170
    if-nez p2, :cond_0

    .line 8171
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8173
    :cond_0
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->ensureSessionsIsMutable()V

    .line 8174
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->sessions_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 8175
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->onChanged()V

    .line 8179
    :goto_0
    return-object p0

    .line 8177
    :cond_1
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->sessionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addSessions(Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;

    .prologue
    .line 8183
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->sessionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 8184
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->ensureSessionsIsMutable()V

    .line 8185
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->sessions_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$Session;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8186
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->onChanged()V

    .line 8190
    :goto_0
    return-object p0

    .line 8188
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->sessionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$Session;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addSessions(Lcom/mwr/jdiesel/api/Protobuf$Message$Session;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/mwr/jdiesel/api/Protobuf$Message$Session;

    .prologue
    .line 8155
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->sessionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 8156
    if-nez p1, :cond_0

    .line 8157
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8159
    :cond_0
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->ensureSessionsIsMutable()V

    .line 8160
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->sessions_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8161
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->onChanged()V

    .line 8165
    :goto_0
    return-object p0

    .line 8163
    :cond_1
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->sessionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addSessionsBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;
    .locals 2

    .prologue
    .line 8254
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->getSessionsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    .line 8255
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$Session;

    move-result-object v1

    .line 8254
    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;

    return-object v0
.end method

.method public addSessionsBuilder(I)Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 8259
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->getSessionsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    .line 8260
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$Session;

    move-result-object v1

    .line 8259
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;
    .locals 2

    .prologue
    .line 7437
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    move-result-object v0

    .line 7438
    .local v0, "result":Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;
    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7439
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 7441
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;
    .locals 5

    .prologue
    .line 7455
    new-instance v1, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;-><init>(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;)V

    .line 7456
    .local v1, "result":Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    .line 7457
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 7458
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 7459
    or-int/lit8 v2, v2, 0x1

    .line 7461
    :cond_0
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->access$9(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;)V

    .line 7462
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 7463
    or-int/lit8 v2, v2, 0x2

    .line 7465
    :cond_1
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->status_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->access$10(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;)V

    .line 7466
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->devicesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_7

    .line 7467
    iget v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 7468
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->devices_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->devices_:Ljava/util/List;

    .line 7469
    iget v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    .line 7471
    :cond_2
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->devices_:Ljava/util/List;

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->access$11(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;Ljava/util/List;)V

    .line 7475
    :goto_0
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 7476
    or-int/lit8 v2, v2, 0x4

    .line 7478
    :cond_3
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->agentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v3, :cond_8

    .line 7479
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->agent_:Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->access$12(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;)V

    .line 7483
    :goto_1
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 7484
    or-int/lit8 v2, v2, 0x8

    .line 7486
    :cond_4
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->sessionId_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->access$13(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;Ljava/lang/Object;)V

    .line 7487
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 7488
    or-int/lit8 v2, v2, 0x10

    .line 7490
    :cond_5
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->errorMessage_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->access$14(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;Ljava/lang/Object;)V

    .line 7491
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->sessionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_9

    .line 7492
    iget v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 7493
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->sessions_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->sessions_:Ljava/util/List;

    .line 7494
    iget v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x41

    iput v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    .line 7496
    :cond_6
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->sessions_:Ljava/util/List;

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->access$15(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;Ljava/util/List;)V

    .line 7500
    :goto_2
    invoke-static {v1, v2}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->access$16(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;I)V

    .line 7501
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->onBuilt()V

    .line 7502
    return-object v1

    .line 7473
    :cond_7
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->devicesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->access$11(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;Ljava/util/List;)V

    goto :goto_0

    .line 7481
    :cond_8
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->agentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v3

    check-cast v3, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->access$12(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;)V

    goto :goto_1

    .line 7498
    :cond_9
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->sessionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->access$15(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;Ljava/util/List;)V

    goto :goto_2
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->clear()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->clear()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->clear()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;
    .locals 1

    .prologue
    .line 7393
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 7394
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;->PONG:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;

    .line 7395
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    .line 7396
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;->SUCCESS:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->status_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;

    .line 7397
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    .line 7398
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->devicesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 7399
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->devices_:Ljava/util/List;

    .line 7400
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    .line 7404
    :goto_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->agentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 7405
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->agent_:Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    .line 7409
    :goto_1
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    .line 7410
    const-string v0, ""

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->sessionId_:Ljava/lang/Object;

    .line 7411
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    .line 7412
    const-string v0, ""

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->errorMessage_:Ljava/lang/Object;

    .line 7413
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    .line 7414
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->sessionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_2

    .line 7415
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->sessions_:Ljava/util/List;

    .line 7416
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    .line 7420
    :goto_2
    return-object p0

    .line 7402
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->devicesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0

    .line 7407
    :cond_1
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->agentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1

    .line 7418
    :cond_2
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->sessionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_2
.end method

.method public clearAgent()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;
    .locals 1

    .prologue
    .line 7988
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->agentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 7989
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->agent_:Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    .line 7990
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->onChanged()V

    .line 7994
    :goto_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    .line 7995
    return-object p0

    .line 7992
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->agentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearDevices()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;
    .locals 1

    .prologue
    .line 7867
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->devicesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 7868
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->devices_:Ljava/util/List;

    .line 7869
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    .line 7870
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->onChanged()V

    .line 7874
    :goto_0
    return-object p0

    .line 7872
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->devicesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearErrorMessage()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;
    .locals 1

    .prologue
    .line 8084
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    .line 8085
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->errorMessage_:Ljava/lang/Object;

    .line 8086
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->onChanged()V

    .line 8087
    return-object p0
.end method

.method public clearSessionId()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;
    .locals 1

    .prologue
    .line 8048
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    .line 8049
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->getSessionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->sessionId_:Ljava/lang/Object;

    .line 8050
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->onChanged()V

    .line 8051
    return-object p0
.end method

.method public clearSessions()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;
    .locals 1

    .prologue
    .line 8215
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->sessionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 8216
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->sessions_:Ljava/util/List;

    .line 8217
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    .line 8218
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->onChanged()V

    .line 8222
    :goto_0
    return-object p0

    .line 8220
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->sessionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearStatus()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;
    .locals 1

    .prologue
    .line 7741
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    .line 7742
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;->SUCCESS:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->status_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;

    .line 7743
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->onChanged()V

    .line 7744
    return-object p0
.end method

.method public clearType()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;
    .locals 1

    .prologue
    .line 7717
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    .line 7718
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;->PONG:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;

    .line 7719
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->onChanged()V

    .line 7720
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->clone()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->clone()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->clone()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;
    .locals 2

    .prologue
    .line 7424
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->create()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAgent()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;
    .locals 1

    .prologue
    .line 7941
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->agentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 7942
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->agent_:Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    .line 7944
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->agentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    goto :goto_0
.end method

.method public getAgentBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;
    .locals 1

    .prologue
    .line 7998
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    .line 7999
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->onChanged()V

    .line 8000
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->getAgentFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;

    return-object v0
.end method

.method public getAgentOrBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$AgentOrBuilder;
    .locals 1

    .prologue
    .line 8003
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->agentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 8004
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->agentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$AgentOrBuilder;

    .line 8006
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->agent_:Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    goto :goto_0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;
    .locals 1

    .prologue
    .line 7433
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 7429
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDevices(I)Lcom/mwr/jdiesel/api/Protobuf$Message$Device;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 7775
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->devicesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 7776
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->devices_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    .line 7778
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->devicesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    goto :goto_0
.end method

.method public getDevicesBuilder(I)Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 7888
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->getDevicesFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;

    return-object v0
.end method

.method public getDevicesBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7916
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->getDevicesFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDevicesCount()I
    .locals 1

    .prologue
    .line 7768
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->devicesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 7769
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->devices_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 7771
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->devicesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
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
    .line 7761
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->devicesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 7762
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->devices_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 7764
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->devicesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getDevicesOrBuilder(I)Lcom/mwr/jdiesel/api/Protobuf$Message$DeviceOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 7892
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->devicesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 7893
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->devices_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$DeviceOrBuilder;

    .line 7894
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->devicesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$DeviceOrBuilder;

    goto :goto_0
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
    .line 7899
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->devicesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 7900
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->devicesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 7902
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->devices_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 8065
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->errorMessage_:Ljava/lang/Object;

    .line 8066
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 8067
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 8068
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->errorMessage_:Ljava/lang/Object;

    .line 8071
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
    .line 8029
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->sessionId_:Ljava/lang/Object;

    .line 8030
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 8031
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 8032
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->sessionId_:Ljava/lang/Object;

    .line 8035
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

.method public getSessions(I)Lcom/mwr/jdiesel/api/Protobuf$Message$Session;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 8123
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->sessionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 8124
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->sessions_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;

    .line 8126
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->sessionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;

    goto :goto_0
.end method

.method public getSessionsBuilder(I)Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 8236
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->getSessionsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;

    return-object v0
.end method

.method public getSessionsBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8264
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->getSessionsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSessionsCount()I
    .locals 1

    .prologue
    .line 8116
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->sessionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 8117
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->sessions_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 8119
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->sessionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
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
    .line 8109
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->sessionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 8110
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->sessions_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 8112
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->sessionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getSessionsOrBuilder(I)Lcom/mwr/jdiesel/api/Protobuf$Message$SessionOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 8240
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->sessionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 8241
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->sessions_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SessionOrBuilder;

    .line 8242
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->sessionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SessionOrBuilder;

    goto :goto_0
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
    .line 8247
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->sessionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 8248
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->sessionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 8250
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->sessions_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getStatus()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;
    .locals 1

    .prologue
    .line 7729
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->status_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;

    return-object v0
.end method

.method public getType()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;
    .locals 1

    .prologue
    .line 7705
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;

    return-object v0
.end method

.method public hasAgent()Z
    .locals 2

    .prologue
    .line 7938
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

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

.method public hasErrorMessage()Z
    .locals 2

    .prologue
    .line 8062
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

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

.method public hasSessionId()Z
    .locals 2

    .prologue
    .line 8026
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

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

.method public hasStatus()Z
    .locals 2

    .prologue
    .line 7726
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

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

    .line 7702
    iget v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

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
    .line 7369
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_SystemResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$64()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 7588
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->hasType()Z

    move-result v2

    if-nez v2, :cond_1

    .line 7614
    :cond_0
    :goto_0
    return v1

    .line 7592
    :cond_1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->hasStatus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7596
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->getDevicesCount()I

    move-result v2

    if-lt v0, v2, :cond_3

    .line 7602
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->hasAgent()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7603
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->getAgent()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7608
    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->getSessionsCount()I

    move-result v2

    if-lt v0, v2, :cond_4

    .line 7614
    const/4 v1, 0x1

    goto :goto_0

    .line 7597
    :cond_3
    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->getDevices(I)Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7596
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 7609
    :cond_4
    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->getSessions(I)Lcom/mwr/jdiesel/api/Protobuf$Message$Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7608
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public mergeAgent(Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    .prologue
    .line 7972
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->agentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 7973
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 7974
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->agent_:Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 7976
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->agent_:Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->newBuilder(Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;)Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;)Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    move-result-object v0

    .line 7975
    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->agent_:Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    .line 7980
    :goto_0
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->onChanged()V

    .line 7984
    :goto_1
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    .line 7985
    return-object p0

    .line 7978
    :cond_0
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->agent_:Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    goto :goto_0

    .line 7982
    :cond_1
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->agentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

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
    invoke-virtual {p0, p1, p2}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;
    .locals 6
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7623
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v5

    .line 7622
    invoke-static {v5}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v3

    .line 7625
    .local v3, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 7626
    .local v2, "tag":I
    sparse-switch v2, :sswitch_data_0

    .line 7632
    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    .line 7633
    if-nez v5, :cond_0

    .line 7634
    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 7635
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->onChanged()V

    .line 7636
    :goto_1
    return-object p0

    .line 7628
    :sswitch_0
    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 7629
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->onChanged()V

    goto :goto_1

    .line 7641
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 7642
    .local v0, "rawValue":I
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;->valueOf(I)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;

    move-result-object v4

    .line 7643
    .local v4, "value":Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;
    if-nez v4, :cond_1

    .line 7644
    const/4 v5, 0x1

    invoke-virtual {v3, v5, v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 7646
    :cond_1
    iget v5, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    .line 7647
    iput-object v4, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;

    goto :goto_0

    .line 7652
    .end local v0    # "rawValue":I
    .end local v4    # "value":Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 7653
    .restart local v0    # "rawValue":I
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;->valueOf(I)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;

    move-result-object v4

    .line 7654
    .local v4, "value":Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;
    if-nez v4, :cond_2

    .line 7655
    const/4 v5, 0x2

    invoke-virtual {v3, v5, v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 7657
    :cond_2
    iget v5, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    .line 7658
    iput-object v4, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->status_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;

    goto :goto_0

    .line 7663
    .end local v0    # "rawValue":I
    .end local v4    # "value":Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;
    :sswitch_3
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;

    move-result-object v1

    .line 7664
    .local v1, "subBuilder":Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 7665
    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->addDevices(Lcom/mwr/jdiesel/api/Protobuf$Message$Device;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;

    goto :goto_0

    .line 7669
    .end local v1    # "subBuilder":Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;
    :sswitch_4
    iget v5, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    .line 7670
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->sessionId_:Ljava/lang/Object;

    goto :goto_0

    .line 7674
    :sswitch_5
    iget v5, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    .line 7675
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->errorMessage_:Ljava/lang/Object;

    goto :goto_0

    .line 7679
    :sswitch_6
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;

    move-result-object v1

    .line 7680
    .local v1, "subBuilder":Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 7681
    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$Session;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->addSessions(Lcom/mwr/jdiesel/api/Protobuf$Message$Session;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;

    goto/16 :goto_0

    .line 7685
    .end local v1    # "subBuilder":Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;
    :sswitch_7
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;

    move-result-object v1

    .line 7686
    .local v1, "subBuilder":Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->hasAgent()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 7687
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->getAgent()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;)Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;

    .line 7689
    :cond_3
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 7690
    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->setAgent(Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;

    goto/16 :goto_0

    .line 7626
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x32 -> :sswitch_3
        0x3a -> :sswitch_4
        0x42 -> :sswitch_5
        0x4a -> :sswitch_6
        0x52 -> :sswitch_7
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 7506
    instance-of v0, p1, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    if-eqz v0, :cond_0

    .line 7507
    check-cast p1, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;

    move-result-object p0

    .line 7510
    .end local p0    # "this":Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;
    :goto_0
    return-object p0

    .line 7509
    .restart local p0    # "this":Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;
    .locals 3
    .param p1, "other"    # Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    .prologue
    const/4 v1, 0x0

    .line 7515
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 7584
    :goto_0
    return-object p0

    .line 7516
    :cond_0
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->hasType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7517
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->getType()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->setType(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;

    .line 7519
    :cond_1
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7520
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->getStatus()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->setStatus(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;

    .line 7522
    :cond_2
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->devicesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_9

    .line 7523
    # getter for: Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->devices_:Ljava/util/List;
    invoke-static {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 7524
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->devices_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 7525
    # getter for: Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->devices_:Ljava/util/List;
    invoke-static {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->devices_:Ljava/util/List;

    .line 7526
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    .line 7531
    :goto_1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->onChanged()V

    .line 7548
    :cond_3
    :goto_2
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->hasAgent()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7549
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->getAgent()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->mergeAgent(Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;

    .line 7551
    :cond_4
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->hasSessionId()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7552
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->getSessionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->setSessionId(Ljava/lang/String;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;

    .line 7554
    :cond_5
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->hasErrorMessage()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 7555
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->setErrorMessage(Ljava/lang/String;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;

    .line 7557
    :cond_6
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->sessionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_d

    .line 7558
    # getter for: Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->sessions_:Ljava/util/List;
    invoke-static {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->access$18(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 7559
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->sessions_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 7560
    # getter for: Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->sessions_:Ljava/util/List;
    invoke-static {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->access$18(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->sessions_:Ljava/util/List;

    .line 7561
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    .line 7566
    :goto_3
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->onChanged()V

    .line 7583
    :cond_7
    :goto_4
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0

    .line 7528
    :cond_8
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->ensureDevicesIsMutable()V

    .line 7529
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->devices_:Ljava/util/List;

    # getter for: Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->devices_:Ljava/util/List;
    invoke-static {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 7534
    :cond_9
    # getter for: Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->devices_:Ljava/util/List;
    invoke-static {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 7535
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->devicesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 7536
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->devicesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 7537
    iput-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->devicesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 7538
    # getter for: Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->devices_:Ljava/util/List;
    invoke-static {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->devices_:Ljava/util/List;

    .line 7539
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    .line 7541
    # getter for: Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->access$7()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 7542
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->getDevicesFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    .line 7540
    :goto_5
    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->devicesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_2

    :cond_a
    move-object v0, v1

    .line 7542
    goto :goto_5

    .line 7544
    :cond_b
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->devicesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    # getter for: Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->devices_:Ljava/util/List;
    invoke-static {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_2

    .line 7563
    :cond_c
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->ensureSessionsIsMutable()V

    .line 7564
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->sessions_:Ljava/util/List;

    # getter for: Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->sessions_:Ljava/util/List;
    invoke-static {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->access$18(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 7569
    :cond_d
    # getter for: Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->sessions_:Ljava/util/List;
    invoke-static {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->access$18(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 7570
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->sessionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 7571
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->sessionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 7572
    iput-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->sessionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 7573
    # getter for: Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->sessions_:Ljava/util/List;
    invoke-static {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->access$18(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->sessions_:Ljava/util/List;

    .line 7574
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    .line 7576
    # getter for: Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->access$7()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 7577
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->getSessionsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v1

    .line 7575
    :cond_e
    iput-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->sessionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_4

    .line 7579
    :cond_f
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->sessionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    # getter for: Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->sessions_:Ljava/util/List;
    invoke-static {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->access$18(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_4
.end method

.method public removeDevices(I)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 7877
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->devicesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 7878
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->ensureDevicesIsMutable()V

    .line 7879
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->devices_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 7880
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->onChanged()V

    .line 7884
    :goto_0
    return-object p0

    .line 7882
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->devicesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public removeSessions(I)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 8225
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->sessionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 8226
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->ensureSessionsIsMutable()V

    .line 8227
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->sessions_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 8228
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->onChanged()V

    .line 8232
    :goto_0
    return-object p0

    .line 8230
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->sessionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setAgent(Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;

    .prologue
    .line 7962
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->agentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 7963
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->agent_:Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    .line 7964
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->onChanged()V

    .line 7968
    :goto_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    .line 7969
    return-object p0

    .line 7966
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->agentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setAgent(Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    .prologue
    .line 7948
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->agentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 7949
    if-nez p1, :cond_0

    .line 7950
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7952
    :cond_0
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->agent_:Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    .line 7953
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->onChanged()V

    .line 7957
    :goto_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    .line 7958
    return-object p0

    .line 7955
    :cond_1
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->agentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setDevices(ILcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;

    .prologue
    .line 7797
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->devicesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 7798
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->ensureDevicesIsMutable()V

    .line 7799
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->devices_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 7800
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->onChanged()V

    .line 7804
    :goto_0
    return-object p0

    .line 7802
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->devicesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setDevices(ILcom/mwr/jdiesel/api/Protobuf$Message$Device;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    .prologue
    .line 7783
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->devicesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 7784
    if-nez p2, :cond_0

    .line 7785
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7787
    :cond_0
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->ensureDevicesIsMutable()V

    .line 7788
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->devices_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 7789
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->onChanged()V

    .line 7793
    :goto_0
    return-object p0

    .line 7791
    :cond_1
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->devicesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setErrorMessage(Ljava/lang/String;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 8075
    if-nez p1, :cond_0

    .line 8076
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8078
    :cond_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    .line 8079
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->errorMessage_:Ljava/lang/Object;

    .line 8080
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->onChanged()V

    .line 8081
    return-object p0
.end method

.method setErrorMessage(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 8090
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    .line 8091
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->errorMessage_:Ljava/lang/Object;

    .line 8092
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->onChanged()V

    .line 8093
    return-void
.end method

.method public setSessionId(Ljava/lang/String;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 8039
    if-nez p1, :cond_0

    .line 8040
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8042
    :cond_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    .line 8043
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->sessionId_:Ljava/lang/Object;

    .line 8044
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->onChanged()V

    .line 8045
    return-object p0
.end method

.method setSessionId(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 8054
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    .line 8055
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->sessionId_:Ljava/lang/Object;

    .line 8056
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->onChanged()V

    .line 8057
    return-void
.end method

.method public setSessions(ILcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;

    .prologue
    .line 8145
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->sessionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 8146
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->ensureSessionsIsMutable()V

    .line 8147
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->sessions_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$Session;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 8148
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->onChanged()V

    .line 8152
    :goto_0
    return-object p0

    .line 8150
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->sessionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$Session;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setSessions(ILcom/mwr/jdiesel/api/Protobuf$Message$Session;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/mwr/jdiesel/api/Protobuf$Message$Session;

    .prologue
    .line 8131
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->sessionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 8132
    if-nez p2, :cond_0

    .line 8133
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8135
    :cond_0
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->ensureSessionsIsMutable()V

    .line 8136
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->sessions_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 8137
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->onChanged()V

    .line 8141
    :goto_0
    return-object p0

    .line 8139
    :cond_1
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->sessionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setStatus(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;

    .prologue
    .line 7732
    if-nez p1, :cond_0

    .line 7733
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7735
    :cond_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    .line 7736
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->status_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;

    .line 7737
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->onChanged()V

    .line 7738
    return-object p0
.end method

.method public setType(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;

    .prologue
    .line 7708
    if-nez p1, :cond_0

    .line 7709
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7711
    :cond_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->bitField0_:I

    .line 7712
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;

    .line 7713
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->onChanged()V

    .line 7714
    return-object p0
.end method
