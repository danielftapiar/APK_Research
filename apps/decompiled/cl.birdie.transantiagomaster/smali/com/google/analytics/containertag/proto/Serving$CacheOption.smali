.class public final Lcom/google/analytics/containertag/proto/Serving$CacheOption;
.super Lcom/google/tagmanager/protobuf/GeneratedMessageLite;
.source "Serving.java"

# interfaces
.implements Lcom/google/analytics/containertag/proto/Serving$CacheOptionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/containertag/proto/Serving;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CacheOption"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/analytics/containertag/proto/Serving$CacheOption$Builder;,
        Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/tagmanager/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/tagmanager/protobuf/Parser",
            "<",
            "Lcom/google/analytics/containertag/proto/Serving$CacheOption;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

.field private static volatile mutableDefault:Lcom/google/tagmanager/protobuf/MutableMessageLite;


# instance fields
.field private bitField0_:I

.field private expirationSeconds_:I

.field private gcacheExpirationSeconds_:I

.field private level_:Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private final unknownFields:Lcom/google/tagmanager/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5619
    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$CacheOption$1;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$CacheOption$1;-><init>()V

    sput-object v0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    .line 5865
    const/4 v0, 0x0

    sput-object v0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->mutableDefault:Lcom/google/tagmanager/protobuf/MutableMessageLite;

    .line 6142
    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;-><init>()V

    .line 6143
    sput-object v0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->defaultInstance:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->initFields()V

    .line 6144
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 5541
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite;-><init>()V

    .line 5756
    iput-byte v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->memoizedIsInitialized:B

    .line 5780
    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->memoizedSerializedSize:I

    .line 5541
    sget-object v0, Lcom/google/tagmanager/protobuf/ByteString;->EMPTY:Lcom/google/tagmanager/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    return-void
.end method

