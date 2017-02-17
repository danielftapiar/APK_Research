.class public final Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Protobuf.java"

# interfaces
.implements Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mwr/jdiesel/api/Protobuf$Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReflectionRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;,
        Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;,
        Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$ConstructOrBuilder;,
        Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;,
        Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$DeleteOrBuilder;,
        Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;,
        Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetPropertyOrBuilder;,
        Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;,
        Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$InvokeOrBuilder;,
        Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;,
        Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;,
        Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$ResolveOrBuilder;,
        Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;,
        Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetPropertyOrBuilder;
    }
.end annotation


# static fields
.field public static final CONSTRUCT_FIELD_NUMBER:I = 0x4

.field public static final DELETE_FIELD_NUMBER:I = 0x8

.field public static final GET_PROPERTY_FIELD_NUMBER:I = 0x7

.field public static final INVOKE_FIELD_NUMBER:I = 0x5

.field public static final RESOLVE_FIELD_NUMBER:I = 0x3

.field public static final SESSION_ID_FIELD_NUMBER:I = 0x1

.field public static final SET_PROPERTY_FIELD_NUMBER:I = 0x6

.field public static final TYPE_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private construct_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

.field private delete_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;

.field private getProperty_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

.field private invoke_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private resolve_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;

.field private sessionId_:Ljava/lang/Object;

.field private setProperty_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

