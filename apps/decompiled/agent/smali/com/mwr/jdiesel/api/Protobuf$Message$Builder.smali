.class public final Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Protobuf.java"

# interfaces
.implements Lcom/mwr/jdiesel/api/Protobuf$MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mwr/jdiesel/api/Protobuf$Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;",
        ">;",
        "Lcom/mwr/jdiesel/api/Protobuf$MessageOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private id_:I

.field private reflectionRequestBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequestOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private reflectionRequest_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

.field private reflectionResponseBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponseOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private reflectionResponse_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

.field private systemRequestBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequestOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private systemRequest_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

.field private systemResponseBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponseOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private systemResponse_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

.field private type_:Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 13227
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 13532
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;->SYSTEM_REQUEST:Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;

    .line 13556
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->systemRequest_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    .line 13646
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->systemResponse_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    .line 13736
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->reflectionRequest_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    .line 13826
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->reflectionResponse_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

    .line 13228
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->maybeForceBuilderInitialization()V

    .line 13229
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 13232
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 13532
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;->SYSTEM_REQUEST:Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;

    .line 13556
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->systemRequest_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    .line 13646
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->systemResponse_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    .line 13736
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->reflectionRequest_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    .line 13826
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->reflectionResponse_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

    .line 13233
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->maybeForceBuilderInitialization()V

    .line 13234
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;)V
    .locals 0

    .prologue
    .line 13231
    invoke-direct {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13301
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$18()Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;
    .locals 1

    .prologue
    .line 13243
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->create()Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13303
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message;

    move-result-object v0

    .line 13304
    .local v0, "result":Lcom/mwr/jdiesel/api/Protobuf$Message;
    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 13305
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    .line 13306
    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    .line 13305
    throw v1

    .line 13308
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;
    .locals 1

    .prologue
    .line 13244
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    invoke-direct {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 13218
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$2()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getReflectionRequestFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequestOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13814
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->reflectionRequestBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 13815
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 13817
    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->reflectionRequest_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    .line 13818
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    .line 13819
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    .line 13815
    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->reflectionRequestBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 13820
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->reflectionRequest_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    .line 13822
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->reflectionRequestBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private getReflectionResponseFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponseOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13904
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->reflectionResponseBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 13905
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 13907
    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->reflectionResponse_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

    .line 13908
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    .line 13909
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    .line 13905
    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->reflectionResponseBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 13910
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->reflectionResponse_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

    .line 13912
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->reflectionResponseBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private getSystemRequestFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequestOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13634
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->systemRequestBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 13635
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 13637
    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->systemRequest_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    .line 13638
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    .line 13639
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    .line 13635
    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->systemRequestBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 13640
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->systemRequest_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    .line 13642
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->systemRequestBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private getSystemResponseFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponseOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13724
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->systemResponseBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 13725
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 13727
    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->systemResponse_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    .line 13728
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    .line 13729
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    .line 13725
    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->systemResponseBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 13730
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->systemResponse_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    .line 13732
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->systemResponseBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 13236
    # getter for: Lcom/mwr/jdiesel/api/Protobuf$Message;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message;->access$7()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13237
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->getSystemRequestFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 13238
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->getSystemResponseFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 13239
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->getReflectionRequestFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 13240
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->getReflectionResponseFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 13242
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/mwr/jdiesel/api/Protobuf$Message;
    .locals 2

    .prologue
    .line 13294
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message;

    move-result-object v0

    .line 13295
    .local v0, "result":Lcom/mwr/jdiesel/api/Protobuf$Message;
    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 13296
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 13298
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message;
    .locals 5

    .prologue
    .line 13312
    new-instance v1, Lcom/mwr/jdiesel/api/Protobuf$Message;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message;-><init>(Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;Lcom/mwr/jdiesel/api/Protobuf$Message;)V

    .line 13313
    .local v1, "result":Lcom/mwr/jdiesel/api/Protobuf$Message;
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->bitField0_:I

    .line 13314
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 13315
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 13316
    or-int/lit8 v2, v2, 0x1

    .line 13318
    :cond_0
    iget v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->id_:I

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message;->access$9(Lcom/mwr/jdiesel/api/Protobuf$Message;I)V

    .line 13319
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 13320
    or-int/lit8 v2, v2, 0x2

    .line 13322
    :cond_1
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message;->access$10(Lcom/mwr/jdiesel/api/Protobuf$Message;Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;)V

    .line 13323
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 13324
    or-int/lit8 v2, v2, 0x4

    .line 13326
    :cond_2
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->systemRequestBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v3, :cond_6

    .line 13327
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->systemRequest_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message;->access$11(Lcom/mwr/jdiesel/api/Protobuf$Message;Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;)V

    .line 13331
    :goto_0
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 13332
    or-int/lit8 v2, v2, 0x8

    .line 13334
    :cond_3
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->systemResponseBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v3, :cond_7

    .line 13335
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->systemResponse_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message;->access$12(Lcom/mwr/jdiesel/api/Protobuf$Message;Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;)V

    .line 13339
    :goto_1
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 13340
    or-int/lit8 v2, v2, 0x10

    .line 13342
    :cond_4
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->reflectionRequestBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v3, :cond_8

    .line 13343
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->reflectionRequest_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message;->access$13(Lcom/mwr/jdiesel/api/Protobuf$Message;Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;)V

    .line 13347
    :goto_2
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 13348
    or-int/lit8 v2, v2, 0x20

    .line 13350
    :cond_5
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->reflectionResponseBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v3, :cond_9

    .line 13351
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->reflectionResponse_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message;->access$14(Lcom/mwr/jdiesel/api/Protobuf$Message;Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;)V

    .line 13355
    :goto_3
    invoke-static {v1, v2}, Lcom/mwr/jdiesel/api/Protobuf$Message;->access$15(Lcom/mwr/jdiesel/api/Protobuf$Message;I)V

    .line 13356
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->onBuilt()V

    .line 13357
    return-object v1

    .line 13329
    :cond_6
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->systemRequestBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v3

    check-cast v3, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message;->access$11(Lcom/mwr/jdiesel/api/Protobuf$Message;Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;)V

    goto :goto_0

    .line 13337
    :cond_7
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->systemResponseBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v3

    check-cast v3, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message;->access$12(Lcom/mwr/jdiesel/api/Protobuf$Message;Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;)V

    goto :goto_1

    .line 13345
    :cond_8
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->reflectionRequestBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v3

    check-cast v3, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message;->access$13(Lcom/mwr/jdiesel/api/Protobuf$Message;Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;)V

    goto :goto_2

    .line 13353
    :cond_9
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->reflectionResponseBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v3

    check-cast v3, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message;->access$14(Lcom/mwr/jdiesel/api/Protobuf$Message;Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;)V

    goto :goto_3
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->clear()Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->clear()Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->clear()Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;
    .locals 1

    .prologue
    .line 13248
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 13249
    const/4 v0, 0x0

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->id_:I

    .line 13250
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->bitField0_:I

    .line 13251
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;->SYSTEM_REQUEST:Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;

    .line 13252
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->bitField0_:I

    .line 13253
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->systemRequestBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 13254
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->systemRequest_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    .line 13258
    :goto_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->bitField0_:I

    .line 13259
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->systemResponseBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 13260
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->systemResponse_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    .line 13264
    :goto_1
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->bitField0_:I

    .line 13265
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->reflectionRequestBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_2

    .line 13266
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->reflectionRequest_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    .line 13270
    :goto_2
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->bitField0_:I

    .line 13271
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->reflectionResponseBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_3

    .line 13272
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->reflectionResponse_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

    .line 13276
    :goto_3
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->bitField0_:I

    .line 13277
    return-object p0

    .line 13256
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->systemRequestBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0

    .line 13262
    :cond_1
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->systemResponseBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1

    .line 13268
    :cond_2
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->reflectionRequestBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_2

    .line 13274
    :cond_3
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->reflectionResponseBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_3
.end method

.method public clearId()Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;
    .locals 1

    .prologue
    .line 13525
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->bitField0_:I

    .line 13526
    const/4 v0, 0x0

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->id_:I

    .line 13527
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->onChanged()V

    .line 13528
    return-object p0
.end method

.method public clearReflectionRequest()Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;
    .locals 1

    .prologue
    .line 13790
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->reflectionRequestBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 13791
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->reflectionRequest_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    .line 13792
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->onChanged()V

    .line 13796
    :goto_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->bitField0_:I

    .line 13797
    return-object p0

    .line 13794
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->reflectionRequestBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearReflectionResponse()Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;
    .locals 1

    .prologue
    .line 13880
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->reflectionResponseBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 13881
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->reflectionResponse_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

    .line 13882
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->onChanged()V

    .line 13886
    :goto_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->bitField0_:I

    .line 13887
    return-object p0

    .line 13884
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->reflectionResponseBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearSystemRequest()Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;
    .locals 1

    .prologue
    .line 13610
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->systemRequestBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 13611
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->systemRequest_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    .line 13612
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->onChanged()V

    .line 13616
    :goto_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->bitField0_:I

    .line 13617
    return-object p0

    .line 13614
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->systemRequestBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearSystemResponse()Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;
    .locals 1

    .prologue
    .line 13700
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->systemResponseBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 13701
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->systemResponse_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    .line 13702
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->onChanged()V

    .line 13706
    :goto_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->bitField0_:I

    .line 13707
    return-object p0

    .line 13704
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->systemResponseBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearType()Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;
    .locals 1

    .prologue
    .line 13549
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->bitField0_:I

    .line 13550
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;->SYSTEM_REQUEST:Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;

    .line 13551
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->onChanged()V

    .line 13552
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->clone()Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->clone()Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->clone()Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;
    .locals 2

    .prologue
    .line 13281
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->create()Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message;)Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message;
    .locals 1

    .prologue
    .line 13290
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 13286
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 13516
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->id_:I

    return v0
.end method

.method public getReflectionRequest()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;
    .locals 1

    .prologue
    .line 13743
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->reflectionRequestBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 13744
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->reflectionRequest_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    .line 13746
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->reflectionRequestBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    goto :goto_0
.end method

.method public getReflectionRequestBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;
    .locals 1

    .prologue
    .line 13800
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->bitField0_:I

    .line 13801
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->onChanged()V

    .line 13802
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->getReflectionRequestFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;

    return-object v0
.end method

.method public getReflectionRequestOrBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequestOrBuilder;
    .locals 1

    .prologue
    .line 13805
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->reflectionRequestBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 13806
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->reflectionRequestBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequestOrBuilder;

    .line 13808
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->reflectionRequest_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    goto :goto_0
.end method

.method public getReflectionResponse()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;
    .locals 1

    .prologue
    .line 13833
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->reflectionResponseBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 13834
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->reflectionResponse_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

    .line 13836
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->reflectionResponseBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

    goto :goto_0
.end method

.method public getReflectionResponseBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;
    .locals 1

    .prologue
    .line 13890
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->bitField0_:I

    .line 13891
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->onChanged()V

    .line 13892
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->getReflectionResponseFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;

    return-object v0
.end method

.method public getReflectionResponseOrBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponseOrBuilder;
    .locals 1

    .prologue
    .line 13895
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->reflectionResponseBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 13896
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->reflectionResponseBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponseOrBuilder;

    .line 13898
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->reflectionResponse_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

    goto :goto_0
.end method

.method public getSystemRequest()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;
    .locals 1

    .prologue
    .line 13563
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->systemRequestBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 13564
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->systemRequest_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    .line 13566
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->systemRequestBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    goto :goto_0
.end method

.method public getSystemRequestBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;
    .locals 1

    .prologue
    .line 13620
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->bitField0_:I

    .line 13621
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->onChanged()V

    .line 13622
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->getSystemRequestFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;

    return-object v0
.end method

.method public getSystemRequestOrBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequestOrBuilder;
    .locals 1

    .prologue
    .line 13625
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->systemRequestBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 13626
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->systemRequestBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequestOrBuilder;

    .line 13628
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->systemRequest_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    goto :goto_0
.end method

.method public getSystemResponse()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;
    .locals 1

    .prologue
    .line 13653
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->systemResponseBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 13654
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->systemResponse_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    .line 13656
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->systemResponseBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    goto :goto_0
.end method

.method public getSystemResponseBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;
    .locals 1

    .prologue
    .line 13710
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->bitField0_:I

    .line 13711
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->onChanged()V

    .line 13712
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->getSystemResponseFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;

    return-object v0
.end method

.method public getSystemResponseOrBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponseOrBuilder;
    .locals 1

    .prologue
    .line 13715
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->systemResponseBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 13716
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->systemResponseBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponseOrBuilder;

    .line 13718
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->systemResponse_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    goto :goto_0
.end method

.method public getType()Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;
    .locals 1

    .prologue
    .line 13537
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;

    return-object v0
.end method

.method public hasId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 13513
    iget v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->bitField0_:I

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
    .line 13740
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->bitField0_:I

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
    .line 13830
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->bitField0_:I

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
    .line 13560
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->bitField0_:I

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
    .line 13650
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->bitField0_:I

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
    .line 13534
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->bitField0_:I

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
    .line 13223
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$72()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 13394
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->hasId()Z

    move-result v1

    if-nez v1, :cond_1

    .line 13426
    :cond_0
    :goto_0
    return v0

    .line 13398
    :cond_1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->hasType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13402
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->hasSystemRequest()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 13403
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->getSystemRequest()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13408
    :cond_2
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->hasSystemResponse()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 13409
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->getSystemResponse()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13414
    :cond_3
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->hasReflectionRequest()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 13415
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->getReflectionRequest()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13420
    :cond_4
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->hasReflectionResponse()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 13421
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->getReflectionResponse()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13426
    :cond_5
    const/4 v0, 0x1

    goto :goto_0
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
    invoke-virtual {p0, p1, p2}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;
    .locals 6
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13435
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v5

    .line 13434
    invoke-static {v5}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v3

    .line 13437
    .local v3, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 13438
    .local v2, "tag":I
    sparse-switch v2, :sswitch_data_0

    .line 13444
    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    .line 13445
    if-nez v5, :cond_0

    .line 13446
    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 13447
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->onChanged()V

    .line 13448
    :goto_1
    return-object p0

    .line 13440
    :sswitch_0
    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 13441
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->onChanged()V

    goto :goto_1

    .line 13453
    :sswitch_1
    iget v5, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->bitField0_:I

    .line 13454
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->id_:I

    goto :goto_0

    .line 13458
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 13459
    .local v0, "rawValue":I
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;->valueOf(I)Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;

    move-result-object v4

    .line 13460
    .local v4, "value":Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;
    if-nez v4, :cond_1

    .line 13461
    const/4 v5, 0x2

    invoke-virtual {v3, v5, v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 13463
    :cond_1
    iget v5, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->bitField0_:I

    .line 13464
    iput-object v4, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;

    goto :goto_0

    .line 13469
    .end local v0    # "rawValue":I
    .end local v4    # "value":Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;
    :sswitch_3
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;

    move-result-object v1

    .line 13470
    .local v1, "subBuilder":Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->hasSystemRequest()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 13471
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->getSystemRequest()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;

    .line 13473
    :cond_2
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 13474
    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->setSystemRequest(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;)Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    goto :goto_0

    .line 13478
    .end local v1    # "subBuilder":Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;
    :sswitch_4
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;

    move-result-object v1

    .line 13479
    .local v1, "subBuilder":Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->hasSystemResponse()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 13480
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->getSystemResponse()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;

    .line 13482
    :cond_3
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 13483
    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->setSystemResponse(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;)Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    goto :goto_0

    .line 13487
    .end local v1    # "subBuilder":Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;
    :sswitch_5
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;

    move-result-object v1

    .line 13488
    .local v1, "subBuilder":Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->hasReflectionRequest()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 13489
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->getReflectionRequest()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;

    .line 13491
    :cond_4
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 13492
    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->setReflectionRequest(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;)Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    goto/16 :goto_0

    .line 13496
    .end local v1    # "subBuilder":Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;
    :sswitch_6
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;

    move-result-object v1

    .line 13497
    .local v1, "subBuilder":Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->hasReflectionResponse()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 13498
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->getReflectionResponse()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;

    .line 13500
    :cond_5
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 13501
    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->setReflectionResponse(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;)Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    goto/16 :goto_0

    .line 13438
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x2a -> :sswitch_3
        0x32 -> :sswitch_4
        0x3a -> :sswitch_5
        0x42 -> :sswitch_6
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 13361
    instance-of v0, p1, Lcom/mwr/jdiesel/api/Protobuf$Message;

    if-eqz v0, :cond_0

    .line 13362
    check-cast p1, Lcom/mwr/jdiesel/api/Protobuf$Message;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message;)Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    move-result-object p0

    .line 13365
    .end local p0    # "this":Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;
    :goto_0
    return-object p0

    .line 13364
    .restart local p0    # "this":Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message;)Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;
    .locals 1
    .param p1, "other"    # Lcom/mwr/jdiesel/api/Protobuf$Message;

    .prologue
    .line 13370
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 13390
    :goto_0
    return-object p0

    .line 13371
    :cond_0
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message;->hasId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13372
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->setId(I)Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    .line 13374
    :cond_1
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message;->hasType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13375
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message;->getType()Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->setType(Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;)Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    .line 13377
    :cond_2
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message;->hasSystemRequest()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13378
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message;->getSystemRequest()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->mergeSystemRequest(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;)Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    .line 13380
    :cond_3
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message;->hasSystemResponse()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 13381
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message;->getSystemResponse()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->mergeSystemResponse(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;)Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    .line 13383
    :cond_4
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message;->hasReflectionRequest()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13384
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message;->getReflectionRequest()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->mergeReflectionRequest(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;)Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    .line 13386
    :cond_5
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message;->hasReflectionResponse()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 13387
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message;->getReflectionResponse()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->mergeReflectionResponse(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;)Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    .line 13389
    :cond_6
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeReflectionRequest(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;)Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;
    .locals 2
    .param p1, "value"    # Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    .prologue
    .line 13774
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->reflectionRequestBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 13775
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 13776
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->reflectionRequest_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 13778
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->reflectionRequest_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->newBuilder(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    move-result-object v0

    .line 13777
    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->reflectionRequest_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    .line 13782
    :goto_0
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->onChanged()V

    .line 13786
    :goto_1
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->bitField0_:I

    .line 13787
    return-object p0

    .line 13780
    :cond_0
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->reflectionRequest_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    goto :goto_0

    .line 13784
    :cond_1
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->reflectionRequestBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public mergeReflectionResponse(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;)Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;
    .locals 2
    .param p1, "value"    # Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

    .prologue
    .line 13864
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->reflectionResponseBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 13865
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 13866
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->reflectionResponse_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 13868
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->reflectionResponse_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->newBuilder(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

    move-result-object v0

    .line 13867
    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->reflectionResponse_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

    .line 13872
    :goto_0
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->onChanged()V

    .line 13876
    :goto_1
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->bitField0_:I

    .line 13877
    return-object p0

    .line 13870
    :cond_0
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->reflectionResponse_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

    goto :goto_0

    .line 13874
    :cond_1
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->reflectionResponseBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public mergeSystemRequest(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;)Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;
    .locals 2
    .param p1, "value"    # Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    .prologue
    .line 13594
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->systemRequestBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 13595
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 13596
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->systemRequest_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 13598
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->systemRequest_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->newBuilder(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    move-result-object v0

    .line 13597
    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->systemRequest_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    .line 13602
    :goto_0
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->onChanged()V

    .line 13606
    :goto_1
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->bitField0_:I

    .line 13607
    return-object p0

    .line 13600
    :cond_0
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->systemRequest_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    goto :goto_0

    .line 13604
    :cond_1
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->systemRequestBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public mergeSystemResponse(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;)Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;
    .locals 2
    .param p1, "value"    # Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    .prologue
    .line 13684
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->systemResponseBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 13685
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 13686
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->systemResponse_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 13688
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->systemResponse_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->newBuilder(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    move-result-object v0

    .line 13687
    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->systemResponse_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    .line 13692
    :goto_0
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->onChanged()V

    .line 13696
    :goto_1
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->bitField0_:I

    .line 13697
    return-object p0

    .line 13690
    :cond_0
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->systemResponse_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    goto :goto_0

    .line 13694
    :cond_1
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->systemResponseBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public setId(I)Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 13519
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->bitField0_:I

    .line 13520
    iput p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->id_:I

    .line 13521
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->onChanged()V

    .line 13522
    return-object p0
.end method

.method public setReflectionRequest(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;

    .prologue
    .line 13764
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->reflectionRequestBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 13765
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->reflectionRequest_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    .line 13766
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->onChanged()V

    .line 13770
    :goto_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->bitField0_:I

    .line 13771
    return-object p0

    .line 13768
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->reflectionRequestBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setReflectionRequest(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;)Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;
    .locals 1
    .param p1, "value"    # Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    .prologue
    .line 13750
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->reflectionRequestBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 13751
    if-nez p1, :cond_0

    .line 13752
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13754
    :cond_0
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->reflectionRequest_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    .line 13755
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->onChanged()V

    .line 13759
    :goto_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->bitField0_:I

    .line 13760
    return-object p0

    .line 13757
    :cond_1
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->reflectionRequestBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setReflectionResponse(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;

    .prologue
    .line 13854
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->reflectionResponseBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 13855
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->reflectionResponse_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

    .line 13856
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->onChanged()V

    .line 13860
    :goto_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->bitField0_:I

    .line 13861
    return-object p0

    .line 13858
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->reflectionResponseBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setReflectionResponse(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;)Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;
    .locals 1
    .param p1, "value"    # Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

    .prologue
    .line 13840
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->reflectionResponseBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 13841
    if-nez p1, :cond_0

    .line 13842
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13844
    :cond_0
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->reflectionResponse_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

    .line 13845
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->onChanged()V

    .line 13849
    :goto_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->bitField0_:I

    .line 13850
    return-object p0

    .line 13847
    :cond_1
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->reflectionResponseBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setSystemRequest(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;

    .prologue
    .line 13584
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->systemRequestBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 13585
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->systemRequest_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    .line 13586
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->onChanged()V

    .line 13590
    :goto_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->bitField0_:I

    .line 13591
    return-object p0

    .line 13588
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->systemRequestBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setSystemRequest(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;)Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;
    .locals 1
    .param p1, "value"    # Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    .prologue
    .line 13570
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->systemRequestBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 13571
    if-nez p1, :cond_0

    .line 13572
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13574
    :cond_0
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->systemRequest_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    .line 13575
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->onChanged()V

    .line 13579
    :goto_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->bitField0_:I

    .line 13580
    return-object p0

    .line 13577
    :cond_1
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->systemRequestBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setSystemResponse(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;

    .prologue
    .line 13674
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->systemResponseBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 13675
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->systemResponse_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    .line 13676
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->onChanged()V

    .line 13680
    :goto_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->bitField0_:I

    .line 13681
    return-object p0

    .line 13678
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->systemResponseBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setSystemResponse(Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;)Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;
    .locals 1
    .param p1, "value"    # Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    .prologue
    .line 13660
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->systemResponseBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 13661
    if-nez p1, :cond_0

    .line 13662
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13664
    :cond_0
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->systemResponse_:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    .line 13665
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->onChanged()V

    .line 13669
    :goto_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->bitField0_:I

    .line 13670
    return-object p0

    .line 13667
    :cond_1
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->systemResponseBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setType(Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;)Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;
    .locals 1
    .param p1, "value"    # Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;

    .prologue
    .line 13540
    if-nez p1, :cond_0

    .line 13541
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13543
    :cond_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->bitField0_:I

    .line 13544
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;

    .line 13545
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;->onChanged()V

    .line 13546
    return-object p0
.end method
