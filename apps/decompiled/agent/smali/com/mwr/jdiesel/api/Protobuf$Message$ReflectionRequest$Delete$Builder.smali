.class public final Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Protobuf.java"

# interfaces
.implements Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$DeleteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;",
        ">;",
        "Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$DeleteOrBuilder;"
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


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 3563
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 3700
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    .line 3564
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->maybeForceBuilderInitialization()V

    .line 3565
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 3568
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 3700
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    .line 3569
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->maybeForceBuilderInitialization()V

    .line 3570
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;)V
    .locals 0

    .prologue
    .line 3567
    invoke-direct {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3612
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$18()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;
    .locals 1

    .prologue
    .line 3576
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->create()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3614
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;

    move-result-object v0

    .line 3615
    .local v0, "result":Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;
    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3616
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    .line 3617
    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    .line 3616
    throw v1

    .line 3619
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;
    .locals 1

    .prologue
    .line 3577
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;

    invoke-direct {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3554
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_ReflectionRequest_Delete_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$23()Lcom/google/protobuf/Descriptors$Descriptor;

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
    .line 3778
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 3779
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 3781
    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    .line 3782
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    .line 3783
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    .line 3779
    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 3784
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    .line 3786
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 3572
    # getter for: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;->access$7()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3573
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->getObjectFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 3575
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;
    .locals 2

    .prologue
    .line 3605
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;

    move-result-object v0

    .line 3606
    .local v0, "result":Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;
    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3607
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 3609
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;
    .locals 5

    .prologue
    .line 3623
    new-instance v1, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;-><init>(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;)V

    .line 3624
    .local v1, "result":Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->bitField0_:I

    .line 3625
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 3626
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 3627
    or-int/lit8 v2, v2, 0x1

    .line 3629
    :cond_0
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v3, :cond_1

    .line 3630
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;->access$9(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;)V

    .line 3634
    :goto_0
    invoke-static {v1, v2}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;->access$10(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;I)V

    .line 3635
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->onBuilt()V

    .line 3636
    return-object v1

    .line 3632
    :cond_1
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v3

    check-cast v3, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;->access$9(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;)V

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->clear()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->clear()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->clear()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;
    .locals 1

    .prologue
    .line 3581
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 3582
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 3583
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    .line 3587
    :goto_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->bitField0_:I

    .line 3588
    return-object p0

    .line 3585
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearObject()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;
    .locals 1

    .prologue
    .line 3754
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 3755
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    .line 3756
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->onChanged()V

    .line 3760
    :goto_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->bitField0_:I

    .line 3761
    return-object p0

    .line 3758
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->clone()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->clone()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->clone()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;
    .locals 2

    .prologue
    .line 3592
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->create()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;
    .locals 1

    .prologue
    .line 3601
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3597
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getObject()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;
    .locals 1

    .prologue
    .line 3707
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 3708
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    .line 3710
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    goto :goto_0
.end method

.method public getObjectBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;
    .locals 1

    .prologue
    .line 3764
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->bitField0_:I

    .line 3765
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->onChanged()V

    .line 3766
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->getObjectFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;

    return-object v0
.end method

.method public getObjectOrBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReferenceOrBuilder;
    .locals 1

    .prologue
    .line 3769
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 3770
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReferenceOrBuilder;

    .line 3772
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    goto :goto_0
.end method

.method public hasObject()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3704
    iget v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->bitField0_:I

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
    .line 3559
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_ReflectionRequest_Delete_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$60()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 3658
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
    invoke-virtual {p0, p1, p2}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3667
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    .line 3666
    invoke-static {v3}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 3669
    .local v2, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 3670
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 3676
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    .line 3677
    if-nez v3, :cond_0

    .line 3678
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 3679
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->onChanged()V

    .line 3680
    :goto_1
    return-object p0

    .line 3672
    :sswitch_0
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 3673
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->onChanged()V

    goto :goto_1

    .line 3685
    :sswitch_1
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;

    move-result-object v0

    .line 3686
    .local v0, "subBuilder":Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->hasObject()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3687
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->getObject()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;)Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;

    .line 3689
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3690
    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->setObject(Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;

    goto :goto_0

    .line 3670
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 3640
    instance-of v0, p1, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;

    if-eqz v0, :cond_0

    .line 3641
    check-cast p1, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;

    move-result-object p0

    .line 3644
    .end local p0    # "this":Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;
    :goto_0
    return-object p0

    .line 3643
    .restart local p0    # "this":Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;
    .locals 1
    .param p1, "other"    # Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;

    .prologue
    .line 3649
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 3654
    :goto_0
    return-object p0

    .line 3650
    :cond_0
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;->hasObject()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3651
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;->getObject()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->mergeObject(Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;

    .line 3653
    :cond_1
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeObject(Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;
    .locals 2
    .param p1, "value"    # Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    .prologue
    .line 3738
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 3739
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3740
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3742
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;->newBuilder(Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;)Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;)Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    move-result-object v0

    .line 3741
    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    .line 3746
    :goto_0
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->onChanged()V

    .line 3750
    :goto_1
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->bitField0_:I

    .line 3751
    return-object p0

    .line 3744
    :cond_0
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    goto :goto_0

    .line 3748
    :cond_1
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public setObject(Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;

    .prologue
    .line 3728
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 3729
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    .line 3730
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->onChanged()V

    .line 3734
    :goto_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->bitField0_:I

    .line 3735
    return-object p0

    .line 3732
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setObject(Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;
    .locals 1
    .param p1, "value"    # Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    .prologue
    .line 3714
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 3715
    if-nez p1, :cond_0

    .line 3716
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3718
    :cond_0
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    .line 3719
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->onChanged()V

    .line 3723
    :goto_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->bitField0_:I

    .line 3724
    return-object p0

    .line 3721
    :cond_1
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method
