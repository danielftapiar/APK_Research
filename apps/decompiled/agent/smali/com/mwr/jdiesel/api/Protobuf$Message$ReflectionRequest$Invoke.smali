.class public final Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Protobuf.java"

# interfaces
.implements Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$InvokeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Invoke"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;
    }
.end annotation


# static fields
.field public static final ARGUMENT_FIELD_NUMBER:I = 0x3

.field public static final METHOD_FIELD_NUMBER:I = 0x2

.field public static final OBJECT_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;

.field private static final serialVersionUID:J


# instance fields
.field private argument_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private method_:Ljava/lang/Object;

.field private object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2178
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;-><init>(Z)V

    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;

    .line 2179
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;

    invoke-direct {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->initFields()V

    .line 2180
    return-void
.end method

.method private constructor <init>(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;

    .prologue
    const/4 v0, -0x1

    .line 1409
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 1504
    iput-byte v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->memoizedIsInitialized:B

    .line 1534
    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->memoizedSerializedSize:I

    .line 1410
    return-void
.end method

.method synthetic constructor <init>(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;)V
    .locals 0

    .prologue
    .line 1408
    invoke-direct {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;-><init>(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 1411
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1504
    iput-byte v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->memoizedIsInitialized:B

    .line 1534
    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->memoizedSerializedSize:I

    .line 1411
    return-void
.end method

.method static synthetic access$10(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1448
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->method_:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$11(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1480
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->argument_:Ljava/util/List;

    return-void
.end method

.method static synthetic access$12(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;I)V
    .locals 0

    .prologue
    .line 1432
    iput p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->bitField0_:I

    return-void
.end method

.method static synthetic access$13(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;)Ljava/util/List;
    .locals 1

    .prologue
    .line 1480
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->argument_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$7()Z
    .locals 1

    .prologue
    .line 1404
    sget-boolean v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$9(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;)V
    .locals 0

    .prologue
    .line 1435
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    return-void
.end method

.method public static getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;
    .locals 1

    .prologue
    .line 1415
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1424
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_ReflectionRequest_Invoke_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$14()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getMethodBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1467
    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->method_:Ljava/lang/Object;

    .line 1468
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1470
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1471
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->method_:Ljava/lang/Object;

    .line 1474
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
    .line 1500
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    .line 1501
    const-string v0, ""

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->method_:Ljava/lang/Object;

    .line 1502
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->argument_:Ljava/util/List;

    .line 1503
    return-void
.end method

.method public static newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;
    .locals 1

    .prologue
    .line 1631
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;->create()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;->access$18()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;

    .prologue
    .line 1634
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1600
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;

    move-result-object v0

    .line 1601
    .local v0, "builder":Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;
    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1602
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;

    move-result-object v1

    .line 1604
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1611
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;

    move-result-object v0

    .line 1612
    .local v0, "builder":Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1613
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;

    move-result-object v1

    .line 1615
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1567
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;

    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1573
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;

    .line 1574
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;

    move-result-object v0

    .line 1573
    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1621
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;

    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1627
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;

    move-result-object v0

    .line 1628
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;

    move-result-object v0

    .line 1627
    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1589
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;

    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1595
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;

    .line 1596
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;

    move-result-object v0

    .line 1595
    return-object v0
.end method

.method public static parseFrom([B)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1578
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;

    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1584
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;

    .line 1585
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;

    move-result-object v0

    .line 1584
    return-object v0
.end method


# virtual methods
.method public getArgument(I)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1492
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->argument_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    return-object v0
.end method

.method public getArgumentCount()I
    .locals 1

    .prologue
    .line 1489
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->argument_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getArgumentList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1482
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->argument_:Ljava/util/List;

    return-object v0
.end method

.method public getArgumentOrBuilder(I)Lcom/mwr/jdiesel/api/Protobuf$Message$ArgumentOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1496
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->argument_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ArgumentOrBuilder;

    return-object v0
.end method

.method public getArgumentOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$ArgumentOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1486
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->argument_:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;
    .locals 1

    .prologue
    .line 1419
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1453
    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->method_:Ljava/lang/Object;

    .line 1454
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1455
    check-cast v1, Ljava/lang/String;

    .line 1463
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1458
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1459
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1460
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1461
    iput-object v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->method_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1463
    goto :goto_0
.end method

.method public getObject()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;
    .locals 1

    .prologue
    .line 1440
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    return-object v0
.end method

.method public getObjectOrBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReferenceOrBuilder;
    .locals 1

    .prologue
    .line 1443
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 1536
    iget v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->memoizedSerializedSize:I

    .line 1537
    .local v1, "size":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 1554
    .end local v1    # "size":I
    .local v2, "size":I
    :goto_0
    return v2

    .line 1539
    .end local v2    # "size":I
    .restart local v1    # "size":I
    :cond_0
    const/4 v1, 0x0

    .line 1540
    iget v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1

    .line 1542
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1544
    :cond_1
    iget v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_2

    .line 1546
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->getMethodBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1548
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->argument_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_3

    .line 1552
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v3

    add-int/2addr v1, v3

    .line 1553
    iput v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->memoizedSerializedSize:I

    move v2, v1

    .line 1554
    .end local v1    # "size":I
    .restart local v2    # "size":I
    goto :goto_0

    .line 1550
    .end local v2    # "size":I
    .restart local v1    # "size":I
    :cond_3
    const/4 v4, 0x3

    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->argument_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1548
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public hasMethod()Z
    .locals 2

    .prologue
    .line 1450
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->bitField0_:I

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

.method public hasObject()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1437
    iget v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->bitField0_:I

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
    .line 1429
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_ReflectionRequest_Invoke_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$57()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1506
    iget-byte v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->memoizedIsInitialized:B

    .line 1507
    .local v1, "isInitialized":B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    if-ne v1, v2, :cond_0

    .line 1516
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 1507
    goto :goto_0

    .line 1509
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->getArgumentCount()I

    move-result v4

    if-lt v0, v4, :cond_2

    .line 1515
    iput-byte v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->memoizedIsInitialized:B

    goto :goto_0

    .line 1510
    :cond_2
    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->getArgument(I)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1511
    iput-byte v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->memoizedIsInitialized:B

    move v2, v3

    .line 1512
    goto :goto_0

    .line 1509
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->newBuilderForType()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->newBuilderForType()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;
    .locals 1

    .prologue
    .line 1632
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 1641
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;)V

    .line 1642
    .local v0, "builder":Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->toBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->toBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;
    .locals 1

    .prologue
    .line 1636
    invoke-static {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->newBuilder(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;

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
    .line 1561
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
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1521
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->getSerializedSize()I

    .line 1522
    iget v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_0

    .line 1523
    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1525
    :cond_0
    iget v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_1

    .line 1526
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->getMethodBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1528
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->argument_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 1531
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 1532
    return-void

    .line 1529
    :cond_2
    const/4 v2, 0x3

    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->argument_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1528
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
