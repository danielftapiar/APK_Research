.class public final Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Protobuf.java"

# interfaces
.implements Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$ResolveOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;",
        ">;",
        "Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$ResolveOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private classname_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 503
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 627
    const-string v0, ""

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;->classname_:Ljava/lang/Object;

    .line 504
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;->maybeForceBuilderInitialization()V

    .line 505
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 508
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 627
    const-string v0, ""

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;->classname_:Ljava/lang/Object;

    .line 509
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;->maybeForceBuilderInitialization()V

    .line 510
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;)V
    .locals 0

    .prologue
    .line 507
    invoke-direct {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 547
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$18()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;
    .locals 1

    .prologue
    .line 515
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;->create()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 549
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;

    move-result-object v0

    .line 550
    .local v0, "result":Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;
    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 551
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    .line 552
    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    .line 551
    throw v1

    .line 554
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;
    .locals 1

    .prologue
    .line 516
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;

    invoke-direct {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 494
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_ReflectionRequest_Resolve_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$8()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 512
    # getter for: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;->access$7()Z

    .line 514
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;
    .locals 2

    .prologue
    .line 540
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;

    move-result-object v0

    .line 541
    .local v0, "result":Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;
    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 542
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 544
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;
    .locals 5

    .prologue
    .line 558
    new-instance v1, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;-><init>(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;)V

    .line 559
    .local v1, "result":Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;->bitField0_:I

    .line 560
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 561
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 562
    or-int/lit8 v2, v2, 0x1

    .line 564
    :cond_0
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;->classname_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;->access$9(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;Ljava/lang/Object;)V

    .line 565
    invoke-static {v1, v2}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;->access$10(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;I)V

    .line 566
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;->onBuilt()V

    .line 567
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;->clear()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;->clear()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;->clear()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;
    .locals 1

    .prologue
    .line 520
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 521
    const-string v0, ""

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;->classname_:Ljava/lang/Object;

    .line 522
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;->bitField0_:I

    .line 523
    return-object p0
.end method

.method public clearClassname()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;
    .locals 1

    .prologue
    .line 651
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;->bitField0_:I

    .line 652
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;->getClassname()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;->classname_:Ljava/lang/Object;

    .line 653
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;->onChanged()V

    .line 654
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;->clone()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;->clone()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;->clone()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;
    .locals 2

    .prologue
    .line 527
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;->create()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getClassname()Ljava/lang/String;
    .locals 3

    .prologue
    .line 632
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;->classname_:Ljava/lang/Object;

    .line 633
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 634
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 635
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;->classname_:Ljava/lang/Object;

    .line 638
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

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;->getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;->getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;
    .locals 1

    .prologue
    .line 536
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 532
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public hasClassname()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 629
    iget v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;->bitField0_:I

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
    .line 499
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_ReflectionRequest_Resolve_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$55()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 589
    const/4 v0, 0x1

    return v0
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
    invoke-virtual {p0, p1, p2}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 598
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    .line 597
    invoke-static {v2}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    .line 600
    .local v1, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 601
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 607
    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    .line 608
    if-nez v2, :cond_0

    .line 609
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 610
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;->onChanged()V

    .line 611
    :goto_1
    return-object p0

    .line 603
    :sswitch_0
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 604
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;->onChanged()V

    goto :goto_1

    .line 616
    :sswitch_1
    iget v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;->bitField0_:I

    .line 617
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;->classname_:Ljava/lang/Object;

    goto :goto_0

    .line 601
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 571
    instance-of v0, p1, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;

    if-eqz v0, :cond_0

    .line 572
    check-cast p1, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;

    move-result-object p0

    .line 575
    .end local p0    # "this":Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;
    :goto_0
    return-object p0

    .line 574
    .restart local p0    # "this":Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;
    .locals 1
    .param p1, "other"    # Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;

    .prologue
    .line 580
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 585
    :goto_0
    return-object p0

    .line 581
    :cond_0
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;->hasClassname()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 582
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;->getClassname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;->setClassname(Ljava/lang/String;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;

    .line 584
    :cond_1
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public setClassname(Ljava/lang/String;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 642
    if-nez p1, :cond_0

    .line 643
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 645
    :cond_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;->bitField0_:I

    .line 646
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;->classname_:Ljava/lang/Object;

    .line 647
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;->onChanged()V

    .line 648
    return-object p0
.end method

.method setClassname(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 657
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;->bitField0_:I

    .line 658
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;->classname_:Ljava/lang/Object;

    .line 659
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;->onChanged()V

    .line 660
    return-void
.end method
