.class public final Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Protobuf.java"

# interfaces
.implements Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetPropertyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetProperty"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;
    }
.end annotation


# static fields
.field public static final OBJECT_FIELD_NUMBER:I = 0x1

.field public static final PROPERTY_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

.field private property_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3369
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;-><init>(Z)V

    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

    .line 3370
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

    invoke-direct {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->initFields()V

    .line 3371
    return-void
.end method

.method private constructor <init>(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;

    .prologue
    const/4 v0, -0x1

    .line 2875
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 2948
    iput-byte v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->memoizedIsInitialized:B

    .line 2969
    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->memoizedSerializedSize:I

    .line 2876
    return-void
.end method

.method synthetic constructor <init>(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;)V
    .locals 0

    .prologue
    .line 2874
    invoke-direct {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;-><init>(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 2877
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 2948
    iput-byte v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->memoizedIsInitialized:B

    .line 2969
    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->memoizedSerializedSize:I

    .line 2877
    return-void
.end method

.method static synthetic access$10(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 2914
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->property_:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$11(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;I)V
    .locals 0

    .prologue
    .line 2898
    iput p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->bitField0_:I

    return-void
.end method

.method static synthetic access$7()Z
    .locals 1

    .prologue
    .line 2870
    sget-boolean v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$9(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;)V
    .locals 0

    .prologue
    .line 2901
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    return-void
.end method

.method public static getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;
    .locals 1

    .prologue
    .line 2881
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2890
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_ReflectionRequest_GetProperty_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$20()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getPropertyBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 2933
    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->property_:Ljava/lang/Object;

    .line 2934
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2936
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2937
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->property_:Ljava/lang/Object;

    .line 2940
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
    .line 2945
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    .line 2946
    const-string v0, ""

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->property_:Ljava/lang/Object;

    .line 2947
    return-void
.end method

.method public static newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;
    .locals 1

    .prologue
    .line 3062
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->create()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->access$18()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

    .prologue
    .line 3065
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3031
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;

    move-result-object v0

    .line 3032
    .local v0, "builder":Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;
    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3033
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

    move-result-object v1

    .line 3035
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3042
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;

    move-result-object v0

    .line 3043
    .local v0, "builder":Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3044
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

    move-result-object v1

    .line 3046
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2998
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;

    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3004
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;

    .line 3005
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

    move-result-object v0

    .line 3004
    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3052
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;

    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3058
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;

    move-result-object v0

    .line 3059
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

    move-result-object v0

    .line 3058
    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3020
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;

    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3026
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;

    .line 3027
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

    move-result-object v0

    .line 3026
    return-object v0
.end method

.method public static parseFrom([B)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3009
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;

    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3015
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;

    .line 3016
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

    move-result-object v0

    .line 3015
    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;
    .locals 1

    .prologue
    .line 2885
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

    return-object v0
.end method

.method public getObject()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;
    .locals 1

    .prologue
    .line 2906
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    return-object v0
.end method

.method public getObjectOrBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReferenceOrBuilder;
    .locals 1

    .prologue
    .line 2909
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    return-object v0
.end method

.method public getProperty()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2919
    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->property_:Ljava/lang/Object;

    .line 2920
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 2921
    check-cast v1, Ljava/lang/String;

    .line 2929
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 2924
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2925
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2926
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2927
    iput-object v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->property_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 2929
    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 2971
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->memoizedSerializedSize:I

    .line 2972
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 2985
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 2974
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 2975
    iget v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 2977
    iget-object v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2979
    :cond_1
    iget v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 2981
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->getPropertyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2983
    :cond_2
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 2984
    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->memoizedSerializedSize:I

    move v1, v0

    .line 2985
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public hasObject()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2903
    iget v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->bitField0_:I

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
    .line 2916
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->bitField0_:I

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
    .line 2895
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_ReflectionRequest_GetProperty_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$59()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 2950
    iget-byte v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->memoizedIsInitialized:B

    .line 2951
    .local v0, "isInitialized":B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 2954
    :goto_0
    return v1

    .line 2951
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 2953
    :cond_1
    iput-byte v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->newBuilderForType()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->newBuilderForType()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;
    .locals 1

    .prologue
    .line 3063
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 3072
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;)V

    .line 3073
    .local v0, "builder":Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->toBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->toBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;
    .locals 1

    .prologue
    .line 3067
    invoke-static {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->newBuilder(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;

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
    .line 2992
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

    .line 2959
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->getSerializedSize()I

    .line 2960
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 2961
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2963
    :cond_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 2964
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->getPropertyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2966
    :cond_1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 2967
    return-void
.end method
