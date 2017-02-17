.class public final Lcom/mwr/jdiesel/api/Protobuf$Message$Session;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Protobuf.java"

# interfaces
.implements Lcom/mwr/jdiesel/api/Protobuf$Message$SessionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mwr/jdiesel/api/Protobuf$Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Session"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;
    }
.end annotation


# static fields
.field public static final DEVICE_ID_FIELD_NUMBER:I = 0x2

.field public static final ID_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message$Session;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private deviceId_:Ljava/lang/Object;

.field private id_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12938
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;-><init>(Z)V

    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message$Session;

    .line 12939
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message$Session;

    invoke-direct {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->initFields()V

    .line 12940
    return-void
.end method

.method private constructor <init>(Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;

    .prologue
    const/4 v0, -0x1

    .line 12476
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 12568
    iput-byte v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->memoizedIsInitialized:B

    .line 12597
    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->memoizedSerializedSize:I

    .line 12477
    return-void
.end method

.method synthetic constructor <init>(Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;Lcom/mwr/jdiesel/api/Protobuf$Message$Session;)V
    .locals 0

    .prologue
    .line 12475
    invoke-direct {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;-><init>(Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 12478
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 12568
    iput-byte v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->memoizedIsInitialized:B

    .line 12597
    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->memoizedSerializedSize:I

    .line 12478
    return-void
.end method

.method static synthetic access$10(Lcom/mwr/jdiesel/api/Protobuf$Message$Session;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 12534
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->deviceId_:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$11(Lcom/mwr/jdiesel/api/Protobuf$Message$Session;I)V
    .locals 0

    .prologue
    .line 12499
    iput p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->bitField0_:I

    return-void
.end method

.method static synthetic access$7()Z
    .locals 1

    .prologue
    .line 12471
    sget-boolean v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$9(Lcom/mwr/jdiesel/api/Protobuf$Message$Session;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 12502
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->id_:Ljava/lang/Object;

    return-void
.end method

.method public static getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$Session;
    .locals 1

    .prologue
    .line 12482
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message$Session;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 12491
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_Session_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$53()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getDeviceIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 12553
    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->deviceId_:Ljava/lang/Object;

    .line 12554
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 12556
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 12557
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->deviceId_:Ljava/lang/Object;

    .line 12560
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

.method private getIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 12521
    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->id_:Ljava/lang/Object;

    .line 12522
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 12524
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 12525
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->id_:Ljava/lang/Object;

    .line 12528
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
    .line 12565
    const-string v0, ""

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->id_:Ljava/lang/Object;

    .line 12566
    const-string v0, ""

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->deviceId_:Ljava/lang/Object;

    .line 12567
    return-void
.end method

.method public static newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;
    .locals 1

    .prologue
    .line 12690
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->create()Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->access$18()Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/mwr/jdiesel/api/Protobuf$Message$Session;)Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/mwr/jdiesel/api/Protobuf$Message$Session;

    .prologue
    .line 12693
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$Session;)Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/mwr/jdiesel/api/Protobuf$Message$Session;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12659
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;

    move-result-object v0

    .line 12660
    .local v0, "builder":Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;
    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12661
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$Session;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Session;

    move-result-object v1

    .line 12663
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$Session;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12670
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;

    move-result-object v0

    .line 12671
    .local v0, "builder":Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12672
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$Session;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Session;

    move-result-object v1

    .line 12674
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/mwr/jdiesel/api/Protobuf$Message$Session;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 12626
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;

    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$Session;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Session;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$Session;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 12632
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;

    .line 12633
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$Session;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Session;

    move-result-object v0

    .line 12632
    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/mwr/jdiesel/api/Protobuf$Message$Session;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12680
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;

    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$Session;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Session;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$Session;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12686
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;

    move-result-object v0

    .line 12687
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$Session;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Session;

    move-result-object v0

    .line 12686
    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/mwr/jdiesel/api/Protobuf$Message$Session;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12648
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;

    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$Session;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Session;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$Session;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12654
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;

    .line 12655
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$Session;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Session;

    move-result-object v0

    .line 12654
    return-object v0
.end method

.method public static parseFrom([B)Lcom/mwr/jdiesel/api/Protobuf$Message$Session;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 12637
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;

    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$Session;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Session;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$Session;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 12643
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;

    .line 12644
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$Session;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Session;

    move-result-object v0

    .line 12643
    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$Session;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$Session;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$Session;
    .locals 1

    .prologue
    .line 12486
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message$Session;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 12539
    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->deviceId_:Ljava/lang/Object;

    .line 12540
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 12541
    check-cast v1, Ljava/lang/String;

    .line 12549
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 12544
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 12545
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 12546
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 12547
    iput-object v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->deviceId_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 12549
    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 12507
    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->id_:Ljava/lang/Object;

    .line 12508
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 12509
    check-cast v1, Ljava/lang/String;

    .line 12517
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 12512
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 12513
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 12514
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 12515
    iput-object v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->id_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 12517
    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 12599
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->memoizedSerializedSize:I

    .line 12600
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 12613
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 12602
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 12603
    iget v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 12605
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 12607
    :cond_1
    iget v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 12609
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->getDeviceIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 12611
    :cond_2
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 12612
    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->memoizedSerializedSize:I

    move v1, v0

    .line 12613
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public hasDeviceId()Z
    .locals 2

    .prologue
    .line 12536
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->bitField0_:I

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

    .line 12504
    iget v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->bitField0_:I

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
    .line 12496
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_Session_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$71()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 12570
    iget-byte v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->memoizedIsInitialized:B

    .line 12571
    .local v0, "isInitialized":B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    .line 12582
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 12571
    goto :goto_0

    .line 12573
    :cond_1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->hasId()Z

    move-result v3

    if-nez v3, :cond_2

    .line 12574
    iput-byte v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->memoizedIsInitialized:B

    move v1, v2

    .line 12575
    goto :goto_0

    .line 12577
    :cond_2
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->hasDeviceId()Z

    move-result v3

    if-nez v3, :cond_3

    .line 12578
    iput-byte v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->memoizedIsInitialized:B

    move v1, v2

    .line 12579
    goto :goto_0

    .line 12581
    :cond_3
    iput-byte v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->newBuilderForType()Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->newBuilderForType()Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;
    .locals 1

    .prologue
    .line 12691
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 12700
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;)V

    .line 12701
    .local v0, "builder":Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->toBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->toBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;
    .locals 1

    .prologue
    .line 12695
    invoke-static {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->newBuilder(Lcom/mwr/jdiesel/api/Protobuf$Message$Session;)Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;

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
    .line 12620
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 12587
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->getSerializedSize()I

    .line 12588
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 12589
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 12591
    :cond_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 12592
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->getDeviceIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 12594
    :cond_1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 12595
    return-void
.end method
