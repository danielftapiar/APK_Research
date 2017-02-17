.class public Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;
.super Ljava/lang/Object;
.source "ReflectionResponseFactory.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$mwr$jdiesel$api$Protobuf$Message$Argument$ArgumentType:[I

.field private static synthetic $SWITCH_TABLE$com$mwr$jdiesel$api$Protobuf$Message$Primitive$PrimitiveType:[I


# instance fields
.field private builder:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;


# direct methods
.method static synthetic $SWITCH_TABLE$com$mwr$jdiesel$api$Protobuf$Message$Argument$ArgumentType()[I
    .locals 3

    .prologue
    .line 9
    sget-object v0, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->$SWITCH_TABLE$com$mwr$jdiesel$api$Protobuf$Message$Argument$ArgumentType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->values()[Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->ARRAY:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->DATA:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->NULL:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->OBJECT:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->PRIMITIVE:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->STRING:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->$SWITCH_TABLE$com$mwr$jdiesel$api$Protobuf$Message$Argument$ArgumentType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method static synthetic $SWITCH_TABLE$com$mwr$jdiesel$api$Protobuf$Message$Primitive$PrimitiveType()[I
    .locals 3

    .prologue
    .line 9
    sget-object v0, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->$SWITCH_TABLE$com$mwr$jdiesel$api$Protobuf$Message$Primitive$PrimitiveType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->values()[Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->BOOL:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_1
    :try_start_1
    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->BYTE:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_2
    :try_start_2
    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->CHAR:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_3
    :try_start_3
    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->DOUBLE:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_4
    :try_start_4
    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->FLOAT:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_5
    :try_start_5
    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->INT:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_6
    :try_start_6
    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->LONG:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_7
    :try_start_7
    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->SHORT:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_8
    sput-object v0, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->$SWITCH_TABLE$com$mwr$jdiesel$api$Protobuf$Message$Primitive$PrimitiveType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_8

    :catch_1
    move-exception v1

    goto :goto_7

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v1

    goto :goto_1
.end method

.method private constructor <init>(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;)V
    .locals 1
    .param p1, "status"    # Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->builder:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;

    .line 73
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->setStatus(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->builder:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;

    .line 74
    return-void
.end method

.method private buildArgument(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;Lcom/google/protobuf/MessageOrBuilder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;
    .locals 3
    .param p1, "type"    # Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;
    .param p2, "builder"    # Lcom/google/protobuf/MessageOrBuilder;

    .prologue
    .line 85
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->setType(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    move-result-object v0

    .line 87
    .local v0, "argument":Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;
    invoke-static {}, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->$SWITCH_TABLE$com$mwr$jdiesel$api$Protobuf$Message$Argument$ArgumentType()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 107
    .end local p2    # "builder":Lcom/google/protobuf/MessageOrBuilder;
    :goto_0
    :pswitch_0
    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v1

    return-object v1

    .line 89
    .restart local p2    # "builder":Lcom/google/protobuf/MessageOrBuilder;
    :pswitch_1
    check-cast p2, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;

    .end local p2    # "builder":Lcom/google/protobuf/MessageOrBuilder;
    invoke-virtual {v0, p2}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->setArray(Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    goto :goto_0

    .line 93
    .restart local p2    # "builder":Lcom/google/protobuf/MessageOrBuilder;
    :pswitch_2
    check-cast p2, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;

    .end local p2    # "builder":Lcom/google/protobuf/MessageOrBuilder;
    invoke-virtual {v0, p2}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->setObject(Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    goto :goto_0

    .line 97
    .restart local p2    # "builder":Lcom/google/protobuf/MessageOrBuilder;
    :pswitch_3
    check-cast p2, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    .end local p2    # "builder":Lcom/google/protobuf/MessageOrBuilder;
    invoke-virtual {v0, p2}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->setPrimitive(Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    goto :goto_0

    .line 87
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private buildArgument(Ljava/lang/String;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    move-result-object v0

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->STRING:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    invoke-virtual {v0, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->setType(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->setString(Ljava/lang/String;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v0

    return-object v0
.end method

.method private buildPrimitive(Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;Ljava/lang/Object;)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;
    .locals 3
    .param p1, "type"    # Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 111
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->setType(Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

    move-result-object v0

    .line 113
    .local v0, "primitive":Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;
    invoke-static {}, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->$SWITCH_TABLE$com$mwr$jdiesel$api$Protobuf$Message$Primitive$PrimitiveType()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 144
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    move-result-object v1

    return-object v1

    .line 115
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->setBool(Z)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

    goto :goto_0

    .line 119
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_1
    check-cast p2, Ljava/lang/Byte;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->setByte(I)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

    goto :goto_0

    .line 123
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_2
    check-cast p2, Ljava/lang/Double;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->setDouble(D)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

    goto :goto_0

    .line 127
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_3
    check-cast p2, Ljava/lang/Float;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->setFloat(F)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

    goto :goto_0

    .line 132
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_4
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->setInt(I)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

    goto :goto_0

    .line 136
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_5
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->setLong(J)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

    goto :goto_0

    .line 140
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_6
    check-cast p2, Ljava/lang/Short;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->setShort(I)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

    goto :goto_0

    .line 113
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_1
        :pswitch_6
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public static data([B)Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;
    .locals 2
    .param p0, "bytes"    # [B

    .prologue
    .line 14
    new-instance v0, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;->SUCCESS:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;

    invoke-direct {v0, v1}, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;-><init>(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;)V

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->setData([B)Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;

    move-result-object v0

    return-object v0
.end method

.method public static error(Ljava/lang/String;)Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 18
    new-instance v0, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;->ERROR:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;

    invoke-direct {v0, v1}, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;-><init>(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;)V

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->setErrorMessage(Ljava/lang/String;)Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;

    move-result-object v0

    return-object v0
.end method

.method public static nullPointer()Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;
    .locals 3

    .prologue
    .line 22
    new-instance v0, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;->SUCCESS:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;

    invoke-direct {v0, v1}, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;-><init>(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;)V

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->NULL:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->setResult(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;Lcom/google/protobuf/MessageOrBuilder;)Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;

    move-result-object v0

    return-object v0
.end method

.method public static object(I)Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;
    .locals 2
    .param p0, "ref"    # I

    .prologue
    .line 26
    new-instance v0, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;->SUCCESS:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;

    invoke-direct {v0, v1}, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;-><init>(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;)V

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->setObjectReference(I)Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;

    move-result-object v0

    return-object v0
.end method

.method public static objectArray([Ljava/lang/Object;)Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;
    .locals 2
    .param p0, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 30
    new-instance v0, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;->SUCCESS:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;

    invoke-direct {v0, v1}, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;-><init>(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;)V

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->setObjects([Ljava/lang/Object;)Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;

    move-result-object v0

    return-object v0
.end method

.method public static primitive(Ljava/lang/Object;)Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;
    .locals 2
    .param p0, "primitive"    # Ljava/lang/Object;

    .prologue
    .line 34
    if-nez p0, :cond_0

    .line 35
    invoke-static {}, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->nullPointer()Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;

    move-result-object v0

    .line 38
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;->SUCCESS:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;

    invoke-direct {v0, v1}, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;-><init>(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;)V

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->setPrimitive(Ljava/lang/Object;)Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;

    move-result-object v0

    goto :goto_0
.end method

.method public static primitiveArray(Ljava/lang/Object;)Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;
    .locals 2
    .param p0, "primitives"    # Ljava/lang/Object;

    .prologue
    .line 43
    new-instance v0, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;->SUCCESS:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;

    invoke-direct {v0, v1}, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;-><init>(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;)V

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->setPrimitives(Ljava/lang/Object;)Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;

    move-result-object v0

    return-object v0
.end method

.method public static send(Ljava/lang/Object;)Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;
    .locals 2
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 47
    if-nez p0, :cond_0

    .line 48
    invoke-static {}, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->nullPointer()Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;

    move-result-object v0

    .line 61
    :goto_0
    return-object v0

    .line 49
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    check-cast p0, Ljava/lang/String;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-static {p0}, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->string(Ljava/lang/String;)Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;

    move-result-object v0

    goto :goto_0

    .line 51
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p0, [Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 52
    check-cast p0, [Ljava/lang/String;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-static {p0}, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->primitiveArray(Ljava/lang/Object;)Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;

    move-result-object v0

    goto :goto_0

    .line 53
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_3

    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 54
    check-cast p0, [Ljava/lang/Object;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-static {p0}, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->objectArray([Ljava/lang/Object;)Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;

    move-result-object v0

    goto :goto_0

    .line 55
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_4

    .line 56
    check-cast p0, [B

    .end local p0    # "value":Ljava/lang/Object;
    invoke-static {p0}, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->data([B)Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;

    move-result-object v0

    goto :goto_0

    .line 57
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 58
    invoke-static {p0}, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->primitiveArray(Ljava/lang/Object;)Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;

    move-result-object v0

    goto :goto_0

    .line 61
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->object(I)Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;

    move-result-object v0

    goto :goto_0
.end method

.method public static string(Ljava/lang/String;)Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 65
    new-instance v0, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;->SUCCESS:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;

    invoke-direct {v0, v1}, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;-><init>(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;)V

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->setString(Ljava/lang/String;)Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;

    move-result-object v0

    return-object v0
.end method

.method public static success()Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;
    .locals 2

    .prologue
    .line 69
    new-instance v0, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;->SUCCESS:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;

    invoke-direct {v0, v1}, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;-><init>(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;)V

    return-object v0
.end method


# virtual methods
.method public build()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->builder:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;

    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

    move-result-object v0

    return-object v0
.end method

.method public isError()Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->builder:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;->ERROR:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;

    invoke-virtual {v0, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->setStatus(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;

    .line 150
    return-object p0
.end method

.method public isSuccess()Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->builder:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;->SUCCESS:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;

    invoke-virtual {v0, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->setStatus(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;

    .line 156
    return-object p0
.end method

.method public setData([B)Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;
    .locals 2
    .param p1, "bytes"    # [B

    .prologue
    .line 160
    iget-object v0, p0, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->builder:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;

    invoke-static {p1}, Lcom/mwr/jdiesel/reflection/types/ReflectedType;->fromNative(Ljava/lang/Object;)Lcom/mwr/jdiesel/reflection/types/ReflectedType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mwr/jdiesel/reflection/types/ReflectedType;->getArgument()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->setResult(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;

    .line 162
    return-object p0
.end method

.method public setErrorMessage(Ljava/lang/String;)Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;
    .locals 1
    .param p1, "error_message"    # Ljava/lang/String;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->builder:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;

    invoke-virtual {v0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->setErrormessage(Ljava/lang/String;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;

    .line 168
    return-object p0
.end method

.method public setObjectReference(I)Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;
    .locals 2
    .param p1, "ref"    # I

    .prologue
    .line 172
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->OBJECT:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;->setReference(I)Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->setResult(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;Lcom/google/protobuf/MessageOrBuilder;)Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;

    move-result-object v0

    return-object v0
.end method

.method public setObjects([Ljava/lang/Object;)Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;
    .locals 7
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 176
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;

    move-result-object v2

    sget-object v3, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;->OBJECT:Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;

    invoke-virtual {v2, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->setType(Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;)Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;

    move-result-object v0

    .line 178
    .local v0, "array_builder":Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 181
    sget-object v2, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->ARRAY:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    invoke-virtual {p0, v2, v0}, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->setResult(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;Lcom/google/protobuf/MessageOrBuilder;)Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;

    move-result-object v2

    return-object v2

    .line 178
    :cond_0
    aget-object v1, p1, v2

    .line 179
    .local v1, "object":Ljava/lang/Object;
    sget-object v4, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->OBJECT:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;->setReference(I)Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->buildArgument(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;Lcom/google/protobuf/MessageOrBuilder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->addElement(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;)Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;

    .line 178
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setPrimitive(Ljava/lang/Object;)Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;
    .locals 2
    .param p1, "primitive"    # Ljava/lang/Object;

    .prologue
    .line 185
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 186
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->PRIMITIVE:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->BOOL:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    invoke-direct {p0, v1, p1}, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->buildPrimitive(Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;Ljava/lang/Object;)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->setResult(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;Lcom/google/protobuf/MessageOrBuilder;)Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;

    move-result-object v0

    .line 202
    :goto_0
    return-object v0

    .line 187
    :cond_0
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_1

    .line 188
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->PRIMITIVE:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->BYTE:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    invoke-direct {p0, v1, p1}, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->buildPrimitive(Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;Ljava/lang/Object;)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->setResult(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;Lcom/google/protobuf/MessageOrBuilder;)Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;

    move-result-object v0

    goto :goto_0

    .line 189
    :cond_1
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_2

    .line 190
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->PRIMITIVE:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->CHAR:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    invoke-direct {p0, v1, p1}, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->buildPrimitive(Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;Ljava/lang/Object;)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->setResult(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;Lcom/google/protobuf/MessageOrBuilder;)Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;

    move-result-object v0

    goto :goto_0

    .line 191
    :cond_2
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_3

    .line 192
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->PRIMITIVE:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->DOUBLE:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    invoke-direct {p0, v1, p1}, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->buildPrimitive(Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;Ljava/lang/Object;)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->setResult(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;Lcom/google/protobuf/MessageOrBuilder;)Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;

    move-result-object v0

    goto :goto_0

    .line 193
    :cond_3
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_4

    .line 194
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->PRIMITIVE:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->FLOAT:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    invoke-direct {p0, v1, p1}, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->buildPrimitive(Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;Ljava/lang/Object;)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->setResult(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;Lcom/google/protobuf/MessageOrBuilder;)Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;

    move-result-object v0

    goto :goto_0

    .line 195
    :cond_4
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 196
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->PRIMITIVE:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->INT:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    invoke-direct {p0, v1, p1}, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->buildPrimitive(Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;Ljava/lang/Object;)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->setResult(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;Lcom/google/protobuf/MessageOrBuilder;)Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;

    move-result-object v0

    goto :goto_0

    .line 197
    :cond_5
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_6

    .line 198
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->PRIMITIVE:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->LONG:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    invoke-direct {p0, v1, p1}, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->buildPrimitive(Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;Ljava/lang/Object;)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->setResult(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;Lcom/google/protobuf/MessageOrBuilder;)Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;

    move-result-object v0

    goto :goto_0

    .line 199
    :cond_6
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_7

    .line 200
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->PRIMITIVE:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->SHORT:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    invoke-direct {p0, v1, p1}, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->buildPrimitive(Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;Ljava/lang/Object;)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->setResult(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;Lcom/google/protobuf/MessageOrBuilder;)Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;

    move-result-object v0

    goto :goto_0

    .line 202
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPrimitives(Ljava/lang/Object;)Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;
    .locals 16
    .param p1, "primitiveArray"    # Ljava/lang/Object;

    .prologue
    .line 206
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;

    move-result-object v11

    sget-object v12, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;->PRIMITIVE:Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;

    invoke-virtual {v11, v12}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->setType(Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;)Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;

    move-result-object v1

    .line 208
    .local v1, "array_builder":Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;
    move-object/from16 v0, p1

    instance-of v11, v0, [Z

    if-eqz v11, :cond_2

    .line 209
    check-cast p1, [Z

    .end local p1    # "primitiveArray":Ljava/lang/Object;
    move-object/from16 v0, p1

    array-length v12, v0

    const/4 v11, 0x0

    :goto_0
    if-lt v11, v12, :cond_1

    .line 245
    :cond_0
    sget-object v11, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->ARRAY:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v1}, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->setResult(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;Lcom/google/protobuf/MessageOrBuilder;)Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;

    move-result-object v11

    return-object v11

    .line 209
    :cond_1
    aget-boolean v2, p1, v11

    .line 210
    .local v2, "b":Z
    sget-object v13, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->PRIMITIVE:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    sget-object v14, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->BOOL:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->buildPrimitive(Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;Ljava/lang/Object;)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->buildArgument(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;Lcom/google/protobuf/MessageOrBuilder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->addElement(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;)Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;

    .line 209
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 212
    .end local v2    # "b":Z
    .restart local p1    # "primitiveArray":Ljava/lang/Object;
    :cond_2
    move-object/from16 v0, p1

    instance-of v11, v0, [B

    if-eqz v11, :cond_3

    .line 213
    check-cast p1, [B

    .end local p1    # "primitiveArray":Ljava/lang/Object;
    move-object/from16 v0, p1

    array-length v12, v0

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v12, :cond_0

    aget-byte v2, p1, v11

    .line 214
    .local v2, "b":B
    sget-object v13, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->PRIMITIVE:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    sget-object v14, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->BYTE:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->buildPrimitive(Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;Ljava/lang/Object;)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->buildArgument(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;Lcom/google/protobuf/MessageOrBuilder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->addElement(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;)Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;

    .line 213
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 216
    .end local v2    # "b":B
    .restart local p1    # "primitiveArray":Ljava/lang/Object;
    :cond_3
    move-object/from16 v0, p1

    instance-of v11, v0, [C

    if-eqz v11, :cond_4

    .line 217
    check-cast p1, [C

    .end local p1    # "primitiveArray":Ljava/lang/Object;
    move-object/from16 v0, p1

    array-length v12, v0

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v12, :cond_0

    aget-char v3, p1, v11

    .line 218
    .local v3, "c":C
    sget-object v13, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->PRIMITIVE:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    sget-object v14, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->CHAR:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->buildPrimitive(Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;Ljava/lang/Object;)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->buildArgument(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;Lcom/google/protobuf/MessageOrBuilder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->addElement(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;)Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;

    .line 217
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 220
    .end local v3    # "c":C
    .restart local p1    # "primitiveArray":Ljava/lang/Object;
    :cond_4
    move-object/from16 v0, p1

    instance-of v11, v0, [D

    if-eqz v11, :cond_5

    .line 221
    check-cast p1, [D

    .end local p1    # "primitiveArray":Ljava/lang/Object;
    move-object/from16 v0, p1

    array-length v12, v0

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v12, :cond_0

    aget-wide v4, p1, v11

    .line 222
    .local v4, "d":D
    sget-object v13, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->PRIMITIVE:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    sget-object v14, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->DOUBLE:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->buildPrimitive(Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;Ljava/lang/Object;)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->buildArgument(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;Lcom/google/protobuf/MessageOrBuilder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->addElement(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;)Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;

    .line 221
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 224
    .end local v4    # "d":D
    .restart local p1    # "primitiveArray":Ljava/lang/Object;
    :cond_5
    move-object/from16 v0, p1

    instance-of v11, v0, [F

    if-eqz v11, :cond_6

    .line 225
    check-cast p1, [F

    .end local p1    # "primitiveArray":Ljava/lang/Object;
    move-object/from16 v0, p1

    array-length v12, v0

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v12, :cond_0

    aget v6, p1, v11

    .line 226
    .local v6, "f":F
    sget-object v13, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->PRIMITIVE:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    sget-object v14, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->FLOAT:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->buildPrimitive(Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;Ljava/lang/Object;)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->buildArgument(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;Lcom/google/protobuf/MessageOrBuilder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->addElement(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;)Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;

    .line 225
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 228
    .end local v6    # "f":F
    .restart local p1    # "primitiveArray":Ljava/lang/Object;
    :cond_6
    move-object/from16 v0, p1

    instance-of v11, v0, [I

    if-eqz v11, :cond_7

    .line 229
    check-cast p1, [I

    .end local p1    # "primitiveArray":Ljava/lang/Object;
    move-object/from16 v0, p1

    array-length v12, v0

    const/4 v11, 0x0

    :goto_5
    if-ge v11, v12, :cond_0

    aget v7, p1, v11

    .line 230
    .local v7, "i":I
    sget-object v13, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->PRIMITIVE:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    sget-object v14, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->INT:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->buildPrimitive(Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;Ljava/lang/Object;)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->buildArgument(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;Lcom/google/protobuf/MessageOrBuilder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->addElement(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;)Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;

    .line 229
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 232
    .end local v7    # "i":I
    .restart local p1    # "primitiveArray":Ljava/lang/Object;
    :cond_7
    move-object/from16 v0, p1

    instance-of v11, v0, [J

    if-eqz v11, :cond_8

    .line 233
    check-cast p1, [J

    .end local p1    # "primitiveArray":Ljava/lang/Object;
    move-object/from16 v0, p1

    array-length v12, v0

    const/4 v11, 0x0

    :goto_6
    if-ge v11, v12, :cond_0

    aget-wide v8, p1, v11

    .line 234
    .local v8, "l":J
    sget-object v13, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->PRIMITIVE:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    sget-object v14, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->LONG:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->buildPrimitive(Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;Ljava/lang/Object;)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->buildArgument(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;Lcom/google/protobuf/MessageOrBuilder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->addElement(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;)Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;

    .line 233
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 236
    .end local v8    # "l":J
    .restart local p1    # "primitiveArray":Ljava/lang/Object;
    :cond_8
    move-object/from16 v0, p1

    instance-of v11, v0, [S

    if-eqz v11, :cond_9

    .line 237
    check-cast p1, [S

    .end local p1    # "primitiveArray":Ljava/lang/Object;
    move-object/from16 v0, p1

    array-length v12, v0

    const/4 v11, 0x0

    :goto_7
    if-ge v11, v12, :cond_0

    aget-short v10, p1, v11

    .line 238
    .local v10, "s":S
    sget-object v13, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->PRIMITIVE:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    sget-object v14, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->SHORT:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    invoke-static {v10}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->buildPrimitive(Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;Ljava/lang/Object;)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->buildArgument(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;Lcom/google/protobuf/MessageOrBuilder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->addElement(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;)Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;

    .line 237
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 240
    .end local v10    # "s":S
    .restart local p1    # "primitiveArray":Ljava/lang/Object;
    :cond_9
    move-object/from16 v0, p1

    instance-of v11, v0, [Ljava/lang/String;

    if-eqz v11, :cond_0

    .line 241
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "primitiveArray":Ljava/lang/Object;
    move-object/from16 v0, p1

    array-length v12, v0

    const/4 v11, 0x0

    :goto_8
    if-ge v11, v12, :cond_0

    aget-object v10, p1, v11

    .line 242
    .local v10, "s":Ljava/lang/String;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    move-result-object v13

    sget-object v14, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->STRING:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    invoke-virtual {v13, v14}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->setType(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    move-result-object v13

    invoke-virtual {v13, v10}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->setString(Ljava/lang/String;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->addElement(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;

    .line 241
    add-int/lit8 v11, v11, 0x1

    goto :goto_8
.end method

.method public setResult(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;Lcom/google/protobuf/MessageOrBuilder;)Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;
    .locals 2
    .param p1, "type"    # Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;
    .param p2, "builder"    # Lcom/google/protobuf/MessageOrBuilder;

    .prologue
    .line 249
    iget-object v0, p0, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->builder:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;

    invoke-direct {p0, p1, p2}, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->buildArgument(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;Lcom/google/protobuf/MessageOrBuilder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->setResult(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;

    .line 251
    return-object p0
.end method

.method public setSessionId(Ljava/lang/String;)Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;
    .locals 1
    .param p1, "session_id"    # Ljava/lang/String;

    .prologue
    .line 255
    iget-object v0, p0, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->builder:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;

    invoke-virtual {v0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->setSessionId(Ljava/lang/String;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;

    .line 257
    return-object p0
.end method

.method public setString(Ljava/lang/String;)Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 261
    iget-object v0, p0, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->builder:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;

    invoke-direct {p0, p1}, Lcom/mwr/jdiesel/api/builders/ReflectionResponseFactory;->buildArgument(Ljava/lang/String;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;->setResult(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;

    .line 263
    return-object p0
.end method
