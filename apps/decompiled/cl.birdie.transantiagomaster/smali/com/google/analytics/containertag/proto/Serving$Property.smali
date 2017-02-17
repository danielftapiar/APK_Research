.class public final Lcom/google/analytics/containertag/proto/Serving$Property;
.super Lcom/google/tagmanager/protobuf/GeneratedMessageLite;
.source "Serving.java"

# interfaces
.implements Lcom/google/analytics/containertag/proto/Serving$PropertyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/containertag/proto/Serving;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Property"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/analytics/containertag/proto/Serving$Property$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/tagmanager/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/tagmanager/protobuf/Parser",
            "<",
            "Lcom/google/analytics/containertag/proto/Serving$Property;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/analytics/containertag/proto/Serving$Property;

.field private static volatile mutableDefault:Lcom/google/tagmanager/protobuf/MutableMessageLite;


# instance fields
.field private bitField0_:I

.field private key_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private final unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

.field private value_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2324
    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$Property$1;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$Property$1;-><init>()V

    sput-object v0, Lcom/google/analytics/containertag/proto/Serving$Property;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    .line 2478
    const/4 v0, 0x0

    sput-object v0, Lcom/google/analytics/containertag/proto/Serving$Property;->mutableDefault:Lcom/google/tagmanager/protobuf/MutableMessageLite;

    .line 2719
    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$Property;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$Property;-><init>()V

    .line 2720
    sput-object v0, Lcom/google/analytics/containertag/proto/Serving$Property;->defaultInstance:Lcom/google/analytics/containertag/proto/Serving$Property;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$Property;->initFields()V

    .line 2721
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 2258
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite;-><init>()V

    .line 2378
    iput-byte v0, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->memoizedIsInitialized:B

    .line 2407
    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->memoizedSerializedSize:I

    .line 2258
    sget-object v0, Lcom/google/tagmanager/protobuf/ByteString;->EMPTY:Lcom/google/tagmanager/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    return-void
.end method

