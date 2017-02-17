.class public final Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Protobuf.java"

# interfaces
.implements Lcom/mwr/jdiesel/api/Protobuf$Message$SessionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mwr/jdiesel/api/Protobuf$Message$Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;",
        ">;",
        "Lcom/mwr/jdiesel/api/Protobuf$Message$SessionOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private deviceId_:Ljava/lang/Object;

.field private id_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 12717
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 12863
    const-string v0, ""

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->id_:Ljava/lang/Object;

    .line 12899
    const-string v0, ""

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->deviceId_:Ljava/lang/Object;

    .line 12718
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->maybeForceBuilderInitialization()V

    .line 12719
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 12722
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 12863
    const-string v0, ""

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->id_:Ljava/lang/Object;

    .line 12899
    const-string v0, ""

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->deviceId_:Ljava/lang/Object;

    .line 12723
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->maybeForceBuilderInitialization()V

    .line 12724
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;)V
    .locals 0

    .prologue
    .line 12721
    invoke-direct {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Session;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 12763
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$Session;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$18()Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;
    .locals 1

    .prologue
    .line 12729
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->create()Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$Session;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 12765
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$Session;

    move-result-object v0

    .line 12766
    .local v0, "result":Lcom/mwr/jdiesel/api/Protobuf$Message$Session;
    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 12767
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    .line 12768
    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    .line 12767
    throw v1

    .line 12770
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;
    .locals 1

    .prologue
    .line 12730
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;

    invoke-direct {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 12708
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_Session_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$53()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 12726
    # getter for: Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->access$7()Z

    .line 12728
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$Session;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$Session;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/mwr/jdiesel/api/Protobuf$Message$Session;
    .locals 2

    .prologue
    .line 12756
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$Session;

    move-result-object v0

    .line 12757
    .local v0, "result":Lcom/mwr/jdiesel/api/Protobuf$Message$Session;
    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 12758
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 12760
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$Session;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$Session;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$Session;
    .locals 5

    .prologue
    .line 12774
    new-instance v1, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;-><init>(Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;Lcom/mwr/jdiesel/api/Protobuf$Message$Session;)V

    .line 12775
    .local v1, "result":Lcom/mwr/jdiesel/api/Protobuf$Message$Session;
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->bitField0_:I

    .line 12776
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 12777
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 12778
    or-int/lit8 v2, v2, 0x1

    .line 12780
    :cond_0
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->id_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->access$9(Lcom/mwr/jdiesel/api/Protobuf$Message$Session;Ljava/lang/Object;)V

    .line 12781
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 12782
    or-int/lit8 v2, v2, 0x2

    .line 12784
    :cond_1
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->deviceId_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->access$10(Lcom/mwr/jdiesel/api/Protobuf$Message$Session;Ljava/lang/Object;)V

    .line 12785
    invoke-static {v1, v2}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->access$11(Lcom/mwr/jdiesel/api/Protobuf$Message$Session;I)V

    .line 12786
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->onBuilt()V

    .line 12787
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->clear()Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->clear()Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->clear()Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;
    .locals 1

    .prologue
    .line 12734
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 12735
    const-string v0, ""

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->id_:Ljava/lang/Object;

    .line 12736
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->bitField0_:I

    .line 12737
    const-string v0, ""

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->deviceId_:Ljava/lang/Object;

    .line 12738
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->bitField0_:I

    .line 12739
    return-object p0
.end method

.method public clearDeviceId()Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;
    .locals 1

    .prologue
    .line 12923
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->bitField0_:I

    .line 12924
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->deviceId_:Ljava/lang/Object;

    .line 12925
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->onChanged()V

    .line 12926
    return-object p0
.end method

.method public clearId()Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;
    .locals 1

    .prologue
    .line 12887
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->bitField0_:I

    .line 12888
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->id_:Ljava/lang/Object;

    .line 12889
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->onChanged()V

    .line 12890
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->clone()Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->clone()Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->clone()Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;
    .locals 2

    .prologue
    .line 12743
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->create()Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$Session;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$Session;)Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$Session;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$Session;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$Session;
    .locals 1

    .prologue
    .line 12752
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$Session;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 12748
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 12904
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->deviceId_:Ljava/lang/Object;

    .line 12905
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 12906
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 12907
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->deviceId_:Ljava/lang/Object;

    .line 12910
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

.method public getId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 12868
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->id_:Ljava/lang/Object;

    .line 12869
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 12870
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 12871
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->id_:Ljava/lang/Object;

    .line 12874
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

.method public hasDeviceId()Z
    .locals 2

    .prologue
    .line 12901
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->bitField0_:I

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

.method public hasId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 12865
    iget v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->bitField0_:I

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
    .line 12713
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_Session_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$71()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 12812
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->hasId()Z

    move-result v1

    if-nez v1, :cond_1

    .line 12820
    :cond_0
    :goto_0
    return v0

    .line 12816
    :cond_1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->hasDeviceId()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12820
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
    invoke-virtual {p0, p1, p2}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12829
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    .line 12828
    invoke-static {v2}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    .line 12831
    .local v1, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 12832
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 12838
    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    .line 12839
    if-nez v2, :cond_0

    .line 12840
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 12841
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->onChanged()V

    .line 12842
    :goto_1
    return-object p0

    .line 12834
    :sswitch_0
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 12835
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->onChanged()V

    goto :goto_1

    .line 12847
    :sswitch_1
    iget v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->bitField0_:I

    .line 12848
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->id_:Ljava/lang/Object;

    goto :goto_0

    .line 12852
    :sswitch_2
    iget v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->bitField0_:I

    .line 12853
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->deviceId_:Ljava/lang/Object;

    goto :goto_0

    .line 12832
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 12791
    instance-of v0, p1, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;

    if-eqz v0, :cond_0

    .line 12792
    check-cast p1, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$Session;)Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;

    move-result-object p0

    .line 12795
    .end local p0    # "this":Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;
    :goto_0
    return-object p0

    .line 12794
    .restart local p0    # "this":Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$Session;)Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;
    .locals 1
    .param p1, "other"    # Lcom/mwr/jdiesel/api/Protobuf$Message$Session;

    .prologue
    .line 12800
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$Session;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 12808
    :goto_0
    return-object p0

    .line 12801
    :cond_0
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->hasId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12802
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->setId(Ljava/lang/String;)Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;

    .line 12804
    :cond_1
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->hasDeviceId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12805
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->setDeviceId(Ljava/lang/String;)Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;

    .line 12807
    :cond_2
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public setDeviceId(Ljava/lang/String;)Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 12914
    if-nez p1, :cond_0

    .line 12915
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12917
    :cond_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->bitField0_:I

    .line 12918
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->deviceId_:Ljava/lang/Object;

    .line 12919
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->onChanged()V

    .line 12920
    return-object p0
.end method

.method setDeviceId(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 12929
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->bitField0_:I

    .line 12930
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->deviceId_:Ljava/lang/Object;

    .line 12931
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->onChanged()V

    .line 12932
    return-void
.end method

.method public setId(Ljava/lang/String;)Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 12878
    if-nez p1, :cond_0

    .line 12879
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12881
    :cond_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->bitField0_:I

    .line 12882
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->id_:Ljava/lang/Object;

    .line 12883
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->onChanged()V

    .line 12884
    return-object p0
.end method

.method setId(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 12893
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->bitField0_:I

    .line 12894
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->id_:Ljava/lang/Object;

    .line 12895
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->onChanged()V

    .line 12896
    return-void
.end method
