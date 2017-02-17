.class public Lcom/mwr/jdiesel/api/handlers/ReflectionMessageHandler;
.super Ljava/lang/Object;
.source "ReflectionMessageHandler.java"

# interfaces
.implements Lcom/mwr/jdiesel/api/handlers/MessageHandler;


# static fields
.field private static synthetic $SWITCH_TABLE$com$mwr$jdiesel$api$Protobuf$Message$ReflectionRequest$RequestType:[I


# instance fields
.field private session:Lcom/mwr/jdiesel/api/sessions/Session;


# direct methods
.method static synthetic $SWITCH_TABLE$com$mwr$jdiesel$api$Protobuf$Message$ReflectionRequest$RequestType()[I
    .locals 3

    .prologue
    .line 14
    sget-object v0, Lcom/mwr/jdiesel/api/handlers/ReflectionMessageHandler;->$SWITCH_TABLE$com$mwr$jdiesel$api$Protobuf$Message$ReflectionRequest$RequestType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;->values()[Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;->CONSTRUCT:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_1
    :try_start_1
    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;->DELETE:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_2
    :try_start_2
    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;->DELETE_ALL:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_3
    :try_start_3
    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;->GET_PROPERTY:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    :try_start_4
    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;->INVOKE:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_5
    :try_start_5
    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;->RESOLVE:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_6
    :try_start_6
    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;->SET_PROPERTY:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_7
    sput-object v0, Lcom/mwr/jdiesel/api/handlers/ReflectionMessageHandler;->$SWITCH_TABLE$com$mwr$jdiesel$api$Protobuf$Message$ReflectionRequest$RequestType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Lcom/mwr/jdiesel/api/sessions/Session;)V
    .locals 1
    .param p1, "session"    # Lcom/mwr/jdiesel/api/sessions/Session;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/handlers/ReflectionMessageHandler;->session:Lcom/mwr/jdiesel/api/sessions/Session;

    .line 19
    iput-object p1, p0, Lcom/mwr/jdiesel/api/handlers/ReflectionMessageHandler;->session:Lcom/mwr/jdiesel/api/sessions/Session;

    .line 20
    return-void
.end method

.method private createResponse(Lcom/mwr/jdiesel/api/Protobuf$Message;Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;)Lcom/mwr/jdiesel/api/Protobuf$Message;
    .locals 2
    .param p1, "request"    # Lcom/mwr/jdiesel/api/Protobuf$Message;
    .param p2, "response_factory"    # Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;

    .prologue
    .line 23
    new-instance v0, Lcom/mwr/jdiesel/api/builders/MessageFactory;

    iget-object v1, p0, Lcom/mwr/jdiesel/api/handlers/ReflectionMessageHandler;->session:Lcom/mwr/jdiesel/api/sessions/Session;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/sessions/Session;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->setSessionId(Ljava/lang/String;)Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mwr/jdiesel/api/builders/MessageFactory;-><init>(Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;)V

    invoke-virtual {v0, p1}, Lcom/mwr/jdiesel/api/builders/MessageFactory;->inReplyTo(Lcom/mwr/jdiesel/api/Protobuf$Message;)Lcom/mwr/jdiesel/api/builders/MessageFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/builders/MessageFactory;->build()Lcom/mwr/jdiesel/api/Protobuf$Message;

    move-result-object v0

    return-object v0
.end method

.method private parseArguments(Ljava/util/List;)[Lcom/mwr/jdiesel/reflection/types/ReflectedType;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;",
            ">;)[",
            "Lcom/mwr/jdiesel/reflection/types/ReflectedType;"
        }
    .end annotation

    .prologue
    .line 224
    .local p1, "arguments":Ljava/util/List;, "Ljava/util/List<Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [Lcom/mwr/jdiesel/reflection/types/ReflectedType;

    .line 226
    .local v1, "resolved":[Lcom/mwr/jdiesel/reflection/types/ReflectedType;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 229
    return-object v1

    .line 227
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    iget-object v3, p0, Lcom/mwr/jdiesel/api/handlers/ReflectionMessageHandler;->session:Lcom/mwr/jdiesel/api/sessions/Session;

    iget-object v3, v3, Lcom/mwr/jdiesel/api/sessions/Session;->object_store:Lcom/mwr/jdiesel/reflection/ObjectStore;

    invoke-static {v2, v3}, Lcom/mwr/jdiesel/reflection/types/ReflectedType;->fromArgument(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;Lcom/mwr/jdiesel/reflection/ObjectStore;)Lcom/mwr/jdiesel/reflection/types/ReflectedType;

    move-result-object v2

    aput-object v2, v1, v0

    .line 226
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private shouldPutInStore(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 233
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 234
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    if-eq v0, v1, :cond_1

    .line 235
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 236
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_2

    .line 233
    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public handle(Lcom/mwr/jdiesel/api/Protobuf$Message;)Lcom/mwr/jdiesel/api/Protobuf$Message;
    .locals 3
    .param p1, "message"    # Lcom/mwr/jdiesel/api/Protobuf$Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mwr/jdiesel/api/InvalidMessageException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message;->getType()Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;

    move-result-object v1

    sget-object v2, Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;->REFLECTION_REQUEST:Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;

    if-eq v1, v2, :cond_0

    .line 29
    new-instance v1, Lcom/mwr/jdiesel/api/InvalidMessageException;

    invoke-direct {v1, p1}, Lcom/mwr/jdiesel/api/InvalidMessageException;-><init>(Lcom/mwr/jdiesel/api/Protobuf$Message;)V

    throw v1

    .line 30
    :cond_0
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message;->hasReflectionRequest()Z

    move-result v1

    if-nez v1, :cond_1

    .line 31
    new-instance v1, Lcom/mwr/jdiesel/api/InvalidMessageException;

    invoke-direct {v1, p1}, Lcom/mwr/jdiesel/api/InvalidMessageException;-><init>(Lcom/mwr/jdiesel/api/Protobuf$Message;)V

    throw v1

    .line 34
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/mwr/jdiesel/api/handlers/ReflectionMessageHandler;->$SWITCH_TABLE$com$mwr$jdiesel$api$Protobuf$Message$ReflectionRequest$RequestType()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message;->getReflectionRequest()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->getType()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 75
    new-instance v1, Lcom/mwr/jdiesel/api/InvalidMessageException;

    invoke-direct {v1, p1}, Lcom/mwr/jdiesel/api/InvalidMessageException;-><init>(Lcom/mwr/jdiesel/api/Protobuf$Message;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 80
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/mwr/jdiesel/api/handlers/ReflectionMessageHandler;->handleError(Lcom/mwr/jdiesel/api/Protobuf$Message;Ljava/lang/String;)Lcom/mwr/jdiesel/api/Protobuf$Message;

    move-result-object v1

    .line 84
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v1

    .line 36
    :pswitch_0
    :try_start_1
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message;->getReflectionRequest()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->hasConstruct()Z

    move-result v1

    if-nez v1, :cond_2

    .line 37
    new-instance v1, Lcom/mwr/jdiesel/api/InvalidMessageException;

    invoke-direct {v1, p1}, Lcom/mwr/jdiesel/api/InvalidMessageException;-><init>(Lcom/mwr/jdiesel/api/Protobuf$Message;)V

    throw v1

    .line 39
    :cond_2
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/handlers/ReflectionMessageHandler;->handleConstruct(Lcom/mwr/jdiesel/api/Protobuf$Message;)Lcom/mwr/jdiesel/api/Protobuf$Message;

    move-result-object v1

    goto :goto_0

    .line 42
    :pswitch_1
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message;->getReflectionRequest()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->hasDelete()Z

    move-result v1

    if-nez v1, :cond_3

    .line 43
    new-instance v1, Lcom/mwr/jdiesel/api/InvalidMessageException;

    invoke-direct {v1, p1}, Lcom/mwr/jdiesel/api/InvalidMessageException;-><init>(Lcom/mwr/jdiesel/api/Protobuf$Message;)V

    throw v1

    .line 45
    :cond_3
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/handlers/ReflectionMessageHandler;->handleDelete(Lcom/mwr/jdiesel/api/Protobuf$Message;)Lcom/mwr/jdiesel/api/Protobuf$Message;

    move-result-object v1

    goto :goto_0

    .line 48
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/handlers/ReflectionMessageHandler;->handleDeleteAll(Lcom/mwr/jdiesel/api/Protobuf$Message;)Lcom/mwr/jdiesel/api/Protobuf$Message;

    move-result-object v1

    goto :goto_0

    .line 51
    :pswitch_3
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message;->getReflectionRequest()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->hasGetProperty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 52
    new-instance v1, Lcom/mwr/jdiesel/api/InvalidMessageException;

    invoke-direct {v1, p1}, Lcom/mwr/jdiesel/api/InvalidMessageException;-><init>(Lcom/mwr/jdiesel/api/Protobuf$Message;)V

    throw v1

    .line 54
    :cond_4
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/handlers/ReflectionMessageHandler;->handleGetProperty(Lcom/mwr/jdiesel/api/Protobuf$Message;)Lcom/mwr/jdiesel/api/Protobuf$Message;

    move-result-object v1

    goto :goto_0

    .line 57
    :pswitch_4
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message;->getReflectionRequest()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->hasInvoke()Z

    move-result v1

    if-nez v1, :cond_5

    .line 58
    new-instance v1, Lcom/mwr/jdiesel/api/InvalidMessageException;

    invoke-direct {v1, p1}, Lcom/mwr/jdiesel/api/InvalidMessageException;-><init>(Lcom/mwr/jdiesel/api/Protobuf$Message;)V

    throw v1

    .line 60
    :cond_5
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/handlers/ReflectionMessageHandler;->handleInvoke(Lcom/mwr/jdiesel/api/Protobuf$Message;)Lcom/mwr/jdiesel/api/Protobuf$Message;

    move-result-object v1

    goto :goto_0

    .line 63
    :pswitch_5
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message;->getReflectionRequest()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->hasResolve()Z

    move-result v1

    if-nez v1, :cond_6

    .line 64
    new-instance v1, Lcom/mwr/jdiesel/api/InvalidMessageException;

    invoke-direct {v1, p1}, Lcom/mwr/jdiesel/api/InvalidMessageException;-><init>(Lcom/mwr/jdiesel/api/Protobuf$Message;)V

    throw v1

    .line 66
    :cond_6
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/handlers/ReflectionMessageHandler;->handleResolve(Lcom/mwr/jdiesel/api/Protobuf$Message;)Lcom/mwr/jdiesel/api/Protobuf$Message;

    move-result-object v1

    goto :goto_0

    .line 69
    :pswitch_6
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message;->getReflectionRequest()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->hasSetProperty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 70
    new-instance v1, Lcom/mwr/jdiesel/api/InvalidMessageException;

    invoke-direct {v1, p1}, Lcom/mwr/jdiesel/api/InvalidMessageException;-><init>(Lcom/mwr/jdiesel/api/Protobuf$Message;)V

    throw v1

    .line 72
    :cond_7
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/handlers/ReflectionMessageHandler;->handleSetProperty(Lcom/mwr/jdiesel/api/Protobuf$Message;)Lcom/mwr/jdiesel/api/Protobuf$Message;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto/16 :goto_0

    .line 81
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 82
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/mwr/jdiesel/api/handlers/ReflectionMessageHandler;->handleError(Lcom/mwr/jdiesel/api/Protobuf$Message;Ljava/lang/String;)Lcom/mwr/jdiesel/api/Protobuf$Message;

    move-result-object v1

    goto/16 :goto_0

    .line 84
    :cond_9
    const-string v1, "Unknown Exception"

    invoke-virtual {p0, p1, v1}, Lcom/mwr/jdiesel/api/handlers/ReflectionMessageHandler;->handleError(Lcom/mwr/jdiesel/api/Protobuf$Message;Ljava/lang/String;)Lcom/mwr/jdiesel/api/Protobuf$Message;

    move-result-object v1

    goto/16 :goto_0

    .line 34
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected handleConstruct(Lcom/mwr/jdiesel/api/Protobuf$Message;)Lcom/mwr/jdiesel/api/Protobuf$Message;
    .locals 7
    .param p1, "message"    # Lcom/mwr/jdiesel/api/Protobuf$Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mwr/jdiesel/api/InvalidMessageException;
        }
    .end annotation

    .prologue
    .line 89
    iget-object v5, p0, Lcom/mwr/jdiesel/api/handlers/ReflectionMessageHandler;->session:Lcom/mwr/jdiesel/api/sessions/Session;

    iget-object v5, v5, Lcom/mwr/jdiesel/api/sessions/Session;->object_store:Lcom/mwr/jdiesel/reflection/ObjectStore;

    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message;->getReflectionRequest()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->getConstruct()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->getObject()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;->getReference()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/mwr/jdiesel/reflection/ObjectStore;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 91
    .local v2, "klass":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 92
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message;->getReflectionRequest()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->getConstruct()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->getArgumentList()Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mwr/jdiesel/api/handlers/ReflectionMessageHandler;->parseArguments(Ljava/util/List;)[Lcom/mwr/jdiesel/reflection/types/ReflectedType;

    move-result-object v0

    .line 95
    .local v0, "arguments":[Lcom/mwr/jdiesel/reflection/types/ReflectedType;
    :try_start_0
    check-cast v2, Ljava/lang/Class;

    .end local v2    # "klass":Ljava/lang/Object;
    invoke-static {v2, v0}, Lcom/mwr/jdiesel/reflection/Reflector;->construct(Ljava/lang/Class;[Lcom/mwr/jdiesel/reflection/types/ReflectedType;)Ljava/lang/Object;

    move-result-object v3

    .line 96
    .local v3, "object":Ljava/lang/Object;
    iget-object v5, p0, Lcom/mwr/jdiesel/api/handlers/ReflectionMessageHandler;->session:Lcom/mwr/jdiesel/api/sessions/Session;

    iget-object v5, v5, Lcom/mwr/jdiesel/api/sessions/Session;->object_store:Lcom/mwr/jdiesel/reflection/ObjectStore;

    invoke-virtual {v5, v3}, Lcom/mwr/jdiesel/reflection/ObjectStore;->put(Ljava/lang/Object;)I

    move-result v4

    .line 98
    .local v4, "ref":I
    invoke-static {v4}, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->object(I)Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lcom/mwr/jdiesel/api/handlers/ReflectionMessageHandler;->createResponse(Lcom/mwr/jdiesel/api/Protobuf$Message;Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;)Lcom/mwr/jdiesel/api/Protobuf$Message;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 105
    .end local v0    # "arguments":[Lcom/mwr/jdiesel/reflection/types/ReflectedType;
    .end local v3    # "object":Ljava/lang/Object;
    .end local v4    # "ref":I
    :goto_0
    return-object v5

    .line 100
    .restart local v0    # "arguments":[Lcom/mwr/jdiesel/reflection/types/ReflectedType;
    :catch_0
    move-exception v1

    .line 101
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0, p1, v1}, Lcom/mwr/jdiesel/api/handlers/ReflectionMessageHandler;->handleError(Lcom/mwr/jdiesel/api/Protobuf$Message;Ljava/lang/Throwable;)Lcom/mwr/jdiesel/api/Protobuf$Message;

    move-result-object v5

    goto :goto_0

    .line 105
    .end local v0    # "arguments":[Lcom/mwr/jdiesel/reflection/types/ReflectedType;
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "klass":Ljava/lang/Object;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "cannot find object "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message;->getReflectionRequest()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->getConstruct()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->getObject()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;->getReference()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1, v5}, Lcom/mwr/jdiesel/api/handlers/ReflectionMessageHandler;->handleError(Lcom/mwr/jdiesel/api/Protobuf$Message;Ljava/lang/String;)Lcom/mwr/jdiesel/api/Protobuf$Message;

    move-result-object v5

    goto :goto_0
.end method

.method protected handleDelete(Lcom/mwr/jdiesel/api/Protobuf$Message;)Lcom/mwr/jdiesel/api/Protobuf$Message;
    .locals 3
    .param p1, "message"    # Lcom/mwr/jdiesel/api/Protobuf$Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mwr/jdiesel/api/InvalidMessageException;
        }
    .end annotation

    .prologue
    .line 110
    iget-object v1, p0, Lcom/mwr/jdiesel/api/handlers/ReflectionMessageHandler;->session:Lcom/mwr/jdiesel/api/sessions/Session;

    iget-object v1, v1, Lcom/mwr/jdiesel/api/sessions/Session;->object_store:Lcom/mwr/jdiesel/reflection/ObjectStore;

    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message;->getReflectionRequest()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->getDelete()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;->getObject()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;->getReference()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mwr/jdiesel/reflection/ObjectStore;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 112
    .local v0, "object":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 113
    iget-object v1, p0, Lcom/mwr/jdiesel/api/handlers/ReflectionMessageHandler;->session:Lcom/mwr/jdiesel/api/sessions/Session;

    iget-object v1, v1, Lcom/mwr/jdiesel/api/sessions/Session;->object_store:Lcom/mwr/jdiesel/reflection/ObjectStore;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mwr/jdiesel/reflection/ObjectStore;->remove(I)V

    .line 115
    invoke-static {}, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->success()Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/mwr/jdiesel/api/handlers/ReflectionMessageHandler;->createResponse(Lcom/mwr/jdiesel/api/Protobuf$Message;Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;)Lcom/mwr/jdiesel/api/Protobuf$Message;

    move-result-object v1

    .line 118
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cannot find object "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message;->getReflectionRequest()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->getDelete()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;->getObject()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;->getReference()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/mwr/jdiesel/api/handlers/ReflectionMessageHandler;->handleError(Lcom/mwr/jdiesel/api/Protobuf$Message;Ljava/lang/String;)Lcom/mwr/jdiesel/api/Protobuf$Message;

    move-result-object v1

    goto :goto_0
.end method

.method protected handleDeleteAll(Lcom/mwr/jdiesel/api/Protobuf$Message;)Lcom/mwr/jdiesel/api/Protobuf$Message;
    .locals 1
    .param p1, "message"    # Lcom/mwr/jdiesel/api/Protobuf$Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mwr/jdiesel/api/InvalidMessageException;
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcom/mwr/jdiesel/api/handlers/ReflectionMessageHandler;->session:Lcom/mwr/jdiesel/api/sessions/Session;

    iget-object v0, v0, Lcom/mwr/jdiesel/api/sessions/Session;->object_store:Lcom/mwr/jdiesel/reflection/ObjectStore;

    invoke-virtual {v0}, Lcom/mwr/jdiesel/reflection/ObjectStore;->clear()V

    .line 125
    invoke-static {}, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->success()Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/mwr/jdiesel/api/handlers/ReflectionMessageHandler;->createResponse(Lcom/mwr/jdiesel/api/Protobuf$Message;Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;)Lcom/mwr/jdiesel/api/Protobuf$Message;

    move-result-object v0

    return-object v0
.end method

.method protected handleError(Lcom/mwr/jdiesel/api/Protobuf$Message;Ljava/lang/String;)Lcom/mwr/jdiesel/api/Protobuf$Message;
    .locals 1
    .param p1, "request"    # Lcom/mwr/jdiesel/api/Protobuf$Message;
    .param p2, "error_message"    # Ljava/lang/String;

    .prologue
    .line 161
    invoke-static {p2}, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->error(Ljava/lang/String;)Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/mwr/jdiesel/api/handlers/ReflectionMessageHandler;->createResponse(Lcom/mwr/jdiesel/api/Protobuf$Message;Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;)Lcom/mwr/jdiesel/api/Protobuf$Message;

    move-result-object v0

    return-object v0
.end method

.method protected handleError(Lcom/mwr/jdiesel/api/Protobuf$Message;Ljava/lang/Throwable;)Lcom/mwr/jdiesel/api/Protobuf$Message;
    .locals 1
    .param p1, "request"    # Lcom/mwr/jdiesel/api/Protobuf$Message;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 154
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mwr/jdiesel/api/handlers/ReflectionMessageHandler;->handleError(Lcom/mwr/jdiesel/api/Protobuf$Message;Ljava/lang/String;)Lcom/mwr/jdiesel/api/Protobuf$Message;

    move-result-object v0

    .line 157
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mwr/jdiesel/api/handlers/ReflectionMessageHandler;->handleError(Lcom/mwr/jdiesel/api/Protobuf$Message;Ljava/lang/String;)Lcom/mwr/jdiesel/api/Protobuf$Message;

    move-result-object v0

    goto :goto_0
.end method

.method protected handleGetProperty(Lcom/mwr/jdiesel/api/Protobuf$Message;)Lcom/mwr/jdiesel/api/Protobuf$Message;
    .locals 5
    .param p1, "message"    # Lcom/mwr/jdiesel/api/Protobuf$Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mwr/jdiesel/api/InvalidMessageException;
        }
    .end annotation

    .prologue
    .line 129
    iget-object v3, p0, Lcom/mwr/jdiesel/api/handlers/ReflectionMessageHandler;->session:Lcom/mwr/jdiesel/api/sessions/Session;

    iget-object v3, v3, Lcom/mwr/jdiesel/api/sessions/Session;->object_store:Lcom/mwr/jdiesel/reflection/ObjectStore;

    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message;->getReflectionRequest()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->getGetProperty()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->getObject()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;->getReference()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/mwr/jdiesel/reflection/ObjectStore;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 131
    .local v1, "object":Ljava/lang/Object;
    if-eqz v1, :cond_2

    .line 133
    :try_start_0
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message;->getReflectionRequest()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->getGetProperty()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->getProperty()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/reflection/Reflector;->getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 135
    .local v2, "value":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message;->getReflectionRequest()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->getGetProperty()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->getProperty()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/reflection/Reflector;->isPropertyPrimitive(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 136
    invoke-static {v2}, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->primitive(Ljava/lang/Object;)Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/mwr/jdiesel/api/handlers/ReflectionMessageHandler;->createResponse(Lcom/mwr/jdiesel/api/Protobuf$Message;Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;)Lcom/mwr/jdiesel/api/Protobuf$Message;

    move-result-object v3

    .line 149
    .end local v2    # "value":Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 138
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_0
    if-eqz v2, :cond_1

    invoke-direct {p0, v2}, Lcom/mwr/jdiesel/api/handlers/ReflectionMessageHandler;->shouldPutInStore(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 139
    iget-object v3, p0, Lcom/mwr/jdiesel/api/handlers/ReflectionMessageHandler;->session:Lcom/mwr/jdiesel/api/sessions/Session;

    iget-object v3, v3, Lcom/mwr/jdiesel/api/sessions/Session;->object_store:Lcom/mwr/jdiesel/reflection/ObjectStore;

    invoke-virtual {v3, v2}, Lcom/mwr/jdiesel/reflection/ObjectStore;->put(Ljava/lang/Object;)I

    .line 141
    :cond_1
    invoke-static {v2}, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->send(Ljava/lang/Object;)Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/mwr/jdiesel/api/handlers/ReflectionMessageHandler;->createResponse(Lcom/mwr/jdiesel/api/Protobuf$Message;Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;)Lcom/mwr/jdiesel/api/Protobuf$Message;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 144
    .end local v2    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, p1, v0}, Lcom/mwr/jdiesel/api/handlers/ReflectionMessageHandler;->handleError(Lcom/mwr/jdiesel/api/Protobuf$Message;Ljava/lang/Throwable;)Lcom/mwr/jdiesel/api/Protobuf$Message;

    move-result-object v3

    goto :goto_0

    .line 149
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cannot find object "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message;->getReflectionRequest()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->getGetProperty()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->getObject()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;->getReference()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/mwr/jdiesel/api/handlers/ReflectionMessageHandler;->handleError(Lcom/mwr/jdiesel/api/Protobuf$Message;Ljava/lang/String;)Lcom/mwr/jdiesel/api/Protobuf$Message;

    move-result-object v3

    goto :goto_0
.end method

.method protected handleInvoke(Lcom/mwr/jdiesel/api/Protobuf$Message;)Lcom/mwr/jdiesel/api/Protobuf$Message;
    .locals 7
    .param p1, "message"    # Lcom/mwr/jdiesel/api/Protobuf$Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mwr/jdiesel/api/InvalidMessageException;
        }
    .end annotation

    .prologue
    .line 165
    iget-object v5, p0, Lcom/mwr/jdiesel/api/handlers/ReflectionMessageHandler;->session:Lcom/mwr/jdiesel/api/sessions/Session;

    iget-object v5, v5, Lcom/mwr/jdiesel/api/sessions/Session;->object_store:Lcom/mwr/jdiesel/reflection/ObjectStore;

    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message;->getReflectionRequest()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->getInvoke()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->getObject()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;->getReference()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/mwr/jdiesel/reflection/ObjectStore;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 167
    .local v3, "object":Ljava/lang/Object;
    if-eqz v3, :cond_2

    .line 168
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message;->getReflectionRequest()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->getInvoke()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->getMethod()Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, "method_name":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message;->getReflectionRequest()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->getInvoke()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->getArgumentList()Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mwr/jdiesel/api/handlers/ReflectionMessageHandler;->parseArguments(Ljava/util/List;)[Lcom/mwr/jdiesel/reflection/types/ReflectedType;

    move-result-object v0

    .line 172
    .local v0, "arguments":[Lcom/mwr/jdiesel/reflection/types/ReflectedType;
    :try_start_0
    invoke-static {v3, v2, v0}, Lcom/mwr/jdiesel/reflection/Reflector;->isMethodReturnPrimitive(Ljava/lang/Object;Ljava/lang/String;[Lcom/mwr/jdiesel/reflection/types/ReflectedType;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 173
    invoke-static {v3, v2, v0}, Lcom/mwr/jdiesel/reflection/Reflector;->invoke(Ljava/lang/Object;Ljava/lang/String;[Lcom/mwr/jdiesel/reflection/types/ReflectedType;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->primitive(Ljava/lang/Object;)Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lcom/mwr/jdiesel/api/handlers/ReflectionMessageHandler;->createResponse(Lcom/mwr/jdiesel/api/Protobuf$Message;Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;)Lcom/mwr/jdiesel/api/Protobuf$Message;

    move-result-object v5

    .line 188
    .end local v0    # "arguments":[Lcom/mwr/jdiesel/reflection/types/ReflectedType;
    .end local v2    # "method_name":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 175
    .restart local v0    # "arguments":[Lcom/mwr/jdiesel/reflection/types/ReflectedType;
    .restart local v2    # "method_name":Ljava/lang/String;
    :cond_0
    invoke-static {v3, v2, v0}, Lcom/mwr/jdiesel/reflection/Reflector;->invoke(Ljava/lang/Object;Ljava/lang/String;[Lcom/mwr/jdiesel/reflection/types/ReflectedType;)Ljava/lang/Object;

    move-result-object v4

    .line 177
    .local v4, "result":Ljava/lang/Object;
    if-eqz v4, :cond_1

    invoke-direct {p0, v4}, Lcom/mwr/jdiesel/api/handlers/ReflectionMessageHandler;->shouldPutInStore(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 178
    iget-object v5, p0, Lcom/mwr/jdiesel/api/handlers/ReflectionMessageHandler;->session:Lcom/mwr/jdiesel/api/sessions/Session;

    iget-object v5, v5, Lcom/mwr/jdiesel/api/sessions/Session;->object_store:Lcom/mwr/jdiesel/reflection/ObjectStore;

    invoke-virtual {v5, v4}, Lcom/mwr/jdiesel/reflection/ObjectStore;->put(Ljava/lang/Object;)I

    .line 180
    :cond_1
    invoke-static {v4}, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->send(Ljava/lang/Object;)Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lcom/mwr/jdiesel/api/handlers/ReflectionMessageHandler;->createResponse(Lcom/mwr/jdiesel/api/Protobuf$Message;Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;)Lcom/mwr/jdiesel/api/Protobuf$Message;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 183
    .end local v4    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 184
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0, p1, v1}, Lcom/mwr/jdiesel/api/handlers/ReflectionMessageHandler;->handleError(Lcom/mwr/jdiesel/api/Protobuf$Message;Ljava/lang/Throwable;)Lcom/mwr/jdiesel/api/Protobuf$Message;

    move-result-object v5

    goto :goto_0

    .line 188
    .end local v0    # "arguments":[Lcom/mwr/jdiesel/reflection/types/ReflectedType;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "method_name":Ljava/lang/String;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "cannot find object "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message;->getReflectionRequest()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->getInvoke()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->getObject()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;->getReference()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1, v5}, Lcom/mwr/jdiesel/api/handlers/ReflectionMessageHandler;->handleError(Lcom/mwr/jdiesel/api/Protobuf$Message;Ljava/lang/String;)Lcom/mwr/jdiesel/api/Protobuf$Message;

    move-result-object v5

    goto :goto_0
.end method

.method protected handleResolve(Lcom/mwr/jdiesel/api/Protobuf$Message;)Lcom/mwr/jdiesel/api/Protobuf$Message;
    .locals 4
    .param p1, "message"    # Lcom/mwr/jdiesel/api/Protobuf$Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mwr/jdiesel/api/InvalidMessageException;
        }
    .end annotation

    .prologue
    .line 193
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message;->getReflectionRequest()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->getResolve()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;->getClassname()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mwr/jdiesel/reflection/Reflector;->resolve(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 195
    .local v0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 196
    iget-object v2, p0, Lcom/mwr/jdiesel/api/handlers/ReflectionMessageHandler;->session:Lcom/mwr/jdiesel/api/sessions/Session;

    iget-object v2, v2, Lcom/mwr/jdiesel/api/sessions/Session;->object_store:Lcom/mwr/jdiesel/reflection/ObjectStore;

    invoke-virtual {v2, v0}, Lcom/mwr/jdiesel/reflection/ObjectStore;->put(Ljava/lang/Object;)I

    move-result v1

    .line 198
    .local v1, "ref":I
    invoke-static {v1}, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->object(I)Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/mwr/jdiesel/api/handlers/ReflectionMessageHandler;->createResponse(Lcom/mwr/jdiesel/api/Protobuf$Message;Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;)Lcom/mwr/jdiesel/api/Protobuf$Message;

    move-result-object v2

    .line 201
    .end local v1    # "ref":I
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cannot resolve "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message;->getReflectionRequest()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->getResolve()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;->getClassname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/mwr/jdiesel/api/handlers/ReflectionMessageHandler;->handleError(Lcom/mwr/jdiesel/api/Protobuf$Message;Ljava/lang/String;)Lcom/mwr/jdiesel/api/Protobuf$Message;

    move-result-object v2

    goto :goto_0
.end method

.method protected handleSetProperty(Lcom/mwr/jdiesel/api/Protobuf$Message;)Lcom/mwr/jdiesel/api/Protobuf$Message;
    .locals 5
    .param p1, "message"    # Lcom/mwr/jdiesel/api/Protobuf$Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mwr/jdiesel/api/InvalidMessageException;
        }
    .end annotation

    .prologue
    .line 206
    iget-object v2, p0, Lcom/mwr/jdiesel/api/handlers/ReflectionMessageHandler;->session:Lcom/mwr/jdiesel/api/sessions/Session;

    iget-object v2, v2, Lcom/mwr/jdiesel/api/sessions/Session;->object_store:Lcom/mwr/jdiesel/reflection/ObjectStore;

    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message;->getReflectionRequest()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->getSetProperty()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->getObject()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;->getReference()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mwr/jdiesel/reflection/ObjectStore;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 208
    .local v1, "object":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 210
    :try_start_0
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message;->getReflectionRequest()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->getSetProperty()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->getProperty()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message;->getReflectionRequest()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->getSetProperty()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->getValue()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v3

    iget-object v4, p0, Lcom/mwr/jdiesel/api/handlers/ReflectionMessageHandler;->session:Lcom/mwr/jdiesel/api/sessions/Session;

    iget-object v4, v4, Lcom/mwr/jdiesel/api/sessions/Session;->object_store:Lcom/mwr/jdiesel/reflection/ObjectStore;

    invoke-static {v3, v4}, Lcom/mwr/jdiesel/reflection/types/ReflectedType;->fromArgument(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;Lcom/mwr/jdiesel/reflection/ObjectStore;)Lcom/mwr/jdiesel/reflection/types/ReflectedType;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mwr/jdiesel/reflection/Reflector;->setProperty(Ljava/lang/Object;Ljava/lang/String;Lcom/mwr/jdiesel/reflection/types/ReflectedType;)V

    .line 212
    invoke-static {}, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->success()Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/mwr/jdiesel/api/handlers/ReflectionMessageHandler;->createResponse(Lcom/mwr/jdiesel/api/Protobuf$Message;Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;)Lcom/mwr/jdiesel/api/Protobuf$Message;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 219
    :goto_0
    return-object v2

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, p1, v0}, Lcom/mwr/jdiesel/api/handlers/ReflectionMessageHandler;->handleError(Lcom/mwr/jdiesel/api/Protobuf$Message;Ljava/lang/Throwable;)Lcom/mwr/jdiesel/api/Protobuf$Message;

    move-result-object v2

    goto :goto_0

    .line 219
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cannot find object "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message;->getReflectionRequest()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->getSetProperty()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->getObject()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;->getReference()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/mwr/jdiesel/api/handlers/ReflectionMessageHandler;->handleError(Lcom/mwr/jdiesel/api/Protobuf$Message;Ljava/lang/String;)Lcom/mwr/jdiesel/api/Protobuf$Message;

    move-result-object v2

    goto :goto_0
.end method
