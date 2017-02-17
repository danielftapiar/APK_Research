.class public final Lcom/mwr/jdiesel/api/Protobuf$Message$Device;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Protobuf.java"

# interfaces
.implements Lcom/mwr/jdiesel/api/Protobuf$Message$DeviceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mwr/jdiesel/api/Protobuf$Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Device"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;
    }
.end annotation


# static fields
.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final MANUFACTURER_FIELD_NUMBER:I = 0x2

.field public static final MODEL_FIELD_NUMBER:I = 0x3

.field public static final SOFTWARE_FIELD_NUMBER:I = 0x4

.field private static final defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private id_:Ljava/lang/Object;

.field private manufacturer_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private model_:Ljava/lang/Object;

.field private software_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10732
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;-><init>(Z)V

    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    .line 10733
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    invoke-direct {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->initFields()V

    .line 10734
    return-void
.end method

.method private constructor <init>(Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;

    .prologue
    const/4 v0, -0x1

    .line 10074
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 10232
    iput-byte v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->memoizedIsInitialized:B

    .line 10275
    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->memoizedSerializedSize:I

    .line 10075
    return-void
.end method

.method synthetic constructor <init>(Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;Lcom/mwr/jdiesel/api/Protobuf$Message$Device;)V
    .locals 0

    .prologue
    .line 10073
    invoke-direct {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;-><init>(Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 10076
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 10232
    iput-byte v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->memoizedIsInitialized:B

    .line 10275
    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->memoizedSerializedSize:I

    .line 10076
    return-void
.end method

.method static synthetic access$10(Lcom/mwr/jdiesel/api/Protobuf$Message$Device;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 10132
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->manufacturer_:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$11(Lcom/mwr/jdiesel/api/Protobuf$Message$Device;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 10164
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->model_:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$12(Lcom/mwr/jdiesel/api/Protobuf$Message$Device;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 10196
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->software_:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$13(Lcom/mwr/jdiesel/api/Protobuf$Message$Device;I)V
    .locals 0

    .prologue
    .line 10097
    iput p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->bitField0_:I

    return-void
.end method

.method static synthetic access$7()Z
    .locals 1

    .prologue
    .line 10069
    sget-boolean v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$9(Lcom/mwr/jdiesel/api/Protobuf$Message$Device;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 10100
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->id_:Ljava/lang/Object;

    return-void
.end method

.method public static getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$Device;
    .locals 1

    .prologue
    .line 10080
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 10089
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_Device_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$41()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 10119
    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->id_:Ljava/lang/Object;

    .line 10120
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 10122
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 10123
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->id_:Ljava/lang/Object;

    .line 10126
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

.method private getManufacturerBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 10151
    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->manufacturer_:Ljava/lang/Object;

    .line 10152
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 10154
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 10155
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->manufacturer_:Ljava/lang/Object;

    .line 10158
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

.method private getModelBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 10183
    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->model_:Ljava/lang/Object;

    .line 10184
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 10186
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 10187
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->model_:Ljava/lang/Object;

    .line 10190
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

.method private getSoftwareBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 10215
    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->software_:Ljava/lang/Object;

    .line 10216
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 10218
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 10219
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->software_:Ljava/lang/Object;

    .line 10222
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
    .line 10227
    const-string v0, ""

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->id_:Ljava/lang/Object;

    .line 10228
    const-string v0, ""

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->manufacturer_:Ljava/lang/Object;

    .line 10229
    const-string v0, ""

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->model_:Ljava/lang/Object;

    .line 10230
    const-string v0, ""

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->software_:Ljava/lang/Object;

    .line 10231
    return-void
.end method

.method public static newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;
    .locals 1

    .prologue
    .line 10376
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->create()Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->access$18()Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/mwr/jdiesel/api/Protobuf$Message$Device;)Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    .prologue
    .line 10379
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$Device;)Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/mwr/jdiesel/api/Protobuf$Message$Device;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10345
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;

    move-result-object v0

    .line 10346
    .local v0, "builder":Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;
    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10347
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$Device;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    move-result-object v1

    .line 10349
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$Device;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10356
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;

    move-result-object v0

    .line 10357
    .local v0, "builder":Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10358
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$Device;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    move-result-object v1

    .line 10360
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/mwr/jdiesel/api/Protobuf$Message$Device;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10312
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;

    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$Device;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$Device;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10318
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;

    .line 10319
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$Device;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    move-result-object v0

    .line 10318
    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/mwr/jdiesel/api/Protobuf$Message$Device;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10366
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;

    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$Device;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$Device;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10372
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;

    move-result-object v0

    .line 10373
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$Device;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    move-result-object v0

    .line 10372
    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/mwr/jdiesel/api/Protobuf$Message$Device;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10334
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;

    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$Device;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$Device;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10340
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;

    .line 10341
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$Device;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    move-result-object v0

    .line 10340
    return-object v0
.end method

.method public static parseFrom([B)Lcom/mwr/jdiesel/api/Protobuf$Message$Device;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10323
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;

    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$Device;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$Device;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10329
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;

    .line 10330
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$Device;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    move-result-object v0

    .line 10329
    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$Device;
    .locals 1

    .prologue
    .line 10084
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 10105
    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->id_:Ljava/lang/Object;

    .line 10106
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 10107
    check-cast v1, Ljava/lang/String;

    .line 10115
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 10110
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 10111
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 10112
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 10113
    iput-object v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->id_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 10115
    goto :goto_0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 4

    .prologue
    .line 10137
    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->manufacturer_:Ljava/lang/Object;

    .line 10138
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 10139
    check-cast v1, Ljava/lang/String;

    .line 10147
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 10142
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 10143
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 10144
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 10145
    iput-object v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->manufacturer_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 10147
    goto :goto_0
.end method

.method public getModel()Ljava/lang/String;
    .locals 4

    .prologue
    .line 10169
    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->model_:Ljava/lang/Object;

    .line 10170
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 10171
    check-cast v1, Ljava/lang/String;

    .line 10179
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 10174
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 10175
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 10176
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 10177
    iput-object v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->model_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 10179
    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 10277
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->memoizedSerializedSize:I

    .line 10278
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 10299
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 10280
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 10281
    iget v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 10283
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 10285
    :cond_1
    iget v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 10287
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->getManufacturerBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 10289
    :cond_2
    iget v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3

    .line 10291
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->getModelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 10293
    :cond_3
    iget v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 10295
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->getSoftwareBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 10297
    :cond_4
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 10298
    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->memoizedSerializedSize:I

    move v1, v0

    .line 10299
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public getSoftware()Ljava/lang/String;
    .locals 4

    .prologue
    .line 10201
    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->software_:Ljava/lang/Object;

    .line 10202
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 10203
    check-cast v1, Ljava/lang/String;

    .line 10211
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 10206
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 10207
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 10208
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 10209
    iput-object v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->software_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 10211
    goto :goto_0
.end method

.method public hasId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 10102
    iget v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->bitField0_:I

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
    .line 10134
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->bitField0_:I

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
    .line 10166
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->bitField0_:I

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
    .line 10198
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->bitField0_:I

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
    .line 10094
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_Device_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$67()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 10234
    iget-byte v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->memoizedIsInitialized:B

    .line 10235
    .local v0, "isInitialized":B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    .line 10254
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 10235
    goto :goto_0

    .line 10237
    :cond_1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->hasId()Z

    move-result v3

    if-nez v3, :cond_2

    .line 10238
    iput-byte v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->memoizedIsInitialized:B

    move v1, v2

    .line 10239
    goto :goto_0

    .line 10241
    :cond_2
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->hasManufacturer()Z

    move-result v3

    if-nez v3, :cond_3

    .line 10242
    iput-byte v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->memoizedIsInitialized:B

    move v1, v2

    .line 10243
    goto :goto_0

    .line 10245
    :cond_3
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->hasModel()Z

    move-result v3

    if-nez v3, :cond_4

    .line 10246
    iput-byte v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->memoizedIsInitialized:B

    move v1, v2

    .line 10247
    goto :goto_0

    .line 10249
    :cond_4
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->hasSoftware()Z

    move-result v3

    if-nez v3, :cond_5

    .line 10250
    iput-byte v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->memoizedIsInitialized:B

    move v1, v2

    .line 10251
    goto :goto_0

    .line 10253
    :cond_5
    iput-byte v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->newBuilderForType()Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->newBuilderForType()Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;
    .locals 1

    .prologue
    .line 10377
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 10386
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;)V

    .line 10387
    .local v0, "builder":Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->toBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->toBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;
    .locals 1

    .prologue
    .line 10381
    invoke-static {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->newBuilder(Lcom/mwr/jdiesel/api/Protobuf$Message$Device;)Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;

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
    .line 10306
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 10259
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->getSerializedSize()I

    .line 10260
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 10261
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 10263
    :cond_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 10264
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->getManufacturerBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 10266
    :cond_1
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 10267
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->getModelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 10269
    :cond_2
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 10270
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->getSoftwareBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 10272
    :cond_3
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 10273
    return-void
.end method
