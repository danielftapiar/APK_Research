.class public final Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Protobuf.java"

# interfaces
.implements Lcom/mwr/jdiesel/api/Protobuf$Message$PrimitiveOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;",
        ">;",
        "Lcom/mwr/jdiesel/api/Protobuf$Message$PrimitiveOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private bool_:Z

.field private byte_:I

.field private char_:I

.field private double_:D

.field private float_:F

.field private int_:I

.field private long_:J

.field private short_:I

.field private type_:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 12012
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 12258
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->BOOL:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    .line 12013
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->maybeForceBuilderInitialization()V

    .line 12014
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 12017
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 12258
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->BOOL:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    .line 12018
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->maybeForceBuilderInitialization()V

    .line 12019
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;)V
    .locals 0

    .prologue
    .line 12016
    invoke-direct {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 12072
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$18()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;
    .locals 1

    .prologue
    .line 12024
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->create()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 12074
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    move-result-object v0

    .line 12075
    .local v0, "result":Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;
    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 12076
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    .line 12077
    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    .line 12076
    throw v1

    .line 12079
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;
    .locals 1

    .prologue
    .line 12025
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

    invoke-direct {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 12003
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_Primitive_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$50()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 12021
    # getter for: Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->access$7()Z

    .line 12023
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;
    .locals 2

    .prologue
    .line 12065
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    move-result-object v0

    .line 12066
    .local v0, "result":Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;
    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 12067
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 12069
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;
    .locals 5

    .prologue
    .line 12083
    new-instance v1, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;-><init>(Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;)V

    .line 12084
    .local v1, "result":Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

    .line 12085
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 12086
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 12087
    or-int/lit8 v2, v2, 0x1

    .line 12089
    :cond_0
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->access$9(Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;)V

    .line 12090
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 12091
    or-int/lit8 v2, v2, 0x2

    .line 12093
    :cond_1
    iget-boolean v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bool_:Z

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->access$10(Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;Z)V

    .line 12094
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 12095
    or-int/lit8 v2, v2, 0x4

    .line 12097
    :cond_2
    iget v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->int_:I

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->access$11(Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;I)V

    .line 12098
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 12099
    or-int/lit8 v2, v2, 0x8

    .line 12101
    :cond_3
    iget-wide v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->long_:J

    invoke-static {v1, v3, v4}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->access$12(Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;J)V

    .line 12102
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 12103
    or-int/lit8 v2, v2, 0x10

    .line 12105
    :cond_4
    iget v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->float_:F

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->access$13(Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;F)V

    .line 12106
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 12107
    or-int/lit8 v2, v2, 0x20

    .line 12109
    :cond_5
    iget v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->byte_:I

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->access$14(Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;I)V

    .line 12110
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 12111
    or-int/lit8 v2, v2, 0x40

    .line 12113
    :cond_6
    iget v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->short_:I

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->access$15(Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;I)V

    .line 12114
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 12115
    or-int/lit16 v2, v2, 0x80

    .line 12117
    :cond_7
    iget-wide v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->double_:D

    invoke-static {v1, v3, v4}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->access$16(Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;D)V

    .line 12118
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 12119
    or-int/lit16 v2, v2, 0x100

    .line 12121
    :cond_8
    iget v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->char_:I

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;I)V

    .line 12122
    invoke-static {v1, v2}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->access$18(Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;I)V

    .line 12123
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->onBuilt()V

    .line 12124
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->clear()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->clear()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->clear()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 12029
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 12030
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->BOOL:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    .line 12031
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

    .line 12032
    iput-boolean v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bool_:Z

    .line 12033
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

    .line 12034
    iput v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->int_:I

    .line 12035
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

    .line 12036
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->long_:J

    .line 12037
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

    .line 12038
    const/4 v0, 0x0

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->float_:F

    .line 12039
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

    .line 12040
    iput v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->byte_:I

    .line 12041
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

    .line 12042
    iput v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->short_:I

    .line 12043
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

    .line 12044
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->double_:D

    .line 12045
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

    .line 12046
    iput v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->char_:I

    .line 12047
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

    .line 12048
    return-object p0
.end method

.method public clearBool()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;
    .locals 1

    .prologue
    .line 12296
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

    .line 12297
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bool_:Z

    .line 12298
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->onChanged()V

    .line 12299
    return-object p0
.end method

.method public clearByte()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;
    .locals 1

    .prologue
    .line 12380
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

    .line 12381
    const/4 v0, 0x0

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->byte_:I

    .line 12382
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->onChanged()V

    .line 12383
    return-object p0
.end method

.method public clearChar()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;
    .locals 1

    .prologue
    .line 12443
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

    .line 12444
    const/4 v0, 0x0

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->char_:I

    .line 12445
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->onChanged()V

    .line 12446
    return-object p0
.end method

.method public clearDouble()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;
    .locals 2

    .prologue
    .line 12422
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

    .line 12423
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->double_:D

    .line 12424
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->onChanged()V

    .line 12425
    return-object p0
.end method

.method public clearFloat()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;
    .locals 1

    .prologue
    .line 12359
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

    .line 12360
    const/4 v0, 0x0

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->float_:F

    .line 12361
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->onChanged()V

    .line 12362
    return-object p0
.end method

.method public clearInt()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;
    .locals 1

    .prologue
    .line 12317
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

    .line 12318
    const/4 v0, 0x0

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->int_:I

    .line 12319
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->onChanged()V

    .line 12320
    return-object p0
.end method

.method public clearLong()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;
    .locals 2

    .prologue
    .line 12338
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

    .line 12339
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->long_:J

    .line 12340
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->onChanged()V

    .line 12341
    return-object p0
.end method

.method public clearShort()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;
    .locals 1

    .prologue
    .line 12401
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

    .line 12402
    const/4 v0, 0x0

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->short_:I

    .line 12403
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->onChanged()V

    .line 12404
    return-object p0
.end method

.method public clearType()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;
    .locals 1

    .prologue
    .line 12275
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

    .line 12276
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->BOOL:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    .line 12277
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->onChanged()V

    .line 12278
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->clone()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->clone()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->clone()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;
    .locals 2

    .prologue
    .line 12052
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->create()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBool()Z
    .locals 1

    .prologue
    .line 12287
    iget-boolean v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bool_:Z

    return v0
.end method

.method public getByte()I
    .locals 1

    .prologue
    .line 12371
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->byte_:I

    return v0
.end method

.method public getChar()I
    .locals 1

    .prologue
    .line 12434
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->char_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;
    .locals 1

    .prologue
    .line 12061
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 12057
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDouble()D
    .locals 2

    .prologue
    .line 12413
    iget-wide v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->double_:D

    return-wide v0
.end method

.method public getFloat()F
    .locals 1

    .prologue
    .line 12350
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->float_:F

    return v0
.end method

.method public getInt()I
    .locals 1

    .prologue
    .line 12308
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->int_:I

    return v0
.end method

.method public getLong()J
    .locals 2

    .prologue
    .line 12329
    iget-wide v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->long_:J

    return-wide v0
.end method

.method public getShort()I
    .locals 1

    .prologue
    .line 12392
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->short_:I

    return v0
.end method

.method public getType()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;
    .locals 1

    .prologue
    .line 12263
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    return-object v0
.end method

.method public hasBool()Z
    .locals 2

    .prologue
    .line 12284
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

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

.method public hasByte()Z
    .locals 2

    .prologue
    .line 12368
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

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

.method public hasChar()Z
    .locals 2

    .prologue
    .line 12431
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDouble()Z
    .locals 2

    .prologue
    .line 12410
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

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

.method public hasFloat()Z
    .locals 2

    .prologue
    .line 12347
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

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

.method public hasInt()Z
    .locals 2

    .prologue
    .line 12305
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

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

.method public hasLong()Z
    .locals 2

    .prologue
    .line 12326
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

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

.method public hasShort()Z
    .locals 2

    .prologue
    .line 12389
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

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

.method public hasType()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 12260
    iget v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

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
    .line 12008
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_Primitive_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$70()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 12170
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->hasType()Z

    move-result v0

    if-nez v0, :cond_0

    .line 12172
    const/4 v0, 0x0

    .line 12174
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
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
    invoke-virtual {p0, p1, p2}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;
    .locals 6
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12183
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    .line 12182
    invoke-static {v4}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 12185
    .local v2, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 12186
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 12192
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    .line 12193
    if-nez v4, :cond_0

    .line 12194
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 12195
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->onChanged()V

    .line 12196
    :goto_1
    return-object p0

    .line 12188
    :sswitch_0
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 12189
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->onChanged()V

    goto :goto_1

    .line 12201
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 12202
    .local v0, "rawValue":I
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->valueOf(I)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    move-result-object v3

    .line 12203
    .local v3, "value":Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;
    if-nez v3, :cond_1

    .line 12204
    const/4 v4, 0x1

    invoke-virtual {v2, v4, v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 12206
    :cond_1
    iget v4, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

    .line 12207
    iput-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    goto :goto_0

    .line 12212
    .end local v0    # "rawValue":I
    .end local v3    # "value":Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;
    :sswitch_2
    iget v4, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

    .line 12213
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bool_:Z

    goto :goto_0

    .line 12217
    :sswitch_3
    iget v4, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

    .line 12218
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->int_:I

    goto :goto_0

    .line 12222
    :sswitch_4
    iget v4, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

    .line 12223
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->long_:J

    goto :goto_0

    .line 12227
    :sswitch_5
    iget v4, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

    .line 12228
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v4

    iput v4, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->float_:F

    goto :goto_0

    .line 12232
    :sswitch_6
    iget v4, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

    .line 12233
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->byte_:I

    goto :goto_0

    .line 12237
    :sswitch_7
    iget v4, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x40

    iput v4, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

    .line 12238
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->short_:I

    goto/16 :goto_0

    .line 12242
    :sswitch_8
    iget v4, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x80

    iput v4, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

    .line 12243
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->double_:D

    goto/16 :goto_0

    .line 12247
    :sswitch_9
    iget v4, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x100

    iput v4, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

    .line 12248
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->char_:I

    goto/16 :goto_0

    .line 12186
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2d -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x41 -> :sswitch_8
        0x48 -> :sswitch_9
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 12128
    instance-of v0, p1, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    if-eqz v0, :cond_0

    .line 12129
    check-cast p1, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

    move-result-object p0

    .line 12132
    .end local p0    # "this":Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;
    :goto_0
    return-object p0

    .line 12131
    .restart local p0    # "this":Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;
    .locals 2
    .param p1, "other"    # Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    .prologue
    .line 12137
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 12166
    :goto_0
    return-object p0

    .line 12138
    :cond_0
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->hasType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12139
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->getType()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->setType(Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

    .line 12141
    :cond_1
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->hasBool()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12142
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->getBool()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->setBool(Z)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

    .line 12144
    :cond_2
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->hasInt()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12145
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->getInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->setInt(I)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

    .line 12147
    :cond_3
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->hasLong()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12148
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->getLong()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->setLong(J)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

    .line 12150
    :cond_4
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->hasFloat()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12151
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->getFloat()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->setFloat(F)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

    .line 12153
    :cond_5
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->hasByte()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 12154
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->getByte()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->setByte(I)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

    .line 12156
    :cond_6
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->hasShort()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 12157
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->getShort()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->setShort(I)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

    .line 12159
    :cond_7
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->hasDouble()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 12160
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->getDouble()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->setDouble(D)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

    .line 12162
    :cond_8
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->hasChar()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 12163
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->getChar()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->setChar(I)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

    .line 12165
    :cond_9
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public setBool(Z)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 12290
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

    .line 12291
    iput-boolean p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bool_:Z

    .line 12292
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->onChanged()V

    .line 12293
    return-object p0
.end method

.method public setByte(I)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 12374
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

    .line 12375
    iput p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->byte_:I

    .line 12376
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->onChanged()V

    .line 12377
    return-object p0
.end method

.method public setChar(I)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 12437
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

    .line 12438
    iput p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->char_:I

    .line 12439
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->onChanged()V

    .line 12440
    return-object p0
.end method

.method public setDouble(D)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 12416
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

    .line 12417
    iput-wide p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->double_:D

    .line 12418
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->onChanged()V

    .line 12419
    return-object p0
.end method

.method public setFloat(F)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 12353
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

    .line 12354
    iput p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->float_:F

    .line 12355
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->onChanged()V

    .line 12356
    return-object p0
.end method

.method public setInt(I)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 12311
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

    .line 12312
    iput p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->int_:I

    .line 12313
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->onChanged()V

    .line 12314
    return-object p0
.end method

.method public setLong(J)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 12332
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

    .line 12333
    iput-wide p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->long_:J

    .line 12334
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->onChanged()V

    .line 12335
    return-object p0
.end method

.method public setShort(I)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 12395
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

    .line 12396
    iput p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->short_:I

    .line 12397
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->onChanged()V

    .line 12398
    return-object p0
.end method

.method public setType(Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;
    .locals 1
    .param p1, "value"    # Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    .prologue
    .line 12266
    if-nez p1, :cond_0

    .line 12267
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12269
    :cond_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->bitField0_:I

    .line 12270
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    .line 12271
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->onChanged()V

    .line 12272
    return-object p0
.end method
