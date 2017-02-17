.class public final Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Protobuf.java"

# interfaces
.implements Lcom/mwr/jdiesel/api/Protobuf$Message$ArgumentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;",
        ">;",
        "Lcom/mwr/jdiesel/api/Protobuf$Message$ArgumentOrBuilder;"
    }
.end annotation


# instance fields
.field private arrayBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$Array;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$ArrayOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private array_:Lcom/mwr/jdiesel/api/Protobuf$Message$Array;

.field private bitField0_:I

.field private data_:Lcom/google/protobuf/ByteString;

.field private objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReferenceOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

.field private primitiveBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$PrimitiveOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private primitive_:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

.field private string_:Ljava/lang/Object;

.field private type_:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 8716
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 8971
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->STRING:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    .line 8995
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->primitive_:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    .line 9085
    const-string v0, ""

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->string_:Ljava/lang/Object;

    .line 9121
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    .line 9211
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$Array;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->array_:Lcom/mwr/jdiesel/api/Protobuf$Message$Array;

    .line 9301
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->data_:Lcom/google/protobuf/ByteString;

    .line 8717
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->maybeForceBuilderInitialization()V

    .line 8718
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 8721
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 8971
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->STRING:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    .line 8995
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->primitive_:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    .line 9085
    const-string v0, ""

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->string_:Ljava/lang/Object;

    .line 9121
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    .line 9211
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$Array;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->array_:Lcom/mwr/jdiesel/api/Protobuf$Message$Array;

    .line 9301
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->data_:Lcom/google/protobuf/ByteString;

    .line 8722
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->maybeForceBuilderInitialization()V

    .line 8723
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;)V
    .locals 0

    .prologue
    .line 8720
    invoke-direct {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8785
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$18()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;
    .locals 1

    .prologue
    .line 8731
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->create()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8787
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v0

    .line 8788
    .local v0, "result":Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;
    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8789
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    .line 8790
    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    .line 8789
    throw v1

    .line 8792
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;
    .locals 1

    .prologue
    .line 8732
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    invoke-direct {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;-><init>()V

    return-object v0
.end method

.method private getArrayFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$Array;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$ArrayOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9289
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->arrayBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 9290
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 9292
    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->array_:Lcom/mwr/jdiesel/api/Protobuf$Message$Array;

    .line 9293
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    .line 9294
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    .line 9290
    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->arrayBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 9295
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->array_:Lcom/mwr/jdiesel/api/Protobuf$Message$Array;

    .line 9297
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->arrayBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 8707
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_Argument_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$35()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getObjectFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReferenceOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9199
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 9200
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 9202
    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    .line 9203
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    .line 9204
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    .line 9200
    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 9205
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    .line 9207
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private getPrimitiveFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$PrimitiveOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9073
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->primitiveBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 9074
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 9076
    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->primitive_:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    .line 9077
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    .line 9078
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    .line 9074
    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->primitiveBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 9079
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->primitive_:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    .line 9081
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->primitiveBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 8725
    # getter for: Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->access$7()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8726
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->getPrimitiveFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 8727
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->getObjectFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 8728
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->getArrayFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 8730
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;
    .locals 2

    .prologue
    .line 8778
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v0

    .line 8779
    .local v0, "result":Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;
    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8780
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 8782
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;
    .locals 5

    .prologue
    .line 8796
    new-instance v1, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;-><init>(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;)V

    .line 8797
    .local v1, "result":Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->bitField0_:I

    .line 8798
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 8799
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 8800
    or-int/lit8 v2, v2, 0x1

    .line 8802
    :cond_0
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->access$9(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;)V

    .line 8803
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 8804
    or-int/lit8 v2, v2, 0x2

    .line 8806
    :cond_1
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->primitiveBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v3, :cond_6

    .line 8807
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->primitive_:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->access$10(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;)V

    .line 8811
    :goto_0
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 8812
    or-int/lit8 v2, v2, 0x4

    .line 8814
    :cond_2
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->string_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->access$11(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;Ljava/lang/Object;)V

    .line 8815
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 8816
    or-int/lit8 v2, v2, 0x8

    .line 8818
    :cond_3
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v3, :cond_7

    .line 8819
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->access$12(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;)V

    .line 8823
    :goto_1
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 8824
    or-int/lit8 v2, v2, 0x10

    .line 8826
    :cond_4
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->arrayBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v3, :cond_8

    .line 8827
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->array_:Lcom/mwr/jdiesel/api/Protobuf$Message$Array;

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->access$13(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;Lcom/mwr/jdiesel/api/Protobuf$Message$Array;)V

    .line 8831
    :goto_2
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 8832
    or-int/lit8 v2, v2, 0x20

    .line 8834
    :cond_5
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->data_:Lcom/google/protobuf/ByteString;

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->access$14(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;Lcom/google/protobuf/ByteString;)V

    .line 8835
    invoke-static {v1, v2}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->access$15(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;I)V

    .line 8836
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->onBuilt()V

    .line 8837
    return-object v1

    .line 8809
    :cond_6
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->primitiveBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v3

    check-cast v3, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->access$10(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;)V

    goto :goto_0

    .line 8821
    :cond_7
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v3

    check-cast v3, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->access$12(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;)V

    goto :goto_1

    .line 8829
    :cond_8
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->arrayBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v3

    check-cast v3, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->access$13(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;Lcom/mwr/jdiesel/api/Protobuf$Message$Array;)V

    goto :goto_2
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->clear()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->clear()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->clear()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;
    .locals 1

    .prologue
    .line 8736
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 8737
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->STRING:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    .line 8738
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->bitField0_:I

    .line 8739
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->primitiveBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 8740
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->primitive_:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    .line 8744
    :goto_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->bitField0_:I

    .line 8745
    const-string v0, ""

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->string_:Ljava/lang/Object;

    .line 8746
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->bitField0_:I

    .line 8747
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 8748
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    .line 8752
    :goto_1
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->bitField0_:I

    .line 8753
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->arrayBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_2

    .line 8754
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$Array;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->array_:Lcom/mwr/jdiesel/api/Protobuf$Message$Array;

    .line 8758
    :goto_2
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->bitField0_:I

    .line 8759
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->data_:Lcom/google/protobuf/ByteString;

    .line 8760
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->bitField0_:I

    .line 8761
    return-object p0

    .line 8742
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->primitiveBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0

    .line 8750
    :cond_1
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1

    .line 8756
    :cond_2
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->arrayBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_2
.end method

.method public clearArray()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;
    .locals 1

    .prologue
    .line 9265
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->arrayBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 9266
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$Array;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->array_:Lcom/mwr/jdiesel/api/Protobuf$Message$Array;

    .line 9267
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->onChanged()V

    .line 9271
    :goto_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->bitField0_:I

    .line 9272
    return-object p0

    .line 9269
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->arrayBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearData()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;
    .locals 1

    .prologue
    .line 9318
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->bitField0_:I

    .line 9319
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->getData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->data_:Lcom/google/protobuf/ByteString;

    .line 9320
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->onChanged()V

    .line 9321
    return-object p0
.end method

.method public clearObject()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;
    .locals 1

    .prologue
    .line 9175
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 9176
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    .line 9177
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->onChanged()V

    .line 9181
    :goto_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->bitField0_:I

    .line 9182
    return-object p0

    .line 9179
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearPrimitive()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;
    .locals 1

    .prologue
    .line 9049
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->primitiveBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 9050
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->primitive_:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    .line 9051
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->onChanged()V

    .line 9055
    :goto_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->bitField0_:I

    .line 9056
    return-object p0

    .line 9053
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->primitiveBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearString()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;
    .locals 1

    .prologue
    .line 9109
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->bitField0_:I

    .line 9110
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->string_:Ljava/lang/Object;

    .line 9111
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->onChanged()V

    .line 9112
    return-object p0
.end method

.method public clearType()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;
    .locals 1

    .prologue
    .line 8988
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->bitField0_:I

    .line 8989
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->STRING:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    .line 8990
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->onChanged()V

    .line 8991
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->clone()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->clone()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->clone()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;
    .locals 2

    .prologue
    .line 8765
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->create()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getArray()Lcom/mwr/jdiesel/api/Protobuf$Message$Array;
    .locals 1

    .prologue
    .line 9218
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->arrayBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 9219
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->array_:Lcom/mwr/jdiesel/api/Protobuf$Message$Array;

    .line 9221
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->arrayBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;

    goto :goto_0
.end method

.method public getArrayBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;
    .locals 1

    .prologue
    .line 9275
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->bitField0_:I

    .line 9276
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->onChanged()V

    .line 9277
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->getArrayFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;

    return-object v0
.end method

.method public getArrayOrBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ArrayOrBuilder;
    .locals 1

    .prologue
    .line 9280
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->arrayBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 9281
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->arrayBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ArrayOrBuilder;

    .line 9283
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->array_:Lcom/mwr/jdiesel/api/Protobuf$Message$Array;

    goto :goto_0
.end method

.method public getData()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 9306
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->data_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;
    .locals 1

    .prologue
    .line 8774
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 8770
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getObject()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;
    .locals 1

    .prologue
    .line 9128
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 9129
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    .line 9131
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    goto :goto_0
.end method

.method public getObjectBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;
    .locals 1

    .prologue
    .line 9185
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->bitField0_:I

    .line 9186
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->onChanged()V

    .line 9187
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->getObjectFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;

    return-object v0
.end method

.method public getObjectOrBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReferenceOrBuilder;
    .locals 1

    .prologue
    .line 9190
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 9191
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReferenceOrBuilder;

    .line 9193
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    goto :goto_0
.end method

.method public getPrimitive()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;
    .locals 1

    .prologue
    .line 9002
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->primitiveBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 9003
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->primitive_:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    .line 9005
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->primitiveBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    goto :goto_0
.end method

.method public getPrimitiveBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;
    .locals 1

    .prologue
    .line 9059
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->bitField0_:I

    .line 9060
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->onChanged()V

    .line 9061
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->getPrimitiveFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

    return-object v0
.end method

.method public getPrimitiveOrBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$PrimitiveOrBuilder;
    .locals 1

    .prologue
    .line 9064
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->primitiveBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 9065
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->primitiveBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$PrimitiveOrBuilder;

    .line 9067
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->primitive_:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    goto :goto_0
.end method

.method public getString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 9090
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->string_:Ljava/lang/Object;

    .line 9091
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 9092
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 9093
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->string_:Ljava/lang/Object;

    .line 9096
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "ref":Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getType()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;
    .locals 1

    .prologue
    .line 8976
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    return-object v0
.end method

.method public hasArray()Z
    .locals 2

    .prologue
    .line 9215
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->bitField0_:I

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
    .line 9303
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->bitField0_:I

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
    .line 9125
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->bitField0_:I

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
    .line 8999
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->bitField0_:I

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
    .line 9087
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->bitField0_:I

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

    .line 8973
    iget v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->bitField0_:I

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
    .line 8712
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_Argument_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$65()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 8874
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->hasType()Z

    move-result v1

    if-nez v1, :cond_1

    .line 8890
    :cond_0
    :goto_0
    return v0

    .line 8878
    :cond_1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->hasPrimitive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8879
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->getPrimitive()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8884
    :cond_2
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8885
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->getArray()Lcom/mwr/jdiesel/api/Protobuf$Message$Array;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8890
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public mergeArray(Lcom/mwr/jdiesel/api/Protobuf$Message$Array;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;
    .locals 2
    .param p1, "value"    # Lcom/mwr/jdiesel/api/Protobuf$Message$Array;

    .prologue
    .line 9249
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->arrayBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 9250
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 9251
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->array_:Lcom/mwr/jdiesel/api/Protobuf$Message$Array;

    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$Array;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 9253
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->array_:Lcom/mwr/jdiesel/api/Protobuf$Message$Array;

    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->newBuilder(Lcom/mwr/jdiesel/api/Protobuf$Message$Array;)Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$Array;)Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$Array;

    move-result-object v0

    .line 9252
    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->array_:Lcom/mwr/jdiesel/api/Protobuf$Message$Array;

    .line 9257
    :goto_0
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->onChanged()V

    .line 9261
    :goto_1
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->bitField0_:I

    .line 9262
    return-object p0

    .line 9255
    :cond_0
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->array_:Lcom/mwr/jdiesel/api/Protobuf$Message$Array;

    goto :goto_0

    .line 9259
    :cond_1
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->arrayBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;
    .locals 6
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8899
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v5

    .line 8898
    invoke-static {v5}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v3

    .line 8901
    .local v3, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 8902
    .local v2, "tag":I
    sparse-switch v2, :sswitch_data_0

    .line 8908
    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    .line 8909
    if-nez v5, :cond_0

    .line 8910
    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 8911
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->onChanged()V

    .line 8912
    :goto_1
    return-object p0

    .line 8904
    :sswitch_0
    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 8905
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->onChanged()V

    goto :goto_1

    .line 8917
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 8918
    .local v0, "rawValue":I
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->valueOf(I)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    move-result-object v4

    .line 8919
    .local v4, "value":Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;
    if-nez v4, :cond_1

    .line 8920
    const/4 v5, 0x1

    invoke-virtual {v3, v5, v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 8922
    :cond_1
    iget v5, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->bitField0_:I

    .line 8923
    iput-object v4, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    goto :goto_0

    .line 8928
    .end local v0    # "rawValue":I
    .end local v4    # "value":Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;
    :sswitch_2
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

    move-result-object v1

    .line 8929
    .local v1, "subBuilder":Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->hasPrimitive()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 8930
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->getPrimitive()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

    .line 8932
    :cond_2
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 8933
    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->setPrimitive(Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    goto :goto_0

    .line 8937
    .end local v1    # "subBuilder":Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;
    :sswitch_3
    iget v5, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->bitField0_:I

    .line 8938
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->string_:Ljava/lang/Object;

    goto :goto_0

    .line 8942
    :sswitch_4
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;

    move-result-object v1

    .line 8943
    .local v1, "subBuilder":Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->hasObject()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 8944
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->getObject()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;)Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;

    .line 8946
    :cond_3
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 8947
    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->setObject(Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    goto :goto_0

    .line 8951
    .end local v1    # "subBuilder":Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;
    :sswitch_5
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;

    move-result-object v1

    .line 8952
    .local v1, "subBuilder":Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->hasArray()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 8953
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->getArray()Lcom/mwr/jdiesel/api/Protobuf$Message$Array;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$Array;)Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;

    .line 8955
    :cond_4
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 8956
    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$Array;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->setArray(Lcom/mwr/jdiesel/api/Protobuf$Message$Array;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    goto/16 :goto_0

    .line 8960
    .end local v1    # "subBuilder":Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;
    :sswitch_6
    iget v5, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->bitField0_:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->bitField0_:I

    .line 8961
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->data_:Lcom/google/protobuf/ByteString;

    goto/16 :goto_0

    .line 8902
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 8841
    instance-of v0, p1, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    if-eqz v0, :cond_0

    .line 8842
    check-cast p1, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    move-result-object p0

    .line 8845
    .end local p0    # "this":Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;
    :goto_0
    return-object p0

    .line 8844
    .restart local p0    # "this":Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;
    .locals 1
    .param p1, "other"    # Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    .prologue
    .line 8850
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 8870
    :goto_0
    return-object p0

    .line 8851
    :cond_0
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->hasType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8852
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->getType()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->setType(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    .line 8854
    :cond_1
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->hasPrimitive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8855
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->getPrimitive()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->mergePrimitive(Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    .line 8857
    :cond_2
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->hasString()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8858
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->setString(Ljava/lang/String;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    .line 8860
    :cond_3
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->hasObject()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8861
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->getObject()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->mergeObject(Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    .line 8863
    :cond_4
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 8864
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->getArray()Lcom/mwr/jdiesel/api/Protobuf$Message$Array;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->mergeArray(Lcom/mwr/jdiesel/api/Protobuf$Message$Array;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    .line 8866
    :cond_5
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->hasData()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 8867
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->getData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->setData(Lcom/google/protobuf/ByteString;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    .line 8869
    :cond_6
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeObject(Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;
    .locals 2
    .param p1, "value"    # Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    .prologue
    .line 9159
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 9160
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 9161
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 9163
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;->newBuilder(Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;)Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;)Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    move-result-object v0

    .line 9162
    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    .line 9167
    :goto_0
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->onChanged()V

    .line 9171
    :goto_1
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->bitField0_:I

    .line 9172
    return-object p0

    .line 9165
    :cond_0
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    goto :goto_0

    .line 9169
    :cond_1
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public mergePrimitive(Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;
    .locals 2
    .param p1, "value"    # Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    .prologue
    .line 9033
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->primitiveBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 9034
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 9035
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->primitive_:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 9037
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->primitive_:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->newBuilder(Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    move-result-object v0

    .line 9036
    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->primitive_:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    .line 9041
    :goto_0
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->onChanged()V

    .line 9045
    :goto_1
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->bitField0_:I

    .line 9046
    return-object p0

    .line 9039
    :cond_0
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->primitive_:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    goto :goto_0

    .line 9043
    :cond_1
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->primitiveBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public setArray(Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;

    .prologue
    .line 9239
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->arrayBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 9240
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$Array;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->array_:Lcom/mwr/jdiesel/api/Protobuf$Message$Array;

    .line 9241
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->onChanged()V

    .line 9245
    :goto_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->bitField0_:I

    .line 9246
    return-object p0

    .line 9243
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->arrayBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$Array;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setArray(Lcom/mwr/jdiesel/api/Protobuf$Message$Array;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;
    .locals 1
    .param p1, "value"    # Lcom/mwr/jdiesel/api/Protobuf$Message$Array;

    .prologue
    .line 9225
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->arrayBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 9226
    if-nez p1, :cond_0

    .line 9227
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9229
    :cond_0
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->array_:Lcom/mwr/jdiesel/api/Protobuf$Message$Array;

    .line 9230
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->onChanged()V

    .line 9234
    :goto_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->bitField0_:I

    .line 9235
    return-object p0

    .line 9232
    :cond_1
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->arrayBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setData(Lcom/google/protobuf/ByteString;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 9309
    if-nez p1, :cond_0

    .line 9310
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9312
    :cond_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->bitField0_:I

    .line 9313
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->data_:Lcom/google/protobuf/ByteString;

    .line 9314
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->onChanged()V

    .line 9315
    return-object p0
.end method

.method public setObject(Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;

    .prologue
    .line 9149
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 9150
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    .line 9151
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->onChanged()V

    .line 9155
    :goto_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->bitField0_:I

    .line 9156
    return-object p0

    .line 9153
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setObject(Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;
    .locals 1
    .param p1, "value"    # Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    .prologue
    .line 9135
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 9136
    if-nez p1, :cond_0

    .line 9137
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9139
    :cond_0
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    .line 9140
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->onChanged()V

    .line 9144
    :goto_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->bitField0_:I

    .line 9145
    return-object p0

    .line 9142
    :cond_1
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setPrimitive(Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

    .prologue
    .line 9023
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->primitiveBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 9024
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->primitive_:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    .line 9025
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->onChanged()V

    .line 9029
    :goto_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->bitField0_:I

    .line 9030
    return-object p0

    .line 9027
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->primitiveBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setPrimitive(Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;
    .locals 1
    .param p1, "value"    # Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    .prologue
    .line 9009
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->primitiveBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 9010
    if-nez p1, :cond_0

    .line 9011
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9013
    :cond_0
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->primitive_:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    .line 9014
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->onChanged()V

    .line 9018
    :goto_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->bitField0_:I

    .line 9019
    return-object p0

    .line 9016
    :cond_1
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->primitiveBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setString(Ljava/lang/String;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 9100
    if-nez p1, :cond_0

    .line 9101
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9103
    :cond_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->bitField0_:I

    .line 9104
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->string_:Ljava/lang/Object;

    .line 9105
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->onChanged()V

    .line 9106
    return-object p0
.end method

.method setString(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 9115
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->bitField0_:I

    .line 9116
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->string_:Ljava/lang/Object;

    .line 9117
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->onChanged()V

    .line 9118
    return-void
.end method

.method public setType(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;
    .locals 1
    .param p1, "value"    # Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    .prologue
    .line 8979
    if-nez p1, :cond_0

    .line 8980
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8982
    :cond_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->bitField0_:I

    .line 8983
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    .line 8984
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->onChanged()V

    .line 8985
    return-object p0
.end method
