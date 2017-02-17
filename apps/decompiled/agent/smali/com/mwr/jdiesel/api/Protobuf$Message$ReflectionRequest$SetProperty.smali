.class public final Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Protobuf.java"

# interfaces
.implements Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetPropertyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SetProperty"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;
    }
.end annotation


# static fields
.field public static final OBJECT_FIELD_NUMBER:I = 0x1

.field public static final PROPERTY_FIELD_NUMBER:I = 0x2

.field public static final VALUE_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

.field private property_:Ljava/lang/Object;

.field private value_:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2851
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;-><init>(Z)V

    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

    .line 2852
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

    invoke-direct {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->initFields()V

    .line 2853
    return-void
.end method

.method private constructor <init>(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;

    .prologue
    const/4 v0, -0x1

    .line 2207
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 2294
    iput-byte v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->memoizedIsInitialized:B

    .line 2324
    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->memoizedSerializedSize:I

    .line 2208
    return-void
.end method

.method synthetic constructor <init>(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;)V
    .locals 0

    .prologue
    .line 2206
    invoke-direct {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;-><init>(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 2209
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 2294
    iput-byte v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->memoizedIsInitialized:B

    .line 2324
    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->memoizedSerializedSize:I

    .line 2209
    return-void
.end method

.method static synthetic access$10(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 2246
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->property_:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$11(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;)V
    .locals 0

    .prologue
    .line 2278
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->value_:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    return-void
.end method

.method static synthetic access$12(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;I)V
    .locals 0

    .prologue
    .line 2230
    iput p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->bitField0_:I

    return-void
.end method

.method static synthetic access$7()Z
    .locals 1

    .prologue
    .line 2202
    sget-boolean v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$9(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;)V
    .locals 0

    .prologue
    .line 2233
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    return-void
.end method

.method public static getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;
    .locals 1

    .prologue
    .line 2213
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2222
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_ReflectionRequest_SetProperty_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$17()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getPropertyBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 2265
    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->property_:Ljava/lang/Object;

    .line 2266
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2268
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2269
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->property_:Ljava/lang/Object;

    .line 2272
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
    .line 2290
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    .line 2291
    const-string v0, ""

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->property_:Ljava/lang/Object;

    .line 2292
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->value_:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    .line 2293
    return-void
.end method

.method public static newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;
    .locals 1

    .prologue
    .line 2421
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->create()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->access$18()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

    .prologue
    .line 2424
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2390
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;

    move-result-object v0

    .line 2391
    .local v0, "builder":Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;
    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2392
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

    move-result-object v1

    .line 2394
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2401
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;

    move-result-object v0

    .line 2402
    .local v0, "builder":Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2403
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

    move-result-object v1

    .line 2405
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2357
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;

    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2363
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;

    .line 2364
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

    move-result-object v0

    .line 2363
    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2411
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;

    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2417
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;

    move-result-object v0

    .line 2418
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

    move-result-object v0

    .line 2417
    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2379
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;

    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2385
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;

    .line 2386
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

    move-result-object v0

    .line 2385
    return-object v0
.end method

.method public static parseFrom([B)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2368
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;

    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2374
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;

    .line 2375
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

    move-result-object v0

    .line 2374
    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;
    .locals 1

    .prologue
    .line 2217
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

    return-object v0
.end method

.method public getObject()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;
    .locals 1

    .prologue
    .line 2238
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    return-object v0
.end method

.method public getObjectOrBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReferenceOrBuilder;
    .locals 1

    .prologue
    .line 2241
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    return-object v0
.end method

.method public getProperty()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2251
    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->property_:Ljava/lang/Object;

    .line 2252
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 2253
    check-cast v1, Ljava/lang/String;

    .line 2261
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 2256
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2257
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2258
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2259
    iput-object v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->property_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 2261
    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 2326
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->memoizedSerializedSize:I

    .line 2327
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 2344
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 2329
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 2330
    iget v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 2332
    iget-object v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2334
    :cond_1
    iget v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 2336
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->getPropertyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2338
    :cond_2
    iget v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 2340
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->value_:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2342
    :cond_3
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 2343
    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->memoizedSerializedSize:I

    move v1, v0

    .line 2344
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public getValue()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;
    .locals 1

    .prologue
    .line 2283
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->value_:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    return-object v0
.end method

.method public getValueOrBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ArgumentOrBuilder;
    .locals 1

    .prologue
    .line 2286
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->value_:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    return-object v0
.end method

.method public hasObject()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2235
    iget v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->bitField0_:I

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
    .line 2248
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->bitField0_:I

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

.method public hasValue()Z
    .locals 2

    .prologue
    .line 2280
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 2227
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_ReflectionRequest_SetProperty_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$58()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2296
    iget-byte v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->memoizedIsInitialized:B

    .line 2297
    .local v0, "isInitialized":B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    .line 2306
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 2297
    goto :goto_0

    .line 2299
    :cond_1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->hasValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2300
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->getValue()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2301
    iput-byte v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->memoizedIsInitialized:B

    move v1, v2

    .line 2302
    goto :goto_0

    .line 2305
    :cond_2
    iput-byte v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->newBuilderForType()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->newBuilderForType()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;
    .locals 1

    .prologue
    .line 2422
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 2431
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;)V

    .line 2432
    .local v0, "builder":Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->toBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->toBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;
    .locals 1

    .prologue
    .line 2426
    invoke-static {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->newBuilder(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;

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
    .line 2351
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

    .line 2311
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->getSerializedSize()I

    .line 2312
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 2313
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2315
    :cond_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 2316
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->getPropertyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2318
    :cond_1
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 2319
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->value_:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2321
    :cond_2
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 2322
    return-void
.end method
