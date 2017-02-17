.class public final Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Protobuf.java"

# interfaces
.implements Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetPropertyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;",
        ">;",
        "Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetPropertyOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReferenceOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

.field private property_:Ljava/lang/Object;

.field private valueBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
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

.field private value_:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2448
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 2632
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    .line 2722
    const-string v0, ""

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->property_:Ljava/lang/Object;

    .line 2758
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->value_:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    .line 2449
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->maybeForceBuilderInitialization()V

    .line 2450
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 2453
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 2632
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    .line 2722
    const-string v0, ""

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->property_:Ljava/lang/Object;

    .line 2758
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->value_:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    .line 2454
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->maybeForceBuilderInitialization()V

    .line 2455
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;)V
    .locals 0

    .prologue
    .line 2452
    invoke-direct {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2506
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$18()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;
    .locals 1

    .prologue
    .line 2462
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->create()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2508
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

    move-result-object v0

    .line 2509
    .local v0, "result":Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;
    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2510
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    .line 2511
    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    .line 2510
    throw v1

    .line 2513
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;
    .locals 1

    .prologue
    .line 2463
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;

    invoke-direct {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2439
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_ReflectionRequest_SetProperty_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$17()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getObjectFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReferenceOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2710
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2711
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 2713
    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    .line 2714
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    .line 2715
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    .line 2711
    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 2716
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    .line 2718
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private getValueFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
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
    .line 2836
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->valueBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2837
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 2839
    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->value_:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    .line 2840
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    .line 2841
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    .line 2837
    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->valueBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 2842
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->value_:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    .line 2844
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->valueBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 2457
    # getter for: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->access$7()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2458
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->getObjectFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 2459
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->getValueFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 2461
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;
    .locals 2

    .prologue
    .line 2499
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

    move-result-object v0

    .line 2500
    .local v0, "result":Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;
    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2501
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 2503
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;
    .locals 5

    .prologue
    .line 2517
    new-instance v1, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;-><init>(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;)V

    .line 2518
    .local v1, "result":Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->bitField0_:I

    .line 2519
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 2520
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 2521
    or-int/lit8 v2, v2, 0x1

    .line 2523
    :cond_0
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v3, :cond_3

    .line 2524
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->access$9(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;)V

    .line 2528
    :goto_0
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 2529
    or-int/lit8 v2, v2, 0x2

    .line 2531
    :cond_1
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->property_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->access$10(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;Ljava/lang/Object;)V

    .line 2532
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 2533
    or-int/lit8 v2, v2, 0x4

    .line 2535
    :cond_2
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->valueBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v3, :cond_4

    .line 2536
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->value_:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->access$11(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;)V

    .line 2540
    :goto_1
    invoke-static {v1, v2}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->access$12(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;I)V

    .line 2541
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->onBuilt()V

    .line 2542
    return-object v1

    .line 2526
    :cond_3
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v3

    check-cast v3, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->access$9(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;)V

    goto :goto_0

    .line 2538
    :cond_4
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->valueBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v3

    check-cast v3, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->access$11(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;)V

    goto :goto_1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->clear()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->clear()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->clear()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;
    .locals 1

    .prologue
    .line 2467
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 2468
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2469
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    .line 2473
    :goto_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->bitField0_:I

    .line 2474
    const-string v0, ""

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->property_:Ljava/lang/Object;

    .line 2475
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->bitField0_:I

    .line 2476
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->valueBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 2477
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->value_:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    .line 2481
    :goto_1
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->bitField0_:I

    .line 2482
    return-object p0

    .line 2471
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0

    .line 2479
    :cond_1
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->valueBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public clearObject()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;
    .locals 1

    .prologue
    .line 2686
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2687
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    .line 2688
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->onChanged()V

    .line 2692
    :goto_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->bitField0_:I

    .line 2693
    return-object p0

    .line 2690
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearProperty()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;
    .locals 1

    .prologue
    .line 2746
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->bitField0_:I

    .line 2747
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->getProperty()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->property_:Ljava/lang/Object;

    .line 2748
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->onChanged()V

    .line 2749
    return-object p0
.end method

.method public clearValue()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;
    .locals 1

    .prologue
    .line 2812
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->valueBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2813
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->value_:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    .line 2814
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->onChanged()V

    .line 2818
    :goto_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->bitField0_:I

    .line 2819
    return-object p0

    .line 2816
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->valueBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->clone()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->clone()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->clone()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;
    .locals 2

    .prologue
    .line 2486
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->create()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;
    .locals 1

    .prologue
    .line 2495
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2491
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getObject()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;
    .locals 1

    .prologue
    .line 2639
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2640
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    .line 2642
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    goto :goto_0
.end method

.method public getObjectBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;
    .locals 1

    .prologue
    .line 2696
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->bitField0_:I

    .line 2697
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->onChanged()V

    .line 2698
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->getObjectFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;

    return-object v0
.end method

.method public getObjectOrBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReferenceOrBuilder;
    .locals 1

    .prologue
    .line 2701
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 2702
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReferenceOrBuilder;

    .line 2704
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    goto :goto_0
.end method

.method public getProperty()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2727
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->property_:Ljava/lang/Object;

    .line 2728
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2729
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2730
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->property_:Ljava/lang/Object;

    .line 2733
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

.method public getValue()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;
    .locals 1

    .prologue
    .line 2765
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->valueBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2766
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->value_:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    .line 2768
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->valueBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    goto :goto_0
.end method

.method public getValueBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;
    .locals 1

    .prologue
    .line 2822
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->bitField0_:I

    .line 2823
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->onChanged()V

    .line 2824
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->getValueFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    return-object v0
.end method

.method public getValueOrBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ArgumentOrBuilder;
    .locals 1

    .prologue
    .line 2827
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->valueBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 2828
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->valueBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ArgumentOrBuilder;

    .line 2830
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->value_:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    goto :goto_0
.end method

.method public hasObject()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2636
    iget v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasProperty()Z
    .locals 2

    .prologue
    .line 2724
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->bitField0_:I

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

.method public hasValue()Z
    .locals 2

    .prologue
    .line 2762
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 2444
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_ReflectionRequest_SetProperty_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$58()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 2570
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2571
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->getValue()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2573
    const/4 v0, 0x0

    .line 2576
    :goto_0
    return v0

    :cond_0
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
    invoke-virtual {p0, p1, p2}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2585
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    .line 2584
    invoke-static {v3}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 2587
    .local v2, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 2588
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 2594
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    .line 2595
    if-nez v3, :cond_0

    .line 2596
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 2597
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->onChanged()V

    .line 2598
    :goto_1
    return-object p0

    .line 2590
    :sswitch_0
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 2591
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->onChanged()V

    goto :goto_1

    .line 2603
    :sswitch_1
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;

    move-result-object v0

    .line 2604
    .local v0, "subBuilder":Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->hasObject()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2605
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->getObject()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;)Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;

    .line 2607
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2608
    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->setObject(Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;

    goto :goto_0

    .line 2612
    .end local v0    # "subBuilder":Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;
    :sswitch_2
    iget v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->bitField0_:I

    .line 2613
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->property_:Ljava/lang/Object;

    goto :goto_0

    .line 2617
    :sswitch_3
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    move-result-object v0

    .line 2618
    .local v0, "subBuilder":Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->hasValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2619
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->getValue()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    .line 2621
    :cond_2
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2622
    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->setValue(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;

    goto :goto_0

    .line 2588
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 2546
    instance-of v0, p1, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

    if-eqz v0, :cond_0

    .line 2547
    check-cast p1, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;

    move-result-object p0

    .line 2550
    .end local p0    # "this":Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;
    :goto_0
    return-object p0

    .line 2549
    .restart local p0    # "this":Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;
    .locals 1
    .param p1, "other"    # Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

    .prologue
    .line 2555
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 2566
    :goto_0
    return-object p0

    .line 2556
    :cond_0
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->hasObject()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2557
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->getObject()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->mergeObject(Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;

    .line 2559
    :cond_1
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->hasProperty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2560
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->getProperty()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->setProperty(Ljava/lang/String;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;

    .line 2562
    :cond_2
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2563
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->getValue()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->mergeValue(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;

    .line 2565
    :cond_3
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeObject(Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;
    .locals 2
    .param p1, "value"    # Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    .prologue
    .line 2670
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 2671
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2672
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2674
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;->newBuilder(Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;)Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;)Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    move-result-object v0

    .line 2673
    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    .line 2678
    :goto_0
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->onChanged()V

    .line 2682
    :goto_1
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->bitField0_:I

    .line 2683
    return-object p0

    .line 2676
    :cond_0
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    goto :goto_0

    .line 2680
    :cond_1
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public mergeValue(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;
    .locals 2
    .param p1, "value"    # Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    .prologue
    .line 2796
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->valueBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 2797
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2798
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->value_:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2800
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->value_:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->newBuilder(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v0

    .line 2799
    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->value_:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    .line 2804
    :goto_0
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->onChanged()V

    .line 2808
    :goto_1
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->bitField0_:I

    .line 2809
    return-object p0

    .line 2802
    :cond_0
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->value_:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    goto :goto_0

    .line 2806
    :cond_1
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->valueBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public setObject(Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;

    .prologue
    .line 2660
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2661
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    .line 2662
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->onChanged()V

    .line 2666
    :goto_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->bitField0_:I

    .line 2667
    return-object p0

    .line 2664
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setObject(Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;
    .locals 1
    .param p1, "value"    # Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    .prologue
    .line 2646
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 2647
    if-nez p1, :cond_0

    .line 2648
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2650
    :cond_0
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    .line 2651
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->onChanged()V

    .line 2655
    :goto_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->bitField0_:I

    .line 2656
    return-object p0

    .line 2653
    :cond_1
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setProperty(Ljava/lang/String;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2737
    if-nez p1, :cond_0

    .line 2738
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2740
    :cond_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->bitField0_:I

    .line 2741
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->property_:Ljava/lang/Object;

    .line 2742
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->onChanged()V

    .line 2743
    return-object p0
.end method

.method setProperty(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2752
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->bitField0_:I

    .line 2753
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->property_:Ljava/lang/Object;

    .line 2754
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->onChanged()V

    .line 2755
    return-void
.end method

.method public setValue(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    .prologue
    .line 2786
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->valueBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2787
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->value_:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    .line 2788
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->onChanged()V

    .line 2792
    :goto_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->bitField0_:I

    .line 2793
    return-object p0

    .line 2790
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->valueBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setValue(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;
    .locals 1
    .param p1, "value"    # Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    .prologue
    .line 2772
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->valueBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 2773
    if-nez p1, :cond_0

    .line 2774
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2776
    :cond_0
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->value_:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    .line 2777
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->onChanged()V

    .line 2781
    :goto_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->bitField0_:I

    .line 2782
    return-object p0

    .line 2779
    :cond_1
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->valueBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method
