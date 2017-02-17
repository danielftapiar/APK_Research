.class public final Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Protobuf.java"

# interfaces
.implements Lcom/mwr/jdiesel/api/Protobuf$Message$ArgumentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mwr/jdiesel/api/Protobuf$Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Argument"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;,
        Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;
    }
.end annotation


# static fields
.field public static final ARRAY_FIELD_NUMBER:I = 0x5

.field public static final DATA_FIELD_NUMBER:I = 0x6

.field public static final OBJECT_FIELD_NUMBER:I = 0x4

.field public static final PRIMITIVE_FIELD_NUMBER:I = 0x2

.field public static final STRING_FIELD_NUMBER:I = 0x3

.field public static final TYPE_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

.field private static final serialVersionUID:J


# instance fields
.field private array_:Lcom/mwr/jdiesel/api/Protobuf$Message$Array;

.field private bitField0_:I

.field private data_:Lcom/google/protobuf/ByteString;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

.field private primitive_:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

.field private string_:Ljava/lang/Object;

.field private type_:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9328
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;-><init>(Z)V

    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    .line 9329
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    invoke-direct {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->initFields()V

    .line 9330
    return-void
.end method

.method private constructor <init>(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    .prologue
    const/4 v0, -0x1

    .line 8327
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 8531
    iput-byte v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->memoizedIsInitialized:B

    .line 8580
    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->memoizedSerializedSize:I

    .line 8328
    return-void
.end method

.method synthetic constructor <init>(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;)V
    .locals 0

    .prologue
    .line 8326
    invoke-direct {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;-><init>(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 8329
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 8531
    iput-byte v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->memoizedIsInitialized:B

    .line 8580
    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->memoizedSerializedSize:I

    .line 8329
    return-void
.end method

.method static synthetic access$10(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;)V
    .locals 0

    .prologue
    .line 8444
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->primitive_:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    return-void
.end method

.method static synthetic access$11(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 8457
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->string_:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$12(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;)V
    .locals 0

    .prologue
    .line 8489
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    return-void
.end method

.method static synthetic access$13(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;Lcom/mwr/jdiesel/api/Protobuf$Message$Array;)V
    .locals 0

    .prologue
    .line 8502
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->array_:Lcom/mwr/jdiesel/api/Protobuf$Message$Array;

    return-void
.end method

.method static synthetic access$14(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .prologue
    .line 8515
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->data_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$15(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;I)V
    .locals 0

    .prologue
    .line 8431
    iput p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->bitField0_:I

    return-void
.end method

.method static synthetic access$7()Z
    .locals 1

    .prologue
    .line 8322
    sget-boolean v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$9(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;)V
    .locals 0

    .prologue
    .line 8434
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    return-void
.end method

.method public static getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;
    .locals 1

    .prologue
    .line 8333
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 8342
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_Argument_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$35()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getStringBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 8476
    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->string_:Ljava/lang/Object;

    .line 8477
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 8479
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 8480
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->string_:Ljava/lang/Object;

    .line 8483
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
    .line 8524
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->STRING:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    .line 8525
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->primitive_:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    .line 8526
    const-string v0, ""

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->string_:Ljava/lang/Object;

    .line 8527
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    .line 8528
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$Array;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->array_:Lcom/mwr/jdiesel/api/Protobuf$Message$Array;

    .line 8529
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->data_:Lcom/google/protobuf/ByteString;

    .line 8530
    return-void
.end method

.method public static newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;
    .locals 1

    .prologue
    .line 8689
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->create()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->access$18()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    .prologue
    .line 8692
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8658
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    move-result-object v0

    .line 8659
    .local v0, "builder":Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;
    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8660
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v1

    .line 8662
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8669
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    move-result-object v0

    .line 8670
    .local v0, "builder":Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8671
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v1

    .line 8673
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8625
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8631
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    .line 8632
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v0

    .line 8631
    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8679
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8685
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    move-result-object v0

    .line 8686
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v0

    .line 8685
    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8647
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8653
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    .line 8654
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v0

    .line 8653
    return-object v0
.end method

.method public static parseFrom([B)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8636
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8642
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    .line 8643
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v0

    .line 8642
    return-object v0
.end method


# virtual methods
.method public getArray()Lcom/mwr/jdiesel/api/Protobuf$Message$Array;
    .locals 1

    .prologue
    .line 8507
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->array_:Lcom/mwr/jdiesel/api/Protobuf$Message$Array;

    return-object v0
.end method

.method public getArrayOrBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ArrayOrBuilder;
    .locals 1

    .prologue
    .line 8510
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->array_:Lcom/mwr/jdiesel/api/Protobuf$Message$Array;

    return-object v0
.end method

.method public getData()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 8520
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->data_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;
    .locals 1

    .prologue
    .line 8337
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    return-object v0
.end method

.method public getObject()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;
    .locals 1

    .prologue
    .line 8494
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    return-object v0
.end method

.method public getObjectOrBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReferenceOrBuilder;
    .locals 1

    .prologue
    .line 8497
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    return-object v0
.end method

.method public getPrimitive()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;
    .locals 1

    .prologue
    .line 8449
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->primitive_:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    return-object v0
.end method

.method public getPrimitiveOrBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$PrimitiveOrBuilder;
    .locals 1

    .prologue
    .line 8452
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->primitive_:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 8582
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->memoizedSerializedSize:I

    .line 8583
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 8612
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 8585
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 8586
    iget v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 8588
    iget-object v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    invoke-virtual {v2}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 8590
    :cond_1
    iget v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 8592
    iget-object v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->primitive_:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 8594
    :cond_2
    iget v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3

    .line 8596
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->getStringBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 8598
    :cond_3
    iget v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 8600
    iget-object v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 8602
    :cond_4
    iget v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 8604
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->array_:Lcom/mwr/jdiesel/api/Protobuf$Message$Array;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 8606
    :cond_5
    iget v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    .line 8608
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->data_:Lcom/google/protobuf/ByteString;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 8610
    :cond_6
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 8611
    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->memoizedSerializedSize:I

    move v1, v0

    .line 8612
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public getString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 8462
    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->string_:Ljava/lang/Object;

    .line 8463
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 8464
    check-cast v1, Ljava/lang/String;

    .line 8472
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 8467
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 8468
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 8469
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8470
    iput-object v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->string_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 8472
    goto :goto_0
.end method

.method public getType()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;
    .locals 1

    .prologue
    .line 8439
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    return-object v0
.end method

.method public hasArray()Z
    .locals 2

    .prologue
    .line 8504
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasData()Z
    .locals 2

    .prologue
    .line 8517
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

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
    .line 8491
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->bitField0_:I

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

.method public hasPrimitive()Z
    .locals 2

    .prologue
    .line 8446
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->bitField0_:I

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

.method public hasString()Z
    .locals 2

    .prologue
    .line 8459
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->bitField0_:I

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

.method public hasType()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 8436
    iget v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->bitField0_:I

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
    .line 8347
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_Argument_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$65()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 8533
    iget-byte v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->memoizedIsInitialized:B

    .line 8534
    .local v0, "isInitialized":B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    .line 8553
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 8534
    goto :goto_0

    .line 8536
    :cond_1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->hasType()Z

    move-result v3

    if-nez v3, :cond_2

    .line 8537
    iput-byte v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->memoizedIsInitialized:B

    move v1, v2

    .line 8538
    goto :goto_0

    .line 8540
    :cond_2
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->hasPrimitive()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 8541
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->getPrimitive()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_3

    .line 8542
    iput-byte v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->memoizedIsInitialized:B

    move v1, v2

    .line 8543
    goto :goto_0

    .line 8546
    :cond_3
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->hasArray()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 8547
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->getArray()Lcom/mwr/jdiesel/api/Protobuf$Message$Array;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_4

    .line 8548
    iput-byte v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->memoizedIsInitialized:B

    move v1, v2

    .line 8549
    goto :goto_0

    .line 8552
    :cond_4
    iput-byte v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->newBuilderForType()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->newBuilderForType()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;
    .locals 1

    .prologue
    .line 8690
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 8699
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;)V

    .line 8700
    .local v0, "builder":Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->toBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->toBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;
    .locals 1

    .prologue
    .line 8694
    invoke-static {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->newBuilder(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

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
    .line 8619
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

    .line 8558
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->getSerializedSize()I

    .line 8559
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 8560
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 8562
    :cond_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 8563
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->primitive_:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 8565
    :cond_1
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 8566
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->getStringBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 8568
    :cond_2
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 8569
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 8571
    :cond_3
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 8572
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->array_:Lcom/mwr/jdiesel/api/Protobuf$Message$Array;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 8574
    :cond_4
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 8575
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->data_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 8577
    :cond_5
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 8578
    return-void
.end method
