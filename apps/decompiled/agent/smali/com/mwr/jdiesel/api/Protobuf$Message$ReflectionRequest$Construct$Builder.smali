.class public final Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Protobuf.java"

# interfaces
.implements Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$ConstructOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;",
        ">;",
        "Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$ConstructOrBuilder;"
    }
.end annotation


# instance fields
.field private argumentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$ArgumentOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private argument_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;",
            ">;"
        }
    .end annotation
.end field

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


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 905
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 1096
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    .line 1187
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->argument_:Ljava/util/List;

    .line 906
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->maybeForceBuilderInitialization()V

    .line 907
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 910
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 1096
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    .line 1187
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->argument_:Ljava/util/List;

    .line 911
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->maybeForceBuilderInitialization()V

    .line 912
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;)V
    .locals 0

    .prologue
    .line 909
    invoke-direct {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 961
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$18()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;
    .locals 1

    .prologue
    .line 919
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->create()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 963
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

    move-result-object v0

    .line 964
    .local v0, "result":Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;
    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 965
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    .line 966
    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    .line 965
    throw v1

    .line 968
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;
    .locals 1

    .prologue
    .line 920
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;

    invoke-direct {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;-><init>()V

    return-object v0
.end method

.method private ensureArgumentIsMutable()V
    .locals 2

    .prologue
    .line 1189
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1190
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->argument_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->argument_:Ljava/util/List;

    .line 1191
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->bitField0_:I

    .line 1193
    :cond_0
    return-void
.end method

.method private getArgumentFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$ArgumentOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1359
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->argumentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1360
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1362
    iget-object v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->argument_:Ljava/util/List;

    .line 1363
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    .line 1364
    :goto_0
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    .line 1365
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    .line 1360
    iput-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->argumentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1366
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->argument_:Ljava/util/List;

    .line 1368
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->argumentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 1363
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 896
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_ReflectionRequest_Construct_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$11()Lcom/google/protobuf/Descriptors$Descriptor;

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
    .line 1174
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1175
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 1177
    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    .line 1178
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    .line 1179
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    .line 1175
    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 1180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    .line 1182
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 914
    # getter for: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->access$7()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 915
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->getObjectFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 916
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->getArgumentFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 918
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllArgument(Ljava/lang/Iterable;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;",
            ">;)",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;"
        }
    .end annotation

    .prologue
    .line 1295
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;>;"
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->argumentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1296
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->ensureArgumentIsMutable()V

    .line 1297
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->argument_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1298
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->onChanged()V

    .line 1302
    :goto_0
    return-object p0

    .line 1300
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->argumentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addArgument(ILcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    .prologue
    .line 1284
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->argumentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1285
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->ensureArgumentIsMutable()V

    .line 1286
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->argument_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1287
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->onChanged()V

    .line 1291
    :goto_0
    return-object p0

    .line 1289
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->argumentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addArgument(ILcom/mwr/jdiesel/api/Protobuf$Message$Argument;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    .prologue
    .line 1259
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->argumentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1260
    if-nez p2, :cond_0

    .line 1261
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1263
    :cond_0
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->ensureArgumentIsMutable()V

    .line 1264
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->argument_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1265
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->onChanged()V

    .line 1269
    :goto_0
    return-object p0

    .line 1267
    :cond_1
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->argumentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addArgument(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->argumentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1274
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->ensureArgumentIsMutable()V

    .line 1275
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->argument_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1276
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->onChanged()V

    .line 1280
    :goto_0
    return-object p0

    .line 1278
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->argumentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addArgument(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;
    .locals 1
    .param p1, "value"    # Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    .prologue
    .line 1245
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->argumentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1246
    if-nez p1, :cond_0

    .line 1247
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1249
    :cond_0
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->ensureArgumentIsMutable()V

    .line 1250
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->argument_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1251
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->onChanged()V

    .line 1255
    :goto_0
    return-object p0

    .line 1253
    :cond_1
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->argumentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addArgumentBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;
    .locals 2

    .prologue
    .line 1344
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->getArgumentFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    .line 1345
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v1

    .line 1344
    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    return-object v0
.end method

.method public addArgumentBuilder(I)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1349
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->getArgumentFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    .line 1350
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v1

    .line 1349
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;
    .locals 2

    .prologue
    .line 954
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

    move-result-object v0

    .line 955
    .local v0, "result":Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;
    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 956
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 958
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;
    .locals 5

    .prologue
    .line 972
    new-instance v1, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;-><init>(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;)V

    .line 973
    .local v1, "result":Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->bitField0_:I

    .line 974
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 975
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 976
    or-int/lit8 v2, v2, 0x1

    .line 978
    :cond_0
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v3, :cond_2

    .line 979
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->access$9(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;)V

    .line 983
    :goto_0
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->argumentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_3

    .line 984
    iget v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 985
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->argument_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->argument_:Ljava/util/List;

    .line 986
    iget v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->bitField0_:I

    .line 988
    :cond_1
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->argument_:Ljava/util/List;

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->access$10(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;Ljava/util/List;)V

    .line 992
    :goto_1
    invoke-static {v1, v2}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->access$11(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;I)V

    .line 993
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->onBuilt()V

    .line 994
    return-object v1

    .line 981
    :cond_2
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v3

    check-cast v3, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->access$9(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;)V

    goto :goto_0

    .line 990
    :cond_3
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->argumentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->access$10(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;Ljava/util/List;)V

    goto :goto_1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->clear()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->clear()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->clear()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;
    .locals 1

    .prologue
    .line 924
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 925
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 926
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    .line 930
    :goto_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->bitField0_:I

    .line 931
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->argumentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 932
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->argument_:Ljava/util/List;

    .line 933
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->bitField0_:I

    .line 937
    :goto_1
    return-object p0

    .line 928
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0

    .line 935
    :cond_1
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->argumentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_1
.end method

.method public clearArgument()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;
    .locals 1

    .prologue
    .line 1305
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->argumentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1306
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->argument_:Ljava/util/List;

    .line 1307
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->bitField0_:I

    .line 1308
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->onChanged()V

    .line 1312
    :goto_0
    return-object p0

    .line 1310
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->argumentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearObject()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;
    .locals 1

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1151
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    .line 1152
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->onChanged()V

    .line 1156
    :goto_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->bitField0_:I

    .line 1157
    return-object p0

    .line 1154
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->clone()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->clone()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->clone()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;
    .locals 2

    .prologue
    .line 941
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->create()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getArgument(I)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1213
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->argumentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1214
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->argument_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    .line 1216
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->argumentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    goto :goto_0
.end method

.method public getArgumentBuilder(I)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1326
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->getArgumentFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    return-object v0
.end method

.method public getArgumentBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1354
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->getArgumentFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getArgumentCount()I
    .locals 1

    .prologue
    .line 1206
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->argumentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1207
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->argument_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1209
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->argumentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getArgumentList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->argumentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1200
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->argument_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1202
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->argumentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getArgumentOrBuilder(I)Lcom/mwr/jdiesel/api/Protobuf$Message$ArgumentOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1330
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->argumentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1331
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->argument_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ArgumentOrBuilder;

    .line 1332
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->argumentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ArgumentOrBuilder;

    goto :goto_0
.end method

.method public getArgumentOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$ArgumentOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1337
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->argumentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 1338
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->argumentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 1340
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->argument_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;
    .locals 1

    .prologue
    .line 950
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 946
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getObject()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;
    .locals 1

    .prologue
    .line 1103
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1104
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    .line 1106
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    goto :goto_0
.end method

.method public getObjectBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;
    .locals 1

    .prologue
    .line 1160
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->bitField0_:I

    .line 1161
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->onChanged()V

    .line 1162
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->getObjectFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;

    return-object v0
.end method

.method public getObjectOrBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReferenceOrBuilder;
    .locals 1

    .prologue
    .line 1165
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 1166
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReferenceOrBuilder;

    .line 1168
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    goto :goto_0
.end method

.method public hasObject()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1100
    iget v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->bitField0_:I

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
    .line 901
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_ReflectionRequest_Construct_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$56()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    .line 1042
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->getArgumentCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 1048
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 1043
    :cond_0
    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->getArgument(I)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1045
    const/4 v1, 0x0

    goto :goto_1

    .line 1042
    :cond_1
    add-int/lit8 v0, v0, 0x1

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
    invoke-virtual {p0, p1, p2}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1057
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    .line 1056
    invoke-static {v3}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 1059
    .local v2, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 1060
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 1066
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    .line 1067
    if-nez v3, :cond_0

    .line 1068
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1069
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->onChanged()V

    .line 1070
    :goto_1
    return-object p0

    .line 1062
    :sswitch_0
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1063
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->onChanged()V

    goto :goto_1

    .line 1075
    :sswitch_1
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;

    move-result-object v0

    .line 1076
    .local v0, "subBuilder":Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->hasObject()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1077
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->getObject()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;)Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;

    .line 1079
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1080
    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->setObject(Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;

    goto :goto_0

    .line 1084
    .end local v0    # "subBuilder":Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;
    :sswitch_2
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    move-result-object v0

    .line 1085
    .local v0, "subBuilder":Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1086
    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->addArgument(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;

    goto :goto_0

    .line 1060
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 998
    instance-of v0, p1, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

    if-eqz v0, :cond_0

    .line 999
    check-cast p1, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;

    move-result-object p0

    .line 1002
    .end local p0    # "this":Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;
    :goto_0
    return-object p0

    .line 1001
    .restart local p0    # "this":Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;
    .locals 2
    .param p1, "other"    # Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

    .prologue
    const/4 v0, 0x0

    .line 1007
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 1038
    :goto_0
    return-object p0

    .line 1008
    :cond_0
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->hasObject()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1009
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->getObject()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->mergeObject(Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;

    .line 1011
    :cond_1
    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->argumentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_4

    .line 1012
    # getter for: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->argument_:Ljava/util/List;
    invoke-static {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->access$12(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1013
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->argument_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1014
    # getter for: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->argument_:Ljava/util/List;
    invoke-static {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->access$12(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->argument_:Ljava/util/List;

    .line 1015
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->bitField0_:I

    .line 1020
    :goto_1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->onChanged()V

    .line 1037
    :cond_2
    :goto_2
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0

    .line 1017
    :cond_3
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->ensureArgumentIsMutable()V

    .line 1018
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->argument_:Ljava/util/List;

    # getter for: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->argument_:Ljava/util/List;
    invoke-static {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->access$12(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1023
    :cond_4
    # getter for: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->argument_:Ljava/util/List;
    invoke-static {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->access$12(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1024
    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->argumentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1025
    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->argumentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 1026
    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->argumentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1027
    # getter for: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->argument_:Ljava/util/List;
    invoke-static {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->access$12(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->argument_:Ljava/util/List;

    .line 1028
    iget v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->bitField0_:I

    .line 1030
    # getter for: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->access$7()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1031
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->getArgumentFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    .line 1029
    :cond_5
    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->argumentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2

    .line 1033
    :cond_6
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->argumentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    # getter for: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->argument_:Ljava/util/List;
    invoke-static {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->access$12(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2
.end method

.method public mergeObject(Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;
    .locals 2
    .param p1, "value"    # Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 1135
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1136
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1138
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;->newBuilder(Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;)Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;)Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    move-result-object v0

    .line 1137
    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    .line 1142
    :goto_0
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->onChanged()V

    .line 1146
    :goto_1
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->bitField0_:I

    .line 1147
    return-object p0

    .line 1140
    :cond_0
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    goto :goto_0

    .line 1144
    :cond_1
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public removeArgument(I)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1315
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->argumentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1316
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->ensureArgumentIsMutable()V

    .line 1317
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->argument_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1318
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->onChanged()V

    .line 1322
    :goto_0
    return-object p0

    .line 1320
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->argumentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setArgument(ILcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    .prologue
    .line 1235
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->argumentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1236
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->ensureArgumentIsMutable()V

    .line 1237
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->argument_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1238
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->onChanged()V

    .line 1242
    :goto_0
    return-object p0

    .line 1240
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->argumentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setArgument(ILcom/mwr/jdiesel/api/Protobuf$Message$Argument;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    .prologue
    .line 1221
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->argumentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1222
    if-nez p2, :cond_0

    .line 1223
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1225
    :cond_0
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->ensureArgumentIsMutable()V

    .line 1226
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->argument_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1227
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->onChanged()V

    .line 1231
    :goto_0
    return-object p0

    .line 1229
    :cond_1
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->argumentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setObject(Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;

    .prologue
    .line 1124
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1125
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    .line 1126
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->onChanged()V

    .line 1130
    :goto_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->bitField0_:I

    .line 1131
    return-object p0

    .line 1128
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setObject(Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;
    .locals 1
    .param p1, "value"    # Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    .prologue
    .line 1110
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 1111
    if-nez p1, :cond_0

    .line 1112
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1114
    :cond_0
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->object_:Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    .line 1115
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->onChanged()V

    .line 1119
    :goto_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->bitField0_:I

    .line 1120
    return-object p0

    .line 1117
    :cond_1
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->objectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method
