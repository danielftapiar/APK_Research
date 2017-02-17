.class public final Lcom/google/analytics/containertag/proto/Serving$Resource;
.super Lcom/google/tagmanager/protobuf/GeneratedMessageLite;
.source "Serving.java"

# interfaces
.implements Lcom/google/analytics/containertag/proto/Serving$ResourceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/containertag/proto/Serving;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Resource"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/tagmanager/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/tagmanager/protobuf/Parser",
            "<",
            "Lcom/google/analytics/containertag/proto/Serving$Resource;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/analytics/containertag/proto/Serving$Resource;

.field private static volatile mutableDefault:Lcom/google/tagmanager/protobuf/MutableMessageLite;


# instance fields
.field private bitField0_:I

.field private enableAutoEventTracking_:Z

.field private key_:Lcom/google/tagmanager/protobuf/LazyStringList;

.field private liveJsCacheOption_:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

.field private macro_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/analytics/containertag/proto/Serving$FunctionCall;",
            ">;"
        }
    .end annotation
.end field

.field private malwareScanAuthCode_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private predicate_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/analytics/containertag/proto/Serving$FunctionCall;",
            ">;"
        }
    .end annotation
.end field

.field private previewAuthCode_:Ljava/lang/Object;

.field private property_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/analytics/containertag/proto/Serving$Property;",
            ">;"
        }
    .end annotation
.end field

.field private reportingSampleRate_:F

.field private resourceFormatVersion_:I

.field private rule_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/analytics/containertag/proto/Serving$Rule;",
            ">;"
        }
    .end annotation
.end field

.field private tag_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/analytics/containertag/proto/Serving$FunctionCall;",
            ">;"
        }
    .end annotation
.end field

.field private templateVersionSet_:Ljava/lang/Object;

.field private final unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

.field private usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;

.field private value_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;"
        }
    .end annotation
.end field

.field private version_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6577
    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$Resource$1;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$Resource$1;-><init>()V

    sput-object v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    .line 7475
    const/4 v0, 0x0

    sput-object v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->mutableDefault:Lcom/google/tagmanager/protobuf/MutableMessageLite;

    .line 9270
    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$Resource;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$Resource;-><init>()V

    .line 9271
    sput-object v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->defaultInstance:Lcom/google/analytics/containertag/proto/Serving$Resource;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$Resource;->initFields()V

    .line 9272
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 6379
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite;-><init>()V

    .line 7139
    iput-byte v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->memoizedIsInitialized:B

    .line 7232
    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->memoizedSerializedSize:I

    .line 6379
    sget-object v0, Lcom/google/tagmanager/protobuf/ByteString;->EMPTY:Lcom/google/tagmanager/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    return-void
.end method

