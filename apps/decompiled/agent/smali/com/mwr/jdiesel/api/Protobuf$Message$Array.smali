.class public final Lcom/mwr/jdiesel/api/Protobuf$Message$Array;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Protobuf.java"

# interfaces
.implements Lcom/mwr/jdiesel/api/Protobuf$Message$ArrayOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mwr/jdiesel/api/Protobuf$Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Array"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;,
        Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;
    }
.end annotation


# static fields
.field public static final ELEMENT_FIELD_NUMBER:I = 0x2

.field public static final TYPE_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message$Array;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private element_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private type_:Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10043
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;-><init>(Z)V

    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message$Array;

    .line 10044
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message$Array;

    invoke-direct {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->initFields()V

    .line 10045
    return-void
.end method

.method private constructor <init>(Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;

    .prologue
    const/4 v0, -0x1

    .line 9357
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 9491
    iput-byte v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->memoizedIsInitialized:B

    .line 9522
    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->memoizedSerializedSize:I

    .line 9358
    return-void
.end method

.method synthetic constructor <init>(Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;Lcom/mwr/jdiesel/api/Protobuf$Message$Array;)V
    .locals 0

    .prologue
    .line 9356
    invoke-direct {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;-><init>(Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 9359
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 9491
    iput-byte v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->memoizedIsInitialized:B

    .line 9522
    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->memoizedSerializedSize:I

    .line 9359
    return-void
.end method

.method static synthetic access$10(Lcom/mwr/jdiesel/api/Protobuf$Message$Array;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 9468
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->element_:Ljava/util/List;

    return-void
.end method

.method static synthetic access$11(Lcom/mwr/jdiesel/api/Protobuf$Message$Array;I)V
    .locals 0

    .prologue
    .line 9455
    iput p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->bitField0_:I

    return-void
.end method

.method static synthetic access$12(Lcom/mwr/jdiesel/api/Protobuf$Message$Array;)Ljava/util/List;
    .locals 1

    .prologue
    .line 9468
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->element_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$7()Z
    .locals 1

    .prologue
    .line 9352
    sget-boolean v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$9(Lcom/mwr/jdiesel/api/Protobuf$Message$Array;Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;)V
    .locals 0

    .prologue
    .line 9458
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;

    return-void
.end method

.method public static getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$Array;
    .locals 1

    .prologue
    .line 9363
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message$Array;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 9372
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_Array_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$38()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 9488
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;->STRING:Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;

    .line 9489
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->element_:Ljava/util/List;

    .line 9490
    return-void
.end method

.method public static newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;
    .locals 1

    .prologue
    .line 9615
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->create()Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->access$18()Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/mwr/jdiesel/api/Protobuf$Message$Array;)Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/mwr/jdiesel/api/Protobuf$Message$Array;

    .prologue
    .line 9618
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$Array;)Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/mwr/jdiesel/api/Protobuf$Message$Array;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9584
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;

    move-result-object v0

    .line 9585
    .local v0, "builder":Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;
    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9586
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$Array;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Array;

    move-result-object v1

    .line 9588
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$Array;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9595
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;

    move-result-object v0

    .line 9596
    .local v0, "builder":Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9597
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$Array;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Array;

    move-result-object v1

    .line 9599
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/mwr/jdiesel/api/Protobuf$Message$Array;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9551
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;

    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$Array;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Array;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$Array;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9557
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;

    .line 9558
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$Array;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Array;

    move-result-object v0

    .line 9557
    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/mwr/jdiesel/api/Protobuf$Message$Array;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9605
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;

    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$Array;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Array;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$Array;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9611
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;

    move-result-object v0

    .line 9612
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$Array;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Array;

    move-result-object v0

    .line 9611
    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/mwr/jdiesel/api/Protobuf$Message$Array;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9573
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;

    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$Array;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Array;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$Array;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9579
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;

    .line 9580
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$Array;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Array;

    move-result-object v0

    .line 9579
    return-object v0
.end method

.method public static parseFrom([B)Lcom/mwr/jdiesel/api/Protobuf$Message$Array;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9562
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;

    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$Array;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Array;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$Array;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9568
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;

    .line 9569
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$Array;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Array;

    move-result-object v0

    .line 9568
    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$Array;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$Array;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$Array;
    .locals 1

    .prologue
    .line 9367
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message$Array;

    return-object v0
.end method

.method public getElement(I)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 9480
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->element_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    return-object v0
.end method

.method public getElementCount()I
    .locals 1

    .prologue
    .line 9477
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->element_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getElementList()Ljava/util/List;
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
    .line 9470
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->element_:Ljava/util/List;

    return-object v0
.end method

.method public getElementOrBuilder(I)Lcom/mwr/jdiesel/api/Protobuf$Message$ArgumentOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 9484
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->element_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ArgumentOrBuilder;

    return-object v0
.end method

.method public getElementOrBuilderList()Ljava/util/List;
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
    .line 9474
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->element_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 9524
    iget v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->memoizedSerializedSize:I

    .line 9525
    .local v1, "size":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 9538
    .end local v1    # "size":I
    .local v2, "size":I
    :goto_0
    return v2

    .line 9527
    .end local v2    # "size":I
    .restart local v1    # "size":I
    :cond_0
    const/4 v1, 0x0

    .line 9528
    iget v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1

    .line 9530
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;

    invoke-virtual {v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;->getNumber()I

    move-result v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 9532
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->element_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_2

    .line 9536
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v3

    add-int/2addr v1, v3

    .line 9537
    iput v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->memoizedSerializedSize:I

    move v2, v1

    .line 9538
    .end local v1    # "size":I
    .restart local v2    # "size":I
    goto :goto_0

    .line 9534
    .end local v2    # "size":I
    .restart local v1    # "size":I
    :cond_2
    const/4 v4, 0x2

    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->element_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 9532
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getType()Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;
    .locals 1

    .prologue
    .line 9463
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;

    return-object v0
.end method

.method public hasType()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 9460
    iget v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->bitField0_:I

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
    .line 9377
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_Array_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$66()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 9493
    iget-byte v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->memoizedIsInitialized:B

    .line 9494
    .local v1, "isInitialized":B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    if-ne v1, v2, :cond_0

    .line 9507
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 9494
    goto :goto_0

    .line 9496
    :cond_1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->hasType()Z

    move-result v4

    if-nez v4, :cond_2

    .line 9497
    iput-byte v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->memoizedIsInitialized:B

    move v2, v3

    .line 9498
    goto :goto_0

    .line 9500
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->getElementCount()I

    move-result v4

    if-lt v0, v4, :cond_3

    .line 9506
    iput-byte v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->memoizedIsInitialized:B

    goto :goto_0

    .line 9501
    :cond_3
    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->getElement(I)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_4

    .line 9502
    iput-byte v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->memoizedIsInitialized:B

    move v2, v3

    .line 9503
    goto :goto_0

    .line 9500
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->newBuilderForType()Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->newBuilderForType()Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;
    .locals 1

    .prologue
    .line 9616
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 9625
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;)V

    .line 9626
    .local v0, "builder":Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->toBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->toBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;
    .locals 1

    .prologue
    .line 9620
    invoke-static {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->newBuilder(Lcom/mwr/jdiesel/api/Protobuf$Message$Array;)Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;

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
    .line 9545
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

    .line 9512
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->getSerializedSize()I

    .line 9513
    iget v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_0

    .line 9514
    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 9516
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->element_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 9519
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 9520
    return-void

    .line 9517
    :cond_1
    const/4 v2, 0x2

    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->element_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 9516
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
