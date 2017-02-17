.class public abstract Lcom/mwr/jdiesel/reflection/types/ReflectedType;
.super Ljava/lang/Object;
.source "ReflectedType.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$mwr$jdiesel$api$Protobuf$Message$Argument$ArgumentType:[I


# direct methods
.method static synthetic $SWITCH_TABLE$com$mwr$jdiesel$api$Protobuf$Message$Argument$ArgumentType()[I
    .locals 3

    .prologue
    .line 6
    sget-object v0, Lcom/mwr/jdiesel/reflection/types/ReflectedType;->$SWITCH_TABLE$com$mwr$jdiesel$api$Protobuf$Message$Argument$ArgumentType:[I

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
    sput-object v0, Lcom/mwr/jdiesel/reflection/types/ReflectedType;->$SWITCH_TABLE$com$mwr$jdiesel$api$Protobuf$Message$Argument$ArgumentType:[I

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

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromArgument(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;Lcom/mwr/jdiesel/reflection/ObjectStore;)Lcom/mwr/jdiesel/reflection/types/ReflectedType;
    .locals 2
    .param p0, "argument"    # Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;
    .param p1, "object_store"    # Lcom/mwr/jdiesel/reflection/ObjectStore;

    .prologue
    .line 9
    invoke-static {}, Lcom/mwr/jdiesel/reflection/types/ReflectedType;->$SWITCH_TABLE$com$mwr$jdiesel$api$Protobuf$Message$Argument$ArgumentType()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->getType()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 16
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 10
    :pswitch_0
    new-instance v0, Lcom/mwr/jdiesel/reflection/types/ReflectedArray;

    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->getArray()Lcom/mwr/jdiesel/api/Protobuf$Message$Array;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/mwr/jdiesel/reflection/types/ReflectedArray;-><init>(Lcom/mwr/jdiesel/api/Protobuf$Message$Array;Lcom/mwr/jdiesel/reflection/ObjectStore;)V

    goto :goto_0

    .line 11
    :pswitch_1
    new-instance v0, Lcom/mwr/jdiesel/reflection/types/ReflectedBinary;

    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->getData()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mwr/jdiesel/reflection/types/ReflectedBinary;-><init>(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 12
    :pswitch_2
    new-instance v0, Lcom/mwr/jdiesel/reflection/types/ReflectedObject;

    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->getObject()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/mwr/jdiesel/reflection/types/ReflectedObject;-><init>(Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;Lcom/mwr/jdiesel/reflection/ObjectStore;)V

    goto :goto_0

    .line 13
    :pswitch_3
    new-instance v0, Lcom/mwr/jdiesel/reflection/types/ReflectedPrimitive;

    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->getPrimitive()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mwr/jdiesel/reflection/types/ReflectedPrimitive;-><init>(Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;)V

    goto :goto_0

    .line 14
    :pswitch_4
    new-instance v0, Lcom/mwr/jdiesel/reflection/types/ReflectedString;

    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mwr/jdiesel/reflection/types/ReflectedString;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :pswitch_5
    new-instance v0, Lcom/mwr/jdiesel/reflection/types/ReflectedNull;

    invoke-direct {v0}, Lcom/mwr/jdiesel/reflection/types/ReflectedNull;-><init>()V

    goto :goto_0

    .line 9
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static fromNative(Ljava/lang/Object;)Lcom/mwr/jdiesel/reflection/types/ReflectedType;
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 21
    if-nez p0, :cond_0

    .line 22
    new-instance v0, Lcom/mwr/jdiesel/reflection/types/ReflectedNull;

    invoke-direct {v0}, Lcom/mwr/jdiesel/reflection/types/ReflectedNull;-><init>()V

    .line 46
    :goto_0
    return-object v0

    .line 23
    :cond_0
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 24
    new-instance v0, Lcom/mwr/jdiesel/reflection/types/ReflectedPrimitive;

    check-cast p0, Ljava/lang/Boolean;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lcom/mwr/jdiesel/reflection/types/ReflectedPrimitive;-><init>(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 25
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_2

    .line 26
    new-instance v0, Lcom/mwr/jdiesel/reflection/types/ReflectedPrimitive;

    check-cast p0, Ljava/lang/Byte;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lcom/mwr/jdiesel/reflection/types/ReflectedPrimitive;-><init>(Ljava/lang/Byte;)V

    goto :goto_0

    .line 27
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_2
    instance-of v0, p0, Ljava/lang/Character;

    if-eqz v0, :cond_3

    .line 28
    new-instance v0, Lcom/mwr/jdiesel/reflection/types/ReflectedPrimitive;

    check-cast p0, Ljava/lang/Character;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lcom/mwr/jdiesel/reflection/types/ReflectedPrimitive;-><init>(Ljava/lang/Character;)V

    goto :goto_0

    .line 29
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_3
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_4

    .line 30
    new-instance v0, Lcom/mwr/jdiesel/reflection/types/ReflectedPrimitive;

    check-cast p0, Ljava/lang/Double;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lcom/mwr/jdiesel/reflection/types/ReflectedPrimitive;-><init>(Ljava/lang/Double;)V

    goto :goto_0

    .line 31
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_4
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_5

    .line 32
    new-instance v0, Lcom/mwr/jdiesel/reflection/types/ReflectedPrimitive;

    check-cast p0, Ljava/lang/Float;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lcom/mwr/jdiesel/reflection/types/ReflectedPrimitive;-><init>(Ljava/lang/Float;)V

    goto :goto_0

    .line 33
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_5
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_6

    .line 34
    new-instance v0, Lcom/mwr/jdiesel/reflection/types/ReflectedPrimitive;

    check-cast p0, Ljava/lang/Integer;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lcom/mwr/jdiesel/reflection/types/ReflectedPrimitive;-><init>(Ljava/lang/Integer;)V

    goto :goto_0

    .line 35
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_6
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_7

    .line 36
    new-instance v0, Lcom/mwr/jdiesel/reflection/types/ReflectedPrimitive;

    check-cast p0, Ljava/lang/Long;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lcom/mwr/jdiesel/reflection/types/ReflectedPrimitive;-><init>(Ljava/lang/Long;)V

    goto :goto_0

    .line 37
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_7
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_8

    .line 38
    new-instance v0, Lcom/mwr/jdiesel/reflection/types/ReflectedPrimitive;

    check-cast p0, Ljava/lang/Short;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lcom/mwr/jdiesel/reflection/types/ReflectedPrimitive;-><init>(Ljava/lang/Short;)V

    goto :goto_0

    .line 39
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_8
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 40
    new-instance v0, Lcom/mwr/jdiesel/reflection/types/ReflectedString;

    check-cast p0, Ljava/lang/String;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lcom/mwr/jdiesel/reflection/types/ReflectedString;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 41
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_a

    .line 42
    check-cast p0, [B

    .end local p0    # "object":Ljava/lang/Object;
    invoke-static {p0}, Lcom/mwr/jdiesel/reflection/types/ReflectedBinary;->fromNative([B)Lcom/mwr/jdiesel/reflection/types/ReflectedBinary;

    move-result-object v0

    goto/16 :goto_0

    .line 43
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 44
    check-cast p0, [Ljava/lang/Object;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-static {p0}, Lcom/mwr/jdiesel/reflection/types/ReflectedArray;->fromNative([Ljava/lang/Object;)Lcom/mwr/jdiesel/reflection/types/ReflectedArray;

    move-result-object v0

    goto/16 :goto_0

    .line 46
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_b
    new-instance v0, Lcom/mwr/jdiesel/reflection/types/ReflectedObject;

    invoke-direct {v0, p0}, Lcom/mwr/jdiesel/reflection/types/ReflectedObject;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public abstract getArgument()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;
.end method

.method public abstract getNative()Ljava/lang/Object;
.end method

.method public abstract getType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method
