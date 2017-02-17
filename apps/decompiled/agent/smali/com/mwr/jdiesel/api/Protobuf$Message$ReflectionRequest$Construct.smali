.class public final Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Protobuf.java"

# interfaces
.implements Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$ConstructOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Construct"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;
    }
.end annotation


# static fields
.field public static final ARGUMENT_FIELD_NUMBER:I = 0x2

.field public static final OBJECT_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

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

.field private object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1375
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;-><init>(Z)V

    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

    .line 1376
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

    invoke-direct {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->initFields()V

    .line 1377
    return-void
.end method

.method private constructor <init>(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;

    .prologue
    const/4 v0, -0x1

    .line 696
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 758
    iput-byte v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->memoizedIsInitialized:B

    .line 785
    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->memoizedSerializedSize:I

    .line 697
    return-void
.end method

.method synthetic constructor <init>(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;)V
    .locals 0

    .prologue
    .line 695
    invoke-direct {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;-><init>(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 698
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 758
    iput-byte v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->memoizedIsInitialized:B

    .line 785
    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->memoizedSerializedSize:I

    .line 698
    return-void
.end method

.method static synthetic access$10(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 735
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->argument_:Ljava/util/List;

    return-void
.end method

.method static synthetic access$11(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;I)V
    .locals 0

    .prologue
    .line 719
    iput p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->bitField0_:I

    return-void
.end method

.method static synthetic access$12(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;)Ljava/util/List;
    .locals 1

    .prologue
    .line 735
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->argument_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$7()Z
    .locals 1

    .prologue
    .line 691
    sget-boolean v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$9(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;)V
    .locals 0

    .prologue
    .line 722
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    return-void
.end method

.method public static getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;
    .locals 1

    .prologue
    .line 702
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 711
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_ReflectionRequest_Construct_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$11()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 755
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    .line 756
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->argument_:Ljava/util/List;

    .line 757
    return-void
.end method

.method public static newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;
    .locals 1

    .prologue
    .line 878
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->create()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->access$18()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

    .prologue
    .line 881
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 847
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;

    move-result-object v0

    .line 848
    .local v0, "builder":Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;
    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 849
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

    move-result-object v1

    .line 851
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 858
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;

    move-result-object v0

    .line 859
    .local v0, "builder":Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 860
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

    move-result-object v1

    .line 862
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 814
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;

    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 820
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;

    .line 821
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

    move-result-object v0

    .line 820
    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 868
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;

    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 874
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;

    move-result-object v0

    .line 875
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

    move-result-object v0

    .line 874
    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 836
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;

    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 842
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;

    .line 843
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

    move-result-object v0

    .line 842
    return-object v0
.end method

.method public static parseFrom([B)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 825
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;

    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 831
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;

    .line 832
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

    move-result-object v0

    .line 831
    return-object v0
.end method


# virtual methods
.method public getArgument(I)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 747
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->argument_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    return-object v0
.end method

.method public getArgumentCount()I
    .locals 1

    .prologue
    .line 744
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->argument_:Ljava/util/List;

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
    .line 737
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->argument_:Ljava/util/List;

    return-object v0
.end method

.method public getArgumentOrBuilder(I)Lcom/mwr/jdiesel/api/Protobuf$Message$ArgumentOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 751
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->argument_:Ljava/util/List;

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
    .line 741
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->argument_:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;
    .locals 1

    .prologue
    .line 706
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

    return-object v0
.end method

.method public getObject()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    return-object v0
.end method

.method public getObjectOrBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReferenceOrBuilder;
    .locals 1

    .prologue
    .line 730
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 787
    iget v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->memoizedSerializedSize:I

    .line 788
    .local v1, "size":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 801
    .end local v1    # "size":I
    .local v2, "size":I
    :goto_0
    return v2

    .line 790
    .end local v2    # "size":I
    .restart local v1    # "size":I
    :cond_0
    const/4 v1, 0x0

    .line 791
    iget v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1

    .line 793
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 795
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->argument_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_2

    .line 799
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v3

    add-int/2addr v1, v3

    .line 800
    iput v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->memoizedSerializedSize:I

    move v2, v1

    .line 801
    .end local v1    # "size":I
    .restart local v2    # "size":I
    goto :goto_0

    .line 797
    .end local v2    # "size":I
    .restart local v1    # "size":I
    :cond_2
    const/4 v4, 0x2

    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->argument_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 795
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public hasObject()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 724
    iget v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->bitField0_:I

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
    .line 716
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_ReflectionRequest_Construct_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$56()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 760
    iget-byte v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->memoizedIsInitialized:B

    .line 761
    .local v1, "isInitialized":B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    if-ne v1, v2, :cond_0

    .line 770
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 761
    goto :goto_0

    .line 763
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->getArgumentCount()I

    move-result v4

    if-lt v0, v4, :cond_2

    .line 769
    iput-byte v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->memoizedIsInitialized:B

    goto :goto_0

    .line 764
    :cond_2
    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->getArgument(I)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_3

    .line 765
    iput-byte v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->memoizedIsInitialized:B

    move v2, v3

    .line 766
    goto :goto_0

    .line 763
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->newBuilderForType()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->newBuilderForType()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;
    .locals 1

    .prologue
    .line 879
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 888
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;)V

    .line 889
    .local v0, "builder":Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->toBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->toBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;
    .locals 1

    .prologue
    .line 883
    invoke-static {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->newBuilder(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;

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
    .line 808
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
    const/4 v2, 0x1

    .line 775
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->getSerializedSize()I

    .line 776
    iget v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_0

    .line 777
    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 779
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->argument_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 782
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 783
    return-void

    .line 780
    :cond_1
    const/4 v2, 0x2

    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->argument_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 779
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