.method private constructor <init>(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)V
    .locals 11
    .param p1, "input"    # Lcom/google/tagmanager/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6394
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite;-><init>()V

    .line 7139
    const/4 v8, -0x1

    iput-byte v8, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->memoizedIsInitialized:B

    .line 7232
    const/4 v8, -0x1

    iput v8, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->memoizedSerializedSize:I

    .line 6395
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource;->initFields()V

    .line 6396
    const/4 v3, 0x0

    .line 6397
    .local v3, "mutable_bitField0_":I
    invoke-static {}, Lcom/google/tagmanager/protobuf/ByteString;->newOutput()Lcom/google/tagmanager/protobuf/ByteString$Output;

    move-result-object v7

    .line 6399
    .local v7, "unknownFieldsOutput":Lcom/google/tagmanager/protobuf/ByteString$Output;
    invoke-static {v7}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/google/tagmanager/protobuf/CodedOutputStream;

    move-result-object v6

    .line 6403
    .local v6, "unknownFieldsCodedOutput":Lcom/google/tagmanager/protobuf/CodedOutputStream;
    const/4 v1, 0x0

    .line 6404
    .local v1, "done":Z
    :cond_0
    :goto_0
    if-nez v1, :cond_13

    .line 6405
    :try_start_0
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readTag()I

    move-result v5

    .line 6406
    .local v5, "tag":I
    sparse-switch v5, :sswitch_data_0

    .line 6411
    invoke-virtual {p0, p1, v6, p2, v5}, Lcom/google/analytics/containertag/proto/Serving$Resource;->parseUnknownField(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/CodedOutputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 6413
    const/4 v1, 0x1

    goto :goto_0

    .line 6408
    :sswitch_0
    const/4 v1, 0x1

    .line 6409
    goto :goto_0

    .line 6418
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readBytes()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v0

    .line 6419
    .local v0, "bs":Lcom/google/tagmanager/protobuf/ByteString;
    and-int/lit8 v8, v3, 0x1

    const/4 v9, 0x1

    if-eq v8, v9, :cond_1

    .line 6420
    new-instance v8, Lcom/google/tagmanager/protobuf/LazyStringArrayList;

    invoke-direct {v8}, Lcom/google/tagmanager/protobuf/LazyStringArrayList;-><init>()V

    iput-object v8, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key_:Lcom/google/tagmanager/protobuf/LazyStringList;

    .line 6421
    or-int/lit8 v3, v3, 0x1

    .line 6423
    :cond_1
    iget-object v8, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-interface {v8, v0}, Lcom/google/tagmanager/protobuf/LazyStringList;->add(Lcom/google/tagmanager/protobuf/ByteString;)V
    :try_end_0
    .catch Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 6537
    .end local v0    # "bs":Lcom/google/tagmanager/protobuf/ByteString;
    .end local v5    # "tag":I
    :catch_0
    move-exception v8

    :try_start_1
    invoke-virtual {v8, p0}, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/tagmanager/protobuf/MessageLite;)Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;

    move-result-object v8

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6543
    :catchall_0
    move-exception v8

    and-int/lit8 v9, v3, 0x1

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 6544
    new-instance v9, Lcom/google/tagmanager/protobuf/UnmodifiableLazyStringList;

    iget-object v10, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-direct {v9, v10}, Lcom/google/tagmanager/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/tagmanager/protobuf/LazyStringList;)V

    iput-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key_:Lcom/google/tagmanager/protobuf/LazyStringList;

    .line 6546
    :cond_2
    and-int/lit8 v9, v3, 0x2

    const/4 v10, 0x2

    if-ne v9, v10, :cond_3

    .line 6547
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value_:Ljava/util/List;

    invoke-static {v9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value_:Ljava/util/List;

    .line 6549
    :cond_3
    and-int/lit8 v9, v3, 0x4

    const/4 v10, 0x4

    if-ne v9, v10, :cond_4

    .line 6550
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property_:Ljava/util/List;

    invoke-static {v9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property_:Ljava/util/List;

    .line 6552
    :cond_4
    and-int/lit8 v9, v3, 0x8

    const/16 v10, 0x8

    if-ne v9, v10, :cond_5

    .line 6553
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro_:Ljava/util/List;

    invoke-static {v9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro_:Ljava/util/List;

    .line 6555
    :cond_5
    and-int/lit8 v9, v3, 0x10

    const/16 v10, 0x10

    if-ne v9, v10, :cond_6

    .line 6556
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag_:Ljava/util/List;

    invoke-static {v9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag_:Ljava/util/List;

    .line 6558
    :cond_6
    and-int/lit8 v9, v3, 0x20

    const/16 v10, 0x20

    if-ne v9, v10, :cond_7

    .line 6559
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate_:Ljava/util/List;

    invoke-static {v9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate_:Ljava/util/List;

    .line 6561
    :cond_7
    and-int/lit8 v9, v3, 0x40

    const/16 v10, 0x40

    if-ne v9, v10, :cond_8

    .line 6562
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule_:Ljava/util/List;

    invoke-static {v9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule_:Ljava/util/List;

    .line 6564
    :cond_8
    and-int/lit16 v9, v3, 0x4000

    const/16 v10, 0x4000

    if-ne v9, v10, :cond_9

    .line 6565
    new-instance v9, Lcom/google/tagmanager/protobuf/UnmodifiableLazyStringList;

    iget-object v10, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-direct {v9, v10}, Lcom/google/tagmanager/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/tagmanager/protobuf/LazyStringList;)V

    iput-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;

    .line 6568
    :cond_9
    :try_start_2
    invoke-virtual {v6}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 6572
    invoke-virtual {v7}, Lcom/google/tagmanager/protobuf/ByteString$Output;->toByteString()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v9

    iput-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    .line 6574
    :goto_1
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource;->makeExtensionsImmutable()V

    throw v8

    .line 6427
    .restart local v5    # "tag":I
    :sswitch_2
    and-int/lit8 v8, v3, 0x2

    const/4 v9, 0x2

    if-eq v8, v9, :cond_a

    .line 6428
    :try_start_3
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value_:Ljava/util/List;

    .line 6429
    or-int/lit8 v3, v3, 0x2

    .line 6431
    :cond_a
    iget-object v8, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value_:Ljava/util/List;

    sget-object v9, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-virtual {p1, v9, p2}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readMessage(Lcom/google/tagmanager/protobuf/Parser;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/tagmanager/protobuf/MessageLite;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 6539
    .end local v5    # "tag":I
    :catch_1
    move-exception v2

    .line 6540
    .local v2, "e":Ljava/io/IOException;
    :try_start_4
    new-instance v8, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/tagmanager/protobuf/MessageLite;)Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;

    move-result-object v8

    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 6435
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v5    # "tag":I
    :sswitch_3
    and-int/lit8 v8, v3, 0x4

    const/4 v9, 0x4

    if-eq v8, v9, :cond_b

    .line 6436
    :try_start_5
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property_:Ljava/util/List;

    .line 6437
    or-int/lit8 v3, v3, 0x4

    .line 6439
    :cond_b
    iget-object v8, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property_:Ljava/util/List;

    sget-object v9, Lcom/google/analytics/containertag/proto/Serving$Property;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-virtual {p1, v9, p2}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readMessage(Lcom/google/tagmanager/protobuf/Parser;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/tagmanager/protobuf/MessageLite;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 6443
    :sswitch_4
    and-int/lit8 v8, v3, 0x8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_c

    .line 6444
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro_:Ljava/util/List;

    .line 6445
    or-int/lit8 v3, v3, 0x8

    .line 6447
    :cond_c
    iget-object v8, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro_:Ljava/util/List;

    sget-object v9, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-virtual {p1, v9, p2}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readMessage(Lcom/google/tagmanager/protobuf/Parser;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/tagmanager/protobuf/MessageLite;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 6451
    :sswitch_5
    and-int/lit8 v8, v3, 0x10

    const/16 v9, 0x10

    if-eq v8, v9, :cond_d

    .line 6452
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag_:Ljava/util/List;

    .line 6453
    or-int/lit8 v3, v3, 0x10

    .line 6455
    :cond_d
    iget-object v8, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag_:Ljava/util/List;

    sget-object v9, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-virtual {p1, v9, p2}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readMessage(Lcom/google/tagmanager/protobuf/Parser;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/tagmanager/protobuf/MessageLite;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 6459
    :sswitch_6
    and-int/lit8 v8, v3, 0x20

    const/16 v9, 0x20

    if-eq v8, v9, :cond_e

    .line 6460
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate_:Ljava/util/List;

    .line 6461
    or-int/lit8 v3, v3, 0x20

    .line 6463
    :cond_e
    iget-object v8, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate_:Ljava/util/List;

    sget-object v9, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-virtual {p1, v9, p2}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readMessage(Lcom/google/tagmanager/protobuf/Parser;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/tagmanager/protobuf/MessageLite;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 6467
    :sswitch_7
    and-int/lit8 v8, v3, 0x40

    const/16 v9, 0x40

    if-eq v8, v9, :cond_f

    .line 6468
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule_:Ljava/util/List;

    .line 6469
    or-int/lit8 v3, v3, 0x40

    .line 6471
    :cond_f
    iget-object v8, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule_:Ljava/util/List;

    sget-object v9, Lcom/google/analytics/containertag/proto/Serving$Rule;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-virtual {p1, v9, p2}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readMessage(Lcom/google/tagmanager/protobuf/Parser;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/tagmanager/protobuf/MessageLite;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 6475
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readBytes()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v0

    .line 6476
    .restart local v0    # "bs":Lcom/google/tagmanager/protobuf/ByteString;
    iget v8, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->bitField0_:I

    or-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->bitField0_:I

    .line 6477
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 6481
    .end local v0    # "bs":Lcom/google/tagmanager/protobuf/ByteString;
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readBytes()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v0

    .line 6482
    .restart local v0    # "bs":Lcom/google/tagmanager/protobuf/ByteString;
    iget v8, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->bitField0_:I

    or-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->bitField0_:I

    .line 6483
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 6487
    .end local v0    # "bs":Lcom/google/tagmanager/protobuf/ByteString;
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readBytes()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v0

    .line 6488
    .restart local v0    # "bs":Lcom/google/tagmanager/protobuf/ByteString;
    iget v8, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->bitField0_:I

    or-int/lit8 v8, v8, 0x4

    iput v8, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->bitField0_:I

    .line 6489
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 6493
    .end local v0    # "bs":Lcom/google/tagmanager/protobuf/ByteString;
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readBytes()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v0

    .line 6494
    .restart local v0    # "bs":Lcom/google/tagmanager/protobuf/ByteString;
    iget v8, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->bitField0_:I

    or-int/lit8 v8, v8, 0x8

    iput v8, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->bitField0_:I

    .line 6495
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->version_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 6499
    .end local v0    # "bs":Lcom/google/tagmanager/protobuf/ByteString;
    :sswitch_c
    const/4 v4, 0x0

    .line 6500
    .local v4, "subBuilder":Lcom/google/analytics/containertag/proto/Serving$CacheOption$Builder;
    iget v8, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->bitField0_:I

    and-int/lit8 v8, v8, 0x10

    const/16 v9, 0x10

    if-ne v8, v9, :cond_10

    .line 6501
    iget-object v8, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption_:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    invoke-virtual {v8}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->toBuilder()Lcom/google/analytics/containertag/proto/Serving$CacheOption$Builder;

    move-result-object v4

    .line 6503
    :cond_10
    sget-object v8, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-virtual {p1, v8, p2}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readMessage(Lcom/google/tagmanager/protobuf/Parser;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/tagmanager/protobuf/MessageLite;

    move-result-object v8

    check-cast v8, Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    iput-object v8, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption_:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    .line 6504
    if-eqz v4, :cond_11

    .line 6505
    iget-object v8, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption_:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    invoke-virtual {v4, v8}, Lcom/google/analytics/containertag/proto/Serving$CacheOption$Builder;->mergeFrom(Lcom/google/analytics/containertag/proto/Serving$CacheOption;)Lcom/google/analytics/containertag/proto/Serving$CacheOption$Builder;

    .line 6506
    invoke-virtual {v4}, Lcom/google/analytics/containertag/proto/Serving$CacheOption$Builder;->buildPartial()Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    move-result-object v8

    iput-object v8, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption_:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    .line 6508
    :cond_11
    iget v8, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->bitField0_:I

    or-int/lit8 v8, v8, 0x10

    iput v8, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->bitField0_:I

    goto/16 :goto_0

    .line 6512
    .end local v4    # "subBuilder":Lcom/google/analytics/containertag/proto/Serving$CacheOption$Builder;
    :sswitch_d
    iget v8, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->bitField0_:I

    or-int/lit8 v8, v8, 0x20

    iput v8, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->bitField0_:I

    .line 6513
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readRawLittleEndian32()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    iput v8, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->reportingSampleRate_:F

    goto/16 :goto_0

    .line 6517
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readBytes()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v0

    .line 6518
    .restart local v0    # "bs":Lcom/google/tagmanager/protobuf/ByteString;
    and-int/lit16 v8, v3, 0x4000

    const/16 v9, 0x4000

    if-eq v8, v9, :cond_12

    .line 6519
    new-instance v8, Lcom/google/tagmanager/protobuf/LazyStringArrayList;

    invoke-direct {v8}, Lcom/google/tagmanager/protobuf/LazyStringArrayList;-><init>()V

    iput-object v8, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;

    .line 6520
    or-int/lit16 v3, v3, 0x4000

    .line 6522
    :cond_12
    iget-object v8, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-interface {v8, v0}, Lcom/google/tagmanager/protobuf/LazyStringList;->add(Lcom/google/tagmanager/protobuf/ByteString;)V

    goto/16 :goto_0

    .line 6526
    .end local v0    # "bs":Lcom/google/tagmanager/protobuf/ByteString;
    :sswitch_f
    iget v8, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->bitField0_:I

    or-int/lit16 v8, v8, 0x80

    iput v8, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->bitField0_:I

    .line 6527
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readInt32()I

    move-result v8

    iput v8, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->resourceFormatVersion_:I

    goto/16 :goto_0

    .line 6531
    :sswitch_10
    iget v8, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->bitField0_:I

    or-int/lit8 v8, v8, 0x40

    iput v8, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->bitField0_:I

    .line 6532
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->enableAutoEventTracking_:Z
    :try_end_5
    .catch Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 6543
    .end local v5    # "tag":I
    :cond_13
    and-int/lit8 v8, v3, 0x1

    const/4 v9, 0x1

    if-ne v8, v9, :cond_14

    .line 6544
    new-instance v8, Lcom/google/tagmanager/protobuf/UnmodifiableLazyStringList;

    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-direct {v8, v9}, Lcom/google/tagmanager/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/tagmanager/protobuf/LazyStringList;)V

    iput-object v8, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key_:Lcom/google/tagmanager/protobuf/LazyStringList;

    .line 6546
    :cond_14
    and-int/lit8 v8, v3, 0x2

    const/4 v9, 0x2

    if-ne v8, v9, :cond_15

    .line 6547
    iget-object v8, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value_:Ljava/util/List;

    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value_:Ljava/util/List;

    .line 6549
    :cond_15
    and-int/lit8 v8, v3, 0x4

    const/4 v9, 0x4

    if-ne v8, v9, :cond_16

    .line 6550
    iget-object v8, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property_:Ljava/util/List;

    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property_:Ljava/util/List;

    .line 6552
    :cond_16
    and-int/lit8 v8, v3, 0x8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_17

    .line 6553
    iget-object v8, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro_:Ljava/util/List;

    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro_:Ljava/util/List;

    .line 6555
    :cond_17
    and-int/lit8 v8, v3, 0x10

    const/16 v9, 0x10

    if-ne v8, v9, :cond_18

    .line 6556
    iget-object v8, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag_:Ljava/util/List;

    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag_:Ljava/util/List;

    .line 6558
    :cond_18
    and-int/lit8 v8, v3, 0x20

    const/16 v9, 0x20

    if-ne v8, v9, :cond_19

    .line 6559
    iget-object v8, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate_:Ljava/util/List;

    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate_:Ljava/util/List;

    .line 6561
    :cond_19
    and-int/lit8 v8, v3, 0x40

    const/16 v9, 0x40

    if-ne v8, v9, :cond_1a

    .line 6562
    iget-object v8, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule_:Ljava/util/List;

    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule_:Ljava/util/List;

    .line 6564
    :cond_1a
    and-int/lit16 v8, v3, 0x4000

    const/16 v9, 0x4000

    if-ne v8, v9, :cond_1b

    .line 6565
    new-instance v8, Lcom/google/tagmanager/protobuf/UnmodifiableLazyStringList;

    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-direct {v8, v9}, Lcom/google/tagmanager/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/tagmanager/protobuf/LazyStringList;)V

    iput-object v8, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;

    .line 6568
    :cond_1b
    :try_start_6
    invoke-virtual {v6}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->flush()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 6572
    invoke-virtual {v7}, Lcom/google/tagmanager/protobuf/ByteString$Output;->toByteString()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v8

    iput-object v8, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    .line 6574
    :goto_2
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource;->makeExtensionsImmutable()V

    .line 6575
    return-void

    .line 6572
    :catch_2
    move-exception v8

    invoke-virtual {v7}, Lcom/google/tagmanager/protobuf/ByteString$Output;->toByteString()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v8

    iput-object v8, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    goto :goto_2

    :catchall_1
    move-exception v8

    invoke-virtual {v7}, Lcom/google/tagmanager/protobuf/ByteString$Output;->toByteString()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v9

    iput-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    throw v8

    :catch_3
    move-exception v9

    invoke-virtual {v7}, Lcom/google/tagmanager/protobuf/ByteString$Output;->toByteString()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v9

    iput-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    goto/16 :goto_1

    :catchall_2
    move-exception v8

    invoke-virtual {v7}, Lcom/google/tagmanager/protobuf/ByteString$Output;->toByteString()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v9

    iput-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    throw v8

    .line 6406
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x4a -> :sswitch_8
        0x52 -> :sswitch_9
        0x62 -> :sswitch_a
        0x6a -> :sswitch_b
        0x72 -> :sswitch_c
        0x7d -> :sswitch_d
        0x82 -> :sswitch_e
        0x88 -> :sswitch_f
        0x90 -> :sswitch_10
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
    .line 6370
    invoke-direct {p0, p1, p2}, Lcom/google/analytics/containertag/proto/Serving$Resource;-><init>(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;

    .prologue
    const/4 v1, -0x1

    .line 6376
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite;-><init>(B)V

    .line 7139
    iput-byte v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->memoizedIsInitialized:B

    .line 7232
    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->memoizedSerializedSize:I

    .line 6377
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;->getUnknownFields()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    .line 6378
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;B)V
    .locals 0
    .param p1, "x0"    # Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;

    .prologue
    .line 6370
    invoke-direct {p0, p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;-><init>(Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method static synthetic access$6200(Lcom/google/analytics/containertag/proto/Serving$Resource;)Lcom/google/tagmanager/protobuf/LazyStringList;
    .locals 1
    .param p0, "x0"    # Lcom/google/analytics/containertag/proto/Serving$Resource;

    .prologue
    .line 6370
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key_:Lcom/google/tagmanager/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$6202(Lcom/google/analytics/containertag/proto/Serving$Resource;Lcom/google/tagmanager/protobuf/LazyStringList;)Lcom/google/tagmanager/protobuf/LazyStringList;
    .locals 0
    .param p0, "x0"    # Lcom/google/analytics/containertag/proto/Serving$Resource;
    .param p1, "x1"    # Lcom/google/tagmanager/protobuf/LazyStringList;

    .prologue
    .line 6370
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key_:Lcom/google/tagmanager/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$6300(Lcom/google/analytics/containertag/proto/Serving$Resource;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/analytics/containertag/proto/Serving$Resource;

    .prologue
    .line 6370
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6302(Lcom/google/analytics/containertag/proto/Serving$Resource;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/google/analytics/containertag/proto/Serving$Resource;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 6370
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$6400(Lcom/google/analytics/containertag/proto/Serving$Resource;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/analytics/containertag/proto/Serving$Resource;

    .prologue
    .line 6370
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6402(Lcom/google/analytics/containertag/proto/Serving$Resource;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/google/analytics/containertag/proto/Serving$Resource;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 6370
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$6500(Lcom/google/analytics/containertag/proto/Serving$Resource;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/analytics/containertag/proto/Serving$Resource;

    .prologue
    .line 6370
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6502(Lcom/google/analytics/containertag/proto/Serving$Resource;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/google/analytics/containertag/proto/Serving$Resource;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 6370
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$6600(Lcom/google/analytics/containertag/proto/Serving$Resource;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/analytics/containertag/proto/Serving$Resource;

    .prologue
    .line 6370
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6602(Lcom/google/analytics/containertag/proto/Serving$Resource;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/google/analytics/containertag/proto/Serving$Resource;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 6370
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$6700(Lcom/google/analytics/containertag/proto/Serving$Resource;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/analytics/containertag/proto/Serving$Resource;

    .prologue
    .line 6370
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6702(Lcom/google/analytics/containertag/proto/Serving$Resource;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/google/analytics/containertag/proto/Serving$Resource;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 6370
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$6800(Lcom/google/analytics/containertag/proto/Serving$Resource;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/analytics/containertag/proto/Serving$Resource;

    .prologue
    .line 6370
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6802(Lcom/google/analytics/containertag/proto/Serving$Resource;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/google/analytics/containertag/proto/Serving$Resource;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 6370
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$6900(Lcom/google/analytics/containertag/proto/Serving$Resource;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/analytics/containertag/proto/Serving$Resource;

    .prologue
    .line 6370
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$6902(Lcom/google/analytics/containertag/proto/Serving$Resource;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/google/analytics/containertag/proto/Serving$Resource;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 6370
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$7000(Lcom/google/analytics/containertag/proto/Serving$Resource;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/analytics/containertag/proto/Serving$Resource;

    .prologue
    .line 6370
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$7002(Lcom/google/analytics/containertag/proto/Serving$Resource;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/google/analytics/containertag/proto/Serving$Resource;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 6370
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$7100(Lcom/google/analytics/containertag/proto/Serving$Resource;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/analytics/containertag/proto/Serving$Resource;

    .prologue
    .line 6370
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$7102(Lcom/google/analytics/containertag/proto/Serving$Resource;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/google/analytics/containertag/proto/Serving$Resource;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 6370
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$7200(Lcom/google/analytics/containertag/proto/Serving$Resource;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/analytics/containertag/proto/Serving$Resource;

    .prologue
    .line 6370
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->version_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$7202(Lcom/google/analytics/containertag/proto/Serving$Resource;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/google/analytics/containertag/proto/Serving$Resource;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 6370
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->version_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$7302(Lcom/google/analytics/containertag/proto/Serving$Resource;Lcom/google/analytics/containertag/proto/Serving$CacheOption;)Lcom/google/analytics/containertag/proto/Serving$CacheOption;
    .locals 0
    .param p0, "x0"    # Lcom/google/analytics/containertag/proto/Serving$Resource;
    .param p1, "x1"    # Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    .prologue
    .line 6370
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption_:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    return-object p1
.end method

.method static synthetic access$7402(Lcom/google/analytics/containertag/proto/Serving$Resource;F)F
    .locals 0
    .param p0, "x0"    # Lcom/google/analytics/containertag/proto/Serving$Resource;
    .param p1, "x1"    # F

    .prologue
    .line 6370
    iput p1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->reportingSampleRate_:F

    return p1
.end method

.method static synthetic access$7502(Lcom/google/analytics/containertag/proto/Serving$Resource;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/analytics/containertag/proto/Serving$Resource;
    .param p1, "x1"    # Z

    .prologue
    .line 6370
    iput-boolean p1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->enableAutoEventTracking_:Z

    return p1
.end method

.method static synthetic access$7600(Lcom/google/analytics/containertag/proto/Serving$Resource;)Lcom/google/tagmanager/protobuf/LazyStringList;
    .locals 1
    .param p0, "x0"    # Lcom/google/analytics/containertag/proto/Serving$Resource;

    .prologue
    .line 6370
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$7602(Lcom/google/analytics/containertag/proto/Serving$Resource;Lcom/google/tagmanager/protobuf/LazyStringList;)Lcom/google/tagmanager/protobuf/LazyStringList;
    .locals 0
    .param p0, "x0"    # Lcom/google/analytics/containertag/proto/Serving$Resource;
    .param p1, "x1"    # Lcom/google/tagmanager/protobuf/LazyStringList;

    .prologue
    .line 6370
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$7702(Lcom/google/analytics/containertag/proto/Serving$Resource;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/analytics/containertag/proto/Serving$Resource;
    .param p1, "x1"    # I

    .prologue
    .line 6370
    iput p1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->resourceFormatVersion_:I

    return p1
.end method

.method static synthetic access$7802(Lcom/google/analytics/containertag/proto/Serving$Resource;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/analytics/containertag/proto/Serving$Resource;
    .param p1, "x1"    # I

    .prologue
    .line 6370
    iput p1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->bitField0_:I

    return p1
.end method

.method static synthetic access$7900(Lcom/google/analytics/containertag/proto/Serving$Resource;)Lcom/google/tagmanager/protobuf/ByteString;
    .locals 1
    .param p0, "x0"    # Lcom/google/analytics/containertag/proto/Serving$Resource;

    .prologue
    .line 6370
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/google/analytics/containertag/proto/Serving$Resource;
    .locals 1

    .prologue
    .line 6383
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->defaultInstance:Lcom/google/analytics/containertag/proto/Serving$Resource;

    return-object v0
.end method

.method private getMacroCount()I
    .locals 1

    .prologue
    .line 6719
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method private getMalwareScanAuthCode()Ljava/lang/String;
    .locals 4

    .prologue
    .line 6904
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode_:Ljava/lang/Object;

    .line 6905
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 6906
    check-cast v1, Ljava/lang/String;

    .line 6914
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 6908
    check-cast v0, Lcom/google/tagmanager/protobuf/ByteString;

    .line 6910
    .local v0, "bs":Lcom/google/tagmanager/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 6911
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6912
    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 6914
    goto :goto_0
.end method

.method private getPredicateCount()I
    .locals 1

    .prologue
    .line 6793
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method private getPreviewAuthCode()Ljava/lang/String;
    .locals 4

    .prologue
    .line 6860
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode_:Ljava/lang/Object;

    .line 6861
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 6862
    check-cast v1, Ljava/lang/String;

    .line 6870
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 6864
    check-cast v0, Lcom/google/tagmanager/protobuf/ByteString;

    .line 6866
    .local v0, "bs":Lcom/google/tagmanager/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 6867
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6868
    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 6870
    goto :goto_0
.end method

.method private getPropertyCount()I
    .locals 1

    .prologue
    .line 6682
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method private getTagCount()I
    .locals 1

    .prologue
    .line 6756
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method private getTemplateVersionSet()Ljava/lang/String;
    .locals 4

    .prologue
    .line 6948
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet_:Ljava/lang/Object;

    .line 6949
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 6950
    check-cast v1, Ljava/lang/String;

    .line 6958
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 6952
    check-cast v0, Lcom/google/tagmanager/protobuf/ByteString;

    .line 6954
    .local v0, "bs":Lcom/google/tagmanager/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 6955
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6956
    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 6958
    goto :goto_0
.end method

.method private getValueCount()I
    .locals 1

    .prologue
    .line 6645
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method private initFields()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7122
    sget-object v0, Lcom/google/tagmanager/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/tagmanager/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key_:Lcom/google/tagmanager/protobuf/LazyStringList;

    .line 7123
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value_:Ljava/util/List;

    .line 7124
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property_:Ljava/util/List;

    .line 7125
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro_:Ljava/util/List;

    .line 7126
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag_:Ljava/util/List;

    .line 7127
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate_:Ljava/util/List;

    .line 7128
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule_:Ljava/util/List;

    .line 7129
    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode_:Ljava/lang/Object;

    .line 7130
    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode_:Ljava/lang/Object;

    .line 7131
    const-string v0, "0"

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet_:Ljava/lang/Object;

    .line 7132
    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->version_:Ljava/lang/Object;

    .line 7133
    invoke-static {}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->getDefaultInstance()Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption_:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    .line 7134
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->reportingSampleRate_:F

    .line 7135
    iput-boolean v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->enableAutoEventTracking_:Z

    .line 7136
    sget-object v0, Lcom/google/tagmanager/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/tagmanager/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;

    .line 7137
    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->resourceFormatVersion_:I

    .line 7138
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 7326
    if-ne p1, p0, :cond_0

    .line 7393
    :goto_0
    return v2

    .line 7329
    :cond_0
    instance-of v4, p1, Lcom/google/analytics/containertag/proto/Serving$Resource;

    if-nez v4, :cond_1

    .line 7330
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 7332
    check-cast v0, Lcom/google/analytics/containertag/proto/Serving$Resource;

    .line 7334
    .local v0, "other":Lcom/google/analytics/containertag/proto/Serving$Resource;
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key_:Lcom/google/tagmanager/protobuf/LazyStringList;

    iget-object v5, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-interface {v4, v5}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    move v4, v2

    .line 7337
    :goto_1
    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value_:Ljava/util/List;

    iget-object v5, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value_:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    move v4, v2

    .line 7339
    :goto_2
    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property_:Ljava/util/List;

    iget-object v5, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property_:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    move v4, v2

    .line 7341
    :goto_3
    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro_:Ljava/util/List;

    iget-object v5, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro_:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    move v4, v2

    .line 7343
    :goto_4
    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag_:Ljava/util/List;

    iget-object v5, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag_:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    move v4, v2

    .line 7345
    :goto_5
    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate_:Ljava/util/List;

    iget-object v5, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate_:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    move v4, v2

    .line 7347
    :goto_6
    if-eqz v4, :cond_10

    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule_:Ljava/util/List;

    iget-object v5, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule_:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    move v4, v2

    .line 7349
    :goto_7
    if-eqz v4, :cond_11

    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource;->hasPreviewAuthCode()Z

    move-result v4

    invoke-virtual {v0}, Lcom/google/analytics/containertag/proto/Serving$Resource;->hasPreviewAuthCode()Z

    move-result v5

    if-ne v4, v5, :cond_11

    move v1, v2

    .line 7350
    .local v1, "result":Z
    :goto_8
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource;->hasPreviewAuthCode()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 7351
    if-eqz v1, :cond_12

    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource;->getPreviewAuthCode()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$Resource;->getPreviewAuthCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    move v1, v2

    .line 7354
    :cond_2
    :goto_9
    if-eqz v1, :cond_13

    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource;->hasMalwareScanAuthCode()Z

    move-result v4

    invoke-virtual {v0}, Lcom/google/analytics/containertag/proto/Serving$Resource;->hasMalwareScanAuthCode()Z

    move-result v5

    if-ne v4, v5, :cond_13

    move v1, v2

    .line 7355
    :goto_a
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource;->hasMalwareScanAuthCode()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 7356
    if-eqz v1, :cond_14

    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource;->getMalwareScanAuthCode()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$Resource;->getMalwareScanAuthCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    move v1, v2

    .line 7359
    :cond_3
    :goto_b
    if-eqz v1, :cond_15

    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource;->hasTemplateVersionSet()Z

    move-result v4

    invoke-virtual {v0}, Lcom/google/analytics/containertag/proto/Serving$Resource;->hasTemplateVersionSet()Z

    move-result v5

    if-ne v4, v5, :cond_15

    move v1, v2

    .line 7360
    :goto_c
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource;->hasTemplateVersionSet()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 7361
    if-eqz v1, :cond_16

    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource;->getTemplateVersionSet()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$Resource;->getTemplateVersionSet()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    move v1, v2

    .line 7364
    :cond_4
    :goto_d
    if-eqz v1, :cond_17

    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource;->hasVersion()Z

    move-result v4

    invoke-virtual {v0}, Lcom/google/analytics/containertag/proto/Serving$Resource;->hasVersion()Z

    move-result v5

    if-ne v4, v5, :cond_17

    move v1, v2

    .line 7365
    :goto_e
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource;->hasVersion()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 7366
    if-eqz v1, :cond_18

    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/analytics/containertag/proto/Serving$Resource;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    move v1, v2

    .line 7369
    :cond_5
    :goto_f
    if-eqz v1, :cond_19

    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource;->hasLiveJsCacheOption()Z

    move-result v4

    invoke-virtual {v0}, Lcom/google/analytics/containertag/proto/Serving$Resource;->hasLiveJsCacheOption()Z

    move-result v5

    if-ne v4, v5, :cond_19

    move v1, v2

    .line 7370
    :goto_10
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource;->hasLiveJsCacheOption()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 7371
    if-eqz v1, :cond_1a

    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption_:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    iget-object v5, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption_:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    invoke-virtual {v4, v5}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    move v1, v2

    .line 7374
    :cond_6
    :goto_11
    if-eqz v1, :cond_1b

    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource;->hasReportingSampleRate()Z

    move-result v4

    invoke-virtual {v0}, Lcom/google/analytics/containertag/proto/Serving$Resource;->hasReportingSampleRate()Z

    move-result v5

    if-ne v4, v5, :cond_1b

    move v1, v2

    .line 7375
    :goto_12
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource;->hasReportingSampleRate()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 7376
    if-eqz v1, :cond_1c

    iget v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->reportingSampleRate_:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    iget v5, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->reportingSampleRate_:F

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    if-ne v4, v5, :cond_1c

    move v1, v2

    .line 7381
    :cond_7
    :goto_13
    if-eqz v1, :cond_1d

    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource;->hasEnableAutoEventTracking()Z

    move-result v4

    invoke-virtual {v0}, Lcom/google/analytics/containertag/proto/Serving$Resource;->hasEnableAutoEventTracking()Z

    move-result v5

    if-ne v4, v5, :cond_1d

    move v1, v2

    .line 7382
    :goto_14
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource;->hasEnableAutoEventTracking()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 7383
    if-eqz v1, :cond_1e

    iget-boolean v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->enableAutoEventTracking_:Z

    iget-boolean v5, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->enableAutoEventTracking_:Z

    if-ne v4, v5, :cond_1e

    move v1, v2

    .line 7386
    :cond_8
    :goto_15
    if-eqz v1, :cond_1f

    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;

    iget-object v5, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-interface {v4, v5}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    move v4, v2

    .line 7388
    :goto_16
    if-eqz v4, :cond_20

    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource;->hasResourceFormatVersion()Z

    move-result v4

    invoke-virtual {v0}, Lcom/google/analytics/containertag/proto/Serving$Resource;->hasResourceFormatVersion()Z

    move-result v5

    if-ne v4, v5, :cond_20

    move v1, v2

    .line 7389
    :goto_17
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource;->hasResourceFormatVersion()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 7390
    if-eqz v1, :cond_21

    iget v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->resourceFormatVersion_:I

    iget v5, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->resourceFormatVersion_:I

    if-ne v4, v5, :cond_21

    move v1, v2

    :cond_9
    :goto_18
    move v2, v1

    .line 7393
    goto/16 :goto_0

    .end local v1    # "result":Z
    :cond_a
    move v4, v3

    .line 7334
    goto/16 :goto_1

    :cond_b
    move v4, v3

    .line 7337
    goto/16 :goto_2

    :cond_c
    move v4, v3

    .line 7339
    goto/16 :goto_3

    :cond_d
    move v4, v3

    .line 7341
    goto/16 :goto_4

    :cond_e
    move v4, v3

    .line 7343
    goto/16 :goto_5

    :cond_f
    move v4, v3

    .line 7345
    goto/16 :goto_6

    :cond_10
    move v4, v3

    .line 7347
    goto/16 :goto_7

    :cond_11
    move v1, v3

    .line 7349
    goto/16 :goto_8

    .restart local v1    # "result":Z
    :cond_12
    move v1, v3

    .line 7351
    goto/16 :goto_9

    :cond_13
    move v1, v3

    .line 7354
    goto/16 :goto_a

    :cond_14
    move v1, v3

    .line 7356
    goto/16 :goto_b

    :cond_15
    move v1, v3

    .line 7359
    goto/16 :goto_c

    :cond_16
    move v1, v3

    .line 7361
    goto/16 :goto_d

    :cond_17
    move v1, v3

    .line 7364
    goto/16 :goto_e

    :cond_18
    move v1, v3

    .line 7366
    goto/16 :goto_f

    :cond_19
    move v1, v3

    .line 7369
    goto/16 :goto_10

    :cond_1a
    move v1, v3

    .line 7371
    goto/16 :goto_11

    :cond_1b
    move v1, v3

    .line 7374
    goto/16 :goto_12

    :cond_1c
    move v1, v3

    .line 7376
    goto :goto_13

    :cond_1d
    move v1, v3

    .line 7381
    goto :goto_14

    :cond_1e
    move v1, v3

    .line 7383
    goto :goto_15

    :cond_1f
    move v4, v3

    .line 7386
    goto :goto_16

    :cond_20
    move v1, v3

    .line 7388
    goto :goto_17

    :cond_21
    move v1, v3

    .line 7390
    goto :goto_18
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/tagmanager/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6370
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->defaultInstance:Lcom/google/analytics/containertag/proto/Serving$Resource;

    return-object v0
.end method

.method public final getEnableAutoEventTracking()Z
    .locals 1

    .prologue
    .line 7070
    iget-boolean v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->enableAutoEventTracking_:Z

    return v0
.end method

.method public final getLiveJsCacheOption()Lcom/google/analytics/containertag/proto/Serving$CacheOption;
    .locals 1

    .prologue
    .line 7036
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption_:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    return-object v0
.end method

.method public final getParserForType()Lcom/google/tagmanager/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/tagmanager/protobuf/Parser",
            "<",
            "Lcom/google/analytics/containertag/proto/Serving$Resource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6589
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    return-object v0
.end method

.method public final getReportingSampleRate()F
    .locals 1

    .prologue
    .line 7053
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->reportingSampleRate_:F

    return v0
.end method

.method public final getResourceFormatVersion()I
    .locals 1

    .prologue
    .line 7118
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->resourceFormatVersion_:I

    return v0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 6992
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->version_:Ljava/lang/Object;

    .line 6993
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 6994
    check-cast v1, Ljava/lang/String;

    .line 7002
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 6996
    check-cast v0, Lcom/google/tagmanager/protobuf/ByteString;

    .line 6998
    .local v0, "bs":Lcom/google/tagmanager/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 6999
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7000
    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->version_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 7002
    goto :goto_0
.end method

.method public final hasEnableAutoEventTracking()Z
    .locals 2

    .prologue
    .line 7064
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->bitField0_:I

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

.method public final hasLiveJsCacheOption()Z
    .locals 2

    .prologue
    .line 7030
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->bitField0_:I

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

.method public final hasMalwareScanAuthCode()Z
    .locals 2

    .prologue
    .line 6898
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->bitField0_:I

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

.method public final hasPreviewAuthCode()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 6854
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasReportingSampleRate()Z
    .locals 2

    .prologue
    .line 7047
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->bitField0_:I

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

.method public final hasResourceFormatVersion()Z
    .locals 2

    .prologue
    .line 7112
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->bitField0_:I

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

.method public final hasTemplateVersionSet()Z
    .locals 2

    .prologue
    .line 6942
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->bitField0_:I

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

.method public final hasVersion()Z
    .locals 2

    .prologue
    .line 6986
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->bitField0_:I

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

.method public final hashCode()I
    .locals 3

    .prologue
    .line 7398
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->memoizedHashCode:I

    if-eqz v1, :cond_0

    .line 7399
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->memoizedHashCode:I

    .line 7471
    :goto_0
    return v0

    .line 7401
    :cond_0
    const-class v1, Lcom/google/analytics/containertag/proto/Serving$Resource;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x30b

    .line 7403
    .local v0, "hash":I
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/tagmanager/protobuf/LazyStringList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 7404
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0x1

    .line 7405
    mul-int/lit8 v1, v0, 0x35

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 7407
    :cond_1
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource;->getValueCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 7408
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0x2

    .line 7409
    mul-int/lit8 v1, v0, 0x35

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 7411
    :cond_2
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource;->getPropertyCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 7412
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0x3

    .line 7413
    mul-int/lit8 v1, v0, 0x35

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 7415
    :cond_3
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource;->getMacroCount()I

    move-result v1

    if-lez v1, :cond_4

    .line 7416
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0x4

    .line 7417
    mul-int/lit8 v1, v0, 0x35

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 7419
    :cond_4
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource;->getTagCount()I

    move-result v1

    if-lez v1, :cond_5

    .line 7420
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0x5

    .line 7421
    mul-int/lit8 v1, v0, 0x35

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 7423
    :cond_5
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource;->getPredicateCount()I

    move-result v1

    if-lez v1, :cond_6

    .line 7424
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0x6

    .line 7425
    mul-int/lit8 v1, v0, 0x35

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 7427
    :cond_6
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 7428
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0x7

    .line 7429
    mul-int/lit8 v1, v0, 0x35

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 7431
    :cond_7
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource;->hasPreviewAuthCode()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 7432
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0x9

    .line 7433
    mul-int/lit8 v1, v0, 0x35

    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource;->getPreviewAuthCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 7435
    :cond_8
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource;->hasMalwareScanAuthCode()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 7436
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0xa

    .line 7437
    mul-int/lit8 v1, v0, 0x35

    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource;->getMalwareScanAuthCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 7439
    :cond_9
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource;->hasTemplateVersionSet()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 7440
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0xc

    .line 7441
    mul-int/lit8 v1, v0, 0x35

    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource;->getTemplateVersionSet()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 7443
    :cond_a
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource;->hasVersion()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 7444
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0xd

    .line 7445
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 7447
    :cond_b
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource;->hasLiveJsCacheOption()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 7448
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0xe

    .line 7449
    mul-int/lit8 v1, v0, 0x35

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption_:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    invoke-virtual {v2}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 7451
    :cond_c
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource;->hasReportingSampleRate()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 7452
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0xf

    .line 7453
    mul-int/lit8 v1, v0, 0x35

    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->reportingSampleRate_:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 7456
    :cond_d
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource;->hasEnableAutoEventTracking()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 7457
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0x12

    .line 7458
    mul-int/lit8 v1, v0, 0x35

    iget-boolean v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->enableAutoEventTracking_:Z

    invoke-static {v2}, Lcom/google/tagmanager/protobuf/Internal;->hashBoolean(Z)I

    move-result v2

    add-int v0, v1, v2

    .line 7461
    :cond_e
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/tagmanager/protobuf/LazyStringList;->size()I

    move-result v1

    if-lez v1, :cond_f

    .line 7462
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0x10

    .line 7463
    mul-int/lit8 v1, v0, 0x35

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 7465
    :cond_f
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource;->hasResourceFormatVersion()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 7466
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0x11

    .line 7467
    mul-int/lit8 v1, v0, 0x35

    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->resourceFormatVersion_:I

    add-int v0, v1, v2

    .line 7469
    :cond_10
    mul-int/lit8 v1, v0, 0x1d

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v2}, Lcom/google/tagmanager/protobuf/ByteString;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 7470
    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->memoizedHashCode:I

    goto/16 :goto_0
.end method

.method public final isInitialized()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 7141
    iget-byte v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->memoizedIsInitialized:B

    .line 7142
    .local v1, "isInitialized":B
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v3, :cond_0

    move v2, v3

    .line 7175
    :goto_0
    return v2

    :cond_0
    move v2, v4

    .line 7142
    goto :goto_0

    .line 7144
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource;->getValueCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 7145
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-virtual {v2}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_2

    .line 7146
    iput-byte v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->memoizedIsInitialized:B

    move v2, v4

    .line 7147
    goto :goto_0

    .line 7144
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 7150
    :cond_3
    const/4 v0, 0x0

    :goto_2
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource;->getPropertyCount()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 7151
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/analytics/containertag/proto/Serving$Property;

    invoke-virtual {v2}, Lcom/google/analytics/containertag/proto/Serving$Property;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_4

    .line 7152
    iput-byte v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->memoizedIsInitialized:B

    move v2, v4

    .line 7153
    goto :goto_0

    .line 7150
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 7156
    :cond_5
    const/4 v0, 0x0

    :goto_3
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource;->getMacroCount()I

    move-result v2

    if-ge v0, v2, :cond_7

    .line 7157
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-virtual {v2}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_6

    .line 7158
    iput-byte v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->memoizedIsInitialized:B

    move v2, v4

    .line 7159
    goto :goto_0

    .line 7156
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 7162
    :cond_7
    const/4 v0, 0x0

    :goto_4
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource;->getTagCount()I

    move-result v2

    if-ge v0, v2, :cond_9

    .line 7163
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-virtual {v2}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_8

    .line 7164
    iput-byte v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->memoizedIsInitialized:B

    move v2, v4

    .line 7165
    goto :goto_0

    .line 7162
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 7168
    :cond_9
    const/4 v0, 0x0

    :goto_5
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource;->getPredicateCount()I

    move-result v2

    if-ge v0, v2, :cond_b

    .line 7169
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-virtual {v2}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_a

    .line 7170
    iput-byte v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->memoizedIsInitialized:B

    move v2, v4

    .line 7171
    goto/16 :goto_0

    .line 7168
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 7174
    :cond_b
    iput-byte v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->memoizedIsInitialized:B

    move v2, v3

    .line 7175
    goto/16 :goto_0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/google/tagmanager/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6370
    invoke-static {}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->access$6000()Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/google/tagmanager/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6370
    invoke-static {}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->access$6000()Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->mergeFrom(Lcom/google/analytics/containertag/proto/Serving$Resource;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;

    move-result-object v0

    return-object v0
.end method