.method private constructor <init>(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)V
    .locals 9
    .param p1, "input"    # Lcom/google/tagmanager/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    .line 5556
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite;-><init>()V

    .line 5756
    iput-byte v7, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->memoizedIsInitialized:B

    .line 5780
    iput v7, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->memoizedSerializedSize:I

    .line 5557
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->initFields()V

    .line 5558
    invoke-static {}, Lcom/google/tagmanager/protobuf/ByteString;->newOutput()Lcom/google/tagmanager/protobuf/ByteString$Output;

    move-result-object v5

    .line 5561
    .local v5, "unknownFieldsOutput":Lcom/google/tagmanager/protobuf/ByteString$Output;
    invoke-static {v5}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/google/tagmanager/protobuf/CodedOutputStream;

    move-result-object v4

    .line 5565
    .local v4, "unknownFieldsCodedOutput":Lcom/google/tagmanager/protobuf/CodedOutputStream;
    const/4 v0, 0x0

    .line 5566
    .local v0, "done":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 5567
    :try_start_0
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 5568
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 5573
    invoke-virtual {p0, p1, v4, p2, v3}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->parseUnknownField(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/CodedOutputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 5575
    const/4 v0, 0x1

    goto :goto_0

    .line 5570
    :sswitch_0
    const/4 v0, 0x1

    .line 5571
    goto :goto_0

    .line 5580
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 5581
    .local v2, "rawValue":I
    invoke-static {v2}, Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;->valueOf(I)Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;

    move-result-object v6

    .line 5582
    .local v6, "value":Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;
    if-nez v6, :cond_1

    .line 5583
    invoke-virtual {v4, v3}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 5584
    invoke-virtual {v4, v2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawVarint32(I)V
    :try_end_0
    .catch Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 5603
    .end local v2    # "rawValue":I
    .end local v3    # "tag":I
    .end local v6    # "value":Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;
    :catch_0
    move-exception v7

    :try_start_1
    invoke-virtual {v7, p0}, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/tagmanager/protobuf/MessageLite;)Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;

    move-result-object v7

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5609
    :catchall_0
    move-exception v7

    .line 5610
    :try_start_2
    invoke-virtual {v4}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 5614
    invoke-virtual {v5}, Lcom/google/tagmanager/protobuf/ByteString$Output;->toByteString()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v8

    iput-object v8, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    .line 5616
    :goto_1
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->makeExtensionsImmutable()V

    throw v7

    .line 5586
    .restart local v2    # "rawValue":I
    .restart local v3    # "tag":I
    .restart local v6    # "value":Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;
    :cond_1
    :try_start_3
    iget v7, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->bitField0_:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->bitField0_:I

    .line 5587
    iput-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->level_:Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;
    :try_end_3
    .catch Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 5605
    .end local v2    # "rawValue":I
    .end local v3    # "tag":I
    .end local v6    # "value":Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;
    :catch_1
    move-exception v1

    .line 5606
    .local v1, "e":Ljava/io/IOException;
    :try_start_4
    new-instance v7, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/tagmanager/protobuf/MessageLite;)Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;

    move-result-object v7

    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 5592
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "tag":I
    :sswitch_2
    :try_start_5
    iget v7, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->bitField0_:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->bitField0_:I

    .line 5593
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readInt32()I

    move-result v7

    iput v7, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->expirationSeconds_:I

    goto :goto_0

    .line 5597
    :sswitch_3
    iget v7, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->bitField0_:I

    or-int/lit8 v7, v7, 0x4

    iput v7, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->bitField0_:I

    .line 5598
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readInt32()I

    move-result v7

    iput v7, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->gcacheExpirationSeconds_:I
    :try_end_5
    .catch Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 5610
    .end local v3    # "tag":I
    :cond_2
    :try_start_6
    invoke-virtual {v4}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->flush()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 5614
    invoke-virtual {v5}, Lcom/google/tagmanager/protobuf/ByteString$Output;->toByteString()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    .line 5616
    :goto_2
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->makeExtensionsImmutable()V

    .line 5617
    return-void

    .line 5614
    :catch_2
    move-exception v7

    invoke-virtual {v5}, Lcom/google/tagmanager/protobuf/ByteString$Output;->toByteString()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    goto :goto_2

    :catchall_1
    move-exception v7

    invoke-virtual {v5}, Lcom/google/tagmanager/protobuf/ByteString$Output;->toByteString()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v8

    iput-object v8, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    throw v7

    :catch_3
    move-exception v8

    invoke-virtual {v5}, Lcom/google/tagmanager/protobuf/ByteString$Output;->toByteString()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v8

    iput-object v8, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    goto :goto_1

    :catchall_2
    move-exception v7

    invoke-virtual {v5}, Lcom/google/tagmanager/protobuf/ByteString$Output;->toByteString()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v8

    iput-object v8, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    throw v7

    .line 5568
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
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
    .line 5532
    invoke-direct {p0, p1, p2}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;-><init>(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;

    .prologue
    const/4 v1, -0x1

    .line 5538
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite;-><init>(B)V

    .line 5756
    iput-byte v1, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->memoizedIsInitialized:B

    .line 5780
    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->memoizedSerializedSize:I

    .line 5539
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;->getUnknownFields()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    .line 5540
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;B)V
    .locals 0
    .param p1, "x0"    # Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;

    .prologue
    .line 5532
    invoke-direct {p0, p1}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;-><init>(Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method static synthetic access$5402(Lcom/google/analytics/containertag/proto/Serving$CacheOption;Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;)Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;
    .locals 0
    .param p0, "x0"    # Lcom/google/analytics/containertag/proto/Serving$CacheOption;
    .param p1, "x1"    # Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;

    .prologue
    .line 5532
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->level_:Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;

    return-object p1
.end method

.method static synthetic access$5502(Lcom/google/analytics/containertag/proto/Serving$CacheOption;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/analytics/containertag/proto/Serving$CacheOption;
    .param p1, "x1"    # I

    .prologue
    .line 5532
    iput p1, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->expirationSeconds_:I

    return p1
.end method

.method static synthetic access$5602(Lcom/google/analytics/containertag/proto/Serving$CacheOption;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/analytics/containertag/proto/Serving$CacheOption;
    .param p1, "x1"    # I

    .prologue
    .line 5532
    iput p1, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->gcacheExpirationSeconds_:I

    return p1
.end method

.method static synthetic access$5702(Lcom/google/analytics/containertag/proto/Serving$CacheOption;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/analytics/containertag/proto/Serving$CacheOption;
    .param p1, "x1"    # I

    .prologue
    .line 5532
    iput p1, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->bitField0_:I

    return p1
.end method

.method static synthetic access$5800(Lcom/google/analytics/containertag/proto/Serving$CacheOption;)Lcom/google/tagmanager/protobuf/ByteString;
    .locals 1
    .param p0, "x0"    # Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    .prologue
    .line 5532
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/google/analytics/containertag/proto/Serving$CacheOption;
    .locals 1

    .prologue
    .line 5545
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->defaultInstance:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5752
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;->NO_CACHE:Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->level_:Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;

    .line 5753
    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->expirationSeconds_:I

    .line 5754
    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->gcacheExpirationSeconds_:I

    .line 5755
    return-void
.end method

.method public static newBuilder(Lcom/google/analytics/containertag/proto/Serving$CacheOption;)Lcom/google/analytics/containertag/proto/Serving$CacheOption$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    .prologue
    .line 5930
    invoke-static {}, Lcom/google/analytics/containertag/proto/Serving$CacheOption$Builder;->access$5200()Lcom/google/analytics/containertag/proto/Serving$CacheOption$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/containertag/proto/Serving$CacheOption$Builder;->mergeFrom(Lcom/google/analytics/containertag/proto/Serving$CacheOption;)Lcom/google/analytics/containertag/proto/Serving$CacheOption$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 5812
    if-ne p1, p0, :cond_0

    .line 5836
    :goto_0
    return v2

    .line 5815
    :cond_0
    instance-of v4, p1, Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    if-nez v4, :cond_1

    .line 5816
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 5818
    check-cast v0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    .line 5820
    .local v0, "other":Lcom/google/analytics/containertag/proto/Serving$CacheOption;
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->hasLevel()Z

    move-result v4

    invoke-virtual {v0}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->hasLevel()Z

    move-result v5

    if-ne v4, v5, :cond_5

    move v1, v2

    .line 5822
    .local v1, "result":Z
    :goto_1
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->hasLevel()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5823
    if-eqz v1, :cond_6

    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->level_:Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;

    iget-object v5, v0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->level_:Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;

    if-ne v4, v5, :cond_6

    move v1, v2

    .line 5826
    :cond_2
    :goto_2
    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->hasExpirationSeconds()Z

    move-result v4

    invoke-virtual {v0}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->hasExpirationSeconds()Z

    move-result v5

    if-ne v4, v5, :cond_7

    move v1, v2

    .line 5827
    :goto_3
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->hasExpirationSeconds()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 5828
    if-eqz v1, :cond_8

    iget v4, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->expirationSeconds_:I

    iget v5, v0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->expirationSeconds_:I

    if-ne v4, v5, :cond_8

    move v1, v2

    .line 5831
    :cond_3
    :goto_4
    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->hasGcacheExpirationSeconds()Z

    move-result v4

    invoke-virtual {v0}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->hasGcacheExpirationSeconds()Z

    move-result v5

    if-ne v4, v5, :cond_9

    move v1, v2

    .line 5832
    :goto_5
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->hasGcacheExpirationSeconds()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 5833
    if-eqz v1, :cond_a

    iget v4, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->gcacheExpirationSeconds_:I

    iget v5, v0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->gcacheExpirationSeconds_:I

    if-ne v4, v5, :cond_a

    move v1, v2

    :cond_4
    :goto_6
    move v2, v1

    .line 5836
    goto :goto_0

    .end local v1    # "result":Z
    :cond_5
    move v1, v3

    .line 5820
    goto :goto_1

    .restart local v1    # "result":Z
    :cond_6
    move v1, v3

    .line 5823
    goto :goto_2

    :cond_7
    move v1, v3

    .line 5826
    goto :goto_3

    :cond_8
    move v1, v3

    .line 5828
    goto :goto_4

    :cond_9
    move v1, v3

    .line 5831
    goto :goto_5

    :cond_a
    move v1, v3

    .line 5833
    goto :goto_6
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/tagmanager/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5532
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->defaultInstance:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    return-object v0
.end method

.method public final getExpirationSeconds()I
    .locals 1

    .prologue
    .line 5731
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->expirationSeconds_:I

    return v0
.end method

.method public final getGcacheExpirationSeconds()I
    .locals 1

    .prologue
    .line 5748
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->gcacheExpirationSeconds_:I

    return v0
.end method

.method public final getLevel()Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;
    .locals 1

    .prologue
    .line 5714
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->level_:Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;

    return-object v0
.end method

.method public final getParserForType()Lcom/google/tagmanager/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/tagmanager/protobuf/Parser",
            "<",
            "Lcom/google/analytics/containertag/proto/Serving$CacheOption;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5631
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    return-object v0
.end method

.method public final hasExpirationSeconds()Z
    .locals 2

    .prologue
    .line 5725
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->bitField0_:I

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

.method public final hasGcacheExpirationSeconds()Z
    .locals 2

    .prologue
    .line 5742
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->bitField0_:I

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

.method public final hasLevel()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 5708
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 5841
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->memoizedHashCode:I

    if-eqz v1, :cond_0

    .line 5842
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->memoizedHashCode:I

    .line 5861
    :goto_0
    return v0

    .line 5844
    :cond_0
    const-class v1, Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x30b

    .line 5846
    .local v0, "hash":I
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->hasLevel()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5847
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0x1

    .line 5848
    mul-int/lit8 v1, v0, 0x35

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->level_:Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;

    invoke-static {v2}, Lcom/google/tagmanager/protobuf/Internal;->hashEnum(Lcom/google/tagmanager/protobuf/Internal$EnumLite;)I

    move-result v2

    add-int v0, v1, v2

    .line 5851
    :cond_1
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->hasExpirationSeconds()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5852
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0x2

    .line 5853
    mul-int/lit8 v1, v0, 0x35

    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->expirationSeconds_:I

    add-int v0, v1, v2

    .line 5855
    :cond_2
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->hasGcacheExpirationSeconds()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5856
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0x3

    .line 5857
    mul-int/lit8 v1, v0, 0x35

    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->gcacheExpirationSeconds_:I

    add-int v0, v1, v2

    .line 5859
    :cond_3
    mul-int/lit8 v1, v0, 0x1d

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v2}, Lcom/google/tagmanager/protobuf/ByteString;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 5860
    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->memoizedHashCode:I

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 5758
    iget-byte v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->memoizedIsInitialized:B

    .line 5759
    .local v0, "isInitialized":B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 5762
    :goto_0
    return v1

    .line 5759
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 5761
    :cond_1
    iput-byte v1, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/google/tagmanager/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5532
    invoke-static {}, Lcom/google/analytics/containertag/proto/Serving$CacheOption$Builder;->access$5200()Lcom/google/analytics/containertag/proto/Serving$CacheOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lcom/google/analytics/containertag/proto/Serving$CacheOption$Builder;
    .locals 1

    .prologue
    .line 5932
    invoke-static {}, Lcom/google/analytics/containertag/proto/Serving$CacheOption$Builder;->access$5200()Lcom/google/analytics/containertag/proto/Serving$CacheOption$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/containertag/proto/Serving$CacheOption$Builder;->mergeFrom(Lcom/google/analytics/containertag/proto/Serving$CacheOption;)Lcom/google/analytics/containertag/proto/Serving$CacheOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/google/tagmanager/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5532
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->toBuilder()Lcom/google/analytics/containertag/proto/Serving$CacheOption$Builder;

    move-result-object v0

    return-object v0
.end method
