.class public final Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Protobuf.java"

# interfaces
.implements Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$DeleteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Delete"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;
    }
.end annotation


# static fields
.field public static final OBJECT_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3793
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;-><init>(Z)V

    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;->defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;

    .line 3794
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;->defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;

    invoke-direct {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;->initFields()V

    .line 3795
    return-void
.end method

.method private constructor <init>(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;

    .prologue
    const/4 v0, -0x1

    .line 3389
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 3429
    iput-byte v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;->memoizedIsInitialized:B

    .line 3447
    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;->memoizedSerializedSize:I

    .line 3390
    return-void
.end method

.method synthetic constructor <init>(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;)V
    .locals 0

    .prologue
    .line 3388
    invoke-direct {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;-><init>(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 3391
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 3429
    iput-byte v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;->memoizedIsInitialized:B

    .line 3447
    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;->memoizedSerializedSize:I

    .line 3391
    return-void
.end method

.method static synthetic access$10(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;I)V
    .locals 0

    .prologue
    .line 3412
    iput p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;->bitField0_:I

    return-void
.end method

.method static synthetic access$7()Z
    .locals 1

    .prologue
    .line 3384
    sget-boolean v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$9(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;)V
    .locals 0

    .prologue
    .line 3415
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    return-void
.end method

.method public static getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;
    .locals 1

    .prologue
    .line 3395
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;->defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3404
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_ReflectionRequest_Delete_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$23()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 3427
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    .line 3428
    return-void
.end method

.method public static newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;
    .locals 1

    .prologue
    .line 3536
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->create()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->access$18()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;

    .prologue
    .line 3539
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3505
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;

    move-result-object v0

    .line 3506
    .local v0, "builder":Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;
    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3507
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;

    move-result-object v1

    .line 3509
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3516
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;

    move-result-object v0

    .line 3517
    .local v0, "builder":Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3518
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;

    move-result-object v1

    .line 3520
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3472
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;

    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3478
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;

    .line 3479
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;

    move-result-object v0

    .line 3478
    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3526
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;

    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3532
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;

    move-result-object v0

    .line 3533
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;

    move-result-object v0

    .line 3532
    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3494
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;

    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3500
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;

    .line 3501
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;

    move-result-object v0

    .line 3500
    return-object v0
.end method

.method public static parseFrom([B)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3483
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;

    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3489
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;

    .line 3490
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;

    move-result-object v0

    .line 3489
    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;->getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;->getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;
    .locals 1

    .prologue
    .line 3399
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;->defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;

    return-object v0
.end method

.method public getObject()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;
    .locals 1

    .prologue
    .line 3420
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    return-object v0
.end method

.method public getObjectOrBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReferenceOrBuilder;
    .locals 1

    .prologue
    .line 3423
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 3449
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;->memoizedSerializedSize:I

    .line 3450
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 3459
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 3452
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 3453
    iget v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 3455
    iget-object v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3457
    :cond_1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 3458
    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;->memoizedSerializedSize:I

    move v1, v0

    .line 3459
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public hasObject()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3417
    iget v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;->bitField0_:I

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
    .line 3409
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_ReflectionRequest_Delete_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$60()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 3431
    iget-byte v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;->memoizedIsInitialized:B

    .line 3432
    .local v0, "isInitialized":B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 3435
    :goto_0
    return v1

    .line 3432
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 3434
    :cond_1
    iput-byte v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;->newBuilderForType()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;->newBuilderForType()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;
    .locals 1

    .prologue
    .line 3537
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 3546
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;)V

    .line 3547
    .local v0, "builder":Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;->toBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;->toBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;
    .locals 1

    .prologue
    .line 3541
    invoke-static {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;->newBuilder(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;

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
    .line 3466
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 3440
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;->getSerializedSize()I

    .line 3441
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 3442
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3444
    :cond_0
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 3445
    return-void
.end method
