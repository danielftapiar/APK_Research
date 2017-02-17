.class public final Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
.super Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtendableMessage;
.source "TypeSystem.java"

# interfaces
.implements Lcom/google/analytics/midtier/proto/containertag/TypeSystem$ValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/midtier/proto/containertag/TypeSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Value"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;,
        Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Escaping;,
        Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtendableMessage",
        "<",
        "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
        ">;",
        "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$ValueOrBuilder;"
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/tagmanager/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/tagmanager/protobuf/Parser",
            "<",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

.field private static volatile mutableDefault:Lcom/google/tagmanager/protobuf/MutableMessageLite;


# instance fields
.field private bitField0_:I

.field private boolean_:Z

.field private containsReferences_:Z

.field private escaping_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Escaping;",
            ">;"
        }
    .end annotation
.end field

.field private functionId_:Ljava/lang/Object;

.field private integer_:J

.field private listItem_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;"
        }
    .end annotation
.end field

.field private macroReference_:Ljava/lang/Object;

.field private mapKey_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;"
        }
    .end annotation
.end field

.field private mapValue_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private string_:Ljava/lang/Object;

.field private templateToken_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;"
        }
    .end annotation
.end field

.field private type_:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;

.field private final unknownFields:Lcom/google/tagmanager/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 359
    new-instance v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$1;

    invoke-direct {v0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$1;-><init>()V

    sput-object v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    .line 1345
    const/4 v0, 0x0

    sput-object v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mutableDefault:Lcom/google/tagmanager/protobuf/MutableMessageLite;

    .line 2613
    new-instance v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    .line 2614
    sput-object v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->defaultInstance:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->initFields()V

    .line 2615
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 176
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>()V

    .line 1061
    iput-byte v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->memoizedIsInitialized:B

    .line 1148
    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->memoizedSerializedSize:I

    .line 176
    sget-object v0, Lcom/google/tagmanager/protobuf/ByteString;->EMPTY:Lcom/google/tagmanager/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    return-void
.end method

.method private constructor <init>(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)V
    .locals 17
    .param p1, "input"    # Lcom/google/tagmanager/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 191
    invoke-direct/range {p0 .. p0}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>()V

    .line 1061
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput-byte v14, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->memoizedIsInitialized:B

    .line 1148
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->memoizedSerializedSize:I

    .line 192
    invoke-direct/range {p0 .. p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->initFields()V

    .line 193
    const/4 v7, 0x0

    .line 194
    .local v7, "mutable_bitField0_":I
    invoke-static {}, Lcom/google/tagmanager/protobuf/ByteString;->newOutput()Lcom/google/tagmanager/protobuf/ByteString$Output;

    move-result-object v12

    .line 196
    .local v12, "unknownFieldsOutput":Lcom/google/tagmanager/protobuf/ByteString$Output;
    invoke-static {v12}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/google/tagmanager/protobuf/CodedOutputStream;

    move-result-object v11

    .line 200
    .local v11, "unknownFieldsCodedOutput":Lcom/google/tagmanager/protobuf/CodedOutputStream;
    const/4 v4, 0x0

    .line 201
    .local v4, "done":Z
    :cond_0
    :goto_0
    if-nez v4, :cond_10

    .line 202
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readTag()I

    move-result v10

    .line 203
    .local v10, "tag":I
    sparse-switch v10, :sswitch_data_0

    .line 208
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v11, v2, v10}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->parseUnknownField(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/CodedOutputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;I)Z

    move-result v14

    if-nez v14, :cond_0

    .line 210
    const/4 v4, 0x1

    goto :goto_0

    .line 205
    :sswitch_0
    const/4 v4, 0x1

    .line 206
    goto :goto_0

    .line 215
    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readEnum()I

    move-result v9

    .line 216
    .local v9, "rawValue":I
    invoke-static {v9}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;->valueOf(I)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;

    move-result-object v13

    .line 217
    .local v13, "value":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;
    if-nez v13, :cond_6

    .line 218
    invoke-virtual {v11, v10}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 219
    invoke-virtual {v11, v9}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawVarint32(I)V
    :try_end_0
    .catch Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 328
    .end local v9    # "rawValue":I
    .end local v10    # "tag":I
    .end local v13    # "value":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;
    :catch_0
    move-exception v14

    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/tagmanager/protobuf/MessageLite;)Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;

    move-result-object v14

    throw v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 334
    :catchall_0
    move-exception v14

    and-int/lit8 v15, v7, 0x4

    const/16 v16, 0x4

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    .line 335
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem_:Ljava/util/List;

    invoke-static {v15}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem_:Ljava/util/List;

    .line 337
    :cond_1
    and-int/lit8 v15, v7, 0x8

    const/16 v16, 0x8

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 338
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey_:Ljava/util/List;

    invoke-static {v15}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey_:Ljava/util/List;

    .line 340
    :cond_2
    and-int/lit8 v15, v7, 0x10

    const/16 v16, 0x10

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    .line 341
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue_:Ljava/util/List;

    invoke-static {v15}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue_:Ljava/util/List;

    .line 343
    :cond_3
    and-int/lit16 v15, v7, 0x400

    const/16 v16, 0x400

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    .line 344
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping_:Ljava/util/List;

    invoke-static {v15}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping_:Ljava/util/List;

    .line 346
    :cond_4
    and-int/lit16 v15, v7, 0x200

    const/16 v16, 0x200

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    .line 347
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken_:Ljava/util/List;

    invoke-static {v15}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken_:Ljava/util/List;

    .line 350
    :cond_5
    :try_start_2
    invoke-virtual {v11}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 354
    invoke-virtual {v12}, Lcom/google/tagmanager/protobuf/ByteString$Output;->toByteString()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    .line 356
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->makeExtensionsImmutable()V

    throw v14

    .line 221
    .restart local v9    # "rawValue":I
    .restart local v10    # "tag":I
    .restart local v13    # "value":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;
    :cond_6
    :try_start_3
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->bitField0_:I

    or-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->bitField0_:I

    .line 222
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type_:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;
    :try_end_3
    .catch Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 330
    .end local v9    # "rawValue":I
    .end local v10    # "tag":I
    .end local v13    # "value":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;
    :catch_1
    move-exception v5

    .line 331
    .local v5, "e":Ljava/io/IOException;
    :try_start_4
    new-instance v14, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/tagmanager/protobuf/MessageLite;)Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;

    move-result-object v14

    throw v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 227
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v10    # "tag":I
    :sswitch_2
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readBytes()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v3

    .line 228
    .local v3, "bs":Lcom/google/tagmanager/protobuf/ByteString;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->bitField0_:I

    or-int/lit8 v14, v14, 0x2

    move-object/from16 v0, p0

    iput v14, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->bitField0_:I

    .line 229
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->string_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 233
    .end local v3    # "bs":Lcom/google/tagmanager/protobuf/ByteString;
    :sswitch_3
    and-int/lit8 v14, v7, 0x4

    const/4 v15, 0x4

    if-eq v14, v15, :cond_7

    .line 234
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem_:Ljava/util/List;

    .line 235
    or-int/lit8 v7, v7, 0x4

    .line 237
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem_:Ljava/util/List;

    sget-object v15, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v15, v1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readMessage(Lcom/google/tagmanager/protobuf/Parser;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/tagmanager/protobuf/MessageLite;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 241
    :sswitch_4
    and-int/lit8 v14, v7, 0x8

    const/16 v15, 0x8

    if-eq v14, v15, :cond_8

    .line 242
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey_:Ljava/util/List;

    .line 243
    or-int/lit8 v7, v7, 0x8

    .line 245
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey_:Ljava/util/List;

    sget-object v15, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v15, v1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readMessage(Lcom/google/tagmanager/protobuf/Parser;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/tagmanager/protobuf/MessageLite;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 249
    :sswitch_5
    and-int/lit8 v14, v7, 0x10

    const/16 v15, 0x10

    if-eq v14, v15, :cond_9

    .line 250
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue_:Ljava/util/List;

    .line 251
    or-int/lit8 v7, v7, 0x10

    .line 253
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue_:Ljava/util/List;

    sget-object v15, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v15, v1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readMessage(Lcom/google/tagmanager/protobuf/Parser;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/tagmanager/protobuf/MessageLite;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 257
    :sswitch_6
    invoke-virtual/range {p1 .. p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readBytes()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v3

    .line 258
    .restart local v3    # "bs":Lcom/google/tagmanager/protobuf/ByteString;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->bitField0_:I

    or-int/lit8 v14, v14, 0x4

    move-object/from16 v0, p0

    iput v14, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->bitField0_:I

    .line 259
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->macroReference_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 263
    .end local v3    # "bs":Lcom/google/tagmanager/protobuf/ByteString;
    :sswitch_7
    invoke-virtual/range {p1 .. p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readBytes()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v3

    .line 264
    .restart local v3    # "bs":Lcom/google/tagmanager/protobuf/ByteString;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->bitField0_:I

    or-int/lit8 v14, v14, 0x8

    move-object/from16 v0, p0

    iput v14, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->bitField0_:I

    .line 265
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->functionId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 269
    .end local v3    # "bs":Lcom/google/tagmanager/protobuf/ByteString;
    :sswitch_8
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->bitField0_:I

    or-int/lit8 v14, v14, 0x10

    move-object/from16 v0, p0

    iput v14, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->bitField0_:I

    .line 270
    invoke-virtual/range {p1 .. p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->integer_:J

    goto/16 :goto_0

    .line 274
    :sswitch_9
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->bitField0_:I

    or-int/lit8 v14, v14, 0x40

    move-object/from16 v0, p0

    iput v14, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->bitField0_:I

    .line 275
    invoke-virtual/range {p1 .. p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readBool()Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->containsReferences_:Z

    goto/16 :goto_0

    .line 279
    :sswitch_a
    invoke-virtual/range {p1 .. p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readEnum()I

    move-result v9

    .line 280
    .restart local v9    # "rawValue":I
    invoke-static {v9}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Escaping;->valueOf(I)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Escaping;

    move-result-object v13

    .line 281
    .local v13, "value":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Escaping;
    if-nez v13, :cond_a

    .line 282
    invoke-virtual {v11, v10}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 283
    invoke-virtual {v11, v9}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    goto/16 :goto_0

    .line 285
    :cond_a
    and-int/lit16 v14, v7, 0x400

    const/16 v15, 0x400

    if-eq v14, v15, :cond_b

    .line 286
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping_:Ljava/util/List;

    .line 287
    or-int/lit16 v7, v7, 0x400

    .line 289
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping_:Ljava/util/List;

    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 294
    .end local v9    # "rawValue":I
    .end local v13    # "value":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Escaping;
    :sswitch_b
    invoke-virtual/range {p1 .. p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v6

    .line 295
    .local v6, "length":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/google/tagmanager/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v8

    .line 296
    .local v8, "oldLimit":I
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v14

    if-lez v14, :cond_e

    .line 297
    invoke-virtual/range {p1 .. p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readEnum()I

    move-result v9

    .line 298
    .restart local v9    # "rawValue":I
    invoke-static {v9}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Escaping;->valueOf(I)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Escaping;

    move-result-object v13

    .line 299
    .restart local v13    # "value":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Escaping;
    if-nez v13, :cond_c

    .line 300
    invoke-virtual {v11, v10}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 301
    invoke-virtual {v11, v9}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    goto :goto_2

    .line 303
    :cond_c
    and-int/lit16 v14, v7, 0x400

    const/16 v15, 0x400

    if-eq v14, v15, :cond_d

    .line 304
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping_:Ljava/util/List;

    .line 305
    or-int/lit16 v7, v7, 0x400

    .line 307
    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping_:Ljava/util/List;

    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 310
    .end local v9    # "rawValue":I
    .end local v13    # "value":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Escaping;
    :cond_e
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/google/tagmanager/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_0

    .line 314
    .end local v6    # "length":I
    .end local v8    # "oldLimit":I
    :sswitch_c
    and-int/lit16 v14, v7, 0x200

    const/16 v15, 0x200

    if-eq v14, v15, :cond_f

    .line 315
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken_:Ljava/util/List;

    .line 316
    or-int/lit16 v7, v7, 0x200

    .line 318
    :cond_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken_:Ljava/util/List;

    sget-object v15, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v15, v1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readMessage(Lcom/google/tagmanager/protobuf/Parser;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/tagmanager/protobuf/MessageLite;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 322
    :sswitch_d
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->bitField0_:I

    or-int/lit8 v14, v14, 0x20

    move-object/from16 v0, p0

    iput v14, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->bitField0_:I

    .line 323
    invoke-virtual/range {p1 .. p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readBool()Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->boolean_:Z
    :try_end_5
    .catch Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 334
    .end local v10    # "tag":I
    :cond_10
    and-int/lit8 v14, v7, 0x4

    const/4 v15, 0x4

    if-ne v14, v15, :cond_11

    .line 335
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem_:Ljava/util/List;

    invoke-static {v14}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem_:Ljava/util/List;

    .line 337
    :cond_11
    and-int/lit8 v14, v7, 0x8

    const/16 v15, 0x8

    if-ne v14, v15, :cond_12

    .line 338
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey_:Ljava/util/List;

    invoke-static {v14}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey_:Ljava/util/List;

    .line 340
    :cond_12
    and-int/lit8 v14, v7, 0x10

    const/16 v15, 0x10

    if-ne v14, v15, :cond_13

    .line 341
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue_:Ljava/util/List;

    invoke-static {v14}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue_:Ljava/util/List;

    .line 343
    :cond_13
    and-int/lit16 v14, v7, 0x400

    const/16 v15, 0x400

    if-ne v14, v15, :cond_14

    .line 344
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping_:Ljava/util/List;

    invoke-static {v14}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping_:Ljava/util/List;

    .line 346
    :cond_14
    and-int/lit16 v14, v7, 0x200

    const/16 v15, 0x200

    if-ne v14, v15, :cond_15

    .line 347
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken_:Ljava/util/List;

    invoke-static {v14}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken_:Ljava/util/List;

    .line 350
    :cond_15
    :try_start_6
    invoke-virtual {v11}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->flush()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 354
    invoke-virtual {v12}, Lcom/google/tagmanager/protobuf/ByteString$Output;->toByteString()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    .line 356
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->makeExtensionsImmutable()V

    .line 357
    return-void

    .line 354
    :catch_2
    move-exception v14

    invoke-virtual {v12}, Lcom/google/tagmanager/protobuf/ByteString$Output;->toByteString()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    goto :goto_3

    :catchall_1
    move-exception v14

    invoke-virtual {v12}, Lcom/google/tagmanager/protobuf/ByteString$Output;->toByteString()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    throw v14

    :catch_3
    move-exception v15

    invoke-virtual {v12}, Lcom/google/tagmanager/protobuf/ByteString$Output;->toByteString()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    goto/16 :goto_1

    :catchall_2
    move-exception v14

    invoke-virtual {v12}, Lcom/google/tagmanager/protobuf/ByteString$Output;->toByteString()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    throw v14

    .line 203
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
        0x52 -> :sswitch_b
        0x5a -> :sswitch_c
        0x60 -> :sswitch_d
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
    .line 166
    invoke-direct {p0, p1, p2}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtendableBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtendableBuilder",
            "<",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .local p1, "builder":Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtendableBuilder;, "Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtendableBuilder<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;*>;"
    const/4 v0, -0x1

    .line 173
    invoke-direct {p0, p1}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>(Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtendableBuilder;)V

    .line 1061
    iput-byte v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->memoizedIsInitialized:B

    .line 1148
    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->memoizedSerializedSize:I

    .line 174
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtendableBuilder;->getUnknownFields()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    .line 175
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtendableBuilder;B)V
    .locals 0
    .param p1, "x0"    # Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtendableBuilder;

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>(Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtendableBuilder;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;J)J
    .locals 0
    .param p0, "x0"    # Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .param p1, "x1"    # J

    .prologue
    .line 166
    iput-wide p1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->integer_:J

    return-wide p1
.end method

.method static synthetic access$1102(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .param p1, "x1"    # Z

    .prologue
    .line 166
    iput-boolean p1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->boolean_:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .param p1, "x1"    # Z

    .prologue
    .line 166
    iput-boolean p1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->containsReferences_:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .param p1, "x1"    # I

    .prologue
    .line 166
    iput p1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->bitField0_:I

    return p1
.end method

.method static synthetic access$1600(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/tagmanager/protobuf/ByteString;
    .locals 1
    .param p0, "x0"    # Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;
    .locals 0
    .param p0, "x0"    # Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .param p1, "x1"    # Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type_:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->string_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->string_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$800(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->macroReference_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->macroReference_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$900(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->functionId_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->functionId_:Ljava/lang/Object;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .locals 1

    .prologue
    .line 180
    sget-object v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->defaultInstance:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    return-object v0
.end method

.method private getFunctionId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 906
    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->functionId_:Ljava/lang/Object;

    .line 907
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 908
    check-cast v1, Ljava/lang/String;

    .line 916
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 910
    check-cast v0, Lcom/google/tagmanager/protobuf/ByteString;

    .line 912
    .local v0, "bs":Lcom/google/tagmanager/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 913
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 914
    iput-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->functionId_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 916
    goto :goto_0
.end method

.method private getListItemCount()I
    .locals 1

    .prologue
    .line 758
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method private getMacroReference()Ljava/lang/String;
    .locals 4

    .prologue
    .line 862
    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->macroReference_:Ljava/lang/Object;

    .line 863
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 864
    check-cast v1, Ljava/lang/String;

    .line 872
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 866
    check-cast v0, Lcom/google/tagmanager/protobuf/ByteString;

    .line 868
    .local v0, "bs":Lcom/google/tagmanager/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 869
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 870
    iput-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->macroReference_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 872
    goto :goto_0
.end method

.method private getMapKeyCount()I
    .locals 1

    .prologue
    .line 795
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method private getMapValueCount()I
    .locals 1

    .prologue
    .line 832
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method private getString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 707
    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->string_:Ljava/lang/Object;

    .line 708
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 709
    check-cast v1, Ljava/lang/String;

    .line 717
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 711
    check-cast v0, Lcom/google/tagmanager/protobuf/ByteString;

    .line 713
    .local v0, "bs":Lcom/google/tagmanager/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 714
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 715
    iput-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->string_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 717
    goto :goto_0
.end method

.method private getTemplateTokenCount()I
    .locals 1

    .prologue
    .line 991
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method private initFields()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1048
    sget-object v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;->STRING:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type_:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;

    .line 1049
    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->string_:Ljava/lang/Object;

    .line 1050
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem_:Ljava/util/List;

    .line 1051
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey_:Ljava/util/List;

    .line 1052
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue_:Ljava/util/List;

    .line 1053
    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->macroReference_:Ljava/lang/Object;

    .line 1054
    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->functionId_:Ljava/lang/Object;

    .line 1055
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->integer_:J

    .line 1056
    iput-boolean v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->boolean_:Z

    .line 1057
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken_:Ljava/util/List;

    .line 1058
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping_:Ljava/util/List;

    .line 1059
    iput-boolean v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->containsReferences_:Z

    .line 1060
    return-void
.end method

.method public static newBuilder()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;
    .locals 1

    .prologue
    .line 1407
    invoke-static {}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->access$100()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1222
    if-ne p1, p0, :cond_0

    .line 1276
    :goto_0
    return v2

    .line 1225
    :cond_0
    instance-of v4, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v4, :cond_1

    .line 1226
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 1228
    check-cast v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 1230
    .local v0, "other":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->hasType()Z

    move-result v4

    invoke-virtual {v0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->hasType()Z

    move-result v5

    if-ne v4, v5, :cond_9

    move v1, v2

    .line 1232
    .local v1, "result":Z
    :goto_1
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->hasType()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1233
    if-eqz v1, :cond_a

    iget-object v4, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type_:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;

    iget-object v5, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type_:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;

    if-ne v4, v5, :cond_a

    move v1, v2

    .line 1236
    :cond_2
    :goto_2
    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->hasString()Z

    move-result v4

    invoke-virtual {v0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->hasString()Z

    move-result v5

    if-ne v4, v5, :cond_b

    move v1, v2

    .line 1237
    :goto_3
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->hasString()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1238
    if-eqz v1, :cond_c

    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    move v1, v2

    .line 1241
    :cond_3
    :goto_4
    if-eqz v1, :cond_d

    iget-object v4, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem_:Ljava/util/List;

    iget-object v5, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem_:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    move v4, v2

    .line 1243
    :goto_5
    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey_:Ljava/util/List;

    iget-object v5, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey_:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    move v4, v2

    .line 1245
    :goto_6
    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue_:Ljava/util/List;

    iget-object v5, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue_:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    move v4, v2

    .line 1247
    :goto_7
    if-eqz v4, :cond_10

    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->hasMacroReference()Z

    move-result v4

    invoke-virtual {v0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->hasMacroReference()Z

    move-result v5

    if-ne v4, v5, :cond_10

    move v1, v2

    .line 1248
    :goto_8
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->hasMacroReference()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1249
    if-eqz v1, :cond_11

    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getMacroReference()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getMacroReference()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    move v1, v2

    .line 1252
    :cond_4
    :goto_9
    if-eqz v1, :cond_12

    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->hasFunctionId()Z

    move-result v4

    invoke-virtual {v0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->hasFunctionId()Z

    move-result v5

    if-ne v4, v5, :cond_12

    move v1, v2

    .line 1253
    :goto_a
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->hasFunctionId()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1254
    if-eqz v1, :cond_13

    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getFunctionId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getFunctionId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    move v1, v2

    .line 1257
    :cond_5
    :goto_b
    if-eqz v1, :cond_14

    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->hasInteger()Z

    move-result v4

    invoke-virtual {v0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->hasInteger()Z

    move-result v5

    if-ne v4, v5, :cond_14

    move v1, v2

    .line 1258
    :goto_c
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->hasInteger()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1259
    if-eqz v1, :cond_15

    iget-wide v4, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->integer_:J

    iget-wide v6, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->integer_:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_15

    move v1, v2

    .line 1262
    :cond_6
    :goto_d
    if-eqz v1, :cond_16

    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->hasBoolean()Z

    move-result v4

    invoke-virtual {v0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->hasBoolean()Z

    move-result v5

    if-ne v4, v5, :cond_16

    move v1, v2

    .line 1263
    :goto_e
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->hasBoolean()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1264
    if-eqz v1, :cond_17

    iget-boolean v4, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->boolean_:Z

    iget-boolean v5, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->boolean_:Z

    if-ne v4, v5, :cond_17

    move v1, v2

    .line 1267
    :cond_7
    :goto_f
    if-eqz v1, :cond_18

    iget-object v4, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken_:Ljava/util/List;

    iget-object v5, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken_:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    move v4, v2

    .line 1269
    :goto_10
    if-eqz v4, :cond_19

    iget-object v4, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping_:Ljava/util/List;

    iget-object v5, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping_:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    move v4, v2

    .line 1271
    :goto_11
    if-eqz v4, :cond_1a

    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->hasContainsReferences()Z

    move-result v4

    invoke-virtual {v0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->hasContainsReferences()Z

    move-result v5

    if-ne v4, v5, :cond_1a

    move v1, v2

    .line 1272
    :goto_12
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->hasContainsReferences()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1273
    if-eqz v1, :cond_1b

    iget-boolean v4, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->containsReferences_:Z

    iget-boolean v5, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->containsReferences_:Z

    if-ne v4, v5, :cond_1b

    move v1, v2

    :cond_8
    :goto_13
    move v2, v1

    .line 1276
    goto/16 :goto_0

    .end local v1    # "result":Z
    :cond_9
    move v1, v3

    .line 1230
    goto/16 :goto_1

    .restart local v1    # "result":Z
    :cond_a
    move v1, v3

    .line 1233
    goto/16 :goto_2

    :cond_b
    move v1, v3

    .line 1236
    goto/16 :goto_3

    :cond_c
    move v1, v3

    .line 1238
    goto/16 :goto_4

    :cond_d
    move v4, v3

    .line 1241
    goto/16 :goto_5

    :cond_e
    move v4, v3

    .line 1243
    goto/16 :goto_6

    :cond_f
    move v4, v3

    .line 1245
    goto/16 :goto_7

    :cond_10
    move v1, v3

    .line 1247
    goto/16 :goto_8

    :cond_11
    move v1, v3

    .line 1249
    goto/16 :goto_9

    :cond_12
    move v1, v3

    .line 1252
    goto/16 :goto_a

    :cond_13
    move v1, v3

    .line 1254
    goto/16 :goto_b

    :cond_14
    move v1, v3

    .line 1257
    goto/16 :goto_c

    :cond_15
    move v1, v3

    .line 1259
    goto :goto_d

    :cond_16
    move v1, v3

    .line 1262
    goto :goto_e

    :cond_17
    move v1, v3

    .line 1264
    goto :goto_f

    :cond_18
    move v4, v3

    .line 1267
    goto :goto_10

    :cond_19
    move v4, v3

    .line 1269
    goto :goto_11

    :cond_1a
    move v1, v3

    .line 1271
    goto :goto_12

    :cond_1b
    move v1, v3

    .line 1273
    goto :goto_13
.end method

.method public final getBoolean()Z
    .locals 1

    .prologue
    .line 967
    iget-boolean v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->boolean_:Z

    return v0
.end method

.method public final getContainsReferences()Z
    .locals 1

    .prologue
    .line 1044
    iget-boolean v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->containsReferences_:Z

    return v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/tagmanager/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 166
    sget-object v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->defaultInstance:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    return-object v0
.end method

.method public final getInteger()J
    .locals 2

    .prologue
    .line 950
    iget-wide v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->integer_:J

    return-wide v0
.end method

.method public final getParserForType()Lcom/google/tagmanager/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/tagmanager/protobuf/Parser",
            "<",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;"
        }
    .end annotation

    .prologue
    .line 371
    sget-object v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    return-object v0
.end method

.method public final getType()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;
    .locals 1

    .prologue
    .line 690
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type_:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;

    return-object v0
.end method

.method public final hasBoolean()Z
    .locals 2

    .prologue
    .line 961
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->bitField0_:I

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

.method public final hasContainsReferences()Z
    .locals 2

    .prologue
    .line 1038
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->bitField0_:I

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

.method public final hasFunctionId()Z
    .locals 2

    .prologue
    .line 900
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->bitField0_:I

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

.method public final hasInteger()Z
    .locals 2

    .prologue
    .line 944
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->bitField0_:I

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

.method public final hasMacroReference()Z
    .locals 2

    .prologue
    .line 856
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->bitField0_:I

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

.method public final hasString()Z
    .locals 2

    .prologue
    .line 701
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->bitField0_:I

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

.method public final hasType()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 684
    iget v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 1281
    iget v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->memoizedHashCode:I

    if-eqz v1, :cond_0

    .line 1282
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->memoizedHashCode:I

    .line 1341
    :goto_0
    return v0

    .line 1284
    :cond_0
    const-class v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x30b

    .line 1286
    .local v0, "hash":I
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->hasType()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1287
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0x1

    .line 1288
    mul-int/lit8 v1, v0, 0x35

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type_:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;

    invoke-static {v2}, Lcom/google/tagmanager/protobuf/Internal;->hashEnum(Lcom/google/tagmanager/protobuf/Internal$EnumLite;)I

    move-result v2

    add-int v0, v1, v2

    .line 1291
    :cond_1
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->hasString()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1292
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0x2

    .line 1293
    mul-int/lit8 v1, v0, 0x35

    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 1295
    :cond_2
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getListItemCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 1296
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0x3

    .line 1297
    mul-int/lit8 v1, v0, 0x35

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 1299
    :cond_3
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getMapKeyCount()I

    move-result v1

    if-lez v1, :cond_4

    .line 1300
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0x4

    .line 1301
    mul-int/lit8 v1, v0, 0x35

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 1303
    :cond_4
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getMapValueCount()I

    move-result v1

    if-lez v1, :cond_5

    .line 1304
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0x5

    .line 1305
    mul-int/lit8 v1, v0, 0x35

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 1307
    :cond_5
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->hasMacroReference()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1308
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0x6

    .line 1309
    mul-int/lit8 v1, v0, 0x35

    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getMacroReference()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 1311
    :cond_6
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->hasFunctionId()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1312
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0x7

    .line 1313
    mul-int/lit8 v1, v0, 0x35

    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getFunctionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 1315
    :cond_7
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->hasInteger()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1316
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0x8

    .line 1317
    mul-int/lit8 v1, v0, 0x35

    iget-wide v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->integer_:J

    invoke-static {v2, v3}, Lcom/google/tagmanager/protobuf/Internal;->hashLong(J)I

    move-result v2

    add-int v0, v1, v2

    .line 1320
    :cond_8
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->hasBoolean()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1321
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0xc

    .line 1322
    mul-int/lit8 v1, v0, 0x35

    iget-boolean v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->boolean_:Z

    invoke-static {v2}, Lcom/google/tagmanager/protobuf/Internal;->hashBoolean(Z)I

    move-result v2

    add-int v0, v1, v2

    .line 1325
    :cond_9
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getTemplateTokenCount()I

    move-result v1

    if-lez v1, :cond_a

    .line 1326
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0xb

    .line 1327
    mul-int/lit8 v1, v0, 0x35

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 1329
    :cond_a
    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_b

    .line 1330
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0xa

    .line 1331
    mul-int/lit8 v1, v0, 0x35

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping_:Ljava/util/List;

    invoke-static {v2}, Lcom/google/tagmanager/protobuf/Internal;->hashEnumList(Ljava/util/List;)I

    move-result v2

    add-int v0, v1, v2

    .line 1334
    :cond_b
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->hasContainsReferences()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1335
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0x9

    .line 1336
    mul-int/lit8 v1, v0, 0x35

    iget-boolean v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->containsReferences_:Z

    invoke-static {v2}, Lcom/google/tagmanager/protobuf/Internal;->hashBoolean(Z)I

    move-result v2

    add-int v0, v1, v2

    .line 1339
    :cond_c
    mul-int/lit8 v1, v0, 0x1d

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v2}, Lcom/google/tagmanager/protobuf/ByteString;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 1340
    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->memoizedHashCode:I

    goto/16 :goto_0
.end method

.method public final isInitialized()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1063
    iget-byte v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->memoizedIsInitialized:B

    .line 1064
    .local v1, "isInitialized":B
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v3, :cond_0

    move v2, v3

    .line 1099
    :goto_0
    return v2

    :cond_0
    move v2, v4

    .line 1064
    goto :goto_0

    .line 1066
    :cond_1
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->hasType()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1067
    iput-byte v4, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->memoizedIsInitialized:B

    move v2, v4

    .line 1068
    goto :goto_0

    .line 1070
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getListItemCount()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 1071
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-virtual {v2}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1072
    iput-byte v4, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->memoizedIsInitialized:B

    move v2, v4

    .line 1073
    goto :goto_0

    .line 1070
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1076
    :cond_4
    const/4 v0, 0x0

    :goto_2
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getMapKeyCount()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 1077
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-virtual {v2}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1078
    iput-byte v4, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->memoizedIsInitialized:B

    move v2, v4

    .line 1079
    goto :goto_0

    .line 1076
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1082
    :cond_6
    const/4 v0, 0x0

    :goto_3
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getMapValueCount()I

    move-result v2

    if-ge v0, v2, :cond_8

    .line 1083
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-virtual {v2}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1084
    iput-byte v4, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->memoizedIsInitialized:B

    move v2, v4

    .line 1085
    goto :goto_0

    .line 1082
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1088
    :cond_8
    const/4 v0, 0x0

    :goto_4
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getTemplateTokenCount()I

    move-result v2

    if-ge v0, v2, :cond_a

    .line 1089
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-virtual {v2}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_9

    .line 1090
    iput-byte v4, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->memoizedIsInitialized:B

    move v2, v4

    .line 1091
    goto :goto_0

    .line 1088
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1094
    :cond_a
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->extensionsAreInitialized()Z

    move-result v2

    if-nez v2, :cond_b

    .line 1095
    iput-byte v4, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->memoizedIsInitialized:B

    move v2, v4

    .line 1096
    goto/16 :goto_0

    .line 1098
    :cond_b
    iput-byte v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->memoizedIsInitialized:B

    move v2, v3

    .line 1099
    goto/16 :goto_0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/google/tagmanager/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 166
    invoke-static {}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->access$100()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/google/tagmanager/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 166
    invoke-static {}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->access$100()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mergeFrom(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;

    move-result-object v0

    return-object v0
.end method
