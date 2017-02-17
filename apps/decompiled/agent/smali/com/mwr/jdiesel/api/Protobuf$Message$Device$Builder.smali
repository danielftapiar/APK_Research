.class public final Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Protobuf.java"

# interfaces
.implements Lcom/mwr/jdiesel/api/Protobuf$Message$DeviceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mwr/jdiesel/api/Protobuf$Message$Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;",
        ">;",
        "Lcom/mwr/jdiesel/api/Protobuf$Message$DeviceOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private id_:Ljava/lang/Object;

.field private manufacturer_:Ljava/lang/Object;

.field private model_:Ljava/lang/Object;

.field private software_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 10403
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 10585
    const-string v0, ""

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->id_:Ljava/lang/Object;

    .line 10621
    const-string v0, ""

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->manufacturer_:Ljava/lang/Object;

    .line 10657
    const-string v0, ""

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->model_:Ljava/lang/Object;

    .line 10693
    const-string v0, ""

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->software_:Ljava/lang/Object;

    .line 10404
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->maybeForceBuilderInitialization()V

    .line 10405
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 10408
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 10585
    const-string v0, ""

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->id_:Ljava/lang/Object;

    .line 10621
    const-string v0, ""

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->manufacturer_:Ljava/lang/Object;

    .line 10657
    const-string v0, ""

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->model_:Ljava/lang/Object;

    .line 10693
    const-string v0, ""

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->software_:Ljava/lang/Object;

    .line 10409
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->maybeForceBuilderInitialization()V

    .line 10410
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;)V
    .locals 0

    .prologue
    .line 10407
    invoke-direct {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Device;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10453
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$18()Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;
    .locals 1

    .prologue
    .line 10415
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->create()Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$Device;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10455
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    move-result-object v0

    .line 10456
    .local v0, "result":Lcom/mwr/jdiesel/api/Protobuf$Message$Device;
    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 10457
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    .line 10458
    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    .line 10457
    throw v1

    .line 10460
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;
    .locals 1

    .prologue
    .line 10416
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;

    invoke-direct {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 10394
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_Device_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$41()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 10412
    # getter for: Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->access$7()Z

    .line 10414
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/mwr/jdiesel/api/Protobuf$Message$Device;
    .locals 2

    .prologue
    .line 10446
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    move-result-object v0

    .line 10447
    .local v0, "result":Lcom/mwr/jdiesel/api/Protobuf$Message$Device;
    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 10448
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 10450
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$Device;
    .locals 5

    .prologue
    .line 10464
    new-instance v1, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;-><init>(Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;Lcom/mwr/jdiesel/api/Protobuf$Message$Device;)V

    .line 10465
    .local v1, "result":Lcom/mwr/jdiesel/api/Protobuf$Message$Device;
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->bitField0_:I

    .line 10466
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 10467
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 10468
    or-int/lit8 v2, v2, 0x1

    .line 10470
    :cond_0
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->id_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->access$9(Lcom/mwr/jdiesel/api/Protobuf$Message$Device;Ljava/lang/Object;)V

    .line 10471
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 10472
    or-int/lit8 v2, v2, 0x2

    .line 10474
    :cond_1
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->manufacturer_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->access$10(Lcom/mwr/jdiesel/api/Protobuf$Message$Device;Ljava/lang/Object;)V

    .line 10475
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 10476
    or-int/lit8 v2, v2, 0x4

    .line 10478
    :cond_2
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->model_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->access$11(Lcom/mwr/jdiesel/api/Protobuf$Message$Device;Ljava/lang/Object;)V

    .line 10479
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 10480
    or-int/lit8 v2, v2, 0x8

    .line 10482
    :cond_3
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->software_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->access$12(Lcom/mwr/jdiesel/api/Protobuf$Message$Device;Ljava/lang/Object;)V

    .line 10483
    invoke-static {v1, v2}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->access$13(Lcom/mwr/jdiesel/api/Protobuf$Message$Device;I)V

    .line 10484
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->onBuilt()V

    .line 10485
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->clear()Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->clear()Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->clear()Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;
    .locals 1

    .prologue
    .line 10420
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 10421
    const-string v0, ""

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->id_:Ljava/lang/Object;

    .line 10422
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->bitField0_:I

    .line 10423
    const-string v0, ""

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->manufacturer_:Ljava/lang/Object;

    .line 10424
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->bitField0_:I

    .line 10425
    const-string v0, ""

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->model_:Ljava/lang/Object;

    .line 10426
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->bitField0_:I

    .line 10427
    const-string v0, ""

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->software_:Ljava/lang/Object;

    .line 10428
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->bitField0_:I

    .line 10429
    return-object p0
.end method

.method public clearId()Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;
    .locals 1

    .prologue
    .line 10609
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->bitField0_:I

    .line 10610
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->id_:Ljava/lang/Object;

    .line 10611
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->onChanged()V

    .line 10612
    return-object p0
.end method

.method public clearManufacturer()Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;
    .locals 1

    .prologue
    .line 10645
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->bitField0_:I

    .line 10646
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->manufacturer_:Ljava/lang/Object;

    .line 10647
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->onChanged()V

    .line 10648
    return-object p0
.end method

.method public clearModel()Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;
    .locals 1

    .prologue
    .line 10681
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->bitField0_:I

    .line 10682
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->getModel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->model_:Ljava/lang/Object;

    .line 10683
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->onChanged()V

    .line 10684
    return-object p0
.end method

.method public clearSoftware()Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;
    .locals 1

    .prologue
    .line 10717
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->bitField0_:I

    .line 10718
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->getSoftware()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->software_:Ljava/lang/Object;

    .line 10719
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->onChanged()V

    .line 10720
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->clone()Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->clone()Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->clone()Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;
    .locals 2

    .prologue
    .line 10433
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->create()Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$Device;)Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$Device;
    .locals 1

    .prologue
    .line 10442
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 10438
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 10590
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->id_:Ljava/lang/Object;

    .line 10591
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 10592
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 10593
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->id_:Ljava/lang/Object;

    .line 10596
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

.method public getManufacturer()Ljava/lang/String;
    .locals 3

    .prologue
    .line 10626
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->manufacturer_:Ljava/lang/Object;

    .line 10627
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 10628
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 10629
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->manufacturer_:Ljava/lang/Object;

    .line 10632
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

.method public getModel()Ljava/lang/String;
    .locals 3

    .prologue
    .line 10662
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->model_:Ljava/lang/Object;

    .line 10663
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 10664
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 10665
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->model_:Ljava/lang/Object;

    .line 10668
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

.method public getSoftware()Ljava/lang/String;
    .locals 3

    .prologue
    .line 10698
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->software_:Ljava/lang/Object;

    .line 10699
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 10700
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 10701
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->software_:Ljava/lang/Object;

    .line 10704
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

.method public hasId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 10587
    iget v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasManufacturer()Z
    .locals 2

    .prologue
    .line 10623
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->bitField0_:I

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

.method public hasModel()Z
    .locals 2

    .prologue
    .line 10659
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->bitField0_:I

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

.method public hasSoftware()Z
    .locals 2

    .prologue
    .line 10695
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 10399
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_Device_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$67()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 10516
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->hasId()Z

    move-result v1

    if-nez v1, :cond_1

    .line 10532
    :cond_0
    :goto_0
    return v0

    .line 10520
    :cond_1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->hasManufacturer()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10524
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->hasModel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10528
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->hasSoftware()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10532
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
    invoke-virtual {p0, p1, p2}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10541
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    .line 10540
    invoke-static {v2}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    .line 10543
    .local v1, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 10544
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 10550
    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    .line 10551
    if-nez v2, :cond_0

    .line 10552
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 10553
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->onChanged()V

    .line 10554
    :goto_1
    return-object p0

    .line 10546
    :sswitch_0
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 10547
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->onChanged()V

    goto :goto_1

    .line 10559
    :sswitch_1
    iget v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->bitField0_:I

    .line 10560
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->id_:Ljava/lang/Object;

    goto :goto_0

    .line 10564
    :sswitch_2
    iget v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->bitField0_:I

    .line 10565
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->manufacturer_:Ljava/lang/Object;

    goto :goto_0

    .line 10569
    :sswitch_3
    iget v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->bitField0_:I

    .line 10570
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->model_:Ljava/lang/Object;

    goto :goto_0

    .line 10574
    :sswitch_4
    iget v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->bitField0_:I

    .line 10575
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->software_:Ljava/lang/Object;

    goto :goto_0

    .line 10544
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 10489
    instance-of v0, p1, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    if-eqz v0, :cond_0

    .line 10490
    check-cast p1, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$Device;)Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;

    move-result-object p0

    .line 10493
    .end local p0    # "this":Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;
    :goto_0
    return-object p0

    .line 10492
    .restart local p0    # "this":Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$Device;)Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;
    .locals 1
    .param p1, "other"    # Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    .prologue
    .line 10498
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 10512
    :goto_0
    return-object p0

    .line 10499
    :cond_0
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->hasId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10500
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->setId(Ljava/lang/String;)Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;

    .line 10502
    :cond_1
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->hasManufacturer()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10503
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->setManufacturer(Ljava/lang/String;)Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;

    .line 10505
    :cond_2
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->hasModel()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10506
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->getModel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->setModel(Ljava/lang/String;)Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;

    .line 10508
    :cond_3
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->hasSoftware()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10509
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->getSoftware()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->setSoftware(Ljava/lang/String;)Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;

    .line 10511
    :cond_4
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public setId(Ljava/lang/String;)Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 10600
    if-nez p1, :cond_0

    .line 10601
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10603
    :cond_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->bitField0_:I

    .line 10604
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->id_:Ljava/lang/Object;

    .line 10605
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->onChanged()V

    .line 10606
    return-object p0