.method private constructor <init>(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)V
    .locals 7
    .param p1, "input"    # Lcom/google/tagmanager/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 2273
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite;-><init>()V

    .line 2378
    iput-byte v5, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->memoizedIsInitialized:B

    .line 2407
    iput v5, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->memoizedSerializedSize:I

    .line 2274
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Property;->initFields()V

    .line 2275
    invoke-static {}, Lcom/google/tagmanager/protobuf/ByteString;->newOutput()Lcom/google/tagmanager/protobuf/ByteString$Output;

    move-result-object v4

    .line 2278
    .local v4, "unknownFieldsOutput":Lcom/google/tagmanager/protobuf/ByteString$Output;
    invoke-static {v4}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/google/tagmanager/protobuf/CodedOutputStream;

    move-result-object v3

    .line 2282
    .local v3, "unknownFieldsCodedOutput":Lcom/google/tagmanager/protobuf/CodedOutputStream;
    const/4 v0, 0x0

    .line 2283
    .local v0, "done":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 2284
    :try_start_0
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 2285
    .local v2, "tag":I
    sparse-switch v2, :sswitch_data_0

    .line 2290
    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/google/analytics/containertag/proto/Serving$Property;->parseUnknownField(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/CodedOutputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2292
    const/4 v0, 0x1

    goto :goto_0

    .line 2287
    :sswitch_0
    const/4 v0, 0x1

    .line 2288
    goto :goto_0

    .line 2297
    :sswitch_1
    iget v5, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->bitField0_:I

    .line 2298
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->key_:I
    :try_end_0
    .catch Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2308
    .end local v2    # "tag":I
    :catch_0
    move-exception v5

    :try_start_1
    invoke-virtual {v5, p0}, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/tagmanager/protobuf/MessageLite;)Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2314
    :catchall_0
    move-exception v5

    .line 2315
    :try_start_2
    invoke-virtual {v3}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2319
    invoke-virtual {v4}, Lcom/google/tagmanager/protobuf/ByteString$Output;->toByteString()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    .line 2321
    :goto_1
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Property;->makeExtensionsImmutable()V

    throw v5

    .line 2302
    .restart local v2    # "tag":I
    :sswitch_2
    :try_start_3
    iget v5, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->bitField0_:I

    .line 2303
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->value_:I
    :try_end_3
    .catch Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 2310
    .end local v2    # "tag":I
    :catch_1
    move-exception v1

    .line 2311
    .local v1, "e":Ljava/io/IOException;
    :try_start_4
    new-instance v5, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/tagmanager/protobuf/MessageLite;)Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2315
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    :try_start_5
    invoke-virtual {v3}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->flush()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2319
    invoke-virtual {v4}, Lcom/google/tagmanager/protobuf/ByteString$Output;->toByteString()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    .line 2321
    :goto_2
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Property;->makeExtensionsImmutable()V

    .line 2322
    return-void

    .line 2319
    :catch_2
    move-exception v5

    invoke-virtual {v4}, Lcom/google/tagmanager/protobuf/ByteString$Output;->toByteString()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    goto :goto_2

    :catchall_1
    move-exception v5

    invoke-virtual {v4}, Lcom/google/tagmanager/protobuf/ByteString$Output;->toByteString()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    throw v5

    :catch_3
    move-exception v6

    invoke-virtual {v4}, Lcom/google/tagmanager/protobuf/ByteString$Output;->toByteString()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    goto :goto_1

    :catchall_2
    move-exception v5

    invoke-virtual {v4}, Lcom/google/tagmanager/protobuf/ByteString$Output;->toByteString()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    throw v5

    .line 2285
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;B)V
    .locals 0
    .param p1, "x0"    # Lcom/google/tagmanager/protobuf/CodedInputStream;
    .param p2, "x1"    # Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2249
    invoke-direct {p0, p1, p2}, Lcom/google/analytics/containertag/proto/Serving$Property;-><init>(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;

    .prologue
    const/4 v1, -0x1

    .line 2255
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite;-><init>(B)V

    .line 2378
    iput-byte v1, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->memoizedIsInitialized:B

    .line 2407
    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->memoizedSerializedSize:I

    .line 2256
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;->getUnknownFields()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    .line 2257
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;B)V
    .locals 0
    .param p1, "x0"    # Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;

    .prologue
    .line 2249
    invoke-direct {p0, p1}, Lcom/google/analytics/containertag/proto/Serving$Property;-><init>(Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method static synthetic access$2302(Lcom/google/analytics/containertag/proto/Serving$Property;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/analytics/containertag/proto/Serving$Property;
    .param p1, "x1"    # I

    .prologue
    .line 2249
    iput p1, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->key_:I

    return p1
.end method

.method static synthetic access$2402(Lcom/google/analytics/containertag/proto/Serving$Property;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/analytics/containertag/proto/Serving$Property;
    .param p1, "x1"    # I

    .prologue
    .line 2249
    iput p1, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->value_:I

    return p1
.end method

.method static synthetic access$2502(Lcom/google/analytics/containertag/proto/Serving$Property;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/analytics/containertag/proto/Serving$Property;
    .param p1, "x1"    # I

    .prologue
    .line 2249
    iput p1, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->bitField0_:I

    return p1
.end method

.method static synthetic access$2600(Lcom/google/analytics/containertag/proto/Serving$Property;)Lcom/google/tagmanager/protobuf/ByteString;
    .locals 1
    .param p0, "x0"    # Lcom/google/analytics/containertag/proto/Serving$Property;

    .prologue
    .line 2249
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/google/analytics/containertag/proto/Serving$Property;
    .locals 1

    .prologue
    .line 2262
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$Property;->defaultInstance:Lcom/google/analytics/containertag/proto/Serving$Property;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2375
    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->key_:I

    .line 2376
    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->value_:I

    .line 2377
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2435
    if-ne p1, p0, :cond_0

    .line 2454
    :goto_0
    return v2

    .line 2438
    :cond_0
    instance-of v4, p1, Lcom/google/analytics/containertag/proto/Serving$Property;

    if-nez v4, :cond_1

    .line 2439
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 2441
    check-cast v0, Lcom/google/analytics/containertag/proto/Serving$Property;

    .line 2443
    .local v0, "other":Lcom/google/analytics/containertag/proto/Serving$Property;
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Property;->hasKey()Z

    move-result v4

    invoke-virtual {v0}, Lcom/google/analytics/containertag/proto/Serving$Property;->hasKey()Z

    move-result v5

    if-ne v4, v5, :cond_4

    move v1, v2

    .line 2445
    .local v1, "result":Z
    :goto_1
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Property;->hasKey()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2446
    if-eqz v1, :cond_5

    iget v4, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->key_:I

    iget v5, v0, Lcom/google/analytics/containertag/proto/Serving$Property;->key_:I

    if-ne v4, v5, :cond_5

    move v1, v2

    .line 2449
    :cond_2
    :goto_2
    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Property;->hasValue()Z

    move-result v4

    invoke-virtual {v0}, Lcom/google/analytics/containertag/proto/Serving$Property;->hasValue()Z

    move-result v5

    if-ne v4, v5, :cond_6

    move v1, v2

    .line 2450
    :goto_3
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Property;->hasValue()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2451
    if-eqz v1, :cond_7

    iget v4, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->value_:I

    iget v5, v0, Lcom/google/analytics/containertag/proto/Serving$Property;->value_:I

    if-ne v4, v5, :cond_7

    move v1, v2

    :cond_3
    :goto_4
    move v2, v1

    .line 2454
    goto :goto_0

    .end local v1    # "result":Z
    :cond_4
    move v1, v3

    .line 2443
    goto :goto_1

    .restart local v1    # "result":Z
    :cond_5
    move v1, v3

    .line 2446
    goto :goto_2

    :cond_6
    move v1, v3

    .line 2449
    goto :goto_3

    :cond_7
    move v1, v3

    .line 2451
    goto :goto_4
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/tagmanager/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2249
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$Property;->defaultInstance:Lcom/google/analytics/containertag/proto/Serving$Property;

    return-object v0
.end method

.method public final getKey()I
    .locals 1

    .prologue
    .line 2354
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->key_:I

    return v0
.end method

.method public final getParserForType()Lcom/google/tagmanager/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/tagmanager/protobuf/Parser",
            "<",
            "Lcom/google/analytics/containertag/proto/Serving$Property;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2336
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$Property;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    return-object v0
.end method

.method public final getValue()I
    .locals 1

    .prologue
    .line 2371
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->value_:I

    return v0
.end method

.method public final hasKey()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2348
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasValue()Z
    .locals 2

    .prologue
    .line 2365
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->bitField0_:I

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

.method public final hashCode()I
    .locals 3

    .prologue
    .line 2459
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->memoizedHashCode:I

    if-eqz v1, :cond_0

    .line 2460
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->memoizedHashCode:I

    .line 2474
    :goto_0
    return v0

    .line 2462
    :cond_0
    const-class v1, Lcom/google/analytics/containertag/proto/Serving$Property;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x30b

    .line 2464
    .local v0, "hash":I
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Property;->hasKey()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2465
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0x1

    .line 2466
    mul-int/lit8 v1, v0, 0x35

    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->key_:I

    add-int v0, v1, v2

    .line 2468
    :cond_1
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Property;->hasValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2469
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0x2

    .line 2470
    mul-int/lit8 v1, v0, 0x35

    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->value_:I

    add-int v0, v1, v2

    .line 2472
    :cond_2
    mul-int/lit8 v1, v0, 0x1d

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v2}, Lcom/google/tagmanager/protobuf/ByteString;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 2473
    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->memoizedHashCode:I

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2380
    iget-byte v0, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->memoizedIsInitialized:B

    .line 2381
    .local v0, "isInitialized":B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    .line 2392
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 2381
    goto :goto_0

    .line 2383
    :cond_1
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Property;->hasKey()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2384
    iput-byte v2, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->memoizedIsInitialized:B

    move v1, v2

    .line 2385
    goto :goto_0

    .line 2387
    :cond_2
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Property;->hasValue()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2388
    iput-byte v2, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->memoizedIsInitialized:B

    move v1, v2

    .line 2389
    goto :goto_0

    .line 2391
    :cond_3
    iput-byte v1, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/google/tagmanager/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2249
    invoke-static {}, Lcom/google/analytics/containertag/proto/Serving$Property$Builder;->access$2100()Lcom/google/analytics/containertag/proto/Serving$Property$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/google/tagmanager/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2249
    invoke-static {}, Lcom/google/analytics/containertag/proto/Serving$Property$Builder;->access$2100()Lcom/google/analytics/containertag/proto/Serving$Property$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/containertag/proto/Serving$Property$Builder;->mergeFrom(Lcom/google/analytics/containertag/proto/Serving$Property;)Lcom/google/analytics/containertag/proto/Serving$Property$Builder;

    move-result-object v0

    return-object v0
.end method
