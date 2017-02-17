.class public final Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Protobuf.java"

# interfaces
.implements Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;",
        ">;",
        "Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private errormessage_:Ljava/lang/Object;

.field private resultBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$ArgumentOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private result_:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

.field private sessionId_:Ljava/lang/Object;

.field private status_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 5465
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 5664
    const-string v0, ""

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->sessionId_:Ljava/lang/Object;

    .line 5700
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;->SUCCESS:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->status_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;

    .line 5724
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->result_:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    .line 5814
    const-string v0, ""

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->errormessage_:Ljava/lang/Object;

    .line 5466
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->maybeForceBuilderInitialization()V

    .line 5467
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 5470
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 5664
    const-string v0, ""

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->sessionId_:Ljava/lang/Object;

    .line 5700
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;->SUCCESS:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->status_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;

    .line 5724
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->result_:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    .line 5814
    const-string v0, ""

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->errormessage_:Ljava/lang/Object;

    .line 5471
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->maybeForceBuilderInitialization()V

    .line 5472
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;)V
    .locals 0

    .prologue
    .line 5469
    invoke-direct {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5520
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$18()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;
    .locals 1

    .prologue
    .line 5478
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->create()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5522
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

    move-result-object v0

    .line 5523
    .local v0, "result":Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;
    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5524
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    .line 5525
    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    .line 5524
    throw v1

    .line 5527
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;
    .locals 1

    .prologue
    .line 5479
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;

    invoke-direct {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5456
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_ReflectionResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$26()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getResultFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$ArgumentOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5802
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->resultBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 5803
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 5805
    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->result_:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    .line 5806
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    .line 5807
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    .line 5803
    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->resultBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 5808
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->result_:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    .line 5810
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->resultBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 5474
    # getter for: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->access$7()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5475
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->getResultFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 5477
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;
    .locals 2

    .prologue
    .line 5513
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

    move-result-object v0

    .line 5514
    .local v0, "result":Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;
    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5515
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 5517
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;
    .locals 5

    .prologue
    .line 5531
    new-instance v1, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;-><init>(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;)V

    .line 5532
    .local v1, "result":Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->bitField0_:I

    .line 5533
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 5534
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 5535
    or-int/lit8 v2, v2, 0x1

    .line 5537
    :cond_0
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->sessionId_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->access$9(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;Ljava/lang/Object;)V

    .line 5538
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 5539
    or-int/lit8 v2, v2, 0x2

    .line 5541
    :cond_1
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->status_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->access$10(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;)V

    .line 5542
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 5543
    or-int/lit8 v2, v2, 0x4

    .line 5545
    :cond_2
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->resultBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v3, :cond_4

    .line 5546
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->result_:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->access$11(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;)V

    .line 5550
    :goto_0
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 5551
    or-int/lit8 v2, v2, 0x8

    .line 5553
    :cond_3
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->errormessage_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->access$12(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;Ljava/lang/Object;)V

    .line 5554
    invoke-static {v1, v2}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->access$13(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;I)V

    .line 5555
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->onBuilt()V

    .line 5556
    return-object v1

    .line 5548
    :cond_4
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->resultBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v3

    check-cast v3, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->access$11(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;)V

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->clear()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->clear()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->clear()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;
    .locals 1

    .prologue
    .line 5483
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 5484
    const-string v0, ""

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->sessionId_:Ljava/lang/Object;

    .line 5485
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->bitField0_:I

    .line 5486
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;->SUCCESS:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->status_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;

    .line 5487
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->bitField0_:I

    .line 5488
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->resultBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 5489
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->result_:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    .line 5493
    :goto_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->bitField0_:I

    .line 5494
    const-string v0, ""

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->errormessage_:Ljava/lang/Object;

    .line 5495
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->bitField0_:I

    .line 5496
    return-object p0

    .line 5491
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->resultBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearErrormessage()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;
    .locals 1

    .prologue
    .line 5838
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->bitField0_:I

    .line 5839
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->getErrormessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->errormessage_:Ljava/lang/Object;

    .line 5840
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->onChanged()V

    .line 5841
    return-object p0
.end method

.method public clearResult()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;
    .locals 1

    .prologue
    .line 5778
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->resultBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 5779
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->result_:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    .line 5780
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->onChanged()V

    .line 5784
    :goto_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->bitField0_:I

    .line 5785
    return-object p0

    .line 5782
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->resultBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearSessionId()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;
    .locals 1

    .prologue
    .line 5688
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->bitField0_:I

    .line 5689
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->getSessionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->sessionId_:Ljava/lang/Object;

    .line 5690
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->onChanged()V

    .line 5691
    return-object p0
.end method

.method public clearStatus()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;
    .locals 1

    .prologue
    .line 5717
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->bitField0_:I

    .line 5718
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;->SUCCESS:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->status_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;

    .line 5719
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->onChanged()V

    .line 5720
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->clone()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->clone()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->clone()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;
    .locals 2

    .prologue
    .line 5500
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->create()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;
    .locals 1

    .prologue
    .line 5509
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5505
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getErrormessage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5819
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->errormessage_:Ljava/lang/Object;

    .line 5820
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 5821
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 5822
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->errormessage_:Ljava/lang/Object;

    .line 5825
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

.method public getResult()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;
    .locals 1

    .prologue
    .line 5731
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->resultBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 5732
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->result_:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    .line 5734
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->resultBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    goto :goto_0
.end method

.method public getResultBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;
    .locals 1

    .prologue
    .line 5788
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->bitField0_:I

    .line 5789
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->onChanged()V

    .line 5790
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->getResultFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    return-object v0
.end method

.method public getResultOrBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ArgumentOrBuilder;
    .locals 1

    .prologue
    .line 5793
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->resultBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 5794
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->resultBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ArgumentOrBuilder;

    .line 5796
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->result_:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    goto :goto_0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5669
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->sessionId_:Ljava/lang/Object;

    .line 5670
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 5671
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 5672
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->sessionId_:Ljava/lang/Object;

    .line 5675
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

.method public getStatus()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;
    .locals 1

    .prologue
    .line 5705
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->status_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;

    return-object v0
.end method

.method public hasErrormessage()Z
    .locals 2

    .prologue
    .line 5816
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->bitField0_:I

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
    .line 5728
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->bitField0_:I

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

    .line 5666
    iget v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->bitField0_:I

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
    .line 5702
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->bitField0_:I

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
    .line 5461
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_ReflectionResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$62()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 5587
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->hasSessionId()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5601
    :cond_0
    :goto_0
    return v0

    .line 5591
    :cond_1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->hasStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5595
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->hasResult()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5596
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->getResult()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5601
    :cond_2
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
    invoke-virtual {p0, p1, p2}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;
    .locals 6
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5610
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v5

    .line 5609
    invoke-static {v5}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v3

    .line 5612
    .local v3, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 5613
    .local v2, "tag":I
    sparse-switch v2, :sswitch_data_0

    .line 5619
    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    .line 5620
    if-nez v5, :cond_0

    .line 5621
    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 5622
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->onChanged()V

    .line 5623
    :goto_1
    return-object p0

    .line 5615
    :sswitch_0
    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 5616
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->onChanged()V

    goto :goto_1

    .line 5628
    :sswitch_1
    iget v5, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->bitField0_:I

    .line 5629
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->sessionId_:Ljava/lang/Object;

    goto :goto_0

    .line 5633
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 5634
    .local v0, "rawValue":I
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;->valueOf(I)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;

    move-result-object v4

    .line 5635
    .local v4, "value":Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;
    if-nez v4, :cond_1

    .line 5636
    const/4 v5, 0x2

    invoke-virtual {v3, v5, v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 5638
    :cond_1
    iget v5, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->bitField0_:I

    .line 5639
    iput-object v4, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->status_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;

    goto :goto_0

    .line 5644
    .end local v0    # "rawValue":I
    .end local v4    # "value":Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;
    :sswitch_3
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    move-result-object v1

    .line 5645
    .local v1, "subBuilder":Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->hasResult()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 5646
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->getResult()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    .line 5648
    :cond_2
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 5649
    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->setResult(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;

    goto :goto_0

    .line 5653
    .end local v1    # "subBuilder":Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;
    :sswitch_4
    iget v5, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->bitField0_:I

    .line 5654
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->errormessage_:Ljava/lang/Object;

    goto :goto_0

    .line 5613
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x42 -> :sswitch_4
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 5560
    instance-of v0, p1, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

    if-eqz v0, :cond_0

    .line 5561
    check-cast p1, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;

    move-result-object p0

    .line 5564
    .end local p0    # "this":Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;
    :goto_0
    return-object p0

    .line 5563
    .restart local p0    # "this":Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;
    .locals 1
    .param p1, "other"    # Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

    .prologue
    .line 5569
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 5583
    :goto_0
    return-object p0

    .line 5570
    :cond_0
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->hasSessionId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5571
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->getSessionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->setSessionId(Ljava/lang/String;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;

    .line 5573
    :cond_1
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5574
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->getStatus()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->setStatus(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;

    .line 5576
    :cond_2
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->hasResult()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5577
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->getResult()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->mergeResult(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;

    .line 5579
    :cond_3
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->hasErrormessage()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5580
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->getErrormessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->setErrormessage(Ljava/lang/String;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;

    .line 5582
    :cond_4
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeResult(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    .prologue
    .line 5762
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->resultBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 5763
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 5764
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->result_:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 5766
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->result_:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->newBuilder(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v0

    .line 5765
    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->result_:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    .line 5770
    :goto_0
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->onChanged()V

    .line 5774
    :goto_1
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->bitField0_:I

    .line 5775
    return-object p0

    .line 5768
    :cond_0
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->result_:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    goto :goto_0

    .line 5772
    :cond_1
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->resultBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public setErrormessage(Ljava/lang/String;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 5829
    if-nez p1, :cond_0

    .line 5830
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5832
    :cond_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->bitField0_:I

    .line 5833
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->errormessage_:Ljava/lang/Object;

    .line 5834
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->onChanged()V

    .line 5835
    return-object p0
.end method

.method setErrormessage(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 5844
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->bitField0_:I

    .line 5845
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->errormessage_:Ljava/lang/Object;

    .line 5846
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->onChanged()V

    .line 5847
    return-void
.end method

.method public setResult(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    .prologue
    .line 5752
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->resultBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 5753
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->result_:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    .line 5754
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->onChanged()V

    .line 5758
    :goto_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->bitField0_:I

    .line 5759
    return-object p0

    .line 5756
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->resultBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setResult(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    .prologue
    .line 5738
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->resultBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 5739
    if-nez p1, :cond_0

    .line 5740
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5742
    :cond_0
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->result_:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    .line 5743
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->onChanged()V

    .line 5747
    :goto_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->bitField0_:I

    .line 5748
    return-object p0

    .line 5745
    :cond_1
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->resultBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setSessionId(Ljava/lang/String;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 5679
    if-nez p1, :cond_0

    .line 5680
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5682
    :cond_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->bitField0_:I

    .line 5683
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->sessionId_:Ljava/lang/Object;

    .line 5684
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->onChanged()V

    .line 5685
    return-object p0
.end method

.method setSessionId(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 5694
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->bitField0_:I

    .line 5695
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->sessionId_:Ljava/lang/Object;

    .line 5696
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->onChanged()V

    .line 5697
    return-void
.end method

.method public setStatus(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;

    .prologue
    .line 5708
    if-nez p1, :cond_0

    .line 5709
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5711
    :cond_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->bitField0_:I

    .line 5712
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->status_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;

    .line 5713
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->onChanged()V

    .line 5714
    return-object p0
.end method