.end method

.method setId(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 10615
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->bitField0_:I

    .line 10616
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->id_:Ljava/lang/Object;

    .line 10617
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->onChanged()V

    .line 10618
    return-void
.end method

.method public setManufacturer(Ljava/lang/String;)Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 10636
    if-nez p1, :cond_0

    .line 10637
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10639
    :cond_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->bitField0_:I

    .line 10640
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->manufacturer_:Ljava/lang/Object;

    .line 10641
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->onChanged()V

    .line 10642
    return-object p0
.end method

.method setManufacturer(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 10651
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->bitField0_:I

    .line 10652
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->manufacturer_:Ljava/lang/Object;

    .line 10653
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->onChanged()V

    .line 10654
    return-void
.end method

.method public setModel(Ljava/lang/String;)Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 10672
    if-nez p1, :cond_0

    .line 10673
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10675
    :cond_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->bitField0_:I

    .line 10676
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->model_:Ljava/lang/Object;

    .line 10677
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->onChanged()V

    .line 10678
    return-object p0
.end method

.method setModel(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 10687
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->bitField0_:I

    .line 10688
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->model_:Ljava/lang/Object;

    .line 10689
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->onChanged()V

    .line 10690
    return-void
.end method

.method public setSoftware(Ljava/lang/String;)Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 10708
    if-nez p1, :cond_0

    .line 10709
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10711
    :cond_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->bitField0_:I

    .line 10712
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->software_:Ljava/lang/Object;

    .line 10713
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->onChanged()V

    .line 10714
    return-object p0
.end method

.method setSoftware(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 10723
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->bitField0_:I

    .line 10724
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->software_:Ljava/lang/Object;

    .line 10725
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->onChanged()V

    .line 10726
    return-void
.end method