.field private type_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 5075
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;-><init>(Z)V

    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    .line 5076
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    invoke-direct {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->initFields()V

    .line 5077
    return-void
.end method

.method private constructor <init>(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;

    .prologue
    const/4 v0, -0x1

    .line 191
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 3931
    iput-byte v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->memoizedIsInitialized:B

    .line 3996
    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->memoizedSerializedSize:I

    .line 192
    return-void
.end method

.method synthetic constructor <init>(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;)V
    .locals 0

    .prologue
    .line 190
    invoke-direct {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;-><init>(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 193
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 3931
    iput-byte v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->memoizedIsInitialized:B

    .line 3996
    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->memoizedSerializedSize:I

    .line 193
    return-void
.end method

.method static synthetic access$10(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;)V
    .locals 0

    .prologue
    .line 3835
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

    return-void
.end method

.method static synthetic access$11(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;)V
    .locals 0

    .prologue
    .line 3845
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->resolve_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;

    return-void
.end method

.method static synthetic access$12(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;)V
    .locals 0

    .prologue
    .line 3858
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->construct_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

    return-void
.end method

.method static synthetic access$13(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;)V
    .locals 0

    .prologue
    .line 3871
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->invoke_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;

    return-void
.end method

.method static synthetic access$14(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;)V
    .locals 0

    .prologue
    .line 3884
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->setProperty_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

    return-void
.end method

.method static synthetic access$15(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;)V
    .locals 0

    .prologue
    .line 3897
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->getProperty_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

    return-void
.end method

.method static synthetic access$16(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;)V
    .locals 0

    .prologue
    .line 3910
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->delete_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;

    return-void
.end method

.method static synthetic access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;I)V
    .locals 0

    .prologue
    .line 3800
    iput p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->bitField0_:I

    return-void
.end method

.method static synthetic access$7()Z
    .locals 1

    .prologue
    .line 186
    sget-boolean v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$9(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 3803
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->sessionId_:Ljava/lang/Object;

    return-void
.end method

.method public static getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;
    .locals 1

    .prologue
    .line 197
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 206
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_ReflectionRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$5()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getSessionIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 3822
    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->sessionId_:Ljava/lang/Object;

    .line 3823
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 3825
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3826
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->sessionId_:Ljava/lang/Object;

    .line 3829
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
    .line 3922
    const-string v0, ""

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->sessionId_:Ljava/lang/Object;

    .line 3923
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;->RESOLVE:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

    .line 3924
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->resolve_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;

    .line 3925
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->construct_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

    .line 3926
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->invoke_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;

    .line 3927
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->setProperty_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

    .line 3928
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->getProperty_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

    .line 3929
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->delete_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;

    .line 3930
    return-void
.end method

.method public static newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;
    .locals 1

    .prologue
    .line 4113
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->create()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->access$18()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    .prologue
    .line 4116
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4082
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;

    move-result-object v0

    .line 4083
    .local v0, "builder":Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;
    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4084
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    move-result-object v1

    .line 4086
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4093
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;

    move-result-object v0

    .line 4094
    .local v0, "builder":Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4095
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    move-result-object v1

    .line 4097
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4049
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;

    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4055
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;

    .line 4056
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    move-result-object v0

    .line 4055
    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4103
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;

    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4109
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;

    move-result-object v0

    .line 4110
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    move-result-object v0

    .line 4109
    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4071
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;

    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4077
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;

    .line 4078
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    move-result-object v0

    .line 4077
    return-object v0
.end method

.method public static parseFrom([B)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4060
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;

    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4066
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;

    .line 4067
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    move-result-object v0

    .line 4066
    return-object v0
.end method


# virtual methods
.method public getConstruct()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;
    .locals 1

    .prologue
    .line 3863
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->construct_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

    return-object v0
.end method

.method public getConstructOrBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$ConstructOrBuilder;
    .locals 1

    .prologue
    .line 3866
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->construct_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;
    .locals 1

    .prologue
    .line 201
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    return-object v0
.end method

.method public getDelete()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;
    .locals 1

    .prologue
    .line 3915
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->delete_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;

    return-object v0
.end method

.method public getDeleteOrBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$DeleteOrBuilder;
    .locals 1

    .prologue
    .line 3918
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->delete_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;

    return-object v0
.end method

.method public getGetProperty()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;
    .locals 1

    .prologue
    .line 3902
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->getProperty_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

    return-object v0
.end method

.method public getGetPropertyOrBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetPropertyOrBuilder;
    .locals 1

    .prologue
    .line 3905
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->getProperty_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

    return-object v0
.end method

.method public getInvoke()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;
    .locals 1

    .prologue
    .line 3876
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->invoke_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;

    return-object v0
.end method

.method public getInvokeOrBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$InvokeOrBuilder;
    .locals 1

    .prologue
    .line 3879
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->invoke_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;

    return-object v0
.end method

.method public getResolve()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;
    .locals 1

    .prologue
    .line 3850
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->resolve_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;

    return-object v0
.end method

.method public getResolveOrBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$ResolveOrBuilder;
    .locals 1

    .prologue
    .line 3853
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->resolve_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 3998
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->memoizedSerializedSize:I

    .line 3999
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 4036
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 4001
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 4002
    iget v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 4004
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->getSessionIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4006
    :cond_1
    iget v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 4008
    iget-object v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

    invoke-virtual {v2}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;->getNumber()I

    move-result v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 4010
    :cond_2
    iget v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3

    .line 4012
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->resolve_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4014
    :cond_3
    iget v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_4

    .line 4016
    iget-object v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->construct_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4018
    :cond_4
    iget v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 4020
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->invoke_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4022
    :cond_5
    iget v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    .line 4024
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->setProperty_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4026
    :cond_6
    iget v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_7

    .line 4028
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->getProperty_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4030
    :cond_7
    iget v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_8

    .line 4032
    iget-object v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->delete_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4034
    :cond_8
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 4035
    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 4036
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto/16 :goto_0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3808
    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->sessionId_:Ljava/lang/Object;

    .line 3809
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 3810
    check-cast v1, Ljava/lang/String;

    .line 3818
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 3813
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3814
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3815
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3816
    iput-object v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->sessionId_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 3818
    goto :goto_0
.end method

.method public getSetProperty()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;
    .locals 1

    .prologue
    .line 3889
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->setProperty_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

    return-object v0
.end method

.method public getSetPropertyOrBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetPropertyOrBuilder;
    .locals 1

    .prologue
    .line 3892
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->setProperty_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

    return-object v0
.end method

.method public getType()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;
    .locals 1

    .prologue
    .line 3840
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

    return-object v0
.end method

.method public hasConstruct()Z
    .locals 2

    .prologue
    .line 3860
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->bitField0_:I

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

.method public hasDelete()Z
    .locals 2

    .prologue
    .line 3912
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGetProperty()Z
    .locals 2

    .prologue
    .line 3899
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasInvoke()Z
    .locals 2

    .prologue
    .line 3873
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->bitField0_:I

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

.method public hasResolve()Z
    .locals 2

    .prologue
    .line 3847
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->bitField0_:I

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

.method public hasSessionId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3805
    iget v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSetProperty()Z
    .locals 2

    .prologue
    .line 3886
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->bitField0_:I

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

.method public hasType()Z
    .locals 2

    .prologue
    .line 3837
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->bitField0_:I

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
    .line 211
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_ReflectionRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$61()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3933
    iget-byte v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->memoizedIsInitialized:B

    .line 3934
    .local v0, "isInitialized":B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    .line 3963
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 3934
    goto :goto_0

    .line 3936
    :cond_1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->hasSessionId()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3937
    iput-byte v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->memoizedIsInitialized:B

    move v1, v2

    .line 3938
    goto :goto_0

    .line 3940
    :cond_2
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->hasType()Z

    move-result v3

    if-nez v3, :cond_3

    .line 3941
    iput-byte v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->memoizedIsInitialized:B

    move v1, v2

    .line 3942
    goto :goto_0

    .line 3944
    :cond_3
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->hasConstruct()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3945
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->getConstruct()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_4

    .line 3946
    iput-byte v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->memoizedIsInitialized:B

    move v1, v2

    .line 3947
    goto :goto_0

    .line 3950
    :cond_4
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->hasInvoke()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3951
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->getInvoke()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_5

    .line 3952
    iput-byte v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->memoizedIsInitialized:B

    move v1, v2

    .line 3953
    goto :goto_0

    .line 3956
    :cond_5
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->hasSetProperty()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3957
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->getSetProperty()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_6

    .line 3958
    iput-byte v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->memoizedIsInitialized:B

    move v1, v2

    .line 3959
    goto :goto_0

    .line 3962
    :cond_6
    iput-byte v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->newBuilderForType()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->newBuilderForType()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;
    .locals 1

    .prologue
    .line 4114
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 4123
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;)V

    .line 4124
    .local v0, "builder":Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->toBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->toBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;
    .locals 1

    .prologue
    .line 4118
    invoke-static {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->newBuilder(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;

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
    .line 4043
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 5
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 3968
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->getSerializedSize()I

    .line 3969
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 3970
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->getSessionIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3972
    :cond_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 3973
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 3975
    :cond_1
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 3976
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->resolve_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3978
    :cond_2
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_3

    .line 3979
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->construct_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3981
    :cond_3
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 3982
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->invoke_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3984
    :cond_4
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 3985
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->setProperty_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3987
    :cond_5
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 3988
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->getProperty_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3990
    :cond_6
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    .line 3991
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->delete_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3993
    :cond_7
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 3994
    return-void
.end method
