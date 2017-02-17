.class public final Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Protobuf.java"

# interfaces
.implements Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetPropertyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;",
        ">;",
        "Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetPropertyOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

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

.field private property_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 3089
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 3240
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    .line 3330
    const-string v0, ""

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->property_:Ljava/lang/Object;

    .line 3090
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->maybeForceBuilderInitialization()V

    .line 3091
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 3094
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 3240
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    .line 3330
    const-string v0, ""

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->property_:Ljava/lang/Object;

    .line 3095
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->maybeForceBuilderInitialization()V

    .line 3096
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;)V
    .locals 0

    .prologue
    .line 3093
    invoke-direct {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3140
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$18()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;
    .locals 1

    .prologue
    .line 3102
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->create()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3142
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

    move-result-object v0

    .line 3143
    .local v0, "result":Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;
    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3144
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    .line 3145
    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    .line 3144
    throw v1

    .line 3147
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;
    .locals 1

    .prologue
    .line 3103
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;

    invoke-direct {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3080
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_ReflectionRequest_GetProperty_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$20()Lcom/google/protobuf/Descriptors$Descriptor;

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
    .line 3318
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 3319
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 3321
    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    .line 3322
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    .line 3323
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    .line 3319
    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 3324
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    .line 3326
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 3098
    # getter for: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->access$7()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3099
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->getObjectFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 3101
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;
    .locals 2

    .prologue
    .line 3133
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

    move-result-object v0

    .line 3134
    .local v0, "result":Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;
    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3135
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 3137
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;
    .locals 5

    .prologue
    .line 3151
    new-instance v1, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;-><init>(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;)V

    .line 3152
    .local v1, "result":Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->bitField0_:I

    .line 3153
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 3154
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 3155
    or-int/lit8 v2, v2, 0x1

    .line 3157
    :cond_0
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v3, :cond_2

    .line 3158
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->access$9(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;)V

    .line 3162
    :goto_0
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 3163
    or-int/lit8 v2, v2, 0x2

    .line 3165
    :cond_1
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->property_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->access$10(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;Ljava/lang/Object;)V

    .line 3166
    invoke-static {v1, v2}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->access$11(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;I)V

    .line 3167
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->onBuilt()V

    .line 3168
    return-object v1

    .line 3160
    :cond_2
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v3

    check-cast v3, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->access$9(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;)V

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->clear()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->clear()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->clear()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;
    .locals 1

    .prologue
    .line 3107
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 3108
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 3109
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    .line 3113
    :goto_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->bitField0_:I

    .line 3114
    const-string v0, ""

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->property_:Ljava/lang/Object;

    .line 3115
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->bitField0_:I

    .line 3116
    return-object p0

    .line 3111
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearObject()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;
    .locals 1

    .prologue
    .line 3294
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 3295
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    .line 3296
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->onChanged()V

    .line 3300
    :goto_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->bitField0_:I

    .line 3301
    return-object p0

    .line 3298
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearProperty()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;
    .locals 1

    .prologue
    .line 3354
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->bitField0_:I

    .line 3355
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->getProperty()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->property_:Ljava/lang/Object;

    .line 3356
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->onChanged()V

    .line 3357
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->clone()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->clone()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->clone()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;
    .locals 2

    .prologue
    .line 3120
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->create()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;
    .locals 1

    .prologue
    .line 3129
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3125
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getObject()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;
    .locals 1

    .prologue
    .line 3247
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 3248
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    .line 3250
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    goto :goto_0
.end method

.method public getObjectBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;
    .locals 1

    .prologue
    .line 3304
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->bitField0_:I

    .line 3305
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->onChanged()V

    .line 3306
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->getObjectFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;

    return-object v0
.end method

.method public getObjectOrBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReferenceOrBuilder;
    .locals 1

    .prologue
    .line 3309
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 3310
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReferenceOrBuilder;

    .line 3312
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    goto :goto_0
.end method

.method public getProperty()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3335
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->property_:Ljava/lang/Object;

    .line 3336
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 3337
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3338
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->property_:Ljava/lang/Object;

    .line 3341
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

.method public hasObject()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3244
    iget v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->bitField0_:I

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
    .line 3332
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->bitField0_:I

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
    .line 3085
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_ReflectionRequest_GetProperty_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$59()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 3193
    const/4 v0, 0x1

    return v0
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
    invoke-virtual {p0, p1, p2}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3202
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    .line 3201
    invoke-static {v3}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 3204
    .local v2, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 3205
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 3211
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    .line 3212
    if-nez v3, :cond_0

    .line 3213
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 3214
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->onChanged()V

    .line 3215
    :goto_1
    return-object p0

    .line 3207
    :sswitch_0
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 3208
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->onChanged()V

    goto :goto_1

    .line 3220
    :sswitch_1
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;

    move-result-object v0

    .line 3221
    .local v0, "subBuilder":Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->hasObject()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3222
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->getObject()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;)Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;

    .line 3224
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3225
    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->setObject(Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;

    goto :goto_0

    .line 3229
    .end local v0    # "subBuilder":Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;
    :sswitch_2
    iget v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->bitField0_:I

    .line 3230
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->property_:Ljava/lang/Object;

    goto :goto_0

    .line 3205
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 3172
    instance-of v0, p1, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

    if-eqz v0, :cond_0

    .line 3173
    check-cast p1, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;

    move-result-object p0

    .line 3176
    .end local p0    # "this":Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;
    :goto_0
    return-object p0

    .line 3175
    .restart local p0    # "this":Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;
    .locals 1
    .param p1, "other"    # Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

    .prologue
    .line 3181
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 3189
    :goto_0
    return-object p0

    .line 3182
    :cond_0
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->hasObject()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3183
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->getObject()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->mergeObject(Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;

    .line 3185
    :cond_1
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->hasProperty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3186
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->getProperty()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->setProperty(Ljava/lang/String;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;

    .line 3188
    :cond_2
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeObject(Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;
    .locals 2
    .param p1, "value"    # Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    .prologue
    .line 3278
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 3279
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3280
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3282
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;->newBuilder(Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;)Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;)Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    move-result-object v0

    .line 3281
    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    .line 3286
    :goto_0
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->onChanged()V

    .line 3290
    :goto_1
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->bitField0_:I

    .line 3291
    return-object p0

    .line 3284
    :cond_0
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    goto :goto_0

    .line 3288
    :cond_1
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public setObject(Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;

    .prologue
    .line 3268
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 3269
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    .line 3270
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->onChanged()V

    .line 3274
    :goto_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->bitField0_:I

    .line 3275
    return-object p0

    .line 3272
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setObject(Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;
    .locals 1
    .param p1, "value"    # Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    .prologue
    .line 3254
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 3255
    if-nez p1, :cond_0

    .line 3256
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3258
    :cond_0
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    .line 3259
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->onChanged()V

    .line 3263
    :goto_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->bitField0_:I

    .line 3264
    return-object p0

    .line 3261
    :cond_1
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setProperty(Ljava/lang/String;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3345
    if-nez p1, :cond_0

    .line 3346
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3348
    :cond_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->bitField0_:I

    .line 3349
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->property_:Ljava/lang/Object;

    .line 3350
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->onChanged()V

    .line 3351
    return-object p0
.end method

.method setProperty(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 3360
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->bitField0_:I

    .line 3361
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->property_:Ljava/lang/Object;

    .line 3362
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->onChanged()V

    .line 3363
    return-void
.end method
